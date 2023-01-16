package controller

import (
	"context"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

// 承上启下
// GoodsOptions 内容管理
var GoodsOptions = cGoodsOptions{}

type cGoodsOptions struct{}

func (a *cGoodsOptions) Create(ctx context.Context, req *backend.GoodsOptionsReq) (res *backend.GoodsOptionsRes, err error) {
	data := model.GoodsOptionsCreateInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	out, err := service.GoodsOptions().Create(ctx, data)
	if err != nil {
		return nil, err
	}
	return &backend.GoodsOptionsRes{Id: out.Id}, nil
}

func (a *cGoodsOptions) Delete(ctx context.Context, req *backend.GoodsOptionsDeleteReq) (res *backend.GoodsOptionsDeleteRes, err error) {
	err = service.GoodsOptions().Delete(ctx, req.Id)
	return
}

func (a *cGoodsOptions) Update(ctx context.Context, req *backend.GoodsOptionsUpdateReq) (res *backend.GoodsOptionsUpdateRes, err error) {
	data := model.GoodsOptionsUpdateInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	err = service.GoodsOptions().Update(ctx, data)
	return &backend.GoodsOptionsUpdateRes{Id: req.Id}, nil
}

func (a *cGoodsOptions) List(ctx context.Context, req *backend.GoodsOptionsGetListCommonReq) (res *backend.GoodsOptionsGetListCommonRes, err error) {
	getListRes, err := service.GoodsOptions().GetList(ctx, model.GoodsOptionsGetListInput{
		Page: req.Page,
		Size: req.Size,
	})
	if err != nil {
		return nil, err
	}
	return &backend.GoodsOptionsGetListCommonRes{List: getListRes.List,
		Page:  getListRes.Page,
		Size:  getListRes.Size,
		Total: getListRes.Total}, nil
}
