package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type Driver struct {
	gorm.Model
	DriverNo     string    `gorm:"column:driver_no;unique;size:50;comment:司机编号"`
	Name         string    `gorm:"column:name;size:100;comment:司机姓名"`
	Phone        string    `gorm:"column:phone;unique;size:20;comment:手机号"`
	IDCard       string    `gorm:"column:id_card;unique;size:18;comment:身份证号"`
	LicensePlate string    `gorm:"column:license_plate;size:20;comment:车牌号"`
	VehicleType  string    `gorm:"column:vehicle_type;size:50;comment:车辆类型"`
	Status       int       `gorm:"column:status;default:0;comment:状态 0-待审核 1-审核通过 2-禁用"`
	CreateTime   time.Time `gorm:"column:create_time;autoCreateTime;comment:创建时间"`
	UpdateTime   time.Time `gorm:"column:update_time;autoUpdateTime;comment:更新时间"`
}

func (Driver) TableName() string {
	return "hxz_driver"
}