package frontend

import (
	"context"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"

	"github.com/gogf/gf/v2/util/gconv"
)

// Refund 管理
var Refund = cRefund{}

type cRefund struct{}

// 下单
func (c *cRefund) Add(ctx context.Context, req *frontend.RefundAddReq) (res *frontend.RefundAddRes, err error) {
	refundAddInput := model.RefundAddInput{}
	//注意：这里要用scan 而不是struct
	if err = gconv.Scan(req, &refundAddInput); err != nil {
		return nil, err
	}

	out, err := service.Refund().Create(ctx, refundAddInput)
	if err != nil {
		return nil, err
	}

	return &frontend.RefundAddRes{
		Id: out.Id,
	}, err
}

func (c *cRefund) List(ctx context.Context, req *frontend.RefundGetListCommonReq) (res *frontend.RefundGetListCommonRes, err error) {
	listInput := model.RefundListInput{}
	if err = gconv.Struct(req, &listInput); err != nil {
		return nil, err
	}

	orderListOutput, err := service.Refund().GetList(ctx, listInput)
	if err != nil {
		return nil, err
	}

	return &frontend.RefundGetListCommonRes{
		List:  orderListOutput.List,
		Page:  orderListOutput.Page,
		Size:  orderListOutput.Size,
		Total: orderListOutput.Total,
	}, err
}

func (c *cRefund) Detail(ctx context.Context, req *frontend.RefundDetailReq) (res *frontend.RefundDetailRes, err error) {
	detail, err := service.Refund().Detail(ctx, model.RefundDetailInput{
		Id: req.Id,
	})

	if err != nil {
		return nil, err
	}

	res = &frontend.RefundDetailRes{}
	err = gconv.Struct(detail, res)

	return res, err
}
