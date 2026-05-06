package hxzCar

import (
	"net/http"

	hxzCarModel "github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/order"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"

	"github.com/gin-gonic/gin"
)

type OrderApi struct{}

func (api *OrderApi) GetOrderList(c *gin.Context) {
	var query order.OrderQuery
	if err := c.ShouldBindQuery(&query); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}

	if query.Page <= 0 {
		query.Page = 1
	}
	if query.PageSize <= 0 {
		query.PageSize = 10
	}

	orders, err := order.NewOrderService().GetOrderList(query)
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
	orderInfo, err := order.NewOrderService().GetOrderByID(req.ID)
	if err != nil {
		response.FailWithMessage("获取订单信息失败", c)
		return
	}
	response.OkWithData(orderInfo, c)
}

func (api *OrderApi) CreateOrder(c *gin.Context) {
	var orderInfo hxzCarModel.Order
	if err := c.ShouldBindJSON(&orderInfo); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := order.NewOrderService().CreateOrder(&orderInfo); err != nil {
		response.FailWithMessage("创建订单失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *OrderApi) UpdateOrder(c *gin.Context) {
	var orderInfo hxzCarModel.Order
	if err := c.ShouldBindJSON(&orderInfo); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}
	if err := order.NewOrderService().UpdateOrder(&orderInfo); err != nil {
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
	if err := order.NewOrderService().DeleteOrder(req.ID); err != nil {
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
