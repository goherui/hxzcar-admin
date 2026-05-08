package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type DriverBlackWhite struct {
	ID         uint64         `gorm:"primaryKey;autoIncrement" json:"id"`
	DriverID   uint64         `gorm:"column:driver_id;not null;index" json:"driverId"`
	Type       int            `gorm:"column:type;not null" json:"type"`
	Reason     string         `gorm:"column:reason" json:"reason"`
	ExpireTime time.Time      `gorm:"column:expire_time" json:"expireTime"`
	Operator   string         `gorm:"column:operator" json:"operator"`
	Enabled    int            `gorm:"column:enabled;default:1" json:"enabled"`
	CreatedAt  time.Time      `gorm:"column:created_at" json:"createdAt"`
	UpdatedAt  time.Time      `gorm:"column:updated_at" json:"updatedAt"`
	DeletedAt  gorm.DeletedAt `gorm:"column:deleted_at;index" json:"deletedAt"`
}

func (DriverBlackWhite) TableName() string {
	return "driver_black_white"
}

const (
	BlackListType = 1
	WhiteListType = 2
)
