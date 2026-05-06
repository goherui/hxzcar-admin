package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type DriverAudit struct {
	gorm.Model
	DriverID     uint64    `gorm:"column:driver_id;comment:司机ID"`
	AuditType    int       `gorm:"column:audit_type;comment:审核类型"`
	SubmitInfo   string    `gorm:"column:submit_info;type:text;comment:提交信息"`
	AuditStatus  int       `gorm:"column:audit_status;default:0;comment:审核状态 0-待审核 1-通过 2-拒绝"`
	AuditOpinion string    `gorm:"column:audit_opinion;size:255;comment:审核意见"`
	AuditAdminID int       `gorm:"column:audit_admin_id;comment:审核管理员ID"`
	AuditTime    time.Time `gorm:"column:audit_time;comment:审核时间"`
}

func (DriverAudit) TableName() string {
	return "driver_audit"
}
