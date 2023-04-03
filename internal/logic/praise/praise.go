package collection

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

type sPraise struct{}

func init() {
	service.RegisterPraise(New())
}

func New() *sPraise {
	return &sPraise{}
}

func (*sPraise) AddPraise(ctx context.Context, in model.AddPraiseInput) (res *model.AddPraiseOutput, err error) {
	in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
	id, err := dao.PraiseInfo.Ctx(ctx).InsertAndGetId(in)
	if err != nil {
		return &model.AddPraiseOutput{}, err
	}
	return &model.AddPraiseOutput{Id: gconv.Uint(id)}, nil
}

// 兼容处理：优先根据收藏id删除，收藏id为0；再根据对象id和type删除
func (*sPraise) DeletePraise(ctx context.Context, in model.DeletePraiseInput) (res *model.DeletePraiseOutput, err error) {
	//优先根据收藏id删除
	g.Dump("in.Id:", in.Id)
	if in.Id != 0 {
		_, err = dao.PraiseInfo.Ctx(ctx).WherePri(in.Id).Delete()
		if err != nil {
			return nil, err
		}
		return &model.DeletePraiseOutput{Id: gconv.Uint(in.Id)}, nil
	} else {
		//	收藏id为0；再根据对象id和type删除
		in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
		id, err := dao.PraiseInfo.Ctx(ctx).OmitEmpty(). //注意：需要过滤空值
								Where(in).Delete()
		if err != nil {
			return &model.DeletePraiseOutput{}, err
		}
		return &model.DeletePraiseOutput{Id: gconv.Uint(id)}, nil
	}
}

// 列表
// GetList 查询内容列表
func (*sPraise) GetList(ctx context.Context, in model.PraiseListInput) (out *model.PraiseListOutput, err error) {
	//1.获得*gdb.Model对象，方面后续调用
	userId := gconv.Uint(ctx.Value(consts.CtxUserId))
	m := dao.PraiseInfo.Ctx(ctx).Where(dao.PraiseInfo.Columns().Type, in.Type).
		Where(dao.PraiseInfo.Columns().UserId, userId)
	//2. 实例化响应结构体
	out = &model.PraiseListOutput{
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
	out.List = make([]model.PraiseListOutputItem, 0, in.Size)
	//6. 把查询到的结果赋值到响应结构体中
	if in.Type == consts.CollectionTypeGoods {
		if err := listModel.With(model.GoodsItem{}).Scan(&out.List); err != nil {
			return out, err
		}
	} else if in.Type == consts.CollectionTypeArticle {
		if err := listModel.With(model.ArticleItem{}).Scan(&out.List); err != nil {
			return out, err
		}
	}
	return
}

// 抽取获得收藏数量的方法 for 商品详情&文章详情
func PraiseCount(ctx context.Context, objectId uint, collectionType uint8) (count int, err error) {
	condition := g.Map{
		dao.PraiseInfo.Columns().ObjectId: objectId,
		dao.PraiseInfo.Columns().Type:     collectionType,
	}
	count, err = dao.PraiseInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return 0, err
	}
	return
}

// 抽取方法 判断当前用户是否收藏 for 商品详情&文章详情
func CheckIsPraise(ctx context.Context, in model.CheckIsCollectInput) (bool, error) {
	condition := g.Map{
		dao.PraiseInfo.Columns().UserId:   ctx.Value(consts.CtxUserId),
		dao.PraiseInfo.Columns().ObjectId: in.ObjectId,
		dao.PraiseInfo.Columns().Type:     in.Type,
	}
	count, err := dao.PraiseInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return false, err
	}
	if count > 0 {
		return true, nil
	} else {
		return false, nil
	}
}
