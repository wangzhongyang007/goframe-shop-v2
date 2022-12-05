package response

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/util/gconv"
)

// JsonRes 数据返回通用JSON数据结构
type JsonRes struct {
	Code    int         `json:"code"` // 错误码((0:成功, 1:失败, >1:错误码))
	Message string      `json:"msg"`  // 提示信息
	Data    interface{} `json:"data"` // 返回数据(业务接口定义具体数据结构)
	//Redirect string      `json:"redirect"` // 引导客户端跳转到指定路由
}

// Json 返回标准JSON数据。
func Json(r *ghttp.Request, code int, message string, data ...interface{}) {
	var responseData interface{}
	if len(data) > 0 {
		responseData = data[0]
	} else {
		responseData = g.Map{}
	}
	r.Response.WriteJson(JsonRes{
		Code:    code,
		Message: message,
		Data:    responseData,
	})
}

// JsonExit 返回标准JSON数据并退出当前HTTP执行函数。
func JsonExit(r *ghttp.Request, code int, message string, data ...interface{}) {
	Json(r, code, message, data...)
	r.Exit()
}

func dataReturn(r *ghttp.Request, code int, req ...interface{}) *JsonRes {
	var msg string
	var data interface{}
	if len(req) > 0 {
		msg = gconv.String(req[0])
	}
	if len(req) > 1 {
		data = req[1]
	}
	//msg = GetCodeMsg(code, msg)
	if code != 1 && !gconv.Bool(r.GetCtxVar("api_code")) {
		code = 0
	}
	response := &JsonRes{
		//ID:      r.GetCtxVar("RequestId").String(),
		Code:    code,
		Message: msg,
		Data:    data,
	}
	r.SetParam("apiReturnRes", response)
	return response
}

// Auth 认证失败
func Auth(r *ghttp.Request) {
	res := dataReturn(r, 999, "请登录")
	r.Response.WriteJsonExit(res)
}

// Auth 认证失败 被冻结拉黑
func AuthBlack(r *ghttp.Request) {
	res := dataReturn(r, 888, "您的账号被冻结拉黑，请联系管理员")
	r.Response.WriteJsonExit(res)
}

// JsonRedirect 返回标准JSON数据引导客户端跳转。
func JsonRedirect(r *ghttp.Request, code int, message, redirect string, data ...interface{}) {
	responseData := interface{}(nil)
	if len(data) > 0 {
		responseData = data[0]
	}
	r.Response.WriteJson(JsonRes{
		Code:    code,
		Message: message,
		Data:    responseData,
		//Redirect: redirect,
	})
}

// JsonRedirectExit 返回标准JSON数据引导客户端跳转，并退出当前HTTP执行函数。
func JsonRedirectExit(r *ghttp.Request, code int, message, redirect string, data ...interface{}) {
	JsonRedirect(r, code, message, redirect, data...)
	r.Exit()
}

func SuccessWithData(r *ghttp.Request, data interface{}) {
	res := dataReturn(r, 1, "ok", data)
	r.Response.WriteJsonExit(res)
}

// JsonResponse 数据返回通用JSON数据结构
type JsonResponse struct {
	//ID       string      `json:"id"`                 //
	Code     int         `json:"code"`               // 错误码((1:成功, 0:失败, >1:错误码))
	Message  string      `json:"message"`            // 提示信息
	Data     interface{} `json:"data,omitempty"`     // 返回数据(业务接口定义具体数据结构)
	Redirect string      `json:"redirect,omitempty"` // 引导客户端跳转到指定路由
}
