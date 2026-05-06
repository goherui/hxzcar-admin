import { BellOutlined, InfoCircleOutlined, UserOutlined, SearchOutlined, SettingOutlined } from '@ant-design/icons'
import { Badge, Button, Select, Input } from 'antd'
import { useLocation } from 'react-router-dom'

const pageTitles = {
  'order-list': '订单列表',
  'order-monitor': '订单监控',
  'abnormal-order': '异常订单',
  'user-list': '用户列表',
  'user-portrait': '用户画像',
  'user-group': '用户分群',
  'driver-list': '司机列表',
  'driver-cert': '司机审核',
  'driver-distribution': '司机分布',
  'driver-review': '司机评价',
  'activity-management': '活动管理',
  'coupon-management': '优惠券管理',
  'marketing-tools': '营销工具',
  'data-overview': '数据总览',
  'behavior-analysis': '行为分析',
  'report-center': '报表中心',
  'role-management': '角色管理',
  'permission-management': '权限管理',
  'operation-log': '操作日志',
}

function Header() {
  const location = useLocation()
  const isHome = location.pathname === '/' || location.pathname === '/dashboard'
  const pathName = location.pathname.split('/').pop()
  const pageTitle = pageTitles[pathName] || '首页'

  return (
    <header
      style={{
        height: 60,
        background: 'var(--bg-card)',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'space-between',
        padding: '0 20px',
        boxShadow: 'var(--shadow-sm)',
        position: 'sticky',
        top: 0,
        zIndex: 100,
        borderBottom: '1px solid var(--border-color)',
      }}
    >
      {isHome ? (
        <div style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
          <span style={{ fontSize: 18, fontWeight: 600, color: 'var(--text-primary)' }}>首页</span>
        </div>
      ) : (
        <div style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
          <span style={{ fontSize: 16, fontWeight: 500, color: 'var(--text-primary)' }}>
            {pageTitle}
          </span>
        </div>
      )}

      <div style={{ display: 'flex', alignItems: 'center', gap: isHome ? 20 : 12 }}>
        {isHome && (
          <div style={{ display: 'flex', alignItems: 'center', gap: 16 }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <span style={{ fontSize: 13, color: 'var(--text-secondary)', fontWeight: 500 }}>数据时间:</span>
              <Select
                defaultValue="2024-05-20"
                style={{ 
                  width: 140,
                  borderRadius: 'var(--radius-sm)',
                  borderColor: 'var(--border-color)',
                }}
                options={[
                  { value: '2024-05-20', label: '2024-05-20' },
                  { value: '2024-05-19', label: '2024-05-19' },
                ]}
              />
            </div>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <span style={{ fontSize: 13, color: 'var(--text-secondary)', fontWeight: 500 }}>对比时间:</span>
              <Select
                defaultValue="2024-05-19"
                style={{ 
                  width: 140,
                  borderRadius: 'var(--radius-sm)',
                  borderColor: 'var(--border-color)',
                }}
                options={[
                  { value: '2024-05-19', label: '2024-05-19' },
                  { value: '2024-05-18', label: '2024-05-18' },
                ]}
              />
            </div>
          </div>
        )}

        <div style={{ display: 'flex', alignItems: 'center', gap: 12 }}>
          {isHome && (
            <Input
              placeholder="搜索..."
              prefix={<SearchOutlined style={{ color: 'var(--text-muted)' }} />}
              style={{ 
                width: 200,
                borderRadius: 'var(--radius-md)',
                borderColor: 'var(--border-color)',
              }}
            />
          )}
          <Button 
            type="text" 
            icon={<InfoCircleOutlined style={{ fontSize: 18, color: 'var(--text-secondary)' }} />}
            style={{ padding: '8px' }}
          />
          <Button 
            type="text" 
            icon={<SettingOutlined style={{ fontSize: 18, color: 'var(--text-secondary)' }} />}
            style={{ padding: '8px' }}
          />
          <Badge 
            count={3} 
            style={{ 
              backgroundColor: '#ef4444',
              borderRadius: '10px',
              minWidth: '18px',
              height: '18px',
              lineHeight: '18px',
              fontSize: '11px',
            }}
          >
            <Button 
              type="text" 
              icon={<BellOutlined style={{ fontSize: 18, color: 'var(--text-secondary)' }} />}
              style={{ padding: '8px' }}
            />
          </Badge>
          <div 
            style={{ 
              display: 'flex', 
              alignItems: 'center', 
              gap: 8,
              padding: '6px 12px',
              borderRadius: 'var(--radius-md)',
              cursor: 'pointer',
            }}
          >
            <div 
              style={{ 
                width: 32, 
                height: 32, 
                borderRadius: '50%', 
                background: 'linear-gradient(135deg, var(--primary-color) 0%, var(--primary-dark) 100%)',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
              }}
            >
              <UserOutlined style={{ color: 'white', fontSize: 16 }} />
            </div>
            <span style={{ fontSize: 13, color: 'var(--text-secondary)' }}>运营小猪</span>
          </div>
        </div>
      </div>
    </header>
  )
}

export default Header
