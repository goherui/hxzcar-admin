package hxzCar

type Car struct {
	ID          uint   `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	DriverID    uint   `gorm:"column:driver_id;comment:司机ID" json:"driverId"`
	CarNo       string `gorm:"column:car_no;unique;size:20;comment:车牌号" json:"carNo"`
	CarType     string `gorm:"column:car_type;size:30;comment:车型" json:"carType"`
	CarBrand    string `gorm:"column:car_brand;size:50;comment:车辆品牌" json:"carBrand"`
	CarColor    string `gorm:"column:car_color;size:20;comment:车辆颜色" json:"carColor"`
	Status      int    `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常" json:"status"`
	CheckStatus int    `gorm:"column:check_status;default:0;comment:审核状态 0-待审核 1-通过" json:"checkStatus"`
}

func (Car) TableName() string {
	return "car"
}
