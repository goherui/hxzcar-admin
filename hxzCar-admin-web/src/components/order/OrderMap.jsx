import { useState, useEffect, useRef, useCallback } from 'react'
import { getOrderList } from '../../api/hxzCar'

const AMap_KEY = 'b8f508b7f5799a000917fadefb910234'

const OrderMap = () => {
  const mapRef = useRef(null)
  const mapInstanceRef = useRef(null)
  const markersRef = useRef([])
  const [orders, setOrders] = useState([])
  const [isLoading, setIsLoading] = useState(true)
  const [selectedOrder, setSelectedOrder] = useState(null)

  const getStatusColor = (status) => {
    switch (status) {
      case 1:
        return '#3b82f6'
      case 2:
        return '#22c55e'
      case 4:
        return '#9ca3af'
      case 5:
        return '#ef4444'
      default:
        return '#6b7280'
    }
  }

  const getStatusText = (status) => {
    switch (status) {
      case 1:
        return '待接单'
      case 2:
        return '进行中'
      case 4:
        return '已完成'
      case 5:
        return '已取消'
      default:
        return '未知'
    }
  }

  const fetchOrders = useCallback(async () => {
    try {
      const params = {
        page: 1,
        pageSize: 100,
        orderStatus: 0
      }
      const res = await getOrderList(params)
      if (res.data && res.data.list) {
        const validOrders = res.data.list.filter(order => order.startLat && order.startLng)
        setOrders(validOrders)
        updateMarkers(validOrders)
      }
    } catch (error) {
      console.error('获取订单列表失败:', error)
    }
    setIsLoading(false)
  }, [])

  const updateMarkers = (orderList) => {
    if (!mapInstanceRef.current) return

    markersRef.current.forEach(marker => {
      mapInstanceRef.current.remove(marker)
    })
    markersRef.current = []

    const bounds = new window.AMap.Bounds()

    orderList.forEach(order => {
      const marker = new window.AMap.Marker({
        position: new window.AMap.LngLat(order.startLng, order.startLat),
        icon: new window.AMap.Icon({
          size: new window.AMap.Size(32, 32),
          image: createMarkerIcon(getStatusColor(order.orderStatus)),
          imageSize: new window.AMap.Size(32, 32)
        }),
        title: order.orderNo,
        clickable: true
      })

      marker.on('click', () => {
        setSelectedOrder(order)
      })

      mapInstanceRef.current.add(marker)
      markersRef.current.push(marker)

      bounds.extend(new window.AMap.LngLat(order.startLng, order.startLat))
    })

    if (orderList.length > 0) {
      mapInstanceRef.current.setBounds(bounds, true, [50, 50])
    }
  }

  const createMarkerIcon = (color) => {
    const canvas = document.createElement('canvas')
    canvas.width = 32
    canvas.height = 32
    const ctx = canvas.getContext('2d')

    ctx.beginPath()
    ctx.arc(16, 16, 12, 0, Math.PI * 2)
    ctx.fillStyle = color
    ctx.fill()
    ctx.strokeStyle = '#fff'
    ctx.lineWidth = 2
    ctx.stroke()

    ctx.beginPath()
    ctx.arc(16, 16, 6, 0, Math.PI * 2)
    ctx.fillStyle = '#fff'
    ctx.fill()

    return canvas.toDataURL()
  }

  useEffect(() => {
    const loadAMap = () => {
      return new Promise((resolve, reject) => {
        if (window.AMap) {
          resolve(window.AMap)
          return
        }

        const script = document.createElement('script')
        script.src = `https://webapi.amap.com/maps?v=2.0&key=${AMap_KEY}&callback=initAMap`
        script.type = 'text/javascript'
        document.head.appendChild(script)

        window.initAMap = () => {
          resolve(window.AMap)
        }

        script.onerror = () => {
          reject(new Error('高德地图加载失败'))
        }
      })
    }

    loadAMap().then(() => {
      mapInstanceRef.current = new window.AMap.Map(mapRef.current, {
        resizeEnable: true,
        zoom: 10,
        center: [116.4074, 39.9042]
      })

      window.AMap.plugin(['AMap.Scale', 'AMap.ToolBar'], () => {
        mapInstanceRef.current.addControl(new window.AMap.Scale())
        mapInstanceRef.current.addControl(new window.AMap.ToolBar())
      })

      fetchOrders()

      const interval = setInterval(fetchOrders, 15000)

      return () => {
        clearInterval(interval)
        if (mapInstanceRef.current) {
          mapInstanceRef.current.destroy()
        }
      }
    }).catch(error => {
      console.error('地图初始化失败:', error)
      setIsLoading(false)
    })
  }, [fetchOrders])

  return (
    <div style={{ height: '100%', position: 'relative' }}>
      {isLoading && (
        <div style={{ 
          position: 'absolute', 
          top: 0, 
          left: 0, 
          right: 0, 
          bottom: 0, 
          background: '#f8fafc',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center'
        }}>
          <div style={{ textAlign: 'center' }}>
            <div style={{ fontSize: 48, marginBottom: 8 }}>🗺️</div>
            <div style={{ fontSize: 14, color: '#999' }}>地图加载中...</div>
          </div>
        </div>
      )}
      <div ref={mapRef} style={{ height: '100%' }} />

      {selectedOrder && (
        <div style={{ 
          position: 'absolute', 
          top: 20, 
          right: 20, 
          background: '#fff', 
          borderRadius: 8, 
          padding: 16,
          boxShadow: '0 4px 20px rgba(0,0,0,0.1)',
          width: 300,
          zIndex: 100
        }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: 12 }}>
            <div style={{ fontSize: 14, fontWeight: 600, color: '#333' }}>订单详情</div>
            <button 
              onClick={() => setSelectedOrder(null)}
              style={{ background: 'none', border: 'none', fontSize: 16, cursor: 'pointer', color: '#999' }}
            >
              ×
            </button>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 8, fontSize: 12 }}>
            <div>
              <span style={{ color: '#999' }}>订单号：</span>
              <span style={{ color: '#333' }}>{selectedOrder.orderNo}</span>
            </div>
            <div>
              <span style={{ color: '#999' }}>下单时间：</span>
              <span style={{ color: '#333' }}>
                {typeof selectedOrder.createTime === 'string' 
                  ? selectedOrder.createTime.replace('T', ' ').split('.')[0]
                  : selectedOrder.createTime}
              </span>
            </div>
            <div>
              <span style={{ color: '#999' }}>起点：</span>
              <span style={{ color: '#333' }}>{selectedOrder.startAddress || '未知'}</span>
            </div>
            <div>
              <span style={{ color: '#999' }}>状态：</span>
              <span 
                style={{ 
                  color: getStatusColor(selectedOrder.orderStatus),
                  fontWeight: 500
                }}
              >
                {getStatusText(selectedOrder.orderStatus)}
              </span>
            </div>
            <div>
              <span style={{ color: '#999' }}>金额：</span>
              <span style={{ color: '#f5222d', fontWeight: 600 }}>
                ¥{selectedOrder.totalAmount || '0.00'}
              </span>
            </div>
          </div>
        </div>
      )}

      <div style={{ 
        position: 'absolute', 
        bottom: 20, 
        left: 20, 
        background: 'rgba(255,255,255,0.9)', 
        borderRadius: 8, 
        padding: 12,
        boxShadow: '0 2px 10px rgba(0,0,0,0.1)'
      }}>
        <div style={{ fontSize: 12, fontWeight: 500, color: '#666', marginBottom: 8 }}>订单状态图例</div>
        <div style={{ display: 'flex', flexDirection: 'column', gap: 6 }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <div style={{ width: 12, height: 12, borderRadius: 50, backgroundColor: '#3b82f6' }}></div>
            <span style={{ fontSize: 12, color: '#666' }}>待接单</span>
          </div>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <div style={{ width: 12, height: 12, borderRadius: 50, backgroundColor: '#22c55e' }}></div>
            <span style={{ fontSize: 12, color: '#666' }}>进行中</span>
          </div>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <div style={{ width: 12, height: 12, borderRadius: 50, backgroundColor: '#9ca3af' }}></div>
            <span style={{ fontSize: 12, color: '#666' }}>已完成</span>
          </div>
          <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
            <div style={{ width: 12, height: 12, borderRadius: 50, backgroundColor: '#ef4444' }}></div>
            <span style={{ fontSize: 12, color: '#666' }}>已取消</span>
          </div>
        </div>
      </div>
    </div>
  )
}

export default OrderMap