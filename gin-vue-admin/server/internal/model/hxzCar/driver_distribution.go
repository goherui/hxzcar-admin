package hxzCar

import (
	"gorm.io/gorm"
)

type DriverDistribution struct {
	gorm.Model
	DriverID   uint64  `gorm:"column:driver_id;unique;comment:司机ID"`
	City       string  `gorm:"column:city;size:32;comment:城市"`
	District   string  `gorm:"column:district;size:32;comment:区域"`
	Lng        float64 `gorm:"column:lng;comment:经度"`
	Lat        float64 `gorm:"column:lat;comment:纬度"`
	WorkStatus int     `gorm:"column:work_status;comment:工作状态"`
}

func (DriverDistribution) TableName() string {
	return "driver_distribution"
}
