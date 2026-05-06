package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type Order struct {
	gorm.Model
	OrderNo       string    `gorm:"column:order_no;unique;size:50;comment:订单编号"`
	DriverID      uint      `gorm:"column:driver_id;comment:司机ID"`
	PassengerID   uint      `gorm:"column:passenger_id;comment:乘客ID"`
	StartAddress  string    `gorm:"column:start_address;size:500;comment:起点地址"`
	EndAddress    string    `gorm:"column:end_address;size:500;comment:终点地址"`
	StartLat      float64   `gorm:"column:start_lat;comment:起点纬度"`
	StartLng      float64   `gorm:"column:start_lng;comment:起点经度"`
	EndLat        float64   `gorm:"column:end_lat;comment:终点纬度"`
	EndLng        float64   `gorm:"column:end_lng;comment:终点经度"`
	Distance      float64   `gorm:"column:distance;comment:距离(公里)"`
	Amount        float64   `gorm:"column:amount;comment:订单金额"`
	Status        int       `gorm:"column:status;default:0;comment:状态 0-待接单 1-已接单 2-行程中 3-已完成 4-已取消"`
	CreateTime    time.Time `gorm:"column:create_time;autoCreateTime;comment:创建时间"`
	UpdateTime    time.Time `gorm:"column:update_time;autoUpdateTime;comment:更新时间"`
}

func (Order) TableName() string {
	return "hxz_order"
}