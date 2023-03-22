package frontend

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

type AddCommentReq struct {
	g.Meta   `path:"/add/comment" in:"post" method:"post" tags:"前台评论" summary:"添加评论"`
	ObjectId uint   `json:"object_id" v:"required#评论对象id必填" dc:"对象id"`
	Type     uint8  `json:"type" v:"in:1,2" dc:"评论类型：1商品 2文章" ` //数据校验 范围约束
	ParentId uint   `json:"parent_id" dc:"父级评论id"`
	Content  string `json:"content" v:"required#评论必填"`
}

type AddCommentRes struct {
	Id uint `json:"id"`
}

type DeleteCommentReq struct {
	g.Meta `path:"/delete/comment" in:"post" method:"post" tags:"前台评论" summary:"移除评论"`
	Id     uint `json:"id"`
}

type DeleteCommentRes struct {
	Id uint `json:"id"`
}

// TODO:评论列表的查询逻辑处理按uid查.应该还要加按parent_id查,得加一个req类型
type ListCommentReq struct {
	g.Meta `path:"/comment/list" method:"post" tags:"前台评论" summary:"评论列表"`
	Type   uint8 `json:"type" v:"in:1,2" dc:"评论类型"`
	//ParentId uint8 `json:"parent_id" dc:"父评论id"`
	CommonPaginationReq
}

type ListCommentRes struct {
	Page  int         `json:"page" description:"分页码"`
	Size  int         `json:"size" description:"分页数量"`
	Total int         `json:"total" description:"数据总数"`
	List  interface{} `json:"list" description:"列表"`
}

type ListCommentItem struct {
	Id       int         `json:"id"        description:""`
	UserId   int         `json:"user_id"    description:"用户id"`
	ObjectId int         `json:"object_id"  description:"对象id"`
	Type     int         `json:"type"      description:"评论类型：1商品 2文章"`
	Goods    interface{} `json:"goods"`
	Article  interface{} `json:"article"`
}

type CommentBase struct {
	Id        int          `json:"id"        description:""`
	ParentId  int          `json:"parent_id"  description:"父级评论id"`
	UserId    int          `json:"user_id"    description:""`
	User      UserInfoBase `json:"user" dc:"用户信息"`
	ObjectId  int          `json:"object_id"  description:""`
	Type      int          `json:"type"      description:"评论类型：1商品 2文章"`
	Content   string       `json:"content"   description:"评论内容"`
	CreatedAt *gtime.Time  `json:"created_at" description:""`
}
