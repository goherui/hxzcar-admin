import { Card, Tag } from 'antd'
import ReactECharts from 'echarts-for-react'
import { useNavigate, useLocation } from 'react-router-dom'

const allUsers = [
  { id: '100001', name: '张三', phone: '138****1234', status: '正常', regTime: '2024-05-10 10:30:00', lastLogin: '2024-05-20 14:23:45', channel: '花小猪APP', city: '北京市', device: 'iPhone 15 Pro', system: 'iOS 17.4' },
  { id: '100002', name: '李四', phone: '139****5678', status: '正常', regTime: '2024-05-09 11:20:00', lastLogin: '2024-05-20 13:15:30', channel: '微信小程序', city: '上海市', device: '华为Mate 60', system: 'HarmonyOS 4.0' },
  { id: '100003', name: '王五', phone: '137****9012', status: '待激活', regTime: '2024-05-15 09:45:00', lastLogin: '-', channel: '支付宝小程序', city: '广州市', device: '小米14', system: 'Android 14' },
  { id: '100004', name: '赵六', phone: '136****3456', status: '正常', regTime: '2024-05-08 14:30:00', lastLogin: '2024-05-19 16:45:20', channel: '花小猪APP', city: '深圳市', device: 'iPhone 14', system: 'iOS 16.5' },
  { id: '100005', name: '钱七', phone: '135****7890', status: '禁用', regTime: '2024-05-05 10:00:00', lastLogin: '2024-05-18 09:30:15', channel: 'H5端', city: '杭州市', device: 'OPPO Find X7', system: 'Android 13' },
]

const getUserData = (userId) => {
  const user = allUsers.find(u => u.id === userId)
  if (!user) return null
  
  const orderCounts = {
    '100001': { total: '56', completed: '52', coupon: '4', amount: '2,186.50' },
    '100002': { total: '128', completed: '120', coupon: '8', amount: '5,198.00' },
    '100003': { total: '3', completed: '2', coupon: '1', amount: '126.00' },
    '100004': { total: '89', completed: '85', coupon: '6', amount: '3,566.80' },
    '100005': { total: '23', completed: '20', coupon: '3', amount: '928.00' },
  }
  
  const counts = orderCounts[userId] || { total: '0', completed: '0', coupon: '0', amount: '0.00' }
  
  return {
    ...user,
    stats: [
      { label: '订单总数', value: counts.total, change: '+12.5%' },
      { label: '已完成', value: counts.completed, change: '+10.2%' },
      { label: '优惠券', value: counts.coupon, change: '-5.0%' },
      { label: '累计消费', value: counts.amount, change: '+15.3%' },
    ],
    weeklyData: [
      { day: '周一', value: Math.random() * 10 + 2 },
      { day: '周二', value: Math.random() * 10 + 2 },
      { day: '周三', value: Math.random() * 10 + 2 },
      { day: '周四', value: Math.random() * 10 + 2 },
      { day: '周五', value: Math.random() * 15 + 5 },
      { day: '周六', value: Math.random() * 20 + 10 },
      { day: '周日', value: Math.random() * 15 + 8 },
    ],
    orderTypeData: [
      { name: '快车', value: 324, percent: 67.7 },
      { name: '特惠快车', value: 108, percent: 22.5 },
      { name: '出租车', value: 36, percent: 7.5 },
      { name: '其他', value: 11, percent: 2.3 },
    ],
  }
}

function UserPortrait() {
  const navigate = useNavigate()
  const location = useLocation()
  
  const userId = new URLSearchParams(location.search).get('id')
  const userData = userId ? getUserData(userId) : null

  if (!userData) {
    return (
      <div style={{ padding: 20, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
        <div className="chart-card">
          <div className="chart-card-header">
            <span className="chart-card-title">用户画像</span>
            <div style={{ display: 'flex', gap: 10 }}>
              <button className="btn-primary">编辑用户</button>
              <button className="btn-secondary" onClick={() => navigate('/user-list')}>返回列表</button>
            </div>
          </div>
          <div className="empty-state">
            <div className="empty-state-icon">👤</div>
            <div className="empty-state-text">请从用户列表中选择一个用户查看画像</div>
          </div>
        </div>
      </div>
    )
  }

  const lineChartOption = {
    grid: { top: 20, right: 20, bottom: 30, left: 50 },
    xAxis: { type: 'category', data: userData.weeklyData.map(d => d.day), axisLine: { lineStyle: { color: '#e2e8f0' } } },
    yAxis: { type: 'value', axisLine: { show: false }, splitLine: { lineStyle: { color: '#f1f5f9' } } },
    series: [{ type: 'line', data: userData.weeklyData.map(d => d.value), smooth: true, lineStyle: { color: '#3b82f6', width: 2 }, areaStyle: { color: { type: 'linear', x: 0, y: 0, x2: 0, y2: 1, colorStops: [{ offset: 0, color: 'rgba(59, 130, 246, 0.3)' }, { offset: 1, color: 'rgba(59, 130, 246, 0.05)' }] } }, symbol: 'circle', symbolSize: 6, itemStyle: { color: '#3b82f6' } }],
  }

  const pieChartOption = {
    series: [{ type: 'pie', radius: ['55%', '75%'], center: ['50%', '50%'], data: userData.orderTypeData.map(d => ({ name: d.name, value: d.percent })), itemStyle: { borderRadius: 4 }, label: { show: true, formatter: '{b}: {d}%' }, labelLine: { show: true } }],
  }

  return (
    <div style={{ padding: 20, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div className="chart-card">
        <div className="chart-card-header">
          <span className="chart-card-title">用户画像</span>
          <div style={{ display: 'flex', gap: 10 }}>
            <button className="btn-primary">编辑用户</button>
            <button className="btn-secondary" onClick={() => navigate('/user-list')}>返回列表</button>
          </div>
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr 2fr', gap: 24 }}>
          <div className="chart-card" style={{ padding: 20 }}>
            <div className="section-title">基本信息</div>
            <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', marginBottom: 24 }}>
              <div style={{ width: 80, height: 80, borderRadius: '50%', background: 'linear-gradient(135deg, #3b82f6 0%, #2563eb 100%)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 32, fontWeight: 600, marginBottom: 12 }}>
                {userData.name.charAt(0)}
              </div>
              <div style={{ fontSize: 18, fontWeight: 600 }}>{userData.name}</div>
              <Tag color="blue" style={{ marginTop: 8 }}>{userData.channel}</Tag>
            </div>
            <div style={{ borderTop: '1px solid var(--border-color)', paddingTop: 16 }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>用户ID</span>
                <span>{userData.id}</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>手机号</span>
                <span>{userData.phone}</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>注册时间</span>
                <span>{userData.regTime}</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>最近登录</span>
                <span>{userData.lastLogin}</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>用户状态</span>
                <Tag color={userData.status === '正常' ? 'success' : userData.status === '待激活' ? 'processing' : 'error'}>{userData.status}</Tag>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>所在城市</span>
                <span>{userData.city}</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>设备型号</span>
                <span>{userData.device}</span>
              </div>
              <div style={{ display: 'flex', justifyContent: 'space-between', padding: '8px 0' }}>
                <span style={{ color: 'var(--text-secondary)' }}>操作系统</span>
                <span>{userData.system}</span>
              </div>
            </div>
          </div>

          <div style={{ display: 'flex', flexDirection: 'column', gap: 20 }}>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: 16 }}>
              {userData.stats.map((stat, index) => (
                <div key={index} className="stat-card">
                  <div className="stat-card-label">{stat.label}</div>
                  <div className="stat-card-value">{stat.value}</div>
                  <div className="stat-card-change">{stat.change}</div>
                </div>
              ))}
            </div>

            <div className="chart-card">
              <div className="chart-card-title">近7天下单趋势</div>
              <ReactECharts option={lineChartOption} style={{ height: 200 }} />
            </div>

            <div className="chart-card">
              <div className="chart-card-title">订单类型分布</div>
              <ReactECharts option={pieChartOption} style={{ height: 220 }} />
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default UserPortrait
