package consts

const (
	ProjectName              = "Go开源电商实战项目"
	ProjectUsage             = "演示学习使用，作者：王中阳Go，微信：wangzhongyang1993，公众号：程序员升职加薪之旅"
	ProjectBrief             = "start http server"
	Version                  = "v0.2.0"             // 当前服务版本(用于模板展示)
	CaptchaDefaultName       = "CaptchaDefaultName" // 验证码默认存储空间名称
	ContextKey               = "ContextKey"         // 上下文变量存储键名，前后端系统共享
	FileMaxUploadCountMinute = 10                   // 同一用户1分钟之内最大上传数量
	GTokenAdminPrefix        = "Admin:"             //gtoken登录 管理后台 前缀区分
	GTokenFrontendPrefix     = "User:"              //gtoken登录 前台用户 前缀区分
	CtxAdminId               = "CtxAdminId"
	CtxAdminName             = "CtxAdminName"
	CtxAdminIsAdmin          = "CtxAdminIsAdmin"
	CtxAdminRoleIds          = "CtxAdminRoleIds"
	TokenType                = "Bearer"
	CacheModeRedis           = 2
	BackendServerName        = "开源电商系统"
	MultiLogin               = true
	FrontendMultiLogin       = true
	GTokenExpireIn           = 10 * 24 * 60 * 60
	//统一管理错误提示
	CodeMissingParameterMsg = "请检查是否缺少参数"
	ErrLoginFaulMsg         = "登录失败，账号或密码错误"
)
