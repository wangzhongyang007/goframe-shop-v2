package model

import (
	"goframe-shop-v2/internal/model/entity"
)

type RefundListInput struct {
	Page   int // 分页号码
	Size   int // 分页数量，最大50
	UserId int `json:"userId"           dc:"用户id"`
}

type RefundListOutput struct {
	List  []RefundListOutputItem
	Page  int `json:"page" description:"分页码"`
	Size  int `json:"size" description:"分页数量"`
	Total int `json:"total" description:"数据总数"`
}

type RefundListOutputItem struct {
	entity.RefundInfo
}

type RefundDetailInput struct {
	Id uint
}

type RefundDetailOutput struct {
	entity.RefundInfo
}

type RefundAddInput struct {
	Number  string `json:"number"    description:"售后订单号"`
	OrderId int    `json:"orderId"   description:"订单id"`
	GoodsId int    `json:"goodsId"   description:"要售后的商品id"`
	Reason  string `json:"reason"    description:"退款原因"`
	Status  int    `json:"status"    description:"状态 1待处理 2同意退款 3拒绝退款"`
	UserId  int    `json:"userId"    description:"用户id"`
}

type RefundAddOutput struct {
	Id uint `json:"id"`
}
