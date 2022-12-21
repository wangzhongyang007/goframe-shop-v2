package backend

import "github.com/gogf/gf/v2/frame/g"

type DataHeadReq struct {
	g.Meta `path:"/backend/data/head" method:"get" tags:"数据data" desc:"数据大屏的头部信息"`
}

type DataHeadRes struct {
	TodayOrderCount int `json:"today_order_count" desc:"今日订单总数"`
	DAU             int `json:"dau" desc:"今日日活"`
	ConversionRate  int `json:"conversion_rate" desc:"转化率"`
}
