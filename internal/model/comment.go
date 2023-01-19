package model

import (
	"github.com/gogf/gf/v2/os/gtime"
)

type AddCommentInput struct {
	UserId   uint
	ObjectId uint
	Type     uint8
	ParentId uint
	Content  string
}

type AddCommentOutput struct {
	Id uint
}

type DeleteCommentInput struct {
	Id uint
}

type DeleteCommentOutput struct {
	Id uint
}

// CommentListInput 获取内容列表
type CommentListInput struct {
	Page int // 分页号码
	Size int // 分页数量，最大50
	Type uint8
}

// CommentListOutput 查询列表结果
type CommentListOutput struct {
	List  []CommentListOutputItem `json:"list" description:"列表"`
	Page  int                     `json:"page" description:"分页码"`
	Size  int                     `json:"size" description:"分页数量"`
	Total int                     `json:"total" description:"数据总数"`
}

type CommentListOutputItem struct {
	Id        int         `json:"id"        description:""`
	UserId    int         `json:"user_id"    description:"用户id"`
	ObjectId  int         `json:"object_id"  description:"对象id"`
	Type      int         `json:"type"      description:"收藏类型：1商品 2文章"`
	ParentId  uint        `json:"parent_id" dc:"父级评论id"`
	Content   string      `json:"content" dc:"评论内容"`
	Goods     GoodsItem   `json:"goods" orm:"with:id=object_id"`
	Article   ArticleItem `json:"article" orm:"with:id=object_id"`
	CreatedAt *gtime.Time `json:"created_at"` // 创建时间
	UpdatedAt *gtime.Time `json:"updated_at"` // 修改时间
}
