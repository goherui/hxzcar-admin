package hxzCar

import (
	"gorm.io/gorm"
)

type OperationLog struct {
	gorm.Model
	AdminID        int    `gorm:"column:admin_id;comment:管理员ID"`
	Username       string `gorm:"column:username;size:32;comment:用户名"`
	Module         string `gorm:"column:module;size:32;comment:模块"`
	Operation      string `gorm:"column:operation;size:64;comment:操作"`
	RequestMethod  string `gorm:"column:request_method;size:16;comment:请求方法"`
	RequestURL     string `gorm:"column:request_url;size:255;comment:请求URL"`
	RequestParams  string `gorm:"column:request_params;type:text;comment:请求参数"`
	ResponseResult string `gorm:"column:response_result;type:text;comment:响应结果"`
	IPAddress      string `gorm:"column:ip_address;size:64;comment:IP地址"`
	Status         int    `gorm:"column:status;default:1;comment:状态 0-失败 1-成功"`
}

func (OperationLog) TableName() string {
	return "operation_log"
}
