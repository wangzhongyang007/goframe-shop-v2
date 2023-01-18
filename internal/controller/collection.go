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
// Colletion 内容管理
var Colletion = cColletion{}

type cColletion struct{}

func (a *cColletion) Add(ctx context.Context, req *frontend.AddCollectionReq) (res *frontend.AddCollectionRes, err error) {
	g.Dump("req:", req)
	data := model.AddCollectionInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	out, err := service.Colletion().AddCollection(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.AddCollectionRes{Id: out.Id}, nil
}

func (a *cColletion) Delete(ctx context.Context, req *frontend.DeleteCollectionReq) (res *frontend.DeleteCollectionRes, err error) {
	data := model.DeleteCollectionInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	collection, err := service.Colletion().DeleteCollection(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.DeleteCollectionRes{Id: collection.Id}, nil
}
