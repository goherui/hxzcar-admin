package hxzCar

import (
	"net/http"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	hxzCar "github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
	hxzCarService "github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"

	"github.com/gin-gonic/gin"
)

type DriverApi struct{}

func (api *DriverApi) GetDriverList(c *gin.Context) {
	var req struct {
		Page     int `form:"page" json:"page"`
		PageSize int `form:"pageSize" json:"pageSize"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}

	if req.Page <= 0 {
		req.Page = 1
	}
	if req.PageSize <= 0 {
		req.PageSize = 20
	}

	drivers, err := hxzCarService.DriverService.GetDriverList(req.Page, req.PageSize)
	if err != nil {
		response.FailWithMessage("获取司机列表失败", c)
		return
	}

	var total int64
	err = global.GVA_DB.Model(&hxzCar.Driver{}).Count(&total).Error
	if err != nil {
		response.FailWithMessage("获取司机列表失败", c)
		return
	}

	response.OkWithData(gin.H{
		"list":  drivers,
		"total": total,
	}, c)
}

func (api *DriverApi) GetDriverByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	driver, err := hxzCarService.DriverService.GetDriverByID(req.ID)
	if err != nil {
		response.FailWithMessage("获取司机信息失败", c)
		return
	}
	response.OkWithData(driver, c)
}

func (api *DriverApi) CreateDriver(c *gin.Context) {
	var driver hxzCar.Driver
	if err := c.ShouldBindJSON(&driver); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.DriverService.CreateDriver(&driver); err != nil {
		response.FailWithMessage("创建司机失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *DriverApi) UpdateDriver(c *gin.Context) {
	var driver hxzCar.Driver
	if err := c.ShouldBindJSON(&driver); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.DriverService.UpdateDriver(&driver); err != nil {
		response.FailWithMessage("更新司机失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *DriverApi) DeleteDriver(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.DriverService.DeleteDriver(req.ID); err != nil {
		response.FailWithMessage("删除司机失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *DriverApi) HealthCheck(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"status":  "success",
		"message": "hxzCar driver service is running",
	})
}
