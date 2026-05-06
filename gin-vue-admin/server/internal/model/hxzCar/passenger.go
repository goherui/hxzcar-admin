package hxzCar

import (
	"time"
)

type Passenger struct {
	ID              uint      `gorm:"column:id;primaryKey;autoIncrement"`
	Phone           string    `gorm:"column:phone;unique;size:20;comment:手机号"`
	Nickname        string    `gorm:"column:nickname;size:64;comment:昵称"`
	AvatarURL       string    `gorm:"column:avatar_url;size:255;comment:头像URL"`
	Gender          int       `gorm:"column:gender;default:0;comment:性别 0-未知 1-男 2-女"`
	Age             int       `gorm:"column:age;comment:年龄"`
	City            string    `gorm:"column:city;size:32;comment:城市"`
	RegisterTime    time.Time `gorm:"column:register_time;comment:注册时间"`
	LastOrderTime   time.Time `gorm:"column:last_order_time;comment:最后下单时间"`
	TotalOrderCount int       `gorm:"column:total_order_count;default:0;comment:总订单数"`
	TotalConsume    float64   `gorm:"column:total_consume;default:0.00;comment:总消费"`
	Status          int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
}

func (Passenger) TableName() string {
	return "user"
}