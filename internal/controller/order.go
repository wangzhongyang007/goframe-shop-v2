package controller

import (
	"context"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

// Order 订单管理
var Order = cOrder{}

type cOrder struct{}

// 下单
func (c *cOrder) Add(ctx context.Context, req *frontend.AddOrderReq) (res *frontend.AddOrderRes, err error) {
	orderAddInput := model.OrderAddInput{}
	//注意：这里要用scan 而不是struct
	if err = gconv.Scan(req, &orderAddInput); err != nil {
		return nil, err
	}

	addRes, err := service.Order().Add(ctx, orderAddInput)
	if err != nil {
		return nil, err
	}

	return &frontend.AddOrderRes{
		Id: addRes.Id,
	}, err
}

func (c *cOrder) List(ctx context.Context, req *backend.OrderListReq) (res *backend.OrderListRes, err error) {
	orderListInput := model.OrderListInput{}
	if err = gconv.Struct(req, &orderListInput); err != nil {
		return nil, err
	}

	orderListOutput, err := service.Order().List(ctx, orderListInput)
	if err != nil {
		return nil, err
	}

	return &backend.OrderListRes{
		backend.CommonPaginationRes{
			List:  orderListOutput.List,
			Total: orderListOutput.Total,
			Page:  orderListOutput.Page,
			Size:  orderListOutput.Size,
		},
	}, err
}

func (c *cOrder) Detail(ctx context.Context, req *backend.OrderDetailReq) (res *backend.OrderDetailRes, err error) {
	detail, err := service.Order().Detail(ctx, model.OrderDetailInput{
		Id: req.Id,
	})

	if err != nil {
		return nil, err
	}

	res = &backend.OrderDetailRes{}
	err = gconv.Struct(detail, res)

	return res, err
}
