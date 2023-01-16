package backend

import "github.com/gogf/gf/v2/frame/g"

type GoodsOptionsReq struct {
	g.Meta `path:"/goods/options/add" tags:"商品规格" method:"post" summary:"添加商品规格"`
	GoodsOptionsCommonAddUpdate
}

type GoodsOptionsCommonAddUpdate struct {
	GoodsId uint   `json:"goods_id" description:"主商品id"`
	PicUrl  string `json:"pic_url"  description:"图片"`
	Name    string `json:"name"     description:"商品规格名称" v:"required#名称必传"`
	Price   int    `json:"price"    description:"价格 单位分" v:"required#价格必传"`
	Brand   string `json:"brand"    description:"品牌" v:"max-length:30#品牌名称最大30个字"`
	Stock   int    `json:"stock"    description:"库存"`
}

type GoodsOptionsRes struct {
	Id uint `json:"id"`
}

type GoodsOptionsDeleteReq struct {
	g.Meta `path:"/goods/options/delete" method:"delete" tags:"商品规格" summary:"删除商品规格接口"`
	Id     uint `v:"min:1#请选择需要删除的商品规格" dc:"商品规格id"`
}
type GoodsOptionsDeleteRes struct{}

type GoodsOptionsUpdateReq struct {
	g.Meta `path:"/goods/options/update/" method:"post" tags:"商品规格" summary:"修改商品规格接口"`
	Id     uint `json:"id"      v:"min:1#请选择需要修改的商品规格" dc:"商品规格Id"`
	GoodsOptionsCommonAddUpdate
}
type GoodsOptionsUpdateRes struct {
	Id uint `json:"id"`
}
type GoodsOptionsGetListCommonReq struct {
	g.Meta `path:"/goods/options/list" method:"get" tags:"商品规格" summary:"商品规格列表接口"`
	CommonPaginationReq
}
type GoodsOptionsGetListCommonRes struct {
	List  interface{} `json:"list" description:"列表"`
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
}
