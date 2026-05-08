package hxzCar

import (
	"time"
)

type Passenger struct {
	ID              uint      `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Phone           string    `gorm:"column:phone;unique;size:20;comment:手机号" json:"phone"`
	Nickname        string    `gorm:"column:nickname;size:64;comment:昵称" json:"nickname"`
	AvatarURL       string    `gorm:"column:avatar_url;size:255;comment:头像URL" json:"avatarURL"`
	Gender          int       `gorm:"column:gender;default:0;comment:性别 0-未知 1-男 2-女" json:"gender"`
	Age             int       `gorm:"column:age;comment:年龄" json:"age"`
	City            string    `gorm:"column:city;size:32;comment:城市" json:"city"`
	RegisterTime    time.Time `gorm:"column:register_time;comment:注册时间" json:"registerTime"`
	LastOrderTime   time.Time `gorm:"column:last_order_time;comment:最后下单时间" json:"lastOrderTime"`
	TotalOrderCount int       `gorm:"column:total_order_count;default:0;comment:总订单数" json:"totalOrderCount"`
	TotalConsume    float64   `gorm:"column:total_consume;default:0.00;comment:总消费" json:"totalConsume"`
	Status          int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常" json:"status"`
}

func (Passenger) TableName() string {
	return "user"
}
