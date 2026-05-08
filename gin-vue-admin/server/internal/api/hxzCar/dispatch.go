package hxzCar

import (
	"fmt"
	"strconv"
	"sync"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/dispatch"
	"github.com/gin-gonic/gin"
)

var dispatchEngine *dispatch.DispatchEngine
var driverDataInitialized bool = false
var initOnce sync.Once

func getDispatchEngine() *dispatch.DispatchEngine {
	initOnce.Do(func() {
		redisClient := dispatch.NewRedisClient(
			"115.190.54.31",
			6379,
			"redis_6jBRR2",
			0,
		)
		dispatchEngine = dispatch.NewDispatchEngine(global.GVA_DB, redisClient)
	})
	return dispatchEngine
}

func ensureDriverDataInitialized() {
	if !driverDataInitialized {
		err := getDispatchEngine().InitDriverData()
		if err != nil {
			fmt.Printf("Failed to init driver data: %v\n", err)
		} else {
			driverDataInitialized = true
		}
	}
}

type LocationRequest struct {
	DriverID  uint64  `json:"driverId" binding:"required"`
	Latitude  float64 `json:"latitude" binding:"required"`
	Longitude float64 `json:"longitude" binding:"required"`
}

func ReportDriverLocation(c *gin.Context) {
	var req LocationRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "参数错误", "data": nil})
		return
	}

	err := getDispatchEngine().ReportDriverLocation(req.DriverID, req.Latitude, req.Longitude)
	if err != nil {
		c.JSON(500, gin.H{"code": 500, "msg": fmt.Sprintf("位置上报失败: %v", err), "data": nil})
		return
	}

	c.JSON(200, gin.H{"code": 200, "msg": "位置上报成功", "data": nil})
}

type DispatchRequest struct {
	OrderID    uint64  `json:"orderId" binding:"required"`
	OrderNo    string  `json:"orderNo" binding:"required"`
	StartLat   float64 `json:"startLat" binding:"required"`
	StartLng   float64 `json:"startLng" binding:"required"`
	EndLat     float64 `json:"endLat"`
	EndLng     float64 `json:"endLng"`
	RegionCode string  `json:"regionCode" default:"default"`
}

func DispatchOrder(c *gin.Context) {
	var req DispatchRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "参数错误", "data": nil})
		return
	}

	order := &dispatch.OrderInfo{
		OrderID:    req.OrderID,
		OrderNo:    req.OrderNo,
		StartLat:   req.StartLat,
		StartLng:   req.StartLng,
		EndLat:     req.EndLat,
		EndLng:     req.EndLng,
		RegionCode: req.RegionCode,
	}

	driver, err := getDispatchEngine().Dispatch(order)
	if err != nil {
		c.JSON(500, gin.H{"code": 500, "msg": fmt.Sprintf("派单失败: %v", err), "data": nil})
		return
	}

	c.JSON(200, gin.H{
		"code": 200,
		"msg":  "派单成功",
		"data": gin.H{
			"driverId":     driver.DriverID,
			"latitude":     driver.Latitude,
			"longitude":    driver.Longitude,
			"serviceScore": driver.ServiceScore,
			"acceptRate":   driver.AcceptRate,
			"distance":     driver.Distance,
			"score":        driver.Score,
		},
	})
}

func SetDriverOnline(c *gin.Context) {
	driverIDStr := c.Query("driverId")
	driverID, err := strconv.ParseUint(driverIDStr, 10, 64)
	if err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "参数错误", "data": nil})
		return
	}

	err = getDispatchEngine().SetDriverOnline(driverID)
	if err != nil {
		c.JSON(500, gin.H{"code": 500, "msg": fmt.Sprintf("设置在线失败: %v", err), "data": nil})
		return
	}

	c.JSON(200, gin.H{"code": 200, "msg": "设置在线成功", "data": nil})
}

func SetDriverOffline(c *gin.Context) {
	driverIDStr := c.Query("driverId")
	driverID, err := strconv.ParseUint(driverIDStr, 10, 64)
	if err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "参数错误", "data": nil})
		return
	}

	err = getDispatchEngine().SetDriverOffline(driverID)
	if err != nil {
		c.JSON(500, gin.H{"code": 500, "msg": fmt.Sprintf("设置离线失败: %v", err), "data": nil})
		return
	}

	c.JSON(200, gin.H{"code": 200, "msg": "设置离线成功", "data": nil})
}

func GetDriverStatus(c *gin.Context) {
	driverIDStr := c.Query("driverId")
	driverID, err := strconv.ParseUint(driverIDStr, 10, 64)
	if err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "参数错误", "data": nil})
		return
	}

	status, err := getDispatchEngine().GetDriverStatus(driverID)
	if err != nil {
		c.JSON(500, gin.H{"code": 500, "msg": fmt.Sprintf("获取状态失败: %v", err), "data": nil})
		return
	}

	c.JSON(200, gin.H{"code": 200, "msg": "获取成功", "data": status})
}

var dispatchEnabled bool = false

func ToggleDispatch(c *gin.Context) {
	dispatchEnabled = !dispatchEnabled

	if dispatchEnabled {
		c.JSON(200, gin.H{"code": 200, "msg": "智能派单已开启", "data": gin.H{"enabled": true}})
	} else {
		c.JSON(200, gin.H{"code": 200, "msg": "智能派单已关闭", "data": gin.H{"enabled": false}})
	}
}

func GetDispatchStatus(c *gin.Context) {
	c.JSON(200, gin.H{"code": 200, "msg": "success", "data": gin.H{"enabled": dispatchEnabled}})
}

func BatchDispatch(c *gin.Context) {
	fmt.Printf("批量派单请求到达，dispatchEnabled=%v\n", dispatchEnabled)

	if !dispatchEnabled {
		fmt.Printf("智能派单未开启，拒绝请求\n")
		c.JSON(400, gin.H{"code": 400, "msg": "智能派单未开启", "data": nil})
		return
	}

	fmt.Printf("开始批量派单\n")
	ensureDriverDataInitialized()

	var orders []hxzCar.Order
	err := global.GVA_DB.Where("order_status = ? AND (driver_id IS NULL OR driver_id = 0)", 1).Find(&orders).Error
	if err != nil {
		c.JSON(500, gin.H{"code": 500, "msg": fmt.Sprintf("查询未接单订单失败: %v", err), "data": nil})
		return
	}

	successCount := 0
	failedCount := 0
	failedOrders := make([]string, 0)

	for _, order := range orders {
		orderInfo := &dispatch.OrderInfo{
			OrderID:    uint64(order.ID),
			OrderNo:    order.OrderNo,
			StartLat:   order.StartLat,
			StartLng:   order.StartLng,
			EndLat:     order.EndLat,
			EndLng:     order.EndLng,
			RegionCode: "default",
		}

		_, err := getDispatchEngine().Dispatch(orderInfo)
		if err != nil {
			failedCount++
			failedOrders = append(failedOrders, order.OrderNo)
		} else {
			successCount++
		}
	}

	c.JSON(200, gin.H{
		"code": 200,
		"msg":  "批量派单完成",
		"data": gin.H{
			"total":        len(orders),
			"success":      successCount,
			"failed":       failedCount,
			"failedOrders": failedOrders,
		},
	})
}
