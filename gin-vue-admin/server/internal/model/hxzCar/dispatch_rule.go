package hxzCar

import (
	"time"
)

type DispatchRule struct {
	ID                 uint64    `gorm:"primaryKey;autoIncrement" json:"id"`
	RuleName           string    `gorm:"column:rule_name;not null" json:"ruleName"`
	RegionCode         string    `gorm:"column:region_code;not null" json:"regionCode"`
	MinRadius          int       `gorm:"column:min_radius;default:1000" json:"minRadius"`
	MaxRadius          int       `gorm:"column:max_radius;default:5000" json:"maxRadius"`
	RadiusStep         int       `gorm:"column:radius_step;default:500" json:"radiusStep"`
	MaxRetry           int       `gorm:"column:max_retry;default:3" json:"maxRetry"`
	DistanceWeight     float64   `gorm:"column:distance_weight;type:decimal(3,2);default:0.4" json:"distanceWeight"`
	ServiceScoreWeight float64   `gorm:"column:service_score_weight;type:decimal(3,2);default:0.3" json:"serviceScoreWeight"`
	AcceptRateWeight   float64   `gorm:"column:accept_rate_weight;type:decimal(3,2);default:0.3" json:"acceptRateWeight"`
	MinServiceScore    float64   `gorm:"column:min_service_score;type:decimal(3,1);default:4.0" json:"minServiceScore"`
	MinAcceptRate      float64   `gorm:"column:min_accept_rate;type:decimal(5,2);default:0.6" json:"minAcceptRate"`
	RejectCoolDown     int       `gorm:"column:reject_cool_down;default:300" json:"rejectCoolDown"`
	Enabled            int       `gorm:"column:enabled;default:1" json:"enabled"`
	Description        string    `gorm:"column:description" json:"description"`
	CreatedAt          time.Time `gorm:"column:created_at" json:"createdAt"`
	UpdatedAt          time.Time `gorm:"column:updated_at" json:"updatedAt"`
}

func (DispatchRule) TableName() string {
	return "dispatch_rule"
}
