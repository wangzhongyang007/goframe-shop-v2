package frontend

import "github.com/gogf/gf/v2/frame/g"

type AddCartReq struct {
	g.Meta         `path:"/add/cart" in:"post" method:"post" tags:"前台购物车" summary:"添加购物车"`
	GoodsOptionsId uint `json:"goods_options_id" v:"required#商品详情id必填" dc:"对象id"`
	Count          int  `json:"count" v:"required#添加购物车商品数量必填" dc:"添加商品数量"`
}

type AddCartRes struct {
	Id uint `json:"id"`
}

type DeleteCartReq struct {
	g.Meta `path:"/delete/cart" in:"post" method:"post" tags:"前台购物车" summary:"移除购物车"`
	Id     uint `json:"id"`
}

type DeleteCartRes struct {
	Id uint `json:"id"`
}

type ListCartReq struct {
	g.Meta `path:"/cart/list" method:"post" tags:"前台购物车" summary:"购物车列表"`
	CommonPaginationReq
}

type ListCartRes struct {
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
	List  interface{} `json:"list" description:"列表"`
}

type ListCartItem struct {
	Id       int         `json:"id"        description:""`
	UserId   int         `json:"user_id"    description:"用户id"`
	ObjectId int         `json:"object_id"  description:"对象id"`
	Type     int         `json:"type"      description:"购物车类型：1商品 2文章"`
	Goods    interface{} `json:"goods"`
	Article  interface{} `json:"article"`
}
