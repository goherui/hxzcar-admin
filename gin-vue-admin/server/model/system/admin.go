package system

import (
	"time"

	"github.com/google/uuid"
)

type Admin struct {
	ID            uint      `gorm:"primary_key;auto_increment" json:"id"`
	Username      string    `gorm:"unique;not null;size:32" json:"username"`
	Password      string    `gorm:"not null;size:64" json:"password"`
	Nickname      string    `gorm:"size:32" json:"nickname"`
	Phone         string    `gorm:"size:20" json:"phone"`
	Email         string    `gorm:"size:64" json:"email"`
	AvatarUrl     string    `gorm:"size:255" json:"avatar_url"`
	Status        int       `gorm:"default:1" json:"status"`
	LastLoginTime time.Time `json:"last_login_time"`
	LastLoginIP   string    `gorm:"size:64" json:"last_login_ip"`
	CreateTime    time.Time `gorm:"default:CURRENT_TIMESTAMP" json:"create_time"`
	UpdateTime    time.Time `gorm:"default:CURRENT_TIMESTAMP" json:"update_time"`
}

func (Admin) TableName() string {
	return "admin"
}

func (a *Admin) GetUsername() string {
	return a.Username
}

func (a *Admin) GetNickname() string {
	return a.Nickname
}

func (a *Admin) GetUUID() uuid.UUID {
	return uuid.New()
}

func (a *Admin) GetUserId() uint {
	return a.ID
}

func (a *Admin) GetAuthorityId() uint {
	return 888
}

func (a *Admin) GetUserInfo() any {
	return a
}

var _ Login = new(Admin)