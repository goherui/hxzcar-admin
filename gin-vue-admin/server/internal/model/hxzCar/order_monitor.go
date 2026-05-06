package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type OrderMonitor struct {
	gorm.Model
	OrderID              uint64    `gorm:"column:order_id;unique;comment:订单ID"`
	OrderNo              string    `gorm:"column:order_no;size:32;comment:订单编号"`
	UserID               uint64    `gorm:"column:user_id;comment:用户ID"`
	DriverID             uint64    `gorm:"column:driver_id;comment:司机ID"`
	OrderStatus          int       `gorm:"column:order_status;comment:订单状态"`
	CurrentLng           float64   `gorm:"column:current_lng;comment:当前经度"`
	CurrentLat           float64   `gorm:"column:current_lat;comment:当前纬度"`
	EstimatedArrivalTime int       `gorm:"column:estimated_arrival_time;comment:预计到达时间(秒)"`
	LastUpdateTime       time.Time `gorm:"column:last_update_time;comment:最后更新时间"`
}

func (OrderMonitor) TableName() string {
	return "order_monitor"
}
