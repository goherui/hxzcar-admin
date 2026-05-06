package hxzCar

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzCarModel "github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
	hxzCarService "github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar"
	"net/http"

	"github.com/gin-gonic/gin"
)

type OrderApi struct{}

func (api *OrderApi) GetOrderList(c *gin.Context) {
	orders, err := hxzCarService.OrderService.GetOrderList()
	if err != nil {
		response.FailWithMessage("获取订单列表失败", c)
		return
	}
	response.OkWithData(orders, c)
}

func (api *OrderApi) GetOrderByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	order, err := hxzCarService.OrderService.GetOrderByID(req.ID)
	if err != nil {
		response.FailWithMessage("获取订单信息失败", c)
		return
	}
	response.OkWithData(order, c)
}

func (api *OrderApi) CreateOrder(c *gin.Context) {
	var order hxzCarModel.Order
	if err := c.ShouldBindJSON(&order); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.OrderService.CreateOrder(&order); err != nil {
		response.FailWithMessage("创建订单失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *OrderApi) UpdateOrder(c *gin.Context) {
	var order hxzCarModel.Order
	if err := c.ShouldBindJSON(&order); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.OrderService.UpdateOrder(&order); err != nil {
		response.FailWithMessage("更新订单失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *OrderApi) DeleteOrder(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id"`
	}
	if err := c.ShouldBind(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := hxzCarService.OrderService.DeleteOrder(req.ID); err != nil {
		response.FailWithMessage("删除订单失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *OrderApi) HealthCheck(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"status":  "success",
		"message": "hxzCar order service is running",
	})
}