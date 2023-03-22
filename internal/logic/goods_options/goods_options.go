package position

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

type sGoodsOptions struct{}

func init() {
	service.RegisterGoodsOptions(New())
}

func New() *sGoodsOptions {
	return &sGoodsOptions{}
}

func (s *sGoodsOptions) Create(ctx context.Context, in model.GoodsOptionsCreateInput) (out model.GoodsOptionsCreateOutput, err error) {
	lastInsertID, err := dao.GoodsOptionsInfo.Ctx(ctx).Data(in).InsertAndGetId()
	if err != nil {
		return out, err
	}
	return model.GoodsOptionsCreateOutput{Id: uint(lastInsertID)}, err
}

// Delete 删除
func (s *sGoodsOptions) Delete(ctx context.Context, id uint) (err error) {
	_, err = dao.GoodsOptionsInfo.Ctx(ctx).Where(g.Map{
		dao.GoodsOptionsInfo.Columns().Id: id,
	}).Delete()
	if err != nil {
		return err
	}
	return
}

// Update 修改
func (s *sGoodsOptions) Update(ctx context.Context, in model.GoodsOptionsUpdateInput) error {
	_, err := dao.GoodsOptionsInfo.
		Ctx(ctx).
		Data(in).
		FieldsEx(dao.GoodsOptionsInfo.Columns().Id).
		Where(dao.GoodsOptionsInfo.Columns().Id, in.Id).
		Update()
	return err
}

// GetList 查询分类列表
func (s *sGoodsOptions) GetList(ctx context.Context, in model.GoodsOptionsGetListInput) (out *model.GoodsOptionsGetListOutput, err error) {
	//1.获得*gdb.Model对象，方面后续调用
	m := dao.GoodsOptionsInfo.Ctx(ctx)
	//2. 实例化响应结构体
	out = &model.GoodsOptionsGetListOutput{
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
	out.List = make([]model.GoodsOptionsGetListOutputItem, 0, in.Size)
	//6. 把查询到的结果赋值到响应结构体中
	if err := listModel.Scan(&out.List); err != nil {
		return out, err
	}
	return
}
