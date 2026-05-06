import { Card, Table, Select, Button, Input, Tag } from 'antd'

const { Option } = Select

const logData = [
  { id: '1', userId: '10001', userName: '张三', action: '登录系统', module: '系统管理', time: '2024-05-20 14:30:00', ip: '192.168.1.100', status: '成功' },
  { id: '2', userId: '10002', userName: '李四', action: '创建角色', module: '系统管理', time: '2024-05-20 14:28:00', ip: '192.168.1.101', status: '成功' },
  { id: '3', userId: '10003', userName: '王五', action: '查询订单', module: '订单管理', time: '2024-05-20 14:25:00', ip: '192.168.1.102', status: '成功' },
  { id: '4', userId: '10001', userName: '张三', action: '导出报表', module: '数据中心', time: '2024-05-20 14:20:00', ip: '192.168.1.100', status: '成功' },
  { id: '5', userId: '10004', userName: '赵六', action: '修改用户', module: '用户管理', time: '2024-05-20 14:18:00', ip: '192.168.1.103', status: '成功' },
  { id: '6', userId: '10005', userName: '钱七', action: '审核司机', module: '司机管理', time: '2024-05-20 14:15:00', ip: '192.168.1.104', status: '成功' },
  { id: '7', userId: '10002', userName: '李四', action: '创建活动', module: '运营管理', time: '2024-05-20 14:10:00', ip: '192.168.1.101', status: '成功' },
  { id: '8', userId: '10006', userName: '孙八', action: '登录系统', module: '系统管理', time: '2024-05-20 14:05:00', ip: '192.168.1.105', status: '失败' },
]

function OperationLog() {
  const columns = [
    { title: '日志ID', dataIndex: 'id', key: 'id', width: 80 },
    { title: '用户ID', dataIndex: 'userId', key: 'userId', width: 100 },
    { 
      title: '操作人', 
      dataIndex: 'userName', 
      key: 'userName', 
      width: 100,
      render: (text) => <span style={{ fontWeight: 'bold', color: '#333' }}>{text}</span>
    },
    { 
      title: '操作类型', 
      dataIndex: 'action', 
      key: 'action', 
      width: 120,
      render: (text) => <Tag color="purple">{text}</Tag>
    },
    { 
      title: '操作模块', 
      dataIndex: 'module', 
      key: 'module', 
      width: 120,
      render: (text) => <Tag color="blue">{text}</Tag>
    },
    { title: '操作时间', dataIndex: 'time', key: 'time', width: 180 },
    { 
      title: 'IP地址', 
      dataIndex: 'ip', 
      key: 'ip', 
      width: 150,
      render: (text) => <span style={{ fontFamily: 'monospace', color: '#666' }}>{text}</span>
    },
    { 
      title: '操作状态', 
      dataIndex: 'status', 
      key: 'status', 
      width: 80,
      render: (text) => <Tag color={text === '成功' ? 'green' : 'red'}>{text}</Tag>
    },
  ]

  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
        <h2 style={{ fontSize: 18, fontWeight: 'bold', color: '#333' }}>操作日志</h2>
        <Button>导出日志</Button>
      </div>

      <div style={{ background: 'white', borderRadius: 12, padding: 20, marginBottom: 20 }}>
        <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap', alignItems: 'center' }}>
          <Input placeholder="用户名/用户ID" style={{ width: 200 }} />
          <Select placeholder="操作模块" style={{ width: 150 }}>
            <Option value="all">全部模块</Option>
            <Option value="system">系统管理</Option>
            <Option value="order">订单管理</Option>
            <Option value="user">用户管理</Option>
          </Select>
          <Select placeholder="操作状态" style={{ width: 120 }}>
            <Option value="all">全部状态</Option>
            <Option value="success">成功</Option>
            <Option value="fail">失败</Option>
          </Select>
          <Input placeholder="开始时间" style={{ width: 180 }} />
          <Input placeholder="结束时间" style={{ width: 180 }} />
          <Button type="primary">查询</Button>
          <Button>重置</Button>
        </div>
      </div>

      <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
        <Table
          dataSource={logData}
          columns={columns}
          pagination={{ pageSize: 10 }}
        />
      </div>
    </div>
  )
}

export default OperationLog