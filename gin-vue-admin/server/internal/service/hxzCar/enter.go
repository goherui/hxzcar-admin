package hxzCar

import (
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/driver"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/order"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/service/hxzCar/passenger"
)

var (
	DriverService  = driver.NewDriverService()
	OrderService   = order.NewOrderService()
	PassengerService = passenger.NewPassengerService()
)