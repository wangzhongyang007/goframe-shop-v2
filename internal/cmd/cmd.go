package cmd

import (
	"context"
	"goframe-shop-v2/internal/service"

	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/os/gcmd"

	"goframe-shop-v2/internal/controller"
)

var (
	Main = gcmd.Command{
		Name:  "main",
		Usage: "main",
		Brief: "start http server",
		Func: func(ctx context.Context, parser *gcmd.Parser) (err error) {
			s := g.Server()
			s.Group("/", func(group *ghttp.RouterGroup) {
				//group.Middleware(ghttp.MiddlewareHandlerResponse)
				group.Middleware(
					service.Middleware().Ctx,
					service.Middleware().ResponseHandler,
				)
				group.Bind(
					controller.Hello,        //示例
					controller.Rotation,     // 轮播图
					controller.Position,     // 手工位
					controller.Admin.Create, // 管理员
					controller.Admin.Update, // 管理员
					controller.Admin.Delete, // 管理员
					controller.Admin.List,   // 管理员
					controller.Login,        // 登录
				)
				// Special handler that needs authentication.
				group.Group("/", func(group *ghttp.RouterGroup) {
					group.Middleware(service.Middleware().Auth)
					group.ALLMap(g.Map{
						"/backend/admin/info": controller.Admin.Info,
					})
				})
			})
			s.Run()
			return nil
		},
	}
)
