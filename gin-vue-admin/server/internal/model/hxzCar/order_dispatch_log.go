package hxzCar

import (
	"time"
)

type OrderDispatchLog struct {
	ID           uint64    `gorm:"primaryKey;autoIncrement" json:"id"`
	OrderID      uint64    `gorm:"column:order_id;not null;index" json:"orderId"`
	OrderNo      string    `gorm:"column:order_no;not null" json:"orderNo"`
	DriverID     uint64    `gorm:"column:driver_id" json:"driverId"`
	DriverName   string    `gorm:"column:driver_name" json:"driverName"`
	StartLat     float64   `gorm:"column:start_lat;type:decimal(10,7)" json:"startLat"`
	StartLng     float64   `gorm:"column:start_lng;type:decimal(10,7)" json:"startLng"`
	DriverLat    float64   `gorm:"column:driver_lat;type:decimal(10,7)" json:"driverLat"`
	DriverLng    float64   `gorm:"column:driver_lng;type:decimal(10,7)" json:"driverLng"`
	Distance     float64   `gorm:"column:distance;type:decimal(8,2)" json:"distance"`
	ServiceScore float64   `gorm:"column:service_score;type:decimal(3,1)" json:"serviceScore"`
	AcceptRate   float64   `gorm:"column:accept_rate;type:decimal(5,2)" json:"acceptRate"`
	Score        float64   `gorm:"column:score;type:decimal(6,3)" json:"score"`
	Radius       int       `gorm:"column:radius" json:"radius"`
	RetryCount   int       `gorm:"column:retry_count;default:0" json:"retryCount"`
	Status       int       `gorm:"column:status;not null" json:"status"`
	DispatchTime time.Time `gorm:"column:dispatch_time" json:"dispatchTime"`
	ResponseTime time.Time `gorm:"column:response_time" json:"responseTime"`
	Result       int       `gorm:"column:result;default:0" json:"result"`
	ResultMsg    string    `gorm:"column:result_msg" json:"resultMsg"`
	RuleID       uint64    `gorm:"column:rule_id" json:"ruleId"`
	RuleName     string    `gorm:"column:rule_name" json:"ruleName"`
	ExtInfo      string    `gorm:"column:ext_info;type:text" json:"extInfo"`
}

func (OrderDispatchLog) TableName() string {
	return "order_dispatch_log"
}
