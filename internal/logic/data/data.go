package data

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
	"goframe-shop-v2/utility"
	"time"
)

type sData struct{}

func init() {
	g.Dump(1)
	service.RegisterData(New())
}

func init() {
	g.Dump(2)
}

func init() {
	g.Dump(3)
}

func New() *sData {
	return &sData{}
}

func (s *sData) HeadCard(ctx context.Context) (out *model.HeadDataOutput, err error) {
	return &model.HeadDataOutput{
		TodayOrderCount: TodayOrderCount(ctx),
		DAU:             utility.RandInt(200),
		ConversionRate:  utility.RandInt(80),
	}, nil
}

// 今日订单数量
func TodayOrderCount(ctx context.Context) (count int) {
	count, err := dao.OrderInfo.Ctx(ctx).
		WhereBetween(dao.OrderInfo.Columns().CreatedAt, gtime.New(time.Now()).StartOfDay(), gtime.New(time.Now()).EndOfDay()).
		Count("id")
	if err != nil {
		return 0
	}
	return
}
