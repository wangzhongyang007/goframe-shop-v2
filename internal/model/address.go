package model

import (
	"github.com/gogf/gf/v2/frame/g"
	"goframe-shop-v2/api/backend"
)

type AddressBase struct {
	ParentId int    `json:"parentId" description:"父级id"`
	Name     string `json:"name" description:"名称"`
	Status   uint8  `json:"status" description:"状态"`
}

// AddAddressInput 新增地址
type AddAddressInput struct {
	AddressBase
}
type AddAddressOutput struct {
	Id int `json:"id" dc:"id"`
}

// UpdateAddressInput 更新地址
type UpdateAddressInput struct {
	Id int `json:"id" dc:"id"`
	AddressBase
}
type UpdateAddressOutput struct{}

// DeleteAddressInput 删除地址
type DeleteAddressInput struct {
	Id int `json:"id" dc:"id"`
}
type DeleteAddressOutput struct{}

// PageAddressInput 获取地址
type PageAddressInput struct {
	backend.CommonPaginationReq
}
type PageAddressOutput struct {
	backend.CommonPaginationRes
}

// 客户端获取省市县区地址
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
