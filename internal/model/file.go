package model

import "github.com/gogf/gf/v2/net/ghttp"

type FileUploadInput struct {
	File       *ghttp.UploadFile //上传文件对象
	Name       string
	RandomName bool
}

type FileUploadOutput struct {
	Id   uint //Id
	Name string
	Src  string
	Url  string
}
