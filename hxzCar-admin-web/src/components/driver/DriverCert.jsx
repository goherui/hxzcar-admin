import { Card, Tag, Row, Col, Button, Select, Input, Tabs } from 'antd'

const { Option } = Select
const { TabPane } = Tabs

const pendingCertData = [
  {
    id: 'D000006',
    name: '陈师傅',
    phone: '138****8888',
    city: '杭州市',
    applyTime: '2024-05-20 10:30:00',
    status: '待审核',
    carNo: '浙A88888',
    carType: '比亚迪秦',
  },
  {
    id: 'D000007',
    name: '周师傅',
    phone: '139****9999',
    city: '南京市',
    applyTime: '2024-05-20 09:15:00',
    status: '待审核',
    carNo: '苏A99999',
    carType: '吉利帝豪',
  },
]

const certDetail = {
  id: 'D000006',
  name: '陈师傅',
  avatar: 'C',
  phone: '138****8888',
  city: '杭州市',
  applyTime: '2024-05-20 10:30:00',
  status: '待审核',
  carNo: '浙A88888',
  carType: '比亚迪秦',
  carColor: '白色',
  carYear: '2023',
  idCard: '3301******1234',
  driverLicense: '浙A123456',
  serviceYears: '5年',
}

function DriverCert() {
  return (
    <div style={{ padding: 24, background: '#f5f5f5', minHeight: 'calc(100vh - 64px)' }}>
      <Tabs defaultActiveKey="pending">
        <TabPane tab="待审核" key="pending">
          <div style={{ background: 'white', borderRadius: 12, padding: 20, marginBottom: 20 }}>
            <div style={{ display: 'flex', gap: 16, flexWrap: 'wrap', alignItems: 'center' }}>
              <Input placeholder="司机ID/手机号" style={{ width: 200 }} />
              <Select placeholder="城市" style={{ width: 150 }}>
                <Option value="all">全部城市</Option>
                <Option value="hangzhou">杭州市</Option>
                <Option value="nanjing">南京市</Option>
              </Select>
              <Input placeholder="申请时间 - 起始" style={{ width: 180 }} />
              <Input placeholder="申请时间 - 结束" style={{ width: 180 }} />
              <Button type="primary">查询</Button>
              <Button>重置</Button>
            </div>
          </div>

          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 24 }}>
            <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
              <h3 style={{ fontSize: 16, fontWeight: 'bold', color: '#333', marginBottom: 16 }}>待审核列表</h3>
              {pendingCertData.map((item) => (
                <div 
                  key={item.id}
                  style={{ 
                    padding: 16, 
                    border: '1px solid #f0f0f0', 
                    borderRadius: 8, 
                    marginBottom: 12,
                    cursor: 'pointer',
                    transition: 'all 0.3s',
                  }}
                  className="hover:border-purple-400 hover:shadow-md"
                >
                  <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                    <div>
                      <div style={{ fontWeight: 'bold', color: '#333' }}>{item.name}</div>
                      <div style={{ fontSize: 12, color: '#999', marginTop: 4 }}>
                        {item.phone} | {item.city}
                      </div>
                    </div>
                    <Tag color="orange">{item.status}</Tag>
                  </div>
                  <div style={{ display: 'flex', justifyContent: 'space-between', marginTop: 12 }}>
                    <span style={{ fontSize: 12, color: '#999' }}>申请时间: {item.applyTime}</span>
                    <span style={{ fontSize: 12, color: '#666' }}>{item.carNo} | {item.carType}</span>
                  </div>
                </div>
              ))}
            </div>

            <Card title="审核详情" className="trend-chart-card">
              <div style={{ display: 'flex', alignItems: 'center', gap: 16, marginBottom: 20 }}>
                <div style={{ width: 80, height: 80, borderRadius: 50, background: 'linear-gradient(135deg, #4caf50 0%, #388e3c 100%)', display: 'flex', alignItems: 'center', justifyContent: 'center', color: 'white', fontSize: 32, fontWeight: 'bold' }}>
                  {certDetail.avatar}
                </div>
                <div>
                  <div style={{ fontSize: 20, fontWeight: 'bold', color: '#333' }}>{certDetail.name}</div>
                  <div style={{ color: '#999', marginTop: 4 }}>司机ID: {certDetail.id}</div>
                </div>
                <Tag color="orange" style={{ marginLeft: 'auto' }}>{certDetail.status}</Tag>
              </div>

              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 16, marginBottom: 20 }}>
                <div>
                  <div style={{ color: '#999', fontSize: 12 }}>手机号</div>
                  <div style={{ color: '#333', marginTop: 4 }}>{certDetail.phone}</div>
                </div>
                <div>
                  <div style={{ color: '#999', fontSize: 12 }}>城市</div>
                  <div style={{ color: '#333', marginTop: 4 }}>{certDetail.city}</div>
                </div>
                <div>
                  <div style={{ color: '#999', fontSize: 12 }}>车牌号</div>
                  <div style={{ color: '#333', marginTop: 4 }}>{certDetail.carNo}</div>
                </div>
                <div>
                  <div style={{ color: '#999', fontSize: 12 }}>车型</div>
                  <div style={{ color: '#333', marginTop: 4 }}>{certDetail.carType}</div>
                </div>
              </div>

              <div style={{ marginBottom: 20 }}>
                <div style={{ color: '#999', fontSize: 12, marginBottom: 12 }}>证件信息</div>
                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 12 }}>
                  <div style={{ background: '#fafafa', padding: 12, borderRadius: 8, textAlign: 'center' }}>
                    <div style={{ fontSize: 24, marginBottom: 8 }}>📄</div>
                    <div style={{ fontSize: 12, color: '#999' }}>身份证</div>
                    <div style={{ fontSize: 12, color: '#666', marginTop: 4 }}>{certDetail.idCard}</div>
                  </div>
                  <div style={{ background: '#fafafa', padding: 12, borderRadius: 8, textAlign: 'center' }}>
                    <div style={{ fontSize: 24, marginBottom: 8 }}>🪪</div>
                    <div style={{ fontSize: 12, color: '#999' }}>驾驶证</div>
                    <div style={{ fontSize: 12, color: '#666', marginTop: 4 }}>{certDetail.driverLicense}</div>
                  </div>
                </div>
              </div>

              <div style={{ display: 'flex', gap: 12, justifyContent: 'flex-end' }}>
                <Button>拒绝</Button>
                <Button type="primary">通过审核</Button>
              </div>
            </Card>
          </div>
        </TabPane>

        <TabPane tab="已通过" key="approved">
          <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
            <div style={{ textAlign: 'center', padding: 40, color: '#999' }}>
              <div style={{ fontSize: 48, marginBottom: 16 }}>✅</div>
              <div>已通过审核列表</div>
              <div style={{ fontSize: 12, marginTop: 4 }}>展示已通过审核的司机信息</div>
            </div>
          </div>
        </TabPane>

        <TabPane tab="已拒绝" key="rejected">
          <div style={{ background: 'white', borderRadius: 12, padding: 20 }}>
            <div style={{ textAlign: 'center', padding: 40, color: '#999' }}>
              <div style={{ fontSize: 48, marginBottom: 16 }}>❌</div>
              <div>已拒绝审核列表</div>
              <div style={{ fontSize: 12, marginTop: 4 }}>展示已拒绝的司机申请</div>
            </div>
          </div>
        </TabPane>
      </Tabs>
    </div>
  )
}

export default DriverCert