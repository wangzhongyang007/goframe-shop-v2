package data

import (
	"context"
	"fmt"
	"github.com/gogf/gf/v2/os/gtime"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
	"goframe-shop-v2/utility"
	"time"
)

type sData struct{}

func init() {
	service.RegisterData(New())
}

func New() *sData {
	return &sData{}
}

func (s *sData) HeadCard(ctx context.Context) (out *model.HeadDataOutput, err error) {
	return &model.HeadDataOutput{
		TodayOrderCount: TodayOrderCount(ctx),
		DAU:             utility.RandInt(200),
		ConversionRate:  utility.RandInt(80),
	}, nil
}

// 今日订单数量
func TodayOrderCount(ctx context.Context) (count int) {
	count, err := dao.OrderInfo.Ctx(ctx).
		WhereBetween(dao.OrderInfo.Columns().CreatedAt, gtime.New(time.Now()).StartOfDay(), gtime.New(time.Now()).EndOfDay()).
		Count("id")
	if err != nil {
		return 0
	}
	return
}

func (s *sData) Echarts(ctx context.Context) (out *model.EchartsOutput, err error) {
	return &model.EchartsOutput{
		OrderTotal:           OrderTotal(ctx),
		SalePriceTotal:       SalePriceTotalRecentDays(ctx),
		ConsumptionPerPerson: OrderTotal(ctx),
		NewOrder:             OrderTotal(ctx), //新增订单和今日订单一致
	}, nil
}

//select date_format(created_at, '%Y-%m-%d') today, count(*) as cnt from order_info group by today
/**
gf官方示例：
// SELECT COUNT(*) total,age FROM `user` GROUP BY age
db.Model("user").Fields("COUNT(*) total,age").Group("age").All()
*/
func OrderTotal(ctx context.Context) (counts []int) {
	counts = []int{0, 0, 0, 0, 0, 0, 0}
	recent7Dates := utility.GetRecent7Date()
	TodayTotals := []model.TodayTotal{}
	//只取最近7天
	err := dao.OrderInfo.Ctx(ctx).
		Where(dao.OrderInfo.Columns().CreatedAt+" >= ", utility.GetBefore7Date()).
		Fields("count(*) total,date_format(created_at, '%Y-%m-%d') today").
		Group("today").
		Scan(&TodayTotals)
	fmt.Printf("result:%v", TodayTotals)
	for i, date := range recent7Dates {
		for _, todayTotal := range TodayTotals {
			if date == todayTotal.Today {
				counts[i] = todayTotal.Total
			}
		}
	}
	if err != nil {
		return counts
	}
	return
}

func SalePriceTotalRecentDays(ctx context.Context) (totals []int) {
	totals = []int{0, 0, 0, 0, 0, 0, 0}
	recent7Dates := utility.GetRecent7Date()
	TodayTotals := []model.TodayTotal{}
	//只取最近7天
	err := dao.OrderInfo.Ctx(ctx).Where(dao.OrderInfo.Columns().CreatedAt+" >= ", utility.GetBefore7Date()).Fields("sum(actual_price) total,date_format(created_at, '%Y-%m-%d') today").Group("today").Scan(&TodayTotals)
	fmt.Printf("result:%v", TodayTotals)
	for i, date := range recent7Dates {
		for _, todayTotal := range TodayTotals {
			if date == todayTotal.Today {
				totals[i] = todayTotal.Total
			}
		}
	}
	if err != nil {
		return totals
	}
	return
}
