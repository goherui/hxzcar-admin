import { useState, useEffect } from 'react'
import ReactECharts from 'echarts-for-react'
import { getDashboardStatistics } from '../api/hxzCar'

function TrendChart() {
  const [data, setData] = useState({
    hours: ['00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '18:00', '21:00', '23:00'],
    orderCount: [0, 0, 0, 0, 0, 0, 0, 0, 0],
    completeCount: [0, 0, 0, 0, 0, 0, 0, 0, 0]
  })

  useEffect(() => {
    fetchTrendData()
  }, [])

  const fetchTrendData = async () => {
    try {
      const today = new Date().toISOString().split('T')[0]
      const response = await getDashboardStatistics(today)
      if (response.code === 0 || response.code === 200) {
        if (response.data.trendData) {
          setData(response.data.trendData)
        }
      }
    } catch (error) {
      console.error('获取订单趋势数据失败:', error)
    }
  }

  const option = {
    tooltip: {
      trigger: 'axis',
      axisPointer: {
        type: 'cross',
      },
    },
    legend: {
      data: ['订单量', '完单量'],
      top: 0,
      right: 0,
    },
    grid: {
      left: '3%',
      right: '4%',
      bottom: '3%',
      top: '10%',
      containLabel: true,
    },
    xAxis: {
      type: 'category',
      boundaryGap: false,
      data: data.hours,
      axisLine: {
        lineStyle: {
          color: '#ddd',
        },
      },
      axisLabel: {
        color: '#666',
      },
    },
    yAxis: {
      type: 'value',
      axisLine: {
        show: false,
      },
      axisTick: {
        show: false,
      },
      splitLine: {
        lineStyle: {
          color: '#f0f0f0',
        },
      },
      axisLabel: {
        color: '#666',
        formatter: (value) => {
          if (value >= 10000) {
            return (value / 10000) + '万'
          }
          return value
        },
      },
    },
    series: [
      {
        name: '订单量',
        type: 'line',
        smooth: true,
        data: data.orderCount,
        lineStyle: {
          color: '#7c4dff',
          width: 3,
        },
        areaStyle: {
          color: {
            type: 'linear',
            x: 0,
            y: 0,
            x2: 0,
            y2: 1,
            colorStops: [
              { offset: 0, color: 'rgba(124, 77, 255, 0.3)' },
              { offset: 1, color: 'rgba(124, 77, 255, 0.05)' },
            ],
          },
        },
        symbol: 'circle',
        symbolSize: 8,
        itemStyle: {
          color: '#7c4dff',
        },
      },
      {
        name: '完单量',
        type: 'line',
        smooth: true,
        data: data.completeCount,
        lineStyle: {
          color: '#2196f3',
          width: 3,
        },
        areaStyle: {
          color: {
            type: 'linear',
            x: 0,
            y: 0,
            x2: 0,
            y2: 1,
            colorStops: [
              { offset: 0, color: 'rgba(33, 150, 243, 0.3)' },
              { offset: 1, color: 'rgba(33, 150, 243, 0.05)' },
            ],
          },
        },
        symbol: 'circle',
        symbolSize: 8,
        itemStyle: {
          color: '#2196f3',
        },
      },
    ],
  }

  return (
    <ReactECharts option={option} style={{ width: '100%', height: '100%' }} />
  )
}

export default TrendChart