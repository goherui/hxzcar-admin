import { useState, useEffect, useMemo } from 'react'
import { useNavigate } from 'react-router-dom'
import { Button, Select, DatePicker, Input, Tag, Timeline, Card, Row, Col, Avatar } from 'antd'
import { LeftOutlined, PhoneOutlined, ReloadOutlined, PlusOutlined, MinusOutlined, CheckCircleFilled, EnvironmentFilled, CarFilled, StarFilled } from '@ant-design/icons'
import { getOrderList, getOrderInfo } from '@/api/hxzCar'

const { Option } = Select
const { RangePicker } = DatePicker

const cardStyle = {
  borderRadius: '8px',
  border: '1px solid #e8e8e8',
  boxShadow: 'none'
}

const mainCardHeight = {
  height: '520px',
  overflow: 'hidden'
}

export default function OrderDispatch() {
  const navigate = useNavigate()
  const [orders, setOrders] = useState([])
  const [selectedOrder, setSelectedOrder] = useState(null)
  const [filters, setFilters] = useState({
    status: '全部',
    orderNo: '',
    phone: ''
  })

  const statusOptions = [
    { value: '全部', label: '全部' },
    { value: '待接单', label: '待接单' },
    { value: '进行中', label: '进行中' },
    { value: '已完成', label: '已完成' },
    { value: '已取消', label: '已取消' }
  ]

  const getOrderProgressSteps = (status) => {
    const steps = [
      { title: '订单已接收', time: '14:32', status: 'pending' },
      { title: '司机已接单', time: '14:33', status: 'pending' },
      { title: '司机已到达上车点', time: '14:35', status: 'pending' },
      { title: '正在前往乘客', time: '', status: 'pending', desc: '距离乘客 1.2 公里，预计 3 分钟到达' },
      { title: '乘客已上车', time: '', status: 'pending' },
      { title: '正在送往目的地', time: '', status: 'pending' },
      { title: '订单已完成', time: '', status: 'pending' }
    ]

    const completedSteps = {
      '待接单': 0,
      '进行中': 4,
      '已完成': 6,
      '已取消': 0
    }

    const currentStep = completedSteps[status] || 0
    
    for (let i = 0; i <= currentStep; i++) {
      if (i === currentStep && status !== '已取消') {
        steps[i].status = 'current'
      } else if (i < currentStep) {
        steps[i].status = 'completed'
      }
    }

    if (status === '已取消') {
      steps[0].status = 'completed'
      steps[0].desc = '订单已取消'
    }

    return steps
  }

  const orderProgressSteps = useMemo(() => {
    return getOrderProgressSteps(selectedOrder?.status || '待接单')
  }, [selectedOrder?.status])

  useEffect(() => {
    fetchOrders()
  }, [filters])

  useEffect(() => {
    if (selectedOrder) {
      fetchOrderDetail(selectedOrder.id)
    }
  }, [selectedOrder])

  const fetchOrders = async () => {
    try {
      const params = {
        page: 1,
        pageSize: 20,
        keyword: filters.orderNo,
        orderStatus: filters.status === '全部' ? 0 : getStatusCode(filters.status)
      }
      const res = await getOrderList(params)
      if (res.data && res.data.list) {
        setOrders(res.data.list)
        if (res.data.list.length > 0 && !selectedOrder) {
          setSelectedOrder(res.data.list[0])
        }
      }
    } catch (error) {
      console.error('获取订单列表失败:', error)
    }
  }

  const fetchOrderDetail = async (id) => {
    try {
      const res = await getOrderInfo(id)
      if (res.data) {
        console.log('Order detail:', res.data)
      }
    } catch (error) {
      console.error('获取订单详情失败:', error)
    }
  }

  const getStatusCode = (status) => {
    const map = { '待接单': 1, '进行中': 2, '已完成': 4, '已取消': 5 }
    return map[status] || 0
  }

  const getStatusTag = (status) => {
    const map = {
      1: { color: 'blue', text: '待接单' },
      2: { color: 'processing', text: '进行中' },
      3: { color: 'processing', text: '行程中' },
      4: { color: 'success', text: '已完成' },
      5: { color: 'default', text: '已取消' },
      6: { color: 'warning', text: '异常' }
    }
    const item = map[status] || { color: 'default', text: '未知' }
    return <Tag color={item.color}>{item.text}</Tag>
  }

  const handleReset = () => {
    setFilters({ status: '全部', timeRange: null, orderNo: '', phone: '' })
  }

  return (
    <div style={{ padding: '20px', background: '#f5f7fa', minHeight: '100vh' }}>
      {/* 顶部筛选栏 */}
      <Card style={{ ...cardStyle, marginBottom: '16px' }} bodyStyle={{ padding: '12px 16px', overflow: 'hidden' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '16px', width: '100%' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexShrink: 0 }}>
            <span style={{ fontSize: '14px', color: '#333', width: '60px' }}>订单状态</span>
            <Select value={filters.status} style={{ width: 100 }} onChange={(value) => setFilters({ ...filters, status: value })}>
              {statusOptions.map(opt => <Option key={opt.value} value={opt.value}>{opt.label}</Option>)}
            </Select>
          </div>
          <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexShrink: 0 }}>
            <span style={{ fontSize: '14px', color: '#333', width: '50px' }}>订单号</span>
            <Input placeholder="请输入订单号" value={filters.orderNo} onChange={(e) => setFilters({ ...filters, orderNo: e.target.value })} style={{ width: 180 }} />
          </div>
          <div style={{ display: 'flex', alignItems: 'center', gap: '8px', flexShrink: 0 }}>
            <span style={{ fontSize: '14px', color: '#333', width: '50px' }}>手机号</span>
            <Input placeholder="请输入手机号" value={filters.phone} onChange={(e) => setFilters({ ...filters, phone: e.target.value })} style={{ width: 180 }} />
          </div>
          <Button onClick={handleReset} style={{ flexShrink: 0 }}>重置</Button>
          <Button type="primary" style={{ background: '#5b5fc7', borderColor: '#5b5fc7', flexShrink: 0 }}>搜索</Button>
          <Button type="primary" style={{ background: '#52c41a', borderColor: '#52c41a', flexShrink: 0 }}>智能派单</Button>
          <div style={{ marginLeft: 'auto', flexShrink: 0 }}>
            <Button icon={<ReloadOutlined />} onClick={fetchOrders}>刷新</Button>
          </div>
        </div>
      </Card>

      {/* 主要内容区域 */}
      <Row gutter={16}>
        {/* 左侧订单列表 */}
        <Col span={5}>
          <Card
            title={
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', paddingLeft: '4px' }}>
                <span style={{ color: '#333', fontSize: '14px', fontWeight: 500 }}>实时订单列表</span>
              </div>
            }
            style={{ ...cardStyle, ...mainCardHeight }}
            bodyStyle={{ padding: '0', height: 'calc(100% - 52px)', overflowY: 'auto', display: 'flex', flexDirection: 'column' }}
          >
            {orders.map(order => (
              <div
                key={order.id}
                onClick={() => setSelectedOrder(order)}
                style={{
                  padding: '14px 16px',
                  borderBottom: '1px solid #f0f0f0',
                  cursor: 'pointer',
                  background: selectedOrder?.id === order.id ? '#f0f5ff' : '#fff',
                  borderLeft: selectedOrder?.id === order.id ? '3px solid #5b5fc7' : '3px solid transparent'
                }}
              >
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '8px' }}>
                  <span style={{ fontWeight: 500, fontSize: '13px', color: '#333' }}>{order.orderNo}</span>
                  {getStatusTag(order.orderStatus)}
                </div>
                <div style={{ color: '#999', fontSize: '12px', marginBottom: '4px' }}>{order.createTime}</div>
                <div style={{ color: '#666', fontSize: '12px', display: '-webkit-box', WebkitLineClamp: 2, WebkitBoxOrient: 'vertical', overflow: 'hidden' }}>
                  {order.startAddress} → {order.endAddress}
                </div>
              </div>
            ))}
          </Card>
        </Col>

        {/* 中间地图和订单信息 */}
        <Col span={12}>
          <Card style={{ ...cardStyle, ...mainCardHeight }} bodyStyle={{ padding: '20px', overflowY: 'auto' }}>
            {/* 订单基本信息 */}
            <div style={{ marginBottom: '20px' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '16px' }}>
                <span style={{ fontSize: '16px', fontWeight: 600, color: '#333' }}>订单号 {selectedOrder?.orderNo || 'DD20260508103232ed9ba57d'}</span>
                <Tag color="processing">进行中</Tag>
              </div>
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '16px' }}>
                <div>
                  <div style={{ fontSize: '13px', color: '#666', marginBottom: '4px' }}>下单时间</div>
                  <div style={{ fontSize: '14px', color: '#333' }}>{selectedOrder?.createTime || '2026-05-08 23:55:56'}</div>
                </div>
                <div>
                  <div style={{ fontSize: '13px', color: '#666', marginBottom: '4px' }}>订单类型</div>
                  <div style={{ fontSize: '14px', color: '#333' }}>{selectedOrder?.carType || '商务型'}</div>
                </div>
                <div>
                  <div style={{ fontSize: '13px', color: '#666', marginBottom: '4px' }}>支付方式</div>
                  <div style={{ fontSize: '14px', color: '#333' }}>线上支付</div>
                </div>
                <div>
                  <div style={{ fontSize: '13px', color: '#666', marginBottom: '4px' }}>订单金额</div>
                  <div style={{ fontSize: '14px', color: '#f5222d', fontWeight: 600 }}>{selectedOrder?.totalAmount ? `¥${selectedOrder.totalAmount}` : '¥18.60'} 元</div>
                </div>
                <div>
                  <div style={{ fontSize: '13px', color: '#666', marginBottom: '4px' }}>预估里程</div>
                  <div style={{ fontSize: '14px', color: '#333' }}>12.3 公里</div>
                </div>
                <div>
                  <div style={{ fontSize: '13px', color: '#666', marginBottom: '4px' }}>预估时长</div>
                  <div style={{ fontSize: '14px', color: '#333' }}>28 分钟</div>
                </div>
              </div>
            </div>

            {/* 地图区域 */}
            <div style={{
              height: '380px',
              background: '#f5f5f5',
              borderRadius: '8px',
              position: 'relative',
              overflow: 'hidden',
              marginBottom: '16px'
            }}>
              <div style={{
                position: 'absolute',
                top: '50%',
                left: '50%',
                transform: 'translate(-50%, -50%)',
                textAlign: 'center',
                color: '#999'
              }}>
                <EnvironmentFilled style={{ fontSize: '48px', marginBottom: '16px', color: '#ccc' }} />
                <div style={{ fontSize: '14px' }}>地图加载中...</div>
              </div>
              <div style={{ position: 'absolute', right: '12px', top: '50%', transform: 'translateY(-50%)', display: 'flex', flexDirection: 'column', gap: '6px' }}>
                <Button shape="circle" icon={<ReloadOutlined />} size="small" style={{ background: '#fff', border: '1px solid #e8e8e8' }} />
                <Button shape="circle" icon={<PlusOutlined />} size="small" style={{ background: '#fff', border: '1px solid #e8e8e8' }} />
                <Button shape="circle" icon={<MinusOutlined />} size="small" style={{ background: '#fff', border: '1px solid #e8e8e8' }} />
              </div>
              <div style={{ position: 'absolute', top: '15%', left: '25%', background: '#5b5fc7', color: '#fff', padding: '6px 12px', borderRadius: '20px', fontSize: '12px', boxShadow: '0 2px 8px rgba(91, 95, 199, 0.3)' }}>
                <EnvironmentFilled style={{ marginRight: '4px', fontSize: '11px' }} />软件园三期A区
              </div>
              <div style={{ position: 'absolute', bottom: '25%', right: '20%', background: '#f5222d', color: '#fff', padding: '6px 12px', borderRadius: '20px', fontSize: '12px', boxShadow: '0 2px 8px rgba(245, 34, 45, 0.3)' }}>
                <EnvironmentFilled style={{ marginRight: '4px', fontSize: '11px' }} />万象城购物中心
              </div>
            </div>

            {/* 操作按钮 */}
            <Row gutter={12}>
              <Button icon={<PhoneOutlined />} style={{ padding: '6px 16px' }}>联系乘客</Button>
              <Button icon={<CarFilled />} style={{ padding: '6px 16px' }}>联系司机</Button>
              <Button danger style={{ padding: '6px 16px' }}>取消订单</Button>
              <Button style={{ padding: '6px 16px' }}>更多操作</Button>
            </Row>
          </Card>
        </Col>

        {/* 右侧订单进度 */}
        <Col span={7}>
          <Card title="订单进度" style={{ ...cardStyle, ...mainCardHeight }} bodyStyle={{ padding: '16px', overflowY: 'auto' }}>
            <Timeline
              style={{ paddingLeft: '4px' }}
              items={orderProgressSteps.map((step) => ({
                color: step.status === 'completed' ? '#52c41a' : step.status === 'current' ? '#5b5fc7' : '#d9d9d9',
                dot: step.status === 'completed' ? <CheckCircleFilled style={{ color: '#52c41a' }} /> : undefined,
                children: (
                  <div>
                    <div style={{ color: step.status === 'completed' ? '#52c41a' : step.status === 'current' ? '#5b5fc7' : '#999', fontWeight: step.status === 'current' ? 600 : 400, fontSize: '13px' }}>
                      {step.title}
                    </div>
                    {step.desc && <div style={{ color: '#666', fontSize: '12px', marginTop: '4px' }}>{step.desc}</div>}
                    {step.time && <div style={{ color: '#999', fontSize: '12px', marginTop: '2px' }}>{step.time}</div>}
                  </div>
                )
              }))}
            />
          </Card>
        </Col>
      </Row>

      {/* 底部信息区域 */}
      <Row gutter={16} style={{ marginTop: '16px' }}>
        {/* 乘客信息 */}
        <Col span={6}>
          <Card title="乘客信息" style={{ ...cardStyle }} bodyStyle={{ padding: '16px', minHeight: '220px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '16px' }}>
              <Avatar size={44} icon={<PhoneOutlined />} style={{ background: '#5b5fc7' }} />
              <div>
                <div style={{ fontWeight: 500, fontSize: '14px', color: '#333' }}>{selectedOrder?.userPhone || '138 **** 5678'}</div>
                <Tag color="success" style={{ marginTop: '4px', fontSize: '10px' }}>已认证</Tag>
              </div>
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>上车点</span>
                <EnvironmentFilled style={{ color: '#5b5fc7', fontSize: '12px', marginRight: '4px' }} />
                <span style={{ fontSize: '13px', color: '#333' }}>{selectedOrder?.startAddress || '软件园三期A区'}</span>
              </div>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>下车点</span>
                <EnvironmentFilled style={{ color: '#f5222d', fontSize: '12px', marginRight: '4px' }} />
                <span style={{ fontSize: '13px', color: '#333' }}>{selectedOrder?.endAddress || '万象城购物中心'}</span>
              </div>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>备注</span>
                <span style={{ fontSize: '13px', color: '#999' }}>{selectedOrder?.remark || '无备注'}</span>
              </div>
            </div>
          </Card>
        </Col>

        {/* 司机信息 */}
        <Col span={6}>
          <Card title="司机信息" style={{ ...cardStyle }} bodyStyle={{ padding: '16px', minHeight: '220px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '12px', marginBottom: '16px' }}>
              <Avatar size={44} icon={<CarFilled />} style={{ background: '#52c41a' }} />
              <div>
                <div style={{ fontWeight: 500, fontSize: '14px', color: '#333' }}>{selectedOrder?.driverName || '张师傅'}</div>
                <Tag color="success" style={{ marginTop: '4px', fontSize: '10px' }}>已认证</Tag>
              </div>
            </div>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>手机号</span>
                <span style={{ fontSize: '13px', color: '#333' }}>{selectedOrder?.driverPhone || '139 **** 2468'}</span>
                <PhoneOutlined style={{ color: '#5b5fc7', marginLeft: '4px', fontSize: '12px' }} />
              </div>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>车牌号</span>
                <span style={{ fontSize: '13px', color: '#333' }}>{selectedOrder?.carNo || '粤B · 12345'}</span>
              </div>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>车辆信息</span>
                <span style={{ fontSize: '13px', color: '#333' }}>白色 · 大众朗逸</span>
              </div>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                <span style={{ color: '#666', fontSize: '12px', width: '50px', flexShrink: 0 }}>服务评分</span>
                <StarFilled style={{ color: '#faad14', marginRight: '4px' }} />
                <span style={{ fontSize: '13px', color: '#333' }}>4.98分</span>
              </div>
            </div>
          </Card>
        </Col>

        {/* 实时数据 */}
        <Col span={6}>
          <Card title="实时数据" style={{ ...cardStyle }} bodyStyle={{ padding: '16px', minHeight: '220px' }}>
            <div style={{ display: 'flex', justifyContent: 'space-around', marginTop: '20px' }}>
              <div style={{ textAlign: 'center' }}>
                <div style={{ fontSize: '28px', fontWeight: 600, color: '#5b5fc7' }}>12.3</div>
                <div style={{ color: '#666', fontSize: '12px', marginTop: '4px' }}>公里</div>
                <div style={{ color: '#999', fontSize: '11px' }}>行驶里程</div>
              </div>
              <div style={{ textAlign: 'center' }}>
                <div style={{ fontSize: '28px', fontWeight: 600, color: '#5b5fc7' }}>28</div>
                <div style={{ color: '#666', fontSize: '12px', marginTop: '4px' }}>分钟</div>
                <div style={{ color: '#999', fontSize: '11px' }}>预计时长</div>
              </div>
              <div style={{ textAlign: 'center' }}>
                <div style={{ fontSize: '28px', fontWeight: 600, color: '#5b5fc7' }}>32</div>
                <div style={{ color: '#666', fontSize: '12px', marginTop: '4px' }}>公里/时</div>
                <div style={{ color: '#999', fontSize: '11px' }}>当前速度</div>
              </div>
            </div>
          </Card>
        </Col>

        {/* 费用明细 */}
        <Col span={6}>
          <Card title="费用明细" style={{ ...cardStyle }} bodyStyle={{ padding: '16px', minHeight: '220px' }}>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                <span style={{ color: '#666', fontSize: '12px' }}>起步价</span>
                <span style={{ fontSize: '13px', color: '#333' }}>8.00 元</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                <span style={{ color: '#666', fontSize: '12px' }}>里程费 (12.3公里)</span>
                <span style={{ fontSize: '13px', color: '#333' }}>10.20 元</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                <span style={{ color: '#666', fontSize: '12px' }}>时长费 (28分钟)</span>
                <span style={{ fontSize: '13px', color: '#333' }}>0.40 元</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                <span style={{ color: '#666', fontSize: '12px' }}>优惠券抵扣</span>
                <span style={{ fontSize: '13px', color: '#52c41a' }}>- 0.00 元</span>
              </div>
            </div>
            <div style={{ borderTop: '1px solid #f0f0f0', marginTop: '12px', paddingTop: '12px' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between' }}>
                <span style={{ fontWeight: 500, fontSize: '13px', color: '#333' }}>实付金额</span>
                <span style={{ fontWeight: 600, color: '#f5222d', fontSize: '16px' }}>{selectedOrder?.totalAmount ? `¥${selectedOrder.totalAmount} 元` : '¥18.60 元'}</span>
              </div>
            </div>
          </Card>
        </Col>
      </Row>

      {/* 页脚 */}
      <div style={{ textAlign: 'center', padding: '20px', color: '#999', fontSize: '12px' }}>
        © 2024 花小猪运营后台 版权所有 天津瑞庭科技有限公司
      </div>
    </div>
  )
}
