import service from '@/utils/request'

export const login = (data) => {
  return service({
    url: '/base/login',
    method: 'post',
    data: data
  })
}

export const getCaptcha = () => {
  return service({
    url: '/base/captcha',
    method: 'post'
  })
}

export const getUserInfo = () => {
  return service({
    url: '/user/getUserInfo',
    method: 'get'
  })
}

export const getUserList = (data) => {
  return service({
    url: '/user/getUserList',
    method: 'post',
    data: data
  })
}

export const createUser = (data) => {
  return service({
    url: '/user/admin_register',
    method: 'post',
    data: data
  })
}

export const updateUser = (data) => {
  return service({
    url: '/user/setUserInfo',
    method: 'put',
    data: data
  })
}

export const deleteUser = (data) => {
  return service({
    url: '/user/deleteUser',
    method: 'delete',
    data: data
  })
}

export const getAuthorityList = () => {
  return service({
    url: '/authority/getAuthorityList',
    method: 'post',
    data: { page: 1, pageSize: 100 }
  })
}

export const createAuthority = (data) => {
  return service({
    url: '/authority/createAuthority',
    method: 'post',
    data: data
  })
}

export const updateAuthority = (data) => {
  return service({
    url: '/authority/updateAuthority',
    method: 'post',
    data: data
  })
}

export const deleteAuthority = (data) => {
  return service({
    url: '/authority/deleteAuthority',
    method: 'post',
    data: data
  })
}

export const getMenuList = () => {
  return service({
    url: '/menu/getMenu',
    method: 'post'
  })
}

export const addMenu = (data) => {
  return service({
    url: '/menu/addBaseMenu',
    method: 'post',
    data: data
  })
}

export const updateMenu = (data) => {
  return service({
    url: '/menu/updateBaseMenu',
    method: 'post',
    data: data
  })
}

export const deleteMenu = (data) => {
  return service({
    url: '/menu/deleteBaseMenu',
    method: 'post',
    data: data
  })
}

export const getOperationRecord = (data) => {
  return service({
    url: '/operationRecord/getOperationRecord',
    method: 'post',
    data: data
  })
}