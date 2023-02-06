package cmd

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gcron"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/utility"
	"time"
)

func UserOrderDefaultComments(ctx context.Context) (err error) {
	//每分钟执行一次
	_, err = gcron.Add(ctx, "0 */1 * * * *", func(ctx context.Context) {
		condition := g.Map{
			dao.OrderInfo.Columns().Status: 4,
		}
		model := dao.OrderInfo.Ctx(ctx).Where(condition)
		minTime := utility.TimeStampToDateTime(time.Now().Unix() - consts.UserOrderDefaultCommentsTime)
		count, err := model.Where("updated_at <=?", minTime).Count()
		if err != nil {
			return
		}
		if count > 0 {
			var orderList []entity.OrderInfo
			err = dao.OrderInfo.Ctx(ctx).Where(condition).Scan(&orderList)
			if err != nil {
				return
			}
			for _, order := range orderList {
				//新增评价
				orderGoods := entity.OrderGoodsInfo{}
				err := dao.OrderGoodsInfo.Ctx(ctx).Where(dao.OrderGoodsInfo.Columns().OrderId, order.Id).Scan(&orderGoods)
				if err != nil {
					return
				}
				data := g.Map{
					dao.OrderGoodsCommentsInfo.Columns().OrderId:        order.Id,
					dao.OrderGoodsCommentsInfo.Columns().GoodsId:        orderGoods.GoodsId,
					dao.OrderGoodsCommentsInfo.Columns().GoodsOptionsId: orderGoods.GoodsOptionsId,
					dao.OrderGoodsCommentsInfo.Columns().Content:        consts.UserOrderDefaultComments,
				}
				_, err = dao.OrderGoodsCommentsInfo.Ctx(ctx).Data(data).InsertAndGetId()
				if err != nil {
					return
				}
				//更新订单状态
				in := g.Map{
					dao.OrderInfo.Columns().Status: consts.UserOrderStatus,
				}
				_, err = model.WherePri(order.Id).Data(in).Update()
				if err != nil {
					return
				}
			}
		}
		return
	}, "UserOrderDefaultComments")
	return err
}
