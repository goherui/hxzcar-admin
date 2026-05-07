import { Routes, Route, Navigate } from 'react-router-dom'
import Sidebar from './components/Sidebar'
import Header from './components/Header'
import Login from './components/Login'
import Dashboard from './components/Dashboard'
import OrderDetail from './components/OrderDetail'
import OrderList from './components/order/OrderList'
import OrderMonitor from './components/order/OrderMonitor'
import AbnormalOrder from './components/order/AbnormalOrder'
import UserList from './components/user/UserList'
import UserPortrait from './components/user/UserPortrait'
import UserGroup from './components/user/UserGroup'
import DriverList from './components/driver/DriverList'
import DriverCert from './components/driver/DriverCert'
import DriverDistribution from './components/driver/DriverDistribution'
import DriverReview from './components/driver/DriverReview'
import ActivityManagement from './components/operation/ActivityManagement'
import CouponManagement from './components/operation/CouponManagement'
import MarketingTools from './components/operation/MarketingTools'
import DataOverview from './components/data/DataOverview'
import BehaviorAnalysis from './components/data/BehaviorAnalysis'
import ReportCenter from './components/data/ReportCenter'
import RoleManagement from './components/system/RoleManagement'
import PermissionManagement from './components/system/PermissionManagement'
import OperationLog from './components/system/OperationLog'
import { isLogin } from './utils/auth'

function ProtectedRoute({ children }) {
  if (!isLogin()) {
    return <Navigate to="/login" replace />
  }
  return children
}

function App() {
  return (
    <Routes>
      <Route path="/login" element={<Login />} />
      <Route path="/*" element={
        <ProtectedRoute>
          <div style={{ display: 'flex', minHeight: '100vh' }}>
            <Sidebar />
            <div style={{ flex: 1, marginLeft: 240, display: 'flex', flexDirection: 'column', overflowX: 'hidden' }}>
              <Header />
              <main style={{ flex: 1, overflowX: 'auto', overflowY: 'auto' }}>
                <Routes>
                  <Route path="/" element={<Dashboard />} />
                  <Route path="/order-detail/:id" element={<OrderDetail />} />
                  <Route path="/order-list" element={<OrderList />} />
                  <Route path="/order-monitor" element={<OrderMonitor />} />
                  <Route path="/abnormal-order" element={<AbnormalOrder />} />
                  <Route path="/user-list" element={<UserList />} />
                  <Route path="/user-portrait" element={<UserPortrait />} />
                  <Route path="/user-group" element={<UserGroup />} />
                  <Route path="/driver-list" element={<DriverList />} />
                  <Route path="/driver-cert" element={<DriverCert />} />
                  <Route path="/driver-distribution" element={<DriverDistribution />} />
                  <Route path="/driver-review" element={<DriverReview />} />
                  <Route path="/activity-management" element={<ActivityManagement />} />
                  <Route path="/coupon-management" element={<CouponManagement />} />
                  <Route path="/marketing-tools" element={<MarketingTools />} />
                  <Route path="/data-overview" element={<DataOverview />} />
                  <Route path="/behavior-analysis" element={<BehaviorAnalysis />} />
                  <Route path="/report-center" element={<ReportCenter />} />
                  <Route path="/role-management" element={<RoleManagement />} />
                  <Route path="/permission-management" element={<PermissionManagement />} />
                  <Route path="/operation-log" element={<OperationLog />} />
                </Routes>
              </main>
            </div>
          </div>
        </ProtectedRoute>
      } />
    </Routes>
  )
}

export default App