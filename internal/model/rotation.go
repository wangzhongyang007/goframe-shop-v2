package model

// RotationCreateUpdateBase 创建/修改内容基类
type RotationCreateUpdateBase struct {
	PicUrl string // 轮播图地址
	Sort   int    // 排序
	Link   string // 跳转链接
}

// RotationCreateInput 创建内容
type RotationCreateInput struct {
	RotationCreateUpdateBase
}

// RotationCreateOutput 创建内容返回结果
type RotationCreateOutput struct {
	RotationId uint `json:"rotation_id"`
}
