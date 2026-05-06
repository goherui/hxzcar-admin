import React, { useState } from 'react'
import { Button, Input, Select, Modal, Form, Tree } from 'antd'

const { Option } = Select

const menuData = [
  {
    id: 'home',
    title: '首页',
    icon: '◉',
    path: '/',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'dashboard', title: '仪表盘', icon: '📊', path: '/dashboard', type: '菜单', status: '正常' },
    ],
  },
  {
    id: 'order',
    title: '订单管理',
    icon: '▸',
    path: '/order',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'order-list', title: '订单列表', icon: '📋', path: '/order-list', type: '菜单', status: '正常' },
      { id: 'order-monitor', title: '订单监控', icon: '📡', path: '/order-monitor', type: '菜单', status: '正常' },
      { id: 'abnormal-order', title: '异常订单', icon: '⚠️', path: '/abnormal-order', type: '菜单', status: '正常' },
    ],
  },
  {
    id: 'user',
    title: '用户管理',
    icon: '○',
    path: '/user',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'user-list', title: '用户列表', icon: '👤', path: '/user-list', type: '菜单', status: '正常' },
      { id: 'user-portrait', title: '用户画像', icon: '🎭', path: '/user-portrait', type: '菜单', status: '正常' },
      { id: 'user-group', title: '用户分群', icon: '👥', path: '/user-group', type: '菜单', status: '正常' },
    ],
  },
  {
    id: 'driver',
    title: '司机管理',
    icon: '△',
    path: '/driver',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'driver-list', title: '司机列表', icon: '👨‍✈️', path: '/driver-list', type: '菜单', status: '正常' },
      { id: 'driver-cert', title: '司机审核', icon: '✅', path: '/driver-cert', type: '菜单', status: '正常' },
      { id: 'driver-distribution', title: '司机分布', icon: '🗺️', path: '/driver-distribution', type: '菜单', status: '正常' },
      { id: 'driver-review', title: '司机评价', icon: '⭐', path: '/driver-review', type: '菜单', status: '正常' },
    ],
  },
  {
    id: 'operation',
    title: '运营管理',
    icon: '◇',
    path: '/operation',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'activity', title: '活动管理', icon: '🎯', path: '/activity-management', type: '菜单', status: '正常' },
      { id: 'coupon', title: '优惠券管理', icon: '🎫', path: '/coupon-management', type: '菜单', status: '正常' },
      { id: 'marketing', title: '营销工具', icon: '🛠️', path: '/marketing-tools', type: '菜单', status: '正常' },
    ],
  },
  {
    id: 'data',
    title: '数据中心',
    icon: '◈',
    path: '/data',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'data-overview', title: '数据总览', icon: '📈', path: '/data-overview', type: '菜单', status: '正常' },
      { id: 'behavior', title: '行为分析', icon: '🧠', path: '/behavior-analysis', type: '菜单', status: '正常' },
      { id: 'report', title: '报表中心', icon: '📑', path: '/report-center', type: '菜单', status: '正常' },
    ],
  },
  {
    id: 'system',
    title: '系统管理',
    icon: '★',
    path: '/system',
    type: '菜单',
    status: '正常',
    children: [
      { id: 'role', title: '角色管理', icon: '👑', path: '/role-management', type: '菜单', status: '正常' },
      { id: 'permission', title: '权限管理', icon: '🔒', path: '/permission-management', type: '菜单', status: '正常' },
      { id: 'log', title: '操作日志', icon: '📝', path: '/operation-log', type: '菜单', status: '正常' },
    ],
  },
]

function PermissionManagement() {
  const [selectedMenu, setSelectedMenu] = useState(null)
  const [selectedParent, setSelectedParent] = useState(null)
  const [isModalVisible, setIsModalVisible] = useState(false)
  const [form] = Form.useForm()

  const showModal = () => {
    setIsModalVisible(true)
  }

  const handleCancel = () => {
    setIsModalVisible(false)
    form.resetFields()
  }

  const onSelect = (selectedKeys) => {
    if (selectedKeys.length > 0) {
      const key = selectedKeys[0]
      let foundMenu = null
      let foundParent = null

      for (const parent of menuData) {
        if (parent.children) {
          const child = parent.children.find(c => c.id === key)
          if (child) {
            foundMenu = child
            foundParent = parent
            break
          }
        }
      }

      if (foundMenu) {
        setSelectedMenu(foundMenu)
        setSelectedParent(foundParent)
      }
    }
  }

  const renderTreeNodes = (data) => {
    return data.map((item) => {
      if (item.children && item.children.length > 0) {
        return (
          <Tree.TreeNode title={item.title} key={item.id} selectable={false}>
            {renderTreeNodes(item.children)}
          </Tree.TreeNode>
        )
      }
      return <Tree.TreeNode title={item.title} key={item.id} />
    })
  }

  return (
    <div style={{ padding: 24, background: 'var(--bg-page)', minHeight: 'calc(100vh - 60px)' }}>
      <div className="chart-card">
        <div className="chart-card-header">
          <span className="chart-card-title">权限管理</span>
          <Button type="primary" onClick={showModal}>新增菜单</Button>
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 20, padding: 20 }}>
          <div className="chart-card" style={{ padding: 20 }}>
            <div className="chart-card-title">菜单列表</div>
            <Tree
              onSelect={onSelect}
              selectedKeys={selectedMenu ? [selectedMenu.id] : []}
              style={{ marginTop: 16 }}
            >
              {renderTreeNodes(menuData)}
            </Tree>
          </div>

          <div className="chart-card" style={{ padding: 20 }}>
            <div className="chart-card-title">菜单详情</div>
            {selectedMenu ? (
              <div style={{ marginTop: 16 }}>
                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16, marginBottom: 20 }}>
                  <div>
                    <div style={{ fontSize: 12, color: 'var(--text-muted)', marginBottom: 4 }}>上级菜单</div>
                    <div style={{ fontWeight: 500 }}>{selectedParent ? selectedParent.title : '无'}</div>
                  </div>
                  <div>
                    <div style={{ fontSize: 12, color: 'var(--text-muted)', marginBottom: 4 }}>菜单类型</div>
                    <div style={{ fontWeight: 500 }}>{selectedMenu.type}</div>
                  </div>
                  <div>
                    <div style={{ fontSize: 12, color: 'var(--text-muted)', marginBottom: 4 }}>菜单名称</div>
                    <div style={{ fontWeight: 500 }}>{selectedMenu.title}</div>
                  </div>
                  <div>
                    <div style={{ fontSize: 12, color: 'var(--text-muted)', marginBottom: 4 }}>图标</div>
                    <div style={{ fontSize: 24 }}>{selectedMenu.icon}</div>
                  </div>
                  <div style={{ gridColumn: '1 / span 2' }}>
                    <div style={{ fontSize: 12, color: 'var(--text-muted)', marginBottom: 4 }}>路由路径</div>
                    <div style={{ color: '#3b82f6', fontFamily: 'monospace' }}>{selectedMenu.path}</div>
                  </div>
                  <div>
                    <div style={{ fontSize: 12, color: 'var(--text-muted)', marginBottom: 4 }}>状态</div>
                    <span className={selectedMenu.status === '正常' ? 'tag-success' : 'tag-warning'}>
                      {selectedMenu.status}
                    </span>
                  </div>
                </div>
                <div style={{ display: 'flex', gap: 10 }}>
                  <Button type="primary">编辑</Button>
                  <Button>删除</Button>
                </div>
              </div>
            ) : (
              <div style={{ 
                height: 300, 
                display: 'flex', 
                alignItems: 'center', 
                justifyContent: 'center',
                color: 'var(--text-muted)',
                marginTop: 16,
              }}>
                <div>请选择左侧菜单查看详情</div>
              </div>
            )}
          </div>
        </div>
      </div>

      <Modal
        title="新增菜单"
        visible={isModalVisible}
        onCancel={handleCancel}
        footer={[
          <Button key="back" onClick={handleCancel}>取消</Button>,
          <Button key="submit" type="primary" onClick={handleCancel}>确定</Button>,
        ]}
      >
        <Form form={form} layout="vertical">
          <Form.Item label="上级菜单" name="parent">
            <Select placeholder="请选择上级菜单">
              <Option value="">无（顶级菜单）</Option>
              <Option value="order">订单管理</Option>
              <Option value="user">用户管理</Option>
              <Option value="driver">司机管理</Option>
              <Option value="operation">运营管理</Option>
              <Option value="data">数据中心</Option>
              <Option value="system">系统管理</Option>
            </Select>
          </Form.Item>
          <Form.Item label="菜单名称" name="name" rules={[{ required: true, message: '请输入菜单名称' }]}>
            <Input placeholder="请输入菜单名称" />
          </Form.Item>
          <Form.Item label="图标" name="icon">
            <Input placeholder="请输入图标emoji" />
          </Form.Item>
          <Form.Item label="路由路径" name="path" rules={[{ required: true, message: '请输入路由路径' }]}>
            <Input placeholder="请输入路由路径" />
          </Form.Item>
          <Form.Item label="菜单类型" name="type">
            <Select defaultValue="菜单">
              <Option value="菜单">菜单</Option>
              <Option value="按钮">按钮</Option>
            </Select>
          </Form.Item>
        </Form>
      </Modal>
    </div>
  )
}

export default PermissionManagement
