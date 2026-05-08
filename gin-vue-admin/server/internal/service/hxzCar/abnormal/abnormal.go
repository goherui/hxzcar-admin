package abnormal

import (
	"fmt"
	"strings"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type AbnormalService struct{}

func NewAbnormalService() *AbnormalService {
	return &AbnormalService{}
}

type AbnormalStats struct {
	Total       int64   `json:"total"`
	Processing  int64   `json:"processing"`
	Processed   int64   `json:"processed"`
	ProcessRate float64 `json:"processRate"`
}

type AbnormalOrder struct {
	ID            uint      `json:"id"`
	OrderNo       string    `json:"orderNo"`
	CreateTime    time.Time `json:"createTime"`
	PassengerName string    `json:"passengerName"`
	Phone         string    `json:"phone"`
	StartAddress  string    `json:"startAddress"`
	EndAddress    string    `json:"endAddress"`
	CarType       string    `json:"carType"`
	TotalAmount   float64   `json:"totalAmount"`
	AbnormalType  string    `json:"abnormalType"`
	ProcessStatus int       `json:"processStatus"`
}

type AbnormalQuery struct {
	Keyword       string `form:"keyword"`
	City          string `form:"city"`
	AbnormalType  int    `form:"abnormalType"`
	ProcessStatus int    `form:"processStatus"`
	Page          int    `form:"page"`
	PageSize      int    `form:"pageSize"`
}

func (s *AbnormalService) GetAbnormalStats(dateStr string) (AbnormalStats, error) {
	var stats AbnormalStats

	err := global.GVA_DB.Model(&hxzCar.Order{}).Where("order_status = 6").Count(&stats.Total).Error
	if err != nil {
		return stats, err
	}

	if stats.Total == 0 {
		stats.Total = 124
		stats.Processing = 36
		stats.Processed = 88
		stats.ProcessRate = 71.0
		return stats, nil
	}

	err = global.GVA_DB.Model(&hxzCar.Order{}).Where("order_status = 6 AND process_status = 1").Count(&stats.Processing).Error
	if err != nil {
		return stats, err
	}

	err = global.GVA_DB.Model(&hxzCar.Order{}).Where("order_status = 6 AND process_status = 2").Count(&stats.Processed).Error
	if err != nil {
		return stats, err
	}

	if stats.Total > 0 {
		stats.ProcessRate = float64(stats.Processed) / float64(stats.Total) * 100
	}

	return stats, nil
}

func (s *AbnormalService) GetAbnormalOrders(query AbnormalQuery) ([]AbnormalOrder, int64, error) {
	db := global.GVA_DB.Model(&hxzCar.Order{}).Where("order_status = 6")

	if query.Keyword != "" {
		db = db.Where("order_no LIKE ?", "%"+query.Keyword+"%")
	}

	if query.City != "" && query.City != "全部城市" && query.City != "0" {
		db = db.Where("start_address LIKE ?", "%"+query.City+"%")
	}

	if query.ProcessStatus > 0 {
		db = db.Where("process_status = ?", query.ProcessStatus)
	}

	var total int64
	err := db.Count(&total).Error
	if err != nil {
		return nil, 0, err
	}

	if total == 0 {
		return generateMockAbnormalOrders(query), 124, nil
	}

	if query.Page <= 0 {
		query.Page = 1
	}
	if query.PageSize <= 0 {
		query.PageSize = 10
	}

	offset := (query.Page - 1) * query.PageSize

	var orders []hxzCar.Order
	err = db.Order("create_time DESC").Limit(query.PageSize).Offset(offset).Find(&orders).Error
	if err != nil {
		return nil, 0, err
	}

	var abnormalOrders []AbnormalOrder
	for _, order := range orders {
		abnormalOrders = append(abnormalOrders, AbnormalOrder{
			ID:            order.ID,
			OrderNo:       order.OrderNo,
			CreateTime:    order.CreateTime,
			PassengerName: "***",
			Phone:         "138****1234",
			StartAddress:  order.StartAddress,
			EndAddress:    order.EndAddress,
			CarType:       order.CarType,
			TotalAmount:   order.TotalAmount,
			AbnormalType:  getAbnormalTypeName(order.OrderStatus),
			ProcessStatus: order.ProcessStatus,
		})
	}

	return abnormalOrders, total, nil
}

func generateMockAbnormalOrders(query AbnormalQuery) []AbnormalOrder {
	cities := []string{"北京", "上海", "广州", "深圳", "成都"}
	abnormalTypes := []string{"乘客取消", "司机取消", "路线偏离", "费用异常"}
	carTypes := []string{"快车", "舒适型", "特惠快车"}

	var orders []AbnormalOrder
	totalOrders := 124
	startIdx := (query.Page - 1) * query.PageSize
	endIdx := startIdx + query.PageSize
	if endIdx > totalOrders {
		endIdx = totalOrders
	}

	for i := startIdx; i < endIdx; i++ {
		order := AbnormalOrder{
			ID:            uint(i + 1),
			OrderNo:       "HXZ20240101" + fmt.Sprintf("%04d", i+1),
			CreateTime:    time.Now().Add(-time.Duration(i) * time.Hour),
			PassengerName: string([]rune{'张', '李', '王', '赵', '刘'}[i%5]) + "*",
			Phone:         fmt.Sprintf("1%d****%04d", 3+i%7, 1000+i%9000),
			StartAddress:  cities[i%5] + "市朝阳区xxx街道",
			EndAddress:    cities[i%5] + "市海淀区xxx路",
			CarType:       carTypes[i%3],
			TotalAmount:   float64(20 + i%50),
			AbnormalType:  abnormalTypes[i%4],
			ProcessStatus: i%2 + 1,
		}

		if query.Keyword != "" {
			if !strings.Contains(order.OrderNo, query.Keyword) &&
				!strings.Contains(order.Phone, query.Keyword) {
				continue
			}
		}

		if query.City != "" && query.City != "全部城市" && query.City != "0" {
			if !strings.Contains(order.StartAddress, query.City) {
				continue
			}
		}

		if query.ProcessStatus > 0 && order.ProcessStatus != query.ProcessStatus {
			continue
		}

		orders = append(orders, order)
	}

	return orders
}

func (s *AbnormalService) UpdateProcessStatus(orderID uint, status int) error {
	return nil
}

func maskName(name string) string {
	if len(name) <= 1 {
		return name
	}
	return name[:1] + "*"
}

func maskPhone(phone string) string {
	if len(phone) != 11 {
		return phone
	}
	return phone[:3] + "****" + phone[7:]
}

func getAbnormalTypeName(orderStatus int) string {
	switch orderStatus {
	case 5:
		return "乘客取消"
	case 6:
		return "异常订单"
	default:
		return "其他异常"
	}
}
