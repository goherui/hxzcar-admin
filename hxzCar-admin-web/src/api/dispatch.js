import request from '@/utils/request'

export function dispatchOrder(data) {
  return request({
    url: '/hxzCar/dispatch/order',
    method: 'post',
    data
  })
}

export function manualDispatchOrder(data) {
  return request({
    url: '/hxzCar/dispatch/manual',
    method: 'post',
    data
  })
}

export function reportLocation(data) {
  return request({
    url: '/hxzCar/dispatch/location',
    method: 'post',
    data
  })
}

export function setDriverOnline(driverId) {
  return request({
    url: `/hxzCar/dispatch/online?driverId=${driverId}`,
    method: 'get'
  })
}

export function setDriverOffline(driverId) {
  return request({
    url: `/hxzCar/dispatch/offline?driverId=${driverId}`,
    method: 'get'
  })
}

export function getDriverStatus(driverId) {
  return request({
    url: `/hxzCar/dispatch/driver/status?driverId=${driverId}`,
    method: 'get'
  })
}

export function toggleDispatch() {
  return request({
    url: '/hxzCar/dispatch/toggle',
    method: 'post'
  })
}

export function getDispatchStatus() {
  return request({
    url: '/hxzCar/dispatch/status',
    method: 'get'
  })
}

export function batchDispatch() {
  return request({
    url: '/hxzCar/dispatch/batch',
    method: 'post'
  })
}