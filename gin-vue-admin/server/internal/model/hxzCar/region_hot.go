package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type RegionHot struct {
	ID         uint64         `gorm:"primaryKey;autoIncrement" json:"id"`
	RegionCode string         `gorm:"column:region_code;not null;index" json:"regionCode"`
	RegionName string         `gorm:"column:region_name;not null" json:"regionName"`
	DriverCnt  int            `gorm:"column:driver_cnt;default:0" json:"driverCnt"`
	OrderCnt   int            `gorm:"column:order_cnt;default:0" json:"orderCnt"`
	HotIndex   float64        `gorm:"column:hot_index;type:decimal(5,2)" json:"hotIndex"`
	UpdateTime time.Time      `gorm:"column:update_time" json:"updateTime"`
	CreatedAt  time.Time      `gorm:"column:created_at" json:"createdAt"`
	UpdatedAt  time.Time      `gorm:"column:updated_at" json:"updatedAt"`
	DeletedAt  gorm.DeletedAt `gorm:"column:deleted_at;index" json:"deletedAt"`
}

func (RegionHot) TableName() string {
	return "region_hot"
}
