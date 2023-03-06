package refund

import (
	"context"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
	"goframe-shop-v2/utility"

	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/util/gconv"
)

type sRefund struct{}

func init() {
	service.RegisterRefund(New())
}

func New() *sRefund {
	return &sRefund{}
}

func (s *sRefund) Create(ctx context.Context, in model.RefundAddInput) (out model.RefundAddOutput, err error) {
	in.UserId = gconv.Int(ctx.Value(consts.CtxUserId))
	in.Number = utility.GetRefundNum()
	in.Status = consts.RefundStatusWait
	lastInsertID, err := dao.RefundInfo.Ctx(ctx).Data(in).InsertAndGetId()
	if err != nil {
		return out, err
	}
	return model.RefundAddOutput{Id: uint(lastInsertID)}, err
}

// GetList 查询分类列表
func (s *sRefund) GetList(ctx context.Context, in model.RefundListInput) (out *model.RefundListOutput, err error) {
	out = &model.RefundListOutput{
		Page: in.Page,
		Size: in.Size,
	}

	m := dao.RefundInfo.Ctx(ctx).Where(g.Map{
		dao.RefundInfo.Columns().UserId: gconv.Int(ctx.Value(consts.CtxUserId)),
	})

	if err = m.Page(in.Page, in.Size).Scan(&out.List); err != nil {
		return nil, err
	}

	if out.Total, err = m.Count(); err != nil {
		return nil, err
	}

	return
}

//详情
func (s *sRefund) Detail(ctx context.Context, in model.RefundDetailInput) (out *model.RefundDetailOutput, err error) {
	err = dao.RefundInfo.Ctx(ctx).
		Where(dao.RefundInfo.Columns().UserId, gconv.Int(ctx.Value(consts.CtxUserId))).
		WithAll().
		WherePri(in.Id).
		Scan(&out)

	return
}
