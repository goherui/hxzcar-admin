import ReactECharts from 'echarts-for-react'
import { trendData } from '../data/mockData'
import { Select } from 'antd'

function TrendChart() {
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
      containLabel: true,
    },
    xAxis: {
      type: 'category',
      boundaryGap: false,
      data: trendData.hours,
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
        data: trendData.orderCount,
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
        data: trendData.completeCount,
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
    <div className="trend-chart-card">
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 16 }}>
        <span className="chart-card-title">订单趋势</span>
        <Select
          defaultValue="按小时"
          style={{ width: 120 }}
          options={[
            { value: 'hour', label: '按小时' },
            { value: 'day', label: '按天' },
            { value: 'week', label: '按周' },
          ]}
        />
      </div>
      <ReactECharts option={option} style={{ height: 300 }} />
    </div>
  )
}

export default TrendChart