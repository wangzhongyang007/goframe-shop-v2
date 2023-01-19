package model

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type AddCollectionInput struct {
	UserId   uint
	ObjectId uint
	Type     uint8
}

type AddCollectionOutput struct {
	Id uint
}

type DeleteCollectionInput struct {
	Id       uint
	UserId   uint
	ObjectId uint
	Type     uint8
}

type DeleteCollectionOutput struct {
	Id uint
}

// CollectionListInput 获取内容列表
type CollectionListInput struct {
	Page int // 分页号码
	Size int // 分页数量，最大50
	Type uint8
}

// CollectionListOutput 查询列表结果
type CollectionListOutput struct {
	List  []CollectionListOutputItem `json:"list" description:"列表"`
	Page  int                        `json:"page" description:"分页码"`
	Size  int                        `json:"size" description:"分页数量"`
	Total int                        `json:"total" description:"数据总数"`
}

type CollectionListOutputItem struct {
	Id        int         `json:"id"        description:""`
	UserId    int         `json:"user_id"    description:"用户id"`
	ObjectId  int         `json:"object_id"  description:"对象id"`
	Type      int         `json:"type"      description:"收藏类型：1商品 2文章"`
	Goods     GoodsItem   `json:"goods" orm:"with:id=object_id"`
	Article   ArticleItem `json:"article" orm:"with:id=object_id"`
	CreatedAt *gtime.Time `json:"created_at"` // 创建时间
	UpdatedAt *gtime.Time `json:"updated_at"` // 修改时间
}

type GoodsItem struct {
	g.Meta `orm:"table:goods_info"`
	Id     uint   `json:"id"`
	Name   string `json:"name"`
	PicUrl string `json:"pic_url"`
	Price  int    `json:"price"`
}

type ArticleItem struct {
	g.Meta `orm:"table:article_info"`
	Id     uint   `json:"id"`
	Title  string `json:"title"`
	Desc   string `json:"desc"`
	PicUrl string `json:"pic_url"`
}

// 校验当前用户是否收藏
type CheckIsCollectInput struct {
	UserId   uint
	ObjectId uint
	Type     uint8
}
