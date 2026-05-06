package order

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type OrderService struct{}

func NewOrderService() *OrderService {
	return &OrderService{}
}

func (s *OrderService) GetOrderList() ([]hxzCar.Order, error) {
	var orders []hxzCar.Order
	err := global.GVA_DB.Find(&orders).Error
	return orders, err
}

func (s *OrderService) GetOrderByID(id uint) (hxzCar.Order, error) {
	var order hxzCar.Order
	err := global.GVA_DB.Where("id = ?", id).First(&order).Error
	return order, err
}

func (s *OrderService) CreateOrder(order *hxzCar.Order) error {
	return global.GVA_DB.Create(order).Error
}

func (s *OrderService) UpdateOrder(order *hxzCar.Order) error {
	return global.GVA_DB.Save(order).Error
}

func (s *OrderService) DeleteOrder(id uint) error {
	return global.GVA_DB.Delete(&hxzCar.Order{}, id).Error
}