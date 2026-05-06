package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type Pay struct {
	gorm.Model
	OrderNo       string    `gorm:"column:order_no;size:32;comment:订单编号"`
	UserID        uint64    `gorm:"column:user_id;comment:用户ID"`
	PayAmount     float64   `gorm:"column:pay_amount;comment:支付金额"`
	PayType       int       `gorm:"column:pay_type;comment:支付方式 1-微信 2-支付宝"`
	PayStatus     int       `gorm:"column:pay_status;default:0;comment:支付状态 0-未支付 1-已支付 2-已退款"`
	PayTime       time.Time `gorm:"column:pay_time;comment:支付时间"`
	TransactionID string    `gorm:"column:transaction_id;size:64;comment:交易ID"`
}

func (Pay) TableName() string {
	return "pay"
}
