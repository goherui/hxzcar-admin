import React, { useState } from 'react'
import { Card, Table, Select, Button, Input, Tag, Row, Col, Modal, Form } from 'antd'

const { Option } = Select
const { TextArea } = Input

const roleData = [
  { id: '1', name: '超级管理员', code: 'ROLE_SUPER_ADMIN', desc: '拥有系统所有权限', status: '正常', userCount: 2 },
  { id: '2', name: '运营管理员', code: 'ROLE_OPERATE_ADMIN', desc: '运营管理相关权限', status: '正常', userCount: 15 },
  { id: '3', name: '客服管理员', code: 'ROLE_CUSTOMER_SERVICE', desc: '客服管理相关权限', status: '正常', userCount: 8 },
  { id: '4', name: '数据管理员', code: 'ROLE_DATA_ADMIN', desc: '数据统计分析相关权限', status: '正常', userCount: 5 },
  { id: '5', name: '财务管理员', code: 'ROLE_FINANCE_ADMIN', desc: '财务管理相关权限', status: '正常', userCount: 3 },
  { id: '6', name: '普通用户', code: 'ROLE_USER', desc: '普通用户权限', status: '禁用', userCount: 0 },
]

const permissions = [
  { id: 'p1', name: '首页', checked: true },
  { id: 'p2', name: '订单管理', checked: true },
  { id: 'p3', name: '用户管理', checked: true },
  { id: 'p4', name: '司机管理', checked: true },
  { id: 'p5', name: '运营管理', checked: true },
  { id: 'p6', name: '数据中心', checked: true },
  { id: 'p7', name: '系统管理', checked: true },
]

function RoleManagement() {
  const [isModalVisible, setIsModalVisible] = useState(false)
  const [form] = Form.useForm()

  const showModal = () => {
    setIsModalVisible(true)
  }

  const handleCancel = () => {
    setIsModalVisible(false)
    form.resetFields()
  }

  const columns = [
    { title: '角色ID', dataIndex: 'id', key: 'id', width: 80 },
    { 
      title: '角色名称', 
      dataIndex: 'name', 
      key: 'name', 
      width: 120,
      render: (text) => <span style={{ fontWeight: 'bold', color: '#333' }}>{text}</span>
    },
    { 
      title: '角色编码', 
      dataIndex: 'code', 
      key: 'code', 
      width: 180,
      render: (text) => <span style={{ color: '#666', fontFamily: 'monospace' }}>{text}</span>
    },
    { title: '描述', dataIndex: 'desc', key: 'desc', width: 200 },
    { 
      title: '状态', 
      dataIndex: 'status', 
      key: 'status', 
      width: 80,
      render: (text) => <Tag color={text === '正常' ? 'green' : 'red'}>{text}</Tag>
    },
    { title: '关联用户数', dataIndex: 'userCount', key: 'userCount', width: 100 },
    { 
      title: '操作', 
      key: 'action', 
      width: 150,
      render: () => (
        <div>
          <Button type="link" size="small">编辑</Button>
          <Button type="link" size="small">分配权限</Button>
          <Button type="link" size="small">删除</Button>
        </div>
      )
    },
  ]

  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 20 }}>
        <h2 style={{ fontSize: 18, fontWeight: 'bold', color: '#333' }}>角色管理</h2>
        <Button type="primary" onClick={showModal}>+ 新增角色</Button>
      </div>

      <div style={{ background: 'white', borderRadius: 12, padding: 20, marginBottom: 20 }}>
        <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap', alignItems: 'center' }}>
          <Input placeholder="请输入角色名称" style={{ width: 200 }} />
          <Button type="primary">查询</Button>
          <Button>重置</Button>
        </div>
      </div>

      <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
        <Table
          dataSource={roleData}
          columns={columns}
          pagination={{ pageSize: 10 }}
        />
      </div>

      <Modal
        title="新增角色"
        visible={isModalVisible}
        onCancel={handleCancel}
        footer={[
          <Button key="back" onClick={handleCancel}>取消</Button>,
          <Button key="submit" type="primary" onClick={handleCancel}>确定</Button>,
        ]}
      >
        <Form form={form} layout="vertical">
          <Form.Item label="角色名称" name="name" rules={[{ required: true }]}>
            <Input placeholder="请输入角色名称" />
          </Form.Item>
          <Form.Item label="角色编码" name="code" rules={[{ required: true }]}>
            <Input placeholder="请输入角色编码" />
          </Form.Item>
          <Form.Item label="角色描述" name="desc">
            <TextArea placeholder="请输入角色描述" rows={3} />
          </Form.Item>
        </Form>
      </Modal>
    </div>
  )
}

export default RoleManagement