import service from '@/utils/request'

export const getDriverList = () => {
  return service({
    url: '/hxzCar/driver/list',
    method: 'get'
  })
}

export const getDriverInfo = (id) => {
  return service({
    url: '/hxzCar/driver/info',
    method: 'get',
    params: { id: id }
  })
}

export const createDriver = (data) => {
  return service({
    url: '/hxzCar/driver/create',
    method: 'post',
    data: data
  })
}

export const updateDriver = (data) => {
  return service({
    url: '/hxzCar/driver/update',
    method: 'put',
    data: data
  })
}

export const deleteDriver = (id) => {
  return service({
    url: '/hxzCar/driver/delete',
    method: 'delete',
    params: { id: id }
  })
}

export const getOrderList = (params) => {
  return service({
    url: '/hxzCar/order/list',
    method: 'get',
    params: params
  })
}

export const getOrderInfo = (id) => {
  return service({
    url: '/hxzCar/order/info',
    method: 'get',
    params: { id: id }
  })
}

export const createOrder = (data) => {
  return service({
    url: '/hxzCar/order/create',
    method: 'post',
    data: data
  })
}

export const updateOrder = (data) => {
  return service({
    url: '/hxzCar/order/update',
    method: 'put',
    data: data
  })
}

export const deleteOrder = (id) => {
  return service({
    url: '/hxzCar/order/delete',
    method: 'delete',
    params: { id: id }
  })
}

export const getPassengerList = () => {
  return service({
    url: '/hxzCar/passenger/list',
    method: 'get'
  })
}

export const getPassengerInfo = (id) => {
  return service({
    url: '/hxzCar/passenger/info',
    method: 'get',
    params: { id: id }
  })
}

export const createPassenger = (data) => {
  return service({
    url: '/hxzCar/passenger/create',
    method: 'post',
    data: data
  })
}

export const updatePassenger = (data) => {
  return service({
    url: '/hxzCar/passenger/update',
    method: 'put',
    data: data
  })
}

export const deletePassenger = (id) => {
  return service({
    url: '/hxzCar/passenger/delete',
    method: 'delete',
    params: { id: id }
  })
}

export const getDashboardStatistics = (date) => {
  return service({
    url: '/hxzCar/statistics/dashboard',
    method: 'get',
    params: { date: date }
  })
}

export const getMonitorData = (date) => {
  return service({
    url: '/hxzCar/monitor/data',
    method: 'get',
    params: { date: date }
  })
}

export const getLatestOrders = () => {
  return service({
    url: '/hxzCar/monitor/latest-orders',
    method: 'get'
  })
}

export const getMonitorStats = (date) => {
  return service({
    url: '/hxzCar/monitor/stats',
    method: 'get',
    params: { date: date }
  })
}

export const getAbnormalStats = (date) => {
  return service({
    url: '/hxzCar/abnormal/stats',
    method: 'get',
    params: { date: date }
  })
}

export const getAbnormalOrders = (params) => {
  return service({
    url: '/hxzCar/abnormal/orders',
    method: 'get',
    params: params
  })
}

export const updateAbnormalStatus = (id, status) => {
  return service({
    url: '/hxzCar/abnormal/status',
    method: 'put',
    params: { id, status }
  })
}

export const batchProcessAbnormal = (ids, status) => {
  return service({
    url: '/hxzCar/abnormal/batch',
    method: 'post',
    data: { ids, status }
  })
}