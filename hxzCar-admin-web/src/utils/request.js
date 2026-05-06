import axios from 'axios'
import { message } from 'antd'

const service = axios.create({
  baseURL: 'http://localhost:8888',
  timeout: 5000
})

service.interceptors.request.use(
  config => {
    const token = localStorage.getItem('token')
    if (token) {
      config.headers['x-token'] = token
    }
    return config
  },
  error => {
    console.error('Request error:', error)
    return Promise.reject(error)
  }
)

service.interceptors.response.use(
  response => {
    const res = response.data
    if (res.code !== 0 && res.code !== 200) {
      message.error(res.msg || res.message || '请求失败')
      if (res.code === 401) {
        localStorage.removeItem('token')
        window.location.href = '/login'
      }
      return Promise.reject(new Error(res.msg || res.message || '请求失败'))
    }
    return res
  },
  error => {
    console.error('Response error:', error)
    message.error(error.message || '网络异常')
    return Promise.reject(error)
  }
)

export default service