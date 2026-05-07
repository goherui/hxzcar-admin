import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { Table, Tag, Tabs } from 'antd'
import { getOrderList } from '../api/hxzCar'

const { TabPane } = Tabs

function OrderTable() {
  const navigate = useNavigate()
  const [orderList, setOrderList] = useState([])
  const [activeTab, setActiveTab] = useState('all')
  const [loading, setLoading] = useState(false)

  const fetchOrders = async (status = '') => {
    setLoading(true)
    try {
      const params = {
        page: 1,
        pageSize: 10,
        orderStatus: status === 'all' ? 0 : status === 'processing' ? 1 : 6
      }
      const response = await getOrderList(params)
      if (response.code === 0 || response.code === 200) {
        if (response.data && response.data.list) {
          const formattedOrders = response.data.list.map(order => ({
            id: order.orderNo,
            key: order.id,
            time: formatDateTime(order.createTime),
            from: order.startAddress,
            to: order.endAddress,
            type: order.carType || '快车',
            status: getStatusText(order.orderStatus),
            amount: order.totalAmount ? order.totalAmount.toFixed(2) : '0.00'
          }))
          setOrderList(formattedOrders)
        }
      }
    } catch (error) {
      console.error('获取订单列表失败:', error)
    } finally {
      setLoading(false)
    }
  }

  const formatDateTime = (dateStr) => {
    if (!dateStr) return ''
    const date = new Date(dateStr)
    return `${String(date.getMonth() + 1).padStart(2, '0')}-${String(date.getDate()).padStart(2, '0')} ${String(date.getHours()).padStart(2, '0')}:${String(date.getMinutes()).padStart(2, '0')}:${String(date.getSeconds()).padStart(2, '0')}`
  }

  const getStatusText = (status) => {
    switch (status) {
      case 1:
      case 2:
      case 3:
        return '进行中'
      case 4:
        return '已完成'
      case 5:
        return '已取消'
      default:
        return '异常'
    }
  }

  useEffect(() => {
    fetchOrders(activeTab)
  }, [activeTab])

  const handleRefresh = () => {
    fetchOrders(activeTab)
  }

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
        const color = text === '特惠快车' ? 'orange' : text === '舒适型' ? 'cyan' : 'purple'
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
      render: (_, record) => (
        <a 
          href="#" 
          style={{ color: '#6366F1', fontSize: 13 }}
          onClick={(e) => {
            e.preventDefault()
            navigate(`/order-detail/${record.key}`)
          }}
        >详情</a>
      ),
    },
  ]

  return (
    <div className="table-wrapper">
      <Tabs 
        activeKey={activeTab} 
        onChange={(key) => setActiveTab(key)}
        style={{ marginBottom: 16 }}
      >
        <TabPane tab="全部订单" key="all" />
        <TabPane tab="进行中" key="processing" />
        <TabPane tab="异常订单" key="abnormal" />
      </Tabs>
      <Table
        dataSource={orderList}
        columns={columns}
        pagination={false}
        bordered={false}
        rowKey="key"
        style={{ fontSize: 13 }}
        loading={loading}
        onHeaderRow={() => ({
          onClick: handleRefresh
        })}
      />
    </div>
  )
}

export default OrderTable