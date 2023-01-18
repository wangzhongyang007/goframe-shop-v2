package frontend

import "github.com/gogf/gf/v2/frame/g"

type AddCollectionReq struct {
	g.Meta   `path:"/add/collection" in:"post" method:"post" tags:"前台收藏" summary:"添加收藏"`
	UserId   uint  `json:"user_id"    dc:"用户id"`
	ObjectId uint  `json:"object_id" v:"required#收藏对象id必填" dc:"对象id"`
	Type     uint8 `json:"type" v:"in:1,2" dc:"收藏类型：1商品 2文章" ` //数据校验 范围约束
}

type AddCollectionRes struct {
	Id uint `json:"id"`
}

type DeleteCollectionReq struct {
	g.Meta   `path:"/delete/collection" method:"post" tags:"前台收藏" summary:"移除收藏"`
	Id       uint  `json:"id"`
	Type     uint8 `json:"type"`
	ObjectId uint  `json:"object_id"`
}

type DeleteCollectionRes struct {
	Id uint `json:"id"`
}
