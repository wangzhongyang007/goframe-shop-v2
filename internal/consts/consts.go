package consts

const (
	Version                  = "v0.2.0"             // 当前服务版本(用于模板展示)
	CaptchaDefaultName       = "CaptchaDefaultName" // 验证码默认存储空间名称
	ContextKey               = "ContextKey"         // 上下文变量存储键名，前后端系统共享
	FileMaxUploadCountMinute = 10                   // 同一用户1分钟之内最大上传数量
	GtokenUserKeyPrefix      = "admin:"
	//以下 for 管理后台登录鉴权
	CtxAdminId      = "admin_id"       //token获取
	CtxAdminName    = "admin_name"     //token获取
	CtxAdminIsAdmin = "admin_is_admin" //token获取
	CtxAdminRoleIds = "admin_role_ids" //token获取
)
