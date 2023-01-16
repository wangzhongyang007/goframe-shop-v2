package backend

import "github.com/gogf/gf/v2/frame/g"

type GoodsReq struct {
	g.Meta `path:"/goods/add" tags:"商品" method:"post" summary:"添加商品"`
	GoodsCommonAddUpdate
}

type GoodsCommonAddUpdate struct {
	PicUrl           string `json:"pic_url"           description:"图片"`
	Name             string `json:"name"             description:"商品名称" v:"required#名称必传"`
	Price            int    `json:"price"            description:"价格 单位分" v:"required#价格必传"`
	Level1CategoryId uint   `json:"level1_category_id" description:"1级分类id"`
	Level2CategoryId uint   `json:"level2_category_id" description:"2级分类id"`
	Level3CategoryId uint   `json:"level3_category_id" description:"3级分类id"`
	Brand            string `json:"brand"            description:"品牌" v:"max-length:30#品牌名称最大30个字"`
	Stock            int    `json:"stock"            description:"库存"`
	Sale             uint   `json:"sale"             description:"销量"`
	Tags             string `json:"tags"             description:"标签"`
	DetailInfo       string `json:"detail_info"       description:"商品详情"`
}

type GoodsRes struct {
	Id uint `json:"id"`
}

type GoodsDeleteReq struct {
	g.Meta `path:"/goods/delete" method:"delete" tags:"商品" summary:"删除商品接口"`
	Id     uint `v:"min:1#请选择需要删除的商品" dc:"商品id"`
}
type GoodsDeleteRes struct{}

type GoodsUpdateReq struct {
	g.Meta `path:"/goods/update/" method:"post" tags:"商品" summary:"修改商品接口"`
	Id     uint `json:"id"      v:"min:1#请选择需要修改的商品" dc:"商品Id"`
	GoodsCommonAddUpdate
}
type GoodsUpdateRes struct {
	Id uint `json:"id"`
}
type GoodsGetListCommonReq struct {
	g.Meta `path:"/goods/list" method:"get" tags:"商品" summary:"商品列表接口"`
	CommonPaginationReq
}
type GoodsGetListCommonRes struct {
	List  interface{} `json:"list" description:"列表"`
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
}
