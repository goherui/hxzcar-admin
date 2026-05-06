import { useState, useEffect } from 'react'
import { Card, Row, Col, Statistic } from 'antd'
import { 
  ShoppingCartOutlined, 
  CheckCircleOutlined, 
  UserOutlined, 
  CarOutlined, 
  TrendingUpOutlined,
  DollarOutlined 
} from '@ant-design/icons'
import { getDashboardStatistics } from '@/api/hxzCar'

function Dashboard() {
  const [loading, setLoading] = useState(false)
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

  const fetchStatistics = async () => {
    setLoading(true)
    try {
      const response = await getDashboardStatistics()
      if (response.code === 0 || response.code === 200) {
        setStats(response.data)
      }
    } catch (error) {
      console.error('获取统计数据失败:', error)
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    fetchStatistics()
  }, [])

  const getDiffColor = (diff) => {
    if (diff > 0) return '#52c41a'
    if (diff < 0) return '#ff4d4f'
    return '#64748b'
  }

  const getDiffIcon = (diff) => {
    if (diff > 0) return <span style={{ color: '#52c41a' }}>↑</span>
    if (diff < 0) return <span style={{ color: '#ff4d4f' }}>↓</span>
    return <span style={{ color: '#64748b' }}>—</span>
  }

  const renderDiff = (diff) => {
    return (
      <span style={{ color: getDiffColor(diff), marginLeft: 4 }}>
        {getDiffIcon(diff)} {Math.abs(diff).toFixed(1)}%
      </span>
    )
  }

  const cards = [
    {
      title: '订单量',
      value: stats.today.orderCount.toLocaleString(),
      icon: <ShoppingCartOutlined style={{ fontSize: 24, color: '#1890ff' }} />,
      diff: renderDiff(stats.orderCountDiff),
      color: '#1890ff'
    },
    {
      title: '完单量',
      value: stats.today.completeCount.toLocaleString(),
      icon: <CheckCircleOutlined style={{ fontSize: 24, color: '#52c41a' }} />,
      diff: renderDiff(stats.completeCountDiff),
      color: '#52c41a'
    },
    {
      title: '活跃用户数',
      value: stats.today.activeUsers.toLocaleString(),
      icon: <UserOutlined style={{ fontSize: 24, color: '#722ed1' }} />,
      diff: renderDiff(stats.activeUsersDiff),
      color: '#722ed1'
    },
    {
      title: '活跃司机数',
      value: stats.today.activeDrivers.toLocaleString(),
      icon: <CarOutlined style={{ fontSize: 24, color: '#13c2c2' }} />,
      diff: renderDiff(stats.activeDriversDiff),
      color: '#13c2c2'
    },
    {
      title: '收入',
      value: `¥${stats.today.revenue.toFixed(2)}`,
      icon: <TrendingUpOutlined style={{ fontSize: 24, color: '#faad14' }} />,
      diff: renderDiff(stats.revenueDiff),
      color: '#faad14'
    },
    {
      title: '客单价',
      value: `¥${stats.today.avgOrderValue.toFixed(2)}`,
      icon: <DollarOutlined style={{ fontSize: 24, color: '#eb2f96' }} />,
      diff: renderDiff(stats.avgOrderValueDiff),
      color: '#eb2f96'
    }
  ]

  return (
    <div style={{ padding: '24px' }}>
      <div style={{ marginBottom: '24px' }}>
        <h2 style={{ fontSize: 20, fontWeight: 600 }}>首页</h2>
        <p style={{ color: '#64748b', marginTop: 8 }}>
          欢迎回来，开始今天的工作节奏
        </p>
      </div>

      <Row gutter={16}>
        {cards.map((card, index) => (
          <Col span={4} key={index}>
            <Card 
              style={{ borderRadius: 8 }}
              loading={loading}
            >
              <div style={{ display: 'flex', alignItems: 'center', marginBottom: 12 }}>
                {card.icon}
                <span style={{ marginLeft: 8, fontSize: 14, color: '#64748b' }}>
                  {card.title}
                </span>
              </div>
              <div style={{ display: 'flex', alignItems: 'baseline' }}>
                <Statistic 
                  value={card.value} 
                  style={{ fontSize: 24, fontWeight: 600, color: card.color }}
                />
              </div>
              <div style={{ marginTop: 8, fontSize: 12 }}>
                {card.diff}
              </div>
            </Card>
          </Col>
        ))}
      </Row>
    </div>
  )
}

export default Dashboard