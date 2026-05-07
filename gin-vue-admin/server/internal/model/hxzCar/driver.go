package hxzCar

import (
	"time"
)

type Driver struct {
	ID               uint      `gorm:"column:id;primaryKey;autoIncrement"`
	Phone            string    `gorm:"column:phone;unique;size:20;comment:手机号"`
	RealName         string    `gorm:"column:real_name;size:30;comment:真实姓名"`
	IDCard           string    `gorm:"column:id_card;unique;size:18;comment:身份证号"`
	AvatarURL        string    `gorm:"column:avatar_url;size:255;comment:头像URL"`
	Gender           int       `gorm:"column:gender;default:0;comment:性别 0-未知 1-男 2-女"`
	Age              int       `gorm:"column:age;comment:年龄"`
	City             string    `gorm:"column:city;size:32;comment:城市"`
	LicenseNo        string    `gorm:"column:license_no;size:30;comment:驾驶证号"`
	LicenseIssueDate time.Time `gorm:"column:license_issue_date;comment:驾驶证签发日期"`
	LicenseValidDate time.Time `gorm:"column:license_valid_date;comment:驾驶证有效期"`
	DriverType       int       `gorm:"column:driver_type;default:1;comment:司机类型 1-全职 2-兼职"`
	AuditStatus      int       `gorm:"column:audit_status;default:0;comment:审核状态 0-待审核 1-通过 2-拒绝"`
	WorkStatus       int       `gorm:"column:work_status;default:0;comment:工作状态 0-离线 1-接单 2-收工"`
	TotalOrderCount  int       `gorm:"column:total_order_count;default:0;comment:总订单数"`
	TotalIncome      float64   `gorm:"column:total_income;default:0.00;comment:总收入"`
	AverageRating    float64   `gorm:"column:average_rating;default:5.00;comment:平均评分"`
	Status           int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
	RegisterTime     time.Time `gorm:"column:register_time;comment:注册时间"`
	LastOnlineTime   time.Time `gorm:"column:last_online_time;comment:最后在线时间"`
}

func (Driver) TableName() string {
	return "driver"
}
