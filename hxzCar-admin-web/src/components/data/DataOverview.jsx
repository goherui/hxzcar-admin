import { Select, Button } from 'antd'
import ReactECharts from 'echarts-for-react'

const { Option } = Select

const stats = [
  { label: '订单总量', value: '125,689', change: '+12.68%' },
  { label: '完成订单量', value: '112,548', change: '+10.21%' },
  { label: 'GMV(元)', value: '2,158,826.60', change: '+8.65%' },
  { label: '活跃用户数', value: '86,832', change: '+8.32%' },
  { label: '活跃司机数', value: '24,568', change: '+7.68%' },
  { label: '平均客单价(元)', value: '17.08', change: '-1.38%' },
]

const trendData = {
  hours: ['00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '18:00', '21:00', '23:00'],
  orders: [4200, 5800, 9500, 12500, 14800, 15200, 14500, 11800, 8200],
  completed: [3800, 5200, 8600, 11200, 13500, 13800, 13200, 10500, 7500],
}

const sourceData = [
  { name: '花小猪APP', value: 72.35, color: '#7c4dff' },
  { name: '微信小程序', value: 19.26, color: '#4caf50' },
  { name: 'H5端', value: 6.12, color: '#2196f3' },
  { name: '其他', value: 2.27, color: '#9e9e9e' },
]

function DataOverview() {
  const lineOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['订单总量', '完成订单量'], top: 0 },
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
        areaStyle: {
          color: {
            type: 'linear',
            x: 0, y: 0, x2: 0, y2: 1,
            colorStops: [
              { offset: 0, color: 'rgba(124, 77, 255, 0.3)' },
              { offset: 1, color: 'rgba(124, 77, 255, 0.05)' },
            ],
          },
        },
        symbol: 'circle',
        symbolSize: 6,
        itemStyle: { color: '#7c4dff' },
      },
      {
        name: '完成订单量',
        type: 'line',
        data: trendData.completed,
        lineStyle: { color: '#3b82f6', width: 2 },
        smooth: true,
        areaStyle: {
          color: {
            type: 'linear',
            x: 0, y: 0, x2: 0, y2: 1,
            colorStops: [
              { offset: 0, color: 'rgba(59, 130, 246, 0.2)' },
              { offset: 1, color: 'rgba(59, 130, 246, 0.05)' },
            ],
          },
        },
        symbol: 'circle',
        symbolSize: 6,
        itemStyle: { color: '#3b82f6' },
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
      data: sourceData.map(d => ({ ...d, itemStyle: { color: d.color, borderRadius: 4 } })),
      label: { show: true, formatter: '{b}\n{d}%', fontSize: 12 },
      labelLine: { show: true },
    }],
  }

  return (
    <div style={{ padding: 24, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 24 }}>
        <div>
          <div style={{ fontSize: 18, fontWeight: 600, color: 'var(--text-primary)' }}>数据总览</div>
          <div style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 4 }}>实时数据概览与趋势分析</div>
        </div>
        <div style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
          <Button type="primary">今日</Button>
          <Button>昨日</Button>
          <Button>近7天</Button>
          <Button>近30天</Button>
          <Select defaultValue="2024-05-20" style={{ width: 150 }}>
            <Option value="2024-05-20">2024-05-20</Option>
            <Option value="2024-05-19">2024-05-19</Option>
          </Select>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(6, 1fr)', gap: 20, marginBottom: 24 }}>
        {stats.map((item, index) => (
          <div key={index} className="stat-card">
            <div className="stat-card-label">{item.label}</div>
            <div className="stat-card-value">{item.value}</div>
            <div className={`stat-card-change ${item.change.startsWith('+') ? '' : 'negative'}`}>
              {item.change}
            </div>
          </div>
        ))}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: 20, marginBottom: 24 }}>
        <div className="chart-card">
          <div className="chart-card-header">
            <span className="chart-card-title">订单趋势</span>
            <div style={{ display: 'flex', gap: 12 }}>
              <Select defaultValue="全部城市" style={{ width: 120 }}>
                <Option value="all">全部城市</Option>
                <Option value="beijing">北京市</Option>
              </Select>
              <Select defaultValue="按小时" style={{ width: 100 }}>
                <Option value="hour">按小时</Option>
                <Option value="day">按天</Option>
              </Select>
            </div>
          </div>
          <ReactECharts option={lineOption} style={{ height: 320, marginTop: 16 }} />
        </div>

        <div className="chart-card">
          <div className="chart-card-title">订单来源占比</div>
          <ReactECharts option={pieOption} style={{ height: 350, marginTop: 16 }} />
        </div>
      </div>

      <div className="chart-card">
        <div className="chart-card-header">
          <span className="chart-card-title">实时订单热力图</span>
          <Select defaultValue="全部城市" style={{ width: 140 }}>
            <Option value="all">全部城市</Option>
          </Select>
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
          <div style={{ textAlign: 'center', color: 'var(--text-muted)' }}>
            <div style={{ fontSize: 72, marginBottom: 16, opacity: 0.5 }}>🗺️</div>
            <div style={{ fontSize: 16, fontWeight: 500, color: 'var(--text-secondary)' }}>中国地图</div>
            <div style={{ fontSize: 14, marginTop: 4 }}>订单热力分布可视化</div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default DataOverview
