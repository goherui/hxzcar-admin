package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type DriverComment struct {
	gorm.Model
	OrderID        uint64    `gorm:"column:order_id;unique;comment:订单ID"`
	OrderNo        string    `gorm:"column:order_no;size:32;comment:订单编号"`
	UserID         uint64    `gorm:"column:user_id;comment:用户ID"`
	DriverID       uint64    `gorm:"column:driver_id;comment:司机ID"`
	StarRating     int       `gorm:"column:star_rating;default:5;comment:星级评分"`
	CommentContent string    `gorm:"column:comment_content;size:500;comment:评价内容"`
	CommentTags    string    `gorm:"column:comment_tags;size:255;comment:评价标签"`
	CommentTime    time.Time `gorm:"column:comment_time;comment:评价时间"`
	Status         int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
}

func (DriverComment) TableName() string {
	return "driver_comment"
}
