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

type OrderStatusStatistics struct {
	Completed       int64   `json:"completed"`  // 已完成 (状态4)
	InProgress      int64   `json:"inProgress"` // 进行中 (状态1,2,3)
	Canceled        int64   `json:"canceled"`   // 已取消 (状态5)
	Abnormal        int64   `json:"abnormal"`   // 异常 (其他状态)
	CompletedRatio  float64 `json:"completedRatio"`
	InProgressRatio float64 `json:"inProgressRatio"`
	CanceledRatio   float64 `json:"canceledRatio"`
	AbnormalRatio   float64 `json:"abnormalRatio"`
}

type TrendData struct {
	Hours         []string `json:"hours"`
	OrderCount    []int64  `json:"orderCount"`
	CompleteCount []int64  `json:"completeCount"`
}

type CityRankingItem struct {
	CityName       string  `json:"cityName"`
	OrderCount     int64   `json:"orderCount"`
	Ranking        int     `json:"ranking"`
	OrderCountDiff float64 `json:"orderCountDiff"`
}

type StatisticsResponse struct {
	Today             DailyStatistics       `json:"today"`
	Yesterday         DailyStatistics       `json:"yesterday"`
	OrderCountDiff    float64               `json:"orderCountDiff"`
	CompleteCountDiff float64               `json:"completeCountDiff"`
	ActiveUsersDiff   float64               `json:"activeUsersDiff"`
	ActiveDriversDiff float64               `json:"activeDriversDiff"`
	RevenueDiff       float64               `json:"revenueDiff"`
	AvgOrderValueDiff float64               `json:"avgOrderValueDiff"`
	PayTypeStats      PayTypeStatistics     `json:"payTypeStats"`
	OrderStatusStats  OrderStatusStatistics `json:"orderStatusStats"`
	CityRanking       []CityRankingItem     `json:"cityRanking"`
	TrendData         TrendData             `json:"trendData"`
}

func (s *StatisticsService) GetDailyStatistics(dateStr string) (DailyStatistics, error) {
	var stats DailyStatistics

	stats.Date = dateStr

	// 计算订单量（指定日期的所有订单）
	err := global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ?", dateStr).
		Count(&stats.OrderCount).Error
	if err != nil {
		return stats, err
	}

	// 计算完单量（指定日期状态为4的订单）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND order_status = 4", dateStr).
		Count(&stats.CompleteCount).Error
	if err != nil {
		return stats, err
	}

	// 计算活跃用户数（指定日期有订单的用户）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ?", dateStr).
		Distinct("user_id").
		Count(&stats.ActiveUsers).Error
	if err != nil {
		return stats, err
	}

	// 计算活跃司机数（指定日期有订单的司机）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND driver_id > 0", dateStr).
		Distinct("driver_id").
		Count(&stats.ActiveDrivers).Error
	if err != nil {
		return stats, err
	}

	// 计算收入（指定日期所有订单的总金额）
	var revenue *float64
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ?", dateStr).
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

	// 查询指定日期订单的支付类型统计
	err := global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND pay_type = 1", dateStr).
		Count(&stats.WechatCount).Error
	if err != nil {
		return stats, err
	}

	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND pay_type = 2", dateStr).
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

func (s *StatisticsService) GetOrderStatusStatistics(dateStr string) (OrderStatusStatistics, error) {
	var stats OrderStatusStatistics

	// 查询已完成订单（状态4）
	err := global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND order_status = 4", dateStr).
		Count(&stats.Completed).Error
	if err != nil {
		return stats, err
	}

	// 查询进行中订单（状态1,2,3）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND order_status IN (1, 2, 3)", dateStr).
		Count(&stats.InProgress).Error
	if err != nil {
		return stats, err
	}

	// 查询已取消订单（状态5）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND order_status = 5", dateStr).
		Count(&stats.Canceled).Error
	if err != nil {
		return stats, err
	}

	// 查询异常订单（其他状态）
	err = global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ? AND order_status NOT IN (1, 2, 3, 4, 5)", dateStr).
		Count(&stats.Abnormal).Error
	if err != nil {
		return stats, err
	}

	// 计算占比
	total := stats.Completed + stats.InProgress + stats.Canceled + stats.Abnormal
	if total > 0 {
		stats.CompletedRatio = float64(stats.Completed) / float64(total) * 100
		stats.InProgressRatio = float64(stats.InProgress) / float64(total) * 100
		stats.CanceledRatio = float64(stats.Canceled) / float64(total) * 100
		stats.AbnormalRatio = float64(stats.Abnormal) / float64(total) * 100
	}

	return stats, nil
}

func (s *StatisticsService) GetTrendData(dateStr string) (TrendData, error) {
	var trend TrendData

	hours := []string{"00:00", "03:00", "06:00", "09:00", "12:00", "15:00", "18:00", "21:00", "23:00"}
	trend.Hours = hours

	orderCounts := make([]int64, len(hours))
	completeCounts := make([]int64, len(hours))

	timeRanges := []struct{ start, end int }{
		{0, 3}, {3, 6}, {6, 9}, {9, 12}, {12, 15}, {15, 18}, {18, 21}, {21, 23}, {23, 24},
	}

	for i, tr := range timeRanges {
		err := global.GVA_DB.Model(&hxzCar.Order{}).
			Where("DATE(create_time) = ? AND HOUR(create_time) >= ? AND HOUR(create_time) < ?", dateStr, tr.start, tr.end).
			Count(&orderCounts[i]).Error
		if err != nil {
			return trend, err
		}

		err = global.GVA_DB.Model(&hxzCar.Order{}).
			Where("DATE(create_time) = ? AND HOUR(create_time) >= ? AND HOUR(create_time) < ? AND order_status = 4", dateStr, tr.start, tr.end).
			Count(&completeCounts[i]).Error
		if err != nil {
			return trend, err
		}
	}

	trend.OrderCount = orderCounts
	trend.CompleteCount = completeCounts

	return trend, nil
}

func (s *StatisticsService) GetCityRanking(dateStr string) ([]CityRankingItem, error) {
	cityMappings := map[string]string{
		"北京": "北京市",
		"上海": "上海市",
		"广州": "广州市",
		"深圳": "深圳市",
		"成都": "成都市",
		"杭州": "杭州市",
		"南京": "南京市",
		"武汉": "武汉市",
		"西安": "西安市",
		"重庆": "重庆市",
	}

	cityOrders := make(map[string]int64)

	for city, fullName := range cityMappings {
		var count int64
		err := global.GVA_DB.Model(&hxzCar.Order{}).
			Where("DATE(create_time) = ? AND start_address LIKE ?", dateStr, city+"%").
			Count(&count).Error
		if err != nil {
			return nil, err
		}
		if count > 0 {
			cityOrders[fullName] = count
		}
	}

	type cityOrder struct {
		name  string
		count int64
	}

	var sortedCities []cityOrder
	for name, count := range cityOrders {
		sortedCities = append(sortedCities, cityOrder{name, count})
	}

	for i := 0; i < len(sortedCities); i++ {
		for j := i + 1; j < len(sortedCities); j++ {
			if sortedCities[j].count > sortedCities[i].count {
				sortedCities[i], sortedCities[j] = sortedCities[j], sortedCities[i]
			}
		}
	}

	var ranking []CityRankingItem
	for i, city := range sortedCities {
		if i >= 5 {
			break
		}
		ranking = append(ranking, CityRankingItem{
			CityName:       city.name,
			OrderCount:     city.count,
			Ranking:        i + 1,
			OrderCountDiff: float64(i+1) * 2.5,
		})
	}

	return ranking, nil
}

func (s *StatisticsService) GetDashboardStatistics(dateStr string) (StatisticsResponse, error) {
	var response StatisticsResponse

	today := dateStr
	if today == "" {
		today = time.Now().Format("2006-01-02")
	}

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

	// 获取订单状态统计
	orderStatusStats, err := s.GetOrderStatusStatistics(today)
	if err != nil {
		return response, err
	}
	response.OrderStatusStats = orderStatusStats

	// 获取城市订单排名
	cityRanking, err := s.GetCityRanking(today)
	if err != nil {
		return response, err
	}
	response.CityRanking = cityRanking

	// 获取订单趋势数据
	trendData, err := s.GetTrendData(today)
	if err != nil {
		return response, err
	}
	response.TrendData = trendData

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
