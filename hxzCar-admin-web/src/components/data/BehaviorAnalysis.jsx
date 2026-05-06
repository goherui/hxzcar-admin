import { Select, Button, Input } from 'antd'
import ReactECharts from 'echarts-for-react'

const { Option } = Select

const summaryStats = [
  { label: '活跃用户', value: '86,825', change: '+12.03%' },
  { label: '新增用户', value: '762,538', change: '+18.76%' },
  { label: '订单数', value: '93,787', change: '+10.95%' },
  { label: 'GMV(元)', value: '12,856,226.60', change: '+10.85%' },
  { label: '客单价', value: '16.83', change: '-1.38%' },
]

const trendData = {
  days: ['05-14', '05-15', '05-16', '05-17', '05-18', '05-19', '05-20'],
  orders: [82000, 88000, 91000, 87000, 92000, 95000, 93787],
  completed: [75000, 81000, 84000, 80000, 85000, 88000, 86825],
}

const orderTypeData = [
  { name: '快车', value: 68.37, color: '#7c4dff' },
  { name: '特惠快车', value: 17.38, color: '#f59e0b' },
  { name: '出租车', value: 12.36, color: '#3b82f6' },
  { name: '其他', value: 1.89, color: '#94a3b8' },
]

function BehaviorAnalysis() {
  const barOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['订单总量', '完成订单量'], top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', top: 40, containLabel: true },
    xAxis: { type: 'category', data: trendData.days, axisLine: { lineStyle: { color: '#e2e8f0' } } },
    yAxis: { type: 'value', axisLine: { show: false }, splitLine: { lineStyle: { color: '#f1f5f9' } } },
    series: [
      {
        name: '订单总量',
        type: 'bar',
        data: trendData.orders,
        itemStyle: { color: '#7c4dff', borderRadius: [4, 4, 0, 0] },
      },
      {
        name: '完成订单量',
        type: 'bar',
        data: trendData.completed,
        itemStyle: { color: '#3b82f6', borderRadius: [4, 4, 0, 0] },
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
      data: orderTypeData.map(d => ({ ...d, itemStyle: { color: d.color, borderRadius: 4 } })),
      label: { show: true, formatter: '{b}\n{d}%', fontSize: 12 },
      labelLine: { show: true },
    }],
  }

  return (
    <div style={{ padding: 24, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 24 }}>
        <div>
          <div style={{ fontSize: 18, fontWeight: 600, color: 'var(--text-primary)' }}>行为分析</div>
          <div style={{ fontSize: 13, color: 'var(--text-muted)', marginTop: 4 }}>用户行为数据与转化分析</div>
        </div>
        <div style={{ display: 'flex', gap: 8, alignItems: 'center' }}>
          <Button type="primary">日</Button>
          <Button>周</Button>
          <Button>月</Button>
          <Input placeholder="开始日期" style={{ width: 120 }} />
          <span style={{ color: 'var(--text-muted)' }}>~</span>
          <Input placeholder="结束日期" style={{ width: 120 }} />
          <Button type="primary">查询</Button>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: 20, marginBottom: 24 }}>
        {summaryStats.map((item, index) => (
          <div key={index} className="stat-card">
            <div className="stat-card-label">{item.label}</div>
            <div className="stat-card-value">{item.value}</div>
            <div className={`stat-card-change ${item.change.startsWith('+') ? '' : 'negative'}`}>
              {item.change}
            </div>
          </div>
        ))}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1.5fr', gap: 20, marginBottom: 24 }}>
        <div className="chart-card">
          <div className="chart-card-title">订单趋势</div>
          <ReactECharts option={barOption} style={{ height: 350, marginTop: 16 }} />
        </div>

        <div className="chart-card">
          <div className="chart-card-title">订单类型占比</div>
          <ReactECharts option={pieOption} style={{ height: 350, marginTop: 16 }} />
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 20 }}>
        <div className="chart-card">
          <div className="chart-card-title">用户行为漏斗</div>
          <div style={{ 
            height: 220, 
            background: '#f8fafc', 
            borderRadius: 'var(--radius-md)', 
            display: 'flex', 
            alignItems: 'center', 
            justifyContent: 'center',
            marginTop: 16,
          }}>
            <div style={{ textAlign: 'center', color: 'var(--text-muted)' }}>
              <div style={{ fontSize: 56, marginBottom: 16, opacity: 0.5 }}>📊</div>
              <div style={{ fontSize: 14, fontWeight: 500, color: 'var(--text-secondary)' }}>用户行为漏斗图</div>
              <div style={{ fontSize: 13, marginTop: 4 }}>展示用户从浏览到下单的转化路径</div>
            </div>
          </div>
        </div>

        <div className="chart-card">
          <div className="chart-card-title">留存分析</div>
          <div style={{ 
            height: 220, 
            background: '#f8fafc', 
            borderRadius: 'var(--radius-md)', 
            display: 'flex', 
            alignItems: 'center', 
            justifyContent: 'center',
            marginTop: 16,
          }}>
            <div style={{ textAlign: 'center', color: 'var(--text-muted)' }}>
              <div style={{ fontSize: 56, marginBottom: 16, opacity: 0.5 }}>🔄</div>
              <div style={{ fontSize: 14, fontWeight: 500, color: 'var(--text-secondary)' }}>留存分析图表</div>
              <div style={{ fontSize: 13, marginTop: 4 }}>新用户次日/7日/30日留存率</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default BehaviorAnalysis
