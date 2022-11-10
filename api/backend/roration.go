package backend

import (
	"github.com/gogf/gf/v2/frame/g"
)

type RotationReq struct {
	g.Meta `path:"/backend/rotation/add" tags:"Rotation" method:"post" summary:"You first rotation api"`
	PicUrl string `json:"pic_url" v:"required#图片链接不能为空" dc:"图片链接"`
	Link   string `json:"link"    v:"required#跳转链接不能为空" dc:"跳转链接"`
	Sort   int    `json:"sort"    dc:"排序"`
}

type RotationRes struct {
	RotationId int `json:"rotationId"`
}

type RotationDeleteReq struct {
	g.Meta `path:"/backend/rotation/delete" method:"delete" tags:"轮播图" summary:"删除轮播图接口"`
	Id     uint `v:"min:1#请选择需要删除的轮播图" dc:"轮播图id"`
}
type RotationDeleteRes struct{}

type RotationUpdateReq struct {
	g.Meta `path:"/backend/rotation/update/{Id}" method:"post" tags:"轮播图" summary:"修改轮播图接口"`
	Id     uint   `json:"id"      v:"min:1#请选择需要修改的轮播图"  dc:"轮播图Id"`
	PicUrl string `json:"pic_url" v:"required#图片链接不能为空"    dc:"图片地址"`
	Link   string `json:"link"    v:"required#请输入跳转链接"      dc:"跳转链接"`
	Sort   int    `json:"sort"    dc:"排序"`
}
type RotationUpdateRes struct{}
