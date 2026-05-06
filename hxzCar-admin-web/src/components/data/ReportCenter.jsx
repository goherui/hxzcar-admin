import { Card, Row, Col, Select, Button, Input, Table } from 'antd'

const { Option } = Select

const cityRanking = [
  { rank: 1, city: '北京市', orders: 185678, ratio: '+15.6%', color: 'gold' },
  { rank: 2, city: '上海市', orders: 162345, ratio: '+12.3%', color: 'silver' },
  { rank: 3, city: '广州市', orders: 145678, ratio: '+8.9%', color: 'bronze' },
  { rank: 4, city: '深圳市', orders: 123456, ratio: '+18.2%', color: 'gray' },
  { rank: 5, city: '成都市', orders: 98765, ratio: '+10.5%', color: 'gray' },
  { rank: 6, city: '杭州市', orders: 87654, ratio: '+14.2%', color: 'gray' },
  { rank: 7, city: '重庆市', orders: 76543, ratio: '+9.8%', color: 'gray' },
  { rank: 8, city: '武汉市', orders: 65432, ratio: '+11.3%', color: 'gray' },
  { rank: 9, city: '南京市', orders: 54321, ratio: '+7.6%', color: 'gray' },
  { rank: 10, city: '西安市', orders: 43210, ratio: '+16.4%', color: 'gray' },
]

const reportData = [
  { id: 'R001', name: '日订单报表', type: '日报', updateTime: '2024-05-20 00:00:00', status: '已生成', action: '查看' },
  { id: 'R002', name: '周订单报表', type: '周报', updateTime: '2024-05-19 00:00:00', status: '已生成', action: '查看' },
  { id: 'R003', name: '月订单报表', type: '月报', updateTime: '2024-05-01 00:00:00', status: '已生成', action: '查看' },
  { id: 'R004', name: '用户行为分析报表', type: '周报', updateTime: '2024-05-19 00:00:00', status: '已生成', action: '查看' },
  { id: 'R005', name: '司机运营报表', type: '周报', updateTime: '2024-05-19 00:00:00', status: '已生成', action: '查看' },
]

function ReportCenter() {
  const columns = [
    { title: '报表ID', dataIndex: 'id', key: 'id', width: 100 },
    { title: '报表名称', dataIndex: 'name', key: 'name', width: 200 },
    { 
      title: '报表类型', 
      dataIndex: 'type', 
      key: 'type', 
      width: 100,
      render: (text) => <span style={{ color: '#7c4dff', fontWeight: 'bold' }}>{text}</span>
    },
    { title: '更新时间', dataIndex: 'updateTime', key: 'updateTime', width: 180 },
    { 
      title: '状态', 
      dataIndex: 'status', 
      key: 'status', 
      width: 100,
      render: (text) => <span style={{ color: '#52c41a' }}>{text}</span>
    },
    { 
      title: '操作', 
      dataIndex: 'action', 
      key: 'action', 
      width: 100,
      render: (text) => <Button type="link">{text}</Button>
    },
  ]

  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
        <h2 style={{ fontSize: 18, fontWeight: 'bold', color: '#333' }}>报表中心</h2>
        <div style={{ display: 'flex', gap: 12 }}>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="all">全部类型</Option>
            <Option value="daily">日报</Option>
            <Option value="weekly">周报</Option>
            <Option value="monthly">月报</Option>
          </Select>
          <Button type="primary">生成报表</Button>
        </div>
      </div>

      <Row gutter={16}>
        <Col span={12}>
          <Card title="城市订单排名TOP10" className="table-card">
            <div style={{ padding: 12 }}>
              {cityRanking.map((item) => (
                <div key={item.rank} style={{ display: 'flex', alignItems: 'center', padding: 12, borderBottom: '1px solid #f0f0f0' }}>
                  <div className={`ranking-number ${item.rank <= 3 ? `top${item.rank}` : 'other'}`}>{item.rank}</div>
                  <div style={{ flex: 1, marginLeft: 12 }}>
                    <div style={{ fontWeight: 'bold', color: '#333' }}>{item.city}</div>
                  </div>
                  <div style={{ color: '#666' }}>{item.orders.toLocaleString()}</div>
                  <div style={{ color: item.ratio.startsWith('+') ? '#52c41a' : '#ff9800', marginLeft: 12 }}>{item.ratio}</div>
                </div>
              ))}
            </div>
          </Card>
        </Col>

        <Col span={12}>
          <Card title="城市订单分布图" className="trend-chart-card">
            <div style={{ height: 450, background: '#fafafa', borderRadius: 8, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
              <div style={{ textAlign: 'center', color: '#999' }}>
                <div style={{ fontSize: 64, marginBottom: 16 }}>🗺️</div>
                <div>中国地图</div>
                <div>城市订单分布可视化</div>
              </div>
            </div>
          </Card>
        </Col>
      </Row>

      <Row gutter={16} style={{ marginTop: 16 }}>
        <Col span={24}>
          <Card title="报表列表" className="table-card">
            <Table
              dataSource={reportData}
              columns={columns}
              pagination={{ pageSize: 10 }}
            />
          </Card>
        </Col>
      </Row>
    </div>
  )
}

export default ReportCenter