package cmd

import (
	"context"
	"github.com/goflyfox/gtoken/gtoken"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/os/gcmd"
	"goframe-shop-v2/internal/consts"
	"goframe-shop-v2/internal/dao"
	"goframe-shop-v2/internal/model/entity"
	"goframe-shop-v2/internal/service"
	"goframe-shop-v2/utility"
	"strconv"

	"goframe-shop-v2/internal/controller"
)

var (
	Main = gcmd.Command{
		Name:  "main",
		Usage: "main",
		Brief: "start http server",
		Func: func(ctx context.Context, parser *gcmd.Parser) (err error) {
			s := g.Server()
			// 认证接口
			loginFunc := Login
			// 启动gtoken
			gfAdminToken := &gtoken.GfToken{
				CacheMode:        2, //redis模式
				ServerName:       "shop",
				LoginPath:        "/backend/login",
				LoginBeforeFunc:  loginFunc,
				LogoutPath:       "/backend/user/logout",
				AuthExcludePaths: g.SliceStr{"/admin/user/info", "/admin/system/user/info"}, // 不拦截路径 /user/info,/system/user/info,/system/user,
				MultiLogin:       true,
			}
			s.Group("/", func(group *ghttp.RouterGroup) {
				group.Middleware(
					service.Middleware().CORS,
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
					//group.Middleware(service.Middleware().Auth)
					err := gfAdminToken.Middleware(ctx, group)
					if err != nil {
						panic(err)
					}

					//group.ALLMap(g.Map{
					//	"/backend/admin/info": controller.Admin.Info,
					//})
					//todo 优化代码 返回的数据格式和之前的一致
					group.ALL("/backend/admin/info", func(r *ghttp.Request) {
						r.Response.WriteJson(gfAdminToken.GetTokenData(r).Data)
					})
				})
			})
			s.Run()
			return nil
		},
	}
)

func Login(r *ghttp.Request) (string, interface{}) {
	name := r.Get("name").String()
	password := r.Get("password").String()
	ctx := context.TODO()

	//验证账号密码是否正确
	adminInfo := entity.AdminInfo{}
	err := dao.AdminInfo.Ctx(ctx).Where(dao.AdminInfo.Columns().Name, name).Scan(&adminInfo)
	if err != nil {
		r.Response.WriteJson(gtoken.Fail("账号或密码错误."))
		r.ExitAll()
	}
	if utility.EncryptPassword(password, adminInfo.UserSalt) != adminInfo.Password {
		r.Response.WriteJson(gtoken.Fail("账号或密码错误."))
		r.ExitAll()
	}
	//return "admin:" + gconv.String(adminInfo.Id), "1"
	//因为我们是前后台一体的项目，前台项目的user和后台项目的admin的id一定有重合，所以要加前缀区分
	//为什么用冒号分隔？因为商业项目要把token保存到redis中，:分隔 数据可视化优化
	//唯一标识，扩展参数user data
	return consts.GtokenUserKeyPrefix + strconv.Itoa(adminInfo.Id), adminInfo
}
