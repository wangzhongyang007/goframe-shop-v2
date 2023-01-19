package controller

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

// 承上启下
// Praise 内容管理
var Praise = cPraise{}

type cPraise struct{}

func (a *cPraise) Add(ctx context.Context, req *frontend.AddPraiseReq) (res *frontend.AddPraiseRes, err error) {
	data := model.AddPraiseInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	out, err := service.Praise().AddPraise(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.AddPraiseRes{Id: out.Id}, nil
}

func (a *cPraise) Delete(ctx context.Context, req *frontend.DeletePraiseReq) (res *frontend.DeletePraiseRes, err error) {
	data := model.DeletePraiseInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	g.Dump("data:", data)
	collection, err := service.Praise().DeletePraise(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.DeletePraiseRes{Id: collection.Id}, nil
}

func (a *cPraise) List(ctx context.Context, req *frontend.ListPraiseReq) (res *frontend.ListPraiseRes, err error) {
	getListRes, err := service.Praise().GetList(ctx, model.PraiseListInput{
		Page: req.Page,
		Size: req.Size,
		Type: req.Type,
	})
	if err != nil {
		return nil, err
	}

	return &frontend.ListPraiseRes{List: getListRes.List,
		Page:  getListRes.Page,
		Size:  getListRes.Size,
		Total: getListRes.Total}, nil
}
