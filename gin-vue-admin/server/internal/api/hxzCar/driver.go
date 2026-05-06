package hxzCar

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzCarModel "github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
	hxzCarService "github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar"
	"net/http"

	"github.com/gin-gonic/gin"
)

type DriverApi struct{}

func (api *DriverApi) GetDriverList(c *gin.Context) {
	drivers, err := hxzCarService.DriverService.GetDriverList()
	if err != nil {
		response.FailWithMessage("获取司机列表失败", c)
		return
	}
	response.OkWithData(drivers, c)
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
	var driver hxzCarModel.Driver
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
	var driver hxzCarModel.Driver
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