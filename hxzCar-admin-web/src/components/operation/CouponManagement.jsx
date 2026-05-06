import { Table, Select, Button, Input, Tag } from 'antd'

const { Option } = Select

const couponStats = [
  { label: '优惠券总数', value: '256', change: '+12.5%' },
  { label: '发放数量', value: '125,699', change: '+8.3%' },
  { label: '使用数量', value: '45,632', change: '+15.2%' },
  { label: '使用率', value: '36.3%', change: '+2.1%' },
  { label: '优惠金额', value: '¥1,256,800', change: '+18.6%' },
]

const couponData = [
  {
    id: 'COUPON20240520001',
    name: '快车满30减10',
    type: '满减券',
    discount: '满30减10',
    validDays: 30,
    status: '正常',
    totalCount: 50000,
    sentCount: 45621,
    usedCount: 18654,
    usageRate: '40.9%',
    scope: '全国',
    target: '全部用户',
  },
  {
    id: 'COUPON20240520002',
    name: '新用户立减10',
    type: '新人券',
    discount: '立减10元',
    validDays: 7,
    status: '正常',
    totalCount: 30000,
    sentCount: 28934,
    usedCount: 12876,
    usageRate: '44.5%',
    scope: '全国',
    target: '新用户',
  },
  {
    id: 'COUPON20240515003',
    name: '周末折扣券',
    type: '折扣券',
    discount: '9折',
    validDays: 14,
    status: '正常',
    totalCount: 25000,
    sentCount: 22156,
    usedCount: 6482,
    usageRate: '29.3%',
    scope: '全国',
    target: '全部用户',
  },
  {
    id: 'COUPON20240510004',
    name: '邀请好友券',
    type: '邀请券',
    discount: '满20减15',
    validDays: 14,
    status: '暂停',
    totalCount: 20000,
    sentCount: 18643,
    usedCount: 4521,
    usageRate: '24.3%',
    scope: '全国',
    target: '全部用户',
  },
  {
    id: 'COUPON20240428005',
    name: '新人专享券',
    type: '新人券',
    discount: '满20减10',
    validDays: 3,
    status: '正常',
    totalCount: 15000,
    sentCount: 12356,
    usedCount: 3236,
    usageRate: '26.2%',
    scope: '全国',
    target: '新用户',
  },
]

function CouponManagement() {
  const columns = [
    { 
      title: '优惠券ID', 
      dataIndex: 'id', 
      key: 'id', 
      width: 160,
      ellipsis: true,
    },
    { 
      title: '优惠券名称', 
      dataIndex: 'name', 
      key: 'name', 
      width: 140,
      ellipsis: true,
    },
    { 
      title: '类型', 
      dataIndex: 'type', 
      key: 'type', 
      width: 90,
      render: (text) => {
        const color = text === '满减券' ? 'purple' : text === '新人券' ? 'orange' : text === '折扣券' ? 'blue' : 'green'
        return <Tag color={color}>{text}</Tag>
      },
    },
    { 
      title: '面额', 
      dataIndex: 'discount', 
      key: 'discount', 
      width: 100,
      render: (text) => <span style={{ color: '#f59e0b', fontWeight: 500 }}>{text}</span>,
    },
    { 
      title: '有效期', 
      dataIndex: 'validDays', 
      key: 'validDays', 
      width: 90,
      render: (text) => `${text}天`,
    },
    { 
      title: '状态', 
      dataIndex: 'status', 
      key: 'status', 
      width: 80,
      render: (text) => <Tag color={text === '正常' ? 'success' : 'warning'}>{text}</Tag>,
    },
    { 
      title: '库存', 
      dataIndex: 'totalCount', 
      key: 'totalCount', 
      width: 80,
      align: 'right',
      render: (text) => text.toLocaleString(),
    },
    { 
      title: '已发放', 
      dataIndex: 'sentCount', 
      key: 'sentCount', 
      width: 90,
      align: 'right',
      render: (text) => text.toLocaleString(),
    },
    { 
      title: '已使用', 
      dataIndex: 'usedCount', 
      key: 'usedCount', 
      width: 90,
      align: 'right',
      render: (text) => <span style={{ color: '#3b82f6', fontWeight: 500 }}>{text.toLocaleString()}</span>,
    },
    { 
      title: '使用率', 
      dataIndex: 'usageRate', 
      key: 'usageRate', 
      width: 90,
      align: 'right',
      render: (text) => <span style={{ color: '#10b981', fontWeight: 500 }}>{text}</span>,
    },
    { title: '适用范围', dataIndex: 'scope', key: 'scope', width: 100 },
    { title: '适用用户', dataIndex: 'target', key: 'target', width: 100 },
    { 
      title: '操作', 
      key: 'action', 
      width: 140,
      render: () => (
        <div style={{ display: 'flex', gap: 8 }}>
          <Button type="link" size="small">编辑</Button>
          <Button type="link" size="small">发放</Button>
          <Button type="link" size="small">详情</Button>
        </div>
      ),
    },
  ]

  return (
    <div style={{ padding: 24, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: 20, marginBottom: 24 }}>
        {couponStats.map((item, index) => (
          <div key={index} className="stat-card">
            <div className="stat-card-label">{item.label}</div>
            <div className="stat-card-value">{item.value}</div>
            <div className="stat-card-change">{item.change}</div>
          </div>
        ))}
      </div>

      <div className="filter-bar">
        <div className="filter-item">
          <span className="filter-label">优惠券名称/ID</span>
          <Input placeholder="请输入关键词" style={{ width: 200 }} />
        </div>
        <div className="filter-item">
          <span className="filter-label">优惠券类型</span>
          <Select defaultValue="全部" style={{ width: 140 }}>
            <Option value="全部">全部类型</Option>
            <Option value="full">满减券</Option>
            <Option value="new">新人券</Option>
            <Option value="discount">折扣券</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">状态</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部</Option>
            <Option value="normal">正常</Option>
            <Option value="paused">暂停</Option>
          </Select>
        </div>
        <Button type="primary" style={{ marginLeft: 'auto' }}>查询</Button>
        <Button>重置</Button>
      </div>

      <div className="table-card">
        <div className="table-card-header">
          <span className="table-card-title">优惠券列表</span>
          <Button type="primary">创建优惠券</Button>
        </div>
        <Table
          dataSource={couponData}
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

export default CouponManagement
