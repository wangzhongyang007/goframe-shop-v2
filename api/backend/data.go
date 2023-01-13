package backend

import "github.com/gogf/gf/v2/frame/g"

type DataHeadReq struct {
	g.Meta `path:"/data/head/" method:"get" tags:"data" summary:"数据大屏的头部卡片"`
}

type DataHeadRes struct {
	TodayOrderCount int `json:"today_order_count" description:"今日订单量"`
	DAU             int `json:"dau" desc:"DAU"`
	ConversionRate  int `json:"conversion_rate" description:"转化率"`
}

type DataEChartsReq struct {
	g.Meta `path:"/data/echarts/" method:"get" tags:"data" summary:"数据大屏的echarts"`
}

type DataEChartsRes struct {
	OrderTotal           []int `json:"order_total" desc:"订单量"`
	SalePriceTotal       []int `json:"sale_price_total" desc:"销售价格"`
	ConsumptionPerPerson []int `json:"consumption_per_person" desc:"人均消费"`
	NewOrder             []int `json:"new_order" desc:"新增订单"`
}
