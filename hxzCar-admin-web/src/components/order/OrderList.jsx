import { useState, useEffect } from 'react'
import { Table, Select, Button, Input, Tag, DatePicker } from 'antd'
import { SearchOutlined, ReloadOutlined } from '@ant-design/icons'
import { getOrderList } from '@/api/hxzCar'

const { Option } = Select
const { RangePicker } = DatePicker

const cityOptions = [
  { value: '全部城市', label: '全部城市' },
  { value: '北京', label: '北京' },
  { value: '上海', label: '上海' },
  { value: '广州', label: '广州' },
  { value: '深圳', label: '深圳' },
  { value: '成都', label: '成都' },
  { value: '杭州', label: '杭州' },
  { value: '南京', label: '南京' },
  { value: '武汉', label: '武汉' },
  { value: '西安', label: '西安' },
  { value: '重庆', label: '重庆' },
  { value: '天津', label: '天津' },
  { value: '苏州', label: '苏州' },
  { value: '郑州', label: '郑州' },
  { value: '长沙', label: '长沙' },
  { value: '青岛', label: '青岛' },
]

const orderTypeOptions = [
  { value: '0', label: '全部类型' },
  { value: '1', label: '经济型' },
  { value: '2', label: '舒适型' },
  { value: '3', label: '特惠快车' },
]

const orderStatusOptions = [
  { value: '0', label: '全部状态' },
  { value: '3', label: '进行中' },
  { value: '4', label: '已完成' },
  { value: '5', label: '已取消' },
]

function OrderList() {
  const [loading, setLoading] = useState(false)
  const [data, setData] = useState([])
  const [total, setTotal] = useState(0)
  const [pagination, setPagination] = useState({
    current: 1,
    pageSize: 10,
  })

  const [filters, setFilters] = useState({
    keyword: '',
    city: '全部城市',
    orderType: '0',
    orderStatus: '0',
    startTime: '',
    endTime: '',
  })

  const fetchData = async (page, pageSize) => {
    setLoading(true)
    try {
      const params = {
        ...filters,
        page: page || pagination.current,
        pageSize: pageSize || pagination.pageSize,
        orderType: filters.orderType !== '0' ? parseInt(filters.orderType) : 0,
        orderStatus: filters.orderStatus !== '0' ? parseInt(filters.orderStatus) : 0,
      }
      const response = await getOrderList(params)
      if (response.code === 0 || response.code === 200) {
        setData(response.data.list)
        setTotal(response.data.total)
      }
    } catch (error) {
      console.error('获取订单列表失败:', error)
    } finally {
      setLoading(false)
    }
  }

  useEffect(() => {
    fetchData()
  }, [])

  const handleSearch = () => {
    setPagination({ ...pagination, current: 1 })
    fetchData(1, pagination.pageSize)
  }

  const handleReset = () => {
    const resetFilters = {
      keyword: '',
      city: '全部城市',
      orderType: '0',
      orderStatus: '0',
      startTime: '',
      endTime: '',
    }
    setFilters(resetFilters)
    setPagination({ current: 1, pageSize: 10 })
    const params = {
      ...resetFilters,
      page: 1,
      pageSize: 10,
      orderType: 0,
      orderStatus: 0,
    }
    fetchDataWithParams(params)
  }

  const fetchDataWithParams = async (params) => {
    setLoading(true)
    try {
      const response = await getOrderList(params)
      if (response.code === 0 || response.code === 200) {
        setData(response.data.list)
        setTotal(response.data.total)
      }
    } catch (error) {
      console.error('获取订单列表失败:', error)
    } finally {
      setLoading(false)
    }
  }

  const handlePageChange = (page, pageSize) => {
    setPagination({ current: page, pageSize })
    fetchData(page, pageSize)
  }

  const handleDateChange = (dates) => {
    if (dates && dates.length === 2) {
      setFilters({
        ...filters,
        startTime: dates[0].format('YYYY-MM-DD HH:mm:ss'),
        endTime: dates[1].format('YYYY-MM-DD HH:mm:ss'),
      })
    } else {
      setFilters({
        ...filters,
        startTime: '',
        endTime: '',
      })
    }
  }

  const columns = [
    {
      title: '订单号',
      dataIndex: 'orderNo',
      key: 'orderNo',
      width: 120,
      ellipsis: true,
      align: 'center',
      render: (text) => (
        <span style={{ color: '#3b82f6', cursor: 'pointer', fontSize: 12 }}>{text}</span>
      ),
    },
    {
      title: '下单时间',
      dataIndex: 'createTime',
      key: 'createTime',
      width: 130,
      align: 'center',
      render: (text) => (
        <span style={{ fontSize: 12 }}>{text}</span>
      ),
    },
    {
      title: '乘客信息',
      key: 'passengerInfo',
      width: 100,
      align: 'center',
      render: (_, record) => (
        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 2 }}>
          <div style={{ fontWeight: 500, fontSize: 12 }}>{record.userName || '-'}</div>
          <div style={{ fontSize: 11, color: '#94a3b8' }}>{record.userPhone || '-'}</div>
        </div>
      ),
    },
    {
      title: '行程',
      key: 'trip',
      width: 200,
      align: 'left',
      render: (_, record) => (
        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-start', gap: 1 }}>
          <div style={{ fontSize: 11, color: '#64748b', display: '-webkit-box', WebkitLineClamp: 1, WebkitBoxOrient: 'vertical', overflow: 'hidden', maxWidth: '100%' }}>
            {record.startAddress || '-'}
          </div>
          <div style={{ fontSize: 11, color: '#94a3b8', display: '-webkit-box', WebkitLineClamp: 1, WebkitBoxOrient: 'vertical', overflow: 'hidden', maxWidth: '100%' }}>
            → {record.endAddress || '-'}
          </div>
        </div>
      ),
    },
    {
      title: '订单类型',
      dataIndex: 'carType',
      key: 'carType',
      width: 80,
      align: 'center',
      render: (text) => (
        <span style={{ fontSize: 12 }}>{text || '-'}</span>
      ),
    },
    {
      title: '金额',
      key: 'amount',
      width: 100,
      align: 'right',
      render: (_, record) => (
        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: 1 }}>
          <div style={{ fontWeight: 600, color: '#ef4444', fontSize: 13 }}>¥{record.totalAmount?.toFixed(2) || '0.00'}</div>
        </div>
      ),
    },
    {
      title: '支付方式',
      dataIndex: 'payType',
      key: 'payType',
      width: 70,
      align: 'center',
      render: (text) => (
        <span style={{ fontSize: 12 }}>{text || '-'}</span>
      ),
    },
    {
      title: '状态',
      dataIndex: 'orderStatusStr',
      key: 'orderStatus',
      width: 70,
      align: 'center',
      render: (status) => {
        let color = 'error'
        if (status === '已完成') {
          color = 'success'
        } else if (status === '进行中') {
          color = 'processing'
        } else if (status === '待接单' || status === '已接单') {
          color = 'warning'
        }
        return (
          <Tag color={color} style={{ fontSize: 11, padding: '2px 6px' }}>{status || '-'}</Tag>
        )
      },
    },
    {
      title: '司机/车牌',
      key: 'driverCar',
      width: 100,
      align: 'center',
      render: (_, record) => (
        <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: 1 }}>
          <div style={{ fontWeight: 500, fontSize: 12 }}>{record.driverName || '-'}</div>
          <div style={{ fontSize: 11, color: '#94a3b8' }}>{record.carNo || '-'}</div>
        </div>
      ),
    },
    {
      title: '操作',
      key: 'action',
      width: 80,
      align: 'center',
      render: () => (
        <div style={{ display: 'flex', gap: 8, justifyContent: 'center' }}>
          <Button type="link" size="small" style={{ padding: 0, color: '#3b82f6', fontSize: 11 }}>详情</Button>
          <Button type="link" size="small" style={{ padding: 0, color: '#3b82f6', fontSize: 11 }}>追踪</Button>
        </div>
      ),
    },
  ]

  return (
    <div style={{ padding: 12, backgroundColor: '#f8fafc', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ backgroundColor: '#ffffff', borderRadius: 8, padding: 16, marginBottom: 12, boxShadow: '0 1px 3px rgba(0,0,0,0.05)' }}>
        <div style={{ display: 'flex', flexWrap: 'wrap', gap: 12, alignItems: 'center' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <span style={{ fontSize: 12, color: '#64748b' }}>订单号</span>
            <Input
              placeholder="请输入关键词"
              style={{ width: 200, fontSize: 12 }}
              value={filters.keyword}
              onChange={(e) => setFilters({ ...filters, keyword: e.target.value })}
              onPressEnter={handleSearch}
            />
          </div>

          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <span style={{ fontSize: 12, color: '#64748b' }}>城市</span>
            <Select
              value={filters.city}
              style={{ width: 120, fontSize: 12 }}
              onChange={(value) => setFilters({ ...filters, city: value })}
            >
              {cityOptions.map((city) => (
                <Option key={city.value} value={city.value}>{city.label}</Option>
              ))}
            </Select>
          </div>

          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <span style={{ fontSize: 12, color: '#64748b' }}>订单类型</span>
            <Select
              value={filters.orderType}
              style={{ width: 120, fontSize: 12 }}
              onChange={(value) => setFilters({ ...filters, orderType: value })}
            >
              {orderTypeOptions.map((type) => (
                <Option key={type.value} value={type.value}>{type.label}</Option>
              ))}
            </Select>
          </div>

          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <span style={{ fontSize: 12, color: '#64748b' }}>订单状态</span>
            <Select
              value={filters.orderStatus}
              style={{ width: 120, fontSize: 12 }}
              onChange={(value) => setFilters({ ...filters, orderStatus: value })}
            >
              {orderStatusOptions.map((status) => (
                <Option key={status.value} value={status.value}>{status.label}</Option>
              ))}
            </Select>
          </div>

          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <span style={{ fontSize: 12, color: '#64748b' }}>下单时间</span>
            <RangePicker
              showTime={{ format: 'HH:mm:ss' }}
              format="YYYY-MM-DD HH:mm:ss"
              style={{ fontSize: 12 }}
              onChange={handleDateChange}
            />
          </div>

          <div style={{ marginLeft: 'auto', display: 'flex', gap: 8 }}>
            <Button
              type="primary"
              size="small"
              icon={<SearchOutlined />}
              onClick={handleSearch}
              loading={loading}
            >
              查询
            </Button>
            <Button size="small" onClick={handleReset}>重置</Button>
            <Button size="small" icon={<ReloadOutlined />} onClick={() => fetchData()} loading={loading}>
              刷新
            </Button>
          </div>
        </div>
      </div>

      <div style={{ backgroundColor: '#ffffff', borderRadius: 8, boxShadow: '0 1px 3px rgba(0,0,0,0.05)' }}>
        <div style={{ padding: '14px 16px', borderBottom: '1px solid #e2e8f0' }}>
          <span style={{ fontSize: 14, fontWeight: 600 }}>订单列表</span>
        </div>

        <div style={{ padding: 8 }}>
          <Table
            dataSource={data}
            columns={columns}
            pagination={{
              current: pagination.current,
              pageSize: pagination.pageSize,
              total: total,
              showSizeChanger: true,
              showQuickJumper: true,
              showTotal: (total) => `共 ${total} 条记录`,
              size: 'small',
              onChange: handlePageChange,
            }}
            rowKey="id"
            bordered={false}
            size="small"
            loading={loading}
            scroll={{ x: 'max-content' }}
            style={{
              fontSize: 13,
            }}
            rowStyle={{
              '&:hover': {
                backgroundColor: '#f8fafc',
              },
            }}
            headerStyle={{
              backgroundColor: '#f8fafc',
              fontWeight: 600,
              fontSize: 12,
              color: '#64748b',
            }}
          />
        </div>
      </div>
    </div>
  )
}

export default OrderList
