package controller

import (
	"context"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

var Address = cAddress{}

type cAddress struct{}

func (*cAddress) Add(ctx context.Context, req *backend.AddAddressReq) (res *backend.AddAddressRes, err error) {
	out, err := service.Address().Add(ctx, model.AddAddressInput{
		AddressBase: model.AddressBase{
			ParentId: req.ParentId,
			Name:     req.Name,
			Status:   req.Status,
		},
	})
	if err != nil {
		return nil, err
	}

	return &backend.AddAddressRes{Id: out.Id}, nil
}

func (*cAddress) Update(ctx context.Context, req *backend.UpdateAddressReq) (res *backend.UpdateAddressRes, err error) {
	if err = service.Address().Update(ctx, model.UpdateAddressInput{
		Id: req.Id,
		AddressBase: model.AddressBase{
			ParentId: req.ParentId,
			Name:     req.Name,
			Status:   req.Status,
		},
	}); err != nil {

		return nil, err
	}

	return nil, nil
}

func (*cAddress) Delete(ctx context.Context, req *backend.DeleteAddressReq) (res *backend.DeleteAddressRes, err error) {
	if err = service.Address().Delete(ctx, req.Id); err != nil {
		return nil, err
	}

	return nil, nil
}

func (*cAddress) Page(ctx context.Context, req *backend.PageAddressReq) (res *backend.PageAddressRes, err error) {
	out, err := service.Address().Page(ctx, model.PageAddressInput{
		CommonPaginationReq: backend.CommonPaginationReq{
			Page: req.Page,
			Size: req.Size,
		},
	})
	if err != nil {
		return nil, err
	}

	return &backend.PageAddressRes{
		CommonPaginationRes: backend.CommonPaginationRes{
			Page:  out.Page,
			Size:  out.Size,
			Total: out.Total,
			List:  out.List,
		},
	}, nil
}

// 客户端获取省市县区地址
func (a *cAddress) CityList(ctx context.Context, req *backend.CityAddressListReq) (res *backend.CityAddressListRes, err error) {
	out, err := service.Address().GetCityList(ctx)
	return &backend.CityAddressListRes{List: out.List}, nil
}
