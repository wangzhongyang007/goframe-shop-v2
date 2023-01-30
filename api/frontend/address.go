package frontend

import "github.com/gogf/gf/v2/frame/g"

type CityAddressListReq struct {
	g.Meta `path:"/address/list" tags:"客户端收货地址" method:"post" summary:"客户端省市县区接口"`
}

type CityAddressListRes struct {
	List interface{} `json:"list" description:"列表"`
}
