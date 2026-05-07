import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import StatCards from './StatCards'
import TrendChart from './TrendChart'
import PieChart from './PieChart'
import OrderTable from './OrderTable'
import CityRanking from './CityRanking'
import { getDashboardStatistics } from '../api/hxzCar'

function Dashboard() {
  const navigate = useNavigate()
  const [payTypeStats, setPayTypeStats] = useState({
    wechatCount: 0,
    alipayCount: 0,
    wechatRatio: 0,
    alipayRatio: 0
  })
  const [orderStatusStats, setOrderStatusStats] = useState({
    completed: 0,
    inProgress: 0,
    canceled: 0,
    abnormal: 0,
    completedRatio: 0,
    inProgressRatio: 0,
    canceledRatio: 0,
    abnormalRatio: 0
  })

  const today = new Date()
  const todayStr = `${today.getFullYear()}/${String(today.getMonth() + 1).padStart(2, '0')}/${String(today.getDate()).padStart(2, '0')}`

  useEffect(() => {
    fetchStatistics()
  }, [])

  const fetchStatistics = async () => {
    try {
      const today = new Date().toISOString().split('T')[0]
      const response = await getDashboardStatistics(today)
      if (response.code === 0 || response.code === 200) {
        if (response.data.payTypeStats) {
          setPayTypeStats(response.data.payTypeStats)
        }
        if (response.data.orderStatusStats) {
          setOrderStatusStats(response.data.orderStatusStats)
        }
      }
    } catch (error) {
      console.error('获取统计数据失败:', error)
    }
  }

  const payTypeData = [
    { name: '微信支付', value: payTypeStats.wechatRatio, color: '#07c160' },
    { name: '支付宝', value: payTypeStats.alipayRatio, color: '#1677ff' }
  ]

  const orderStatusData = [
    { name: '已完成', value: orderStatusStats.completedRatio, color: '#1677ff' },
    { name: '进行中', value: orderStatusStats.inProgressRatio, color: '#52c41a' },
    { name: '已取消', value: orderStatusStats.canceledRatio, color: '#faad14' },
    { name: '异常', value: orderStatusStats.abnormalRatio, color: '#f5222d' }
  ]

  const totalPayCount = payTypeStats.wechatCount + payTypeStats.alipayCount
  const totalOrderCount = orderStatusStats.completed + orderStatusStats.inProgress + orderStatusStats.canceled + orderStatusStats.abnormal

  const quickFunctions = [
    { key: 'order', label: '订单管理', icon: '📋', path: '/order-list' },
    { key: 'user', label: '用户管理', icon: '👤', path: '/user-list' },
    { key: 'driver', label: '司机管理', icon: '🚛', path: '/driver-list' },
    { key: 'activity', label: '活动管理', icon: '🎯', path: '/activity-management' },
    { key: 'coupon', label: '优惠券管理', icon: '🎟️', path: '/coupon-management' },
    { key: 'data', label: '数据中心', icon: '📊', path: '/data-overview' },
  ]

  return (
    <div style={{ padding: 20, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div className="welcome-card">
        <div className="welcome-title">欢迎回来，开始今天的工作节奏</div>
        <div className="welcome-subtitle">{todayStr} · 今日数据已更新，点击查看详情</div>
        <div className="welcome-actions">
          <button className="btn-primary" onClick={() => navigate('/data-overview')}>查看数据</button>
          <button className="btn-secondary">更多</button>
        </div>
      </div>

      <div className="stats-section" style={{ marginBottom: 20 }}>
        <StatCards />
      </div>

      <div className="charts-section" style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: 20, marginBottom: 20 }}>
        <div className="chart-card" style={{ minHeight: '450px' }}>
          <div className="chart-card-header">
            <span className="chart-card-title">订单趋势</span>
            <select 
              style={{ 
                border: '1px solid var(--border-color)', 
                borderRadius: 'var(--radius-sm)', 
                padding: '4px 8px',
                fontSize: '12px',
                color: 'var(--text-secondary)',
                background: 'white',
              }}
            >
              <option>按小时</option>
              <option>按天</option>
              <option>按周</option>
            </select>
          </div>
          <div style={{ height: 'calc(100% - 50px)' }}>
            <TrendChart />
          </div>
        </div>
        <div style={{ display: 'grid', gridTemplateRows: '1fr 1fr', gap: 20 }}>
          <div className="chart-card">
            <div className="chart-card-title">支付类型占比</div>
            <PieChart data={payTypeData} total={totalPayCount.toLocaleString()} />
          </div>
          <div className="chart-card">
            <div className="chart-card-title">订单状态分布</div>
            <PieChart data={orderStatusData} total={totalOrderCount.toLocaleString()} />
          </div>
        </div>
      </div>

      <div className="bottom-section" style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: 20 }}>
        <div className="content-card">
          <div className="content-header">
            <span className="content-title">实时订单监控</span>
            <div style={{ display: 'flex', gap: 10 }}>
              <select 
                style={{ 
                  border: '1px solid var(--border-color)', 
                  borderRadius: 'var(--radius-sm)', 
                  padding: '4px 8px',
                  fontSize: '12px',
                  color: 'var(--text-secondary)',
                  background: 'white',
                }}
              >
                <option>全部城市</option>
                <option>北京</option>
                <option>上海</option>
              </select>
              <select 
                style={{ 
                  border: '1px solid var(--border-color)', 
                  borderRadius: 'var(--radius-sm)', 
                  padding: '4px 8px',
                  fontSize: '12px',
                  color: 'var(--text-secondary)',
                  background: 'white',
                }}
              >
                <option>全部订单类型</option>
                <option>快车</option>
                <option>特惠快车</option>
              </select>
              <button className="btn-secondary" style={{ display: 'flex', alignItems: 'center', gap: 4 }}>
                <span>🔄</span> 刷新
              </button>
            </div>
          </div>
          <OrderTable />
        </div>
        <div>
          <div className="city-ranking-card" style={{ background: '#fff', borderRadius: '8px', padding: '16px', boxShadow: '0 2px 8px rgba(0,0,0,0.08)' }}>
            <div style={{ fontSize: '14px', fontWeight: 'bold', marginBottom: '12px', color: '#333' }}>城市订单排名</div>
            <CityRanking />
          </div>
          <div className="quick-function-card" style={{ marginTop: 20 }}>
            <div className="quick-function-title">
              <span>快捷功能</span>
            </div>
            <div className="quick-function-grid">
              {quickFunctions.map(item => (
                <div 
                  key={item.key} 
                  className="quick-function-item"
                  onClick={() => navigate(item.path)}
                >
                  <div className="quick-function-icon">{item.icon}</div>
                  <span className="quick-function-label">{item.label}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>

      <footer
        style={{
          marginTop: 24,
          textAlign: 'center',
          padding: 16,
          color: 'var(--text-muted)',
          fontSize: 12,
        }}
      >
        © 2024 花小猪打车 版权所有
      </footer>
    </div>
  )
}

export default Dashboard
