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

type sCollection struct{}

func init() {
	service.RegisterCollection(New())
}

func New() *sCollection {
	return &sCollection{}
}

func (*sCollection) AddCollection(ctx context.Context, in model.AddCollectionInput) (res *model.AddCollectionOutput, err error) {
	in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
	id, err := dao.CollectionInfo.Ctx(ctx).InsertAndGetId(in)
	if err != nil {
		return &model.AddCollectionOutput{}, err
	}
	return &model.AddCollectionOutput{Id: gconv.Uint(id)}, nil
}

// 兼容处理：优先根据收藏id删除，收藏id为0；再根据对象id和type删除
func (*sCollection) DeleteCollection(ctx context.Context, in model.DeleteCollectionInput) (res *model.DeleteCollectionOutput, err error) {
	//优先根据收藏id删除
	if in.Id != 0 {
		_, err = dao.CollectionInfo.Ctx(ctx).WherePri(in.Id).Delete()
		if err != nil {
			return nil, err
		}
		return &model.DeleteCollectionOutput{Id: gconv.Uint(in.Id)}, nil
	} else {
		//	收藏id为0；再根据对象id和type删除
		in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
		id, err := dao.CollectionInfo.Ctx(ctx).OmitEmpty(). //注意：需要过滤空值
									Where(in).Delete()
		if err != nil {
			return &model.DeleteCollectionOutput{}, err
		}
		return &model.DeleteCollectionOutput{Id: gconv.Uint(id)}, nil
	}
}

// 列表
// GetList 查询内容列表
func (*sCollection) GetList(ctx context.Context, in model.CollectionListInput) (out *model.CollectionListOutput, err error) {
	//1.获得*gdb.Model对象，方面后续调用
	userId := gconv.Uint(ctx.Value(consts.CtxUserId))
	m := dao.CollectionInfo.Ctx(ctx).Where(dao.CollectionInfo.Columns().Type, in.Type).
		Where(dao.CollectionInfo.Columns().UserId, userId)
	//2. 实例化响应结构体
	out = &model.CollectionListOutput{
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
	out.List = make([]model.CollectionListOutputItem, 0, in.Size)
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

func (*sCollection) GeqtList(ctx context.Context, in model.CollectionListInput) (out *model.CollectionListOutput, err error) {
	//1. 定义全局通用的查询语句
	userId := gconv.Uint(ctx.Value(consts.CtxUserId))
	m := dao.CollectionInfo.Ctx(ctx).Where(dao.CollectionInfo.Columns().Type, in.Type).
		Where(dao.CollectionInfo.Columns().UserId, userId)
	//2. 实例化响应结构体
	out = &model.CollectionListOutput{
		Page: in.Page,
		Size: in.Size,
	}
	//3. 翻页查询
	listModel := m.Page(in.Page, in.Size)
	//4. 优先查询count，报错或者无数据则直接返回
	out.Total, err = listModel.Count()
	if err != nil || out.Total == 0 {
		out.List = make([]model.CollectionListOutputItem, 0, 0)
		return out, err
	}
	//5. 延迟初始化list 确定有数据再按期望大小，实例化切片的容量
	out.List = make([]model.CollectionListOutputItem, 0, out.Total)
	//6. 进一步优化：根据传入参数区分查询对应的关联模型
	if in.Type == consts.CollectionTypeGoods {
		if err := listModel.With(model.GoodsItem{}).Scan(&out.List); err != nil {
			return out, err
		}
	} else if in.Type == consts.CollectionTypeArticle {
		if err := listModel.With(model.ArticleItem{}).Scan(&out.List); err != nil {
			return out, err
		}
	} else {
		if err := listModel.WithAll().Scan(&out.List); err != nil {
			return out, err
		}
	}
	return
}

// 抽取获得收藏数量的方法 for 商品详情&文章详情
func CollectionCount(ctx context.Context, objectId uint, collectionType uint8) (count int, err error) {
	condition := g.Map{
		dao.CollectionInfo.Columns().ObjectId: objectId,
		dao.CollectionInfo.Columns().Type:     collectionType,
	}
	count, err = dao.CollectionInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return 0, err
	}
	return
}

// 抽取方法 判断当前用户是否收藏 for 商品详情&文章详情
func CheckIsCollect(ctx context.Context, in model.CheckIsCollectInput) (bool, error) {
	condition := g.Map{
		dao.CollectionInfo.Columns().UserId:   ctx.Value(consts.CtxUserId),
		dao.CollectionInfo.Columns().ObjectId: in.ObjectId,
		dao.CollectionInfo.Columns().Type:     in.Type,
	}
	count, err := dao.CollectionInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return false, err
	}
	if count > 0 {
		return true, nil
	} else {
		return false, nil
	}
}
