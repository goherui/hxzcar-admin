package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type Activity struct {
	gorm.Model
	ActivityName    string    `gorm:"column:activity_name;size:64;comment:活动名称"`
	ActivityType    int       `gorm:"column:activity_type;comment:活动类型"`
	ActivityDesc    string    `gorm:"column:activity_desc;size:255;comment:活动描述"`
	StartTime       time.Time `gorm:"column:start_time;comment:开始时间"`
	EndTime         time.Time `gorm:"column:end_time;comment:结束时间"`
	TargetUserType  int       `gorm:"column:target_user_type;default:1;comment:目标用户类型"`
	ConditionConfig string    `gorm:"column:condition_config;type:text;comment:条件配置"`
	RewardConfig    string    `gorm:"column:reward_config;type:text;comment:奖励配置"`
	TotalQuota      int       `gorm:"column:total_quota;default:0;comment:总配额"`
	UsedQuota       int       `gorm:"column:used_quota;default:0;comment:已使用配额"`
	Status          int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
	CreateBy        string    `gorm:"column:create_by;size:32;comment:创建人"`
}

func (Activity) TableName() string {
	return "activity"
}
