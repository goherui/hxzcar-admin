import { Table, Select, Button, Input, Tag } from 'antd'

const { Option } = Select

const abnormalData = [
  {
    id: '2024052012345678901',
    time: '2024-05-20 14:23:45',
    passenger: '王*',
    phone: '138****1234',
    from: '北京市 朝阳区望京街道',
    to: '北京市 海淀区中关村',
    type: '快车',
    amount: '34.17',
    abnormalType: '司机爽约',
    status: '处理中',
  },
  {
    id: '2024052012345678902',
    time: '2024-05-20 14:23:42',
    passenger: '李*',
    phone: '139****5678',
    from: '上海市 浦东新区陆家嘴',
    to: '上海市 静安区南京西路',
    type: '快车',
    amount: '45.00',
    abnormalType: '乘客取消',
    status: '已处理',
  },
  {
    id: '2024052012345678903',
    time: '2024-05-20 14:23:40',
    passenger: '赵*',
    phone: '137****9012',
    from: '广州市 天河区体育西路',
    to: '广州市 海珠区客村',
    type: '特惠快车',
    amount: '18.00',
    abnormalType: '路线偏离',
    status: '处理中',
  },
]

const statCards = [
  { label: '异常订单数', value: '124', change: '+12.5%' },
  { label: '处理中', value: '36', change: '+8.3%' },
  { label: '已处理', value: '88', change: '+15.2%' },
  { label: '处理率', value: '71.0%', change: '+3.2%' },
]

function AbnormalOrder() {
  const columns = [
    { title: '订单号', dataIndex: 'id', key: 'id', ellipsis: true },
    { title: '下单时间', dataIndex: 'time', key: 'time' },
    { title: '乘客', dataIndex: 'passenger', key: 'passenger' },
    { title: '手机号', dataIndex: 'phone', key: 'phone' },
    { title: '出发地', dataIndex: 'from', key: 'from', ellipsis: true },
    { title: '目的地', dataIndex: 'to', key: 'to', ellipsis: true },
    { title: '订单类型', dataIndex: 'type', key: 'type' },
    { title: '订单金额', dataIndex: 'amount', key: 'amount' },
    {
      title: '异常类型',
      dataIndex: 'abnormalType',
      key: 'abnormalType',
      render: (type) => <Tag color="warning">{type}</Tag>,
    },
    {
      title: '处理状态',
      dataIndex: 'status',
      key: 'status',
      render: (status) => {
        const color = status === '已处理' ? 'success' : 'processing'
        return <Tag color={color}>{status}</Tag>
      },
    },
    {
      title: '操作',
      key: 'action',
      render: () => (
        <div style={{ display: 'flex', gap: 8 }}>
          <Button type="link" size="small">详情</Button>
          <Button type="link" size="small">处理</Button>
        </div>
      ),
    },
  ]

  return (
    <div style={{ padding: 20, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: 20, marginBottom: 20 }}>
        {statCards.map((card, index) => (
          <div key={index} className="stat-card">
            <div className="stat-card-label">{card.label}</div>
            <div className="stat-card-value">{card.value}</div>
            <div className="stat-card-change">{card.change}</div>
          </div>
        ))}
      </div>

      <div className="filter-bar">
        <div className="filter-item">
          <span className="filter-label">订单号/手机号/车牌号</span>
          <Input placeholder="请输入关键词" style={{ width: 200 }} />
        </div>
        <div className="filter-item">
          <span className="filter-label">城市</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部城市</Option>
            <Option value="北京">北京</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">异常类型</span>
          <Select defaultValue="全部" style={{ width: 140 }}>
            <Option value="全部">全部类型</Option>
            <Option value="driver">司机爽约</Option>
            <Option value="passenger">乘客取消</Option>
            <Option value="route">路线偏离</Option>
            <Option value="fee">费用争议</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">处理状态</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部状态</Option>
            <Option value="processing">处理中</Option>
            <Option value="done">已处理</Option>
          </Select>
        </div>
        <Button type="primary" style={{ marginLeft: 'auto' }}>查询</Button>
        <Button>重置</Button>
      </div>

      <div className="table-card">
        <div className="table-card-header">
          <span className="table-card-title">异常订单列表</span>
          <Button type="primary">批量处理</Button>
        </div>
        <Table
          dataSource={abnormalData}
          columns={columns}
          pagination={{ pageSize: 10 }}
          rowKey="id"
          bordered={false}
          style={{ padding: 20 }}
        />
      </div>
    </div>
  )
}

export default AbnormalOrder
