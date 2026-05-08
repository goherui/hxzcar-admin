package hxzCar

import (
	"time"
)

type DriverStatus struct {
	ID             uint64    `gorm:"primaryKey;autoIncrement" json:"id"`
	DriverID       uint64    `gorm:"column:driver_id;not null;uniqueIndex" json:"driverId"`
	WorkStatus     int       `gorm:"column:work_status;not null;default:0" json:"workStatus"`
	CurrentLng     float64   `gorm:"column:current_lng;type:decimal(10,6);not null;default:0.000000" json:"currentLng"`
	CurrentLat     float64   `gorm:"column:current_lat;type:decimal(10,6);not null;default:0.000000" json:"currentLat"`
	GeoHash        string    `gorm:"column:geo_hash;size:12;not null;default:''" json:"geoHash"`
	ServiceScore   float64   `gorm:"column:service_score;type:decimal(5,2);not null;default:5.00" json:"serviceScore"`
	AcceptRate     float64   `gorm:"column:accept_rate;type:decimal(5,2);not null;default:100.00" json:"acceptRate"`
	IsQualified    int       `gorm:"column:is_qualified;not null;default:1" json:"isQualified"`
	LastReportTime time.Time `gorm:"column:last_report_time;not null" json:"lastReportTime"`
	UpdateTime     time.Time `gorm:"column:update_time" json:"updateTime"`
}

func (DriverStatus) TableName() string {
	return "driver_status"
}
