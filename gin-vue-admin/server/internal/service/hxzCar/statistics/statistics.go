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
	OrderCount    int64   `json:"orderCount"`
	CompleteCount int64   `json:"completeCount"`
	ActiveUsers   int64   `json:"activeUsers"`
	ActiveDrivers int64   `json:"activeDrivers"`
	Revenue       float64 `json:"revenue"`
	AvgOrderValue float64 `json:"avgOrderValue"`
}

type PayTypeStatistics struct {
	WechatCount int64   `json:"wechatCount"`
	AlipayCount int64   `json:"alipayCount"`
	WechatRatio float64 `json:"wechatRatio"`
	AlipayRatio float64 `json:"alipayRatio"`
}

type OrderStatusStatistics struct {
	Completed       int64   `json:"completed"`
	InProgress      int64   `json:"inProgress"`
	Canceled        int64   `json:"canceled"`
	Abnormal        int64   `json:"abnormal"`
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

	type result struct {
		OrderCount    int64   `json:"order_count"`
		CompleteCount int64   `json:"complete_count"`
		ActiveUsers   int64   `json:"active_users"`
		ActiveDrivers int64   `json:"active_drivers"`
		Revenue       float64 `json:"revenue"`
	}

	var res result
	err := global.GVA_DB.Raw(
		"SELECT "+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ?) as order_count,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status = 4) as complete_count,"+
			"(SELECT COUNT(DISTINCT user_id) FROM `order` WHERE DATE(create_time) = ?) as active_users,"+
			"(SELECT COUNT(DISTINCT driver_id) FROM `order` WHERE DATE(create_time) = ? AND driver_id > 0) as active_drivers,"+
			"(SELECT COALESCE(SUM(total_amount), 0) FROM `order` WHERE DATE(create_time) = ?) as revenue",
		dateStr, dateStr, dateStr, dateStr, dateStr).Scan(&res).Error

	if err != nil {
		return stats, err
	}

	stats.OrderCount = res.OrderCount
	stats.CompleteCount = res.CompleteCount
	stats.ActiveUsers = res.ActiveUsers
	stats.ActiveDrivers = res.ActiveDrivers
	stats.Revenue = res.Revenue

	if stats.OrderCount > 0 {
		stats.AvgOrderValue = stats.Revenue / float64(stats.OrderCount)
	}

	return stats, nil
}

func (s *StatisticsService) GetPayTypeAndStatusStatistics(dateStr string) (PayTypeStatistics, OrderStatusStatistics, error) {
	var payStats PayTypeStatistics
	var statusStats OrderStatusStatistics

	type payResult struct {
		WechatCount int64 `json:"wechat_count"`
		AlipayCount int64 `json:"alipay_count"`
	}
	var payRes payResult
	err := global.GVA_DB.Raw(
		"SELECT "+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND pay_type = 1) as wechat_count,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND pay_type = 2) as alipay_count",
		dateStr, dateStr).Scan(&payRes).Error
	if err != nil {
		return payStats, statusStats, err
	}

	payStats.WechatCount = payRes.WechatCount
	payStats.AlipayCount = payRes.AlipayCount
	totalPay := payStats.WechatCount + payStats.AlipayCount
	if totalPay > 0 {
		payStats.WechatRatio = float64(payStats.WechatCount) / float64(totalPay) * 100
		payStats.AlipayRatio = float64(payStats.AlipayCount) / float64(totalPay) * 100
	}

	type statusResult struct {
		Completed  int64 `json:"completed"`
		InProgress int64 `json:"in_progress"`
		Canceled   int64 `json:"canceled"`
		Abnormal   int64 `json:"abnormal"`
	}
	var statusRes statusResult
	err = global.GVA_DB.Raw(
		"SELECT "+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status = 4) as completed,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status IN (1, 2, 3)) as in_progress,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status = 5) as canceled,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status NOT IN (1, 2, 3, 4, 5)) as abnormal",
		dateStr, dateStr, dateStr, dateStr).Scan(&statusRes).Error
	if err != nil {
		return payStats, statusStats, err
	}

	statusStats.Completed = statusRes.Completed
	statusStats.InProgress = statusRes.InProgress
	statusStats.Canceled = statusRes.Canceled
	statusStats.Abnormal = statusRes.Abnormal

	totalStatus := statusStats.Completed + statusStats.InProgress + statusStats.Canceled + statusStats.Abnormal
	if totalStatus > 0 {
		statusStats.CompletedRatio = float64(statusStats.Completed) / float64(totalStatus) * 100
		statusStats.InProgressRatio = float64(statusStats.InProgress) / float64(totalStatus) * 100
		statusStats.CanceledRatio = float64(statusStats.Canceled) / float64(totalStatus) * 100
		statusStats.AbnormalRatio = float64(statusStats.Abnormal) / float64(totalStatus) * 100
	}

	return payStats, statusStats, nil
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

	sql := "SELECT HOUR(create_time) as hour, COUNT(*) as total_count, SUM(CASE WHEN order_status = 4 THEN 1 ELSE 0 END) as complete_count FROM `order` WHERE DATE(create_time) = ? GROUP BY HOUR(create_time)"

	type trendRow struct {
		Hour          int   `json:"hour"`
		TotalCount    int64 `json:"total_count"`
		CompleteCount int64 `json:"complete_count"`
	}

	var rows []trendRow
	err := global.GVA_DB.Raw(sql, dateStr).Scan(&rows).Error
	if err != nil {
		return trend, err
	}

	hourMap := make(map[int]trendRow)
	for _, row := range rows {
		hourMap[row.Hour] = row
	}

	for i, tr := range timeRanges {
		for h := tr.start; h < tr.end; h++ {
			if row, ok := hourMap[h]; ok {
				orderCounts[i] += row.TotalCount
				completeCounts[i] += row.CompleteCount
			}
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
	for prefix, fullName := range cityMappings {
		var count int64
		err := global.GVA_DB.Model(&hxzCar.Order{}).
			Where("DATE(create_time) = ? AND start_address LIKE ?", dateStr, prefix+"%").
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
	err := global.GVA_DB.Model(&hxzCar.Order{}).
		Where("DATE(create_time) = ?", today).
		Count(&todayCount).Error
	if err != nil {
		return response, err
	}

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

	payTypeStats, orderStatusStats, err := s.GetPayTypeAndStatusStatistics(today)
	if err != nil {
		return response, err
	}

	response.Today = todayStats
	response.Yesterday = yesterdayStats
	response.PayTypeStats = payTypeStats
	response.OrderStatusStats = orderStatusStats

	cityRanking, err := s.GetCityRanking(today)
	if err != nil {
		return response, err
	}
	response.CityRanking = cityRanking

	trendData, err := s.GetTrendData(today)
	if err != nil {
		return response, err
	}
	response.TrendData = trendData

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
