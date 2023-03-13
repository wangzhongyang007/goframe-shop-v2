package stock

import (
	"context"
	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/errors/gerror"
	"github.com/gogf/gf/v2/frame/g"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/internal/service"
)

//1. 库存问题 抽取方法 定义3个方法，分别由以下3种技术实现： mysql 、redis 、lua脚本 @wolf兄
// - internal logic层 controller层可以调用不同技术实现的方法，实现解耦
// - gredis
// - lua脚本

type sStock struct {
}

func init() {
	service.RegisterStock(New())
}

func New() *sStock {
	return &sStock{}
}

func (s *sStock) DecrementWithSql(ctx context.Context, in model.DecStockInput) (err error) {
	var goodsOpt entity.GoodsOptionsInfo
	err = dao.GoodsOptionsInfo.Ctx(ctx).WherePri(in.GoodsOptionsId).Scan(&goodsOpt)
	if err != nil {
		return err
	}
	if goodsOpt.Stock <= 0 {
		return gerror.New("商品库存不足")
	}
	err = g.DB().Transaction(ctx, func(ctx context.Context, tx *gdb.TX) error {
		//库存大于0 商品减少库存
		_, err2 := dao.GoodsInfo.Ctx(ctx).WherePri(in.GoodsId).WhereGT(dao.GoodsInfo.Columns().Stock, 0).
			Decrement(dao.GoodsInfo.Columns().Stock, in.Number)
		if err2 != nil {
			return err
		}
		//库存大于0 商品规格减少库存
		_, err3 := dao.GoodsOptionsInfo.Ctx(ctx).WherePri(in.GoodsOptionsId).WhereGT(dao.GoodsOptionsInfo.Columns().Stock, 0).
			Decrement(dao.GoodsOptionsInfo.Columns().Stock, in.Number)
		if err3 != nil {
			return err
		}
		return nil
	})
	return
}

func (s *sStock) DecrementWithRedis(ctx context.Context, in model.DecStockInput) error {
	return nil
}
