import { Table, Select, Button, Input, Tag } from 'antd'

const { Option } = Select

const driverData = [
  { id: 'D0001', name: '张师傅', phone: '138****1234', city: '北京市', online: true, rating: '4.9', orders: '1,256', joinTime: '2024-01-15', carNo: '京B12345', carType: '大众朗逸', todayOnline: '8.5h', todayOrders: '15', todayIncome: '326.50' },
  { id: 'D0002', name: '王师傅', phone: '139****5678', city: '上海市', online: false, rating: '4.8', orders: '892', joinTime: '2024-02-20', carNo: '沪A67890', carType: '丰田卡罗拉', todayOnline: '6.2h', todayOrders: '12', todayIncome: '258.00' },
  { id: 'D0003', name: '刘师傅', phone: '137****9012', city: '广州市', online: true, rating: '4.7', orders: '2,134', joinTime: '2023-11-10', carNo: '粤A11111', carType: '本田思域', todayOnline: '10.1h', todayOrders: '18', todayIncome: '385.60' },
]

function DriverList() {
  const columns = [
    {
      title: '司机信息',
      key: 'info',
      render: (_, record) => (
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <div style={{ width: 32, height: 32, borderRadius: '50%', background: '#f1f5f9', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'var(--text-secondary)', fontSize: 14 }}>
            {record.name.charAt(0)}
          </div>
          <div>
            <div style={{ fontWeight: 500 }}>{record.name}</div>
            <div style={{ fontSize: 12, color: 'var(--text-muted)' }}>{record.phone}</div>
          </div>
        </div>
      ),
    },
    { title: '城市', dataIndex: 'city', key: 'city', width: 100 },
    {
      title: '在线状态',
      key: 'online',
      width: 100,
      render: (_, record) => (
        <Tag color={record.online ? 'success' : 'default'}>
          {record.online ? '在线' : '离线'}
        </Tag>
      ),
    },
    { title: '评分', dataIndex: 'rating', key: 'rating', width: 80, align: 'right' },
    { title: '总订单', dataIndex: 'orders', key: 'orders', width: 100, align: 'right' },
    { title: '入驻时间', dataIndex: 'joinTime', key: 'joinTime', width: 120 },
    { title: '车牌号', dataIndex: 'carNo', key: 'carNo', width: 100 },
    { title: '车型', dataIndex: 'carType', key: 'carType', width: 120 },
    { title: '今日在线', dataIndex: 'todayOnline', key: 'todayOnline', width: 100, align: 'right' },
    { title: '今日订单', dataIndex: 'todayOrders', key: 'todayOrders', width: 100, align: 'right' },
    { title: '今日收入', dataIndex: 'todayIncome', key: 'todayIncome', width: 100, align: 'right' },
    {
      title: '操作',
      key: 'action',
      width: 150,
      render: () => (
        <div style={{ display: 'flex', gap: 8 }}>
          <Button type="link" size="small">详情</Button>
          <Button type="link" size="small">评价</Button>
          <Button type="link" size="small" danger>禁用</Button>
        </div>
      ),
    },
  ]

  return (
    <div style={{ padding: 20, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div className="filter-bar">
        <div className="filter-item">
          <span className="filter-label">司机ID/手机号/车牌号</span>
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
          <span className="filter-label">司机状态</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部状态</Option>
            <Option value="online">在线</Option>
            <Option value="offline">离线</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">入驻日期</span>
          <Input placeholder="开始日期" style={{ width: 140 }} />
          <span style={{ color: 'var(--text-muted)' }}>至</span>
          <Input placeholder="结束日期" style={{ width: 140 }} />
        </div>
        <Button type="primary" style={{ marginLeft: 'auto' }}>查询</Button>
        <Button>重置</Button>
      </div>

      <div className="table-card">
        <div className="table-card-header">
          <span className="table-card-title">司机列表</span>
          <Button type="primary">新增司机</Button>
        </div>
        <Table
          dataSource={driverData}
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

export default DriverList
