package model

// todo 没有记录评价userid
type AddOrderGoodsCommentsInput struct {
	OrderId        uint
	GoodsId        uint
	GoodsOptionsId uint
	ParentId       uint
	Content        string
}

type AddOrderGoodsCommentsOutput struct {
	Id uint
}

type DelOrderGoodsCommentsInput struct {
	Id uint
}

type DelOrderGoodsCommentsOutput struct {
	Id uint
}
