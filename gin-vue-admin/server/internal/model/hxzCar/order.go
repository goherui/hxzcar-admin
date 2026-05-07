package hxzCar

import (
	"time"
)

type Order struct {
	ID             uint      `gorm:"column:id;primaryKey;autoIncrement"`
	OrderNo        string    `gorm:"column:order_no;unique;size:32;comment:订单编号"`
	UserID         uint64    `gorm:"column:user_id;comment:用户ID"`
	DriverID       uint64    `gorm:"column:driver_id;comment:司机ID"`
	CarID          uint64    `gorm:"column:car_id;comment:车辆ID"`
	OrderType      int       `gorm:"column:order_type;default:1;comment:订单类型 1-实时单 2-预约单"`
	CarType        string    `gorm:"column:car_type;size:32;comment:车型"`
	Channel        int       `gorm:"column:channel;comment:渠道 1-APP 2-支付宝 3-微信"`
	StartAddress   string    `gorm:"column:start_address;size:255;comment:起点地址"`
	StartLng       float64   `gorm:"column:start_lng;comment:起点经度"`
	StartLat       float64   `gorm:"column:start_lat;comment:起点纬度"`
	EndAddress     string    `gorm:"column:end_address;size:255;comment:终点地址"`
	EndLng         float64   `gorm:"column:end_lng;comment:终点经度"`
	EndLat         float64   `gorm:"column:end_lat;comment:终点纬度"`
	Distance       float64   `gorm:"column:distance;default:0.00;comment:预估里程"`
	EstimatedPrice float64   `gorm:"column:estimated_price;default:0.00;comment:预估价格"`
	ActualDistance float64   `gorm:"column:actual_distance;default:0.00;comment:实际里程"`
	ActualPrice    float64   `gorm:"column:actual_price;default:0.00;comment:实际价格"`
	TotalAmount    float64   `gorm:"column:total_amount;default:0.00;comment:总金额"`
	DiscountAmount float64   `gorm:"column:discount_amount;default:0.00;comment:优惠金额"`
	PayAmount      float64   `gorm:"column:pay_amount;default:0.00;comment:实付金额"`
	OrderStatus    int       `gorm:"column:order_status;default:1;comment:订单状态 1-待接单 2-已接单 3-行程中 4-已完成 5-已取消 6-异常"`
	ProcessStatus  int       `gorm:"column:process_status;default:1;comment:处理状态 1-处理中 2-已处理"`
	PayStatus      int       `gorm:"column:pay_status;default:0;comment:支付状态 0-未支付 1-已支付 2-已退款"`
	PayType        int       `gorm:"column:pay_type;default:0;comment:支付方式 1-微信 2-支付宝"`
	CancelReason   string    `gorm:"column:cancel_reason;size:255;comment:取消原因"`
	CreateTime     time.Time `gorm:"column:create_time;comment:创建时间"`
	AcceptTime     time.Time `gorm:"column:accept_time;comment:接单时间"`
	StartTime      time.Time `gorm:"column:start_time;comment:行程开始时间"`
	EndTime        time.Time `gorm:"column:end_time;comment:行程结束时间"`
	PayTime        time.Time `gorm:"column:pay_time;comment:支付时间"`
	CancelTime     time.Time `gorm:"column:cancel_time;comment:取消时间"`
}

func (Order) TableName() string {
	return "order"
}
