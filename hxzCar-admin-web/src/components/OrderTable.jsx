import { Table, Select, Button, Tabs, Tag } from 'antd'
import { orderList } from '../data/mockData'

const { TabPane } = Tabs

function OrderTable() {
  const columns = [
    {
      title: '订单号',
      dataIndex: 'id',
      key: 'id',
      width: 160,
      ellipsis: true,
    },
    {
      title: '下单时间',
      dataIndex: 'time',
      key: 'time',
      width: 130,
    },
    {
      title: '出发地',
      dataIndex: 'from',
      key: 'from',
      ellipsis: true,
    },
    {
      title: '目的地',
      dataIndex: 'to',
      key: 'to',
      ellipsis: true,
    },
    {
      title: '订单类型',
      dataIndex: 'type',
      key: 'type',
      width: 100,
      render: (text) => {
        const color = text === '特惠快车' ? 'orange' : 'purple'
        return <Tag color={color}>{text}</Tag>
      },
    },
    {
      title: '状态',
      dataIndex: 'status',
      key: 'status',
      width: 90,
      render: (text) => {
        let color = 'default'
        if (text === '已完成') {
          color = 'success'
        } else if (text === '进行中') {
          color = 'processing'
        } else if (text === '已取消') {
          color = 'warning'
        } else if (text === '异常') {
          color = 'error'
        }
        return <Tag color={color}>{text}</Tag>
      },
    },
    {
      title: '金额',
      dataIndex: 'amount',
      key: 'amount',
      width: 90,
      align: 'right',
      render: (text) => <span style={{ color: '#333', fontWeight: 500 }}>¥{text}</span>,
    },
    {
      title: '操作',
      key: 'action',
      width: 60,
      render: () => (
        <Button type="link" size="small">详情</Button>
      ),
    },
  ]

  return (
    <div className="table-wrapper">
      <Tabs defaultActiveKey="all" style={{ marginBottom: 16 }}>
        <TabPane tab="全部订单" key="all" />
        <TabPane tab="进行中" key="processing" />
        <TabPane tab="异常订单" key="abnormal" />
      </Tabs>
      <Table
        dataSource={orderList}
        columns={columns}
        pagination={false}
        bordered={false}
        rowKey="id"
        style={{ fontSize: 13 }}
      />
    </div>
  )
}

export default OrderTable
