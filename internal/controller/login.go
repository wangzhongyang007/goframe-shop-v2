package controller

import (
	"context"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/service"
)

// 登录管理
var Login = cLogin{}

type cLogin struct{}

//func (a *cLogin) Login(ctx context.Context, req *backend.LoginDoReq) (res *backend.LoginDoRes, err error) {
//	res = &backend.LoginDoRes{}
//	err = service.Login().Login(ctx, model.UserLoginInput{
//		Name:     req.Name,
//		Password: req.Password,
//	})
//	if err != nil {
//		return
//	}
//	// 识别并跳转到登录前页面
//	//res.Info = service.Session().GetUser(ctx)
//	return
//}

func (c *cLogin) Login(ctx context.Context, req *backend.LoginDoReq) (res *backend.LoginDoRes, err error) {
	res = &backend.LoginDoRes{}
	res.Token, res.Expire = service.Auth().LoginHandler(ctx)
	return
}

func (c *cLogin) RefreshToken(ctx context.Context, req *backend.RefreshTokenReq) (res *backend.RefreshTokenRes, err error) {
	res = &backend.RefreshTokenRes{}
	res.Token, res.Expire = service.Auth().RefreshHandler(ctx)
	return
}

func (c *cLogin) Logout(ctx context.Context, req *backend.LogoutReq) (res *backend.LogoutRes, err error) {
	service.Auth().LogoutHandler(ctx)
	return
}
