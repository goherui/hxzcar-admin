import { Table, Select, Button, Input, Tag, Row, Col } from 'antd'

const { Option } = Select

const reviewData = [
  {
    id: 'R000001',
    orderId: '2024052012345678901',
    driverId: 'D000001',
    driverName: '张师傅',
    rating: 5,
    content: '司机服务态度很好，开车很稳，准时到达目的地，非常满意！',
    time: '2024-05-20 14:30:00',
    tags: ['服务好', '准时', '驾驶平稳'],
    reply: '感谢您的好评，我们会继续努力！',
  },
  {
    id: 'R000002',
    orderId: '2024052012345678902',
    driverId: 'D000002',
    driverName: '李师傅',
    rating: 4,
    content: '整体体验不错，就是等车时间稍微有点长。',
    time: '2024-05-20 13:45:00',
    tags: ['服务一般'],
    reply: '抱歉让您等待了，我们会优化派单效率！',
  },
  {
    id: 'R000003',
    orderId: '2024052012345678903',
    driverId: 'D000003',
    driverName: '王师傅',
    rating: 3,
    content: '车内有点异味，希望能注意一下卫生。',
    time: '2024-05-20 12:20:00',
    tags: ['卫生差'],
    reply: '',
  },
  {
    id: 'R000004',
    orderId: '2024052012345678904',
    driverId: 'D000004',
    driverName: '赵师傅',
    rating: 5,
    content: '司机很热情，还主动帮忙搬行李，非常贴心！',
    time: '2024-05-20 11:15:00',
    tags: ['服务好', '热情'],
    reply: '感谢您的认可，我们会继续保持！',
  },
  {
    id: 'R000005',
    orderId: '2024052012345678905',
    driverId: 'D000005',
    driverName: '刘师傅',
    rating: 4,
    content: '行程顺利，司机导航很准确，没有绕路。',
    time: '2024-05-20 10:30:00',
    tags: ['路线准确'],
    reply: '',
  },
]

function DriverReview() {
  const columns = [
    { 
      title: '评价ID', 
      dataIndex: 'id', 
      key: 'id', 
      width: 100,
      render: (text) => <span style={{ color: '#666' }}>{text}</span>
    },
    { title: '订单号', dataIndex: 'orderId', key: 'orderId', width: 180 },
    { 
      title: '司机', 
      dataIndex: 'driverName', 
      key: 'driverName', 
      width: 100,
      render: (text, record) => (
        <div>
          <div style={{ fontWeight: 'bold', color: '#333' }}>{text}</div>
          <div style={{ fontSize: 12, color: '#999' }}>{record.driverId}</div>
        </div>
      )
    },
    { 
      title: '评分', 
      dataIndex: 'rating', 
      key: 'rating', 
      width: 80,
      render: (text) => (
        <span style={{ color: '#ff9800', fontSize: 16 }}>
          {'⭐'.repeat(text)}{'☆'.repeat(5 - text)}
        </span>
      )
    },
    { 
      title: '评价内容', 
      dataIndex: 'content', 
      key: 'content', 
      ellipsis: true,
      render: (text) => <span style={{ color: '#333' }}>{text}</span>
    },
    { 
      title: '标签', 
      dataIndex: 'tags', 
      key: 'tags', 
      width: 150,
      render: (text) => (
        <div>
          {text.map((tag, index) => (
            <Tag key={index} color="purple" style={{ marginBottom: 4 }}>{tag}</Tag>
          ))}
        </div>
      )
    },
    { title: '评价时间', dataIndex: 'time', key: 'time', width: 160 },
    { 
      title: '回复', 
      dataIndex: 'reply', 
      key: 'reply', 
      width: 150,
      render: (text) => (
        <span style={{ color: text ? '#52c41a' : '#999' }}>
          {text || '未回复'}
        </span>
      )
    },
    { 
      title: '操作', 
      key: 'action', 
      width: 120,
      render: (_, record) => (
        <Button 
          type="link" 
          size="small" 
          disabled={!!record.reply}
          style={{ color: record.reply ? '#999' : '#7c4dff' }}
        >
          {record.reply ? '已回复' : '回复'}
        </Button>
      )
    },
  ]

  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ background: 'white', borderRadius: 12, padding: 20, marginBottom: 20 }}>
        <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap', alignItems: 'center' }}>
          <Input placeholder="订单号/司机ID" style={{ width: 200 }} />
          <Select placeholder="评分" style={{ width: 120 }}>
            <Option value="all">全部评分</Option>
            <Option value="5">5星</Option>
            <Option value="4">4星</Option>
            <Option value="3">3星及以下</Option>
          </Select>
          <Select placeholder="是否回复" style={{ width: 120 }}>
            <Option value="all">全部</Option>
            <Option value="yes">已回复</Option>
            <Option value="no">未回复</Option>
          </Select>
          <Input placeholder="评价时间 - 起始" style={{ width: 180 }} />
          <Input placeholder="评价时间 - 结束" style={{ width: 180 }} />
          <Button type="primary">查询</Button>
          <Button>重置</Button>
        </div>
      </div>

      <Row gutter={16} style={{ marginBottom: 20 }}>
        <Col span={6}>
          <div style={{ background: 'white', borderRadius: 12, padding: 20, textAlign: 'center' }}>
            <div style={{ fontSize: 32, fontWeight: 'bold', color: '#7c4dff' }}>4.8</div>
            <div style={{ color: '#999', marginTop: 4 }}>平均评分</div>
          </div>
        </Col>
        <Col span={6}>
          <div style={{ background: 'white', borderRadius: 12, padding: 20, textAlign: 'center' }}>
            <div style={{ fontSize: 32, fontWeight: 'bold', color: '#52c41a' }}>92%</div>
            <div style={{ color: '#999', marginTop: 4 }}>好评率</div>
          </div>
        </Col>
        <Col span={6}>
          <div style={{ background: 'white', borderRadius: 12, padding: 20, textAlign: 'center' }}>
            <div style={{ fontSize: 32, fontWeight: 'bold', color: '#2196f3' }}>12,568</div>
            <div style={{ color: '#999', marginTop: 4 }}>总评价数</div>
          </div>
        </Col>
        <Col span={6}>
          <div style={{ background: 'white', borderRadius: 12, padding: 20, textAlign: 'center' }}>
            <div style={{ fontSize: 32, fontWeight: 'bold', color: '#ff9800' }}>85%</div>
            <div style={{ color: '#999', marginTop: 4 }}>回复率</div>
          </div>
        </Col>
      </Row>

      <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 16 }}>
          <h2 style={{ fontSize: 16, fontWeight: 'bold', color: '#333' }}>司机评价列表</h2>
          <Button>导出全部</Button>
        </div>
        <Table
          dataSource={reviewData}
          columns={columns}
          pagination={{ pageSize: 10 }}
          scroll={{ x: 'max-content' }}
        />
      </div>
    </div>
  )
}

export default DriverReview