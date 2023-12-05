<p align="center">
	<img alt="logo" src="https://github.com/Xiamu-ssr/MyWeb01-Doc/assets/77220168/168c2a1c-4d57-4ff8-841c-6f53edbbf47a">
</p>
<h1 align="center" style="margin: 30px 0 30px; font-weight: bold;">Our遇 v1.0.0</h1>
<h4 align="center">基于SpringBoot+Vue3前后端分离的个人网站</h4>

## 技术栈
* Vue + ElementPlus + Echarts
* Spring Boot + MyBatisPlus + Spring Security + Redis

## 内置功能
1.  首页：首页展示页，一些数据统计
2.  时光轴：动态展示
3.  留言板：访客可以留言
4.  作品集：作品集展示
5.  公告通知
6.  数据管理：对时光轴的动态的增删查、留言板的审核、作品集、公告通知的管理界面

## 在线体验
演示地址：http://www.qmeternity.cn/index

## 数据库设计
[./02_DB_design](./02_DB_design)
![](https://github.com/Xiamu-ssr/MyWeb01-Doc/blob/main/02_DB_design/my_portfolio.png)

## api文档网址
[https://xiamu-ssr.github.io/MyWeb01-Doc/](https://xiamu-ssr.github.io/MyWeb01-Doc/)

## 运行
1. 前置依赖
- JDK >= 1.8 (推荐1.8版本)
- Mysql >= 5.7.0 (推荐5.7版本)
- Redis >= 3.0
- Maven >= 3.0
- Node >= 12

2. 前端运行
```
# 安装依赖
yarn --registry=https://registry.npmmirror.com

# 启动服务
yarn dev

# 构建测试环境 yarn build:stage
# 构建生产环境 yarn build:prod
# 前端访问地址 http://localhost:80
```

2. 后端运行
IDEA开箱即用

## 部署
1. 服务器启动依赖容器-Redis
```bash
#!/bin/bash

containerName="MyWeb01-Redis"
RedisData="/root/MyWeb01/Redis/data"

docker run  -d --name "$containerName" \
            -v "$RedisData":/data \
            -p 6379:6379 \
            redis
```
2. 服务器启动依赖容器-Mysql
```bash
#!/bin/bash

containerName="MyWeb01-MySQL"
MySQLData="/root/MyWeb01/MySQL/data"

docker run  -d --name "$containerName" \
            -p 3306:3306 \
            -v "$MySQLData":/var/lib/mysql \
            -e MYSQL_ROOT_PASSWORD=1009 \
            mysql:8
```
   
3. 本地修改前后端源码配置
- 前端修改`vite.config.js`文件中的`server.proxy.'/dev-api'.target`为后端程序ip+port
- 后端修改`application-druid.yml`中`spring.datasource.druid.master.url`中ip为同服务器的mysql的docker别名
- 后端修改`application.yml`中`spring.redis.host`为同服务器的redis的docker别名
- 后端修改`application.yml`中`ruoyi.profile`为后台部署的docker的ruoyi自带文件保存路径


4. 本地打包前后端源码
- 前端执行命令行`yarn build:prod`
- 后端用IDEA执行`maven package`

5. 部署前端
