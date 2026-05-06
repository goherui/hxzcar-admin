import { Table, Button, Tag } from 'antd'
import ReactECharts from 'echarts-for-react'

const groupData = [
  { id: 'G001', name: '高频用户', users: '12,580', avgOrders: '18.5', avgAmount: '680.50', retention: '78.5%', action: '查看' },
  { id: 'G002', name: '新用户', users: '8,320', avgOrders: '2.1', avgAmount: '45.80', retention: '32.3%', action: '查看' },
  { id: 'G003', name: '沉睡用户', users: '5,680', avgOrders: '1.2', avgAmount: '32.50', retention: '8.2%', action: '唤醒' },
  { id: 'G004', name: '高消费用户', users: '2,150', avgOrders: '12.3', avgAmount: '1,520.80', retention: '85.6%', action: '查看' },
  { id: 'G005', name: '优惠券用户', users: '15,890', avgOrders: '4.5', avgAmount: '128.60', retention: '45.2%', action: '查看' },
]

const statCards = [
  { label: '总用户数', value: '868,325', change: '+12.35%' },
  { label: '活跃用户', value: '762,538', change: '+10.36%' },
  { label: '留存率', value: '98.7%', change: '+2.1%' },
  { label: '平均订单', value: '10.95', change: '+1.3%' },
  { label: '客单价', value: '68.50', change: '+2.8%' },
  { label: '转化率', value: '32.5%', change: '+1.5%' },
]

const retentionData = {
  days: ['D1', 'D3', 'D7', 'D14', 'D30'],
  new: [85, 68, 52, 45, 38],
  active: [95, 88, 82, 78, 72],
}

const groupTypeData = [
  { name: '高频用户', value: 18.5, color: '#7c4dff' },
  { name: '新用户', value: 28.3, color: '#3b82f6' },
  { name: '沉睡用户', value: 10.1, color: '#94a3b8' },
  { name: '高消费用户', value: 3.8, color: '#f59e0b' },
  { name: '优惠券用户', value: 39.3, color: '#10b981' },
]

function UserGroup() {
  const columns = [
    { title: '分组ID', dataIndex: 'id', key: 'id', width: 90 },
    { 
      title: '分组名称', 
      dataIndex: 'name', 
      key: 'name', 
      width: 120,
      render: (text) => {
        const colors = {
          '高频用户': 'purple',
          '新用户': 'blue',
          '沉睡用户': 'default',
          '高消费用户': 'orange',
          '优惠券用户': 'green',
        }
        return <Tag color={colors[text]}>{text}</Tag>
      },
    },
    { title: '用户数', dataIndex: 'users', key: 'users', width: 100, align: 'right' },
    { title: '平均订单', dataIndex: 'avgOrders', key: 'avgOrders', width: 100, align: 'right' },
    { 
      title: '平均消费', 
      dataIndex: 'avgAmount', 
      key: 'avgAmount', 
      width: 120, 
      align: 'right',
      render: (text) => <span style={{ fontWeight: 500 }}>¥{text}</span>,
    },
    { 
      title: '7日留存', 
      dataIndex: 'retention', 
      key: 'retention', 
      width: 100, 
      align: 'right',
      render: (text) => {
        const rate = parseFloat(text)
        const color = rate >= 70 ? '#10b981' : rate >= 40 ? '#f59e0b' : '#ef4444'
        return <span style={{ color, fontWeight: 500 }}>{text}</span>
      },
    },
    {
      title: '操作',
      key: 'action',
      width: 80,
      render: (_, record) => (
        <Button type="link" size="small">{record.action}</Button>
      ),
    },
  ]

  const lineOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['新用户留存', '活跃用户留存'], top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', top: 40, containLabel: true },
    xAxis: { type: 'category', data: retentionData.days, axisLine: { lineStyle: { color: '#e2e8f0' } } },
    yAxis: { type: 'value', axisLine: { show: false }, splitLine: { lineStyle: { color: '#f1f5f9' } }, axisLabel: { formatter: '{value}%' } },
    series: [
      {
        name: '新用户留存',
        type: 'line',
        data: retentionData.new,
        lineStyle: { color: '#7c4dff', width: 2 },
        smooth: true,
        symbol: 'circle',
        symbolSize: 6,
      },
      {
        name: '活跃用户留存',
        type: 'line',
        data: retentionData.active,
        lineStyle: { color: '#3b82f6', width: 2 },
        smooth: true,
        symbol: 'circle',
        symbolSize: 6,
      },
    ],
  }

  const pieOption = {
    tooltip: { trigger: 'item' },
    legend: { orient: 'vertical', right: 10, top: 'center', itemGap: 12 },
    series: [{
      type: 'pie',
      radius: ['50%', '75%'],
      center: ['40%', '50%'],
      data: groupTypeData.map(d => ({ ...d, itemStyle: { color: d.color, borderRadius: 4 } })),
      label: { show: true, formatter: '{b}\n{d}%', fontSize: 12 },
    }],
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

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1.5fr', gap: 20, marginBottom: 20 }}>
        <div className="chart-card" style={{ minHeight: 400 }}>
          <div className="chart-card-header">
            <span className="chart-card-title">用户活跃度热力图</span>
          </div>
          <div style={{ 
            height: 'calc(100% - 52px)', 
            background: '#f8fafc', 
            borderRadius: 'var(--radius-md)', 
            display: 'flex', 
            alignItems: 'center', 
            justifyContent: 'center',
            marginTop: 16,
          }}>
            <div className="empty-state">
              <div className="empty-state-icon">📊</div>
              <div className="empty-state-text">活跃度热力图区域</div>
            </div>
          </div>
        </div>

        <div className="content-card">
          <div className="content-header">
            <span className="content-title">用户分群</span>
            <Button type="primary">新建分组</Button>
          </div>
          <div className="table-wrapper">
            <Table
              dataSource={groupData}
              columns={columns}
              pagination={{ pageSize: 8 }}
              rowKey="id"
              bordered={false}
              style={{ fontSize: 13 }}
            />
          </div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 20 }}>
        <div className="chart-card">
          <div className="chart-card-title">用户留存分析</div>
          <ReactECharts option={lineOption} style={{ height: 280, marginTop: 16 }} />
        </div>

        <div className="chart-card">
          <div className="chart-card-title">分组类型分布</div>
          <ReactECharts option={pieOption} style={{ height: 280, marginTop: 16 }} />
        </div>
      </div>
    </div>
  )
}

export default UserGroup
