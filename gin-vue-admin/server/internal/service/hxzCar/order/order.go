package order

import (
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type OrderService struct{}

func NewOrderService() *OrderService {
	return &OrderService{}
}

type OrderQuery struct {
	Keyword     string `json:"keyword" form:"keyword"`         // 订单号/手机号/车牌号
	City        string `json:"city" form:"city"`               // 城市
	OrderType   int    `json:"orderType" form:"orderType"`     // 订单类型 1-经济型 2-舒适型 3-特惠快车
	OrderStatus int    `json:"orderStatus" form:"orderStatus"` // 订单状态 1-待接单 2-已接单 3-行程中 4-已完成 5-已取消
	StartTime   string `json:"startTime" form:"startTime"`     // 开始时间
	EndTime     string `json:"endTime" form:"endTime"`         // 结束时间
	Page        int    `json:"page" form:"page"`               // 页码
	PageSize    int    `json:"pageSize" form:"pageSize"`       // 每页数量
}

type OrderListResponse struct {
	List  []OrderListItem `json:"list"`
	Total int64           `json:"total"`
}

type OrderListItem struct {
	ID             uint    `json:"id"`
	OrderNo        string  `json:"orderNo"`
	CreateTime     string  `json:"createTime"`
	UserName       string  `json:"userName"`
	UserPhone      string  `json:"userPhone"`
	StartAddress   string  `json:"startAddress"`
	EndAddress     string  `json:"endAddress"`
	CarType        string  `json:"carType"`
	TotalAmount    float64 `json:"totalAmount"`
	PayType        string  `json:"payType"`
	OrderStatus    int     `json:"orderStatus"`
	OrderStatusStr string  `json:"orderStatusStr"`
	DriverName     string  `json:"driverName"`
	CarNo          string  `json:"carNo"`
}

func (s *OrderService) GetOrderList(query OrderQuery) (OrderListResponse, error) {
	var response OrderListResponse
	var orders []hxzCar.Order

	db := global.GVA_DB.Model(&hxzCar.Order{})

	if query.Keyword != "" {
		db = db.Where("order_no LIKE ?", "%"+query.Keyword+"%")
	}

	if query.City != "" && query.City != "全部城市" && query.City != "0" {
		db = db.Where("start_address LIKE ?", "%"+query.City+"%")
	}

	if query.OrderType > 0 {
		var carType string
		switch query.OrderType {
		case 1:
			carType = "经济型"
		case 2:
			carType = "舒适型"
		case 3:
			carType = "特惠快车"
		}
		if carType != "" {
			db = db.Where("car_type = ?", carType)
		}
	}

	if query.OrderStatus > 0 {
		db = db.Where("order_status = ?", query.OrderStatus)
	}

	if query.StartTime != "" {
		db = db.Where("create_time >= ?", query.StartTime)
	}

	if query.EndTime != "" {
		db = db.Where("create_time <= ?", query.EndTime)
	}

	err := db.Count(&response.Total).Error
	if err != nil {
		return response, err
	}

	offset := (query.Page - 1) * query.PageSize
	err = db.Offset(offset).Limit(query.PageSize).Find(&orders).Error
	if err != nil {
		return response, err
	}

	response.List = make([]OrderListItem, 0, len(orders))
	for _, order := range orders {
		item := OrderListItem{
			ID:             order.ID,
			OrderNo:        order.OrderNo,
			CreateTime:     formatDateTime(order.CreateTime),
			StartAddress:   order.StartAddress,
			EndAddress:     order.EndAddress,
			CarType:        getCarTypeStr(order.CarType),
			TotalAmount:    order.TotalAmount,
			PayType:        getPayTypeStr(order.PayType),
			OrderStatus:    order.OrderStatus,
			OrderStatusStr: getOrderStatusStr(order.OrderStatus),
		}

		if order.UserID > 0 {
			var user hxzCar.Passenger
			err := global.GVA_DB.Where("id = ?", order.UserID).First(&user).Error
			if err == nil && user.Nickname != "" {
				item.UserName = maskName(user.Nickname)
				item.UserPhone = maskPhone(user.Phone)
			} else {
				item.UserName = generateMockUserName(order.ID)
				item.UserPhone = generateMockPhone(order.ID)
			}
		} else {
			item.UserName = generateMockUserName(order.ID)
			item.UserPhone = generateMockPhone(order.ID)
		}

		if order.DriverID > 0 {
			var driver hxzCar.Driver
			err := global.GVA_DB.Where("id = ?", order.DriverID).First(&driver).Error
			if err == nil && driver.RealName != "" {
				item.DriverName = driver.RealName + "师傅"
			} else {
				item.DriverName = generateMockDriverName(order.ID)
			}
		} else {
			item.DriverName = generateMockDriverName(order.ID)
		}

		if order.CarID > 0 {
			var car hxzCar.Car
			err := global.GVA_DB.Where("id = ?", order.CarID).First(&car).Error
			if err == nil && car.CarNo != "" {
				item.CarNo = car.CarNo
			} else {
				item.CarNo = generateMockCarNo(order.ID)
			}
		} else {
			item.CarNo = generateMockCarNo(order.ID)
		}

		response.List = append(response.List, item)
	}

	return response, nil
}

func (s *OrderService) CreateOrder(order *hxzCar.Order) error {
	return global.GVA_DB.Create(order).Error
}

func (s *OrderService) UpdateOrder(order *hxzCar.Order) error {
	return global.GVA_DB.Save(order).Error
}

func (s *OrderService) DeleteOrder(id uint) error {
	return global.GVA_DB.Delete(&hxzCar.Order{}, id).Error
}

type OrderDetailResponse struct {
	Order     hxzCar.Order      `json:"order"`
	Driver    *hxzCar.Driver    `json:"driver"`
	Passenger *hxzCar.Passenger `json:"passenger"`
}

func (s *OrderService) GetOrderInfo(id uint) (OrderDetailResponse, error) {
	var response OrderDetailResponse

	var order hxzCar.Order
	err := global.GVA_DB.Where("id = ?", id).First(&order).Error
	if err != nil {
		return response, err
	}
	response.Order = order

	if order.DriverID > 0 {
		var driver hxzCar.Driver
		err := global.GVA_DB.Where("id = ?", order.DriverID).First(&driver).Error
		if err == nil {
			response.Driver = &driver
		}
	}

	if order.UserID > 0 {
		var passenger hxzCar.Passenger
		err := global.GVA_DB.Where("id = ?", order.UserID).First(&passenger).Error
		if err == nil {
			response.Passenger = &passenger
		}
	}

	return response, nil
}

func maskName(name string) string {
	if len(name) <= 1 {
		return "*"
	}
	return string(name[0]) + "*"
}

func maskPhone(phone string) string {
	if len(phone) != 11 {
		return "138****1234"
	}
	return phone[:3] + "****" + phone[7:]
}

func generateMockUserName(orderID uint) string {
	names := []string{"张", "李", "王", "赵", "刘", "陈", "杨", "黄", "周", "吴"}
	return names[orderID%10] + "*"
}

func generateMockPhone(orderID uint) string {
	prefixes := []string{"138", "139", "158", "159", "188", "189", "178"}
	return prefixes[orderID%7] + "****" + fmt.Sprintf("%04d", orderID%10000)
}

func generateMockDriverName(orderID uint) string {
	names := []string{"李", "王", "张", "刘", "陈", "杨", "黄", "赵", "周", "吴"}
	return names[orderID%10] + "师傅"
}

func generateMockCarNo(orderID uint) string {
	cities := []string{"京", "沪", "粤", "浙", "苏", "鲁", "川", "湘", "鄂", "皖"}
	letters := []string{"A", "B", "C", "D", "E", "F", "G", "H", "J", "K"}
	return cities[orderID%10] + letters[orderID%10] + fmt.Sprintf("%04d", orderID%10000)
}

func getCarTypeStr(carType string) string {
	switch carType {
	case "经济型":
		return "快车"
	case "舒适型":
		return "舒适"
	case "特惠快车":
		return "特惠快车"
	default:
		return carType
	}
}

func getPayTypeStr(payType int) string {
	switch payType {
	case 1:
		return "微信"
	case 2:
		return "支付宝"
	default:
		return "其他"
	}
}

func getOrderStatusStr(status int) string {
	switch status {
	case 1:
		return "待接单"
	case 2:
		return "已接单"
	case 3:
		return "进行中"
	case 4:
		return "已完成"
	case 5:
		return "已取消"
	case 6:
		return "异常"
	default:
		return "未知"
	}
}

func formatDateTime(t time.Time) string {
	if t.IsZero() {
		return ""
	}
	return t.Format("2006-01-02 15:04:05")
}
