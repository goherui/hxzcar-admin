package system

import (
	"encoding/base64"
	"net/http"
	"strings"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	systemRes "github.com/flipped-aurora/gin-vue-admin/server/model/system/response"
	"github.com/gin-gonic/gin"
	"github.com/mojocn/base64Captcha"
	"go.uber.org/zap"
)

var store = base64Captcha.DefaultMemStore

type BaseApi struct{}

func (b *BaseApi) Captcha(c *gin.Context) {
	openCaptcha := global.GVA_CONFIG.Captcha.OpenCaptcha
	openCaptchaTimeOut := global.GVA_CONFIG.Captcha.OpenCaptchaTimeOut
	key := c.ClientIP()
	v, ok := global.BlackCache.Get(key)
	if !ok {
		global.BlackCache.Set(key, 1, time.Second*time.Duration(openCaptchaTimeOut))
	}

	var oc bool
	if openCaptcha == 0 || openCaptcha < interfaceToInt(v) {
		oc = true
	}

	driver := base64Captcha.NewDriverDigit(global.GVA_CONFIG.Captcha.ImgHeight, global.GVA_CONFIG.Captcha.ImgWidth, global.GVA_CONFIG.Captcha.KeyLong, 0.7, 80)
	cp := base64Captcha.NewCaptcha(driver, store)
	id, b64s, _, err := cp.Generate()
	if err != nil {
		global.GVA_LOG.Error("验证码获取失败!", zap.Error(err))
		response.FailWithMessage("验证码获取失败", c)
		return
	}
	response.OkWithDetailed(systemRes.SysCaptchaResponse{
		CaptchaId:     id,
		PicPath:       b64s,
		CaptchaLength: global.GVA_CONFIG.Captcha.KeyLong,
		OpenCaptcha:   oc,
	}, "验证码获取成功", c)
}

func (b *BaseApi) CaptchaImage(c *gin.Context) {
	captchaId := c.Query("captchaId")
	if captchaId == "" {
		c.JSON(http.StatusBadRequest, gin.H{"msg": "缺少captchaId"})
		return
	}

	driver := base64Captcha.NewDriverDigit(global.GVA_CONFIG.Captcha.ImgHeight, global.GVA_CONFIG.Captcha.ImgWidth, global.GVA_CONFIG.Captcha.KeyLong, 0.7, 80)
	cp := base64Captcha.NewCaptcha(driver, store)
	id, b64s, code, err := cp.Generate()
	if err != nil {
		global.GVA_LOG.Error("验证码生成失败!", zap.Error(err))
		c.JSON(http.StatusInternalServerError, gin.H{"msg": "验证码生成失败"})
		return
	}

	store.Set(id, code)

	cleanB64 := strings.ReplaceAll(b64s, "data:image/png;base64,", "")
	cleanB64 = strings.ReplaceAll(cleanB64, "data:image/jpeg;base64,", "")

	imgData, err := base64.StdEncoding.DecodeString(cleanB64)
	if err != nil {
		global.GVA_LOG.Error("base64解码失败!", zap.Error(err))
		c.JSON(http.StatusInternalServerError, gin.H{"msg": "图片解码失败"})
		return
	}

	c.Header("Content-Type", "image/png")
	c.Header("Cache-Control", "no-cache, no-store, must-revalidate")
	c.Header("Pragma", "no-cache")
	c.Header("Expires", "0")
	c.Data(http.StatusOK, "image/png", imgData)
}

func interfaceToInt(v interface{}) (i int) {
	switch v := v.(type) {
	case int:
		i = v
	default:
		i = 0
	}
	return
}