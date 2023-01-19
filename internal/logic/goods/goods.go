package position

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/internal/service"
)

type sGoods struct{}

func init() {
	service.RegisterGoods(New())
}

func New() *sGoods {
	return &sGoods{}
}

func (s *sGoods) Create(ctx context.Context, in model.GoodsCreateInput) (out model.GoodsCreateOutput, err error) {
	lastInsertID, err := dao.GoodsInfo.Ctx(ctx).Data(in).InsertAndGetId()
	if err != nil {
		return out, err
	}
	return model.GoodsCreateOutput{Id: uint(lastInsertID)}, err
}

// Delete 删除
func (s *sGoods) Delete(ctx context.Context, id uint) (err error) {
	_, err = dao.GoodsInfo.Ctx(ctx).Where(g.Map{
		dao.GoodsInfo.Columns().Id: id,
	}).Delete()
	if err != nil {
		return err
	}
	return
}

// Update 修改
func (s *sGoods) Update(ctx context.Context, in model.GoodsUpdateInput) error {
	_, err := dao.GoodsInfo.
		Ctx(ctx).
		Data(in).
		FieldsEx(dao.GoodsInfo.Columns().Id).
		Where(dao.GoodsInfo.Columns().Id, in.Id).
		Update()
	return err
}

// GetList 查询分类列表
func (s *sGoods) GetList(ctx context.Context, in model.GoodsGetListInput) (out *model.GoodsGetListOutput, err error) {
	var (
		m = dao.GoodsInfo.Ctx(ctx)
	)
	out = &model.GoodsGetListOutput{
		Page: in.Page,
		Size: in.Size,
	}

	// 分页查询
	listModel := m.Page(in.Page, in.Size)

	// 执行查询
	var list []*entity.GoodsInfo
	if err := listModel.Scan(&list); err != nil {
		return out, err
	}
	// 没有数据
	if len(list) == 0 {
		return out, nil
	}
	out.Total, err = m.Count()
	if err != nil {
		return out, err
	}
	if err := listModel.Scan(&out.List); err != nil {
		return out, err
	}
	return
}

// 商品详情
func (*sGoods) Detail(ctx context.Context, in model.GoodsDetailInput) (out model.GoodsDetailOutput, err error) {
	err = dao.GoodsInfo.Ctx(ctx).WithAll().WherePri(in.Id).Scan(&out)
	if err != nil {
		return model.GoodsDetailOutput{}, err
	}
	return
}
