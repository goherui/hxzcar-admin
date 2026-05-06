package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type DailyStatistics struct {
	gorm.Model
	StatDate           time.Time `gorm:"column:stat_date;comment:统计日期"`
	City               string    `gorm:"column:city;size:32;comment:城市"`
	OrderCount         int       `gorm:"column:order_count;default:0;comment:订单总数"`
	CompleteOrderCount int       `gorm:"column:complete_order_count;default:0;comment:完成订单数"`
	ActiveUserCount    int       `gorm:"column:active_user_count;default:0;comment:活跃用户数"`
	ActiveDriverCount  int       `gorm:"column:active_driver_count;default:0;comment:活跃司机数"`
	GMV                float64   `gorm:"column:gmv;default:0.00;comment:交易额"`
	AvgOrderPrice      float64   `gorm:"column:avg_order_price;default:0.00;comment:平均订单价格"`
}

func (DailyStatistics) TableName() string {
	return "daily_statistics"
}
