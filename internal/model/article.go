package model

import "goframe-shop-v2/internal/model/entity"

// ArticleCreateUpdateBase 创建/修改内容基类
type ArticleCreateUpdateBase struct {
	UserId  int
	Title   string
	Desc    string
	PicUrl  string
	IsAdmin int
	Praise  int
	Detail  string
}

// ArticleCreateInput 创建内容
type ArticleCreateInput struct {
	ArticleCreateUpdateBase
}

// ArticleCreateOutput 创建内容返回结果
type ArticleCreateOutput struct {
	Id uint `json:"id"`
}

// ArticleUpdateInput 修改内容
type ArticleUpdateInput struct {
	ArticleCreateUpdateBase
	Id uint
}

// ArticleGetListInput 获取内容列表
type ArticleGetListInput struct {
	Page int // 分页号码
	Size int // 分页数量，最大50
	Sort int // 排序类型(0:最新, 默认。1:活跃, 2:热度)
}

// ArticleGetListOutput 查询列表结果
type ArticleGetListOutput struct {
	List  []ArticleGetListOutputItem `json:"list" description:"列表"`
	Page  int                        `json:"page" description:"分页码"`
	Size  int                        `json:"size" description:"分页数量"`
	Total int                        `json:"total" description:"数据总数"`
}

type ArticleGetListOutputItem struct {
	entity.ArticleInfo
}
