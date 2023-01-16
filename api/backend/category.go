package backend

import "github.com/gogf/gf/v2/frame/g"

type CategoryReq struct {
	g.Meta `path:"/category/add" tags:"商品分类" method:"post" summary:"添加商品分类"`
	CommonAddUpdate
}

type CommonAddUpdate struct {
	ParentId uint   `json:"parent_id" dc:"父级id"`
	Name     string `json:"name" v:"required#名称必填" dc:"名称"`
	PicUrl   string `json:"pic_url" v:"required#图片链接不能为空" dc:"图片链接"`
	Level    uint8  `json:"level"  dc:"等级 默认1级分类"`
	Sort     uint8  `json:"sort"    dc:"排序"`
}

type CategoryRes struct {
	CategoryId int `json:"category_id"`
}

type CategoryDeleteReq struct {
	g.Meta `path:"/category/delete" method:"delete" tags:"商品分类" summary:"删除商品分类接口"`
	Id     uint `v:"min:1#请选择需要删除的商品分类" dc:"商品分类id"`
}
type CategoryDeleteRes struct{}

type CategoryUpdateReq struct {
	g.Meta `path:"/category/update/{Id}" method:"post" tags:"商品分类" summary:"修改商品分类接口"`
	Id     uint `json:"id"      v:"min:1#请选择需要修改的商品分类" dc:"商品分类Id"`
	CommonAddUpdate
}
type CategoryUpdateRes struct {
	Id uint `json:"id"`
}
type CategoryGetListCommonReq struct {
	g.Meta `path:"/category/list" method:"get" tags:"商品分类" summary:"商品分类列表接口"`
	Sort   int `json:"sort"   in:"query" dc:"排序类型"`
	CommonPaginationReq
}
type CategoryGetListCommonRes struct {
	List  interface{} `json:"list" description:"列表"`
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
}
type CategoryGetListAllCommonReq struct {
	g.Meta `path:"/category/list/all" method:"get" tags:"商品分类" summary:"商品分类全部列表"`
}
type CategoryGetListAllCommonRes struct {
	List  interface{} `json:"list" description:"列表"`
	Total int         `json:"total" description:"数据总数"`
}
