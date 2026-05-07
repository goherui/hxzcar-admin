package hxzCar

import (
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/monitor"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"

	"github.com/gin-gonic/gin"
)

type MonitorApi struct{}

func (api *MonitorApi) GetMonitorData(c *gin.Context) {
	dateStr := c.Query("date")

	responseData, err := monitor.NewMonitorService().GetMonitorData(dateStr)
	if err != nil {
		response.FailWithMessage("获取监控数据失败", c)
		return
	}

	c.JSON(200, gin.H{
		"code": 0,
		"msg":  "success",
		"data": responseData,
	})
}

func (api *MonitorApi) GetLatestOrders(c *gin.Context) {
	latestOrders, err := monitor.NewMonitorService().GetLatestOrders(10)
	if err != nil {
		response.FailWithMessage("获取最新订单失败", c)
		return
	}

	c.JSON(200, gin.H{
		"code": 0,
		"msg":  "success",
		"data": latestOrders,
	})
}

func (api *MonitorApi) GetMonitorStats(c *gin.Context) {
	dateStr := c.Query("date")

	stats, err := monitor.NewMonitorService().GetMonitorStats(dateStr)
	if err != nil {
		response.FailWithMessage("获取监控统计失败", c)
		return
	}

	c.JSON(200, gin.H{
		"code": 0,
		"msg":  "success",
		"data": stats,
	})
}
