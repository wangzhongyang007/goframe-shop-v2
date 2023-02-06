package frontend

import "github.com/gogf/gf/v2/frame/g"

type AddCollectionReq struct {
	g.Meta   `path:"/add/collection" in:"post" method:"post" tags:"前台收藏" summary:"添加收藏"`
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

type ListCollectionReq struct {
	g.Meta `path:"/collection/list" method:"post" tags:"前台收藏" summary:"收藏列表"`
	Type   uint8 `json:"type" v:"in:1,2" dc:"收藏类型"`
	CommonPaginationReq
}

type ListCollectionRes struct {
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
	List  interface{} `json:"list" description:"列表"`
}

type ListCollectionItem struct {
	Id       int         `json:"id"        description:""`
	UserId   int         `json:"user_id"    description:"用户id"`
	ObjectId int         `json:"object_id"  description:"对象id"`
	Type     int         `json:"type"      description:"收藏类型：1商品 2文章"`
	Goods    interface{} `json:"goods"`
	Article  interface{} `json:"article"`
}

//type GoodsItem struct {
//	g.Meta `orm:"table:goods_info"`
//	Id     uint   `json:"id"`
//	Name   string `json:"name"`
//	PicUrl string `json:"pic_url"`
//	Price  int    `json:"price"`
//}
//
//type ArticleItem struct {
//	g.Meta `orm:"table:article_info"`
//	Id     uint   `json:"id"`
//	Title  string `json:"title"`
//	Desc   string `json:"desc"`
//	PicUrl string `json:"pic_url"`
//}
