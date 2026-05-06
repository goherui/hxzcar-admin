import React, { useState, useEffect } from 'react'
import { Form, Input, Button, message } from 'antd'
import { login } from '../api/system'
import { setToken, setUserInfo } from '../utils/auth'

function Login() {
  const [form] = Form.useForm()
  const [loading, setLoading] = useState(false)
  const [captchaUrl, setCaptchaUrl] = useState('')
  const [captchaId, setCaptchaId] = useState('')
  const [rememberMe, setRememberMe] = useState(false)

  const refreshCaptcha = () => {
    const id = Math.random().toString(36).substr(2, 9)
    setCaptchaId(id)
    setCaptchaUrl(`http://localhost:8888/base/captcha?captchaId=${id}`)
  }

  useEffect(() => {
    refreshCaptcha()
  }, [])

  const handleSubmit = async (values) => {
    setLoading(true)
    try {
      const response = await login({
        username: values.username,
        password: values.password,
        captcha: values.captcha,
        captchaId: captchaId
      })
      if (response.code === 0) {
        setToken(response.data.token)
        setUserInfo(response.data.user)
        message.success('登录成功')
        setTimeout(() => {
          window.location.href = '/'
        }, 1000)
      } else {
        message.error(response.msg || '登录失败')
        refreshCaptcha()
        form.setFieldsValue({ captcha: '' })
      }
    } catch (error) {
      message.error('登录失败，请检查用户名和密码')
      refreshCaptcha()
      form.setFieldsValue({ captcha: '' })
    } finally {
      setLoading(false)
    }
  }

  return (
    <div style={{ 
      height: '100vh', 
      display: 'flex',
      overflow: 'hidden'
    }}>
      <div style={{ 
        width: '50%',
        height: '100%',
        position: 'relative',
        overflow: 'hidden'
      }}>
        <img 
          src="/bg-login.png"
          alt="花小猪打车背景"
          style={{ 
            width: '100%',
            height: '100%',
            objectFit: 'cover'
          }}
        />
      </div>

      <div style={{ 
        width: '50%',
        height: '100%',
        background: '#F8FAFC',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        padding: '20px'
      }}>
        <div style={{ 
          position: 'absolute',
          top: 20,
          right: 30
        }}>
          <a href="#" style={{ 
            color: '#64748B',
            fontSize: 13,
            textDecoration: 'none'
          }}>帮助中心</a>
        </div>

        <div style={{ 
          width: '100%',
          maxWidth: 380,
          background: 'white',
          borderRadius: 16,
          padding: 30,
          boxShadow: '0 4px 20px rgba(0, 0, 0, 0.05)'
        }}>
          <div style={{ textAlign: 'center', marginBottom: 32 }}>
            <h2 style={{ 
              fontSize: 22,
              fontWeight: 'bold',
              color: '#1F2937',
              margin: 0
            }}>登录运营后台</h2>
            <p style={{ 
              color: '#6B7280',
              fontSize: 13,
              marginTop: 4
            }}>欢迎登录花小猪运营管理系统</p>
          </div>

          <Form
            form={form}
            layout="vertical"
            onFinish={handleSubmit}
          >
            <Form.Item
              name="username"
              rules={[{ required: true, message: '请输入账号' }]}
            >
              <Input 
                placeholder="请输入账号" 
                size="large"
                style={{ 
                  borderRadius: 10,
                  height: 48,
                  borderColor: '#E5E7EB',
                  paddingLeft: 40
                }}
                prefix={<span style={{ 
                  position: 'absolute',
                  left: 14,
                  color: '#9CA3AF',
                  fontSize: 16
                }}>👤</span>}
              />
            </Form.Item>

            <Form.Item
              name="password"
              rules={[{ required: true, message: '请输入密码' }]}
            >
              <Input.Password 
                placeholder="请输入密码" 
                size="large"
                style={{ 
                  borderRadius: 10,
                  height: 48,
                  borderColor: '#E5E7EB',
                  paddingLeft: 40
                }}
                prefix={<span style={{ 
                  position: 'absolute',
                  left: 14,
                  color: '#9CA3AF',
                  fontSize: 16
                }}>🔒</span>}
              />
            </Form.Item>

            <Form.Item
              name="captcha"
              rules={[{ required: true, message: '请输入验证码' }]}
            >
              <div style={{ display: 'flex', gap: 12 }}>
                <Input 
                  placeholder="请输入验证码" 
                  size="large"
                  style={{ 
                    borderRadius: 10,
                    height: 48,
                    borderColor: '#E5E7EB',
                    paddingLeft: 40,
                    flex: 1
                  }}
                  prefix={<span style={{ 
                    position: 'absolute',
                    left: 14,
                    color: '#9CA3AF',
                    fontSize: 16
                  }}>🛡️</span>}
                />
                <div style={{ 
                  width: 120,
                  height: 48,
                  borderRadius: 10,
                  overflow: 'hidden',
                  cursor: 'pointer',
                  border: '1px solid #E5E7EB'
                }}>
                  <img 
                    src={captchaUrl} 
                    alt="验证码"
                    onClick={refreshCaptcha}
                    style={{ 
                      width: '100%',
                      height: '100%',
                      objectFit: 'cover'
                    }}
                  />
                </div>
                <button 
                  type="button"
                  onClick={refreshCaptcha}
                  style={{ 
                    background: 'none',
                    border: 'none',
                    color: '#6366F1',
                    fontSize: 13,
                    fontWeight: 500,
                    cursor: 'pointer',
                    padding: 0
                  }}
                >
                  换一张
                </button>
              </div>
            </Form.Item>

            <div style={{ 
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
              marginBottom: 24
            }}>
              <label style={{ 
                display: 'flex',
                alignItems: 'center',
                gap: 8,
                cursor: 'pointer'
              }}>
                <input 
                  type="checkbox" 
                  checked={rememberMe}
                  onChange={(e) => setRememberMe(e.target.checked)}
                  style={{ 
                    width: 16,
                    height: 16,
                    accentColor: '#6366F1'
                  }}
                />
                <span style={{ color: '#6B7280', fontSize: 13 }}>记住账号</span>
              </label>
              <a href="#" style={{ 
                color: '#6366F1',
                fontSize: 13,
                textDecoration: 'none'
              }}>忘记密码?</a>
            </div>

            <Form.Item>
              <Button 
                type="primary" 
                htmlType="submit"
                size="large"
                block
                loading={loading}
                style={{ 
                  borderRadius: 10,
                  height: 48,
                  fontSize: 16,
                  background: 'linear-gradient(135deg, #6366F1 0%, #8B5CF6 100%)',
                  border: 'none',
                  boxShadow: '0 4px 14px 0 rgba(99, 102, 241, 0.4)'
                }}
              >
                登录
              </Button>
            </Form.Item>

            <div style={{ marginTop: 24 }}>
              <div style={{ 
                display: 'flex',
                alignItems: 'center',
                marginBottom: 20
              }}>
                <div style={{ 
                  flex: 1,
                  height: 1,
                  background: '#E5E7EB'
                }}></div>
                <span style={{ 
                  padding: '0 16px',
                  color: '#9CA3AF',
                  fontSize: 12
                }}>其他登录方式</span>
                <div style={{ 
                  flex: 1,
                  height: 1,
                  background: '#E5E7EB'
                }}></div>
              </div>
              <div style={{ display: 'flex', justifyContent: 'center' }}>
                <button 
                  type="button"
                  style={{ 
                    width: 48,
                    height: 48,
                    background: '#FFFBEB',
                    borderRadius: '50%',
                    border: 'none',
                    cursor: 'pointer',
                    display: 'flex',
                    alignItems: 'center',
                    justifyContent: 'center',
                    transition: 'all 0.2s ease'
                  }}
                >
                  <span style={{ fontSize: 24 }}>💬</span>
                </button>
              </div>
              <p style={{ 
                textAlign: 'center',
                color: '#9CA3AF',
                fontSize: 12,
                marginTop: 8
              }}>企业微信</p>
            </div>
          </Form>
        </div>
      </div>
    </div>
  )
}

export default Login