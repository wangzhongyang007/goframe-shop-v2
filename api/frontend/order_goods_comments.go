package frontend

import "github.com/gogf/gf/v2/frame/g"

type AddOrderGoodsCommentsReq struct {
	g.Meta         `path:"/add/order/good/comment" in:"post" method:"post" tags:"前台订单商品评价" summary:"添加订单商品评价"`
	OrderId        uint   `json:"order_id" v:"required#订单id必填" dc:"订单id"`
	GoodsId        uint   `json:"goods_id" v:"required#商品id必填" dc:"商品id"`
	GoodsOptionsId uint   `json:"goods_options_id" v:"required#商品规格id必填" dc:"商品规格id"`
	ParentId       uint   `json:"parent_id" dc:"父级评论id"`
	Content        string `json:"content" v:"required#评论内容不能为空"`
}

type AddOrderGoodsCommentsRes struct {
	Id uint `json:"id"`
}

type DelOrderGoodsCommentsReq struct {
	g.Meta `path:"/delete/order/good/comment" in:"" method:"post" tags:"前台订单商品评价" summary:"删除订单商品评价"`
	Id     uint `json:"id" v:"required#删除订单商品id必填"`
}

type DelOrderGoodsCommentsRes struct {
	Id uint `json:"id"`
}
