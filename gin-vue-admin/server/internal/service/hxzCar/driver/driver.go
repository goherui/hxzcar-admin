package driver

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type DriverService struct{}

func NewDriverService() *DriverService {
	return &DriverService{}
}

func (s *DriverService) GetDriverList() ([]hxzCar.Driver, error) {
	var drivers []hxzCar.Driver
	err := global.GVA_DB.Find(&drivers).Error
	return drivers, err
}

func (s *DriverService) GetDriverByID(id uint) (hxzCar.Driver, error) {
	var driver hxzCar.Driver
	err := global.GVA_DB.Where("id = ?", id).First(&driver).Error
	return driver, err
}

func (s *DriverService) CreateDriver(driver *hxzCar.Driver) error {
	return global.GVA_DB.Create(driver).Error
}

func (s *DriverService) UpdateDriver(driver *hxzCar.Driver) error {
	return global.GVA_DB.Save(driver).Error
}

func (s *DriverService) DeleteDriver(id uint) error {
	return global.GVA_DB.Delete(&hxzCar.Driver{}, id).Error
}