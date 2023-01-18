package frontend

import (
	"github.com/gogf/gf/v2/frame/g"
)

type RegisterReq struct {
	g.Meta       `path:"/register" method:"post" tags:"前台用户" summary:"用户注册"`
	Name         string `json:"name"         description:"用户名" v:"required#用户名必填"`
	Password     string `json:"password"     description:"密码" v:"password"`
	Avatar       string `json:"avatar"       description:"头像"`
	UserSalt     string `json:"userSalt"     description:"加密盐 生成密码用"`
	Sex          int    `json:"sex"          description:"1男 2女"`
	Status       int    `json:"status"       description:"1正常 2拉黑冻结"`
	Sign         string `json:"sign"         description:"个性签名"`
	SecretAnswer string `json:"secretAnswer" description:"密保问题的答案"`
}

type RegisterRes struct {
	Id uint `json:"id"`
}

// for gtoken
type LoginRes struct {
	Type     string `json:"type"`
	Token    string `json:"token"`
	ExpireIn int    `json:"expire_in"`
	Name     string `json:"name"`
	Avatar   string `json:"avatar"`
	Sex      uint8  `json:"sex"`
	Sign     string `json:"sign"`
	Status   uint8  `json:"status"`
}
