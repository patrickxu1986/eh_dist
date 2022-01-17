## eh_highway

#### 1. 系统及软件要求

系统: CentOS7.4 ↑

软件: docker、nginx、mysql

#### 2. 配置

下载执行 config.sh

```shell
sh config.sh
```

#### 3.初始化数据库

进入 **/home/java_app/ex_highway**文件夹

将**init.sql**导入到mysql

将**application.yml**文件中的数据库相关域名、用户名、密码等配置信息修改为你机器上的数据库信息

#### 4. 运行

```shell
cd /home/java_app/ex_highway
sh run.sh
```



