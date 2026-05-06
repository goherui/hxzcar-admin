import { Table, Select, Button, Input, Tag } from 'antd'
import { useNavigate } from 'react-router-dom'

const { Option } = Select

const userListData = [
  { id: '100001', name: '张三', phone: '138****1234', status: '正常', regTime: '2024-05-10 10:30:00', lastLogin: '2024-05-20 14:23:45', orders: 56, amount: '2186.50', channel: '花小猪APP' },
  { id: '100002', name: '李四', phone: '139****5678', status: '正常', regTime: '2024-05-09 11:20:00', lastLogin: '2024-05-20 13:15:30', orders: 128, amount: '5198.00', channel: '微信小程序' },
  { id: '100003', name: '王五', phone: '137****9012', status: '待激活', regTime: '2024-05-15 09:45:00', lastLogin: '-', orders: 3, amount: '126.00', channel: '支付宝小程序' },
  { id: '100004', name: '赵六', phone: '136****3456', status: '正常', regTime: '2024-05-08 14:30:00', lastLogin: '2024-05-19 16:45:20', orders: 89, amount: '3566.80', channel: '花小猪APP' },
  { id: '100005', name: '钱七', phone: '135****7890', status: '禁用', regTime: '2024-05-05 10:00:00', lastLogin: '2024-05-18 09:30:15', orders: 23, amount: '928.00', channel: 'H5端' },
]

function UserList() {
  const navigate = useNavigate()

  const columns = [
    { title: '用户ID', dataIndex: 'id', key: 'id', width: 100 },
    {
      title: '用户信息',
      key: 'info',
      render: (_, record) => (
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <div style={{ width: 32, height: 32, borderRadius: '50%', background: 'var(--primary-color)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 14 }}>
            {record.name.charAt(0)}
          </div>
          <div>
            <div style={{ fontWeight: 500 }}>{record.name}</div>
            <Tag size="small" color="blue">{record.channel}</Tag>
          </div>
        </div>
      ),
    },
    { title: '手机号', dataIndex: 'phone', key: 'phone', width: 120 },
    { title: '注册时间', dataIndex: 'regTime', key: 'regTime', width: 160 },
    {
      title: '用户状态',
      dataIndex: 'status',
      key: 'status',
      width: 100,
      render: (status) => {
        const color = status === '正常' ? 'success' : status === '待激活' ? 'processing' : 'error'
        return <Tag color={color}>{status}</Tag>
      },
    },
    { title: '最近登录', dataIndex: 'lastLogin', key: 'lastLogin', width: 160 },
    { title: '订单数', dataIndex: 'orders', key: 'orders', width: 80, align: 'right' },
    { title: '累计消费', dataIndex: 'amount', key: 'amount', width: 100, align: 'right' },
    {
      title: '操作',
      key: 'action',
      width: 150,
      render: (_, record) => (
        <div style={{ display: 'flex', gap: 8 }}>
          <Button type="link" size="small">详情</Button>
          <Button type="link" size="small" onClick={() => navigate(`/user-portrait?id=${record.id}`)}>画像</Button>
          <Button type="link" size="small" danger>禁用</Button>
        </div>
      ),
    },
  ]

  return (
    <div style={{ padding: 20, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div className="filter-bar">
        <div className="filter-item">
          <span className="filter-label">手机号</span>
          <Input placeholder="请输入手机号" style={{ width: 180 }} />
        </div>
        <div className="filter-item">
          <span className="filter-label">用户昵称</span>
          <Input placeholder="请输入昵称" style={{ width: 180 }} />
        </div>
        <div className="filter-item">
          <span className="filter-label">用户状态</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部状态</Option>
            <Option value="normal">正常</Option>
            <Option value="pending">待激活</Option>
            <Option value="disabled">已禁用</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">注册日期</span>
          <Input placeholder="开始日期" style={{ width: 140 }} />
          <span style={{ color: 'var(--text-muted)' }}>至</span>
          <Input placeholder="结束日期" style={{ width: 140 }} />
        </div>
        <Button type="primary" style={{ marginLeft: 'auto' }}>查询</Button>
        <Button>重置</Button>
      </div>

      <div className="table-card">
        <div className="table-card-header">
          <span className="table-card-title">用户列表</span>
          <div style={{ display: 'flex', gap: 10 }}>
            <Button>批量导出</Button>
            <Button type="primary">新增用户</Button>
          </div>
        </div>
        <Table
          dataSource={userListData}
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

export default UserList
