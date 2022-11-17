package controller

import (
	"context"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

//承上启下  mvc
// Position 内容管理
var Position = cPosition{}

type cPosition struct{}

func (a *cPosition) Create(ctx context.Context, req *backend.PositionReq) (res *backend.PositionRes, err error) {
	out, err := service.Position().Create(ctx, model.PositionCreateInput{
		PositionCreateUpdateBase: model.PositionCreateUpdateBase{
			PicUrl:  req.PicUrl,
			Link:    req.Link,
			Sort:    req.Sort,
			GoodsId: req.GoodsId,
			Name:    req.Name,
		},
	})
	if err != nil {
		return nil, err
	}
	return &backend.PositionRes{PositionId: out.PositionId}, nil
}

func (a *cPosition) Delete(ctx context.Context, req *backend.PositionDeleteReq) (res *backend.PositionDeleteRes, err error) {
	err = service.Position().Delete(ctx, req.Id)
	return
}

func (a *cPosition) Update(ctx context.Context, req *backend.PositionUpdateReq) (res *backend.PositionUpdateRes, err error) {
	err = service.Position().Update(ctx, model.PositionUpdateInput{
		Id: req.Id,
		PositionCreateUpdateBase: model.PositionCreateUpdateBase{
			PicUrl:  req.PicUrl,
			Link:    req.Link,
			Sort:    req.Sort,
			GoodsId: req.GoodsId,
			Name:    req.Name,
		},
	})
	return &backend.PositionUpdateRes{Id: req.Id}, nil
}

// Index Position list
func (a *cPosition) List(ctx context.Context, req *backend.PositionGetListReq) (res *backend.PositionGetListRes, err error) {
	//req.Type = consts.ContentTypePosition
	getListRes, err := service.Position().GetList(ctx, model.PositionGetListInput{
		Page: req.Page,
		Size: req.Size,
		Sort: req.Sort,
	})
	if err != nil {
		return nil, err
	}
	return &backend.PositionGetListRes{getListRes}, nil
}
