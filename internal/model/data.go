package model

// todo 后续优化 简化逻辑 这样写有些冗余
type HeadDataOutput struct {
	TodayOrderCount int `json:"today_order_count"`
	DAU             int `json:"dau"`
	ConversionRate  int `json:"conversion_rate" description:"转化率"`
}
