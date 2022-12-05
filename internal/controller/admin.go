package controller

import (
	"context"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
)

// Admin 内容管理
var Admin = cAdmin{}

type cAdmin struct{}

func (a *cAdmin) Create(ctx context.Context, req *backend.AdminReq) (res *backend.AdminRes, err error) {
	out, err := service.Admin().Create(ctx, model.AdminCreateInput{
		AdminCreateUpdateBase: model.AdminCreateUpdateBase{
			Name:     req.Name,
			Password: req.Password,
			RoleIds:  req.RoleIds,
			IsAdmin:  req.IsAdmin,
		},
	})
	if err != nil {
		return nil, err
	}
	return &backend.AdminRes{AdminId: out.AdminId}, nil
}

// for jwt
//func (c *cAdmin) Info(ctx context.Context, req *backend.AdminGetInfoReq) (res *backend.AdminGetInfoRes, err error) {
//	return &backend.AdminGetInfoRes{
//		Id:          gconv.Int(service.Auth().GetIdentity(ctx)),
//		IdentityKey: service.Auth().IdentityKey,
//		Payload:     service.Auth().GetPayload(ctx),
//	}, nil
//}

// for gtoken
func (c *cAdmin) Info(ctx context.Context, req *backend.AdminGetInfoReq) (res *backend.AdminGetInfoRes, err error) {
	return &backend.AdminGetInfoRes{
		Id:      gconv.Int(ctx.Value(consts.CtxAdminId)),
		Name:    gconv.String(ctx.Value(consts.CtxAdminName)),
		RoleIds: gconv.String(ctx.Value(consts.CtxAdminRoleIds)),
		IsAdmin: gconv.Int(ctx.Value(consts.CtxAdminIsAdmin)),
	}, nil
}

func (a *cAdmin) Delete(ctx context.Context, req *backend.AdminDeleteReq) (res *backend.AdminDeleteRes, err error) {
	err = service.Admin().Delete(ctx, req.Id)
	return
}

func (a *cAdmin) Update(ctx context.Context, req *backend.AdminUpdateReq) (res *backend.AdminUpdateRes, err error) {
	err = service.Admin().Update(ctx, model.AdminUpdateInput{
		Id: req.Id,
		AdminCreateUpdateBase: model.AdminCreateUpdateBase{
			Name:     req.Name,
			Password: req.Password,
			RoleIds:  req.RoleIds,
			IsAdmin:  req.IsAdmin,
		},
	})
	return &backend.AdminUpdateRes{Id: req.Id}, nil
}

func (a *cAdmin) List(ctx context.Context, req *backend.AdminGetListCommonReq) (res *backend.AdminGetListCommonRes, err error) {
	getListRes, err := service.Admin().GetList(ctx, model.AdminGetListInput{
		Page: req.Page,
		Size: req.Size,
	})
	if err != nil {
		return nil, err
	}

	return &backend.AdminGetListCommonRes{List: getListRes.List,
		Page:  getListRes.Page,
		Size:  getListRes.Size,
		Total: getListRes.Total}, nil
}
