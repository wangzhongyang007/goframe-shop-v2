package collection

import (
	"context"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

type sColletion struct{}

func init() {
	service.RegisterColletion(New())
}

func New() *sColletion {
	return &sColletion{}
}

func (*sColletion) AddCollection(ctx context.Context, in model.AddCollectionInput) (res *model.AddCollectionOutput, err error) {
	in.UserId = gconv.Uint(ctx.Value(consts.CtxUserId))
	id, err := dao.CollectionInfo.Ctx(ctx).InsertAndGetId(in)
	if err != nil {
		return &model.AddCollectionOutput{}, err
	}
	return &model.AddCollectionOutput{Id: gconv.Uint(id)}, nil
}

// 兼容处理：优先根据收藏id删除，收藏id为0；再根据对象id和type删除
func (*sColletion) DeleteCollection(ctx context.Context, in model.DeleteCollectionInput) (res *model.DeleteCollectionOutput, err error) {
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
