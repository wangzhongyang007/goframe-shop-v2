package model

type HeadDataOutput struct {
	TodayOrderCount int `json:"today_order_count"`
	DAU             int `json:"dau"`
	ConversionRate  int `json:"conversion_rate" description:"转化率"`
}

type EchartsOutput struct {
	OrderTotal           []int `json:"order_total" desc:"订单量"`
	SalePriceTotal       []int `json:"sale_price_total" desc:"销售价格"`
	ConsumptionPerPerson []int `json:"consumption_per_person" desc:"人均消费"`
	NewOrder             []int `json:"new_order" desc:"新增订单"`
}

type TodayTotal struct {
	Today string `json:"today"`
	Total int    `json:"total"`
}
