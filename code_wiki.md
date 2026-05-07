# Gin-Vue-Admin 项目 Code Wiki

## 项目概述

**Gin-Vue-Admin** 是一个基于 Go + Vue 的全栈前后端分离开发基础平台，集成 JWT 鉴权、动态路由、动态菜单、Casbin 鉴权、表单生成器、代码生成器等功能。

### 项目版本

- Go: 1.24.0
- Gin: 1.10.0
- Vue: 3.x
- GORM: 1.25.12

---

## 目录结构

```
gin-vue-admin/
├── server/                    # 后端服务
│   ├── api/                   # API层
│   │   └── v1/                # v1版本接口
│   │       └── system/        # 系统管理接口
│   ├── config/                # 配置包
│   ├── core/                  # 核心文件
│   ├── docs/                  # Swagger文档
│   ├── global/                # 全局对象
│   ├── initialize/            # 初始化模块
│   ├── internal/              # 内部业务模块
│   │   ├── api/               # 业务API
│   │   ├── model/             # 业务模型
│   │   ├── router/            # 业务路由
│   │   └── service/           # 业务服务
│   ├── middleware/            # 中间件
│   ├── model/                 # 数据模型
│   ├── plugin/                # 插件系统
│   ├── router/                # 路由层
│   ├── service/               # 服务层
│   ├── source/                # 源数据
│   └── utils/                 # 工具包
└── web/                       # 前端项目
```

---

## 核心架构

### 1. 启动流程

```
main.go → initializeSystem() → RunServer()
    ↓              ↓                ↓
  Viper初始化   Gorm连接        启动HTTP服务
  Zap日志初始化  Redis初始化    注册路由
```

**入口文件**: [main.go](file:///workspace/gin-vue-admin/server/main.go)

### 2. 全局对象

| 对象名 | 类型 | 用途 |
|--------|------|------|
| `GVA_DB` | `*gorm.DB` | 主数据库连接 |
| `GVA_DBList` | `map[string]*gorm.DB` | 多数据库连接列表 |
| `GVA_REDIS` | `redis.UniversalClient` | Redis客户端 |
| `GVA_CONFIG` | `config.Server` | 配置结构体 |
| `GVA_LOG` | `*zap.Logger` | 日志实例 |
| `GVA_VP` | `*viper.Viper` | 配置管理器 |
| `BlackCache` | `local_cache.Cache` | JWT黑名单缓存 |

**文件**: [global.go](file:///workspace/gin-vue-admin/server/global/global.go)

### 3. 配置管理

配置文件支持多环境切换，优先级：命令行参数 > 环境变量 > 默认值。

**配置加载流程**:

```go
// 优先级顺序
1. 命令行参数: `-c config.yaml`
2. 环境变量: `GVA_CONFIG`
3. Gin模式对应的配置文件
4. 默认配置文件
```

**文件**: [viper.go](file:///workspace/gin-vue-admin/server/core/viper.go)

---

## 关键模块详解

### 1. 认证与权限

#### JWT认证

**中间件位置**: [middleware/jwt.go](file:///workspace/gin-vue-admin/server/middleware/jwt.go)

**认证流程**:

```
请求 → JWTAuth() → 解析token → 验证黑名单 → 验证过期 → 设置claims → 放行
     ↓
  token获取方式: Header["x-token"] 或 Cookie["token"]
```

**主要功能**:
- Token解析与验证
- 黑名单检测
- 自动刷新过期token
- 多点登录限制（Redis实现）

#### Casbin权限控制

**中间件位置**: [middleware/casbin_rbac.go](file:///workspace/gin-vue-admin/server/middleware/casbin_rbac.go)

基于角色的访问控制，支持动态配置权限策略。

### 2. 系统管理模块

#### 用户管理 API

**文件**: [api/v1/system/sys_user.go](file:///workspace/gin-vue-admin/server/api/v1/system/sys_user.go)

| API路径 | 方法 | 功能 | 需要认证 |
|---------|------|------|----------|
| `/base/login` | POST | 用户登录 | 否 |
| `/user/admin_register` | POST | 用户注册 | 是 |
| `/user/getUserList` | POST | 分页获取用户列表 | 是 |
| `/user/changePassword` | POST | 修改密码 | 是 |
| `/user/setUserAuthority` | POST | 设置用户权限 | 是 |
| `/user/deleteUser` | DELETE | 删除用户 | 是 |
| `/user/getUserInfo` | GET | 获取用户信息 | 是 |

**登录流程**:

```
Login() → 验证码验证 → 用户验证 → 签发JWT → 记录登录日志 → 返回token
```

#### 其他系统模块

| 模块 | 文件路径 | 功能描述 |
|------|----------|----------|
| 角色管理 | `sys_authority.go` | 角色CRUD、权限分配 |
| 菜单管理 | `sys_menu.go` | 动态菜单配置 |
| API管理 | `sys_api.go` | 接口权限配置 |
| 字典管理 | `sys_dictionary.go` | 数据字典管理 |
| 操作日志 | `sys_operation_record.go` | 操作记录审计 |

### 3. 业务模块 - hxzCar

#### 模块结构

```
internal/
├── api/hxzCar/        # API层
│   ├── driver.go      # 司机管理API
│   ├── order.go       # 订单管理API
│   ├── passenger.go   # 乘客管理API
│   └── statistics.go  # 统计API
├── model/hxzCar/      # 数据模型
│   ├── driver.go      # 司机模型
│   ├── order.go       # 订单模型
│   └── passenger.go   # 乘客模型
├── service/hxzCar/    # 服务层
│   ├── driver/        # 司机服务
│   ├── order/         # 订单服务
│   ├── passenger/     # 乘客服务
│   └── statistics/    # 统计服务
└── router/hxzCar.go   # 路由注册
```

#### 司机管理 API

**文件**: [internal/api/hxzCar/driver.go](file:///workspace/gin-vue-admin/server/internal/api/hxzCar/driver.go)

| API路径 | 方法 | 功能 |
|---------|------|------|
| `/hxzCar/driver/list` | GET | 获取司机列表 |
| `/hxzCar/driver/:id` | GET | 获取单个司机 |
| `/hxzCar/driver` | POST | 创建司机 |
| `/hxzCar/driver` | PUT | 更新司机 |
| `/hxzCar/driver/:id` | DELETE | 删除司机 |

#### 司机服务实现

**文件**: [internal/service/hxzCar/driver/driver.go](file:///workspace/gin-vue-admin/server/internal/service/hxzCar/driver/driver.go)

```go
type DriverService struct{}

func (s *DriverService) GetDriverList() ([]hxzCar.Driver, error)
func (s *DriverService) GetDriverByID(id uint) (hxzCar.Driver, error)
func (s *DriverService) CreateDriver(driver *hxzCar.Driver) error
func (s *DriverService) UpdateDriver(driver *hxzCar.Driver) error
func (s *DriverService) DeleteDriver(id uint) error
```

---

## 中间件体系

| 中间件 | 文件 | 功能 |
|--------|------|------|
| JWT认证 | `middleware/jwt.go` | Token验证、自动刷新 |
| Casbin RBAC | `middleware/casbin_rbac.go` | 接口权限控制 |
| CORS | `middleware/cors.go` | 跨域处理 |
| 操作日志 | `middleware/operation.go` | 记录用户操作 |
| 错误处理 | `middleware/error.go` | 统一错误响应 |
| 请求限流 | `middleware/limit_ip.go` | IP限流 |
| 请求超时 | `middleware/timeout.go` | 请求超时处理 |
| SSL/TLS | `middleware/loadtls.go` | HTTPS支持 |
| 日志记录 | `middleware/logger.go` | 访问日志 |

---

## 数据模型

### 系统模型

| 模型 | 文件 | 描述 |
|------|------|------|
| `Admin` | `model/system/admin.go` | 管理员信息 |
| `SysUser` | `model/system/sys_user.go` | 系统用户 |
| `SysAuthority` | `model/system/sys_authority.go` | 角色权限 |
| `SysMenu` | `model/system/sys_menu.go` | 菜单配置 |
| `SysApi` | `model/system/sys_api.go` | API接口 |
| `JwtBlacklist` | `model/system/sys_jwt_blacklist.go` | JWT黑名单 |

### hxzCar业务模型

| 模型 | 文件 | 描述 |
|------|------|------|
| `Driver` | `internal/model/hxzCar/driver.go` | 司机信息 |
| `Order` | `internal/model/hxzCar/order.go` | 订单信息 |
| `Passenger` | `internal/model/hxzCar/passenger.go` | 乘客信息 |
| `Car` | `internal/model/hxzCar/car.go` | 车辆信息 |
| `DailyStatistics` | `internal/model/hxzCar/daily_statistics.go` | 每日统计 |

---

## 工具函数

### JWT工具

**文件**: [utils/jwt.go](file:///workspace/gin-vue-admin/server/utils/jwt.go)

```go
func NewJWT() *JWT                      // 创建JWT实例
func (j *JWT) CreateToken(claims CustomClaims) (string, error)  // 创建token
func (j *JWT) ParseToken(token string) (*CustomClaims, error)    // 解析token
func LoginToken(user interface{}) (string, *CustomClaims, error) // 登录签发token
```

### 通用工具

| 工具 | 文件 | 功能 |
|------|------|------|
| 密码哈希 | `utils/hash.go` | BCrypt加密验证 |
| 响应封装 | `utils/json.go` | JSON响应处理 |
| 验证器 | `utils/validator.go` | 参数校验 |
| 文件上传 | `utils/upload/` | 多平台OSS支持 |
| 定时器 | `utils/timer/timed_task.go` | 定时任务 |

---

## 依赖关系

### 核心依赖

| 依赖 | 版本 | 用途 |
|------|------|------|
| `gin-gonic/gin` | 1.10.0 | Web框架 |
| `gorm.io/gorm` | 1.25.12 | ORM框架 |
| `golang-jwt/jwt/v5` | 5.2.2 | JWT认证 |
| `casbin/casbin/v2` | 2.103.0 | 权限控制 |
| `spf13/viper` | 1.19.0 | 配置管理 |
| `go.uber.org/zap` | 1.27.0 | 日志库 |
| `redis/go-redis/v9` | 9.7.0 | Redis客户端 |
| `swaggo/gin-swagger` | 1.6.0 | API文档 |

### 数据库驱动

| 驱动 | 版本 | 支持数据库 |
|------|------|-----------|
| `gorm.io/driver/mysql` | 1.5.7 | MySQL |
| `gorm.io/driver/postgres` | 1.5.11 | PostgreSQL |
| `gorm.io/driver/sqlserver` | 1.5.4 | SQL Server |
| `glebarez/sqlite` | 1.11.0 | SQLite |
| `dzwvip/gorm-oracle` | 0.1.2 | Oracle |

### OSS支持

| 平台 | 包名 |
|------|------|
| 阿里云 | `aliyun/aliyun-oss-go-sdk` |
| 腾讯云 | `tencentyun/cos-go-sdk-v5` |
| 七牛云 | `qiniu/go-sdk/v7` |
| 华为云 | `huaweicloud/huaweicloud-sdk-go-obs` |
| AWS S3 | `aws/aws-sdk-go-v2` |
| MinIO | `minio/minio-go/v7` |

---

## 运行方式

### 环境要求

- Go >= 1.22
- Node >= 18.16.0
- MySQL >= 5.7（或其他支持的数据库）

### 启动后端

```bash
cd server

# 安装依赖
go generate

# 运行
go run .

# 指定配置文件
go run . -c config.yaml
```

### 启动前端

```bash
cd web

# 安装依赖
npm install

# 开发模式
npm run serve

# 生产构建
npm run build
```

### Swagger文档

启动服务后访问: `http://localhost:8888/swagger/index.html`

---

## 配置文件说明

### 配置结构

```yaml
server:
  jwt:
    signing-key: "gin-vue-admin"    # JWT签名密钥
    expires-time: "7d"              # 过期时间
    buffer-time: "1d"               # 缓冲时间
  system:
    addr: 8888                      # 服务端口
    use-redis: true                 # 是否使用Redis
    use-multipoint: true            # 是否开启多点登录限制
  mysql:
    path: "127.0.0.1"              # 数据库地址
    port: 3306                      # 数据库端口
    db-name: "gin-vue-admin"        # 数据库名
    username: "root"                # 用户名
    password: "password"            # 密码
```

---

## 插件系统

### 插件目录结构

```
plugin/
├── announcement/    # 公告插件
├── email/           # 邮件插件
├── plugin-tool/     # 插件工具
└── register.go      # 插件注册
```

### 插件开发规范

1. 创建插件目录结构
2. 实现 `Plugin` 接口
3. 在 `register.go` 中注册插件
4. 实现初始化逻辑

---

## MCP工具支持

项目支持 MCP (Model Context Protocol) 工具，可通过 AI 编辑器快速生成代码。

**启动MCP服务**:
```bash
go run ./cmd/mcp -config ./cmd/mcp/config.yaml
```

---

## 安全特性

1. **密码加密**: 使用 BCrypt 算法存储密码
2. **JWT认证**: 无状态身份验证，支持自动刷新
3. **黑名单机制**: 已注销/过期的Token存入黑名单
4. **多点登录限制**: 通过Redis实现同一账号多端登录控制
5. **IP限流**: 防止暴力破解和接口滥用
6. **SQL注入防护**: 使用GORM参数化查询
7. **XSS防护**: 前端输入过滤

---

## 日志系统

基于 Zap 日志库，支持多级别日志输出：

| 级别 | 用途 |
|------|------|
| Debug | 调试信息 |
| Info | 一般信息 |
| Warn | 警告信息 |
| Error | 错误信息 |
| DPanic | 开发环境panic |
| Panic | 触发panic |
| Fatal | 致命错误，退出程序 |

---

## 扩展开发指南

### 添加新API步骤

1. 在 `model/system/request/` 创建请求结构体
2. 在 `model/system/response/` 创建响应结构体
3. 在 `service/system/` 实现业务逻辑
4. 在 `api/v1/system/` 定义API接口
5. 在 `router/system/` 注册路由

### 添加新业务模块

1. 在 `internal/model/` 创建模型
2. 在 `internal/service/` 实现服务
3. 在 `internal/api/` 定义API
4. 在 `internal/router/` 注册路由

---

## 总结

Gin-Vue-Admin 是一个功能完善的企业级后端管理平台框架，具备以下特点：

- **模块化设计**: 清晰的分层架构，易于扩展
- **安全可靠**: 完善的认证授权机制
- **高可配置**: 支持多数据库、多OSS平台
- **开发友好**: 集成Swagger文档、代码生成器
- **生产就绪**: 包含日志、限流、超时等生产特性