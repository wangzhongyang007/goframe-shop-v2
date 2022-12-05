package backend

import (
	"github.com/gogf/gf/v2/frame/g"
)

type AdminReq struct {
	g.Meta   `path:"/backend/admin/add" tags:"Admin" method:"post" summary:"You first admin api"`
	Name     string `json:"name" v:"required#用户名不能为空" dc:"用户名"`
	Password string `json:"password"    v:"required#密码不能为空" dc:"密码"`
	RoleIds  string `json:"role_ids"    dc:"角色ids"`
	IsAdmin  int    `json:"is_admin"    dc:"是否超级管理员"`
}

type AdminRes struct {
	AdminId int `json:"admin_id"`
}

type AdminDeleteReq struct {
	g.Meta `path:"/backend/admin/delete" method:"delete" tags:"管理员" summary:"删除管理员接口"`
	Id     uint `v:"min:1#请选择需要删除的管理员" dc:"管理员id"`
}
type AdminDeleteRes struct{}

type AdminUpdateReq struct {
	g.Meta   `path:"/backend/admin/update/{Id}" method:"post" tags:"管理员" summary:"修改管理员接口"`
	Id       uint   `json:"id"      v:"min:1#请选择需要修改的管理员" dc:"管理员Id"`
	Name     string `json:"name" v:"required#用户名不能为空" dc:"用户名"`
	Password string `json:"password"    v:"required#密码不能为空" dc:"密码"`
	RoleIds  string `json:"role_ids"    dc:"角色ids"`
	IsAdmin  int    `json:"is_admin"    dc:"是否超级管理员"`
}
type AdminUpdateRes struct {
	Id uint `json:"id"`
}
type AdminGetListCommonReq struct {
	g.Meta `path:"/backend/admin/list" method:"get" tags:"管理员" summary:"管理员列表接口"`
	CommonPaginationReq
}
type AdminGetListCommonRes struct {
	List  interface{} `json:"list" description:"列表"`
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
}

type AdminGetInfoReq struct {
	g.Meta `path:"/backend/admin/info" method:"get"`
}

// for jwt
//type AdminGetInfoRes struct {
//	Id          int    `json:"id"`
//	IdentityKey string `json:"identity_key"`
//	Payload     string `json:"payload"`
//}

// for gtoken
type AdminGetInfoRes struct {
	Id      int    `json:"id"`
	Name    string `json:"name"`
	RoleIds string `json:"role_ids"`
	IsAdmin int    `json:"is_admin"`
}

type AdminGetInfoGtokenRes struct {
	Id          int    `json:"id"`
	IdentityKey string `json:"identity_key"`
	Payload     string `json:"payload"`
}
