package model

import "github.com/gogf/gf/v2/frame/g"

// CityAddressListOutput 查询列表结果
type CityAddressListOutput struct {
	List []CityAddressListOutputItem `json:"list" description:"列表"`
}

type CityAddressListOutputItem struct {
	g.Meta   `orm:"table:address_info"`
	Id       int                         `json:"id"`
	Name     string                      `json:"name"`
	Pid      int                         `json:"pid"`
	Status   int                         `json:"status" `
	Children []CityAddressListOutputItem `json:"Children" orm:"with:pid=id"`
}
