package hxzCar

import (
	"strconv"

	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/abnormal"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"

	"github.com/gin-gonic/gin"
)

type AbnormalApi struct{}

func (api *AbnormalApi) GetAbnormalStats(c *gin.Context) {
	dateStr := c.Query("date")

	stats, err := abnormal.NewAbnormalService().GetAbnormalStats(dateStr)
	if err != nil {
		response.FailWithMessage("获取异常订单统计失败", c)
		return
	}

	c.JSON(200, gin.H{
		"code": 0,
		"msg":  "success",
		"data": stats,
	})
}

func (api *AbnormalApi) GetAbnormalOrders(c *gin.Context) {
	var query abnormal.AbnormalQuery
	if err := c.ShouldBindQuery(&query); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}

	orders, total, err := abnormal.NewAbnormalService().GetAbnormalOrders(query)
	if err != nil {
		response.FailWithMessage("获取异常订单列表失败", c)
		return
	}

	c.JSON(200, gin.H{
		"code": 0,
		"msg":  "success",
		"data": gin.H{
			"list":  orders,
			"total": total,
		},
	})
}

func (api *AbnormalApi) UpdateProcessStatus(c *gin.Context) {
	orderIDStr := c.Query("id")
	statusStr := c.Query("status")

	orderID, err := strconv.ParseUint(orderIDStr, 10, 32)
	if err != nil {
		response.FailWithMessage("订单ID错误", c)
		return
	}

	status, err := strconv.Atoi(statusStr)
	if err != nil {
		response.FailWithMessage("状态参数错误", c)
		return
	}

	err = abnormal.NewAbnormalService().UpdateProcessStatus(uint(orderID), status)
	if err != nil {
		response.FailWithMessage("更新处理状态失败", c)
		return
	}

	response.OkWithMessage("更新成功", c)
}

func (api *AbnormalApi) BatchProcess(c *gin.Context) {
	var req struct {
		IDs    []uint `json:"ids"`
		Status int    `json:"status"`
	}

	if err := c.ShouldBindJSON(&req); err != nil {
		response.FailWithMessage("参数错误", c)
		return
	}

	for _, id := range req.IDs {
		err := abnormal.NewAbnormalService().UpdateProcessStatus(id, req.Status)
		if err != nil {
			response.FailWithMessage("批量处理失败", c)
			return
		}
	}

	response.OkWithMessage("批量处理成功", c)
}
