import { Card, Row, Col } from 'antd'
import ReactECharts from 'echarts-for-react'

const toolCards = [
  { id: 1, name: '邀请有礼', desc: '邀请好友打车，双方均得优惠券奖励', count: 532, color: 'purple' },
  { id: 2, name: '分享得券', desc: '分享活动链接，领取专属优惠券', count: 2650, color: 'green' },
  { id: 3, name: '任务中心', desc: '完成指定任务，获取奖励', count: 1256, color: 'blue' },
  { id: 4, name: '积分商城', desc: '积分兑换优惠券和礼品', count: 856, color: 'orange' },
  { id: 5, name: '会员奖励', desc: '会员专属权益，尊享更多优惠', count: 436, color: 'red' },
  { id: 6, name: '周末促销', desc: '周末专属优惠活动', count: 1860, color: 'purple' },
]

const trendData = {
  days: ['05-15', '05-16', '05-17', '05-18', '05-19', '05-20'],
  invite: [1200, 1350, 1180, 1420, 1580, 1650],
  share: [850, 920, 880, 950, 1050, 1120],
  task: [620, 680, 720, 690, 750, 780],
}

const channelData = [
  { name: '邀请有礼', value: 35.8, color: '#7c4dff' },
  { name: '分享得券', value: 28.6, color: '#4caf50' },
  { name: '任务中心', value: 18.2, color: '#2196f3' },
  { name: '积分商城', value: 10.4, color: '#ff9800' },
  { name: '其他', value: 7.0, color: '#9e9e9e' },
]

const activityRanking = [
  { rank: 1, name: '周末出行满减10元', value: 28800, color: 'gold' },
  { rank: 2, name: '新用户首单减10', value: 18500, color: 'silver' },
  { rank: 3, name: '邀请好友奖励', value: 12600, color: 'bronze' },
  { rank: 4, name: '五一出行补贴', value: 8900, color: 'gray' },
  { rank: 5, name: '分享得券活动', value: 6500, color: 'gray' },
]

function MarketingTools() {
  const lineOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['邀请有礼', '分享得券', '任务中心'] },
    grid: { left: '3%', right: '4%', bottom: '3%', containLabel: true },
    xAxis: { type: 'category', data: trendData.days },
    yAxis: { type: 'value' },
    series: [
      {
        name: '邀请有礼',
        type: 'line',
        data: trendData.invite,
        lineStyle: { color: '#7c4dff', width: 3 },
        smooth: true,
      },
      {
        name: '分享得券',
        type: 'line',
        data: trendData.share,
        lineStyle: { color: '#4caf50', width: 3 },
        smooth: true,
      },
      {
        name: '任务中心',
        type: 'line',
        data: trendData.task,
        lineStyle: { color: '#2196f3', width: 3 },
        smooth: true,
      },
    ],
  }

  const pieOption = {
    tooltip: { trigger: 'item' },
    legend: { orient: 'vertical', right: 10, top: 'center' },
    series: [{
      type: 'pie',
      radius: ['45%', '70%'],
      center: ['35%', '50%'],
      data: channelData.map(d => ({ ...d, itemStyle: { color: d.color } })),
    }],
  }

  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <h2 style={{ fontSize: 18, fontWeight: 'bold', color: '#333', marginBottom: 20 }}>营销工具</h2>

      <Row gutter={16} style={{ marginBottom: 20 }}>
        {toolCards.map((item) => (
          <Col span={4} key={item.id}>
            <Card 
              className="stat-card hover:shadow-lg"
              style={{ cursor: 'pointer', transition: 'all 0.3s' }}
            >
              <div className="stat-card-icon" style={{ background: `${item.color}20` }}>
                <span style={{ color: item.color }}>🎯</span>
              </div>
              <div className="stat-card-value" style={{ fontSize: 24 }}>{item.count}</div>
              <div className="stat-card-label" style={{ fontSize: 14 }}>{item.name}</div>
              <div style={{ fontSize: 12, color: '#999', marginTop: 4 }}>{item.desc}</div>
            </Card>
          </Col>
        ))}
      </Row>

      <Row gutter={16}>
        <Col span={12}>
          <Card title="营销数据趋势" className="trend-chart-card">
            <ReactECharts option={lineOption} style={{ height: 300 }} />
          </Card>
        </Col>

        <Col span={12}>
          <Card title="渠道效果占比" className="pie-chart-card">
            <ReactECharts option={pieOption} style={{ height: 300 }} />
          </Card>
        </Col>
      </Row>

      <Row gutter={16} style={{ marginTop: 16 }}>
        <Col span={12}>
          <Card title="活动效果TOP5" className="table-card">
            <div style={{ padding: 12 }}>
              {activityRanking.map((item) => (
                <div key={item.rank} style={{ display: 'flex', alignItems: 'center', padding: 12, borderBottom: '1px solid #f0f0f0' }}>
                  <div className={`ranking-number ${item.rank <= 3 ? `top${item.rank}` : 'other'}`}>{item.rank}</div>
                  <div style={{ flex: 1, marginLeft: 12 }}>
                    <div style={{ fontWeight: 'bold', color: '#333' }}>{item.name}</div>
                  </div>
                  <div style={{ color: '#7c4dff', fontWeight: 'bold' }}>{item.value.toLocaleString()}</div>
                </div>
              ))}
            </div>
          </Card>
        </Col>

        <Col span={12}>
          <Card title="营销工具概览" className="trend-chart-card">
            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 12 }}>
              <div style={{ background: '#fafafa', padding: 16, borderRadius: 8, textAlign: 'center' }}>
                <div style={{ fontSize: 28, fontWeight: 'bold', color: '#7c4dff' }}>12,388</div>
                <div style={{ fontSize: 12, color: '#999', marginTop: 4 }}>累计参与用户</div>
              </div>
              <div style={{ background: '#fafafa', padding: 16, borderRadius: 8, textAlign: 'center' }}>
                <div style={{ fontSize: 28, fontWeight: 'bold', color: '#52c41a' }}>8,652</div>
                <div style={{ fontSize: 12, color: '#999', marginTop: 4 }}>成功转化用户</div>
              </div>
              <div style={{ background: '#fafafa', padding: 16, borderRadius: 8, textAlign: 'center' }}>
                <div style={{ fontSize: 28, fontWeight: 'bold', color: '#2196f3' }}>69.8%</div>
                <div style={{ fontSize: 12, color: '#999', marginTop: 4 }}>转化率</div>
              </div>
              <div style={{ background: '#fafafa', padding: 16, borderRadius: 8, textAlign: 'center' }}>
                <div style={{ fontSize: 28, fontWeight: 'bold', color: '#ff9800' }}>¥45.6</div>
                <div style={{ fontSize: 12, color: '#999', marginTop: 4 }}>平均客单价提升</div>
              </div>
            </div>
          </Card>
        </Col>
      </Row>
    </div>
  )
}

export default MarketingTools