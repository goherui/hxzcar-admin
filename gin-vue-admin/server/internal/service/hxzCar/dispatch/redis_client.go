package dispatch

import (
	"context"
	"encoding/json"
	"fmt"
	"time"

	"github.com/go-redis/redis/v8"
)

var ctx = context.Background()

type RedisClient struct {
	client *redis.Client
}

func NewRedisClient(host string, port int, password string, db int) *RedisClient {
	client := redis.NewClient(&redis.Options{
		Addr:     fmt.Sprintf("%s:%d", host, port),
		Password: password,
		DB:       db,
		PoolSize: 100,
	})

	_, err := client.Ping(ctx).Result()
	if err != nil {
		fmt.Printf("Redis connect error: %v, dispatch may not work properly\n", err)
	}

	return &RedisClient{client: client}
}

const (
	GeoKey           = "dispatch:driver:geo"
	DriverStatusKey  = "dispatch:driver:status:%d"
	OnlineDriversKey = "dispatch:driver:online"
	DispatchRuleKey  = "dispatch:rule:%s"
	OrderLockKey     = "dispatch:order:lock:%d"
	RejectCoolKey    = "dispatch:driver:reject"
)

func (r *RedisClient) GeoAdd(driverID uint64, lng, lat float64) error {
	return r.client.GeoAdd(ctx, GeoKey, &redis.GeoLocation{
		Name:      fmt.Sprintf("%d", driverID),
		Longitude: lng,
		Latitude:  lat,
	}).Err()
}

func (r *RedisClient) GeoRadius(lng, lat float64, radius int, unit string) ([]redis.GeoLocation, error) {
	return r.client.GeoRadius(ctx, GeoKey, lng, lat, &redis.GeoRadiusQuery{
		Radius: float64(radius),
		Unit:   unit,
	}).Result()
}

func (r *RedisClient) GeoDist(driverID1, driverID2 uint64, unit string) (float64, error) {
	return r.client.GeoDist(ctx, GeoKey, fmt.Sprintf("%d", driverID1), fmt.Sprintf("%d", driverID2), unit).Result()
}

func (r *RedisClient) HSetDriverStatus(driverID uint64, status map[string]interface{}) error {
	key := fmt.Sprintf(DriverStatusKey, driverID)
	return r.client.HSet(ctx, key, status).Err()
}

func (r *RedisClient) HGetAllDriverStatus(driverID uint64) (map[string]string, error) {
	key := fmt.Sprintf(DriverStatusKey, driverID)
	return r.client.HGetAll(ctx, key).Result()
}

func (r *RedisClient) HGetDriverStatusField(driverID uint64, field string) (string, error) {
	key := fmt.Sprintf(DriverStatusKey, driverID)
	return r.client.HGet(ctx, key, field).Result()
}

func (r *RedisClient) HDelDriverStatus(driverID uint64, fields ...string) error {
	key := fmt.Sprintf(DriverStatusKey, driverID)
	return r.client.HDel(ctx, key, fields...).Err()
}

func (r *RedisClient) SAddOnlineDriver(driverID uint64) error {
	return r.client.SAdd(ctx, OnlineDriversKey, driverID).Err()
}

func (r *RedisClient) SRemOnlineDriver(driverID uint64) error {
	return r.client.SRem(ctx, OnlineDriversKey, driverID).Err()
}

func (r *RedisClient) SIsMemberOnline(driverID uint64) (bool, error) {
	return r.client.SIsMember(ctx, OnlineDriversKey, driverID).Result()
}

func (r *RedisClient) SMembersOnline() ([]string, error) {
	return r.client.SMembers(ctx, OnlineDriversKey).Result()
}

func (r *RedisClient) HSetDispatchRule(regionCode string, rule interface{}) error {
	key := fmt.Sprintf(DispatchRuleKey, regionCode)
	data, err := json.Marshal(rule)
	if err != nil {
		return err
	}
	return r.client.HSet(ctx, key, "data", string(data)).Err()
}

func (r *RedisClient) HGetDispatchRule(regionCode string) (string, error) {
	key := fmt.Sprintf(DispatchRuleKey, regionCode)
	return r.client.HGet(ctx, key, "data").Result()
}

func (r *RedisClient) SetOrderLock(orderID uint64, ttl time.Duration) (bool, error) {
	key := fmt.Sprintf(OrderLockKey, orderID)
	return r.client.SetNX(ctx, key, "1", ttl).Result()
}

func (r *RedisClient) DelOrderLock(orderID uint64) error {
	key := fmt.Sprintf(OrderLockKey, orderID)
	return r.client.Del(ctx, key).Err()
}

func (r *RedisClient) ZAddRejectCool(driverID uint64, score float64) error {
	return r.client.ZAdd(ctx, RejectCoolKey, &redis.Z{
		Score:  score,
		Member: driverID,
	}).Err()
}

func (r *RedisClient) ZScoreRejectCool(driverID uint64) (float64, error) {
	return r.client.ZScore(ctx, RejectCoolKey, fmt.Sprintf("%d", driverID)).Result()
}

func (r *RedisClient) ZRemRejectCool(driverID uint64) error {
	return r.client.ZRem(ctx, RejectCoolKey, driverID).Err()
}

func (r *RedisClient) ZRangeRejectCool(min, max float64) ([]string, error) {
	return r.client.ZRangeByScore(ctx, RejectCoolKey, &redis.ZRangeBy{
		Min: fmt.Sprintf("%f", min),
		Max: fmt.Sprintf("%f", max),
	}).Result()
}

func (r *RedisClient) Expire(key string, ttl time.Duration) error {
	return r.client.Expire(ctx, key, ttl).Err()
}

func (r *RedisClient) TTL(key string) (time.Duration, error) {
	return r.client.TTL(ctx, key).Result()
}

func (r *RedisClient) Del(key string) error {
	return r.client.Del(ctx, key).Err()
}
