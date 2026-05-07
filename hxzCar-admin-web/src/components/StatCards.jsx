import { useState, useEffect } from 'react'
import { getDashboardStatistics } from '../api/hxzCar'

function StatCards() {
  const [stats, setStats] = useState({
    today: {
      orderCount: 0,
      completeCount: 0,
      activeUsers: 0,
      activeDrivers: 0,
      revenue: 0,
      avgOrderValue: 0
    },
    orderCountDiff: 0,
    completeCountDiff: 0,
    activeUsersDiff: 0,
    activeDriversDiff: 0,
    revenueDiff: 0,
    avgOrderValueDiff: 0
  })

  useEffect(() => {
    fetchStatistics()
  }, [])

  const fetchStatistics = async () => {
    try {
      const today = new Date().toISOString().split('T')[0]
      const response = await getDashboardStatistics(today)
      console.log('统计数据响应:', response)
      if (response.code === 0 || response.code === 200) {
        setStats(response.data)
      }
    } catch (error) {
      console.error('获取统计数据失败:', error)
    }
  }

  const statItems = [
    {
      icon: '📊',
      label: '订单量',
      value: stats.today.orderCount.toLocaleString(),
      unit: '单',
      change: `${stats.orderCountDiff >= 0 ? '+' : ''}${stats.orderCountDiff.toFixed(2)}%`,
      isPositive: stats.orderCountDiff >= 0,
      color: '#6366f1'
    },
    {
      icon: '✅',
      label: '完单量',
      value: stats.today.completeCount.toLocaleString(),
      unit: '单',
      change: `${stats.completeCountDiff >= 0 ? '+' : ''}${stats.completeCountDiff.toFixed(2)}%`,
      isPositive: stats.completeCountDiff >= 0,
      color: '#22c55e'
    },
    {
      icon: '👥',
      label: '活跃用户数',
      value: stats.today.activeUsers.toLocaleString(),
      unit: '人',
      change: `${stats.activeUsersDiff >= 0 ? '+' : ''}${stats.activeUsersDiff.toFixed(2)}%`,
      isPositive: stats.activeUsersDiff >= 0,
      color: '#3b82f6'
    },
    {
      icon: '🚛',
      label: '活跃司机数',
      value: stats.today.activeDrivers.toLocaleString(),
      unit: '人',
      change: `${stats.activeDriversDiff >= 0 ? '+' : ''}${stats.activeDriversDiff.toFixed(2)}%`,
      isPositive: stats.activeDriversDiff >= 0,
      color: '#f59e0b'
    },
    {
      icon: '💰',
      label: 'GMV',
      value: stats.today.revenue.toLocaleString(),
      unit: '元',
      change: `${stats.revenueDiff >= 0 ? '+' : ''}${stats.revenueDiff.toFixed(2)}%`,
      isPositive: stats.revenueDiff >= 0,
      color: '#ec4899'
    },
    {
      icon: '💵',
      label: '客单价',
      value: stats.today.avgOrderValue.toFixed(2),
      unit: '元',
      change: `${stats.avgOrderValueDiff >= 0 ? '+' : ''}${stats.avgOrderValueDiff.toFixed(2)}%`,
      isPositive: stats.avgOrderValueDiff >= 0,
      color: '#8b5cf6'
    }
  ]

  return (
    <div style={{ display: 'grid', gridTemplateColumns: 'repeat(6, 1fr)', gap: 20 }}>
      {statItems.map((item, index) => (
        <div key={index} className="stat-card">
          <div 
            className="stat-card-icon" 
            style={{ 
              background: `${item.color}15`,
              boxShadow: `0 4px 12px ${item.color}20`,
            }}
          >
            <span style={{ color: item.color }}>{item.icon}</span>
          </div>
          <div className="stat-card-value">
            {item.value}
            <span>{item.unit}</span>
          </div>
          <div className="stat-card-label">{item.label}</div>
          <div className={`stat-card-change ${item.isPositive ? '' : 'negative'}`}>
            {item.isPositive ? '↑' : '↓'} {item.change}
          </div>
        </div>
      ))}
    </div>
  )
}

export default StatCards
