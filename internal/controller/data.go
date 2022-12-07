package controller

import (
	"context"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/service"
)

type cData struct{}

var Data = cData{}

func (c *cData) HeadCard(ctx context.Context, req *backend.DataHeadReq) (res *backend.DataHeadRes, err error) {
	card, err := service.Data().HeadCard(ctx)
	if err != nil {
		return &backend.DataHeadRes{}, err
	}
	return &backend.DataHeadRes{
		TodayOrderCount: card.TodayOrderCount,
		DAU:             card.DAU,
		ConversionRate:  card.ConversionRate,
	}, err
}
