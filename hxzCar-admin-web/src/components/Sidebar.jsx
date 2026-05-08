import { useState } from 'react'
import { useNavigate, useLocation } from 'react-router-dom'
import { Menu } from 'antd'
import { 
  HomeOutlined, 
  FileTextOutlined, 
  UserOutlined, 
  CarOutlined, 
  BarChartOutlined, 
  DatabaseOutlined, 
  SettingOutlined 
} from '@ant-design/icons'

const menuItems = [
  { key: 'home', label: '首页', icon: <HomeOutlined />, path: '/', children: null },
  {
    key: 'order',
    label: '订单管理',
    icon: <FileTextOutlined />,
    children: [
      { key: 'order-list', label: '订单列表', path: '/order-list' },
      { key: 'order-monitor', label: '订单监控', path: '/order-monitor' },
      { key: 'order-dispatch', label: '订单派送', path: '/order-dispatch' },
      { key: 'abnormal-order', label: '异常订单', path: '/abnormal-order' },
    ],
  },
  {
    key: 'user',
    label: '用户管理',
    icon: <UserOutlined />,
    children: [
      { key: 'user-list', label: '用户列表', path: '/user-list' },
      { key: 'user-portrait', label: '用户画像', path: '/user-portrait' },
      { key: 'user-group', label: '用户分群', path: '/user-group' },
    ],
  },
  {
    key: 'driver',
    label: '司机管理',
    icon: <CarOutlined />,
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
    icon: <BarChartOutlined />,
    children: [
      { key: 'activity', label: '活动管理', path: '/activity-management' },
      { key: 'coupon', label: '优惠券管理', path: '/coupon-management' },
      { key: 'marketing-tools', label: '营销工具', path: '/marketing-tools' },
    ],
  },
  {
    key: 'data',
    label: '数据中心',
    icon: <DatabaseOutlined />,
    children: [
      { key: 'data-summary', label: '数据总览', path: '/data-overview' },
      { key: 'behavior-analysis', label: '行为分析', path: '/behavior-analysis' },
      { key: 'report-center', label: '报表中心', path: '/report-center' },
    ],
  },
  {
    key: 'system',
    label: '系统管理',
    icon: <SettingOutlined />,
    children: [
      { key: 'role', label: '角色管理', path: '/role-management' },
      { key: 'permission', label: '权限管理', path: '/permission-management' },
      { key: 'operation-log', label: '操作日志', path: '/operation-log' },
    ],
  },
]

function Sidebar() {
  const navigate = useNavigate()
  const location = useLocation()
  const [openKeys, setOpenKeys] = useState([])
  
  const getSelectedKey = () => {
    const path = location.pathname
    for (const item of menuItems) {
      if (item.path === path) return item.key
      if (item.children) {
        for (const child of item.children) {
          if (child.path === path) return child.key
        }
      }
    }
    return 'home'
  }

  const selectedKey = getSelectedKey()

  const handleOpenChange = (keys) => {
    setOpenKeys(keys)
  }

  const handleClick = ({ key }) => {
    for (const item of menuItems) {
      if (item.key === key && item.path) {
        navigate(item.path)
        return
      }
      if (item.children) {
        for (const child of item.children) {
          if (child.key === key && child.path) {
            navigate(child.path)
            return
          }
        }
      }
    }
  }

  const handleWheel = (e) => {
    e.stopPropagation()
    const target = e.currentTarget
    const isAtBottom = target.scrollTop >= target.scrollHeight - target.clientHeight - 10
    const isAtTop = target.scrollTop <= 10
    
    if ((e.deltaY > 0 && isAtBottom) || (e.deltaY < 0 && isAtTop)) {
      e.preventDefault()
      return false
    }
    return true
  }

  const handleSidebarWheel = (e) => {
    e.stopPropagation()
  }

  return (
    <aside
      className="sidebar-container"
      style={{
        width: 240,
        height: '100vh',
        background: '#ffffff',
        color: '#333333',
        position: 'fixed',
        left: 0,
        top: 0,
        display: 'flex',
        flexDirection: 'column',
        zIndex: 9999,
        overflow: 'hidden',
        contain: 'strict',
        boxShadow: '2px 0 8px rgba(0, 0, 0, 0.08)',
      }}
      onWheelCapture={handleSidebarWheel}
      onTouchMoveCapture={handleSidebarWheel}
      onScrollCapture={handleSidebarWheel}
    >
      <div 
        className="sidebar-logo"
        style={{
          padding: '16px',
          background: '#ffffff',
          textAlign: 'center',
          color: '#1e293b',
          fontSize: 16,
          fontWeight: 600,
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          gap: 8,
          borderBottom: '1px solid #e2e8f0',
        }}
      >
        <span>🐷</span>
        <span>花小猪打车</span>
      </div>
      <div 
        className="sidebar-scroll-area"
        style={{
          flex: 1,
          overflowY: 'auto',
          overflowX: 'hidden',
          scrollbarWidth: 'none',
          msOverflowStyle: 'none',
        }}
        onWheelCapture={handleWheel}
        onTouchMoveCapture={(e) => e.stopPropagation()}
      >
        <Menu
          className="sidebar-menu"
          mode="inline"
          selectedKeys={[selectedKey]}
          openKeys={openKeys}
          onOpenChange={handleOpenChange}
          onClick={handleClick}
          style={{
            background: 'transparent',
            borderRight: 'none',
            marginTop: 0,
            padding: '8px',
          }}
          theme="light"
          items={menuItems.map(item => ({
            key: item.key,
            icon: item.icon,
            label: item.label,
            children: item.children?.map(child => ({
              key: child.key,
              label: child.label,
            })),
          }))}
          itemStyle={{ textAlign: 'left', borderRadius: '8px', marginBottom: '4px' }}
          selectedItemStyle={{ 
            background: '#3b82f6', 
            color: '#ffffff',
            borderRadius: '8px',
          }}
        />
      </div>
      <div 
        className="sidebar-footer"
        style={{
          padding: '12px',
          textAlign: 'center',
          background: '#f8fafc',
          borderTop: '1px solid #e2e8f0',
          fontSize: 12,
          color: '#94a3b8',
        }}
      >
        <div style={{ fontWeight: 500 }}>花小猪打车</div>
        <div>打车可以更便宜</div>
      </div>
    </aside>
  )
}

export default Sidebar
