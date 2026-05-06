package initialize

import (
	"context"

	"github.com/flipped-aurora/gin-vue-admin/server/service/system"
)

const initOrderEnsureTables = system.InitOrderExternal - 1

type ensureTables struct{}

func init() {
	system.RegisterInit(initOrderEnsureTables, &ensureTables{})
}

func (e *ensureTables) InitializerName() string {
	return "ensure_tables_created"
}

func (e *ensureTables) InitializeData(ctx context.Context) (next context.Context, err error) {
	return ctx, nil
}

func (e *ensureTables) DataInserted(ctx context.Context) bool {
	return true
}

func (e *ensureTables) MigrateTable(ctx context.Context) (context.Context, error) {
	return ctx, nil
}

func (e *ensureTables) TableCreated(ctx context.Context) bool {
	return true
}
