# 花小猪运营后台 - 后端API接口文档

## 一、项目概述

### 1.1 项目简介

花小猪运营后台是基于 `gin-vue-admin` 框架构建的运营管理系统，采用**业务模块与框架模块分离**的设计理念，将花小猪业务代码独立于系统基础模块。

### 1.2 架构设计

```
┌─────────────────────────────────────────────────────────────────┐
│                      花小猪运营后台                             │
├─────────────────────────────────────────────────────────────────┤
│  ┌─────────────────────┐    ┌─────────────────────────────┐    │
│  │    框架基础模块      │    │       业务模块 (hxzCar)      │    │
│  │  server/api/v1/system│    │    server/internal/hxzCar   │    │
│  │  - 用户管理          │    │    - 订单管理               │    │
│  │  - 权限管理          │    │    - 司机管理               │    │
│  │  - 菜单管理          │    │    - 乘客管理               │    │
│  │  - 系统配置          │    │    - 统计分析               │    │
│  │  - 日志管理          │    │    - 实时监控               │    │
│  └─────────────────────┘    │    - 异常处理               │    │
│                             └─────────────────────────────┘    │
└─────────────────────────────────────────────────────────────────┘
```

### 1.3 技术栈

| 分类 | 技术 | 版本 |
|------|------|------|
| 语言 | Go | 1.24+ |
| Web框架 | Gin | 1.10.0 |
| ORM | GORM | 1.25.12 |
| 数据库 | MySQL | 5.7+ |
| 认证 | JWT | 5.2.2 |
| 权限 | Casbin | 2.103.0 |
| 文档 | Swagger | 1.16.4 |

---

## 二、API基础信息

### 2.1 基础路径

**服务地址**: `http://localhost:8888`

**业务API前缀**: `/hxzCar`

### 2.2 响应格式

#### 成功响应
```json
{
  "code": 0,
  "msg": "success",
  "data": {}
}
```

#### 失败响应
```json
{
  "code": 500,
  "msg": "操作失败",
  "data": null
}
```

### 2.3 响应码说明

| 响应码 | 说明 |
|--------|------|
| 0 | 成功 |
| 400 | 请求参数错误 |
| 401 | 未登录或Token失效 |
| 403 | 无权限 |
| 500 | 服务器内部错误 |

---

## 三、API接口文档

### 3.1 司机管理接口

**基础路径**: `/hxzCar/driver`

| API路径 | HTTP方法 | 功能描述 |
|---------|----------|----------|
| `/list` | GET | 获取司机列表 |
| `/info` | GET | 获取司机详情 |
| `/create` | POST | 创建司机 |
| `/update` | PUT | 更新司机 |
| `/delete` | DELETE | 删除司机 |
| `/health` | GET | 健康检查 |

#### 3.1.1 获取司机列表

**请求**:
```http
GET /hxzCar/driver/list
```

**成功响应**:
```json
{
  "code": 0,
  "msg": "success",
  "data": [
    {
      "id": 2001,
      "phone": "139****5678",
      "realName": "李师傅",
      "idCard": "110101********1234",
      "avatarURL": "https://xxx.com/avatar.jpg",
      "gender": 1,
      "age": 35,
      "city": "北京市",
      "licenseNo": "京A1234567",
      "driverType": 1,
      "auditStatus": 1,
      "workStatus": 1,
      "totalOrderCount": 1200,
      "totalIncome": 85000.0,
      "averageRating": 4.8,
      "status": 1,
      "registerTime": "2023-06-01T00:00:00+08:00",
      "lastOnlineTime": "2024-01-01T09:30:00+08:00"
    }
  ]
}
```

#### 3.1.2 获取司机详情

**请求**:
```http
GET /hxzCar/driver/info?id=2001
```

**请求参数**:

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| id | uint | 是 | 司机ID |

#### 3.1.3 创建司机

**请求**:
```http
POST /hxzCar/driver/create
Content-Type: application/json

{
  "phone": "13900005678",
  "realName": "王师傅",
  "idCard": "110101199001011234",
  "gender": 1,
  "age": 34,
  "city": "北京市",
  "licenseNo": "京B7654321",
  "licenseIssueDate": "2015-01-15",
  "licenseValidDate": "2035-01-15",
  "driverType": 1
}
```

**请求体字段**:

| 字段名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| phone | string | 是 | 手机号（唯一） |
| realName | string | 是 | 真实姓名 |
| idCard | string | 是 | 身份证号（唯一） |
| avatarURL | string | 否 | 头像URL |
| gender | int | 否 | 性别：0-未知 1-男 2-女 |
| age | int | 否 | 年龄 |
| city | string | 是 | 城市 |
| licenseNo | string | 是 | 驾驶证号 |
| licenseIssueDate | date | 是 | 驾驶证签发日期 |
| licenseValidDate | date | 是 | 驾驶证有效期 |
| driverType | int | 否 | 司机类型：1-全职 2-兼职 |

#### 3.1.4 更新司机

**请求**:
```http
PUT /hxzCar/driver/update
Content-Type: application/json

{
  "id": 2001,
  "auditStatus": 1,
  "workStatus": 1,
  "status": 1
}
```

#### 3.1.5 删除司机

**请求**:
```http
DELETE /hxzCar/driver/delete?id=2001
```

---

### 3.2 订单管理接口

**基础路径**: `/hxzCar/order`

| API路径 | HTTP方法 | 功能描述 |
|---------|----------|----------|
| `/list` | GET | 获取订单列表 |
| `/info` | GET | 获取订单详情 |
| `/create` | POST | 创建订单 |
| `/update` | PUT | 更新订单 |
| `/delete` | DELETE | 删除订单 |
| `/health` | GET | 健康检查 |

#### 3.2.1 获取订单列表

**请求**:
```http
GET /hxzCar/order/list?keyword=&city=&orderType=&orderStatus=&startTime=&endTime=&page=1&pageSize=10
```

**请求参数**:

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| keyword | string | 否 | 订单号/手机号/车牌号搜索 |
| city | string | 否 | 城市筛选 |
| orderType | int | 否 | 订单类型：1-经济型 2-舒适型 3-特惠快车 |
| orderStatus | int | 否 | 订单状态：1-待接单 2-已接单 3-行程中 4-已完成 5-已取消 |
| startTime | string | 否 | 开始时间 (yyyy-MM-dd) |
| endTime | string | 否 | 结束时间 (yyyy-MM-dd) |
| page | int | 否 | 页码，默认1 |
| pageSize | int | 否 | 每页数量，默认10 |

**成功响应**:
```json
{
  "list": [
    {
      "id": 1,
      "orderNo": "HXZ202401010001",
      "createTime": "2024-01-01 10:00:00",
      "userName": "张*",
      "userPhone": "138****1234",
      "startAddress": "北京市朝阳区xxx",
      "endAddress": "北京市海淀区xxx",
      "carType": "快车",
      "totalAmount": 35.5,
      "payType": "微信",
      "orderStatus": 4,
      "orderStatusStr": "已完成",
      "driverName": "李师傅",
      "carNo": "京A12345"
    }
  ],
  "total": 100
}
```

#### 3.2.2 获取订单详情

**请求**:
```http
GET /hxzCar/order/info?id=1
```

**成功响应**:
```json
{
  "order": {
    "ID": 1,
    "OrderNo": "HXZ202401010001",
    "UserID": 1001,
    "DriverID": 2001,
    "CarID": 3001,
    "OrderType": 1,
    "CarType": "经济型",
    "Channel": 1,
    "StartAddress": "北京市朝阳区xxx",
    "StartLng": 116.403874,
    "StartLat": 39.914885,
    "EndAddress": "北京市海淀区xxx",
    "EndLng": 116.305766,
    "EndLat": 39.998241,
    "Distance": 5.5,
    "EstimatedPrice": 32.0,
    "ActualDistance": 5.8,
    "ActualPrice": 35.5,
    "TotalAmount": 35.5,
    "DiscountAmount": 0.0,
    "PayAmount": 35.5,
    "OrderStatus": 4,
    "ProcessStatus": 2,
    "PayStatus": 1,
    "PayType": 1,
    "CreateTime": "2024-01-01T10:00:00+08:00"
  },
  "driver": {
    "ID": 2001,
    "Phone": "139****5678",
    "RealName": "李师傅",
    "City": "北京市",
    "DriverType": 1,
    "WorkStatus": 1
  },
  "passenger": {
    "ID": 1001,
    "Phone": "138****1234",
    "Nickname": "张先生",
    "City": "北京市"
  }
}
```

#### 3.2.3 创建订单

**请求**:
```http
POST /hxzCar/order/create
Content-Type: application/json

{
  "orderNo": "HXZ202401010002",
  "userID": 1001,
  "driverID": 2001,
  "carID": 3001,
  "orderType": 1,
  "carType": "经济型",
  "channel": 1,
  "startAddress": "北京市朝阳区xxx",
  "startLng": 116.403874,
  "startLat": 39.914885,
  "endAddress": "北京市海淀区xxx",
  "endLng": 116.305766,
  "endLat": 39.998241,
  "distance": 5.5,
  "estimatedPrice": 32.0
}
```

**请求体字段**:

| 字段名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| orderNo | string | 是 | 订单编号（唯一） |
| userID | uint64 | 是 | 用户ID |
| driverID | uint64 | 否 | 司机ID（接单后填写） |
| carID | uint64 | 否 | 车辆ID |
| orderType | int | 是 | 订单类型：1-实时单 2-预约单 |
| carType | string | 是 | 车型：经济型/舒适型/特惠快车 |
| channel | int | 是 | 渠道：1-APP 2-支付宝 3-微信 |
| startAddress | string | 是 | 起点地址 |
| startLng | float64 | 是 | 起点经度 |
| startLat | float64 | 是 | 起点纬度 |
| endAddress | string | 是 | 终点地址 |
| endLng | float64 | 是 | 终点经度 |
| endLat | float64 | 是 | 终点纬度 |
| distance | float64 | 是 | 预估里程(km) |
| estimatedPrice | float64 | 是 | 预估价格 |

---

### 3.3 乘客管理接口

**基础路径**: `/hxzCar/passenger`

| API路径 | HTTP方法 | 功能描述 |
|---------|----------|----------|
| `/list` | GET | 获取乘客列表 |
| `/info` | GET | 获取乘客详情 |
| `/create` | POST | 创建乘客 |
| `/update` | PUT | 更新乘客 |
| `/delete` | DELETE | 删除乘客 |
| `/health` | GET | 健康检查 |

#### 3.3.1 获取乘客列表

**请求**:
```http
GET /hxzCar/passenger/list
```

**成功响应**:
```json
{
  "code": 0,
  "msg": "success",
  "data": [
    {
      "id": 1001,
      "phone": "138****1234",
      "nickname": "张先生",
      "avatarURL": "https://xxx.com/avatar.jpg",
      "gender": 1,
      "age": 28,
      "city": "北京市",
      "registerTime": "2023-05-10T00:00:00+08:00",
      "lastOrderTime": "2024-01-01T10:00:00+08:00",
      "totalOrderCount": 56,
      "totalConsume": 1890.5,
      "status": 1
    }
  ]
}
```

---

### 3.4 统计中心接口

**基础路径**: `/hxzCar/statistics`

| API路径 | HTTP方法 | 功能描述 |
|---------|----------|----------|
| `/dashboard` | GET | 获取仪表盘统计数据 |

#### 3.4.1 获取仪表盘统计

**请求**:
```http
GET /hxzCar/statistics/dashboard?date=2024-01-01
```

**请求参数**:

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| date | string | 否 | 日期 (yyyy-MM-dd)，默认当天 |

**成功响应**:
```json
{
  "code": 0,
  "msg": "success",
  "data": {
    "today": {
      "date": "2024-01-01",
      "orderCount": 1560,
      "completeCount": 1420,
      "activeUsers": 890,
      "activeDrivers": 320,
      "revenue": 45680.0,
      "avgOrderValue": 29.3
    },
    "yesterday": {
      "date": "2023-12-31",
      "orderCount": 1420,
      "completeCount": 1310,
      "activeUsers": 820,
      "activeDrivers": 305,
      "revenue": 41200.0,
      "avgOrderValue": 29.0
    },
    "orderCountDiff": 9.86,
    "completeCountDiff": 8.4,
    "activeUsersDiff": 8.54,
    "activeDriversDiff": 4.92,
    "revenueDiff": 10.87,
    "avgOrderValueDiff": 1.03,
    "payTypeStats": {
      "wechatCount": 980,
      "alipayCount": 580,
      "wechatRatio": 62.82,
      "alipayRatio": 37.18
    },
    "orderStatusStats": {
      "completed": 1420,
      "inProgress": 85,
      "canceled": 50,
      "abnormal": 5,
      "completedRatio": 91.03,
      "inProgressRatio": 5.45,
      "canceledRatio": 3.21,
      "abnormalRatio": 0.32
    },
    "cityRanking": [
      {"cityName": "北京市", "orderCount": 450, "ranking": 1, "orderCountDiff": 2.5},
      {"cityName": "上海市", "orderCount": 380, "ranking": 2, "orderCountDiff": 5.0},
      {"cityName": "广州市", "orderCount": 290, "ranking": 3, "orderCountDiff": 7.5},
      {"cityName": "深圳市", "orderCount": 260, "ranking": 4, "orderCountDiff": 10.0},
      {"cityName": "成都市", "orderCount": 180, "ranking": 5, "orderCountDiff": 12.5}
    ],
    "trendData": {
      "hours": ["00:00", "03:00", "06:00", "09:00", "12:00", "15:00", "18:00", "21:00", "23:00"],
      "orderCount": [45, 25, 80, 180, 220, 240, 280, 260, 130],
      "completeCount": [40, 22, 75, 170, 210, 230, 265, 245, 120]
    }
  }
}
```

---

### 3.5 实时监控接口

**基础路径**: `/hxzCar/monitor`

| API路径 | HTTP方法 | 功能描述 |
|---------|----------|----------|
| `/data` | GET | 获取监控数据（综合） |
| `/latest-orders` | GET | 获取最新订单列表 |
| `/stats` | GET | 获取监控统计 |

#### 3.5.1 获取监控数据

**请求**:
```http
GET /hxzCar/monitor/data?date=2024-01-01
```

**成功响应**:
```json
{
  "code": 0,
  "msg": "success",
  "data": {
    "stats": {
      "totalOrders": 1560,
      "inProgress": 85,
      "completed": 1420,
      "abnormalOrders": 5,
      "canceledOrders": 50,
      "cancelRate": 3.21
    },
    "latestOrders": [
      {
        "id": 10001,
        "orderNo": "HXZ202401011560",
        "createTime": "2024-01-01T23:59:00+08:00",
        "carType": "快车",
        "orderStatus": 2,
        "totalAmount": 28.0,
        "startAddress": "北京市朝阳区xxx",
        "endAddress": "北京市东城区xxx"
      }
    ],
    "trendData": {
      "hours": ["00:00", "03:00", "06:00", "09:00", "12:00", "15:00", "18:00", "21:00", "23:00"],
      "orderCount": [45, 25, 80, 180, 220, 240, 280, 260, 130]
    },
    "cityRanking": [
      {"cityName": "北京市", "orderCount": 450, "ranking": 1},
      {"cityName": "上海市", "orderCount": 380, "ranking": 2},
      {"cityName": "广州市", "orderCount": 290, "ranking": 3},
      {"cityName": "深圳市", "orderCount": 260, "ranking": 4},
      {"cityName": "成都市", "orderCount": 180, "ranking": 5}
    ]
  }
}
```

---

### 3.6 异常订单接口

**基础路径**: `/hxzCar/abnormal`

| API路径 | HTTP方法 | 功能描述 |
|---------|----------|----------|
| `/stats` | GET | 获取异常订单统计 |
| `/orders` | GET | 获取异常订单列表 |
| `/status` | PUT | 更新处理状态 |
| `/batch` | POST | 批量处理 |

#### 3.6.1 获取异常订单统计

**请求**:
```http
GET /hxzCar/abnormal/stats?date=2024-01-01
```

**成功响应**:
```json
{
  "code": 0,
  "msg": "success",
  "data": {
    "total": 5,
    "processing": 3,
    "processed": 2,
    "processRate": 40.0
  }
}
```

#### 3.6.2 获取异常订单列表

**请求**:
```http
GET /hxzCar/abnormal/orders?keyword=&city=&abnormalType=&processStatus=&page=1&pageSize=10
```

**请求参数**:

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| keyword | string | 否 | 订单号/手机号搜索 |
| city | string | 否 | 城市筛选 |
| abnormalType | int | 否 | 异常类型 |
| processStatus | int | 否 | 处理状态：1-处理中 2-已处理 |
| page | int | 否 | 页码 |
| pageSize | int | 否 | 每页数量 |

**成功响应**:
```json
{
  "code": 0,
  "msg": "success",
  "data": {
    "list": [
      {
        "id": 10001,
        "orderNo": "HXZ202401011555",
        "createTime": "2024-01-01T23:45:00+08:00",
        "passengerName": "***",
        "phone": "138****1234",
        "startAddress": "北京市朝阳区xxx",
        "endAddress": "北京市西城区xxx",
        "carType": "快车",
        "totalAmount": 42.0,
        "abnormalType": "异常订单",
        "processStatus": 1
      }
    ],
    "total": 5
  }
}
```

#### 3.6.3 更新处理状态

**请求**:
```http
PUT /hxzCar/abnormal/status?id=10001&status=2
```

**请求参数**:

| 参数名 | 类型 | 必填 | 说明 |
|--------|------|------|------|
| id | uint | 是 | 订单ID |
| status | int | 是 | 处理状态：1-处理中 2-已处理 |

#### 3.6.4 批量处理

**请求**:
```http
POST /hxzCar/abnormal/batch
Content-Type: application/json

{
  "ids": [10001, 10002, 10003],
  "status": 2
}
```

---

## 四、数据字典

### 4.1 订单状态枚举

| 状态码 | 状态名称 | 说明 |
|--------|----------|------|
| 1 | 待接单 | 订单已创建，等待司机接单 |
| 2 | 已接单 | 司机已接单 |
| 3 | 行程中 | 司机已到达起点，行程进行中 |
| 4 | 已完成 | 行程已结束 |
| 5 | 已取消 | 订单已取消 |
| 6 | 异常 | 订单异常 |

### 4.2 支付状态枚举

| 状态码 | 状态名称 |
|--------|----------|
| 0 | 未支付 |
| 1 | 已支付 |
| 2 | 已退款 |

### 4.3 支付方式枚举

| 状态码 | 支付方式 |
|--------|----------|
| 1 | 微信支付 |
| 2 | 支付宝 |

### 4.4 司机审核状态

| 状态码 | 状态名称 |
|--------|----------|
| 0 | 待审核 |
| 1 | 通过 |
| 2 | 拒绝 |

### 4.5 司机工作状态

| 状态码 | 状态名称 |
|--------|----------|
| 0 | 离线 |
| 1 | 接单中 |
| 2 | 收工 |

---

## 五、数据库表结构

### 5.1 订单表 (`order`)

| 字段名 | 类型 | 说明 |
|--------|------|------|
| id | uint | 主键ID |
| order_no | string | 订单编号（唯一） |
| user_id | uint64 | 用户ID |
| driver_id | uint64 | 司机ID |
| car_id | uint64 | 车辆ID |
| order_type | int | 订单类型 |
| car_type | string | 车型 |
| channel | int | 渠道 |
| start_address | string | 起点地址 |
| start_lng | float64 | 起点经度 |
| start_lat | float64 | 起点纬度 |
| end_address | string | 终点地址 |
| end_lng | float64 | 终点经度 |
| end_lat | float64 | 终点纬度 |
| distance | float64 | 预估里程 |
| estimated_price | float64 | 预估价格 |
| actual_distance | float64 | 实际里程 |
| actual_price | float64 | 实际价格 |
| total_amount | float64 | 总金额 |
| discount_amount | float64 | 优惠金额 |
| pay_amount | float64 | 实付金额 |
| order_status | int | 订单状态 |
| process_status | int | 处理状态 |
| pay_status | int | 支付状态 |
| pay_type | int | 支付方式 |
| create_time | datetime | 创建时间 |
| accept_time | datetime | 接单时间 |
| start_time | datetime | 行程开始时间 |
| end_time | datetime | 行程结束时间 |
| pay_time | datetime | 支付时间 |

### 5.2 司机表 (`driver`)

| 字段名 | 类型 | 说明 |
|--------|------|------|
| id | uint | 主键ID |
| phone | string | 手机号（唯一） |
| real_name | string | 真实姓名 |
| id_card | string | 身份证号（唯一） |
| avatar_url | string | 头像URL |
| gender | int | 性别 |
| age | int | 年龄 |
| city | string | 城市 |
| license_no | string | 驾驶证号 |
| license_issue_date | date | 驾驶证签发日期 |
| license_valid_date | date | 驾驶证有效期 |
| driver_type | int | 司机类型 |
| audit_status | int | 审核状态 |
| work_status | int | 工作状态 |
| total_order_count | int | 总订单数 |
| total_income | float64 | 总收入 |
| average_rating | float64 | 平均评分 |
| status | int | 状态 |
| register_time | datetime | 注册时间 |
| last_online_time | datetime | 最后在线时间 |

### 5.3 乘客表 (`user`)

| 字段名 | 类型 | 说明 |
|--------|------|------|
| id | uint | 主键ID |
| phone | string | 手机号（唯一） |
| nickname | string | 昵称 |
| avatar_url | string | 头像URL |
| gender | int | 性别 |
| age | int | 年龄 |
| city | string | 城市 |
| register_time | datetime | 注册时间 |
| last_order_time | datetime | 最后下单时间 |
| total_order_count | int | 总订单数 |
| total_consume | float64 | 总消费 |
| status | int | 状态 |

---

## 六、服务运行信息

### 6.1 服务地址

| 服务 | 地址 |
|------|------|
| 后端API | http://localhost:8888 |
| Swagger文档 | http://localhost:8888/swagger/index.html |
| 前端页面 | http://localhost:5176 |

### 6.2 API列表汇总

| 模块 | 接口数量 | 路径前缀 |
|------|----------|----------|
| 司机管理 | 6 | `/hxzCar/driver` |
| 订单管理 | 6 | `/hxzCar/order` |
| 乘客管理 | 6 | `/hxzCar/passenger` |
| 统计分析 | 1 | `/hxzCar/statistics` |
| 实时监控 | 3 | `/hxzCar/monitor` |
| 异常处理 | 4 | `/hxzCar/abnormal` |
| **合计** | **26** | - |

---

## 七、附录

### 7.1 开发环境配置

```yaml
# config.yaml 关键配置
system:
  env: local
  addr: 8888
  db-type: mysql

mysql:
  path: 115.190.54.31
  port: "3306"
  db-name: hxzcar-admin
  username: root
  password: mysql_2SASaZ
```

### 7.2 启动命令

```bash
# 后端启动
cd server
go run main.go

# 前端启动
cd hxzCar-admin-web
npm install
npm run dev
```

---

*文档生成时间: 2026-05-07*
*项目版本: gin-vue-admin v2.9.1*
