package controller

import (
	"context"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

var OrderGoodsComments = cOrderGoodsComments{}

type cOrderGoodsComments struct{}

func (c *cOrderGoodsComments) Add(ctx context.Context, req *frontend.AddOrderGoodsCommentsReq) (res *frontend.AddOrderGoodsCommentsRes, err error) {
	in := model.AddOrderGoodsCommentsInput{}
	err = gconv.Struct(req, &in)
	if err != nil {
		return nil, err
	}
	add, err := service.OrderGoodsComments().Add(ctx, in)
	if err != nil {
		return nil, err
	}
	return &frontend.AddOrderGoodsCommentsRes{
		Id: add.Id,
	}, nil

}

func (c *cOrderGoodsComments) Delete(ctx context.Context, req *frontend.DelOrderGoodsCommentsReq) (res *frontend.DelOrderGoodsCommentsRes, err error) {
	out, err := service.OrderGoodsComments().Delete(ctx, model.DelOrderGoodsCommentsInput{Id: req.Id})
	if err != nil {
		return nil, err
	}
	return &frontend.DelOrderGoodsCommentsRes{Id: out.Id}, nil
}
