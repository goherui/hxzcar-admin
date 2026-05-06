import ReactECharts from 'echarts-for-react'

const stats = [
  { label: '总司机数', value: '12,568', change: '+8.52%' },
  { label: '在线司机', value: '2,458', change: '+7.86%' },
  { label: '新增司机', value: '156', change: '+12.3%' },
  { label: '活跃率', value: '68.5%', change: '+3.2%' },
  { label: '平均评分', value: '4.8', change: '+0.1' },
]

const cityRanking = [
  { rank: 1, city: '北京市', count: '2,345', ratio: '+12.5%' },
  { rank: 2, city: '上海市', count: '1,890', ratio: '+11.2%' },
  { rank: 3, city: '广州市', count: '1,567', ratio: '+10.8%' },
  { rank: 4, city: '深圳市', count: '1,456', ratio: '+8.7%' },
  { rank: 5, city: '成都市', count: '987', ratio: '+7.2%' },
]

const statusData = [
  { name: '在线', value: 68.5, color: '#4caf50' },
  { name: '离线', value: 22.3, color: '#9e9e9e' },
  { name: '休息', value: 9.2, color: '#ff9800' },
]

const carTypeData = [
  { name: '紧凑型', value: 45.6, color: '#7c4dff' },
  { name: '中型车', value: 32.3, color: '#2196f3' },
  { name: '豪华型', value: 15.8, color: '#ff9800' },
  { name: '新能源车', value: 6.3, color: '#4caf50' },
]

const trendData = {
  days: ['05-15', '05-16', '05-17', '05-18', '05-19', '05-20'],
  online: [2150, 2280, 2100, 2350, 2400, 2458],
  new: [120, 156, 98, 134, 189, 156],
}

function DriverDistribution() {
  const pieOption1 = {
    tooltip: { trigger: 'item' },
    legend: { orient: 'vertical', right: 10, top: 'center' },
    series: [{
      type: 'pie',
      radius: ['50%', '75%'],
      center: ['40%', '50%'],
      data: statusData.map(d => ({ ...d, itemStyle: { color: d.color } })),
    }],
  }

  const pieOption2 = {
    tooltip: { trigger: 'item' },
    legend: { orient: 'vertical', right: 10, top: 'center' },
    series: [{
      type: 'pie',
      radius: ['50%', '75%'],
      center: ['40%', '50%'],
      data: carTypeData.map(d => ({ ...d, itemStyle: { color: d.color } })),
    }],
  }

  const lineOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['在线司机', '新增司机'], top: 0 },
    grid: { left: '3%', right: '4%', bottom: '3%', top: 40, containLabel: true },
    xAxis: { type: 'category', data: trendData.days, axisLine: { lineStyle: { color: '#e2e8f0' } } },
    yAxis: [
      { type: 'value', axisLine: { show: false }, splitLine: { lineStyle: { color: '#f1f5f9' } } },
      { type: 'value', axisLine: { show: false }, splitLine: { show: false } },
    ],
    series: [
      {
        name: '在线司机',
        type: 'line',
        data: trendData.online,
        lineStyle: { color: '#3b82f6', width: 2 },
        smooth: true,
        areaStyle: { color: { type: 'linear', x: 0, y: 0, x2: 0, y2: 1, colorStops: [{ offset: 0, color: 'rgba(59, 130, 246, 0.2)' }, { offset: 1, color: 'rgba(59, 130, 246, 0.05)' }] } },
        symbol: 'circle',
        symbolSize: 6,
        itemStyle: { color: '#3b82f6' },
      },
      {
        name: '新增司机',
        type: 'line',
        yAxisIndex: 1,
        data: trendData.new,
        lineStyle: { color: '#10b981', width: 2 },
        smooth: true,
        symbol: 'circle',
        symbolSize: 6,
        itemStyle: { color: '#10b981' },
      },
    ],
  }

  return (
    <div style={{ padding: 24, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: 20, marginBottom: 24 }}>
        {stats.map((item, index) => (
          <div key={index} className="stat-card">
            <div className="stat-card-label">{item.label}</div>
            <div className="stat-card-value">{item.value}</div>
            <div className="stat-card-change">{item.change}</div>
          </div>
        ))}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: 20, marginBottom: 24 }}>
        <div className="chart-card">
          <div className="chart-card-title">城市分布图</div>
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
              <div style={{ fontSize: 64, marginBottom: 16, opacity: 0.6 }}>🗺️</div>
              <div style={{ fontSize: 14, fontWeight: 500, color: 'var(--text-secondary)' }}>中国地图</div>
              <div style={{ fontSize: 13, marginTop: 4 }}>司机分布可视化</div>
            </div>
          </div>
        </div>

        <div className="chart-card">
          <div className="chart-card-header">
            <span className="chart-card-title">城市司机数量TOP5</span>
          </div>
          <div style={{ marginTop: 16 }}>
            {cityRanking.map((item) => (
              <div key={item.rank} className="ranking-item">
                <div className={`ranking-number ${item.rank <= 3 ? `top${item.rank}` : 'other'}`}>{item.rank}</div>
                <div className="ranking-info">
                  <div className="ranking-city">{item.city}</div>
                  <div className="ranking-count">{item.count} 人</div>
                </div>
                <div className="ranking-change">{item.ratio}</div>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 20, marginBottom: 24 }}>
        <div className="chart-card">
          <div className="chart-card-title">司机在线趋势</div>
          <ReactECharts option={lineOption} style={{ height: 280, marginTop: 16 }} />
        </div>

        <div className="chart-card">
          <div className="chart-card-title">司机状态分布</div>
          <ReactECharts option={pieOption1} style={{ height: 280, marginTop: 16 }} />
        </div>
      </div>

      <div className="chart-card">
        <div className="chart-card-title">车辆类型分布</div>
        <ReactECharts option={pieOption2} style={{ height: 280, marginTop: 16 }} />
      </div>
    </div>
  )
}

export default DriverDistribution
