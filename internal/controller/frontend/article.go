package frontend

import (
	"context"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/model"
	"goframe-shop-v2/internal/service"

	"github.com/gogf/gf/v2/util/gconv"
)

// Article 内容管理
var Article = cArticle{}

type cArticle struct{}

func (a *cArticle) Create(ctx context.Context, req *frontend.ArticleAddReq) (res *frontend.ArticleAddRes, err error) {
	data := model.ArticleCreateInput{}
	//这里不需要用scan 用struct就可以 因为不涉及到嵌套，就是最简单的结构体转换
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}
	data.IsAdmin = consts.ArticleIsUser
	data.UserId = gconv.Int(ctx.Value(consts.CtxUserId))
	out, err := service.Article().Create(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.ArticleAddRes{Id: out.Id}, nil
}

func (a *cArticle) Update(ctx context.Context, req *frontend.ArticleUpdateReq) (res *frontend.ArticleUpdateRes, err error) {

	data := model.ArticleUpdateInput{}
	err = gconv.Struct(req, &data)
	if err != nil {
		return nil, err
	}

	//获取当前登录用户
	data.UserId = gconv.Int(ctx.Value(consts.CtxUserId))
	data.IsAdmin = consts.ArticleIsUser

	err = service.Article().Update(ctx, data)
	if err != nil {
		return nil, err
	}
	return &frontend.ArticleUpdateRes{Id: req.Id}, nil
}

func (a *cArticle) Detail(ctx context.Context, req *frontend.ArticleDetailReq) (res *frontend.ArticleDetailRes, err error) {

	out, err := service.Article().Detail(ctx, model.ArticleDetailInput{Id: req.Id})
	if err != nil || out == nil {
		return nil, err
	}
	err = gconv.Scan(out, &res)
	if err != nil {
		return nil, err
	}
	return res, nil
}

func (a *cArticle) Delete(ctx context.Context, req *frontend.ArticleDeleteReq) (res *frontend.ArticleDeleteRes, err error) {
	data := model.ArticleDeleteInput{
		Id: req.Id,
		ArticleUserAction: model.ArticleUserAction{
			UserId:  gconv.Int(ctx.Value(consts.CtxUserId)),
			IsAdmin: consts.ArticleIsUser,
		},
	}
	err = service.Article().Delete(ctx, data)
	return
}

func (a *cArticle) List(ctx context.Context, req *frontend.ArticleGetListCommonReq) (res *frontend.ArticleGetListCommonRes, err error) {

	getListRes, err := service.Article().GetList(ctx, model.ArticleGetListInput{
		Page: req.Page,
		Size: req.Size,
	})
	if err != nil {
		return nil, err
	}
	return &frontend.ArticleGetListCommonRes{List: getListRes.List,
		Page:  getListRes.Page,
		Size:  getListRes.Size,
		Total: getListRes.Total}, nil
}

func (a *cArticle) MyList(ctx context.Context, req *frontend.ArticleGetMyListReq) (res *frontend.ArticleGetListCommonRes, err error) {
	getListRes, err := service.Article().GetList(ctx, model.ArticleGetListInput{
		Page: req.Page,
		Size: req.Size,
		ArticleUserAction: model.ArticleUserAction{
			UserId:  gconv.Int(ctx.Value(consts.CtxUserId)),
			IsAdmin: consts.ArticleIsUser,
		},
	})
	if err != nil {
		return nil, err
	}
	return &frontend.ArticleGetListCommonRes{List: getListRes.List,
		Page:  getListRes.Page,
		Size:  getListRes.Size,
		Total: getListRes.Total}, nil
}
