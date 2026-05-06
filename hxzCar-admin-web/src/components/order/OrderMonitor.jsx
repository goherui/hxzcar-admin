import { Table, Tag, Button } from 'antd'
import ReactECharts from 'echarts-for-react'

const monitorData = [
  {
    id: '2024052012345678901',
    time: '2024-05-20 14:23:45',
    from: '北京市 朝阳区望京街道',
    to: '北京市 海淀区中关村',
    type: '快车',
    status: '进行中',
    amount: '34.17',
    driver: '张师傅',
    carNo: '京B12345',
  },
  {
    id: '2024052012345678902',
    time: '2024-05-20 14:23:42',
    from: '上海市 浦东新区陆家嘴',
    to: '上海市 静安区南京西路',
    type: '快车',
    status: '已完成',
    amount: '45.00',
    driver: '王师傅',
    carNo: '沪A67890',
  },
  {
    id: '2024052012345678903',
    time: '2024-05-20 14:23:40',
    from: '广州市 天河区体育西路',
    to: '广州市 海珠区客村',
    type: '特惠快车',
    status: '已完成',
    amount: '18.00',
    driver: '刘师傅',
    carNo: '粤A11111',
  },
  {
    id: '2024052012345678904',
    time: '2024-05-20 14:23:38',
    from: '广州市 天河区科技园',
    to: '广州市 番禺区汉溪长隆',
    type: '特惠快车',
    status: '已完成',
    amount: '25.00',
    driver: '陈师傅',
    carNo: '粤A22222',
  },
  {
    id: '2024052012345678905',
    time: '2024-05-20 14:23:36',
    from: '深圳市 南山区科技园',
    to: '深圳市 福田区会展中心',
    type: '快车',
    status: '已取消',
    amount: '0.00',
    driver: '杨师傅',
    carNo: '粤B33333',
  },
]

const statCards = [
  { label: '总订单量', value: '1,256,987', change: '+12.35%' },
  { label: '进行中', value: '8,526', change: '+8.32%' },
  { label: '已完成', value: '1,248,461', change: '+12.56%' },
  { label: '异常订单', value: '124', change: '+12.5%' },
  { label: '取消订单', value: '70', change: '+5.2%' },
  { label: '取消率', value: '0.5%', change: '-1.2%' },
]

const trendData = {
  hours: ['00:00', '04:00', '08:00', '12:00', '16:00', '20:00', '24:00'],
  orders: [32000, 18000, 85000, 125000, 138000, 142000, 95000],
  completed: [30000, 16500, 78000, 118000, 132000, 135000, 88000],
}

const cityData = [
  { name: '北京', value: 2345, ratio: '+12.5%' },
  { name: '上海', value: 1890, ratio: '+11.2%' },
  { name: '广州', value: 1567, ratio: '+10.8%' },
  { name: '深圳', value: 1456, ratio: '+8.7%' },
  { name: '成都', value: 987, ratio: '+7.2%' },
]

function OrderMonitor() {
  const columns = [
    { 
      title: '订单号', 
      dataIndex: 'id', 
      key: 'id', 
      width: 160,
      ellipsis: true,
    },
    { 
      title: '下单时间', 
      dataIndex: 'time', 
      key: 'time', 
      width: 160,
    },
    { 
      title: '出发地', 
      dataIndex: 'from', 
      key: 'from', 
      ellipsis: true,
    },
    { 
      title: '目的地', 
      dataIndex: 'to', 
      key: 'to', 
      ellipsis: true,
    },
    { 
      title: '订单类型', 
      dataIndex: 'type', 
      key: 'type', 
      width: 100,
      render: (text) => {
        const color = text === '特惠快车' ? 'orange' : 'purple'
        return <Tag color={color}>{text}</Tag>
      },
    },
    {
      title: '状态',
      dataIndex: 'status',
      key: 'status',
      width: 90,
      render: (status) => {
        const color = status === '已完成' ? 'success' : status === '进行中' ? 'processing' : status === '已取消' ? 'warning' : 'error'
        return <Tag color={color}>{status}</Tag>
      },
    },
    { 
      title: '金额', 
      dataIndex: 'amount', 
      key: 'amount', 
      width: 80,
      align: 'right',
      render: (text) => <span style={{ fontWeight: 500 }}>¥{text}</span>,
    },
    { 
      title: '操作', 
      key: 'action', 
      width: 60,
      render: () => <Button type="link" size="small">追踪</Button>,
    },
  ]

  const lineOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['订单总量', '完成订单'], top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', top: 40, containLabel: true },
    xAxis: { type: 'category', data: trendData.hours, axisLine: { lineStyle: { color: '#e2e8f0' } } },
    yAxis: { type: 'value', axisLine: { show: false }, splitLine: { lineStyle: { color: '#f1f5f9' } } },
    series: [
      {
        name: '订单总量',
        type: 'line',
        data: trendData.orders,
        lineStyle: { color: '#7c4dff', width: 2 },
        smooth: true,
        areaStyle: { color: { type: 'linear', x: 0, y: 0, x2: 0, y2: 1, colorStops: [{ offset: 0, color: 'rgba(124, 77, 255, 0.3)' }, { offset: 1, color: 'rgba(124, 77, 255, 0.05)' }] } },
        symbol: 'circle',
        symbolSize: 6,
      },
      {
        name: '完成订单',
        type: 'line',
        data: trendData.completed,
        lineStyle: { color: '#3b82f6', width: 2 },
        smooth: true,
        symbol: 'circle',
        symbolSize: 6,
      },
    ],
  }

  return (
    <div className="page-container">
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(6, 1fr)', gap: 20 }}>
        {statCards.map((card, index) => (
          <div key={index} className="stat-card">
            <div className="stat-card-label">{card.label}</div>
            <div className="stat-card-value">{card.value}</div>
            <div className="stat-card-change">{card.change}</div>
          </div>
        ))}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1.5fr 1fr', gap: 20, marginBottom: 20 }}>
        <div className="chart-card">
          <div className="chart-card-header">
            <span className="chart-card-title">实时订单地图</span>
          </div>
          <div style={{ 
            height: 380, 
            background: '#f8fafc', 
            borderRadius: 'var(--radius-md)', 
            display: 'flex', 
            alignItems: 'center', 
            justifyContent: 'center',
            marginTop: 16,
          }}>
            <div className="empty-state">
              <div className="empty-state-icon">🗺️</div>
              <div className="empty-state-text">地图展示区域</div>
            </div>
          </div>
        </div>

        <div className="content-card">
          <div className="content-header">
            <span className="content-title">最新订单</span>
            <Button className="btn-secondary">刷新</Button>
          </div>
          <div className="table-wrapper">
            <Table
              dataSource={monitorData}
              columns={columns}
              pagination={false}
              rowKey="id"
              bordered={false}
              style={{ fontSize: 13 }}
            />
          </div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: 20 }}>
        <div className="chart-card">
          <div className="chart-card-title">订单趋势</div>
          <ReactECharts option={lineOption} style={{ height: 280, marginTop: 16 }} />
        </div>

        <div className="chart-card">
          <div className="chart-card-title">城市订单排名</div>
          <div style={{ marginTop: 16 }}>
            {cityData.map((item, index) => (
              <div key={index} className="ranking-item">
                <div className={`ranking-number ${index < 3 ? `top${index + 1}` : 'other'}`}>{index + 1}</div>
                <div className="ranking-info">
                  <div className="ranking-city">{item.name}</div>
                  <div className="ranking-count">{item.value.toLocaleString()} 单</div>
                </div>
                <div className="ranking-change">{item.ratio}</div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  )
}

export default OrderMonitor
