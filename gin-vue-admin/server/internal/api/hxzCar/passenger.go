package hxzCar

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzCarModel "github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
	hxzCarService "github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar"
	"net/http"

	"github.com/gin-gonic/gin"
)

type PassengerApi struct{}

func (api *PassengerApi) GetPassengerList(c *gin.Context) {
	passengers, err := hxzCarService.PassengerService.GetPassengerList()
	if err != nil {
		response.FailWithMessage("获取乘客列表失败", c)
		return
	}
	response.OkWithData(passengers, c)
}

func (api *PassengerApi) GetPassengerByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	passenger, err := hxzCarService.PassengerService.GetPassengerByID(req.ID)
	if err != nil {
		response.FailWithMessage("获取乘客信息失败", c)
		return
	}
	response.OkWithData(passenger, c)
}

func (api *PassengerApi) CreatePassenger(c *gin.Context) {
	var passenger hxzCarModel.Passenger
	if err := c.ShouldBindJSON(&passenger); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.PassengerService.CreatePassenger(&passenger); err != nil {
		response.FailWithMessage("创建乘客失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *PassengerApi) UpdatePassenger(c *gin.Context) {
	var passenger hxzCarModel.Passenger
	if err := c.ShouldBindJSON(&passenger); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.PassengerService.UpdatePassenger(&passenger); err != nil {
		response.FailWithMessage("更新乘客失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *PassengerApi) DeletePassenger(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.PassengerService.DeletePassenger(req.ID); err != nil {
		response.FailWithMessage("删除乘客失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *PassengerApi) HealthCheck(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"status":  "success",
		"message": "hxzCar passenger service is running",
	})
}