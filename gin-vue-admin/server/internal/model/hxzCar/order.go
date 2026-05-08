package hxzCar

import (
	"time"
)

type Order struct {
	ID             uint64    `gorm:"column:id;primaryKey;autoIncrement" json:"id"`
	OrderNo        string    `gorm:"column:order_no;unique;size:32;comment:订单编号" json:"orderNo"`
	UserID         uint64    `gorm:"column:user_id;comment:用户ID" json:"userId"`
	DriverID       uint64    `gorm:"column:driver_id;comment:司机ID" json:"driverId"`
	CarID          uint64    `gorm:"column:car_id;comment:车辆ID" json:"carId"`
	OrderType      int       `gorm:"column:order_type;default:1;comment:订单类型 1-实时单 2-预约单" json:"orderType"`
	CarType        string    `gorm:"column:car_type;size:32;comment:车型" json:"carType"`
	Channel        int       `gorm:"column:channel;comment:渠道 1-APP 2-支付宝 3-微信" json:"channel"`
	StartAddress   string    `gorm:"column:start_address;size:255;comment:起点地址" json:"startAddress"`
	StartLng       float64   `gorm:"column:start_lng;comment:起点经度" json:"startLng"`
	StartLat       float64   `gorm:"column:start_lat;comment:起点纬度" json:"startLat"`
	EndAddress     string    `gorm:"column:end_address;size:255;comment:终点地址" json:"endAddress"`
	EndLng         float64   `gorm:"column:end_lng;comment:终点经度" json:"endLng"`
	EndLat         float64   `gorm:"column:end_lat;comment:终点纬度" json:"endLat"`
	Distance       float64   `gorm:"column:distance;default:0.00;comment:预估里程" json:"distance"`
	EstimatedPrice float64   `gorm:"column:estimated_price;default:0.00;comment:预估价格" json:"estimatedPrice"`
	ActualDistance float64   `gorm:"column:actual_distance;default:0.00;comment:实际里程" json:"actualDistance"`
	ActualPrice    float64   `gorm:"column:actual_price;default:0.00;comment:实际价格" json:"actualPrice"`
	TotalAmount    float64   `gorm:"column:total_amount;default:0.00;comment:总金额" json:"totalAmount"`
	DiscountAmount float64   `gorm:"column:discount_amount;default:0.00;comment:优惠金额" json:"discountAmount"`
	PayAmount      float64   `gorm:"column:pay_amount;default:0.00;comment:实付金额" json:"payAmount"`
	OrderStatus    int       `gorm:"column:order_status;default:1;comment:订单状态 1-待接单 2-已接单 3-行程中 4-已完成 5-已取消 6-异常" json:"orderStatus"`
	ProcessStatus  int       `gorm:"column:process_status;default:1;comment:处理状态 1-处理中 2-已处理" json:"processStatus"`
	PayStatus      int       `gorm:"column:pay_status;default:0;comment:支付状态 0-未支付 1-已支付 2-已退款" json:"payStatus"`
	PayType        int       `gorm:"column:pay_type;default:0;comment:支付方式 1-微信 2-支付宝" json:"payType"`
	CancelReason   string    `gorm:"column:cancel_reason;size:255;comment:取消原因" json:"cancelReason"`
	CreateTime     time.Time `gorm:"column:create_time;comment:创建时间" json:"createTime"`
	AcceptTime     time.Time `gorm:"column:accept_time;comment:接单时间" json:"acceptTime"`
	StartTime      time.Time `gorm:"column:start_time;comment:行程开始时间" json:"startTime"`
	EndTime        time.Time `gorm:"column:end_time;comment:行程结束时间" json:"endTime"`
	PayTime        time.Time `gorm:"column:pay_time;comment:支付时间" json:"payTime"`
	CancelTime     time.Time `gorm:"column:cancel_time;comment:取消时间" json:"cancelTime"`
}

func (Order) TableName() string {
	return "order"
}
