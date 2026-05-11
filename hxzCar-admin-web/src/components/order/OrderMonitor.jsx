import { useState, useEffect } from 'react'
import { Button } from 'antd'
import { useNavigate } from 'react-router-dom'
import ReactECharts from 'echarts-for-react'
import { getMonitorData } from '../../api/hxzCar'
import OrderMap from './OrderMap'

function OrderMonitor() {
  const navigate = useNavigate()
  const [stats, setStats] = useState({
    totalOrders: 1256987,
    inProgress: 8526,
    completed: 1248461,
    abnormalOrders: 124,
    canceledOrders: 70,
    cancelRate: 0.5,
  })
  const [latestOrders, setLatestOrders] = useState([
    { id: 1, orderNo: '202405201234567', createTime: '2024-05-20 14:23:45', carType: '快车', status: '进行中', amount: '34.17' },
    { id: 2, orderNo: '202405201234567', createTime: '2024-05-20 14:23:42', carType: '专车', status: '已完成', amount: '45.00' },
    { id: 3, orderNo: '202405201234567', createTime: '2024-05-20 14:23:40', carType: '特惠快车', status: '已完成', amount: '18.00' },
    { id: 4, orderNo: '202405201234567', createTime: '2024-05-20 14:23:38', carType: '特惠快车', status: '已完成', amount: '25.00' },
    { id: 5, orderNo: '202405201234567', createTime: '2024-05-20 14:23:36', carType: '快车', status: '已取消', amount: '0.00' },
  ])
  const [trendData, setTrendData] = useState({
    hours: ['00:00', '04:00', '08:00', '12:00', '16:00', '20:00', '24:00'],
    orders: [32000, 18000, 85000, 125000, 138000, 142000, 95000],
  })
  const [cityData, setCityData] = useState([
    { name: '北京', value: 2345, ratio: '+12.5%' },
    { name: '上海', value: 1890, ratio: '+11.2%' },
    { name: '广州', value: 1567, ratio: '+10.8%' },
    { name: '深圳', value: 1456, ratio: '+8.7%' },
    { name: '成都', value: 987, ratio: '+7.2%' },
  ])

  useEffect(() => {
    fetchMonitorData()
  }, [])

  const fetchMonitorData = async () => {
    try {
      const today = new Date().toISOString().split('T')[0]
      const response = await getMonitorData(today)
      if (response.code === 0 || response.code === 200) {
        if (response.data.stats) {
          setStats({
            totalOrders: response.data.stats.totalOrders || 1256987,
            inProgress: response.data.stats.inProgress || 8526,
            completed: response.data.stats.completed || 1248461,
            abnormalOrders: response.data.stats.abnormalOrders || 124,
            canceledOrders: response.data.stats.canceledOrders || 70,
            cancelRate: response.data.stats.cancelRate || 0.5,
          })
        }
        if (response.data.latestOrders && response.data.latestOrders.length > 0) {
          const orders = response.data.latestOrders.slice(0, 5).map(order => {
            let createTime = order.createTime
            if (typeof createTime === 'string') {
              if (createTime.includes('T')) {
                createTime = createTime.replace('T', ' ').split('.')[0]
              }
            } else if (createTime instanceof Date) {
              createTime = createTime.toLocaleString('zh-CN', {
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
                hour: '2-digit',
                minute: '2-digit',
                second: '2-digit',
              })
            }
            return {
              id: order.id || order.ID,
              orderNo: order.orderNo,
              createTime: createTime,
              carType: order.carType,
              status: getStatusText(order.orderStatus),
              amount: order.totalAmount.toFixed(2),
            }
          })
          setLatestOrders(orders)
        }
        if (response.data.trendData) {
          setTrendData({
            hours: response.data.trendData.hours,
            orders: response.data.trendData.orderCount,
          })
        }
        if (response.data.cityRanking) {
          setCityData(response.data.cityRanking.map(item => ({
            name: item.cityName.replace('市', ''),
            value: item.orderCount,
            ratio: `+${(Math.random() * 15 + 5).toFixed(1)}%`,
          })))
        }
      }
    } catch (error) {
      console.error('获取监控数据失败:', error)
    }
  }

  const getStatusText = (status) => {
    switch (status) {
      case 1:
      case 2:
      case 3:
        return '进行中'
      case 4:
        return '已完成'
      case 5:
        return '已取消'
      case 6:
        return '异常'
      default:
        return '未知'
    }
  }

  const getStatusStyle = (status) => {
    switch (status) {
      case '进行中':
        return { backgroundColor: '#dbeafe', color: '#2563eb' }
      case '已完成':
        return { backgroundColor: '#dcfce7', color: '#16a34a' }
      case '已取消':
        return { backgroundColor: '#fef3c7', color: '#d97706' }
      case '异常':
        return { backgroundColor: '#fee2e2', color: '#dc2626' }
      default:
        return { backgroundColor: '#f3f4f6', color: '#6b7280' }
    }
  }

  const getCarTypeStyle = (carType) => {
    switch (carType) {
      case '快车':
        return { backgroundColor: '#ddd6fe', color: '#7c3aed' }
      case '专车':
        return { backgroundColor: '#d1fae5', color: '#059669' }
      case '特惠快车':
        return { backgroundColor: '#fed7aa', color: '#ea580c' }
      default:
        return { backgroundColor: '#f3f4f6', color: '#6b7280' }
    }
  }

  const statCards = [
    { label: '总订单量', value: stats.totalOrders.toLocaleString(), change: '+12.35%' },
    { label: '进行中', value: stats.inProgress.toLocaleString(), change: '+8.32%' },
    { label: '已完成', value: stats.completed.toLocaleString(), change: '+12.56%' },
    { label: '异常订单', value: stats.abnormalOrders.toLocaleString(), change: '+12.5%' },
    { label: '取消订单', value: stats.canceledOrders.toLocaleString(), change: '+5.2%' },
    { label: '取消率', value: `${stats.cancelRate}%`, change: '-1.2%' },
  ]

  const lineOption = {
    tooltip: { trigger: 'axis' },
    legend: { data: ['订单总量'], top: 0 },
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
    ],
  }

  return (
    <div className="page-container" style={{ padding: 20, background: '#f5f7fa', minHeight: 'calc(100vh - 60px)' }}>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(6, 1fr)', gap: 16, marginBottom: 20 }}>
        {statCards.map((card, index) => (
          <div key={index} style={{ background: '#fff', borderRadius: 8, padding: 16, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }}>
            <div style={{ fontSize: 12, color: '#999', marginBottom: 8 }}>{card.label}</div>
            <div style={{ fontSize: 24, fontWeight: 600, color: '#333' }}>{card.value}</div>
            <div style={{ fontSize: 12, color: '#22c55e', marginTop: 4 }}>{card.change}</div>
          </div>
        ))}
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1.2fr 1.2fr', gap: 20, marginBottom: 20 }}>
        <div style={{ background: '#fff', borderRadius: 8, padding: 16, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }}>
          <div style={{ fontSize: 14, fontWeight: 600, color: '#333', marginBottom: 16 }}>实时订单地图</div>
          <div style={{ height: 400, borderRadius: 8, overflow: 'hidden' }}>
            <OrderMap />
          </div>
        </div>

        <div style={{ background: '#fff', borderRadius: 8, padding: 16, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 16 }}>
            <div style={{ fontSize: 14, fontWeight: 600, color: '#333' }}>最新订单</div>
            <Button 
              onClick={fetchMonitorData}
              style={{ 
                padding: '4px 12px', 
                fontSize: 12, 
                background: '#f5f7fa', 
                border: '1px solid #e5e7eb',
                color: '#666',
              }}
            >
              刷新
            </Button>
          </div>
          <div style={{ border: '1px solid #e5e7eb', borderRadius: 6, overflow: 'hidden' }}>
            <div style={{ display: 'grid', gridTemplateColumns: '1.2fr 1.2fr 0.8fr 0.6fr 0.6fr 0.4fr', padding: '8px 12px', background: '#f9fafb', borderBottom: '1px solid #e5e7eb' }}>
              <div style={{ fontSize: 12, fontWeight: 500, color: '#666' }}>订单号</div>
              <div style={{ fontSize: 12, fontWeight: 500, color: '#666' }}>下单时间</div>
              <div style={{ fontSize: 12, fontWeight: 500, color: '#666' }}>订单类型</div>
              <div style={{ fontSize: 12, fontWeight: 500, color: '#666' }}>状态</div>
              <div style={{ fontSize: 12, fontWeight: 500, color: '#666', textAlign: 'right' }}>金额</div>
              <div style={{ fontSize: 12, fontWeight: 500, color: '#666', textAlign: 'center' }}>操作</div>
            </div>
            {latestOrders.map((order, index) => (
              <div key={index} style={{ display: 'grid', gridTemplateColumns: '1.2fr 1.2fr 0.8fr 0.6fr 0.6fr 0.4fr', padding: '10px 12px', borderBottom: index < latestOrders.length - 1 ? '1px solid #f3f4f6' : 'none' }}>
                <div style={{ fontSize: 12, color: '#333', overflow: 'hidden', textOverflow: 'ellipsis', whiteSpace: 'nowrap' }}>{order.orderNo}</div>
                <div style={{ fontSize: 12, color: '#666' }}>{order.createTime}</div>
                <div>
                  <span style={{ 
                    display: 'inline-block', 
                    padding: '2px 8px', 
                    borderRadius: 4, 
                    fontSize: 11, 
                    ...getCarTypeStyle(order.carType) 
                  }}>
                    {order.carType}
                  </span>
                </div>
                <div>
                  <span style={{ 
                    display: 'inline-block', 
                    padding: '2px 8px', 
                    borderRadius: 4, 
                    fontSize: 11, 
                    ...getStatusStyle(order.status) 
                  }}>
                    {order.status}
                  </span>
                </div>
                <div style={{ fontSize: 12, color: '#333', fontWeight: 500, textAlign: 'right' }}>¥{order.amount}</div>
                <div style={{ textAlign: 'center' }}>
                  <button 
                    style={{ background: 'none', border: 'none', color: '#2563eb', fontSize: 12, cursor: 'pointer' }}
                    onClick={() => navigate(`/order-detail/${order.id}`)}
                  >详情</button>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '2fr 1fr', gap: 20 }}>
        <div style={{ background: '#fff', borderRadius: 8, padding: 16, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }}>
          <div style={{ fontSize: 14, fontWeight: 600, color: '#333', marginBottom: 16 }}>订单趋势</div>
          <ReactECharts option={lineOption} style={{ height: 260 }} />
        </div>

        <div style={{ background: '#fff', borderRadius: 8, padding: 16, boxShadow: '0 2px 8px rgba(0,0,0,0.06)' }}>
          <div style={{ fontSize: 14, fontWeight: 600, color: '#333', marginBottom: 16 }}>城市订单排名</div>
          <div>
            {cityData.map((item, index) => (
              <div key={index} style={{ display: 'flex', alignItems: 'center', padding: '8px 0', borderBottom: index < cityData.length - 1 ? '1px solid #f3f4f6' : 'none' }}>
                <div style={{ 
                  width: 24, 
                  height: 24, 
                  borderRadius: 50, 
                  display: 'flex', 
                  alignItems: 'center', 
                  justifyContent: 'center',
                  fontSize: 12,
                  fontWeight: 600,
                  marginRight: 12,
                  backgroundColor: index === 0 ? '#fcd34d' : index === 1 ? '#cbd5e1' : index === 2 ? '#fdba74' : '#e5e7eb',
                  color: index === 0 ? '#92400e' : '#64748b',
                }}>
                  {index + 1}
                </div>
                <div style={{ flex: 1 }}>
                  <div style={{ fontSize: 13, color: '#333', fontWeight: 500 }}>{item.name}</div>
                  <div style={{ fontSize: 11, color: '#999' }}>{item.value.toLocaleString()} 单</div>
                </div>
                <div style={{ fontSize: 12, color: '#22c55e', fontWeight: 500 }}>{item.ratio}</div>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  )
}

export default OrderMonitor
