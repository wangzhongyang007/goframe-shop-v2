package position

import (
	"context"
	"github.com/gogf/gf/v2/container/gmap"
	"github.com/gogf/gf/v2/os/gtime"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

type sOrder struct{}

func init() {
	service.RegisterOrder(New())
}

func New() *sOrder {
	return &sOrder{}
}

func (s *sOrder) List(ctx context.Context, in model.OrderListInput) (out *model.OrderListOutput, err error) {
	out = &model.OrderListOutput{
		Page: in.Page,
		Size: in.Size,
	}

	whereCondition := s.orderListCondition(in)
	m := dao.OrderInfo.Ctx(ctx).Where(whereCondition)

	if err = m.Page(in.Page, in.Size).Scan(&out.List); err != nil {
		return nil, err
	}

	if out.Total, err = m.Count(); err != nil {
		return nil, err
	}

	return
}

func (s *sOrder) orderListCondition(in model.OrderListInput) *gmap.Map {
	m := gmap.New()

	if in.Number != "" {
		m.Set(dao.OrderInfo.Columns().Number+" like ", "%"+in.Number+"%")
	}

	if in.UserId != 0 {
		m.Set(dao.OrderInfo.Columns().UserId, in.UserId)
	}

	if in.PayType != 0 {
		m.Set(dao.OrderInfo.Columns().PayType, in.PayType)
	}

	if in.PayAtGte != "" {
		m.Set(dao.OrderInfo.Columns().PayAt+" >= ", gtime.New(in.PayAtGte).StartOfDay())
	}

	if in.PayAtLte != "" {
		m.Set(dao.OrderInfo.Columns().PayAt+" <= ", gtime.New(in.PayAtLte).EndOfDay())
	}

	if in.Status != 0 {
		m.Set(dao.OrderInfo.Columns().Status, in.Status)
	}

	if in.ConsigneePhone != "" {
		m.Set(dao.OrderInfo.Columns().ConsigneePhone+" like ", "%"+in.ConsigneePhone+"%")
	}

	if in.PriceGte != 0 {
		m.Set(dao.OrderInfo.Columns().Price+" >= ", in.PriceGte)
	}

	if in.PriceLte != 0 {
		m.Set(dao.OrderInfo.Columns().Price+" <= ", in.PriceLte)
	}

	if in.DateGte != "" {
		m.Set(dao.OrderInfo.Columns().CreatedAt+" >= ", gtime.New(in.DateGte).StartOfDay())
	}

	if in.DateLte != "" {
		m.Set(dao.OrderInfo.Columns().CreatedAt+" <= ", gtime.New(in.DateLte).EndOfDay())
	}

	return m
}

func (s *sOrder) Detail(ctx context.Context, in model.OrderDetailInput) (out *model.OrderDetailOutput, err error) {
	err = dao.OrderInfo.Ctx(ctx).WithAll().WherePri(in.Id).Scan(&out)

	return
}
