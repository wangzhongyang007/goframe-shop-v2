package model

type DecStockInput struct {
	GoodsId        uint `dc:"商品id"`
	GoodsOptionsId uint `dc:"商品规格"`
	Number         int  `dc:"商品数量"`
}
