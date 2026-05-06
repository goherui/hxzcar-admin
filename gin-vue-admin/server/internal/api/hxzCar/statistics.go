package hxzCar

import (
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/statistics"
	"github.com/gin-gonic/gin"
)

type StatisticsApi struct{}

func NewStatisticsApi() *StatisticsApi {
	return &StatisticsApi{}
}

func (s *StatisticsApi) GetDashboardStatistics(c *gin.Context) {
	date := c.Query("date")
	statsService := statistics.NewStatisticsService()
	response, err := statsService.GetDashboardStatistics(date)
	if err != nil {
		c.JSON(200, gin.H{
			"code": 500,
			"msg":  "获取统计数据失败",
			"data": nil,
		})
		return
	}

	c.JSON(200, gin.H{
		"code": 0,
		"msg":  "success",
		"data": response,
	})
}