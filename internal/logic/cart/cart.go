package cart

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/internal/service"
)

type sCart struct {
}

func init() {
	service.RegisterCart(New())
}

func New() *sCart {
	return &sCart{}
}

func (s *sCart) Add(ctx context.Context, in model.AddCartInput) (out model.AddCartOutput, err error) {
	in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
	//获取当前用户id
	condition := g.Map{
		dao.CartInfo.Columns().UserId:         in.UserId,
		dao.CartInfo.Columns().GoodsOptionsId: in.GoodsOptionsId,
	}
	count, err := dao.CartInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return model.AddCartOutput{}, err
	}
	//存在则更新 否则新增
	if count == 0 {
		id, err := dao.CartInfo.Ctx(ctx).Data(in).InsertAndGetId()
		if err != nil {
			return model.AddCartOutput{}, err
		}
		return model.AddCartOutput{Id: uint(id)}, nil
	}
	var cart = entity.CartInfo{}
	err = dao.CartInfo.Ctx(ctx).Where(condition).Scan(&cart)
	if err != nil {
		return model.AddCartOutput{}, err
	}
	_, err = dao.CartInfo.Ctx(ctx).Data(dao.CartInfo.Columns().Count, cart.Count+in.Count).WherePri(cart.Id).Update()
	if err != nil {
		return model.AddCartOutput{}, err
	}
	return model.AddCartOutput{Id: uint(cart.Id)}, nil
}

func (s *sCart) Delete(ctx context.Context, in model.DeleteCartInput) (out model.DeleteCartOutput, err error) {
	_, err = dao.CartInfo.Ctx(ctx).WherePri(in.Id).Delete()
	if err != nil {
		return model.DeleteCartOutput{}, err
	}
	return model.DeleteCartOutput{Id: in.Id}, nil
}

func (s *sCart) List(ctx context.Context, in model.ListCartInput) (out *model.ListCartOutput, err error) {
	var (
		m = dao.CartInfo.Ctx(ctx)
	)
	out = &model.ListCartOutput{
		Page: in.Page,
		Size: in.Size,
		List: []model.ListCartBase{}, //数据为空时返回空数组 而不是null
	}
	// 翻页查询 当前用户
	listModel := m.Page(in.Page, in.Size).Where(dao.CartInfo.Columns().UserId, ctx.Value(consts.CtxUserId))
	out.Total, err = listModel.Count()
	if err != nil {
		return out, err
	}
	if out.Total == 0 {
		return out, err
	}
	err = listModel.WithAll().Scan(&out.List)
	if err != nil {
		return out, err
	}
	return
}
