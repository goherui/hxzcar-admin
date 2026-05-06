import { Table, Select, Button, Input, Tag, Tabs } from 'antd'

const { Option } = Select
const { TabPane } = Tabs

const activityData = [
  {
    id: 'ACT20240520001',
    name: '周末出行满减10元',
    type: '立减优惠',
    startTime: '2024-05-20 00:00:00',
    endTime: '2024-05-26 23:59:59',
    scope: '全国',
    target: '全部用户',
    totalUsers: 125699,
    usedUsers: 46632,
    usageRate: '36.1%',
    status: '进行中',
  },
  {
    id: 'ACT20240520002',
    name: '新用户首单减10元',
    type: '新用户',
    startTime: '2024-05-18 00:00:00',
    endTime: '2024-06-30 23:59:59',
    scope: '全国',
    target: '新用户',
    totalUsers: 86591,
    usedUsers: 28341,
    usageRate: '32.7%',
    status: '进行中',
  },
  {
    id: 'ACT20240515003',
    name: '五一出行补贴',
    type: '立减优惠',
    startTime: '2024-05-01 00:00:00',
    endTime: '2024-05-05 23:59:59',
    scope: '全国',
    target: '全部用户',
    totalUsers: 256235,
    usedUsers: 186842,
    usageRate: '72.9%',
    status: '已结束',
  },
  {
    id: 'ACT20240428004',
    name: '邀请好友奖励',
    type: '拉新奖励',
    startTime: '2024-04-28 00:00:00',
    endTime: '2024-05-15 23:59:59',
    scope: '全国',
    target: '全部用户',
    totalUsers: 65831,
    usedUsers: 22314,
    usageRate: '33.9%',
    status: '已结束',
  },
  {
    id: 'ACT20240420005',
    name: '雨天打车补贴',
    type: '天气补贴',
    startTime: '2024-04-20 00:00:00',
    endTime: '2024-04-30 23:59:59',
    scope: '指定城市',
    target: '全部用户',
    totalUsers: 32145,
    usedUsers: 12688,
    usageRate: '39.5%',
    status: '已结束',
  },
]

function ActivityManagement() {
  const columns = [
    { 
      title: '活动ID', 
      dataIndex: 'id', 
      key: 'id', 
      width: 150,
      render: (text) => <span style={{ color: '#666' }}>{text}</span>
    },
    { 
      title: '活动名称', 
      dataIndex: 'name', 
      key: 'name', 
      width: 180,
      render: (text) => <span style={{ fontWeight: 'bold', color: '#333' }}>{text}</span>
    },
    { 
      title: '活动类型', 
      dataIndex: 'type', 
      key: 'type', 
      width: 100,
      render: (text) => {
        const color = text === '立减优惠' ? 'purple' : text === '新用户' ? 'orange' : text === '拉新奖励' ? 'green' : 'blue'
        return <Tag color={color}>{text}</Tag>
      }
    },
    { title: '活动时间', dataIndex: 'startTime', key: 'startTime', width: 220, render: (text, record) => `${text.split(' ')[0]} ~ ${record.endTime.split(' ')[0]}` },
    { title: '活动范围', dataIndex: 'scope', key: 'scope', width: 100 },
    { title: '参与用户', dataIndex: 'target', key: 'target', width: 100 },
    { 
      title: '领取人数', 
      dataIndex: 'totalUsers', 
      key: 'totalUsers', 
      width: 100,
      render: (text) => <span style={{ color: '#666' }}>{text.toLocaleString()}</span>
    },
    { 
      title: '使用人数', 
      dataIndex: 'usedUsers', 
      key: 'usedUsers', 
      width: 100,
      render: (text) => <span style={{ color: '#7c4dff', fontWeight: 'bold' }}>{text.toLocaleString()}</span>
    },
    { 
      title: '使用率', 
      dataIndex: 'usageRate', 
      key: 'usageRate', 
      width: 100,
      render: (text) => <span style={{ color: '#52c41a' }}>{text}</span>
    },
    { 
      title: '活动状态', 
      dataIndex: 'status', 
      key: 'status', 
      width: 100,
      render: (text) => {
        const color = text === '进行中' ? 'green' : text === '未开始' ? 'blue' : 'gray'
        return <Tag color={color}>{text}</Tag>
      }
    },
    { 
      title: '操作', 
      key: 'action', 
      width: 120,
      render: () => (
        <div>
          <Button type="link" size="small">编辑</Button>
          <Button type="link" size="small">详情</Button>
        </div>
      )
    },
  ]

  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
        <h2 style={{ fontSize: 18, fontWeight: 'bold', color: '#333' }}>活动管理</h2>
        <Button type="primary">创建活动</Button>
      </div>

      <Tabs defaultActiveKey="all">
        <TabPane tab="全部活动" key="all">
          <div style={{ background: 'white', borderRadius: 12, padding: 20, marginBottom: 20 }}>
            <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap', alignItems: 'center' }}>
              <Input placeholder="活动名称/活动ID" style={{ width: 200 }} />
              <Select placeholder="活动类型" style={{ width: 150 }}>
                <Option value="all">全部类型</Option>
                <Option value="discount">立减优惠</Option>
                <Option value="newUser">新用户</Option>
                <Option value="invite">拉新奖励</Option>
              </Select>
              <Select placeholder="活动状态" style={{ width: 120 }}>
                <Option value="all">全部状态</Option>
                <Option value="active">进行中</Option>
                <Option value="pending">未开始</Option>
                <Option value="ended">已结束</Option>
              </Select>
              <Input placeholder="活动时间 - 起始" style={{ width: 180 }} />
              <Input placeholder="活动时间 - 结束" style={{ width: 180 }} />
              <Button type="primary">查询</Button>
              <Button>重置</Button>
            </div>
          </div>

          <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
            <Table
              dataSource={activityData}
              columns={columns}
              pagination={{ pageSize: 10 }}
              scroll={{ x: 'max-content' }}
            />
          </div>
        </TabPane>

        <TabPane tab="进行中" key="active">
          <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
            <Table
              dataSource={activityData.filter(item => item.status === '进行中')}
              columns={columns}
              pagination={{ pageSize: 10 }}
              scroll={{ x: 'max-content' }}
            />
          </div>
        </TabPane>

        <TabPane tab="未开始" key="pending">
          <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
            <div style={{ textAlign: 'center', padding: 40, color: '#999' }}>
              <div style={{ fontSize: 48, marginBottom: 16 }}>📅</div>
              <div>暂无未开始的活动</div>
            </div>
          </div>
        </TabPane>

        <TabPane tab="已结束" key="ended">
          <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
            <Table
              dataSource={activityData.filter(item => item.status === '已结束')}
              columns={columns}
              pagination={{ pageSize: 10 }}
              scroll={{ x: 'max-content' }}
            />
          </div>
        </TabPane>
      </Tabs>
    </div>
  )
}

export default ActivityManagement