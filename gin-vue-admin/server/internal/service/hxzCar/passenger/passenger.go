package passenger

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type PassengerService struct{}

func NewPassengerService() *PassengerService {
	return &PassengerService{}
}

func (s *PassengerService) GetPassengerList() ([]hxzCar.Passenger, error) {
	var passengers []hxzCar.Passenger
	err := global.GVA_DB.Find(&passengers).Error
	return passengers, err
}

func (s *PassengerService) GetPassengerByID(id uint) (hxzCar.Passenger, error) {
	var passenger hxzCar.Passenger
	err := global.GVA_DB.Where("id = ?", id).First(&passenger).Error
	return passenger, err
}

func (s *PassengerService) CreatePassenger(passenger *hxzCar.Passenger) error {
	return global.GVA_DB.Create(passenger).Error
}

func (s *PassengerService) UpdatePassenger(passenger *hxzCar.Passenger) error {
	return global.GVA_DB.Save(passenger).Error
}

func (s *PassengerService) DeletePassenger(id uint) error {
	return global.GVA_DB.Delete(&hxzCar.Passenger{}, id).Error
}