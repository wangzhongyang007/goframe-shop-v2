package cmd

import (
	"context"
	"github.com/goflyfox/gtoken/gtoken"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/text/gstr"
	"github.com/gogf/gf/v2/util/gconv"
	"goframe-shop-v2/api/backend"
	"goframe-shop-v2/api/frontend"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/utility"
	"goframe-shop-v2/utility/response"
	"strconv"
)

// 管理后台相关
func StartBackendGToken() (gfAdminToken *gtoken.GfToken, err error) {
	gfAdminToken = &gtoken.GfToken{
		CacheMode:        consts.CacheModeRedis,
		ServerName:       consts.BackendServerName,
		LoginPath:        "/login",
		LoginBeforeFunc:  loginFunc,
		LoginAfterFunc:   loginAfterFunc,
		LogoutPath:       "/user/logout",
		AuthPaths:        g.SliceStr{"/backend/admin/info"},
		AuthExcludePaths: g.SliceStr{"/admin/user/info", "/admin/system/user/info"}, // 不拦截路径 /user/info,/system/user/info,/system/user,
		AuthAfterFunc:    authAfterFunc,
		MultiLogin:       consts.MultiLogin,
	}
	//todo 去掉全局校验，只用cmd中的路由组校验
	err = gfAdminToken.Start()
	return
}

// 前台登录gtoken相关
func StartFrontendGToken() (gfFrontendToken *gtoken.GfToken, err error) {
	gfFrontendToken = &gtoken.GfToken{
		CacheMode:       consts.CacheModeRedis,
		ServerName:      consts.BackendServerName,
		LoginPath:       "/login",
		LoginBeforeFunc: loginFuncFrontend,
		LoginAfterFunc:  loginAfterFuncFrontend,
		LogoutPath:      "/user/logout",
		//AuthPaths:        g.SliceStr{"/backend/admin/info"},
		//AuthExcludePaths: g.SliceStr{"/admin/user/info", "/admin/system/user/info"}, // 不拦截路径 /user/info,/system/user/info,/system/user,
		AuthAfterFunc: authAfterFuncFrontend,
		MultiLogin:    consts.FrontendMultiLogin,
	}
	//todo 去掉全局校验，只用cmd中的路由组校验
	//err = gfAdminToken.Start()
	return
}

func loginFunc(r *ghttp.Request) (string, interface{}) {
	name := r.Get("name").String()
	password := r.Get("password").String()
	ctx := context.TODO()

	if name == "" || password == "" {
		r.Response.WriteJson(gtoken.Fail(consts.ErrLoginFaulMsg))
		r.ExitAll()
	}

	//验证账号密码是否正确
	adminInfo := entity.AdminInfo{}
	err := dao.AdminInfo.Ctx(ctx).Where(dao.AdminInfo.Columns().Name, name).Scan(&adminInfo)
	if err != nil {
		r.Response.WriteJson(gtoken.Fail(consts.ErrLoginFaulMsg))
		r.ExitAll()
	}
	if utility.EncryptPassword(password, adminInfo.UserSalt) != adminInfo.Password {
		r.Response.WriteJson(gtoken.Fail(consts.ErrLoginFaulMsg))
		r.ExitAll()
	}
	// 唯一标识，扩展参数user data
	return consts.GTokenAdminPrefix + strconv.Itoa(adminInfo.Id), adminInfo
}

// for 前台项目
func loginFuncFrontend(r *ghttp.Request) (string, interface{}) {
	name := r.Get("name").String()
	password := r.Get("password").String()
	ctx := context.TODO()

	if name == "" || password == "" {
		r.Response.WriteJson(gtoken.Fail(consts.ErrLoginFaulMsg))
		r.ExitAll()
	}

	//验证账号密码是否正确
	userInfo := entity.UserInfo{}
	err := dao.UserInfo.Ctx(ctx).Where(dao.AdminInfo.Columns().Name, name).Scan(&userInfo)
	if err != nil {
		r.Response.WriteJson(gtoken.Fail(consts.ErrLoginFaulMsg))
		r.ExitAll()
	}
	if utility.EncryptPassword(password, userInfo.UserSalt) != userInfo.Password {
		r.Response.WriteJson(gtoken.Fail(consts.ErrLoginFaulMsg))
		r.ExitAll()
	}
	// 唯一标识，扩展参数user data
	return consts.GTokenFrontendPrefix + strconv.Itoa(userInfo.Id), userInfo
}

// 自定义的登录之后的函数
func loginAfterFunc(r *ghttp.Request, respData gtoken.Resp) {
	if !respData.Success() {
		respData.Code = 0
		r.Response.WriteJson(respData)
		return
	} else {
		respData.Code = 1
		//获得登录用户id
		userKey := respData.GetString("userKey")
		adminId := gstr.StrEx(userKey, consts.GTokenAdminPrefix)
		//根据id获得登录用户其他信息
		adminInfo := entity.AdminInfo{}
		err := dao.AdminInfo.Ctx(context.TODO()).WherePri(adminId).Scan(&adminInfo)
		if err != nil {
			return
		}
		//通过角色查询权限
		//先通过角色查询权限id
		var rolePermissionInfos []entity.RolePermissionInfo
		err = dao.RolePermissionInfo.Ctx(context.TODO()).WhereIn(dao.RolePermissionInfo.Columns().RoleId, g.Slice{adminInfo.RoleIds}).Scan(&rolePermissionInfos)
		if err != nil {
			return
		}
		permissionIds := g.Slice{}
		for _, info := range rolePermissionInfos {
			permissionIds = append(permissionIds, info.PermissionId)
		}

		var permissions []entity.PermissionInfo
		err = dao.PermissionInfo.Ctx(context.TODO()).WhereIn(dao.PermissionInfo.Columns().Id, permissionIds).Scan(&permissions)
		if err != nil {
			return
		}
		data := &backend.LoginRes{
			Type:        consts.TokenType,
			Token:       respData.GetString("token"),
			ExpireIn:    consts.GTokenExpireIn, //单位秒,
			IsAdmin:     adminInfo.IsAdmin,
			RoleIds:     adminInfo.RoleIds,
			Permissions: permissions,
		}
		response.JsonExit(r, 0, "", data)
	}
	return
}

// 自定义的登录之后的函数 for前台项目
func loginAfterFuncFrontend(r *ghttp.Request, respData gtoken.Resp) {
	if !respData.Success() {
		respData.Code = 0
		r.Response.WriteJson(respData)
		return
	} else {
		respData.Code = 1
		//获得登录用户id
		userKey := respData.GetString("userKey")
		userId := gstr.StrEx(userKey, consts.GTokenFrontendPrefix)
		//根据id获得登录用户其他信息
		userInfo := entity.UserInfo{}
		err := dao.UserInfo.Ctx(context.TODO()).WherePri(userId).Scan(&userInfo)
		if err != nil {
			return
		}
		data := &frontend.LoginRes{
			Type:     consts.TokenType,
			Token:    respData.GetString("token"),
			ExpireIn: consts.GTokenExpireIn, //单位秒,
		}
		data.Name = userInfo.Name
		data.Avatar = userInfo.Avatar
		data.Sign = userInfo.Sign
		data.Status = uint8(userInfo.Status)
		response.JsonExit(r, 0, "", data)
	}
	return
}

func authAfterFunc(r *ghttp.Request, respData gtoken.Resp) {
	var adminInfo entity.AdminInfo
	err := gconv.Struct(respData.GetString("data"), &adminInfo)
	if err != nil {
		response.Auth(r)
		return
	}

	r.SetCtxVar(consts.CtxAdminId, adminInfo.Id)
	r.SetCtxVar(consts.CtxAdminName, adminInfo.Name)
	r.SetCtxVar(consts.CtxAdminIsAdmin, adminInfo.IsAdmin)
	r.SetCtxVar(consts.CtxAdminRoleIds, adminInfo.RoleIds)
	r.Middleware.Next()
}

func authAfterFuncFrontend(r *ghttp.Request, respData gtoken.Resp) {
	var userInfo entity.UserInfo
	err := gconv.Struct(respData.GetString("data"), &userInfo)
	if err != nil {
		response.Auth(r)
		return
	}

	r.SetCtxVar(consts.CtxUserId, userInfo.Id)
	r.SetCtxVar(consts.CtxUserName, userInfo.Name)
	r.SetCtxVar(consts.CtxUserAvatar, userInfo.Avatar)
	r.SetCtxVar(consts.CtxUserSex, userInfo.Sex)
	r.SetCtxVar(consts.CtxUserSign, userInfo.Sign)
	r.SetCtxVar(consts.CtxUserStatus, userInfo.Status)
	r.Middleware.Next()
}
