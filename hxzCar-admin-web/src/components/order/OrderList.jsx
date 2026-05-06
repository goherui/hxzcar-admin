import { Table, Select, Button, Input, Tag } from 'antd'

const { Option } = Select

const orderListData = [
  {
    id: '2024052012345678901',
    time: '2024-05-20 14:23:45',
    passenger: '王*',
    phone: '138****1234',
    from: '北京市 朝阳区望京街道',
    to: '北京市 海淀区中关村',
    type: '快车',
    amount: '34.17',
    discount: '2.00',
    actual: '32.17',
    payType: '支付宝',
    status: '已完成',
    carNo: '京B12345',
    driver: '张师傅',
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
    discount: '3.50',
    actual: '41.50',
    payType: '微信支付',
    status: '进行中',
    carNo: '沪A67890',
    driver: '王师傅',
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
    discount: '5.82',
    actual: '12.18',
    payType: '支付宝',
    status: '已完成',
    carNo: '粤A11111',
    driver: '刘师傅',
  },
  {
    id: '2024052012345678904',
    time: '2024-05-20 14:23:38',
    passenger: '孙*',
    phone: '136****3456',
    from: '广州市 天河区科技园',
    to: '广州市 番禺区汉溪长隆',
    type: '特惠快车',
    amount: '25.00',
    discount: '8.00',
    actual: '17.00',
    payType: '微信支付',
    status: '已完成',
    carNo: '粤A22222',
    driver: '陈师傅',
  },
  {
    id: '2024052012345678905',
    time: '2024-05-20 14:23:35',
    passenger: '周*',
    phone: '135****7890',
    from: '深圳市 南山区科技园',
    to: '深圳市 福田区会展中心',
    type: '快车',
    amount: '38.00',
    discount: '4.00',
    actual: '34.00',
    payType: '支付宝',
    status: '已取消',
    carNo: '粤B33333',
    driver: '杨师傅',
  },
]

function OrderList() {
  const columns = [
    {
      title: '订单号',
      dataIndex: 'id',
      key: 'id',
      width: 140,
      ellipsis: true,
    },
    {
      title: '下单时间',
      dataIndex: 'time',
      key: 'time',
      width: 140,
    },
    {
      title: '乘客信息',
      key: 'passengerInfo',
      width: 160,
      render: (_, record) => (
        <div>
          <div style={{ fontWeight: 500 }}>{record.passenger}</div>
          <div style={{ fontSize: 12, color: 'var(--text-muted)' }}>{record.phone}</div>
        </div>
      ),
    },
    {
      title: '行程',
      key: 'trip',
      ellipsis: true,
      render: (_, record) => (
        <div>
          <div style={{ fontSize: 12, color: 'var(--text-secondary)', display: '-webkit-box', WebkitLineClamp: 1, WebkitBoxOrient: 'vertical', overflow: 'hidden' }}>
            {record.from}
          </div>
          <div style={{ fontSize: 12, color: 'var(--text-muted)', display: '-webkit-box', WebkitLineClamp: 1, WebkitBoxOrient: 'vertical', overflow: 'hidden' }}>
            → {record.to}
          </div>
        </div>
      ),
    },
    {
      title: '订单类型',
      dataIndex: 'type',
      key: 'type',
      width: 90,
    },
    {
      title: '金额',
      key: 'amount',
      width: 150,
      align: 'right',
      render: (_, record) => (
        <div style={{ textAlign: 'right' }}>
          <div style={{ fontWeight: 500 }}>¥{record.actual}</div>
          <div style={{ fontSize: 11, color: 'var(--text-muted)' }}>
            原价 ¥{record.amount} · 优惠 ¥{record.discount}
          </div>
        </div>
      ),
    },
    {
      title: '支付方式',
      dataIndex: 'payType',
      key: 'payType',
      width: 80,
    },
    {
      title: '状态',
      dataIndex: 'status',
      key: 'status',
      width: 80,
      render: (status) => {
        const color = status === '已完成' ? 'success' : status === '进行中' ? 'processing' : 'error'
        return <Tag color={color}>{status}</Tag>
      },
    },
    {
      title: '司机/车牌',
      key: 'driverCar',
      width: 130,
      render: (_, record) => (
        <div>
          <div style={{ fontWeight: 500 }}>{record.driver}</div>
          <div style={{ fontSize: 12, color: 'var(--text-muted)' }}>{record.carNo}</div>
        </div>
      ),
    },
    {
      title: '操作',
      key: 'action',
      width: 100,
      align: 'left',
      render: () => (
        <div style={{ display: 'flex', gap: 8, justifyContent: 'flex-start', paddingLeft: 0, marginLeft: -24 }}>
          <Button type="link" size="small">详情</Button>
          <Button type="link" size="small">追踪</Button>
        </div>
      ),
    },
  ]

  return (
    <div className="page-container">
      <div className="filter-bar">
        <div className="filter-item">
          <span className="filter-label">订单号/手机号/车牌号</span>
          <Input
            placeholder="请输入关键词"
            style={{ width: 200 }}
          />
        </div>
        <div className="filter-item">
          <span className="filter-label">城市</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部城市</Option>
            <Option value="北京">北京</Option>
            <Option value="上海">上海</Option>
            <Option value="广州">广州</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">订单类型</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部类型</Option>
            <Option value="快车">快车</Option>
            <Option value="特惠快车">特惠快车</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">订单状态</span>
          <Select defaultValue="全部" style={{ width: 120 }}>
            <Option value="全部">全部状态</Option>
            <Option value="已完成">已完成</Option>
            <Option value="进行中">进行中</Option>
            <Option value="已取消">已取消</Option>
          </Select>
        </div>
        <div className="filter-item">
          <span className="filter-label">下单时间</span>
          <Input placeholder="开始时间" style={{ width: 140 }} />
          <span style={{ color: 'var(--text-muted)' }}>至</span>
          <Input placeholder="结束时间" style={{ width: 140 }} />
        </div>
        <Button type="primary" style={{ marginLeft: 'auto' }}>查询</Button>
        <Button>重置</Button>
      </div>

      <div className="content-card">
        <div className="content-header">
          <span className="content-title">订单列表</span>
          <Button type="primary">新增订单</Button>
        </div>
        <div className="table-wrapper">
          <Table
            dataSource={orderListData}
            columns={columns}
            pagination={{ pageSize: 15 }}
            rowKey="id"
            bordered={false}
          />
        </div>
      </div>
    </div>
  )
}

export default OrderList
