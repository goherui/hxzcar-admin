package hxzCar

import (
	"time"

	"gorm.io/gorm"
)

type MarketingTool struct {
	gorm.Model
	ToolName        string    `gorm:"column:tool_name;size:64;comment:工具名称"`
	ToolCode        string    `gorm:"column:tool_code;unique;size:32;comment:工具编码"`
	ToolType        int       `gorm:"column:tool_type;comment:工具类型"`
	ContentConfig   string    `gorm:"column:content_config;type:text;comment:内容配置"`
	TargetConfig    string    `gorm:"column:target_config;type:text;comment:目标配置"`
	StartTime       time.Time `gorm:"column:start_time;comment:开始时间"`
	EndTime         time.Time `gorm:"column:end_time;comment:结束时间"`
	PVCount         int       `gorm:"column:pv_count;default:0;comment:曝光次数"`
	ClickCount      int       `gorm:"column:click_count;default:0;comment:点击次数"`
	ConversionCount int       `gorm:"column:conversion_count;default:0;comment:转化次数"`
	Status          int       `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
	CreateBy        string    `gorm:"column:create_by;size:32;comment:创建人"`
}

func (MarketingTool) TableName() string {
	return "marketing_tool"
}
