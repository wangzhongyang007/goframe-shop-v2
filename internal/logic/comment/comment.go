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

type sComment struct{}

func init() {
	service.RegisterComment(New())
}

func New() *sComment {
	return &sComment{}
}

func (*sComment) AddComment(ctx context.Context, in model.AddCommentInput) (res *model.AddCommentOutput, err error) {
	in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
	id, err := dao.CommentInfo.Ctx(ctx).InsertAndGetId(in)
	if err != nil {
		return &model.AddCommentOutput{}, err
	}
	return &model.AddCommentOutput{Id: gconv.Uint(id)}, nil
}

// 兼容处理：优先根据收藏id删除，收藏id为0；再根据对象id和type删除
func (*sComment) DeleteComment(ctx context.Context, in model.DeleteCommentInput) (res *model.DeleteCommentOutput, err error) {
	condition := g.Map{
		dao.CommentInfo.Columns().Id:     in.Id,
		dao.CommentInfo.Columns().UserId: ctx.Value(consts.CtxUserId),
	}
	_, err = dao.CommentInfo.Ctx(ctx).Where(condition).Delete()
	if err != nil {
		return nil, err
	}
	return &model.DeleteCommentOutput{Id: gconv.Uint(in.Id)}, nil
}

// GetList 查询内容列表 TODO:评论列表的查询逻辑处理按uid查.应该还要加按parent_id查,
func (*sComment) GetList(ctx context.Context, in model.CommentListInput) (out *model.CommentListOutput, err error) {
	//1.获得*gdb.Model对象，方面后续调用
	userId := gconv.Uint(ctx.Value(consts.CtxUserId))
	m := dao.CommentInfo.Ctx(ctx).Where(dao.CommentInfo.Columns().Type, in.Type).
		Where(dao.CommentInfo.Columns().UserId, userId)
	//2. 实例化响应结构体
	out = &model.CommentListOutput{
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
	out.List = make([]model.CommentListOutputItem, 0, in.Size)
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
func CommentCount(ctx context.Context, objectId uint, collectionType uint8) (count int, err error) {
	condition := g.Map{
		dao.CommentInfo.Columns().ObjectId: objectId,
		dao.CommentInfo.Columns().Type:     collectionType,
	}
	count, err = dao.CommentInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return 0, err
	}
	return
}

// 抽取方法 判断当前用户是否收藏 for 商品详情&文章详情
func CheckIsComment(ctx context.Context, in model.CheckIsCollectInput) (bool, error) {
	condition := g.Map{
		dao.CommentInfo.Columns().UserId:   ctx.Value(consts.CtxUserId),
		dao.CommentInfo.Columns().ObjectId: in.ObjectId,
		dao.CommentInfo.Columns().Type:     in.Type,
	}
	count, err := dao.CommentInfo.Ctx(ctx).Where(condition).Count()
	if err != nil {
		return false, err
	}
	if count > 0 {
		return true, nil
	} else {
		return false, nil
	}
}
