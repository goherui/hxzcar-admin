package router

import (
	"github.com/flipped-aurora/gin-vue-admin/server/internal/api/hxzCar"

	"github.com/gin-gonic/gin"
)

func InitHxzCarRouter(Router *gin.RouterGroup) {
	HxzCarRouter := Router.Group("hxzCar")
	{
		DriverRouter := HxzCarRouter.Group("driver")
		{
			driverApi := hxzCar.DriverApi{}
			DriverRouter.GET("list", driverApi.GetDriverList)
			DriverRouter.GET("info", driverApi.GetDriverByID)
			DriverRouter.POST("create", driverApi.CreateDriver)
			DriverRouter.PUT("update", driverApi.UpdateDriver)
			DriverRouter.DELETE("delete", driverApi.DeleteDriver)
			DriverRouter.GET("health", driverApi.HealthCheck)
		}

		OrderRouter := HxzCarRouter.Group("order")
		{
			orderApi := hxzCar.OrderApi{}
			OrderRouter.GET("list", orderApi.GetOrderList)
			OrderRouter.GET("info", orderApi.GetOrderByID)
			OrderRouter.POST("create", orderApi.CreateOrder)
			OrderRouter.PUT("update", orderApi.UpdateOrder)
			OrderRouter.DELETE("delete", orderApi.DeleteOrder)
			OrderRouter.GET("health", orderApi.HealthCheck)
		}

		PassengerRouter := HxzCarRouter.Group("passenger")
		{
			passengerApi := hxzCar.PassengerApi{}
			PassengerRouter.GET("list", passengerApi.GetPassengerList)
			PassengerRouter.GET("info", passengerApi.GetPassengerByID)
			PassengerRouter.POST("create", passengerApi.CreatePassenger)
			PassengerRouter.PUT("update", passengerApi.UpdatePassenger)
			PassengerRouter.DELETE("delete", passengerApi.DeletePassenger)
			PassengerRouter.GET("health", passengerApi.HealthCheck)
		}
	}
}