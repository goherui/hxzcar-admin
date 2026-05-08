import { useState, useEffect } from 'react'
import { useParams, useNavigate } from 'react-router-dom'
import { Button, Tag, Card, Descriptions, Spin, Row, Col, Divider, Avatar } from 'antd'
import { LeftOutlined, PhoneOutlined, EnvironmentOutlined, ClockCircleOutlined, CreditCardOutlined, CarOutlined, StarOutlined, UserOutlined, CalendarOutlined } from '@ant-design/icons'
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
        return '待接单'
      case 2:
        return '已接单'
      case 3:
        return '进行中'
      case 4:
        return '已完成'
      case 5:
        return '已取消'
      case 6:
        return '异常'
      default:
        return '未知'
    }
  }

  const getStatusColor = (status) => {
    switch (status) {
      case 1:
        return 'default'
      case 2:
        return 'warning'
      case 3:
        return 'processing'
      case 4:
        return 'success'
      case 5:
        return 'warning'
      case 6:
        return 'error'
      default:
        return 'default'
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

  const getPayStatusText = (payStatus) => {
    switch (payStatus) {
      case 0:
        return '未支付'
      case 1:
        return '已支付'
      case 2:
        return '已退款'
      default:
        return '未知'
    }
  }

  const getOrderTypeText = (orderType) => {
    switch (orderType) {
      case 1:
        return '实时单'
      case 2:
        return '预约单'
      default:
        return '未知'
    }
  }

  const getDriverTypeText = (driverType) => {
    switch (driverType) {
      case 1:
        return '全职'
      case 2:
        return '兼职'
      default:
        return '未知'
    }
  }

  const getDriverAuditStatusText = (auditStatus) => {
    switch (auditStatus) {
      case 0:
        return '待审核'
      case 1:
        return '已通过'
      case 2:
        return '已拒绝'
      default:
        return '未知'
    }
  }

  const getDriverWorkStatusText = (workStatus) => {
    switch (workStatus) {
      case 0:
        return '离线'
      case 1:
        return '接单中'
      case 2:
        return '收工'
      default:
        return '未知'
    }
  }

  const getGenderText = (gender) => {
    switch (gender) {
      case 1:
        return '男'
      case 2:
        return '女'
      default:
        return '未知'
    }
  }

  const formatDateTime = (dateStr) => {
    if (!dateStr) return '-'
    const date = new Date(dateStr)
    if (isNaN(date.getTime())) return '-'
    return date.toLocaleString('zh-CN', {
      year: 'numeric',
      month: '2-digit',
      day: '2-digit',
      hour: '2-digit',
      minute: '2-digit',
      second: '2-digit'
    })
  }

  const maskPhone = (phone) => {
    if (!phone || phone.length !== 11) return '-'
    return phone.slice(0, 3) + '****' + phone.slice(7)
  }

  const maskIDCard = (idCard) => {
    if (!idCard || idCard.length !== 18) return '-'
    return idCard.slice(0, 4) + '**********' + idCard.slice(14)
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
    <div style={{ padding: 20, backgroundColor: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ display: 'flex', alignItems: 'center', marginBottom: 20 }}>
        <Button icon={<LeftOutlined />} onClick={() => navigate(-1)}>
          返回
        </Button>
        <h2 style={{ marginLeft: 20, fontSize: 18, fontWeight: 600 }}>订单详情</h2>
      </div>

      <Card title="订单基本信息" style={{ marginBottom: 16 }}>
        <div style={{ display: 'flex', alignItems: 'center', marginBottom: 16 }}>
          <span style={{ fontSize: 16, fontWeight: 600, color: '#1f2937' }}>{order.orderNo}</span>
          <Tag color={getStatusColor(order.orderStatus)} style={{ marginLeft: 12, fontSize: 12 }}>
            {getStatusText(order.orderStatus)}
          </Tag>
        </div>
        
        <Row gutter={16}>
          <Col span={12}>
            <Descriptions column={2} size="small">
              <Descriptions.Item label="下单时间" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <ClockCircleOutlined style={{ marginRight: 4 }} />
                {formatDateTime(order.createTime)}
              </Descriptions.Item>
              <Descriptions.Item label="订单类型" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {getOrderTypeText(order.orderType)}
              </Descriptions.Item>
              <Descriptions.Item label="支付方式" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <CreditCardOutlined style={{ marginRight: 4 }} />
                {getPayTypeText(order.payType)}
              </Descriptions.Item>
              <Descriptions.Item label="支付状态" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <Tag color={order.payStatus === 1 ? 'success' : order.payStatus === 2 ? 'warning' : 'default'} style={{ fontSize: 11 }}>
                  {getPayStatusText(order.payStatus)}
                </Tag>
              </Descriptions.Item>
            </Descriptions>
          </Col>
          <Col span={12}>
            <Descriptions column={2} size="small">
              <Descriptions.Item label="预估里程" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {order.distance ? `${order.distance}公里` : '-'}
              </Descriptions.Item>
              <Descriptions.Item label="预估价格" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                ¥{(order.estimatedPrice || 0).toFixed(2)}
              </Descriptions.Item>
              <Descriptions.Item label="实际里程" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {order.actualDistance ? `${order.actualDistance}公里` : '-'}
              </Descriptions.Item>
              <Descriptions.Item label="实际价格" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                ¥{(order.actualPrice || 0).toFixed(2)}
              </Descriptions.Item>
            </Descriptions>
          </Col>
        </Row>

        <Divider style={{ margin: '16px 0' }} />

        <div style={{ padding: '0 12px' }}>
          <div style={{ marginBottom: 12 }}>
            <span style={{ fontSize: 12, color: '#64748b', marginRight: 8 }}>
              <EnvironmentOutlined /> 出发地
            </span>
            <span style={{ fontSize: 14, color: '#1f2937', fontWeight: 500 }}>
              {order.startAddress || '-'}
            </span>
          </div>
          <div style={{ marginLeft: 24 }}>
            <div style={{ width: 20, height: 20, borderRadius: '50%', backgroundColor: '#ef4444', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10, fontWeight: 600 }}>
              起
            </div>
          </div>
          <div style={{ marginLeft: 24, height: 24, width: 2, backgroundColor: '#e2e8f0', marginBottom: 12 }} />
          <div style={{ marginLeft: 24 }}>
            <div style={{ width: 20, height: 20, borderRadius: '50%', backgroundColor: '#22c55e', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10, fontWeight: 600 }}>
              终
            </div>
          </div>
          <div style={{ marginBottom: 12, marginTop: 8 }}>
            <span style={{ fontSize: 12, color: '#64748b', marginRight: 8, marginLeft: 8 }}>
              <EnvironmentOutlined /> 目的地
            </span>
            <span style={{ fontSize: 14, color: '#1f2937', fontWeight: 500 }}>
              {order.endAddress || '-'}
            </span>
          </div>
        </div>

        <Divider style={{ margin: '16px 0' }} />

        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '0 12px' }}>
          <div>
            <span style={{ fontSize: 12, color: '#64748b' }}>订单金额</span>
          </div>
          <div style={{ textAlign: 'right' }}>
            <div style={{ fontSize: 12, color: '#64748b', marginBottom: 4 }}>
              优惠 ¥{(order.discountAmount || 0).toFixed(2)}
            </div>
            <div style={{ fontSize: 20, fontWeight: 600, color: '#ef4444' }}>
              实付 ¥{(order.payAmount || order.totalAmount || 0).toFixed(2)}
            </div>
          </div>
        </div>
      </Card>

      <Card title="行程时间线" style={{ marginBottom: 16 }}>
        <div style={{ padding: '0 12px' }}>
          <div style={{ display: 'flex', marginBottom: 16 }}>
            <div style={{ width: 40, textAlign: 'center' }}>
              <div style={{ width: 16, height: 16, borderRadius: '50%', backgroundColor: '#3b82f6', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10 }}>1</div>
            </div>
            <div style={{ flex: 1, paddingLeft: 16, borderLeft: '2px solid #e2e8f0' }}>
              <div style={{ fontWeight: 500, fontSize: 14, marginBottom: 4 }}>下单</div>
              <div style={{ fontSize: 12, color: '#64748b' }}>{formatDateTime(order.createTime)}</div>
            </div>
          </div>
          
          <div style={{ display: 'flex', marginBottom: 16 }}>
            <div style={{ width: 40, textAlign: 'center' }}>
              <div style={{ width: 16, height: 16, borderRadius: '50%', backgroundColor: order.acceptTime ? '#22c55e' : '#94a3b8', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10 }}>2</div>
            </div>
            <div style={{ flex: 1, paddingLeft: 16, borderLeft: '2px solid #e2e8f0' }}>
              <div style={{ fontWeight: 500, fontSize: 14, marginBottom: 4 }}>接单</div>
              <div style={{ fontSize: 12, color: '#64748b' }}>{formatDateTime(order.acceptTime)}</div>
            </div>
          </div>
          
          <div style={{ display: 'flex', marginBottom: 16 }}>
            <div style={{ width: 40, textAlign: 'center' }}>
              <div style={{ width: 16, height: 16, borderRadius: '50%', backgroundColor: order.startTime ? '#22c55e' : '#94a3b8', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10 }}>3</div>
            </div>
            <div style={{ flex: 1, paddingLeft: 16, borderLeft: '2px solid #e2e8f0' }}>
              <div style={{ fontWeight: 500, fontSize: 14, marginBottom: 4 }}>行程开始</div>
              <div style={{ fontSize: 12, color: '#64748b' }}>{formatDateTime(order.startTime)}</div>
            </div>
          </div>
          
          <div style={{ display: 'flex', marginBottom: 16 }}>
            <div style={{ width: 40, textAlign: 'center' }}>
              <div style={{ width: 16, height: 16, borderRadius: '50%', backgroundColor: order.endTime ? '#22c55e' : '#94a3b8', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10 }}>4</div>
            </div>
            <div style={{ flex: 1, paddingLeft: 16, borderLeft: '2px solid #e2e8f0' }}>
              <div style={{ fontWeight: 500, fontSize: 14, marginBottom: 4 }}>行程结束</div>
              <div style={{ fontSize: 12, color: '#64748b' }}>{formatDateTime(order.endTime)}</div>
            </div>
          </div>
          
          <div style={{ display: 'flex' }}>
            <div style={{ width: 40, textAlign: 'center' }}>
              <div style={{ width: 16, height: 16, borderRadius: '50%', backgroundColor: order.payTime ? '#22c55e' : '#94a3b8', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 10 }}>5</div>
            </div>
            <div style={{ flex: 1, paddingLeft: 16 }}>
              <div style={{ fontWeight: 500, fontSize: 14, marginBottom: 4 }}>完成支付</div>
              <div style={{ fontSize: 12, color: '#64748b' }}>{formatDateTime(order.payTime)}</div>
            </div>
          </div>
        </div>
      </Card>

      <Card title="乘客信息" style={{ marginBottom: 16 }}>
        <div style={{ display: 'flex', alignItems: 'center', marginBottom: 16 }}>
          <Avatar size={64} icon={<UserOutlined />} style={{ backgroundColor: '#3b82f6' }} />
          <div style={{ marginLeft: 16 }}>
            <div style={{ fontSize: 18, fontWeight: 600 }}>{passenger?.nickname || '-'}</div>
            <div style={{ fontSize: 12, color: '#64748b', display: 'flex', alignItems: 'center', marginTop: 4 }}>
              <PhoneOutlined style={{ marginRight: 4 }} />
              {maskPhone(passenger?.phone)}
            </div>
          </div>
        </div>
        
        <Row gutter={16}>
          <Col span={12}>
            <Descriptions column={2} size="small">
              <Descriptions.Item label="乘客ID" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {passenger?.id || '-'}
              </Descriptions.Item>
              <Descriptions.Item label="性别" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {getGenderText(passenger?.gender)}
              </Descriptions.Item>
              <Descriptions.Item label="年龄" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {passenger?.age ? `${passenger.age}岁` : '-'}
              </Descriptions.Item>
              <Descriptions.Item label="所在城市" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <EnvironmentOutlined style={{ marginRight: 4 }} />
                {passenger?.city || '-'}
              </Descriptions.Item>
            </Descriptions>
          </Col>
          <Col span={12}>
            <Descriptions column={2} size="small">
              <Descriptions.Item label="注册时间" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <CalendarOutlined style={{ marginRight: 4 }} />
                {formatDateTime(passenger?.registerTime)}
              </Descriptions.Item>
              <Descriptions.Item label="最后下单" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <ClockCircleOutlined style={{ marginRight: 4 }} />
                {formatDateTime(passenger?.lastOrderTime)}
              </Descriptions.Item>
              <Descriptions.Item label="总订单数" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {passenger?.totalOrderCount ? `${passenger.totalOrderCount}单` : '-'}
              </Descriptions.Item>
              <Descriptions.Item label="总消费" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                ¥{(passenger?.totalConsume || 0).toFixed(2)}
              </Descriptions.Item>
            </Descriptions>
          </Col>
        </Row>
      </Card>

      <Card title="司机信息" style={{ marginBottom: 16 }}>
        <div style={{ display: 'flex', alignItems: 'center', marginBottom: 16 }}>
          <Avatar size={64} icon={<CarOutlined />} style={{ backgroundColor: '#22c55e' }} />
          <div style={{ marginLeft: 16 }}>
            <div style={{ fontSize: 18, fontWeight: 600 }}>{driver?.realName || '-'} 师傅</div>
            <div style={{ fontSize: 12, color: '#64748b', display: 'flex', alignItems: 'center', marginTop: 4 }}>
              <PhoneOutlined style={{ marginRight: 4 }} />
              {maskPhone(driver?.phone)}
            </div>
          </div>
        </div>
        
        <Row gutter={16}>
          <Col span={12}>
            <Descriptions column={2} size="small">
              <Descriptions.Item label="司机ID" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {driver?.id || '-'}
              </Descriptions.Item>
              <Descriptions.Item label="性别" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {getGenderText(driver?.gender)}
              </Descriptions.Item>
              <Descriptions.Item label="年龄" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {driver?.age ? `${driver.age}岁` : '-'}
              </Descriptions.Item>
              <Descriptions.Item label="所在城市" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <EnvironmentOutlined style={{ marginRight: 4 }} />
                {driver?.city || '-'}
              </Descriptions.Item>
              <Descriptions.Item label="身份证号" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {maskIDCard(driver?.idCard)}
              </Descriptions.Item>
              <Descriptions.Item label="驾驶证号" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {driver?.licenseNo || '-'}
              </Descriptions.Item>
            </Descriptions>
          </Col>
          <Col span={12}>
            <Descriptions column={2} size="small">
              <Descriptions.Item label="司机类型" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {getDriverTypeText(driver?.driverType)}
              </Descriptions.Item>
              <Descriptions.Item label="审核状态" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <Tag color={driver?.auditStatus === 1 ? 'success' : driver?.auditStatus === 2 ? 'error' : 'warning'} style={{ fontSize: 11 }}>
                  {getDriverAuditStatusText(driver?.auditStatus)}
                </Tag>
              </Descriptions.Item>
              <Descriptions.Item label="工作状态" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <Tag color={driver?.workStatus === 1 ? 'success' : driver?.workStatus === 2 ? 'default' : 'warning'} style={{ fontSize: 11 }}>
                  {getDriverWorkStatusText(driver?.workStatus)}
                </Tag>
              </Descriptions.Item>
              <Descriptions.Item label="总订单数" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                {driver?.totalOrderCount ? `${driver.totalOrderCount}单` : '-'}
              </Descriptions.Item>
              <Descriptions.Item label="总收入" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                ¥{(driver?.totalIncome || 0).toFixed(2)}
              </Descriptions.Item>
              <Descriptions.Item label="平均评分" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <StarOutlined style={{ marginRight: 4, color: '#f59e0b' }} />
                {driver?.averageRating ? driver.averageRating.toFixed(1) : '-'}
              </Descriptions.Item>
            </Descriptions>
          </Col>
        </Row>

        <Divider style={{ margin: '16px 0' }} />

        <Row gutter={16}>
          <Col span={12}>
            <Descriptions column={1} size="small">
              <Descriptions.Item label="驾驶证签发日期" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <CalendarOutlined style={{ marginRight: 4 }} />
                {formatDateTime(driver?.licenseIssueDate)}
              </Descriptions.Item>
              <Descriptions.Item label="驾驶证有效期" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <CalendarOutlined style={{ marginRight: 4 }} />
                {formatDateTime(driver?.licenseValidDate)}
              </Descriptions.Item>
            </Descriptions>
          </Col>
          <Col span={12}>
            <Descriptions column={1} size="small">
              <Descriptions.Item label="注册时间" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <CalendarOutlined style={{ marginRight: 4 }} />
                {formatDateTime(driver?.registerTime)}
              </Descriptions.Item>
              <Descriptions.Item label="最后在线" labelStyle={{ fontWeight: 500, color: '#64748b', fontSize: 12 }}>
                <ClockCircleOutlined style={{ marginRight: 4 }} />
                {formatDateTime(driver?.lastOnlineTime)}
              </Descriptions.Item>
            </Descriptions>
          </Col>
        </Row>
      </Card>
    </div>
  )
}

export default OrderDetail