package article

import (
	"context"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"

	"github.com/gogf/gf/v2/container/gmap"
	"github.com/gogf/gf/v2/errors/gerror"
)

type sArticle struct{}

func init() {
	service.RegisterArticle(New())
}

func New() *sArticle {
	return &sArticle{}
}

func (s *sArticle) Create(ctx context.Context, in model.ArticleCreateInput) (out model.ArticleCreateOutput, err error) {
	lastInsertID, err := dao.ArticleInfo.Ctx(ctx).Data(in).InsertAndGetId()
	if err != nil {
		return out, err
	}
	return model.ArticleCreateOutput{Id: uint(lastInsertID)}, err
}

// Delete 删除
func (s *sArticle) Delete(ctx context.Context, in model.ArticleDeleteInput) (err error) {
	where := gmap.New()
	where.Set(dao.ArticleInfo.Columns().Id, in.Id)
	if in.IsAdmin == consts.ArticleIsUser {
		where.Set(dao.ArticleInfo.Columns().UserId, in.UserId)
		where.Set(dao.ArticleInfo.Columns().IsAdmin, in.IsAdmin)
	}
	_, err = dao.ArticleInfo.Ctx(ctx).Where(where).Delete()
	if err != nil {
		return err
	}
	return
}

// Update 修改
func (s *sArticle) Update(ctx context.Context, in model.ArticleUpdateInput) error {
	detail, err := service.Article().Detail(ctx, model.ArticleDetailInput{Id: in.Id})
	if err != nil {
		return err
	}
	//前端用户判断修改
	if in.IsAdmin == consts.ArticleIsUser && in.IsAdmin != detail.IsAdmin || detail.UserId != in.UserId {
		return gerror.New(consts.ResourcePermissionFail)
	}
	_, err = dao.ArticleInfo.Ctx(ctx).
		OmitEmpty(). //过滤空值
		Data(in).
		FieldsEx(dao.ArticleInfo.Columns().Id).
		Where(dao.ArticleInfo.Columns().Id, in.Id).
		Update()
	return err
}

// GetList 查询分类列表
func (s *sArticle) GetList(ctx context.Context, in model.ArticleGetListInput) (out *model.ArticleGetListOutput, err error) {
	//1.获得*gdb.Model对象，方面后续调用
	m := dao.ArticleInfo.Ctx(ctx)
	//2. 实例化响应结构体
	out = &model.ArticleGetListOutput{
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
	out.List = make([]model.ArticleGetListOutputItem, 0, in.Size)
	//6. 把查询到的结果赋值到响应结构体中
	if err := listModel.Scan(&out.List); err != nil {
		return out, err
	}
	return
}

// 详情
func (s *sArticle) Detail(ctx context.Context, in model.ArticleDetailInput) (out *model.ArticleDetailOutput, err error) {
	err = dao.ArticleInfo.Ctx(ctx).WithAll().WherePri(in.Id).Scan(&out)
	return
}
