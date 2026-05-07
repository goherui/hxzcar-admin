import { useState, useEffect } from 'react'
import { Table, Select, Button, Input, Tag } from 'antd'
import { useNavigate } from 'react-router-dom'
import { getAbnormalStats, getAbnormalOrders, updateAbnormalStatus, batchProcessAbnormal } from '../../api/hxzCar'

const { Option } = Select

function AbnormalOrder() {
  const navigate = useNavigate()
  const [stats, setStats] = useState({
    total: 124,
    processing: 36,
    processed: 88,
    processRate: 71.0,
  })
  const [orders, setOrders] = useState([])
  const [total, setTotal] = useState(0)
  const [pagination, setPagination] = useState({ current: 1, pageSize: 10 })
  const [filters, setFilters] = useState({
    keyword: '',
    city: '全部城市',
    abnormalType: 0,
    processStatus: 0,
  })

  useEffect(() => {
    fetchStats()
    fetchOrders()
  }, [])

  const fetchStats = async () => {
    try {
      const response = await getAbnormalStats()
      if (response.code === 0 || response.code === 200) {
        setStats(response.data)
      }
    } catch (error) {
      console.error('获取异常订单统计失败:', error)
    }
  }

  const fetchOrders = async (page = 1, pageSize = 10) => {
    try {
      const params = {
        keyword: filters.keyword,
        city: filters.city === '全部城市' ? '' : filters.city,
        abnormalType: filters.abnormalType,
        processStatus: filters.processStatus,
        page: page,
        pageSize: pageSize,
      }
      const response = await getAbnormalOrders(params)
      if (response.code === 0 || response.code === 200) {
        setOrders(response.data.list)
        setTotal(response.data.total)
      }
    } catch (error) {
      console.error('获取异常订单列表失败:', error)
    }
  }

  const handleSearch = () => {
    setPagination({ current: 1, pageSize: 10 })
    fetchOrders(1, 10)
  }

  const handleReset = () => {
    setFilters({
      keyword: '',
      city: '全部城市',
      abnormalType: 0,
      processStatus: 0,
    })
    setPagination({ current: 1, pageSize: 10 })
    fetchOrders(1, 10)
  }

  const handlePageChange = (page, pageSize) => {
    setPagination({ current: page, pageSize })
    fetchOrders(page, pageSize)
  }

  const handleProcess = async (id) => {
    try {
      const response = await updateAbnormalStatus(id, 2)
      if (response.code === 0 || response.code === 200) {
        fetchOrders(pagination.current, pagination.pageSize)
        fetchStats()
      }
    } catch (error) {
      console.error('处理订单失败:', error)
    }
  }

  const handleBatchProcess = async () => {
    const selectedIds = orders.filter(o => o.selected).map(o => o.id)
    if (selectedIds.length === 0) {
      alert('请选择要处理的订单')
      return
    }
    try {
      const response = await batchProcessAbnormal(selectedIds, 2)
      if (response.code === 0 || response.code === 200) {
        fetchOrders(pagination.current, pagination.pageSize)
        fetchStats()
      }
    } catch (error) {
      console.error('批量处理失败:', error)
    }
  }

  const getStatusText = (status) => {
    switch (status) {
      case 1:
        return '处理中'
      case 2:
        return '已处理'
      default:
        return '待处理'
    }
  }

  const getStatusColor = (status) => {
    switch (status) {
      case 1:
        return 'processing'
      case 2:
        return 'success'
      default:
        return 'default'
    }
  }

  const columns = [
    { title: '订单号', dataIndex: 'orderNo', key: 'orderNo', ellipsis: true },
    { 
      title: '下单时间', 
      dataIndex: 'createTime', 
      key: 'createTime',
      render: (text) => {
        if (typeof text === 'string') {
          if (text.includes('T')) {
            return text.replace('T', ' ').split('.')[0]
          }
        }
        return text
      },
    },
    { title: '乘客', dataIndex: 'passengerName', key: 'passengerName' },
    { title: '手机号', dataIndex: 'phone', key: 'phone' },
    { title: '出发地', dataIndex: 'startAddress', key: 'startAddress', ellipsis: true },
    { title: '目的地', dataIndex: 'endAddress', key: 'endAddress', ellipsis: true },
    { title: '订单类型', dataIndex: 'carType', key: 'carType' },
    { 
      title: '订单金额', 
      dataIndex: 'totalAmount', 
      key: 'totalAmount',
      render: (text) => `¥${text}`,
    },
    {
      title: '异常类型',
      dataIndex: 'abnormalType',
      key: 'abnormalType',
      render: (type) => <Tag color="orange">{type}</Tag>,
    },
    {
      title: '处理状态',
      dataIndex: 'processStatus',
      key: 'processStatus',
      render: (status) => {
        return <Tag color={getStatusColor(status)}>{getStatusText(status)}</Tag>
      },
    },
    {
      title: '操作',
      key: 'action',
      render: (_, record) => (
        <div style={{ display: 'flex', gap: 8 }}>
          <Button type="link" size="small" onClick={() => navigate(`/order-detail/${record.id}`)}>详情</Button>
          {record.processStatus !== 2 && (
            <Button type="link" size="small" onClick={() => handleProcess(record.id)}>处理</Button>
          )}
        </div>
      ),
    },
  ]

  const statCards = [
    { label: '异常订单数', value: stats.total.toLocaleString(), change: '+12.5%' },
    { label: '处理中', value: stats.processing.toLocaleString(), change: '+8.3%' },
    { label: '已处理', value: stats.processed.toLocaleString(), change: '+15.2%' },
    { label: '处理率', value: `${stats.processRate.toFixed(1)}%`, change: '+3.2%' },
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

      <div className="filter-bar" style={{ display: 'flex', alignItems: 'center', gap: 16, padding: 16, background: '#fff', borderRadius: 8, marginBottom: 20 }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <span style={{ fontSize: 12, color: '#666' }}>订单号/手机号/车牌号</span>
          <Input 
            placeholder="请输入关键词" 
            style={{ width: 200 }}
            value={filters.keyword}
            onChange={(e) => setFilters({ ...filters, keyword: e.target.value })}
            onPressEnter={handleSearch}
          />
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <span style={{ fontSize: 12, color: '#666' }}>城市</span>
          <Select 
            value={filters.city} 
            style={{ width: 120 }}
            onChange={(value) => setFilters({ ...filters, city: value })}
          >
            <Option value="全部城市">全部城市</Option>
            <Option value="北京">北京</Option>
            <Option value="上海">上海</Option>
            <Option value="广州">广州</Option>
            <Option value="深圳">深圳</Option>
            <Option value="成都">成都</Option>
          </Select>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <span style={{ fontSize: 12, color: '#666' }}>异常类型</span>
          <Select 
            value={filters.abnormalType} 
            style={{ width: 140 }}
            onChange={(value) => setFilters({ ...filters, abnormalType: value })}
          >
            <Option value={0}>全部类型</Option>
            <Option value={1}>乘客取消</Option>
            <Option value={2}>司机取消</Option>
            <Option value={3}>路线偏离</Option>
            <Option value={4}>费用异常</Option>
          </Select>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
          <span style={{ fontSize: 12, color: '#666' }}>处理状态</span>
          <Select 
            value={filters.processStatus} 
            style={{ width: 120 }}
            onChange={(value) => setFilters({ ...filters, processStatus: value })}
          >
            <Option value={0}>全部状态</Option>
            <Option value={1}>处理中</Option>
            <Option value={2}>已处理</Option>
          </Select>
        </div>
        <Button type="primary" onClick={handleSearch} style={{ marginLeft: 'auto' }}>查询</Button>
        <Button onClick={handleReset}>重置</Button>
      </div>

      <div className="table-card" style={{ background: '#fff', borderRadius: 8, overflow: 'hidden' }}>
        <div className="table-card-header" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: 16, borderBottom: '1px solid #f3f4f6' }}>
          <span className="table-card-title" style={{ fontSize: 14, fontWeight: 600, color: '#333' }}>异常订单列表</span>
          <Button type="primary" onClick={handleBatchProcess}>批量处理</Button>
        </div>
        <Table
          dataSource={orders}
          columns={columns}
          pagination={{ 
            current: pagination.current, 
            pageSize: pagination.pageSize,
            total: total,
            onChange: handlePageChange,
          }}
          rowKey="id"
          bordered={false}
          style={{ padding: 20 }}
        />
      </div>
    </div>
  )
}

export default AbnormalOrder
