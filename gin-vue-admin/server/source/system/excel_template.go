package system

import (
	"context"
	"github.com/flipped-aurora/gin-vue-admin/server/service/system"
)

type initExcelTemplate struct{}

const initOrderExcelTemplate = initOrderDictDetail + 1

func init() {
	system.RegisterInit(initOrderExcelTemplate, &initExcelTemplate{})
}

func (i *initExcelTemplate) InitializerName() string {
	return "sys_export_templates"
}

func (i *initExcelTemplate) MigrateTable(ctx context.Context) (context.Context, error) {
	return ctx, nil
}

func (i *initExcelTemplate) TableCreated(ctx context.Context) bool {
	return true
}

func (i *initExcelTemplate) InitializeData(ctx context.Context) (context.Context, error) {
	return ctx, nil
}

func (i *initExcelTemplate) DataInserted(ctx context.Context) bool {
	return true
}