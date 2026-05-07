package monitor

import (
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type MonitorService struct{}

func NewMonitorService() *MonitorService {
	return &MonitorService{}
}

type MonitorStats struct {
	TotalOrders    int64   `json:"totalOrders"`
	InProgress     int64   `json:"inProgress"`
	Completed      int64   `json:"completed"`
	AbnormalOrders int64   `json:"abnormalOrders"`
	CanceledOrders int64   `json:"canceledOrders"`
	CancelRate     float64 `json:"cancelRate"`
}

type LatestOrder struct {
	ID           uint      `json:"id"`
	OrderNo      string    `json:"orderNo"`
	CreateTime   time.Time `json:"createTime"`
	CarType      string    `json:"carType"`
	OrderStatus  int       `json:"orderStatus"`
	TotalAmount  float64   `json:"totalAmount"`
	StartAddress string    `json:"startAddress"`
	EndAddress   string    `json:"endAddress"`
}

type MonitorResponse struct {
	Stats        MonitorStats      `json:"stats"`
	LatestOrders []LatestOrder     `json:"latestOrders"`
	TrendData    TrendData         `json:"trendData"`
	CityRanking  []CityRankingItem `json:"cityRanking"`
}

type TrendData struct {
	Hours      []string `json:"hours"`
	OrderCount []int64  `json:"orderCount"`
}

type CityRankingItem struct {
	CityName   string `json:"cityName"`
	OrderCount int64  `json:"orderCount"`
	Ranking    int    `json:"ranking"`
}

func (s *MonitorService) GetMonitorStats(dateStr string) (MonitorStats, error) {
	var stats MonitorStats

	type result struct {
		TotalOrders    int64 `json:"total_orders"`
		InProgress     int64 `json:"in_progress"`
		Completed      int64 `json:"completed"`
		AbnormalOrders int64 `json:"abnormal_orders"`
		CanceledOrders int64 `json:"canceled_orders"`
	}

	var res result
	err := global.GVA_DB.Raw(
		"SELECT "+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ?) as total_orders,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status IN (1, 2, 3)) as in_progress,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status = 4) as completed,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status = 6) as abnormal_orders,"+
			"(SELECT COUNT(*) FROM `order` WHERE DATE(create_time) = ? AND order_status = 5) as canceled_orders",
		dateStr, dateStr, dateStr, dateStr, dateStr).Scan(&res).Error

	if err != nil {
		return stats, err
	}

	stats.TotalOrders = res.TotalOrders
	stats.InProgress = res.InProgress
	stats.Completed = res.Completed
	stats.AbnormalOrders = res.AbnormalOrders
	stats.CanceledOrders = res.CanceledOrders

	if stats.TotalOrders > 0 {
		stats.CancelRate = float64(stats.CanceledOrders) / float64(stats.TotalOrders) * 100
	}

	return stats, nil
}

func (s *MonitorService) GetLatestOrders(limit int) ([]LatestOrder, error) {
	var orders []hxzCar.Order
	err := global.GVA_DB.Model(&hxzCar.Order{}).
		Order("create_time DESC").
		Limit(limit).
		Find(&orders).Error

	if err != nil {
		return nil, err
	}

	var latestOrders []LatestOrder
	for _, order := range orders {
		carType := ""
		switch order.CarType {
		case "经济型":
			carType = "快车"
		case "舒适型":
			carType = "专车"
		case "特惠快车":
			carType = "特惠快车"
		default:
			carType = order.CarType
		}

		latestOrders = append(latestOrders, LatestOrder{
			ID:           order.ID,
			OrderNo:      order.OrderNo,
			CreateTime:   order.CreateTime,
			CarType:      carType,
			OrderStatus:  order.OrderStatus,
			TotalAmount:  order.TotalAmount,
			StartAddress: order.StartAddress,
			EndAddress:   order.EndAddress,
		})
	}

	return latestOrders, nil
}

func (s *MonitorService) GetTrendData(dateStr string) (TrendData, error) {
	var trend TrendData

	hours := []string{"00:00", "03:00", "06:00", "09:00", "12:00", "15:00", "18:00", "21:00", "23:00"}
	trend.Hours = hours

	orderCounts := make([]int64, len(hours))

	timeRanges := []struct{ start, end int }{
		{0, 3}, {3, 6}, {6, 9}, {9, 12}, {12, 15}, {15, 18}, {18, 21}, {21, 23}, {23, 24},
	}

	sql := "SELECT HOUR(create_time) as hour, COUNT(*) as total_count FROM `order` WHERE DATE(create_time) = ? GROUP BY HOUR(create_time)"

	type trendRow struct {
		Hour       int   `json:"hour"`
		TotalCount int64 `json:"total_count"`
	}

	var rows []trendRow
	err := global.GVA_DB.Raw(sql, dateStr).Scan(&rows).Error
	if err != nil {
		return trend, err
	}

	hourMap := make(map[int]int64)
	for _, row := range rows {
		hourMap[row.Hour] = row.TotalCount
	}

	for i, tr := range timeRanges {
		for h := tr.start; h < tr.end; h++ {
			if count, ok := hourMap[h]; ok {
				orderCounts[i] += count
			}
		}
	}

	trend.OrderCount = orderCounts

	return trend, nil
}

func (s *MonitorService) GetCityRanking(dateStr string) ([]CityRankingItem, error) {
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
			CityName:   city.name,
			OrderCount: city.count,
			Ranking:    i + 1,
		})
	}

	return ranking, nil
}

func (s *MonitorService) GetMonitorData(dateStr string) (MonitorResponse, error) {
	var response MonitorResponse

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

	stats, err := s.GetMonitorStats(today)
	if err != nil {
		return response, err
	}
	response.Stats = stats

	latestOrders, err := s.GetLatestOrders(10)
	if err != nil {
		return response, err
	}
	response.LatestOrders = latestOrders

	trendData, err := s.GetTrendData(today)
	if err != nil {
		return response, err
	}
	response.TrendData = trendData

	cityRanking, err := s.GetCityRanking(today)
	if err != nil {
		return response, err
	}
	response.CityRanking = cityRanking

	return response, nil
}
