package hxzCar

import (
	"time"
)

type Driver struct {
	ID               uint      `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	Phone            string    `gorm:"column:phone;unique;size:20;comment:手机号" json:"phone"`
	RealName         string    `gorm:"column:real_name;size:30;comment:真实姓名" json:"realName"`
	IDCard           string    `gorm:"column:id_card;unique;size:18;comment:身份证号" json:"idCard"`
	AvatarURL        string    `gorm:"column:avatar_url;size:255;comment:头像URL" json:"avatarURL"`
	Gender           int       `gorm:"column:gender;default:0;comment:性别 0-未知 1-男 2-女" json:"gender"`
	Age              int       `gorm:"column:age;comment:年龄" json:"age"`
	City             string    `gorm:"column:city;size:32;comment:城市" json:"city"`
	LicenseNo        string    `gorm:"column:license_no;size:30;comment:驾驶证号" json:"licenseNo"`
	LicenseIssueDate time.Time `gorm:"column:license_issue_date;comment:驾驶证签发日期" json:"licenseIssueDate"`
	LicenseValidDate time.Time `gorm:"column:license_valid_date;comment:驾驶证有效期" json:"licenseValidDate"`
	DriverType       int       `gorm:"column:driver_type;default:1;comment:司机类型 1-全职 2-兼职" json:"driverType"`
	AuditStatus      int       `gorm:"column:audit_status;default:0;comment:审核状态 0-待审核 1-通过 2-拒绝" json:"auditStatus"`
	WorkStatus       int       `gorm:"column:work_status;default:0;comment:工作状态 0-离线 1-接单 2-收工" json:"workStatus"`
	TotalOrderCount  int       `gorm:"column:total_order_count;default:0;comment:总订单数" json:"totalOrderCount"`
	TotalIncome      float64   `gorm:"column:total_income;default:0.00;comment:总收入" json:"totalIncome"`
	AverageRating    float64   `gorm:"column:average_rating;default:5.00;comment:平均评分" json:"averageRating"`
	Status           int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常" json:"status"`
	RegisterTime     time.Time `gorm:"column:register_time;comment:注册时间" json:"registerTime"`
	LastOnlineTime   time.Time `gorm:"column:last_online_time;comment:最后在线时间" json:"lastOnlineTime"`
}

func (Driver) TableName() string {
	return "driver"
}
