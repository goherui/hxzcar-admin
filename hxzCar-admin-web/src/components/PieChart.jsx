import ReactECharts from 'echarts-for-react'

function PieChart({ title, data, total }) {
  const option = {
    tooltip: {
      trigger: 'item',
      formatter: '{b}: {c}% ({d}%)',
    },
    legend: {
      orient: 'vertical',
      right: 10,
      top: 'center',
      itemGap: 12,
      textStyle: {
        color: '#666',
      },
    },
    series: [
      {
        name: title,
        type: 'pie',
        radius: ['45%', '70%'],
        center: ['35%', '50%'],
        avoidLabelOverlap: false,
        itemStyle: {
          borderRadius: 8,
          borderColor: '#fff',
          borderWidth: 2,
        },
        label: {
          show: false,
          position: 'center',
        },
        emphasis: {
          label: {
            show: true,
            fontSize: 18,
            fontWeight: 'bold',
            formatter: `{name|${total}}\n{value|总订单量}`,
            rich: {
              name: {
                fontSize: 24,
                fontWeight: 'bold',
                color: '#333',
                textAlign: 'center',
              },
              value: {
                fontSize: 12,
                color: '#999',
                textAlign: 'center',
                marginTop: 8,
              },
            },
          },
        },
        labelLine: {
          show: false,
        },
        data: data.map((item) => ({
          value: item.value,
          name: item.name,
          itemStyle: {
            color: item.color,
          },
        })),
      },
    ],
  }

  return (
    <div className="pie-chart-card">
      <div className="chart-card-title">{title}</div>
      <ReactECharts option={option} style={{ height: 250 }} />
    </div>
  )
}

export default PieChart