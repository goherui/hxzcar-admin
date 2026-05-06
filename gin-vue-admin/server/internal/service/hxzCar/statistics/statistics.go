package statistics

import (
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type StatisticsService struct{}

func NewStatisticsService() *StatisticsService {
	return &StatisticsService{}
}

type DailyStatistics struct {
	Date          string  `json:"date"`
	OrderCount    int64   `json:"orderCount"`    // 订单量
	CompleteCount int64   `json:"completeCount"` // 完单量
	ActiveUsers   int64   `json:"activeUsers"`   // 活跃用户数
	ActiveDrivers int64   `json:"activeDrivers"` // 活跃司机数
	Revenue       float64 `json:"revenue"`       // 收入(GMV)
	AvgOrderValue float64 `json:"avgOrderValue"` // 客单价
}

type PayTypeStatistics struct {
	WechatCount int64   `json:"wechatCount"`
	AlipayCount int64   `json:"alipayCount"`
	WechatRatio float64 `json:"wechatRatio"`
	AlipayRatio float64 `json:"alipayRatio"`
}

type StatisticsResponse struct {
	Today             DailyStatistics   `json:"today"`
	Yesterday         DailyStatistics   `json:"yesterday"`
	OrderCountDiff    float64           `json:"orderCountDiff"`
	CompleteCountDiff float64           `json:"completeCountDiff"`
	ActiveUsersDiff   float64           `json:"activeUsersDiff"`
	ActiveDriversDiff float64           `json:"activeDriversDiff"`
	RevenueDiff       float64           `json:"revenueDiff"`
	AvgOrderValueDiff float64           `json:"avgOrderValueDiff"`
	PayTypeStats      PayTypeStatistics `json:"payTypeStats"`
}

func (s *StatisticsService) GetDailyStatistics(dateStr string) (DailyStatistics, error) {
	var stats DailyStatistics

	stats.Date = "2024-05-20"

	// 计算订单量（所有订单）
	err := global.GVA_DB.Model(&hxzCar.Order{}).Count(&stats.OrderCount).Error
	if err != nil {
		return stats, err
	}

	// 计算完单量（状态为4的订单）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("order_status = 4").
		Count(&stats.CompleteCount).Error
	if err != nil {
		return stats, err
	}

	// 计算活跃用户数（有订单的用户）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Distinct("user_id").
		Count(&stats.ActiveUsers).Error
	if err != nil {
		return stats, err
	}

	// 计算活跃司机数（有订单的司机）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("driver_id > 0").
		Distinct("driver_id").
		Count(&stats.ActiveDrivers).Error
	if err != nil {
		return stats, err
	}

	// 计算收入（所有订单的总金额）
	var revenue *float64
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Select("SUM(total_amount)").
		Scan(&revenue).Error
	if err != nil {
		return stats, err
	}
	if revenue != nil {
		stats.Revenue = *revenue
	}

	// 计算客单价（收入 / 订单量）
	if stats.OrderCount > 0 {
		stats.AvgOrderValue = stats.Revenue / float64(stats.OrderCount)
	}

	return stats, nil
}

func (s *StatisticsService) GetPayTypeStatistics(dateStr string) (PayTypeStatistics, error) {
	var stats PayTypeStatistics

	// 查询所有订单的支付类型统计
	err := global.GVA_DB.Model(&hxzCar.Order{}).
		Where("pay_type = 1").
		Count(&stats.WechatCount).Error
	if err != nil {
		return stats, err
	}

	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("pay_type = 2").
		Count(&stats.AlipayCount).Error
	if err != nil {
		return stats, err
	}

	total := stats.WechatCount + stats.AlipayCount
	if total > 0 {
		stats.WechatRatio = float64(stats.WechatCount) / float64(total) * 100
		stats.AlipayRatio = float64(stats.AlipayCount) / float64(total) * 100
	}

	return stats, nil
}

func (s *StatisticsService) GetDashboardStatistics(dateStr string) (StatisticsResponse, error) {
	var response StatisticsResponse

	today := dateStr
	if today == "" {
		today = time.Now().Format("2006-01-02")

		var todayCount int64
		global.GVA_DB.Model(&hxzCar.Order{}).
			Where("DATE(create_time) = ?", today).
			Count(&todayCount)

		if todayCount == 0 {
			var latestTime time.Time
			err := global.GVA_DB.Model(&hxzCar.Order{}).
				Select("create_time").
				Order("create_time DESC").
				Limit(1).
				Scan(&latestTime).Error
			if err == nil && !latestTime.IsZero() {
				today = latestTime.Format("2006-01-02")
			}
		}
	}

	todayTime, _ := time.Parse("2006-01-02", today)
	yesterday := todayTime.Add(-24 * time.Hour).Format("2006-01-02")

	todayStats, err := s.GetDailyStatistics(today)
	if err != nil {
		return response, err
	}

	yesterdayStats, err := s.GetDailyStatistics(yesterday)
	if err != nil {
		return response, err
	}

	payTypeStats, err := s.GetPayTypeStatistics(today)
	if err != nil {
		return response, err
	}

	response.Today = todayStats
	response.Yesterday = yesterdayStats
	response.PayTypeStats = payTypeStats

	// 计算环比差异
	response.OrderCountDiff = calculateDiff(todayStats.OrderCount, yesterdayStats.OrderCount)
	response.CompleteCountDiff = calculateDiff(todayStats.CompleteCount, yesterdayStats.CompleteCount)
	response.ActiveUsersDiff = calculateDiff(todayStats.ActiveUsers, yesterdayStats.ActiveUsers)
	response.ActiveDriversDiff = calculateDiff(todayStats.ActiveDrivers, yesterdayStats.ActiveDrivers)
	response.RevenueDiff = calculateRevenueDiff(todayStats.Revenue, yesterdayStats.Revenue)
	response.AvgOrderValueDiff = calculateRevenueDiff(todayStats.AvgOrderValue, yesterdayStats.AvgOrderValue)

	return response, nil
}

func calculateDiff(current, previous int64) float64 {
	if previous == 0 {
		if current > 0 {
			return 100
		}
		return 0
	}
	return float64(current-previous) / float64(previous) * 100
}

func calculateRevenueDiff(current, previous float64) float64 {
	if previous == 0 {
		if current > 0 {
			return 100
		}
		return 0
	}
	return (current - previous) / previous * 100
}
