package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type Coupon struct {
	gorm.Model
	CouponName string    `gorm:"column:coupon_name;size:64;comment:优惠券名称"`
	CouponType int       `gorm:"column:coupon_type;comment:优惠券类型 1-满减券 2-折扣券 3-无门槛券"`
	Amount     float64   `gorm:"column:amount;default:0.00;comment:优惠金额/折扣比例"`
	MinConsume float64   `gorm:"column:min_consume;default:0.00;comment:最低消费"`
	ValidDays  int       `gorm:"column:valid_days;default:0;comment:有效天数"`
	StartTime  time.Time `gorm:"column:start_time;comment:开始时间"`
	EndTime    time.Time `gorm:"column:end_time;comment:结束时间"`
	TotalCount int       `gorm:"column:total_count;default:0;comment:总数量"`
	UsedCount  int       `gorm:"column:used_count;default:0;comment:已使用数量"`
	Status     int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
}

func (Coupon) TableName() string {
	return "coupon"
}
