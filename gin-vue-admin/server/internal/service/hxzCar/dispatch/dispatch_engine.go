package dispatch

import (
	"encoding/json"
	"fmt"
	"math"
	"sort"
	"strconv"
	"time"

	"gorm.io/gorm"

	"github.com/flipped-aurora/gin-vue-admin/server/internal/model/hxzCar"
)

type DispatchEngine struct {
	db          *gorm.DB
	redisClient *RedisClient
	logChan     chan *hxzCar.OrderDispatchLog
}

func NewDispatchEngine(db *gorm.DB, redisClient *RedisClient) *DispatchEngine {
	engine := &DispatchEngine{
		db:          db,
		redisClient: redisClient,
		logChan:     make(chan *hxzCar.OrderDispatchLog, 1000),
	}
	go engine.startLogConsumer()
	return engine
}

type OrderInfo struct {
	OrderID    uint64
	OrderNo    string
	StartLat   float64
	StartLng   float64
	EndLat     float64
	EndLng     float64
	RegionCode string
	CreateTime time.Time
}

type DriverCandidate struct {
	DriverID     uint64
	Latitude     float64
	Longitude    float64
	ServiceScore float64
	AcceptRate   float64
	Status       int
	Distance     float64
	Score        float64
}

const (
	DriverStatusOffline = 0
	DriverStatusOnline  = 1
	DriverStatusBusy    = 2
	DriverStatusOnTrip  = 3

	DispatchStatusPending = 0
	DispatchStatusSuccess = 1
	DispatchStatusFailed  = 2

	DispatchResultSuccess  = 1
	DispatchResultReject   = 2
	DispatchResultTimeout  = 3
	DispatchResultNoDriver = 4
)

func (e *DispatchEngine) Dispatch(order *OrderInfo) (*DriverCandidate, error) {
	fmt.Printf("开始派单，订单ID: %d, 起点: (%.6f, %.6f)\n", order.OrderID, order.StartLng, order.StartLat)

	if order.StartLat == 0 || order.StartLng == 0 {
		fmt.Printf("订单起点经纬度无效\n")
		return nil, fmt.Errorf("订单起点经纬度无效")
	}

	locked, err := e.redisClient.SetOrderLock(order.OrderID, 30*time.Second)
	if err != nil {
		return nil, fmt.Errorf("获取订单锁失败: %v", err)
	}
	if !locked {
		fmt.Printf("订单正在派单中\n")
		return nil, fmt.Errorf("订单正在派单中")
	}
	defer e.redisClient.DelOrderLock(order.OrderID)

	rule, err := e.getDispatchRule(order.RegionCode)
	if err != nil {
		return nil, fmt.Errorf("获取派单规则失败: %v", err)
	}
	fmt.Printf("派单规则: 最小半径=%d, 最大半径=%d, 重试次数=%d\n", rule.MinRadius, rule.MaxRadius, rule.MaxRetry)

	blackList := e.getBlackListDrivers()
	fmt.Printf("黑名单司机数量: %d\n", len(blackList))

	for retry := 0; retry <= rule.MaxRetry; retry++ {
		radius := rule.MinRadius + retry*rule.RadiusStep
		if radius > rule.MaxRadius {
			radius = rule.MaxRadius
		}
		fmt.Printf("第%d次尝试，搜索半径: %d米\n", retry, radius)

		drivers, err := e.findNearbyDrivers(order.StartLng, order.StartLat, radius)
		if err != nil {
			fmt.Printf("查找附近司机失败: %v\n", err)
			return nil, fmt.Errorf("查找附近司机失败: %v", err)
		}
		fmt.Printf("找到附近司机: %d人\n", len(drivers))

		candidates := e.filterDrivers(drivers, blackList, rule)
		fmt.Printf("过滤后候选司机: %d人\n", len(candidates))
		if len(candidates) == 0 {
			continue
		}

		candidates = e.scoreDrivers(candidates, order.StartLng, order.StartLat, rule)

		sort.Slice(candidates, func(i, j int) bool {
			return candidates[i].Score > candidates[j].Score
		})

		for _, candidate := range candidates {
			fmt.Printf("尝试派单给司机%d, 距离=%.2f米, 评分=%.4f\n", candidate.DriverID, candidate.Distance, candidate.Score)
			success, err := e.dispatchToDriver(order, candidate, rule, retry)
			if err != nil {
				fmt.Printf("派单给司机%d失败: %v\n", candidate.DriverID, err)
				continue
			}
			if success {
				fmt.Printf("派单成功！司机ID: %d\n", candidate.DriverID)
				return candidate, nil
			}
			fmt.Printf("司机%d拒绝接单\n", candidate.DriverID)
		}
	}

	fmt.Printf("派单失败，没有可用司机\n")
	e.saveDispatchLog(order, nil, rule, DispatchStatusFailed, DispatchResultNoDriver, "没有可用司机")
	return nil, fmt.Errorf("派单失败，没有可用司机")
}

func (e *DispatchEngine) getDispatchRule(regionCode string) (*hxzCar.DispatchRule, error) {
	cachedRule, err := e.redisClient.HGetDispatchRule(regionCode)
	if err == nil && cachedRule != "" {
		var rule hxzCar.DispatchRule
		if err := json.Unmarshal([]byte(cachedRule), &rule); err == nil {
			return &rule, nil
		}
	}

	var rule hxzCar.DispatchRule
	err = e.db.Where("region_code = ? AND enabled = 1", regionCode).First(&rule).Error
	if err != nil {
		if err == gorm.ErrRecordNotFound {
			err = e.db.Where("region_code = 'default' AND enabled = 1").First(&rule).Error
		}
		if err != nil {
			return e.getDefaultDispatchRule(), nil
		}
	}

	data, _ := json.Marshal(rule)
	e.redisClient.HSetDispatchRule(regionCode, string(data))

	return &rule, nil
}

func (e *DispatchEngine) getDefaultDispatchRule() *hxzCar.DispatchRule {
	return &hxzCar.DispatchRule{
		RuleName:           "默认派单规则",
		RegionCode:         "default",
		MinRadius:          10000,
		MaxRadius:          100000,
		RadiusStep:         10000,
		MaxRetry:           5,
		DistanceWeight:     0.4,
		ServiceScoreWeight: 0.3,
		AcceptRateWeight:   0.3,
		MinServiceScore:    4.0,
		MinAcceptRate:      0.6,
		RejectCoolDown:     300,
		Enabled:            1,
	}
}

func (e *DispatchEngine) getBlackListDrivers() map[uint64]bool {
	var blackList []hxzCar.DriverBlackWhite
	e.db.Where("type = ? AND enabled = 1 AND expire_time > ?", 1, time.Now()).Find(&blackList)

	result := make(map[uint64]bool)
	for _, item := range blackList {
		result[item.DriverID] = true
	}
	return result
}

func (e *DispatchEngine) findNearbyDrivers(lng, lat float64, radius int) ([]*DriverCandidate, error) {
	locations, err := e.redisClient.GeoRadius(lng, lat, radius, "m")
	if err != nil {
		return nil, err
	}

	var drivers []*DriverCandidate
	for _, loc := range locations {
		driverID, _ := strconv.ParseUint(loc.Name, 10, 64)
		drivers = append(drivers, &DriverCandidate{
			DriverID:  driverID,
			Longitude: loc.Longitude,
			Latitude:  loc.Latitude,
		})
	}

	if len(drivers) == 0 {
		fmt.Printf("No drivers found in Redis, querying from database...\n")
		return e.findNearbyDriversFromDB(lng, lat, radius)
	}

	return drivers, nil
}

func (e *DispatchEngine) findNearbyDriversFromDB(lng, lat float64, radius int) ([]*DriverCandidate, error) {
	var driverStatus []hxzCar.DriverStatus
	err := e.db.Where("work_status = ?", 1).Find(&driverStatus).Error
	if err != nil {
		return nil, err
	}

	var candidates []*DriverCandidate
	for _, ds := range driverStatus {
		if ds.CurrentLat == 0 || ds.CurrentLng == 0 {
			continue
		}

		distance := e.calculateDistance(lng, lat, ds.CurrentLng, ds.CurrentLat)
		if distance <= float64(radius) {
			candidates = append(candidates, &DriverCandidate{
				DriverID:     ds.DriverID,
				Longitude:    ds.CurrentLng,
				Latitude:     ds.CurrentLat,
				ServiceScore: ds.ServiceScore,
				AcceptRate:   ds.AcceptRate,
				Status:       ds.WorkStatus,
				Distance:     distance,
			})
		}
	}
	return candidates, nil
}

func (e *DispatchEngine) calculateDistance(lng1, lat1, lng2, lat2 float64) float64 {
	earthRadius := 6371000.0

	lat1Rad := lat1 * math.Pi / 180
	lng1Rad := lng1 * math.Pi / 180
	lat2Rad := lat2 * math.Pi / 180
	lng2Rad := lng2 * math.Pi / 180

	dLat := lat2Rad - lat1Rad
	dLng := lng2Rad - lng1Rad

	a := math.Sin(dLat/2)*math.Sin(dLat/2) +
		math.Cos(lat1Rad)*math.Cos(lat2Rad)*
			math.Sin(dLng/2)*math.Sin(dLng/2)
	c := 2 * math.Atan2(math.Sqrt(a), math.Sqrt(1-a))

	return earthRadius * c
}

func (e *DispatchEngine) filterDrivers(drivers []*DriverCandidate, blackList map[uint64]bool, rule *hxzCar.DispatchRule) []*DriverCandidate {
	var candidates []*DriverCandidate

	for _, driver := range drivers {
		if blackList[driver.DriverID] {
			continue
		}

		statusMap, err := e.redisClient.HGetAllDriverStatus(driver.DriverID)
		if err != nil || len(statusMap) == 0 {
			continue
		}

		status, _ := strconv.Atoi(statusMap["status"])
		if status != DriverStatusOnline {
			continue
		}

		isOnline, _ := e.redisClient.SIsMemberOnline(driver.DriverID)
		if !isOnline {
			continue
		}

		coolScore, err := e.redisClient.ZScoreRejectCool(driver.DriverID)
		if err == nil && coolScore > float64(time.Now().Unix()) {
			continue
		}

		serviceScore, _ := strconv.ParseFloat(statusMap["service_score"], 64)
		if serviceScore < rule.MinServiceScore {
			continue
		}

		acceptRate, _ := strconv.ParseFloat(statusMap["accept_rate"], 64)
		if acceptRate < rule.MinAcceptRate {
			continue
		}

		driver.Status = status
		driver.ServiceScore = serviceScore
		driver.AcceptRate = acceptRate
		candidates = append(candidates, driver)
	}

	return candidates
}

func (e *DispatchEngine) scoreDrivers(drivers []*DriverCandidate, lng, lat float64, rule *hxzCar.DispatchRule) []*DriverCandidate {
	for _, driver := range drivers {
		distance := calculateDistance(lat, lng, driver.Latitude, driver.Longitude)
		driver.Distance = distance

		maxDistance := float64(rule.MaxRadius) / 1000

		distanceScore := 1 - (distance / maxDistance)
		if distanceScore < 0 {
			distanceScore = 0
		}

		serviceScore := driver.ServiceScore / 5.0
		acceptRateScore := driver.AcceptRate

		totalScore := distanceScore*rule.DistanceWeight +
			serviceScore*rule.ServiceScoreWeight +
			acceptRateScore*rule.AcceptRateWeight

		driver.Score = totalScore
	}
	return drivers
}

func calculateDistance(lat1, lng1, lat2, lng2 float64) float64 {
	r := 6371.0
	lat1Rad := lat1 * math.Pi / 180
	lng1Rad := lng1 * math.Pi / 180
	lat2Rad := lat2 * math.Pi / 180
	lng2Rad := lng2 * math.Pi / 180

	dLat := lat2Rad - lat1Rad
	dLng := lng2Rad - lng1Rad

	a := math.Sin(dLat/2)*math.Sin(dLat/2) +
		math.Cos(lat1Rad)*math.Cos(lat2Rad)*
			math.Sin(dLng/2)*math.Sin(dLng/2)
	c := 2 * math.Atan2(math.Sqrt(a), math.Sqrt(1-a))

	return r * c
}

func (e *DispatchEngine) dispatchToDriver(order *OrderInfo, driver *DriverCandidate, rule *hxzCar.DispatchRule, retry int) (bool, error) {
	log := &hxzCar.OrderDispatchLog{
		OrderID:      order.OrderID,
		OrderNo:      order.OrderNo,
		DriverID:     driver.DriverID,
		StartLat:     order.StartLat,
		StartLng:     order.StartLng,
		DriverLat:    driver.Latitude,
		DriverLng:    driver.Longitude,
		Distance:     driver.Distance,
		ServiceScore: driver.ServiceScore,
		AcceptRate:   driver.AcceptRate,
		Score:        driver.Score,
		Radius:       rule.MinRadius + retry*rule.RadiusStep,
		RetryCount:   retry,
		Status:       DispatchStatusPending,
		DispatchTime: time.Now(),
		RuleID:       rule.ID,
		RuleName:     rule.RuleName,
	}

	e.logChan <- log

	status := e.simulateDriverResponse()

	if status == DispatchResultSuccess {
		log.Status = DispatchStatusSuccess
		log.Result = DispatchResultSuccess
		log.ResponseTime = time.Now()
		log.ResultMsg = "派单成功"
		e.logChan <- log

		err := e.updateOrderDriver(order.OrderID, driver.DriverID)
		if err != nil {
			return false, err
		}

		return true, nil
	} else if status == DispatchResultReject {
		e.redisClient.ZAddRejectCool(driver.DriverID, float64(time.Now().Unix()+int64(rule.RejectCoolDown)))

		log.Status = DispatchStatusFailed
		log.Result = DispatchResultReject
		log.ResponseTime = time.Now()
		log.ResultMsg = "司机拒绝"
		e.logChan <- log

		return false, nil
	}

	log.Status = DispatchStatusFailed
	log.Result = DispatchResultTimeout
	log.ResponseTime = time.Now()
	log.ResultMsg = "超时"
	e.logChan <- log

	return false, nil
}

func (e *DispatchEngine) simulateDriverResponse() int {
	return DispatchResultSuccess
}

func (e *DispatchEngine) updateOrderDriver(orderID, driverID uint64) error {
	return e.db.Model(&hxzCar.Order{}).Where("id = ?", orderID).Update("driver_id", driverID).Error
}

func (e *DispatchEngine) saveDispatchLog(order *OrderInfo, driver *DriverCandidate, rule *hxzCar.DispatchRule, status, result int, msg string) {
	log := &hxzCar.OrderDispatchLog{
		OrderID:      order.OrderID,
		OrderNo:      order.OrderNo,
		StartLat:     order.StartLat,
		StartLng:     order.StartLng,
		Status:       status,
		Result:       result,
		ResultMsg:    msg,
		DispatchTime: time.Now(),
	}

	if rule != nil {
		log.RuleID = rule.ID
		log.RuleName = rule.RuleName
	}

	if driver != nil {
		log.DriverID = driver.DriverID
		log.DriverLat = driver.Latitude
		log.DriverLng = driver.Longitude
		log.Distance = driver.Distance
		log.ServiceScore = driver.ServiceScore
		log.AcceptRate = driver.AcceptRate
		log.Score = driver.Score
	}

	e.logChan <- log
}

func (e *DispatchEngine) ManualDispatch(orderID, driverID uint64) error {
	var order hxzCar.Order
	err := e.db.Where("id = ?", orderID).First(&order).Error
	if err != nil {
		return fmt.Errorf("订单不存在")
	}

	var driver hxzCar.Driver
	err = e.db.Where("id = ?", driverID).First(&driver).Error
	if err != nil {
		return fmt.Errorf("司机不存在")
	}

	err = e.db.Model(&hxzCar.Order{}).Where("id = ?", orderID).Updates(map[string]interface{}{
		"driver_id":    driverID,
		"order_status": 2,
	}).Error
	if err != nil {
		return fmt.Errorf("更新订单失败: %v", err)
	}

	log := &hxzCar.OrderDispatchLog{
		OrderID:      orderID,
		OrderNo:      order.OrderNo,
		DriverID:     driverID,
		DriverName:   driver.RealName,
		StartLat:     order.StartLat,
		StartLng:     order.StartLng,
		Distance:     0,
		ServiceScore: driver.AverageRating,
		AcceptRate:   0,
		Score:        0,
		Status:       DispatchStatusSuccess,
		Result:       DispatchResultSuccess,
		ResultMsg:    "手动派单成功",
		DispatchTime: time.Now(),
		RuleName:     "手动派单",
	}

	e.logChan <- log

	return nil
}

func (e *DispatchEngine) startLogConsumer() {
	for log := range e.logChan {
		if log.Status == DispatchStatusPending {
			e.db.Create(log)
		} else {
			e.db.Model(&hxzCar.OrderDispatchLog{}).
				Where("order_id = ? AND driver_id = ?", log.OrderID, log.DriverID).
				Updates(map[string]interface{}{
					"status":        log.Status,
					"result":        log.Result,
					"result_msg":    log.ResultMsg,
					"response_time": log.ResponseTime,
				})
		}
	}
}

func (e *DispatchEngine) InitDriverData() error {
	var driverStatus []hxzCar.DriverStatus
	err := e.db.Find(&driverStatus).Error
	if err != nil {
		return err
	}

	for _, ds := range driverStatus {
		if ds.CurrentLat == 0 || ds.CurrentLng == 0 {
			continue
		}

		err := e.redisClient.GeoAdd(ds.DriverID, ds.CurrentLng, ds.CurrentLat)
		if err != nil {
			fmt.Printf("Failed to add driver %d to Geo: %v\n", ds.DriverID, err)
		}

		err = e.redisClient.HSetDriverStatus(ds.DriverID, map[string]interface{}{
			"status":           ds.WorkStatus,
			"service_score":    ds.ServiceScore,
			"accept_rate":      ds.AcceptRate,
			"latitude":         ds.CurrentLat,
			"longitude":        ds.CurrentLng,
			"last_report_time": ds.LastReportTime.Unix(),
			"update_time":      ds.UpdateTime.Unix(),
		})
		if err != nil {
			fmt.Printf("Failed to set status for driver %d: %v\n", ds.DriverID, err)
		}

		if ds.WorkStatus == DriverStatusOnline {
			err = e.redisClient.SAddOnlineDriver(ds.DriverID)
			if err != nil {
				fmt.Printf("Failed to add driver %d to online set: %v\n", ds.DriverID, err)
			}
		}
	}

	fmt.Printf("Initialized %d drivers to Redis\n", len(driverStatus))
	return nil
}

func (e *DispatchEngine) ReportDriverLocation(driverID uint64, lat, lng float64) error {
	err := e.redisClient.GeoAdd(driverID, lng, lat)
	if err != nil {
		return err
	}

	err = e.redisClient.HSetDriverStatus(driverID, map[string]interface{}{
		"latitude":    lat,
		"longitude":   lng,
		"update_time": time.Now().Unix(),
	})
	if err != nil {
		return err
	}

	go func() {
		e.db.Model(&hxzCar.DriverStatus{}).
			Where("driver_id = ?", driverID).
			Updates(map[string]interface{}{
				"latitude":    lat,
				"longitude":   lng,
				"update_time": time.Now(),
			})
	}()

	return nil
}

func (e *DispatchEngine) SetDriverOnline(driverID uint64) error {
	err := e.redisClient.SAddOnlineDriver(driverID)
	if err != nil {
		return err
	}

	return e.redisClient.HSetDriverStatus(driverID, map[string]interface{}{
		"status":      DriverStatusOnline,
		"online_time": time.Now().Unix(),
	})
}

func (e *DispatchEngine) SetDriverOffline(driverID uint64) error {
	err := e.redisClient.SRemOnlineDriver(driverID)
	if err != nil {
		return err
	}

	return e.redisClient.HSetDriverStatus(driverID, map[string]interface{}{
		"status": DriverStatusOffline,
	})
}

func (e *DispatchEngine) GetDriverStatus(driverID uint64) (map[string]string, error) {
	return e.redisClient.HGetAllDriverStatus(driverID)
}
