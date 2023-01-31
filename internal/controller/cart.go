package controller

import (
	"context"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

var Cart = cCart{}

type cCart struct{}

func (a *cCart) Add(ctx context.Context, req *frontend.AddCartReq) (res *frontend.AddCartRes, err error) {
	data := model.AddCartInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	out, err := service.Cart().Add(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.AddCartRes{Id: out.Id}, nil
}

func (a *cCart) Delete(ctx context.Context, req *frontend.DeleteCartReq) (res *frontend.DeleteCartRes, err error) {
	out, err := service.Cart().Delete(ctx, model.DeleteCartInput{Id: req.Id})
	if err != nil {
		return nil, err
	}
	return &frontend.DeleteCartRes{Id: out.Id}, nil
}

func (a *cCart) List(ctx context.Context, req *frontend.ListCartReq) (res *frontend.ListCartRes, err error) {
	out, err := service.Cart().List(ctx, model.ListCartInput{
		Page: req.Page,
		Size: req.Size,
	})
	if err != nil {
		return nil, err
	}
	data := &frontend.ListCartRes{}
	err = gconv.Struct(out, &data)
	if err != nil {
		return nil, err
	}
	return data, nil
}
