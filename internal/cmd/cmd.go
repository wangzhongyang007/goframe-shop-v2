package cmd

import (
	"context"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/os/gcmd"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/controller"
	"goframe-shop-v2/internal/service"
)

var (
	Main = gcmd.Command{
		Name:  consts.ProjectName,
		Usage: consts.ProjectUsage,
		Brief: consts.ProjectBrief,
		Func: func(ctx context.Context, parser *gcmd.Parser) (err error) {
			s := g.Server()
			// 启动管理后台gtoken
			gfAdminToken, err := StartBackendGToken()
			if err != nil {
				return err
			}
			//管理后台路由组
			s.Group("/backend", func(group *ghttp.RouterGroup) {
				group.Middleware(
					service.Middleware().CORS,
					service.Middleware().Ctx,
					service.Middleware().ResponseHandler,
				)
				//不需要登录的路由组绑定
				group.Bind(
					controller.Admin.Create, // 管理员
					controller.Login,        // 登录
				)
				//需要登录的路由组绑定
				group.Group("/", func(group *ghttp.RouterGroup) {
					err := gfAdminToken.Middleware(ctx, group)
					if err != nil {
						panic(err)
					}
					group.Bind(
						controller.Data,         // 数据大屏相关
						controller.Role,         // 角色
						controller.Permission,   // 权限
						controller.Admin.List,   // 管理员
						controller.Admin.Update, // 管理员
						controller.Admin.Delete, // 管理员
						controller.Admin.Info,   // 查询当前管理员信息
						controller.Rotation,     // 轮播图
						controller.Position,     // 手工位
						controller.File,         //从0到1实现文件入库
						controller.Upload,       //实现可跨项目使用的文件上云工具类
						controller.Category,     //商品分类管理
						controller.Coupon,       //商品优惠券管理
						controller.UserCoupon,   //商品优惠券管理
						controller.Goods,        //商品管理
						controller.GoodsOptions, //商品规格管理
						controller.Article,      //文章管理&CMS
					)
				})
			})
			//---------------------华丽的分割线-------------------
			// 启动前台项目gtoken
			frontendToken, err := StartFrontendGToken()
			if err != nil {
				return err
			}
			//前台项目路由组
			s.Group("/frontend", func(group *ghttp.RouterGroup) {
				group.Middleware(
					service.Middleware().CORS,
					service.Middleware().Ctx,
					service.Middleware().ResponseHandler,
				)
				//不需要登录的路由组绑定
				group.Bind(
					controller.User.Register, //用户注册
					controller.Goods,         //商品
				)
				//需要登录鉴权的路由组
				group.Group("/", func(group *ghttp.RouterGroup) {
					err := frontendToken.Middleware(ctx, group)
					if err != nil {
						return
					}
					//需要登录鉴权的接口放到这里
					group.Bind(
						controller.User.Info,           //当前登录用户的信息
						controller.User.UpdatePassword, //当前用户修改密码
						controller.Collection,          //收藏
						controller.Praise,              //收藏
						controller.Comment,             //评论
					)
				})
			})
			s.Run()
			return nil
		},
	}
)
