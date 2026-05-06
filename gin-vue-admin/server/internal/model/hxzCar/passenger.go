package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type Passenger struct {
	gorm.Model
	PassengerNo string    `gorm:"column:passenger_no;unique;size:50;comment:乘客编号"`
	Name        string    `gorm:"column:name;size:100;comment:乘客姓名"`
	Phone       string    `gorm:"column:phone;unique;size:20;comment:手机号"`
	Status      int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
	CreateTime  time.Time `gorm:"column:create_time;autoCreateTime;comment:创建时间"`
	UpdateTime  time.Time `gorm:"column:update_time;autoUpdateTime;comment:更新时间"`
}

func (Passenger) TableName() string {
	return "hxz_passenger"
}