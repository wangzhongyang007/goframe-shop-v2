package controller

import (
	"context"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/service"
)

// 承上启下
// Address 内容管理
var Address = cAddress{}

type cAddress struct{}

func (a *cAddress) List(ctx context.Context, req *frontend.CityAddressListReq) (res *frontend.CityAddressListRes, err error) {
	out, err := service.Address().GetList(ctx)
	return &frontend.CityAddressListRes{List: out.List}, nil
}
