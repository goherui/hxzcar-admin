package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type AbnormalOrder struct {
	gorm.Model
	OrderID       uint64    `gorm:"column:order_id;unique;comment:订单ID"`
	OrderNo       string    `gorm:"column:order_no;size:32;comment:订单编号"`
	AbnormalType  int       `gorm:"column:abnormal_type;comment:异常类型"`
	AbnormalDesc  string    `gorm:"column:abnormal_desc;size:255;comment:异常描述"`
	Status        int       `gorm:"column:status;default:0;comment:处理状态 0-未处理 1-已处理 2-忽略"`
	HandleAdminID int       `gorm:"column:handle_admin_id;comment:处理管理员ID"`
	HandleOpinion string    `gorm:"column:handle_opinion;size:255;comment:处理意见"`
	HandleTime    time.Time `gorm:"column:handle_time;comment:处理时间"`
}

func (AbnormalOrder) TableName() string {
	return "abnormal_order"
}
