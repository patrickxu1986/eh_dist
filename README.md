## eh_highway

#### 1. 系统及软件要求

系统: CentOS7.4 ↑

软件: docker、nginx、mysql

#### 2. 配置

执行 config.sh

```shell
sh config.sh
```

#### 3.初始化数据库

将init.sql 导入到mysql

进入 /home/java_app/ex_highway文件夹，修改application.yml文件中的数据相关配置信息为你机器上的数据库信息

#### 4. 运行

```shell
cd /home/java_app/ex_highway
sh run.sh
```



