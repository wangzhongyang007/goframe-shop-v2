package controller

import (
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"
	"golang.org/x/net/context"
)

// Permission 角色管理
var Permission = cPermission{}

type cPermission struct{}

func (c *cPermission) Create(ctx context.Context, req *backend.PermissionReq) (res *backend.PermissionRes, err error) {
	out, err := service.Permission().Create(ctx, model.PermissionCreateInput{
		PermissionCreateUpdateBase: model.PermissionCreateUpdateBase{
			Name: req.Name,
			Path: req.Path,
		},
	})
	if err != nil {
		return nil, err
	}
	return &backend.PermissionRes{PermissionId: out.PermissionId}, nil
}

func (c *cPermission) Delete(ctx context.Context, req *backend.PermissionDeleteReq) (res *backend.PermissionDeleteRes, err error) {
	err = service.Permission().Delete(ctx, req.Id)
	return
}

func (c *cPermission) Update(ctx context.Context, req *backend.PermissionUpdateReq) (res *backend.PermissionUpdateRes, err error) {
	err = service.Permission().Update(ctx, model.PermissionUpdateInput{
		Id: req.Id,
		PermissionCreateUpdateBase: model.PermissionCreateUpdateBase{
			Name: req.Name,
			Path: req.Path,
		},
	})
	return &backend.PermissionUpdateRes{Id: req.Id}, nil
}

func (c *cPermission) List(ctx context.Context, req *backend.PermissionGetListCommonReq) (res *backend.PermissionGetListCommonRes, err error) {
	getListRes, err := service.Permission().GetList(ctx, model.PermissionGetListInput{
		Page: req.Page,
		Size: req.Size,
	})
	if err != nil {
		return nil, err
	}

	return &backend.PermissionGetListCommonRes{List: getListRes.List,
		Page:  getListRes.Page,
		Size:  getListRes.Size,
		Total: getListRes.Total}, nil
}
