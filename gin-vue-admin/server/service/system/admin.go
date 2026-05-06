package system

import (
	"crypto/md5"
	"encoding/hex"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/system"
)

type AdminService struct{}

func (a *AdminService) Login(username, password string) (*system.Admin, error) {
	var admin system.Admin
	err := global.GVA_DB.Where("username = ?", username).First(&admin).Error
	if err != nil {
		return nil, err
	}

	if admin.Status != 1 {
		return nil, nil
	}

	hashedPassword := md5.Sum([]byte(password))
	if hex.EncodeToString(hashedPassword[:]) != admin.Password {
		return nil, nil
	}

	return &admin, nil
}

func (a *AdminService) GetAdminByID(id uint) (*system.Admin, error) {
	var admin system.Admin
	err := global.GVA_DB.Where("id = ?", id).First(&admin).Error
	if err != nil {
		return nil, err
	}
	return &admin, nil
}