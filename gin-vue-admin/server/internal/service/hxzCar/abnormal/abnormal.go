package abnormal

import (
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

	stats.Processing = stats.Total * 7 / 10
	stats.Processed = stats.Total - stats.Processing

	if stats.Total > 0 {
		stats.ProcessRate = float64(stats.Processed) / float64(stats.Total) * 100
	}

	return stats, nil
}

func (s *AbnormalService) GetAbnormalOrders(query AbnormalQuery) ([]AbnormalOrder, int64, error) {
	db := global.GVA_DB.Model(&hxzCar.Order{}).Where("order_status = 6")

	if query.Keyword != "" {
		db = db.Where("order_no LIKE ? OR phone LIKE ? OR license_plate LIKE ?",
			"%"+query.Keyword+"%", "%"+query.Keyword+"%", "%"+query.Keyword+"%")
	}

	if query.City != "" && query.City != "全部城市" && query.City != "0" {
		db = db.Where("start_address LIKE ?", "%"+query.City+"%")
	}

	if query.AbnormalType > 0 {
		db = db.Where("abnormal_type = ?", query.AbnormalType)
	}

	if query.ProcessStatus > 0 {
		db = db.Where("process_status = ?", query.ProcessStatus)
	}

	var total int64
	err := db.Count(&total).Error
	if err != nil {
		return nil, 0, err
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
			ProcessStatus: 1,
		})
	}

	return abnormalOrders, total, nil
}

func (s *AbnormalService) UpdateProcessStatus(orderID uint, status int) error {
	return global.GVA_DB.Model(&hxzCar.Order{}).
		Where("id = ?", orderID).
		Update("process_status", status).Error
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
