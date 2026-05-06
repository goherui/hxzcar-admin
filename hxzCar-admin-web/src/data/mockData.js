export const statData = [
  {
    label: '订单量',
    value: '1,256,987',
    unit: '单',
    change: '+12.35%',
    isPositive: true,
    icon: '📊',
    color: '#7c4dff',
  },
  {
    label: '完单量',
    value: '1,098,765',
    unit: '单',
    change: '+11.08%',
    isPositive: true,
    icon: '✅',
    color: '#2196f3',
  },
  {
    label: '活跃用户数',
    value: '862,673',
    unit: '人',
    change: '+8.76%',
    isPositive: true,
    icon: '👥',
    color: '#ff9800',
  },
  {
    label: '活跃司机数',
    value: '245,987',
    unit: '人',
    change: '+7.21%',
    isPositive: true,
    icon: '🚗',
    color: '#4caf50',
  },
  {
    label: 'GMV',
    value: '18,765,432',
    unit: '元',
    change: '+13.45%',
    isPositive: true,
    icon: '💰',
    color: '#7c4dff',
  },
  {
    label: '客单价',
    value: '17.08',
    unit: '元',
    change: '+1.23%',
    isPositive: true,
    icon: '💳',
    color: '#e91e63',
  },
]

export const trendData = {
  hours: ['00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '18:00', '21:00', '23:00'],
  orderCount: [25000, 18000, 45000, 85000, 105000, 115000, 135000, 80000, 35000],
  completeCount: [22000, 15000, 38000, 72000, 90000, 98000, 118000, 68000, 30000],
}

export const sourceData = [
  { name: '花小猪APP', value: 72.35, color: '#7c4dff' },
  { name: '支付宝小程序', value: 15.24, color: '#2196f3' },
  { name: '微信小程序', value: 7.65, color: '#4caf50' },
  { name: '其他', value: 4.76, color: '#9e9e9e' },
]

export const statusData = [
  { name: '已完成', value: 87.39, color: '#2196f3' },
  { name: '进行中', value: 8.21, color: '#4caf50' },
  { name: '已取消', value: 3.21, color: '#ff9800' },
  { name: '异常', value: 1.19, color: '#ff4d4f' },
]

export const orderList = [
  {
    id: '2024052012345678901',
    time: '05-20 14:23:45',
    from: '北京市 朝阳区望京街道',
    to: '北京市 海淀区中关村',
    type: '快车',
    status: '已完成',
    amount: '16.32',
  },
  {
    id: '2024052012345678902',
    time: '05-20 14:23:42',
    from: '上海市 浦东新区陆家嘴',
    to: '上海市 静安区南京西路',
    type: '快车',
    status: '进行中',
    amount: '26.45',
  },
  {
    id: '2024052012345678903',
    time: '05-20 14:23:40',
    from: '广州市 天河区体育西路',
    type: '特惠快车',
    to: '广州市 海珠区客村',
    status: '已完成',
    amount: '12.18',
  },
  {
    id: '2024052012345678904',
    time: '05-20 14:23:38',
    from: '广州市 天河区科技园',
    to: '广州市 番禺区汉溪长隆',
    type: '快车',
    status: '已完成',
    amount: '28.60',
  },
  {
    id: '2024052012345678905',
    time: '05-20 14:23:36',
    from: '深圳市 南山区科技园',
    to: '深圳市 福田区会展中心',
    type: '快车',
    status: '已取消',
    amount: '0.00',
  },
  {
    id: '2024052012345678906',
    time: '05-20 14:23:34',
    from: '成都市 武侯区天府三街',
    to: '成都市 锦江区春熙路',
    type: '快车',
    status: '异常',
    amount: '0.00',
  },
]

export const cityRanking = [
  { rank: 1, city: '北京市', count: 155987, change: '+12.35%', isPositive: true },
  { rank: 2, city: '上海市', count: 128765, change: '+11.24%', isPositive: true },
  { rank: 3, city: '广州市', count: 98765, change: '+10.32%', isPositive: true },
  { rank: 4, city: '深圳市', count: 89654, change: '+8.78%', isPositive: true },
  { rank: 5, city: '成都市', count: 76543, change: '+7.21%', isPositive: true },
]

export const menuItems = [
  { key: 'home', label: '首页', icon: '◉', path: '/', children: null },
  {
    key: 'order',
    label: '订单管理',
    icon: '▣',
    children: [
      { key: 'order-list', label: '订单列表', path: '/order-list' },
      { key: 'order-monitor', label: '订单监控', path: '/order-monitor' },
      { key: 'abnormal-order', label: '异常订单', path: '/abnormal-order' },
    ],
  },
  {
    key: 'user',
    label: '用户管理',
    icon: '◎',
    children: [
      { key: 'user-list', label: '用户列表', path: '/user-list' },
      { key: 'user-portrait', label: '用户画像', path: '/user-portrait' },
      { key: 'user-group', label: '用户分群', path: '/user-group' },
    ],
  },
  {
    key: 'driver',
    label: '司机管理',
    icon: '◈',
    children: [
      { key: 'driver-list', label: '司机列表', path: '/driver-list' },
      { key: 'driver-cert', label: '司机审核', path: '/driver-cert' },
      { key: 'driver-distribution', label: '司机分布', path: '/driver-distribution' },
      { key: 'driver-review', label: '司机评价', path: '/driver-review' },
    ],
  },
  {
    key: 'operation',
    label: '运营管理',
    icon: '◇',
    children: [
      { key: 'activity', label: '活动管理', path: '/activity-management' },
      { key: 'coupon', label: '优惠券管理', path: '/coupon-management' },
      { key: 'marketing-tools', label: '营销工具', path: '/marketing-tools' },
    ],
  },
  {
    key: 'data',
    label: '数据中心',
    icon: '◐',
    children: [
      { key: 'data-summary', label: '数据总览', path: '/data-overview' },
      { key: 'behavior-analysis', label: '行为分析', path: '/behavior-analysis' },
      { key: 'report-center', label: '报表中心', path: '/report-center' },
    ],
  },
  {
    key: 'system',
    label: '系统管理',
    icon: '◆',
    children: [
      { key: 'role', label: '角色管理', path: '/role-management' },
      { key: 'permission', label: '权限管理', path: '/permission-management' },
      { key: 'operation-log', label: '操作日志', path: '/operation-log' },
    ],
  },
]