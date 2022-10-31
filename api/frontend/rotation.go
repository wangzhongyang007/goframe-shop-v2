package backend

import "github.com/gogf/gf/v2/frame/g"

type RotationAddReq struct {
	g.Meta `path:"/frontend/rotation/list" tags:"Rotation" method:"post" summary:"添加轮播图"`
	PicUrl string `json:"pic_url"    v:"required#轮播图不能为空" dc:"轮播图"`
	Link   string `json:"link"    v:"required#跳转链接不能为空"`
	Sort   int    `json:"sort"`
}

// todo
type RotationAddRes struct {
	//g.Meta `mime:"text/html" example:"string"`
	RotationId uint `json:"rotation_id"`
}
