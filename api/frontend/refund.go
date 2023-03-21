package frontend

import (
	"github.com/gogf/gf/v2/frame/g"
)

type RefundAddReq struct {
	g.Meta  `path:"/refund/add" tags:"前端售后" method:"post" summary:"发起售后"`
	OrderId int    `json:"order_id"   description:"订单id"`
	GoodsId int    `json:"goods_id"   description:"要售后的商品id"`
	Reason  string `json:"reason"    description:"退款原因"`
}

type RefundAddRes struct {
	Id uint `json:"id"        description:"售后退款id"`
}

type RefundGetListCommonReq struct {
	g.Meta `path:"/refund/list" method:"get" tags:"前端售后" summary:"售后列表接口"`
	CommonPaginationReq
}

type RefundGetListCommonRes struct {
	List  interface{} `json:"list" description:"列表"`
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
}

type RefundDetailReq struct {
	g.Meta `path:"/refund/detail" method:"get" tags:"前端售后" summary:"售后详情"`
	Id     uint `json:"id"`
}

type RefundDetailRes struct {
	Id        int    `json:"id"        description:"售后退款表"`
	Number    string `json:"number"    description:"售后订单号"`
	OrderId   int    `json:"order_id"   description:"订单id"`
	GoodsId   int    `json:"goods_id"   description:"要售后的商品id"`
	Reason    string `json:"reason"    description:"退款原因"`
	Status    int    `json:"status"    description:"状态 1待处理 2同意退款 3拒绝退款"`
	UserId    int    `json:"userId"    description:"用户id"`
	CreatedAt string `json:"created_at" description:""`
	UpdatedAt string `json:"updated_at" description:""`
}
