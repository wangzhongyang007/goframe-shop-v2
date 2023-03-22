package refund

import (
	"context"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
	"goframe-shop-v2/utility"

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
	//1.获得*gdb.Model对象，方面后续调用
	userId := gconv.Uint(ctx.Value(consts.CtxUserId))
	m := dao.RefundInfo.Ctx(ctx).Where(dao.RefundInfo.Columns().UserId, userId)
	//2. 实例化响应结构体
	out = &model.RefundListOutput{
		Page: in.Page,
		Size: in.Size,
	}
	//3. 分页查询
	listModel := m.Page(in.Page, in.Size)
	//4. 再查询count，判断有无数据
	out.Total, err = m.Count()
	if err != nil || out.Total == 0 {
		return out, err
	}
	//5. 延迟初始化list切片 确定有数据，再按期望大小初始化切片容量
	out.List = make([]model.RefundListOutputItem, 0, in.Size)
	//6. 把查询到的结果赋值到响应结构体中
	if err := listModel.Scan(&out.List); err != nil {
		return out, err
	}
	return
}

// 详情
func (s *sRefund) Detail(ctx context.Context, in model.RefundDetailInput) (out *model.RefundDetailOutput, err error) {
	err = dao.RefundInfo.Ctx(ctx).
		Where(dao.RefundInfo.Columns().UserId, gconv.Int(ctx.Value(consts.CtxUserId))).
		WithAll().
		WherePri(in.Id).
		Scan(&out)

	return
}
