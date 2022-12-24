package backend

import "github.com/gogf/gf/v2/frame/g"

type RoleReq struct {
	g.Meta `path:"/backend/role/add" method:"post" desc:"添加角色" tags:"role"`
	Name   string `json:"name" v:"required#名称必填" dc:"角色名称"`
	Desc   string `json:"desc" dc:"角色描述"`
}

type RoleRes struct {
	RoleId int `json:"role_id"`
}
