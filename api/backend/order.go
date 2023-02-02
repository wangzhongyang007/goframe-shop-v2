package backend

import (
	"github.com/gogf/gf/v2/frame/g"
)

type OrderListReq struct {
	g.Meta         `path:"/order/list" method:"get" tags:"订单" summary:"订单列表接口"`
	Number         string `json:"number"           dc:"订单编号"`
	UserId         int    `json:"userId"           dc:"用户id"`
	PayType        int    `json:"payType"          dc:"支付方式 1微信 2支付宝 3云闪付"`
	PayAt          string `json:"payAt"            dc:"支付时间"`
	Status         int    `json:"status"           dc:"订单状态： 1待支付 2已支付待发货 3已发货 4已收货待评价"`
	ConsigneePhone string `json:"consigneePhone"   dc:"收货人手机号"`
	Price          int    `json:"price"            dc:"订单金额 单位分"`
	Date           string `json:"date"            dc:"創建时间"`
}
type OrderListCommonRes struct {
	List  interface{} `json:"list" dc:"列表"`
	Page  int         `json:"page" dc:"分页码"`
	Size  int         `json:"size" dc:"分页数量"`
	Total int         `json:"total" dc:"数据总数"`
}

type OrderInfoReq struct {
	g.Meta `path:"/order/info" method:"get" tags:"订单" summary:"订单詳情"`
}
type OrderInfoRes struct {
	Info      interface{} `json:"info" dc:"订单详情"`
	GoodsInfo interface{} `json:"goods_info" dc:"订单商品数据"`
}
