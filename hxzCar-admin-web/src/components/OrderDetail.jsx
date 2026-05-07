import { useState, useEffect } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { Button, Tag, Card, Descriptions, Spin } from 'antd'
import { LeftOutlined } from '@ant-design/icons'
import { getOrderInfo } from '../api/hxzCar'

function OrderDetail() {
  const { id } = useParams()
  const navigate = useNavigate()
  const [loading, setLoading] = useState(true)
  const [orderDetail, setOrderDetail] = useState(null)

  const fetchOrderDetail = async () => {
    setLoading(true)
    try {
      const response = await getOrderInfo(id)
      if (response.code === 0 || response.code === 200) {
        setOrderDetail(response.data)
      }
    } catch (error) {
      console.error('获取订单详情失败:', error)
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    fetchOrderDetail()
  }, [id])

  const getStatusText = (status) => {
    switch (status) {
      case 1:
      case 2:
      case 3:
        return '进行中'
      case 4:
        return '已完成'
      case 5:
        return '已取消'
      default:
        return '异常'
    }
  }

  const getStatusColor = (status) => {
    switch (status) {
      case 1:
      case 2:
      case 3:
        return 'processing'
      case 4:
        return 'success'
      case 5:
        return 'warning'
      default:
        return 'error'
    }
  }

  const getPayTypeText = (payType) => {
    switch (payType) {
      case 1:
        return '微信支付'
      case 2:
        return '支付宝'
      default:
        return '其他'
    }
  }

  const formatDateTime = (dateStr) => {
    if (!dateStr) return '-'
    const date = new Date(dateStr)
    return date.toLocaleString('zh-CN', {
      year: 'numeric',
      month: '2-digit',
      day: '2-digit',
      hour: '2-digit',
      minute: '2-digit',
      second: '2-digit'
    })
  }

  if (loading) {
    return (
      <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '50vh' }}>
        <Spin size="large" />
      </div>
    )
  }

  if (!orderDetail) {
    return (
      <div style={{ padding: 20 }}>
        <Button icon={<LeftOutlined />} onClick={() => navigate(-1)} style={{ marginBottom: 20 }}>
          返回
        </Button>
        <Card>
          <p style={{ textAlign: 'center', color: '#999' }}>订单不存在</p>
        </Card>
      </div>
    )
  }

  const { order, driver, passenger } = orderDetail

  return (
    <div style={{ padding: 20 }}>
      <Button icon={<LeftOutlined />} onClick={() => navigate(-1)} style={{ marginBottom: 20 }}>
          返回
        </Button>

        <Card title="订单基本信息" style={{ marginBottom: 20 }}>
        <Descriptions bordered column={2}>
          <Descriptions.Item label="订单号" labelStyle={{ width: 120 }}>{order.OrderNo}</Descriptions.Item>
          <Descriptions.Item label="订单状态">
            <Tag color={getStatusColor(order.OrderStatus)}>{getStatusText(order.OrderStatus)}</Tag>
          </Descriptions.Item>
          <Descriptions.Item label="下单时间">{formatDateTime(order.CreateTime)}</Descriptions.Item>
          <Descriptions.Item label="订单类型">{order.CarType}</Descriptions.Item>
          <Descriptions.Item label="支付方式">{getPayTypeText(order.PayType)}</Descriptions.Item>
          <Descriptions.Item label="订单金额">¥{(order.TotalAmount || 0).toFixed(2)}</Descriptions.Item>
        </Descriptions>
      </Card>

      <Card title="行程信息" style={{ marginBottom: 20 }}>
        <Descriptions bordered column={1}>
          <Descriptions.Item label="出发地" labelStyle={{ width: 120 }}>{order.StartAddress}</Descriptions.Item>
          <Descriptions.Item label="目的地">{order.EndAddress}</Descriptions.Item>
          <Descriptions.Item label="预计里程">{order.Distance ? `${order.Distance}公里` : '-'}</Descriptions.Item>
          <Descriptions.Item label="预计时长">{order.Duration ? `${order.Duration}分钟` : '-'}</Descriptions.Item>
        </Descriptions>
      </Card>

      {passenger && (
        <Card title="乘客信息" style={{ marginBottom: 20 }}>
          <Descriptions bordered column={2}>
            <Descriptions.Item label="乘客姓名" labelStyle={{ width: 120 }}>{passenger.Nickname}</Descriptions.Item>
            <Descriptions.Item label="乘客手机号">{passenger.Phone}</Descriptions.Item>
            <Descriptions.Item label="乘客ID">{passenger.ID}</Descriptions.Item>
            <Descriptions.Item label="性别">{passenger.Gender === 1 ? '男' : passenger.Gender === 0 ? '女' : '-'}</Descriptions.Item>
            <Descriptions.Item label="年龄">{passenger.Age ? `${passenger.Age}岁` : '-'}</Descriptions.Item>
            <Descriptions.Item label="所在城市">{passenger.City}</Descriptions.Item>
            <Descriptions.Item label="注册时间">{formatDateTime(passenger.RegisterTime)}</Descriptions.Item>
            <Descriptions.Item label="总订单数">{passenger.TotalOrderCount}单</Descriptions.Item>
          </Descriptions>
        </Card>
      )}

      {driver && (
        <Card title="司机信息" style={{ marginBottom: 20 }}>
          <Descriptions bordered column={2}>
            <Descriptions.Item label="司机姓名" labelStyle={{ width: 120 }}>{driver.RealName}</Descriptions.Item>
            <Descriptions.Item label="司机手机号">{driver.Phone}</Descriptions.Item>
            <Descriptions.Item label="司机ID">{driver.ID}</Descriptions.Item>
            <Descriptions.Item label="性别">{driver.Gender === 1 ? '男' : driver.Gender === 0 ? '女' : '-'}</Descriptions.Item>
            <Descriptions.Item label="年龄">{driver.Age ? `${driver.Age}岁` : '-'}</Descriptions.Item>
            <Descriptions.Item label="所在城市">{driver.City}</Descriptions.Item>
            <Descriptions.Item label="身份证号">{driver.IDCard}</Descriptions.Item>
            <Descriptions.Item label="驾驶证号">{driver.LicenseNo || '-'}</Descriptions.Item>
            <Descriptions.Item label="司机类型">{driver.DriverType === 1 ? '全职' : '兼职'}</Descriptions.Item>
            <Descriptions.Item label="审核状态">{driver.AuditStatus === 1 ? '已通过' : '未通过'}</Descriptions.Item>
            <Descriptions.Item label="工作状态">{driver.WorkStatus === 1 ? '在线' : '离线'}</Descriptions.Item>
            <Descriptions.Item label="总订单数">{driver.TotalOrderCount}单</Descriptions.Item>
            <Descriptions.Item label="总收入">¥{driver.TotalIncome}</Descriptions.Item>
            <Descriptions.Item label="平均评分">{driver.AverageRating}</Descriptions.Item>
            <Descriptions.Item label="注册时间">{formatDateTime(driver.RegisterTime)}</Descriptions.Item>
            <Descriptions.Item label="最后在线">{formatDateTime(driver.LastOnlineTime)}</Descriptions.Item>
          </Descriptions>
        </Card>
      )}
    </div>
  )
}

export default OrderDetail