# 接口文档

gf run main.go 启动项目后访问：

http://127.0.0.1:8000/swagger/

# 说明

main分支使用目前goframe最新版V2.2开发实现

如果你需要1.1X版本的项目，可以查看我另外的一个项目地址：
https://github.com/wangzhongyang007/goframe-shop

# 运行流程

## 1. 下载项目

git clone https://github.com/wangzhongyang007/goframe-shop-v2

## 2. 配置数据库

把hack/shop.sql导入你的数据库中

## 3. 修改配置文件

修改hack/config.yaml文件中的数据库密码

修改manifest/config/config.yaml中的数据库密码

redis的密码可以不改，gtoken已经使用gcache模式，如果你需要使用redis，请配置配置文件中的redis

七牛云的密码可以不改，不影响项目启动，如果你需要图片上传功能，请修改配置文件中qiniu相关的参数

## 4. 启动项目

在项目根目录下执行：

go run main.go

如果你需要自动编译，可以执行：

gf run main.go

# 项目启动失败可能的原因

1. Go或者GoFrame安装的版本不一致
2. 配置文件问题，密码不正确等等

# 出现问题可以联系我

## 我的知识星球

https://wx.zsxq.com/dweb2/index/group/15528828844882

## 微信

wangzhongyang1993

## 我的博客

https://juejin.cn/user/2189882892232029/posts

## 我的公众号

程序员升级打怪之旅

# 交叉编译

## for Linux

```
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
```

## for windows

```
CGO_ENABLE=0 GOOS=windows GOARCH=amd64 go build
```

# 部署流程

1. 本地提交git
2. 远程服务器已经安装Go环境
3. 执行部署脚本：

```
setup.sh
```

# 热更新启动项目

```
gf run main.go
```