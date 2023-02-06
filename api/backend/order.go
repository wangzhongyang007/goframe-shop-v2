package backend

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type OrderListReq struct {
	g.Meta `path:"/order/list" tags:"订单列表" method:"get" summary:"订单列表"`
	CommonPaginationReq
	Number         string `json:"number"           dc:"订单编号"`
	UserId         int    `json:"userId"           dc:"用户id"`
	PayType        int    `json:"payType"          dc:"支付方式 1微信 2支付宝 3云闪付"`
	PayAtGte       string `json:"payAtGte"         dc:"支付时间>="`
	PayAtLte       string `json:"payAtLte"         dc:"支付时间<="`
	Status         int    `json:"status"           dc:"订单状态： 1待支付 2已支付待发货 3已发货 4已收货待评价"`
	ConsigneePhone string `json:"consigneePhone"   dc:"收货人手机号"`
	PriceGte       int    `json:"priceGte"         dc:"订单金额>= 单位分"`
	PriceLte       int    `json:"priceLte"         dc:"订单金额<= 单位分"`
	DateGte        string `json:"dateGte"          dc:"創建时间>="`
	DateLte        string `json:"dateLte"          dc:"創建时间<="`
}

type OrderListRes struct {
	CommonPaginationRes
}

type OrderDetailReq struct {
	g.Meta `path:"/order/detail" tags:"订单详情" method:"get" summary:"订单详情"`
	Id     uint `json:"id"`
}

type OrderDetailRes struct {
	OrderInfoBase
	GoodsInfo []OrderGoodsInfoBase `json:"goods_info" dc:"订单商品列表"`
}

type OrderInfoBase struct {
	Id               int         `json:"id"               description:""`
	Number           string      `json:"number"           description:"订单编号"`
	UserId           int         `json:"userId"           description:"用户id"`
	PayType          int         `json:"payType"          description:"支付方式 1微信 2支付宝 3云闪付"`
	Remark           string      `json:"remark"           description:"备注"`
	PayAt            *gtime.Time `json:"payAt"            description:"支付时间"`
	Status           int         `json:"status"           description:"订单状态： 1待支付 2已支付待发货 3已发货 4已收货待评价"`
	ConsigneeName    string      `json:"consigneeName"    description:"收货人姓名"`
	ConsigneePhone   string      `json:"consigneePhone"   description:"收货人手机号"`
	ConsigneeAddress string      `json:"consigneeAddress" description:"收货人详细地址"`
	Price            int         `json:"price"            description:"订单金额 单位分"`
	CouponPrice      int         `json:"couponPrice"      description:"优惠券金额 单位分"`
	ActualPrice      int         `json:"actualPrice"      description:"实际支付金额 单位分"`
	CreatedAt        *gtime.Time `json:"createdAt"        description:""`
	UpdatedAt        *gtime.Time `json:"updatedAt"        description:""`
}

type OrderGoodsInfoBase struct {
	Id          int         `json:"id"          description:"商品维度的订单表"`
	OrderId     int         `json:"orderId"     description:"关联的主订单表"`
	GoodsId     int         `json:"goodsId"     description:"商品id"`
	Count       int         `json:"count"       description:"商品数量"`
	Remark      string      `json:"remark"      description:"备注"`
	Price       int         `json:"price"       description:"订单金额 单位分"`
	CouponPrice int         `json:"couponPrice" description:"优惠券金额 单位分"`
	ActualPrice int         `json:"actualPrice" description:"实际支付金额 单位分"`
	CreatedAt   *gtime.Time `json:"createdAt"   description:""`
	UpdatedAt   *gtime.Time `json:"updatedAt"   description:""`
}
