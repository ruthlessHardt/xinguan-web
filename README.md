# 基于动态规划的新冠物资管理系统的设计与实现

# （未来城市就物资部分的局部雏形）
## 任务1（2021.2.9）

---
用户以及权限数据库表

普通用户表xg_n_user

| 字段名        | 数据类型 | 长度 | 键   | 描述               |
| ------------- | :------- | ---- | ---- | ------------------ |
| n_id          | varchar2 | 4    | 主键 | 用户编号           |
| n_uname       | varchar2 | 10   |      | 用户名             |
| n_password    | varchar2 | 16   |      | 用户密码           |
| n_phone       | varchar2 | 11   |      | 用户电话           |
| n_sex         | varchar2 | 2    |      | 用户性别           |
| n_dept        | varchar2 | 10   |      | 用户所属部门、机构 |
| n_role_id     | varchar2 | 4    | 外键 | 用户角色id         |
| n_create_time | date     |      |      | 创建时间           |
| state         | varchar2 | 2    |      | 是否删除           |
| create_by     | varchar2 | 10   |      | 谁创建的           |
| avatar        | varchar2 | 255  |      | 用户头像           |

角色表

| 字段名        | 数据类型 | 长度 | 键   | 描述               |
| ------------- | :------- | ---- | ---- | ------------------ |
| n_id          | varchar2 | 4    | 主键 | 用户编号           |
| n_uname       | varchar2 | 10   |      | 用户名             |
| n_password    | varchar2 | 16   |      | 用户密码           |
| n_phone       | varchar2 | 11   |      | 用户电话           |
| n_sex         | varchar2 | 2    |      | 用户性别           |
| n_dept        | varchar2 | 10   |      | 用户所属部门、机构 |
| n_role_id     | varchar2 | 4    | 外键 | 用户角色id         |
| n_create_time | date     |      |      | 创建时间           |
| n_state       | varchar2 | 2    |      | 是否删除           |
---

## 2021.2.9更新（对象划分）

### 关于对象设置：

**超级管理员1名** 

**一级管理者32名**

**二级管理者若干（由一级管理者注册生成）**

**使用成员自行注册（大众级别）。**

#### 各对象权限设置:

超级管理员**最高权限**。可分配所有权限

一级管理者**一级权限**。可分配二级的权限。

二级管理者**二级权限**。不可分配权限。

使用成员**普通成员权限**。

#### 各对象职能：

超级管理员：管理所有。负责处理涉及高权限的事务。例如处理一级管理者的事务、重置一级管理者账号或密码。操作日志。

#### 一级管理者：管理直接下属成员。负责：

* 通知管理：主动性发放物资的策划书、表下放，系统公共通知栏通知
* 物资管理：和供货商对接。只涉及线上。（涉及另外一端【供应端】）；物资操作管理：物资入库、出库、发放等确认（设定时任务，超12小时未处理系统智能处理，并写入处理日志）
  * 物资资料
  * 物资类别
  * 物资入库（确认操作）
  * 物资出库（确认操作）
  * 物资流向
  * 物资发放（确认操作）
* 菜单管理
* 角色管理（向下兼容）
* 权限管理（向下兼容）
* 疫情监控

#### 二级管理者：管理下属成员，负责：

* 物资管理
  * 物资资料
  * 物资类别
  * 物资入库
  * 物资出库
  * 物资流向

* 物资发放管理（获得上级回执才可发放，除特级紧急程度自发，需报备）
  * 物资发放
* 系统动态规划方案（可修改，生成策划书）
* 权限管理（向下兼容）
* 疫情监控
* 用户管理
* 反馈管理

#### 使用成员（自行注册生成，需手机验证）：

* 疫情监控

* 我的申请
* 反馈中心
* 个人中心

---



**@Author:liwentao**

### RuthlessHardt

## 功能需求分析

>> ### 业务模块
>
>* 物资分配推荐
>
> ###  		**根据物资调度（动态规划）**
>
>* 物资需求显示
>
>* 物资管理
>
>* 物资去处（条件搜索，列表显示，添加物资去向）
>* 入库记录（条件查询，**时间区间**，+入库，**导出excel数据表**）
>* 物资资料（条件查询，物资资料添加）
>* 物资类别（物资类别添加，数据信息修改、删除）
>* 物资来源（条件搜索，来源添加、编辑、删除）
>* 发放记录（条件查询、物资发放-**填写物资放发表并选择发放的物资和数量**-**审核**-**发放**）
>* 物资库存（数据可视化）要求：库存条形图，库存占比图，库存列表（可搜索）
>
>* 健康报备（派送物资人员的健康报备）
>
>* 健康打卡（包含打卡和打卡记录）
>
>* 监控中心（）
>
>* 登录日志
>* 操作日志
>
>* **疫情实况（数据可视化）Echart参考百度Echart**
>
>* 其他
>
>* 登陆注册
>* 设置中心
>
>>### 系统模块
>
>* 用户管理
>* 菜单管理
>* 权限管理
>
>### 说明：列表均分页（PageHelper）
>
>

----

## 技术支持

---

s

---

## **数据库表设计**(待拆解)

### 物资资料表（xg_material_info）

| 字段名                  | 数据类型 | 长度 | 是否NULL | 键   | 注释               |
| ----------------------- | -------- | ---- | -------- | ---- | ------------------ |
| info_id                 | bigint   | 20   | 否       | 主键 | 资料ID             |
| material_name           | varchar  | 255  | 否       |      | 物资名             |
| material_img            | varchar  | 255  | 是       |      | 物资图片           |
| meterial_type_id        | char     | 4    | 否       | 外键 | 物资分类ID         |
| meterial_id             | varchar  | 255  | 否       |      | 物资编号           |
| meterial_specifications | varchar  | 255  | 否       |      | 物资规格           |
| meterial_unit           | varchar  | 255  | 否       |      | 单位               |
| meterial_desc           | varchar  | 255  | 否       |      | 物资描述           |
| status                  | tinyint  | 1    | 否       |      | 状态,0-正常,1-删除 |
| create_time             | datetime | 0    | 否       |      | 创建时间           |
| update_time             | datetime | 0    | 否       |      | 修改时间           |

### 物资类别表（xg_material_type）

| 字段名      | 数据类型 | 长度 | 是否NULL | 键   | 注释               |
| ----------- | -------- | ---- | -------- | ---- | ------------------ |
| type_id     | char     | 4    | 否       | 主键 | 物资分类ID         |
| type_name   | varchar  | 255  | 否       |      | 物资分类名称       |
| level       | char     | 4    | 否       |      | 层级               |
| type_desc   | varchar  | 255  | 否       |      | 类别备注           |
| status      | tinyint  | 1    | 否       |      | 状态,0-正常,1-删除 |
| create_time | datetime | 0    | 否       |      | 创建时间           |
| update_time | datetime | 0    | 否       |      | 修改时间           |

### 物资来源表（xg_material_from）

| 字段名             | 数据类型 | 长度 | 是否NULL | 键   | 注释                 |
| ------------------ | -------- | ---- | -------- | ---- | -------------------- |
| from_id            | char     | 4    | 否       | 主键 | 物资来源ID           |
| from_area_province | varchar  | 255  | 否       |      | 提供方地址的省份     |
| from_area_city     | varchar  | 255  | 否       |      | 提供方地址的市       |
| from_area_county   | varchar  | 255  | 否       |      | 提供方地址的区县     |
| from_area_address  | varchar  | 255  | 否       |      | 提供方地址的详细地址 |
| contacts           | varchar  | 255  | 否       |      | 联系人               |
| tel                | varchar  | 255  | 否       |      | 联系人电话           |
| from_desc          | varchar  | 255  | 否       |      | 来源备注             |
| status             | tinyint  | 1    | 否       |      | 状态,0-正常,1-删除   |
| create_time        | datetime | 0    | 否       |      | 创建时间             |
| update_time        | datetime | 0    | 否       |      | 修改时间             |

### 物资去向表（xg_material_to）

| 字段名           | 数据类型 | 长度 | 是否NULL | 键   | 注释               |
| ---------------- | -------- | ---- | -------- | ---- | ------------------ |
| to_id            | char     | 4    | 否       | 主键 | 物资去向ID         |
| to_area_province | varchar  | 255  | 否       |      | 物资去向的省份     |
| to_area_city     | varchar  | 255  | 否       |      | 物资去向的市       |
| to_area_county   | varchar  | 255  | 否       |      | 物资去向的区县     |
| to_area_address  | varchar  | 255  | 否       |      | 物资去向的详细地址 |
| contacts         | varchar  | 255  | 否       |      | 联系人             |
| tel              | varchar  | 255  | 否       |      | 联系人电话         |
| to_desc          | varchar  | 255  | 否       |      | 物资去向备注       |
| status           | tinyint  | 1    | 否       |      | 状态,0-正常,1-删除 |
| create_time      | datetime | 0    | 否       |      | 创建时间           |
| update_time      | datetime | 0    | 否       |      | 修改时间           |

### 入库记录表（xg_storage_record）

| 字段名             | 数据类型 | 长度 | 是否NULL | 键   | 注释               |
| ------------------ | -------- | ---- | -------- | ---- | ------------------ |
| id                 | char     | 4    | 否       | 主键 | 入库记录ID         |
| record_id          | char     | 4    | 否       |      | 入库记录单号       |
| material_category  | char     | 10   | 否       |      | 物资类别           |
| num                | varchar  | 255  | 否       |      | 物资数量           |
| from_id            | varchar  | 4    | 否       |      | 物资来源ID         |
| material_status    | varchar  | 100  | 否       |      | 物资入库状态       |
| operator           | varchar  | 100  | 否       |      | 操作员             |
| tel                | varchar  | 255  | 否       |      | 操作员电话         |
| material_supportor | varchar  | 255  | 否       |      | 物资提供方         |
| status             | tinyint  | 1    | 否       |      | 状态,0-正常,1-删除 |
| create_time        | datetime | 0    | 否       |      | 创建时间           |
| update_time        | datetime | 0    | 否       |      | 修改时间           |

### 发放记录表（xg_grant_record）

| 字段名             | 数据类型 | 长度 | 是否NULL | 键   | 注释               |
| ------------------ | -------- | ---- | -------- | ---- | ------------------ |
| id                 | char     | 4    | 否       | 主键 | 发放记录ID         |
| record_id          | char     | 4    | 否       |      | 发放记录单号       |
| grant_category     | char     | 10   | 否       |      | 发放类型           |
| num                | varchar  | 255  | 否       |      | 发放物资数量       |
| from_id            | varchar  | 4    | 否       |      | 物资来源ID         |
| to_id              | varchar  | 4    | 否       |      | 物资去向ID         |
| level              | varchar  | 4    | 否       |      | 物资紧急级别       |
| material_status    | varchar  | 100  | 否       |      | 物资状态           |
| operator           | varchar  | 100  | 否       |      | 操作员             |
| tel                | varchar  | 255  | 否       |      | 操作员电话         |
| material_supportor | varchar  | 255  | 否       |      | 物资提供方         |
| status             | tinyint  | 1    | 否       |      | 状态,0-正常,1-删除 |
| create_time        | datetime | 0    | 否       |      | 创建时间           |
| update_time        | datetime | 0    | 否       |      | 修改时间           |

### 物资库存表（xg_material_stock）

| 字段名      | 数据类型 | 长度 | 是否NULL | 键   | 注释       |
| ----------- | -------- | ---- | -------- | ---- | ---------- |
| id          | char     | 4    | 否       | 主键 | 库存ID     |
| info_id     | char     | 4    | 否       |      | 物资资料ID |
| from_id     | varchar  | 4    | 否       |      | 物资来源ID |
| create_time | datetime | 0    | 否       |      | 创建时间   |
| update_time | datetime | 0    | 否       |      | 修改时间   |

## **外部**：

### 健康报备表（xg_health_report）

| 字段名                    | 数据类型 | 长度 | 是否NULL | 键   | 注释             |
| ------------------------- | -------- | ---- | -------- | ---- | ---------------- |
| id                        | char     | 4    | 否       | 主键 | 健康报备ID       |
| name                      | char     | 10   | 否       |      | 报备人姓名       |
| from_address              | varchar  | 255  | 否       |      | from地址         |
| current_address           | varchar  | 255  | 否       |      | 当前地址所在地   |
| whether_been_to_risk_area | varchar  | 2    | 否       |      | 是否去过高危地区 |
| temperature               | double   | 20   | 否       |      | 体温             |
| respiratory_disease       | varchar  | 2    | 否       |      | 是否有呼吸道疾病 |
| weakness                  | varchar  | 2    | 否       |      | 是否乏力         |
| digestive_diseases        | varchar  | 2    | 否       |      | 是否有消化疾病   |
| travel_plan               | varchar  | 2    | 否       |      | 是否有出差计划   |
| other_diseases            | varchar  | 255  | 是       |      | 其他症状         |
| create_time               | datetime | 0    | 否       |      | 创建时间         |
| update_time               | datetime | 0    | 否       |      | 修改时间         |

## 系统模块（菜单管理等待定）

### 用户表（xg_material_stock）

| 字段名      | 数据类型 | 长度 | 是否NULL | 键   | 注释         |
| ----------- | -------- | ---- | -------- | ---- | ------------ |
| id          | char     | 4    | 否       | 主键 | 用户ID       |
| user_name   | varchar  | 255  | 否       |      | 用户姓名     |
| pass_word   | varchar  | 255  | 否       |      | 用户密码     |
| sex         | varchar  | 4    | 否       |      | 用户性别     |
| tel         | varchar  | 11   | 否       |      | 用户联系方式 |
| nickname    | varchar  | 25   | 否       |      | 用户昵称     |
| create_time | datetime | 0    | 否       |      | 创建时间     |
| update_time | datetime | 0    | 否       |      | 修改时间     |

### 菜单表

### 二级菜单表

### 
