package frontend

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
	"github.com/gogf/gf/v2/util/gmeta"
)

type AddOrderReq struct {
	g.Meta `path:"/add/order" method:"post" tags:"前台订单" summary:"创建订单"`
	//主订单维度
	PayType          int         `json:"pay_type,omitempty"          description:"支付方式 1微信 2支付宝 3云闪付"`
	Remark           string      `json:"remark"           description:"备注"`
	PayAt            *gtime.Time `json:"pay_at,omitempty"            description:"支付时间"`
	ConsigneeName    string      `json:"consignee_name"    description:"收货人姓名"`
	ConsigneePhone   string      `json:"consignee_phone"   description:"收货人手机号"`
	ConsigneeAddress string      `json:"consignee_address" description:"收货人详细地址"`
	Price            int         `json:"price"            description:"订单金额 单位分"`
	CouponPrice      int         `json:"coupon_price"      description:"优惠券金额 单位分"`
	ActualPrice      int         `json:"actual_price"      description:"实际支付金额 单位分"`
	//商品订单维度
	OrderGoodsInfos []*OrderGoodsInfo
}

type OrderGoodsInfo struct {
	gmeta.Meta `orm:"table:order_goods_info"`
	Id         int `json:"id,omitempty"`
	OrderId    int `json:"order_id"`
	GoodsId    int `json:"goods_id"`
	//商品详情
	//GoodsInfo   *goods.BaseGoodsColumns `orm:"with:id=goods_id" json:"goods_info"`
	Count       int    `json:"count"`
	PayType     int    `json:"pay_type"`
	Remark      string `json:"remark"`
	Status      int    `json:"status"`
	Price       int    `json:"price"`
	CouponPrice int    `json:"coupon_price"`
	ActualPrice int    `json:"actual_price"`
	PayAt       string `json:"pay_at,omitempty"`
	//TimeCommon
}
