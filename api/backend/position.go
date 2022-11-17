package backend

import (
	"github.com/gogf/gf/v2/frame/g"
)

type PositionReq struct {
	g.Meta  `path:"/backend/position/add" tags:"Position" method:"post" summary:"You first position api"`
	PicUrl  string `json:"pic_url" v:"required#图片链接不能为空" dc:"图片链接"`
	Name    string `json:"name"    v:"required#名字不能为空" dc:"名字"`
	GoodsId uint   `json:"goods_id"  v:"required#商品id不能为空"  dc:"商品id"`
	Link    string `json:"link"    v:"required#跳转链接不能为空" dc:"跳转链接"`
	Sort    int    `json:"sort"    dc:"排序"`
}

type PositionRes struct {
	PositionId int `json:"positionId"`
}

type PositionDeleteReq struct {
	g.Meta `path:"/backend/position/delete" method:"delete" tags:"轮播图" summary:"删除轮播图接口"`
	Id     uint `v:"min:1#请选择需要删除的轮播图" dc:"轮播图id"`
}
type PositionDeleteRes struct{}

type PositionUpdateReq struct {
	g.Meta  `path:"/backend/position/update/{Id}" method:"post" tags:"轮播图" summary:"修改轮播图接口"`
	Id      uint   `json:"id"      v:"min:1#请选择需要修改的轮播图" dc:"轮播图Id"`
	PicUrl  string `json:"pic_url" v:"required#轮播图图片链接不能为空" dc:"图片链接"`
	Link    string `json:"link"    v:"required#跳转链接不能为空" dc:"跳转链接"`
	Name    string `json:"name"    v:"required#名字不能为空" dc:"名字"`
	GoodsId uint   `json:"goods_id"  v:"required#商品id不能为空"  dc:"商品id"`
	Sort    int    `json:"sort"    dc:"跳转链接"`
}
type PositionUpdateRes struct {
	Id uint `json:"id"`
}
type PositionGetListReq struct {
	g.Meta `path:"/backend/position/list" method:"get" tags:"轮播图" summary:"轮播图列表"`
	Sort   int `json:"sort"   in:"query" dc:"排序类型 默认倒序"`
	CommonPaginationReq
}
type PositionGetListRes struct {
	Data interface{}
}
