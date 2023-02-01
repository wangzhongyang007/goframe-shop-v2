package model

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type AddCartInput struct {
	UserId         uint
	GoodsOptionsId uint
	Count          int
}

type AddCartOutput struct {
	Id uint `json:"id"`
}

type DeleteCartInput struct {
	Id uint
}

type DeleteCartOutput struct {
	Id uint `json:"id"`
}

type ListCartInput struct {
	Page int
	Size int
}

type ListCartOutput struct {
	Page  int            `json:"page"`
	Size  int            `json:"size"`
	Total int            `json:"total"`
	List  []ListCartBase `json:"list"`
}

type ListCartBase struct {
	g.Meta         `orm:"table:cart_info"`
	Id             int             `json:"id"             description:"购物车表"`
	UserId         int             `json:"user_id"         description:""`
	GoodsOptionsId int             `json:"goods_options_id" description:""`
	Count          int             `json:"count"          description:"商品数量"`
	Ops            ListCartOpsBase `json:"ops" orm:"with:id=goods_options_id"`
	CreatedAt      *gtime.Time     `json:"created_at"      description:""`
	UpdatedAt      *gtime.Time     `json:"updated_at"      description:""`
	DeletedAt      *gtime.Time     `json:"deleted_at"      description:""`
}

type ListCartOpsBase struct {
	g.Meta    `orm:"table:goods_options_info"`
	Id        int               `json:"id"        description:""`
	GoodsId   int               `json:"goods_id"   description:"商品id"`
	PicUrl    string            `json:"pic_url"    description:"图片"`
	Name      string            `json:"name"      description:"商品名称"`
	Price     int               `json:"price"     description:"价格 单位分"`
	Stock     int               `json:"stock"     description:"库存"`
	Goods     ListCartGoodsBase `json:"goods" orm:"with:id=goods_id"`
	CreatedAt *gtime.Time       `json:"created_at" description:""`
	UpdatedAt *gtime.Time       `json:"updated_at" description:""`
	DeletedAt *gtime.Time       `json:"deleted_at" description:""`
}

type ListCartGoodsBase struct {
	g.Meta           `orm:"table:goods_info"`
	Id               int         `json:"id"               description:""`
	PicUrl           string      `json:"pic_url"           description:"图片"`
	Name             string      `json:"name"             description:"商品名称"`
	Price            int         `json:"price"            description:"价格 单位分"`
	Level1CategoryId int         `json:"level1_category_id" description:"1级分类id"`
	Level2CategoryId int         `json:"level2_category_id" description:"2级分类id"`
	Level3CategoryId int         `json:"level3_category_id" description:"3级分类id"`
	Brand            string      `json:"brand"            description:"品牌"`
	CouponId         int         `json:"coupon_id"         description:"优惠券id"`
	Stock            int         `json:"stock"            description:"库存"`
	Sale             int         `json:"sale"             description:"销量"`
	Tags             string      `json:"tags"             description:"标签"`
	DetailInfo       string      `json:"detail_info"       description:"商品详情"`
	CreatedAt        *gtime.Time `json:"created_at"        description:""`
	UpdatedAt        *gtime.Time `json:"updated_at"        description:""`
	DeletedAt        *gtime.Time `json:"deleted_at"        description:""`
}
