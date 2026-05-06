package hxzCar

type Car struct {
	ID          uint   `gorm:"column:id;primaryKey;autoIncrement"`
	DriverID    uint   `gorm:"column:driver_id;comment:司机ID"`
	CarNo       string `gorm:"column:car_no;unique;size:20;comment:车牌号"`
	CarType     string `gorm:"column:car_type;size:30;comment:车型"`
	CarBrand    string `gorm:"column:car_brand;size:50;comment:车辆品牌"`
	CarColor    string `gorm:"column:car_color;size:20;comment:车辆颜色"`
	Status      int    `gorm:"column:status;default:1;comment:状态 0-禁用 1-正常"`
	CheckStatus int    `gorm:"column:check_status;default:0;comment:审核状态 0-待审核 1-通过"`
}

func (Car) TableName() string {
	return "car"
}
