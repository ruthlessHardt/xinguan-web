/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云服务器mysql
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 47.117.78.75:3306
 Source Schema         : xgwz

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 03/06/2021 21:44:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, 'sdsasdadd');
INSERT INTO `test` VALUES (2, '2131231232131');

-- ----------------------------
-- Table structure for xg_grant_record
-- ----------------------------
DROP TABLE IF EXISTS `xg_grant_record`;
CREATE TABLE `xg_grant_record`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `record_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grant_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info_id` int(20) NOT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_id` int(20) NOT NULL,
  `to_id` int(20) NOT NULL,
  `level` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_supportor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_grant_record
-- ----------------------------
INSERT INTO `xg_grant_record` VALUES (15, '1619086285555XgWzGrantxqumqkh36qeo', '治疗类', 2, '41', 43, 22, '3', '已发放', 'admin', '1302351111', '瑞亚健康管理(深圳)有限公司', '1', '2021-04-22 18:11:25', NULL);
INSERT INTO `xg_grant_record` VALUES (17, '1619160022220XgWzGrant6wm52v6jdl7q', '治疗类', 2, '110', 49, 24, '3', '已发放', 'admin', '1302351111', '瑞亚健康管理(深圳)有限公司', '1', '2021-04-23 14:40:22', NULL);
INSERT INTO `xg_grant_record` VALUES (18, '1619252055644XgWzGrantk177yimz0uq1', '防护类', 3, '299', 44, 25, '3', '审核中', 'admin', '1302351111', '浙江欧诺机械有限公司', '0', '2021-04-24 16:14:15', '2021-04-24 16:45:47');
INSERT INTO `xg_grant_record` VALUES (19, '1619254359899XgWzGrant3j3g6vm5qghz', '诊断类', 10, '101', 52, 26, '2', '已发放', 'admin', '1302351111', '深圳市维鼎康联信息技术有限公司', '1', '2021-04-24 16:52:39', NULL);
INSERT INTO `xg_grant_record` VALUES (20, '1619679276801XgWzGrantngb735aemmzr', '医学仪器', 12, '122', 50, 27, '2', '已发放', 'admin', '1302351111', '江苏鱼跃集团', '1', '2021-04-29 14:54:36', NULL);
INSERT INTO `xg_grant_record` VALUES (21, '1619681332813XgWzGrant871n9sufo2b9', '防护类', 3, '10000', 44, 28, '4', '已发放', 'admin', '1302351111', '浙江欧诺机械有限公司', '1', '2021-04-29 15:28:52', NULL);
INSERT INTO `xg_grant_record` VALUES (22, '1619681461689XgWzGrantlq0qbn48pcpl', '防护类', 9, '100', 45, 29, '3', '已发放', 'admin', '1302351111', '济南一星电子有限公司', '1', '2021-04-29 15:31:01', NULL);
INSERT INTO `xg_grant_record` VALUES (23, '1619681537857XgWzGranttcum8inushzm', '诊断类', 10, '100', 52, 30, '2', '已发放', 'admin', '1302351111', '深圳市维鼎康联信息技术有限公司', '1', '2021-04-29 15:32:17', NULL);
INSERT INTO `xg_grant_record` VALUES (24, '1619681652024XgWzGrantdle6iq0x9ls8', '电器类', 11, '201', 51, 31, '1', '已发放', 'admin', '1302351111', '广东美的电器股份有限公司', '1', '2021-04-29 15:34:12', NULL);
INSERT INTO `xg_grant_record` VALUES (25, '1619682066528XgWzGrantcjkkjm3kv9hz', '其他', 8, '10', 54, 32, '4', '已发放', 'admin', '1302351111', '申宝帐篷（广州）有限公司', '1', '2021-04-29 15:41:06', NULL);
INSERT INTO `xg_grant_record` VALUES (26, '1619776353106XgWzGrante88qib76y0i8', '防护类', 3, '19000', 44, 33, '3', '已发放', 'admin', '1302351111', '浙江欧诺机械有限公司', '1', '2021-04-30 17:52:33', NULL);
INSERT INTO `xg_grant_record` VALUES (27, '1619776431275XgWzGrantunbrw0ausw1f', '防护类', 3, '400000', 44, 34, '2', '已发放', 'admin', '1302351111', '浙江欧诺机械有限公司', '1', '2021-04-30 17:53:51', NULL);
INSERT INTO `xg_grant_record` VALUES (28, '1619776527233XgWzGrant188iaafjtx1g', '防护类', 9, '10000', 45, 35, '2', '审核中', 'admin', '1302351111', '济南一星电子有限公司', '0', '2021-04-30 17:55:27', '2021-04-30 17:57:10');
INSERT INTO `xg_grant_record` VALUES (29, '1619776754118XgWzGrant95x02pdy47lr', '防护类', 3, '400000', 44, 36, '3', '已发放', 'admin', '1302351111', '浙江欧诺机械有限公司', '1', '2021-04-30 17:59:14', NULL);
INSERT INTO `xg_grant_record` VALUES (30, '1619776846584XgWzGrant6xno4giemu3i', '防护类', 3, '100000', 44, 37, '2', '已发放', 'admin', '1302351111', '浙江欧诺机械有限公司', '1', '2021-04-30 18:00:46', NULL);
INSERT INTO `xg_grant_record` VALUES (31, '1619777056327XgWzGrantq9hcyghmig22', '防护类', 3, '40000', 44, 38, '2', '已发放', 'admin', '1302351111', '浙江欧诺机械有限公司', '1', '2021-04-30 18:04:16', NULL);
INSERT INTO `xg_grant_record` VALUES (32, '1619777143376XgWzGrantou5lgv6vg21k', '其他', 16, '80000', 55, 39, '3', '已发放', 'admin', '1302351111', ' 潍坊富乐新材料有限公司济南分公司', '1', '2021-04-30 18:05:43', NULL);
INSERT INTO `xg_grant_record` VALUES (33, '1620362112792XgWzGrantl89y9hkrpk89', '防护类', 15, '1000', 48, 40, '2', '审核中', 'admin', '1302351111', '山东朱氏药业集团有限公司', '1', '2021-05-07 12:35:12', '2021-05-27 18:49:13');

-- ----------------------------
-- Table structure for xg_health_report
-- ----------------------------
DROP TABLE IF EXISTS `xg_health_report`;
CREATE TABLE `xg_health_report`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `card_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `people` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `current_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `whether_been_to_risk_area` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `temperature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `respiratory_disease` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `digestive_diseases` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `travel_plan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_diseases` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_health_report
-- ----------------------------
INSERT INTO `xg_health_report` VALUES (1, '314908192909123s2X', '濮承天', '男', '汉族', '16223510511', '江苏省南京市仙鹤门街道仙居雅苑45栋413号', '江苏省南京市', '否', '36.9', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (2, '312312123210123123', '容促', '男', '汉族', '15045361511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (3, '314908192909123120', '崔贤', '男', '汉族', '16218911231', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (4, '32098119690912312y', '崔妍', '男', '汉族', '16342350511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (5, '365419980909123123', '车阳炎', '男', '汉族', '14012127318', '江苏省南京市仙鹤门街道仙居华庭5栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (6, '314908199902111123', '白俊驰', '男', '汉族', '14023510517', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (7, '314912199109123127', '毛玉树', '男', '汉族', '17975321511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (8, '314908192909364536', '扶欣怿', '男', '汉族', '18888510511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (9, '314908192909123123', '古安福', '男', '汉族', '16799910511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (10, '405991979213123288', '农元忠', '男', '汉族', '17763462511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '36.9', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (11, '42918319920839231y', '邵锐意', '男', '汉族', '13222230511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '36.9', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (12, '31490819822123123x', '叶迎蓉', '男', '蒙古族', '17023510511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '36.9', '否', '否', '无', '无', '1', '2021-04-11 18:27:31', NULL);
INSERT INTO `xg_health_report` VALUES (13, '314908192909123123', '马德华', '男', '汉族', '17211211511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '36.9', '否', '否', '无', '无', '1', '2021-04-13 14:00:29', NULL);
INSERT INTO `xg_health_report` VALUES (14, '322131223121275715', '张迈', '女', '汉族', '19123518881', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '36.9', '否', '否', '无', '无', '1', '2021-04-13 14:19:21', NULL);
INSERT INTO `xg_health_report` VALUES (15, '420981197812285716', '邓琳', '女', '回族', '13023505112', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.9', '否', '否', '无', '无', '1', '2021-04-13 17:47:50', NULL);
INSERT INTO `xg_health_report` VALUES (16, '421281196812246871', '张勇', '男', '汉族', '13223510511', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.9', '否', '否', '无', '无', '1', '2021-04-13 17:51:07', NULL);
INSERT INTO `xg_health_report` VALUES (17, '320981991856984485', '韩孜孜', '男', '汉族', '17223510547', '江苏省南京市仙鹤门街道仙居雅苑45栋403号', '江苏省南京市', '否', '35.5', '否', '否', '无', '无', '1', '2021-04-13 17:52:37', NULL);
INSERT INTO `xg_health_report` VALUES (18, '320981197712072751', '马腾飞', '女', '汉', '13023510511', '江苏省南京市', '江苏省南京市', '否', '35.9', '否', '否', '无', '无', '1', '2021-04-25 16:33:53', NULL);
INSERT INTO `xg_health_report` VALUES (19, '320981199812275716', '李文涛', '男', '汉', '13023510511', '江苏南京', '江苏南京', '否', '36.7', '否', '否', '无', '无', '1', '2021-04-30 20:25:07', NULL);
INSERT INTO `xg_health_report` VALUES (20, '320981199812275716', '孙小果', '女', '回族', '13053215461', '新疆乌鲁木齐', '江苏无锡', '否', '36.9', '否', '否', '无', '无', '1', '2021-05-01 08:45:55', NULL);
INSERT INTO `xg_health_report` VALUES (21, '320981199812109676', '芮佳铭', '男', '汉', '13023510211', '江苏无锡', '江苏南京', '否', '35.6', '否', '否', '无', '无', '1', '2021-05-10 14:19:22', NULL);
INSERT INTO `xg_health_report` VALUES (22, '320981199812275715', '张张', '男', '汉', '14023514512', '江苏徐州', '江苏徐州', '否', '36.7', '否', '否', '无', '无', '1', '2021-05-27 00:19:03', NULL);

-- ----------------------------
-- Table structure for xg_log
-- ----------------------------
DROP TABLE IF EXISTS `xg_log`;
CREATE TABLE `xg_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作事件',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作人',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3973 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_log
-- ----------------------------
INSERT INTO `xg_log` VALUES (137, '1615957121332-944478328', '1', '在2021-03-17 at 12:58:41 CST,操作了阿萨德账户', 'admin', '2021-03-17 12:58:41', NULL, '1');
INSERT INTO `xg_log` VALUES (140, '1615957124885-1197001260', '1', '在2021-03-17 at 12:58:44 CST,操作了aquan账户', 'admin', '2021-03-17 12:58:44', NULL, '1');
INSERT INTO `xg_log` VALUES (143, '1615957137969-1350654528', '1', '在2021-03-17 at 12:58:57 CST,操作了master账户', 'admin', '2021-03-17 12:58:57', NULL, '1');
INSERT INTO `xg_log` VALUES (146, '16159571424907114356', '1', '在2021-03-17 at 12:59:02 CST,操作了zcxx账户', 'admin', '2021-03-17 12:59:02', NULL, '1');
INSERT INTO `xg_log` VALUES (149, '1615957146874903591425', '1', '在2021-03-17 at 12:59:06 CST,操作了aacccc账户', 'admin', '2021-03-17 12:59:06', NULL, '1');
INSERT INTO `xg_log` VALUES (152, '1615957152706-1277559317', '1', '在2021-03-17 at 12:59:12 CST,操作了xmind账户', 'admin', '2021-03-17 12:59:12', NULL, '1');
INSERT INTO `xg_log` VALUES (159, '1615957160956-387066129', '1', '在2021-03-17 at 12:59:20 CST,操作了12法复账户', 'admin', '2021-03-17 12:59:20', NULL, '1');
INSERT INTO `xg_log` VALUES (179, '1615972516524-215722953', '1', '在2021-03-17 at 17:15:16 CST,admin登录系统', 'admin', '2021-03-17 17:15:16', NULL, '1');
INSERT INTO `xg_log` VALUES (202, '1616031563357-215722953', '1', '在2021-03-18 at 09:39:23 CST,admin登录系统', 'admin', '2021-03-18 09:39:23', NULL, '1');
INSERT INTO `xg_log` VALUES (206, '1616038588997-215722953', '1', '在2021-03-18 at 11:36:28 CST,admin登录系统', 'admin', '2021-03-18 11:36:28', NULL, '1');
INSERT INTO `xg_log` VALUES (209, '16160386135471934674721', '1', '在2021-03-18 at 11:36:53 CST,操作了admin账户', 'admin', '2021-03-18 11:36:53', NULL, '1');
INSERT INTO `xg_log` VALUES (229, '1616067661386105289282', '2', '在2021-03-18 at 19:41:01 CST,admin登录系统', 'admin', '2021-03-18 19:41:01', NULL, '1');
INSERT INTO `xg_log` VALUES (232, '1616087865875105289282', '2', '在2021-03-19 at 01:17:45 CST,admin登录系统', 'admin', '2021-03-19 01:17:45', NULL, '1');
INSERT INTO `xg_log` VALUES (233, '1616128173044105289282', '2', '在2021-03-19 at 12:29:33 CST,admin登录系统', 'admin', '2021-03-19 12:29:33', NULL, '1');
INSERT INTO `xg_log` VALUES (531, '1617780999917105289282', '0', '在2021-04-07 at 15:36:39 CST,admin登录系统', 'admin', '2021-04-07 15:36:39', NULL, '1');
INSERT INTO `xg_log` VALUES (541, '1617782743797105289282', '0', '在2021-04-07 at 16:05:43 CST,admin登录系统', 'admin', '2021-04-07 16:05:43', NULL, '1');
INSERT INTO `xg_log` VALUES (550, '1617783129821', '2', 'admin于2021-04-07 at 16:12:09 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-07 16:12:09', NULL, '1');
INSERT INTO `xg_log` VALUES (551, '1617783129843', '2', 'admin于2021-04-07 at 16:12:09 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-07 16:12:09', NULL, '1');
INSERT INTO `xg_log` VALUES (569, '1617784025234', '2', 'admin于2021-04-07 at 16:27:05 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-07 16:27:05', NULL, '1');
INSERT INTO `xg_log` VALUES (570, '1617784081814', '2', 'admin于2021-04-07 at 16:28:01 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-07 16:28:01', NULL, '1');
INSERT INTO `xg_log` VALUES (572, '1617784085905', '2', 'admin于2021-04-07 at 16:28:05 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-07 16:28:05', NULL, '1');
INSERT INTO `xg_log` VALUES (596, '1617785313028', '2', 'admin于2021-04-07 at 16:48:33 CST对物资进行了删除物资资料操作,识别码：4', 'admin', '2021-04-07 16:48:33', NULL, '1');
INSERT INTO `xg_log` VALUES (598, '1617785555918', '2', 'admin于2021-04-07 at 16:52:35 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-07 16:52:35', NULL, '1');
INSERT INTO `xg_log` VALUES (621, '1617786658266', '2', 'admin于2021-04-07 at 17:10:58 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-07 17:10:58', NULL, '1');
INSERT INTO `xg_log` VALUES (628, '1617786919411', '2', 'admin于2021-04-07 at 17:15:19 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-07 17:15:19', NULL, '1');
INSERT INTO `xg_log` VALUES (630, '1617787081178', '2', 'admin于2021-04-07 at 17:18:01 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-07 17:18:01', NULL, '1');
INSERT INTO `xg_log` VALUES (652, '1617788780377105289282', '0', '在2021-04-07 at 17:46:20 CST,admin登录系统', 'admin', '2021-04-07 17:46:20', NULL, '1');
INSERT INTO `xg_log` VALUES (654, '1617788849938105289282', '0', '在2021-04-07 at 17:47:29 CST,admin登录系统', 'admin', '2021-04-07 17:47:29', NULL, '1');
INSERT INTO `xg_log` VALUES (707, '1617791930856105289282', '0', '在2021-04-07 at 18:38:50 CST,admin登录系统', 'admin', '2021-04-07 18:38:50', NULL, '1');
INSERT INTO `xg_log` VALUES (743, '1617793006466105289282', '0', '在2021-04-07 at 18:56:46 CST,admin登录系统', 'admin', '2021-04-07 18:56:46', NULL, '1');
INSERT INTO `xg_log` VALUES (774, '1617801640177105289282', '0', '在2021-04-07 at 21:20:40 CST,admin登录系统', 'admin', '2021-04-07 21:20:40', NULL, '1');
INSERT INTO `xg_log` VALUES (939, '1617808441545', '2', 'admin于2021-04-07 at 23:14:01 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-07 23:14:01', NULL, '1');
INSERT INTO `xg_log` VALUES (946, '1617808504704133025461', '0', '在2021-04-07 at 23:15:04 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-07 23:15:04', NULL, '1');
INSERT INTO `xg_log` VALUES (955, '1617808550020105289282', '0', '在2021-04-07 at 23:15:50 CST,admin登录系统', 'admin', '2021-04-07 23:15:50', NULL, '1');
INSERT INTO `xg_log` VALUES (969, '1617847858679105289282', '0', '在2021-04-08 at 10:10:58 CST,admin登录系统', 'admin', '2021-04-08 10:10:58', NULL, '1');
INSERT INTO `xg_log` VALUES (970, '1617898656772105289282', '0', '在2021-04-09 at 00:17:36 CST,admin登录系统', 'admin', '2021-04-09 00:17:36', NULL, '1');
INSERT INTO `xg_log` VALUES (981, '1617939133909105289282', '0', '在2021-04-09 at 11:32:13 CST,admin登录系统', 'admin', '2021-04-09 11:32:13', NULL, '1');
INSERT INTO `xg_log` VALUES (1007, '1618039941337105289282', '0', '在2021-04-10 at 15:32:21 CST,admin登录系统', 'admin', '2021-04-10 15:32:21', NULL, '1');
INSERT INTO `xg_log` VALUES (1009, '1618040086352', '1', 'admin于2021-04-10 at 15:34:46 CST对用户进行了修改用户角色信息操作,识别码：41', 'admin', '2021-04-10 15:34:46', NULL, '1');
INSERT INTO `xg_log` VALUES (1015, '1618053727912105289282', '0', '在2021-04-10 at 19:22:07 CST,admin登录系统', 'admin', '2021-04-10 19:22:07', NULL, '1');
INSERT INTO `xg_log` VALUES (1043, '1618062815189105289282', '0', '在2021-04-10 at 21:53:35 CST,admin登录系统', 'admin', '2021-04-10 21:53:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1067, '1618065123552105289282', '0', '在2021-04-10 at 22:32:03 CST,admin登录系统', 'admin', '2021-04-10 22:32:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1068, '1618066880526105289282', '0', '在2021-04-10 at 23:01:20 CST,admin登录系统', 'admin', '2021-04-10 23:01:20', NULL, '1');
INSERT INTO `xg_log` VALUES (1077, '1618067114554', '2', 'admin于2021-04-10 at 23:05:14 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-10 23:05:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1078, '1618067114575', '2', 'admin于2021-04-10 at 23:05:14 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-10 23:05:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1093, '1618067409042', '1', 'admin于2021-04-10 at 23:10:09 CST对用户进行了删除用户信息操作,识别码：36', 'admin', '2021-04-10 23:10:09', NULL, '1');
INSERT INTO `xg_log` VALUES (1102, '1618067418911', '1', 'admin于2021-04-10 at 23:10:18 CST对用户进行了删除用户信息操作,识别码：45', 'admin', '2021-04-10 23:10:18', NULL, '1');
INSERT INTO `xg_log` VALUES (1112, '1618067881919', '1', 'admin于2021-04-10 at 23:18:01 CST对用户进行了删除用户信息操作,识别码：36', 'admin', '2021-04-10 23:18:01', NULL, '1');
INSERT INTO `xg_log` VALUES (1114, '1618067883517', '1', 'admin于2021-04-10 at 23:18:03 CST对用户进行了删除用户信息操作,识别码：36', 'admin', '2021-04-10 23:18:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1118, '1618067894359', '1', 'admin于2021-04-10 at 23:18:14 CST对用户进行了删除用户信息操作,识别码：44', 'admin', '2021-04-10 23:18:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1120, '1618067895414', '1', 'admin于2021-04-10 at 23:18:15 CST对用户进行了删除用户信息操作,识别码：44', 'admin', '2021-04-10 23:18:15', NULL, '1');
INSERT INTO `xg_log` VALUES (1124, '1618067919846', '1', 'admin于2021-04-10 at 23:18:39 CST对用户进行了删除用户信息操作,识别码：43', 'admin', '2021-04-10 23:18:39', NULL, '1');
INSERT INTO `xg_log` VALUES (1127, '1618067921075', '1', 'admin于2021-04-10 at 23:18:41 CST对用户进行了删除用户信息操作,识别码：43', 'admin', '2021-04-10 23:18:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1130, '1618067921249', '1', 'admin于2021-04-10 at 23:18:41 CST对用户进行了删除用户信息操作,识别码：43', 'admin', '2021-04-10 23:18:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1133, '1618067922179', '1', 'admin于2021-04-10 at 23:18:42 CST对用户进行了删除用户信息操作,识别码：44', 'admin', '2021-04-10 23:18:42', NULL, '1');
INSERT INTO `xg_log` VALUES (1136, '1618067922932', '1', 'admin于2021-04-10 at 23:18:42 CST对用户进行了删除用户信息操作,识别码：45', 'admin', '2021-04-10 23:18:42', NULL, '1');
INSERT INTO `xg_log` VALUES (1139, '1618067923500', '1', 'admin于2021-04-10 at 23:18:43 CST对用户进行了删除用户信息操作,识别码：42', 'admin', '2021-04-10 23:18:43', NULL, '1');
INSERT INTO `xg_log` VALUES (1142, '1618067934901', '1', 'admin于2021-04-10 at 23:18:54 CST对用户进行了删除用户信息操作,识别码：43', 'admin', '2021-04-10 23:18:54', NULL, '1');
INSERT INTO `xg_log` VALUES (1149, '1618067963583', '1', 'admin于2021-04-10 at 23:19:23 CST对用户进行了删除用户信息操作,识别码：43', 'admin', '2021-04-10 23:19:23', NULL, '1');
INSERT INTO `xg_log` VALUES (1156, '1618067988171', '1', 'admin于2021-04-10 at 23:19:48 CST对用户进行了删除用户信息操作,识别码：42', 'admin', '2021-04-10 23:19:48', NULL, '1');
INSERT INTO `xg_log` VALUES (1168, '1618068315099', '1', 'admin于2021-04-10 at 23:25:15 CST对用户进行了删除用户信息操作,识别码：44', 'admin', '2021-04-10 23:25:15', NULL, '1');
INSERT INTO `xg_log` VALUES (1175, '1618068352089', '1', 'admin于2021-04-10 at 23:25:52 CST对用户进行了删除用户信息操作,识别码：42', 'admin', '2021-04-10 23:25:52', NULL, '1');
INSERT INTO `xg_log` VALUES (1180, '1618068358265', '1', 'admin于2021-04-10 at 23:25:58 CST对用户进行了删除用户信息操作,识别码：42', 'admin', '2021-04-10 23:25:58', NULL, '1');
INSERT INTO `xg_log` VALUES (1187, '1618068436420', '1', 'admin于2021-04-10 at 23:27:16 CST对用户进行了删除用户信息操作,识别码：37', 'admin', '2021-04-10 23:27:16', NULL, '1');
INSERT INTO `xg_log` VALUES (1191, '1618068440034', '1', 'admin于2021-04-10 at 23:27:20 CST对用户进行了删除用户信息操作,识别码：27', 'admin', '2021-04-10 23:27:20', NULL, '1');
INSERT INTO `xg_log` VALUES (1195, '1618068442412', '1', 'admin于2021-04-10 at 23:27:22 CST对用户进行了删除用户信息操作,识别码：24', 'admin', '2021-04-10 23:27:22', NULL, '1');
INSERT INTO `xg_log` VALUES (1255, '1618072490635', '2', 'admin于2021-04-11 at 00:34:50 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 00:34:50', NULL, '1');
INSERT INTO `xg_log` VALUES (1262, '1618072633420', '2', 'admin于2021-04-11 at 00:37:13 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 00:37:13', NULL, '1');
INSERT INTO `xg_log` VALUES (1270, '1618072701007', '2', 'admin于2021-04-11 at 00:38:21 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 00:38:21', NULL, '1');
INSERT INTO `xg_log` VALUES (1274, '1618072819190', '2', 'admin于2021-04-11 at 00:40:19 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 00:40:19', NULL, '1');
INSERT INTO `xg_log` VALUES (1345, '1618074097398', '2', 'admin于2021-04-11 at 01:01:37 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:01:37', NULL, '1');
INSERT INTO `xg_log` VALUES (1346, '1618074103355', '2', 'admin于2021-04-11 at 01:01:43 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (1353, '1618074169655', '2', 'admin于2021-04-11 at 01:02:49 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:02:49', NULL, '1');
INSERT INTO `xg_log` VALUES (1355, '1618074172916', '2', 'admin于2021-04-11 at 01:02:52 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:02:52', NULL, '1');
INSERT INTO `xg_log` VALUES (1388, '1618075831758', '2', 'admin于2021-04-11 at 01:30:31 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:30:31', NULL, '1');
INSERT INTO `xg_log` VALUES (1391, '1618075895220', '2', 'admin于2021-04-11 at 01:31:35 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:31:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1395, '1618075910308', '2', 'admin于2021-04-11 at 01:31:50 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:31:50', NULL, '1');
INSERT INTO `xg_log` VALUES (1399, '1618075950558', '2', 'admin于2021-04-11 at 01:32:30 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:32:30', NULL, '1');
INSERT INTO `xg_log` VALUES (1405, '1618076124675', '2', 'admin于2021-04-11 at 01:35:24 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:35:24', NULL, '1');
INSERT INTO `xg_log` VALUES (1439, '1618076548577', '2', 'admin于2021-04-11 at 01:42:28 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:42:28', NULL, '1');
INSERT INTO `xg_log` VALUES (1441, '1618076563057', '2', 'admin于2021-04-11 at 01:42:43 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 01:42:43', NULL, '1');
INSERT INTO `xg_log` VALUES (1443, '1618076566285', '2', 'admin于2021-04-11 at 01:42:46 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:42:46', NULL, '1');
INSERT INTO `xg_log` VALUES (1445, '1618076615103', '2', 'admin于2021-04-11 at 01:43:35 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:43:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1447, '1618076689037', '2', 'admin于2021-04-11 at 01:44:49 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:44:49', NULL, '1');
INSERT INTO `xg_log` VALUES (1451, '1618076697248', '2', 'admin于2021-04-11 at 01:44:57 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:44:57', NULL, '1');
INSERT INTO `xg_log` VALUES (1455, '1618076776421', '2', 'admin于2021-04-11 at 01:46:16 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:46:16', NULL, '1');
INSERT INTO `xg_log` VALUES (1463, '1618076876720', '2', 'admin于2021-04-11 at 01:47:56 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:47:56', NULL, '1');
INSERT INTO `xg_log` VALUES (1468, '1618076889748', '2', 'admin于2021-04-11 at 01:48:09 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-11 01:48:09', NULL, '1');
INSERT INTO `xg_log` VALUES (1472, '1618076934873', '2', 'admin于2021-04-11 at 01:48:54 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 01:48:54', NULL, '1');
INSERT INTO `xg_log` VALUES (1474, '1618076941363', '2', 'admin于2021-04-11 at 01:49:01 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 01:49:01', NULL, '1');
INSERT INTO `xg_log` VALUES (1476, '1618076947865', '2', 'admin于2021-04-11 at 01:49:07 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 01:49:07', NULL, '1');
INSERT INTO `xg_log` VALUES (1488, '1618077058127', '2', 'admin于2021-04-11 at 01:50:58 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-11 01:50:58', NULL, '1');
INSERT INTO `xg_log` VALUES (1489, '1618077058138', '2', 'admin于2021-04-11 at 01:50:58 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-11 01:50:58', NULL, '1');
INSERT INTO `xg_log` VALUES (1495, '1618077151615', '2', 'admin于2021-04-11 at 01:52:31 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:31', NULL, '1');
INSERT INTO `xg_log` VALUES (1496, '1618077153752', '2', 'admin于2021-04-11 at 01:52:33 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:33', NULL, '1');
INSERT INTO `xg_log` VALUES (1497, '1618077154268', '2', 'admin于2021-04-11 at 01:52:34 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:34', NULL, '1');
INSERT INTO `xg_log` VALUES (1498, '1618077154673', '2', 'admin于2021-04-11 at 01:52:34 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:34', NULL, '1');
INSERT INTO `xg_log` VALUES (1499, '1618077155157', '2', 'admin于2021-04-11 at 01:52:35 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1500, '1618077155598', '2', 'admin于2021-04-11 at 01:52:35 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1501, '1618077156788', '2', 'admin于2021-04-11 at 01:52:36 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:36', NULL, '1');
INSERT INTO `xg_log` VALUES (1502, '1618077157136', '2', 'admin于2021-04-11 at 01:52:37 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:37', NULL, '1');
INSERT INTO `xg_log` VALUES (1503, '1618077157499', '2', 'admin于2021-04-11 at 01:52:37 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:37', NULL, '1');
INSERT INTO `xg_log` VALUES (1504, '1618077157700', '2', 'admin于2021-04-11 at 01:52:37 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:37', NULL, '1');
INSERT INTO `xg_log` VALUES (1505, '1618077160019', '2', 'admin于2021-04-11 at 01:52:40 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:40', NULL, '1');
INSERT INTO `xg_log` VALUES (1506, '1618077160673', '2', 'admin于2021-04-11 at 01:52:40 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:40', NULL, '1');
INSERT INTO `xg_log` VALUES (1507, '1618077161232', '2', 'admin于2021-04-11 at 01:52:41 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1508, '1618077161683', '2', 'admin于2021-04-11 at 01:52:41 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:52:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1519, '1618077243832', '2', 'admin于2021-04-11 at 01:54:03 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 01:54:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1520, '1618077243849', '2', 'admin于2021-04-11 at 01:54:03 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 01:54:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1524, '1618077252212', '2', 'admin于2021-04-11 at 01:54:12 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:54:12', NULL, '1');
INSERT INTO `xg_log` VALUES (1533, '1618077532477', '2', 'admin于2021-04-11 at 01:58:52 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 01:58:52', NULL, '1');
INSERT INTO `xg_log` VALUES (1534, '1618077532487', '2', 'admin于2021-04-11 at 01:58:52 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 01:58:52', NULL, '1');
INSERT INTO `xg_log` VALUES (1538, '1618077551318', '2', 'admin于2021-04-11 at 01:59:11 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 01:59:11', NULL, '1');
INSERT INTO `xg_log` VALUES (1544, '1618077674847', '2', 'admin于2021-04-11 at 02:01:14 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 02:01:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1545, '1618077674880', '2', 'admin于2021-04-11 at 02:01:14 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 02:01:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1549, '1618077685476', '2', 'admin于2021-04-11 at 02:01:25 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 02:01:25', NULL, '1');
INSERT INTO `xg_log` VALUES (1554, '1618077756211', '2', 'admin于2021-04-11 at 02:02:36 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 02:02:36', NULL, '1');
INSERT INTO `xg_log` VALUES (1555, '1618077756242', '2', 'admin于2021-04-11 at 02:02:36 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 02:02:36', NULL, '1');
INSERT INTO `xg_log` VALUES (1559, '1618077765351', '2', 'admin于2021-04-11 at 02:02:45 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 02:02:45', NULL, '1');
INSERT INTO `xg_log` VALUES (1563, '1618077881846', '2', 'admin于2021-04-11 at 02:04:41 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 02:04:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1564, '1618077881866', '2', 'admin于2021-04-11 at 02:04:41 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 02:04:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1568, '1618077888191', '2', 'admin于2021-04-11 at 02:04:48 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 02:04:48', NULL, '1');
INSERT INTO `xg_log` VALUES (1575, '1618077985762', '2', 'admin于2021-04-11 at 02:06:25 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 02:06:25', NULL, '1');
INSERT INTO `xg_log` VALUES (1576, '1618077985780', '2', 'admin于2021-04-11 at 02:06:25 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 02:06:25', NULL, '1');
INSERT INTO `xg_log` VALUES (1579, '1618077993749', '2', 'admin于2021-04-11 at 02:06:33 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 02:06:33', NULL, '1');
INSERT INTO `xg_log` VALUES (1583, '1618078022840', '2', 'admin于2021-04-11 at 02:07:02 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 02:07:02', NULL, '1');
INSERT INTO `xg_log` VALUES (1584, '1618078022849', '2', 'admin于2021-04-11 at 02:07:02 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 02:07:02', NULL, '1');
INSERT INTO `xg_log` VALUES (1587, '1618078029196', '2', 'admin于2021-04-11 at 02:07:09 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 02:07:09', NULL, '1');
INSERT INTO `xg_log` VALUES (1594, '1618078970456', '2', 'admin于2021-04-11 at 02:22:50 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:22:50', NULL, '1');
INSERT INTO `xg_log` VALUES (1595, '1618079084486', '2', 'admin于2021-04-11 at 02:24:44 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:24:44', NULL, '1');
INSERT INTO `xg_log` VALUES (1596, '1618079870538', '2', 'admin于2021-04-11 at 02:37:50 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:37:50', NULL, '1');
INSERT INTO `xg_log` VALUES (1597, '1618079933654', '2', 'admin于2021-04-11 at 02:38:53 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:38:53', NULL, '1');
INSERT INTO `xg_log` VALUES (1598, '1618080100460', '2', 'admin于2021-04-11 at 02:41:40 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:41:40', NULL, '1');
INSERT INTO `xg_log` VALUES (1599, '1618080144087', '2', 'admin于2021-04-11 at 02:42:24 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:42:24', NULL, '1');
INSERT INTO `xg_log` VALUES (1600, '1618080152946', '2', 'admin于2021-04-11 at 02:42:32 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:42:32', NULL, '1');
INSERT INTO `xg_log` VALUES (1601, '1618080179657', '2', 'admin于2021-04-11 at 02:42:59 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:42:59', NULL, '1');
INSERT INTO `xg_log` VALUES (1602, '1618080538411', '2', 'admin于2021-04-11 at 02:48:58 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:48:58', NULL, '1');
INSERT INTO `xg_log` VALUES (1603, '1618080546285', '2', 'admin于2021-04-11 at 02:49:06 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:49:06', NULL, '1');
INSERT INTO `xg_log` VALUES (1604, '1618080549794', '2', 'admin于2021-04-11 at 02:49:09 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:49:09', NULL, '1');
INSERT INTO `xg_log` VALUES (1616, '1618080698931', '2', 'admin于2021-04-11 at 02:51:38 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-11 02:51:38', NULL, '1');
INSERT INTO `xg_log` VALUES (1617, '1618080698947', '2', 'admin于2021-04-11 at 02:51:38 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-11 02:51:38', NULL, '1');
INSERT INTO `xg_log` VALUES (1620, '1618080705012', '2', 'admin于2021-04-11 at 02:51:45 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-11 02:51:45', NULL, '1');
INSERT INTO `xg_log` VALUES (1622, '1618080708454', '2', 'admin于2021-04-11 at 02:51:48 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:51:48', NULL, '1');
INSERT INTO `xg_log` VALUES (1627, '1618080725778', '2', 'admin于2021-04-11 at 02:52:05 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:52:05', NULL, '1');
INSERT INTO `xg_log` VALUES (1633, '1618080758661', '2', 'admin于2021-04-11 at 02:52:38 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:52:38', NULL, '1');
INSERT INTO `xg_log` VALUES (1641, '1618080791961', '2', 'admin于2021-04-11 at 02:53:11 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 02:53:11', NULL, '1');
INSERT INTO `xg_log` VALUES (1651, '1618082341347', '2', 'admin于2021-04-11 at 03:19:01 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 03:19:01', NULL, '1');
INSERT INTO `xg_log` VALUES (1675, '1618082463249', '2', 'admin于2021-04-11 at 03:21:03 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 03:21:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1677, '1618082466555', '2', 'admin于2021-04-11 at 03:21:06 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 03:21:06', NULL, '1');
INSERT INTO `xg_log` VALUES (1679, '1618082471079', '2', 'admin于2021-04-11 at 03:21:11 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-11 03:21:11', NULL, '1');
INSERT INTO `xg_log` VALUES (1692, '1618083393591', '2', 'admin于2021-04-11 at 03:36:33 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 03:36:33', NULL, '1');
INSERT INTO `xg_log` VALUES (1708, '1618083812408', '2', 'admin于2021-04-11 at 03:43:32 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 03:43:32', NULL, '1');
INSERT INTO `xg_log` VALUES (1711, '1618133893321105289282', '0', '在2021-04-11 at 17:38:13 CST,admin登录系统', 'admin', '2021-04-11 17:38:13', NULL, '1');
INSERT INTO `xg_log` VALUES (1719, '1618134564601', '2', 'admin于2021-04-11 at 17:49:24 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-11 17:49:24', NULL, '1');
INSERT INTO `xg_log` VALUES (1735, '1618136548757105289282', '0', '在2021-04-11 at 18:22:28 CST,admin登录系统', 'admin', '2021-04-11 18:22:28', NULL, '1');
INSERT INTO `xg_log` VALUES (1736, '1618293912657105289282', '0', '在2021-04-13 at 14:05:12 CST,admin登录系统', 'admin', '2021-04-13 14:05:12', NULL, '1');
INSERT INTO `xg_log` VALUES (1741, '1618370001947133025461', '0', '在2021-04-14 at 11:13:21 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-14 11:13:21', NULL, '1');
INSERT INTO `xg_log` VALUES (1751, '1618371395020105289282', '0', '在2021-04-14 at 11:36:35 CST,admin登录系统', 'admin', '2021-04-14 11:36:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1753, '1618371518525', '2', 'admin于2021-04-14 at 11:38:38 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 11:38:38', NULL, '1');
INSERT INTO `xg_log` VALUES (1770, '1618378491893105289282', '0', '在2021-04-14 at 13:34:51 CST,admin登录系统', 'admin', '2021-04-14 13:34:51', NULL, '1');
INSERT INTO `xg_log` VALUES (1771, '1618378979037133025461', '0', '在2021-04-14 at 13:42:59 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-14 13:42:59', NULL, '1');
INSERT INTO `xg_log` VALUES (1772, '1618379409016105289282', '0', '在2021-04-14 at 13:50:09 CST,admin登录系统', 'admin', '2021-04-14 13:50:09', NULL, '1');
INSERT INTO `xg_log` VALUES (1773, '1618379967250105289282', '0', '在2021-04-14 at 13:59:27 CST,admin登录系统', 'admin', '2021-04-14 13:59:27', NULL, '1');
INSERT INTO `xg_log` VALUES (1774, '1618380329677105289282', '0', '在2021-04-14 at 14:05:29 CST,admin登录系统', 'admin', '2021-04-14 14:05:29', NULL, '1');
INSERT INTO `xg_log` VALUES (1779, '1618383285468', '2', 'admin于2021-04-14 at 14:54:45 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 14:54:45', NULL, '1');
INSERT INTO `xg_log` VALUES (1782, '1618383762477', '2', 'admin于2021-04-14 at 15:02:42 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 15:02:42', NULL, '1');
INSERT INTO `xg_log` VALUES (1785, '1618383764832', '2', 'admin于2021-04-14 at 15:02:44 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 15:02:44', NULL, '1');
INSERT INTO `xg_log` VALUES (1788, '1618383774081', '2', 'admin于2021-04-14 at 15:02:54 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 15:02:54', NULL, '1');
INSERT INTO `xg_log` VALUES (1792, '1618383792647', '2', 'admin于2021-04-14 at 15:03:12 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 15:03:12', NULL, '1');
INSERT INTO `xg_log` VALUES (1793, '1618383818354', '2', 'admin于2021-04-14 at 15:03:38 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 15:03:38', NULL, '1');
INSERT INTO `xg_log` VALUES (1794, '1618384720867105289282', '0', '在2021-04-14 at 15:18:40 CST,admin登录系统', 'admin', '2021-04-14 15:18:40', NULL, '1');
INSERT INTO `xg_log` VALUES (1795, '1618391921315105289282', '0', '在2021-04-14 at 17:18:41 CST,admin登录系统', 'admin', '2021-04-14 17:18:41', NULL, '1');
INSERT INTO `xg_log` VALUES (1805, '1618392183533', '2', 'admin于2021-04-14 at 17:23:03 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-14 17:23:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1806, '1618392183566', '2', 'admin于2021-04-14 at 17:23:03 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-14 17:23:03', NULL, '1');
INSERT INTO `xg_log` VALUES (1815, '1618392233808', '2', 'admin于2021-04-14 at 17:23:53 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-14 17:23:53', NULL, '1');
INSERT INTO `xg_log` VALUES (1819, '1618392260684', '2', 'admin于2021-04-14 at 17:24:20 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:24:20', NULL, '1');
INSERT INTO `xg_log` VALUES (1824, '1618392286379', '2', 'admin于2021-04-14 at 17:24:46 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:24:46', NULL, '1');
INSERT INTO `xg_log` VALUES (1828, '1618392346789', '2', 'admin于2021-04-14 at 17:25:46 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:25:46', NULL, '1');
INSERT INTO `xg_log` VALUES (1829, '1618392568993', '2', 'admin于2021-04-14 at 17:29:28 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:29:28', NULL, '1');
INSERT INTO `xg_log` VALUES (1830, '1618392688045', '2', 'admin于2021-04-14 at 17:31:28 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:31:28', NULL, '1');
INSERT INTO `xg_log` VALUES (1831, '1618392722186', '2', 'admin于2021-04-14 at 17:32:02 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:32:02', NULL, '1');
INSERT INTO `xg_log` VALUES (1832, '1618392734417', '2', 'admin于2021-04-14 at 17:32:14 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:32:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1833, '1618392742547', '2', 'admin于2021-04-14 at 17:32:22 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:32:22', NULL, '1');
INSERT INTO `xg_log` VALUES (1834, '1618392749429', '2', 'admin于2021-04-14 at 17:32:29 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:32:29', NULL, '1');
INSERT INTO `xg_log` VALUES (1835, '1618392762812', '2', 'admin于2021-04-14 at 17:32:42 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:32:42', NULL, '1');
INSERT INTO `xg_log` VALUES (1836, '1618392871871', '2', 'admin于2021-04-14 at 17:34:31 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:34:31', NULL, '1');
INSERT INTO `xg_log` VALUES (1837, '1618392939027', '2', 'admin于2021-04-14 at 17:35:39 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:35:39', NULL, '1');
INSERT INTO `xg_log` VALUES (1845, '1618393171246', '2', 'admin于2021-04-14 at 17:39:31 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:39:31', NULL, '1');
INSERT INTO `xg_log` VALUES (1851, '1618393434281', '2', 'admin于2021-04-14 at 17:43:54 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-14 17:43:54', NULL, '1');
INSERT INTO `xg_log` VALUES (1852, '1618393434289', '2', 'admin于2021-04-14 at 17:43:54 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-14 17:43:54', NULL, '1');
INSERT INTO `xg_log` VALUES (1853, '1618393439269', '2', 'admin于2021-04-14 at 17:43:59 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:43:59', NULL, '1');
INSERT INTO `xg_log` VALUES (1854, '1618393442760', '2', 'admin于2021-04-14 at 17:44:02 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:44:02', NULL, '1');
INSERT INTO `xg_log` VALUES (1858, '1618393454337', '2', 'admin于2021-04-14 at 17:44:14 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-14 17:44:14', NULL, '1');
INSERT INTO `xg_log` VALUES (1860, '1618393457738', '2', 'admin于2021-04-14 at 17:44:17 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:44:17', NULL, '1');
INSERT INTO `xg_log` VALUES (1865, '1618393520716', '2', 'admin于2021-04-14 at 17:45:20 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-14 17:45:20', NULL, '1');
INSERT INTO `xg_log` VALUES (1866, '1618393520723', '2', 'admin于2021-04-14 at 17:45:20 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-14 17:45:20', NULL, '1');
INSERT INTO `xg_log` VALUES (1867, '1618393525242', '2', 'admin于2021-04-14 at 17:45:25 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:45:25', NULL, '1');
INSERT INTO `xg_log` VALUES (1868, '1618393527892', '2', 'admin于2021-04-14 at 17:45:27 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:45:27', NULL, '1');
INSERT INTO `xg_log` VALUES (1873, '1618393715961', '2', 'admin于2021-04-14 at 17:48:35 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-14 17:48:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1874, '1618393715967', '2', 'admin于2021-04-14 at 17:48:35 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-14 17:48:35', NULL, '1');
INSERT INTO `xg_log` VALUES (1877, '1618393727968', '2', 'admin于2021-04-14 at 17:48:47 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-14 17:48:47', NULL, '1');
INSERT INTO `xg_log` VALUES (1880, '1618393751105', '2', 'admin于2021-04-14 at 17:49:11 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-14 17:49:11', NULL, '1');
INSERT INTO `xg_log` VALUES (1882, '1618393755480', '2', 'admin于2021-04-14 at 17:49:15 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-14 17:49:15', NULL, '1');
INSERT INTO `xg_log` VALUES (1910, '1618394684109105289282', '0', '在2021-04-14 at 18:04:44 CST,admin登录系统', 'admin', '2021-04-14 18:04:44', NULL, '1');
INSERT INTO `xg_log` VALUES (1913, '1618394715004133025461', '0', '在2021-04-14 at 18:05:15 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-14 18:05:15', NULL, '1');
INSERT INTO `xg_log` VALUES (1918, '1618394748129', '2', 'zhangzhang于2021-04-14 at 18:05:48 CST对物资进行了新增物资来源操作,识别码：', 'zhangzhang', '2021-04-14 18:05:48', NULL, '1');
INSERT INTO `xg_log` VALUES (1919, '1618394748139', '2', 'zhangzhang于2021-04-14 at 18:05:48 CST对物资进行了新增物资入库操作,识别码：', 'zhangzhang', '2021-04-14 18:05:48', NULL, '1');
INSERT INTO `xg_log` VALUES (1966, '1618395321363', '2', 'zhangzhang于2021-04-14 at 18:15:21 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-14 18:15:21', NULL, '1');
INSERT INTO `xg_log` VALUES (1984, '1618395407718', '2', 'zhangzhang于2021-04-14 at 18:16:47 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-14 18:16:47', NULL, '1');
INSERT INTO `xg_log` VALUES (1985, '1618395991272', '2', 'zhangzhang于2021-04-14 at 18:26:31 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-14 18:26:31', NULL, '1');
INSERT INTO `xg_log` VALUES (2010, '1618396375003', '2', 'zhangzhang于2021-04-14 at 18:32:55 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-14 18:32:55', NULL, '1');
INSERT INTO `xg_log` VALUES (2015, '1618396411315', '2', 'zhangzhang于2021-04-14 at 18:33:31 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-14 18:33:31', NULL, '1');
INSERT INTO `xg_log` VALUES (2084, '1618399963199', '2', 'zhangzhang于2021-04-14 at 19:32:43 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-14 19:32:43', NULL, '1');
INSERT INTO `xg_log` VALUES (2095, '1618451013156105289282', '0', '在2021-04-15 at 09:43:33 CST,admin登录系统', 'admin', '2021-04-15 09:43:33', NULL, '1');
INSERT INTO `xg_log` VALUES (2109, '1618452007929', '2', 'admin于2021-04-15 at 10:00:07 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 10:00:07', NULL, '1');
INSERT INTO `xg_log` VALUES (2176, '1618457814400', '2', 'admin于2021-04-15 at 11:36:54 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 11:36:54', NULL, '1');
INSERT INTO `xg_log` VALUES (2189, '1618467456226105289282', '0', '在2021-04-15 at 14:17:36 CST,admin登录系统', 'admin', '2021-04-15 14:17:36', NULL, '1');
INSERT INTO `xg_log` VALUES (2190, '1618467475408', '2', 'admin于2021-04-15 at 14:17:55 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 14:17:55', NULL, '1');
INSERT INTO `xg_log` VALUES (2207, '1618467630178', '1', 'admin于2021-04-15 at 14:20:30 CST对用户进行了修改用户信息操作,识别码：master', 'admin', '2021-04-15 14:20:30', NULL, '1');
INSERT INTO `xg_log` VALUES (2212, '1618468593075', '1', 'admin于2021-04-15 at 14:36:33 CST对用户进行了修改用户信息操作,识别码：admin', 'admin', '2021-04-15 14:36:33', NULL, '1');
INSERT INTO `xg_log` VALUES (2215, '1618468596527', '1', 'admin于2021-04-15 at 14:36:36 CST对用户进行了修改用户信息操作,识别码：admin', 'admin', '2021-04-15 14:36:36', NULL, '1');
INSERT INTO `xg_log` VALUES (2224, '1618468622415', '1', 'admin于2021-04-15 at 14:37:02 CST对用户进行了修改用户信息操作,识别码：去', 'admin', '2021-04-15 14:37:02', NULL, '1');
INSERT INTO `xg_log` VALUES (2236, '1618468794413', '2', 'admin于2021-04-15 at 14:39:54 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-15 14:39:54', NULL, '1');
INSERT INTO `xg_log` VALUES (2244, '1618469457658', '2', 'admin于2021-04-15 at 14:50:57 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 14:50:57', NULL, '1');
INSERT INTO `xg_log` VALUES (2281, '1618470882497', '2', 'admin于2021-04-15 at 15:14:42 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-15 15:14:42', NULL, '1');
INSERT INTO `xg_log` VALUES (2289, '1618471378760', '2', 'admin于2021-04-15 at 15:22:58 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-15 15:22:58', NULL, '1');
INSERT INTO `xg_log` VALUES (2291, '1618471387770', '2', 'admin于2021-04-15 at 15:23:07 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-15 15:23:07', NULL, '1');
INSERT INTO `xg_log` VALUES (2293, '1618471395060', '2', 'admin于2021-04-15 at 15:23:15 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-15 15:23:15', NULL, '1');
INSERT INTO `xg_log` VALUES (2295, '1618471407018', '2', 'admin于2021-04-15 at 15:23:27 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-15 15:23:27', NULL, '1');
INSERT INTO `xg_log` VALUES (2297, '1618471413982', '2', 'admin于2021-04-15 at 15:23:33 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-15 15:23:33', NULL, '1');
INSERT INTO `xg_log` VALUES (2299, '1618471427225', '2', 'admin于2021-04-15 at 15:23:47 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-15 15:23:47', NULL, '1');
INSERT INTO `xg_log` VALUES (2307, '1618472849569', '2', 'admin于2021-04-15 at 15:47:29 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 15:47:29', NULL, '1');
INSERT INTO `xg_log` VALUES (2317, '1618472938048', '2', 'admin于2021-04-15 at 15:48:58 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-15 15:48:58', NULL, '1');
INSERT INTO `xg_log` VALUES (2326, '1618473047355', '2', 'admin于2021-04-15 at 15:50:47 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-15 15:50:47', NULL, '1');
INSERT INTO `xg_log` VALUES (2327, '1618473047375', '2', 'admin于2021-04-15 at 15:50:47 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-15 15:50:47', NULL, '1');
INSERT INTO `xg_log` VALUES (2330, '1618473061360', '2', 'admin于2021-04-15 at 15:51:01 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-15 15:51:01', NULL, '1');
INSERT INTO `xg_log` VALUES (2334, '1618473093270', '2', 'admin于2021-04-15 at 15:51:33 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 15:51:33', NULL, '1');
INSERT INTO `xg_log` VALUES (2338, '1618473110645', '2', 'admin于2021-04-15 at 15:51:50 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 15:51:50', NULL, '1');
INSERT INTO `xg_log` VALUES (2343, '1618473160664', '2', 'admin于2021-04-15 at 15:52:40 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-15 15:52:40', NULL, '1');
INSERT INTO `xg_log` VALUES (2344, '1618473160677', '2', 'admin于2021-04-15 at 15:52:40 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-15 15:52:40', NULL, '1');
INSERT INTO `xg_log` VALUES (2347, '1618473167167', '2', 'admin于2021-04-15 at 15:52:47 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-15 15:52:47', NULL, '1');
INSERT INTO `xg_log` VALUES (2349, '1618473172074', '2', 'admin于2021-04-15 at 15:52:52 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 15:52:52', NULL, '1');
INSERT INTO `xg_log` VALUES (2355, '1618473469597', '2', 'admin于2021-04-15 at 15:57:49 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-15 15:57:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2356, '1618473469603', '2', 'admin于2021-04-15 at 15:57:49 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-15 15:57:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2359, '1618473710982', '2', 'admin于2021-04-15 at 16:01:50 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:01:50', NULL, '1');
INSERT INTO `xg_log` VALUES (2367, '1618474227810', '2', 'admin于2021-04-15 at 16:10:27 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:10:27', NULL, '1');
INSERT INTO `xg_log` VALUES (2368, '1618474345045', '2', 'admin于2021-04-15 at 16:12:25 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:12:25', NULL, '1');
INSERT INTO `xg_log` VALUES (2369, '1618474759790', '2', 'admin于2021-04-15 at 16:19:19 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:19:19', NULL, '1');
INSERT INTO `xg_log` VALUES (2370, '1618474928467', '2', 'admin于2021-04-15 at 16:22:08 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:22:08', NULL, '1');
INSERT INTO `xg_log` VALUES (2371, '1618475082153', '2', 'admin于2021-04-15 at 16:24:42 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:24:42', NULL, '1');
INSERT INTO `xg_log` VALUES (2372, '1618475086705', '2', 'admin于2021-04-15 at 16:24:46 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:24:46', NULL, '1');
INSERT INTO `xg_log` VALUES (2373, '1618475094201', '2', 'admin于2021-04-15 at 16:24:54 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:24:54', NULL, '1');
INSERT INTO `xg_log` VALUES (2374, '1618475100321', '2', 'admin于2021-04-15 at 16:25:00 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:00', NULL, '1');
INSERT INTO `xg_log` VALUES (2375, '1618475103846', '2', 'admin于2021-04-15 at 16:25:03 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:03', NULL, '1');
INSERT INTO `xg_log` VALUES (2376, '1618475105997', '2', 'admin于2021-04-15 at 16:25:05 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:05', NULL, '1');
INSERT INTO `xg_log` VALUES (2377, '1618475110565', '2', 'admin于2021-04-15 at 16:25:10 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:10', NULL, '1');
INSERT INTO `xg_log` VALUES (2378, '1618475112471', '2', 'admin于2021-04-15 at 16:25:12 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:12', NULL, '1');
INSERT INTO `xg_log` VALUES (2379, '1618475136615', '2', 'admin于2021-04-15 at 16:25:36 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:36', NULL, '1');
INSERT INTO `xg_log` VALUES (2380, '1618475142435', '2', 'admin于2021-04-15 at 16:25:42 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:42', NULL, '1');
INSERT INTO `xg_log` VALUES (2381, '1618475146711', '2', 'admin于2021-04-15 at 16:25:46 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:46', NULL, '1');
INSERT INTO `xg_log` VALUES (2382, '1618475149771', '2', 'admin于2021-04-15 at 16:25:49 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:25:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2383, '1618475162834', '2', 'admin于2021-04-15 at 16:26:02 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:26:02', NULL, '1');
INSERT INTO `xg_log` VALUES (2384, '1618475277175', '2', 'admin于2021-04-15 at 16:27:57 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:27:57', NULL, '1');
INSERT INTO `xg_log` VALUES (2385, '1618475282973', '2', 'admin于2021-04-15 at 16:28:02 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-15 16:28:02', NULL, '1');
INSERT INTO `xg_log` VALUES (2402, '1618476828629', '2', 'admin于2021-04-15 at 16:53:48 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-15 16:53:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2403, '1618476828651', '2', 'admin于2021-04-15 at 16:53:48 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-15 16:53:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2406, '1618476834807', '2', 'admin于2021-04-15 at 16:53:54 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-15 16:53:54', NULL, '1');
INSERT INTO `xg_log` VALUES (2412, '1618476889952', '2', 'admin于2021-04-15 at 16:54:49 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-15 16:54:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2413, '1618476889960', '2', 'admin于2021-04-15 at 16:54:49 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-15 16:54:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2419, '1618476975587', '2', 'admin于2021-04-15 at 16:56:15 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-15 16:56:15', NULL, '1');
INSERT INTO `xg_log` VALUES (2421, '1618476977207', '2', 'admin于2021-04-15 at 16:56:17 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-15 16:56:17', NULL, '1');
INSERT INTO `xg_log` VALUES (2447, '1618477240799133025461', '0', '在2021-04-15 at 17:00:40 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-15 17:00:40', NULL, '1');
INSERT INTO `xg_log` VALUES (2448, '1618480309114', '2', 'zhangzhang于2021-04-15 at 17:51:49 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:51:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2449, '1618480381140', '2', 'zhangzhang于2021-04-15 at 17:53:01 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:53:01', NULL, '1');
INSERT INTO `xg_log` VALUES (2450, '1618480503949', '2', 'zhangzhang于2021-04-15 at 17:55:03 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:55:03', NULL, '1');
INSERT INTO `xg_log` VALUES (2451, '1618480548236', '2', 'zhangzhang于2021-04-15 at 17:55:48 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:55:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2452, '1618480587746', '2', 'zhangzhang于2021-04-15 at 17:56:27 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:56:27', NULL, '1');
INSERT INTO `xg_log` VALUES (2453, '1618480594396', '2', 'zhangzhang于2021-04-15 at 17:56:34 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:56:34', NULL, '1');
INSERT INTO `xg_log` VALUES (2454, '1618480608287', '2', 'zhangzhang于2021-04-15 at 17:56:48 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:56:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2455, '1618480759040', '2', 'zhangzhang于2021-04-15 at 17:59:19 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:59:19', NULL, '1');
INSERT INTO `xg_log` VALUES (2456, '1618480794276', '2', 'zhangzhang于2021-04-15 at 17:59:54 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 17:59:54', NULL, '1');
INSERT INTO `xg_log` VALUES (2457, '1618480806604', '2', 'zhangzhang于2021-04-15 at 18:00:06 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:00:06', NULL, '1');
INSERT INTO `xg_log` VALUES (2458, '1618480954132', '2', 'zhangzhang于2021-04-15 at 18:02:34 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:02:34', NULL, '1');
INSERT INTO `xg_log` VALUES (2459, '1618481018108', '2', 'zhangzhang于2021-04-15 at 18:03:38 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:03:38', NULL, '1');
INSERT INTO `xg_log` VALUES (2460, '1618481030086', '2', 'zhangzhang于2021-04-15 at 18:03:50 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:03:50', NULL, '1');
INSERT INTO `xg_log` VALUES (2461, '1618481138894', '2', 'zhangzhang于2021-04-15 at 18:05:38 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:05:38', NULL, '1');
INSERT INTO `xg_log` VALUES (2462, '1618481231952', '2', 'zhangzhang于2021-04-15 at 18:07:11 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:07:11', NULL, '1');
INSERT INTO `xg_log` VALUES (2463, '1618481276057', '2', 'zhangzhang于2021-04-15 at 18:07:56 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:07:56', NULL, '1');
INSERT INTO `xg_log` VALUES (2464, '1618481344016', '2', 'zhangzhang于2021-04-15 at 18:09:04 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:09:04', NULL, '1');
INSERT INTO `xg_log` VALUES (2465, '1618481398887', '2', 'zhangzhang于2021-04-15 at 18:09:58 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:09:58', NULL, '1');
INSERT INTO `xg_log` VALUES (2466, '1618481485418', '2', 'zhangzhang于2021-04-15 at 18:11:25 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:11:25', NULL, '1');
INSERT INTO `xg_log` VALUES (2467, '1618481508952', '2', 'zhangzhang于2021-04-15 at 18:11:48 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:11:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2468, '1618481538219', '2', 'zhangzhang于2021-04-15 at 18:12:18 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:12:18', NULL, '1');
INSERT INTO `xg_log` VALUES (2469, '1618481559042', '2', 'zhangzhang于2021-04-15 at 18:12:39 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:12:39', NULL, '1');
INSERT INTO `xg_log` VALUES (2470, '1618481603975', '2', 'zhangzhang于2021-04-15 at 18:13:23 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:13:23', NULL, '1');
INSERT INTO `xg_log` VALUES (2471, '1618481664065', '2', 'zhangzhang于2021-04-15 at 18:14:24 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:14:24', NULL, '1');
INSERT INTO `xg_log` VALUES (2472, '1618481692844', '2', 'zhangzhang于2021-04-15 at 18:14:52 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:14:52', NULL, '1');
INSERT INTO `xg_log` VALUES (2473, '1618481706761', '2', 'zhangzhang于2021-04-15 at 18:15:06 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:15:06', NULL, '1');
INSERT INTO `xg_log` VALUES (2479, '1618482403277', '2', 'zhangzhang于2021-04-15 at 18:26:43 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:26:43', NULL, '1');
INSERT INTO `xg_log` VALUES (2480, '1618482408560', '2', 'zhangzhang于2021-04-15 at 18:26:48 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:26:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2491, '1618482560030', '2', 'zhangzhang于2021-04-15 at 18:29:20 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:29:20', NULL, '1');
INSERT INTO `xg_log` VALUES (2494, '1618482572468', '2', 'zhangzhang于2021-04-15 at 18:29:32 CST对物资进行了获取物资库存数据操作,识别码：', 'zhangzhang', '2021-04-15 18:29:32', NULL, '1');
INSERT INTO `xg_log` VALUES (2495, '1618551911411105289282', '0', '在2021-04-16 at 13:45:11 CST,admin登录系统', 'admin', '2021-04-16 13:45:11', NULL, '1');
INSERT INTO `xg_log` VALUES (2496, '1618551917147', '2', 'admin于2021-04-16 at 13:45:17 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-16 13:45:17', NULL, '1');
INSERT INTO `xg_log` VALUES (2508, '1618552668549', '2', 'admin于2021-04-16 at 13:57:48 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-16 13:57:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2509, '1618569937564105289282', '0', '在2021-04-16 at 18:45:37 CST,admin登录系统', 'admin', '2021-04-16 18:45:37', NULL, '1');
INSERT INTO `xg_log` VALUES (2510, '1618569995305105289282', '0', '在2021-04-16 at 18:46:35 CST,admin登录系统', 'admin', '2021-04-16 18:46:35', NULL, '1');
INSERT INTO `xg_log` VALUES (2514, '1618579600554105289282', '0', '在2021-04-16 at 21:26:40 CST,admin登录系统', 'admin', '2021-04-16 21:26:40', NULL, '1');
INSERT INTO `xg_log` VALUES (2517, '1618579630371105289282', '0', '在2021-04-16 at 21:27:10 CST,admin登录系统', 'admin', '2021-04-16 21:27:10', NULL, '1');
INSERT INTO `xg_log` VALUES (2519, '1618579660251105289282', '0', '在2021-04-16 at 21:27:40 CST,admin登录系统', 'admin', '2021-04-16 21:27:40', NULL, '1');
INSERT INTO `xg_log` VALUES (2524, '1618638038031105289282', '0', '在2021-04-17 at 13:40:38 CST,admin登录系统', 'admin', '2021-04-17 13:40:38', NULL, '1');
INSERT INTO `xg_log` VALUES (2530, '1618638105062105289282', '0', '在2021-04-17 at 13:41:45 CST,admin登录系统', 'admin', '2021-04-17 13:41:45', NULL, '1');
INSERT INTO `xg_log` VALUES (2532, '1618639851318105289282', '0', '在2021-04-17 at 14:10:51 CST,admin登录系统', 'admin', '2021-04-17 14:10:51', NULL, '1');
INSERT INTO `xg_log` VALUES (2559, '1618648235556', '2', 'admin于2021-04-17 at 16:30:35 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-17 16:30:35', NULL, '1');
INSERT INTO `xg_log` VALUES (2560, '1618648235572', '2', 'admin于2021-04-17 at 16:30:35 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-17 16:30:35', NULL, '1');
INSERT INTO `xg_log` VALUES (2577, '1618649427315', '2', 'admin于2021-04-17 at 16:50:27 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-17 16:50:27', NULL, '1');
INSERT INTO `xg_log` VALUES (2580, '1619001948051105289282', '0', '在2021-04-21 at 18:45:48 CST,admin登录系统', 'admin', '2021-04-21 18:45:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2585, '1619002117398105289282', '0', '在2021-04-21 at 18:48:37 CST,admin登录系统', 'admin', '2021-04-21 18:48:37', NULL, '1');
INSERT INTO `xg_log` VALUES (2587, '1619002146878', '1', 'admin于2021-04-21 at 18:49:06 CST对用户进行了修改用户信息操作,识别码：龙傲天', 'admin', '2021-04-21 18:49:06', NULL, '1');
INSERT INTO `xg_log` VALUES (2590, '1619002151242', '1', 'admin于2021-04-21 at 18:49:11 CST对用户进行了修改用户信息操作,识别码：李佳航2', 'admin', '2021-04-21 18:49:11', NULL, '1');
INSERT INTO `xg_log` VALUES (2593, '1619002155199', '1', 'admin于2021-04-21 at 18:49:15 CST对用户进行了修改用户信息操作,识别码：王德发', 'admin', '2021-04-21 18:49:15', NULL, '1');
INSERT INTO `xg_log` VALUES (2600, '1619002163379', '1', 'admin于2021-04-21 at 18:49:23 CST对用户进行了修改用户信息操作,识别码：阿萨德', 'admin', '2021-04-21 18:49:23', NULL, '1');
INSERT INTO `xg_log` VALUES (2603, '1619002167485', '1', 'admin于2021-04-21 at 18:49:27 CST对用户进行了修改用户信息操作,识别码：aquan', 'admin', '2021-04-21 18:49:27', NULL, '1');
INSERT INTO `xg_log` VALUES (2610, '1619002184252', '2', 'admin于2021-04-21 at 18:49:44 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-21 18:49:44', NULL, '1');
INSERT INTO `xg_log` VALUES (2618, '1619002254670', '2', 'admin于2021-04-21 at 18:50:54 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-21 18:50:54', NULL, '1');
INSERT INTO `xg_log` VALUES (2628, '1619002673688', '2', 'admin于2021-04-21 at 18:57:53 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-21 18:57:53', NULL, '1');
INSERT INTO `xg_log` VALUES (2644, '1619002997527', '2', 'admin于2021-04-21 at 19:03:17 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-21 19:03:17', NULL, '1');
INSERT INTO `xg_log` VALUES (2653, '1619055565269105289282', '0', '在2021-04-22 at 09:39:25 CST,admin登录系统', 'admin', '2021-04-22 09:39:25', NULL, '1');
INSERT INTO `xg_log` VALUES (2759, '1619063472863', '2', 'admin于2021-04-22 at 11:51:12 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-22 11:51:12', NULL, '1');
INSERT INTO `xg_log` VALUES (2765, '1619063546458', '2', 'admin于2021-04-22 at 11:52:26 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-22 11:52:26', NULL, '1');
INSERT INTO `xg_log` VALUES (2767, '1619063603843', '2', 'admin于2021-04-22 at 11:53:23 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-22 11:53:23', NULL, '1');
INSERT INTO `xg_log` VALUES (2770, '1619063623653', '2', 'admin于2021-04-22 at 11:53:43 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-22 11:53:43', NULL, '1');
INSERT INTO `xg_log` VALUES (2781, '1619063710650', '2', 'admin于2021-04-22 at 11:55:10 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-22 11:55:10', NULL, '1');
INSERT INTO `xg_log` VALUES (2783, '1619063937925', '2', 'admin于2021-04-22 at 11:58:57 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-04-22 11:58:57', NULL, '1');
INSERT INTO `xg_log` VALUES (2797, '1619072056382', '2', 'admin于2021-04-22 at 14:14:16 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-22 14:14:16', NULL, '1');
INSERT INTO `xg_log` VALUES (2801, '1619072112340', '1', 'admin于2021-04-22 at 14:15:12 CST对用户进行了修改用户信息操作,识别码：mq', 'admin', '2021-04-22 14:15:12', NULL, '1');
INSERT INTO `xg_log` VALUES (2819, '1619072179359-1412606609', '0', '在2021-04-22 at 14:16:19 CST,ruth登录系统', 'ruth', '2021-04-22 14:16:19', NULL, '1');
INSERT INTO `xg_log` VALUES (2820, '1619072191662105289282', '0', '在2021-04-22 at 14:16:31 CST,admin登录系统', 'admin', '2021-04-22 14:16:31', NULL, '1');
INSERT INTO `xg_log` VALUES (2821, '1619072209237', '1', 'admin于2021-04-22 at 14:16:49 CST对用户进行了修改用户角色信息操作,识别码：14', 'admin', '2021-04-22 14:16:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2822, '1619072223186-1412606609', '0', '在2021-04-22 at 14:17:03 CST,ruth登录系统', 'ruth', '2021-04-22 14:17:03', NULL, '1');
INSERT INTO `xg_log` VALUES (2829, '1619072246937', '2', 'ruth于2021-04-22 at 14:17:26 CST对物资进行了获取物资库存数据操作,识别码：', 'ruth', '2021-04-22 14:17:26', NULL, '1');
INSERT INTO `xg_log` VALUES (2834, '1619072315294', '2', 'ruth于2021-04-22 at 14:18:35 CST对物资进行了新增物资来源操作,识别码：', 'ruth', '2021-04-22 14:18:35', NULL, '1');
INSERT INTO `xg_log` VALUES (2835, '1619072315315', '2', 'ruth于2021-04-22 at 14:18:35 CST对物资进行了新增物资入库操作,识别码：', 'ruth', '2021-04-22 14:18:35', NULL, '1');
INSERT INTO `xg_log` VALUES (2838, '1619072343020105289282', '0', '在2021-04-22 at 14:19:03 CST,admin登录系统', 'admin', '2021-04-22 14:19:03', NULL, '1');
INSERT INTO `xg_log` VALUES (2841, '1619072361717133025461', '0', '在2021-04-22 at 14:19:21 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-22 14:19:21', NULL, '1');
INSERT INTO `xg_log` VALUES (2844, '1619072389799105289282', '0', '在2021-04-22 at 14:19:49 CST,admin登录系统', 'admin', '2021-04-22 14:19:49', NULL, '1');
INSERT INTO `xg_log` VALUES (2876, '1619073528822', '2', 'admin于2021-04-22 at 14:38:48 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-22 14:38:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2877, '1619073528832', '2', 'admin于2021-04-22 at 14:38:48 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-22 14:38:48', NULL, '1');
INSERT INTO `xg_log` VALUES (2882, '1619073726877', '2', 'admin于2021-04-22 at 14:42:06 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-22 14:42:06', NULL, '1');
INSERT INTO `xg_log` VALUES (2883, '1619073806911', '2', 'admin于2021-04-22 at 14:43:26 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-22 14:43:26', NULL, '1');
INSERT INTO `xg_log` VALUES (2885, '1619073831243', '2', 'admin于2021-04-22 at 14:43:51 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-22 14:43:51', NULL, '1');
INSERT INTO `xg_log` VALUES (3009, '1619078541674', '2', 'admin于2021-04-22 at 16:02:21 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-22 16:02:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3010, '1619078541731', '2', 'admin于2021-04-22 at 16:02:21 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-22 16:02:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3030, '1619079812394', '2', 'admin于2021-04-22 at 16:23:32 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-22 16:23:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3038, '1619079853488', '2', 'admin于2021-04-22 at 16:24:13 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-22 16:24:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3283, '1619086285540', '2', 'admin于2021-04-22 at 18:11:25 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-22 18:11:25', NULL, '1');
INSERT INTO `xg_log` VALUES (3284, '1619086285549', '2', 'admin于2021-04-22 at 18:11:25 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-22 18:11:25', NULL, '1');
INSERT INTO `xg_log` VALUES (3287, '1619086300017', '2', 'admin于2021-04-22 at 18:11:40 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:11:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3293, '1619086707613', '2', 'admin于2021-04-22 at 18:18:27 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-22 18:18:27', NULL, '1');
INSERT INTO `xg_log` VALUES (3294, '1619086707621', '2', 'admin于2021-04-22 at 18:18:27 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-22 18:18:27', NULL, '1');
INSERT INTO `xg_log` VALUES (3297, '1619086714165', '2', 'admin于2021-04-22 at 18:18:34 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:18:34', NULL, '1');
INSERT INTO `xg_log` VALUES (3299, '1619086777398', '2', 'admin于2021-04-22 at 18:19:37 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:19:37', NULL, '1');
INSERT INTO `xg_log` VALUES (3311, '1619086941021', '2', 'admin于2021-04-22 at 18:22:21 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:22:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3313, '1619086941414', '2', 'admin于2021-04-22 at 18:22:21 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:22:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3315, '1619086941864', '2', 'admin于2021-04-22 at 18:22:21 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:22:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3329, '1619087243637', '2', 'admin于2021-04-22 at 18:27:23 CST对物资进行了新增物资来源操作,识别码：', 'admin', '2021-04-22 18:27:23', NULL, '1');
INSERT INTO `xg_log` VALUES (3330, '1619087243655', '2', 'admin于2021-04-22 at 18:27:23 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-22 18:27:23', NULL, '1');
INSERT INTO `xg_log` VALUES (3333, '1619087249599', '2', 'admin于2021-04-22 at 18:27:29 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-22 18:27:29', NULL, '1');
INSERT INTO `xg_log` VALUES (3350, '1619087346050', '2', 'admin于2021-04-22 at 18:29:06 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-22 18:29:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3362, '1619144653555105289282', '0', '在2021-04-23 at 10:24:13 CST,admin登录系统', 'admin', '2021-04-23 10:24:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3377, '1619145357164105289282', '0', '在2021-04-23 at 10:35:57 CST,admin登录系统', 'admin', '2021-04-23 10:35:57', NULL, '1');
INSERT INTO `xg_log` VALUES (3380, '1619146778354105289282', '0', '在2021-04-23 at 10:59:38 CST,admin登录系统', 'admin', '2021-04-23 10:59:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3385, '1619147295087105289282', '0', '在2021-04-23 at 11:08:15 CST,admin登录系统', 'admin', '2021-04-23 11:08:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3410, '1619148867708', '1', 'admin于2021-04-23 at 11:34:27 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-23 11:34:27', NULL, '1');
INSERT INTO `xg_log` VALUES (3413, '1619148898047', '1', 'admin于2021-04-23 at 11:34:58 CST对用户进行了修改用户角色信息操作,识别码：47', 'admin', '2021-04-23 11:34:58', NULL, '1');
INSERT INTO `xg_log` VALUES (3417, '1619149048688-1874052256', '0', '在2021-04-23 at 11:37:28 CST,ceshi登录系统', 'ceshi', '2021-04-23 11:37:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3458, '1619155082560', '2', 'ceshi于2021-04-23 at 13:18:02 CST对物资进行了获取物资库存数据操作,识别码：', 'ceshi', '2021-04-23 13:18:02', NULL, '1');
INSERT INTO `xg_log` VALUES (3459, '1619156132682', '2', 'ceshi于2021-04-23 at 13:35:32 CST对物资进行了获取物资库存数据操作,识别码：', 'ceshi', '2021-04-23 13:35:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3463, '1619156144689', '2', 'ceshi于2021-04-23 at 13:35:44 CST对物资进行了获取物资库存数据操作,识别码：', 'ceshi', '2021-04-23 13:35:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3475, '1619156677180', '2', 'ceshi于2021-04-23 at 13:44:37 CST对物资进行了新增物资来源操作,识别码：', 'ceshi', '2021-04-23 13:44:37', NULL, '1');
INSERT INTO `xg_log` VALUES (3476, '1619156677229', '2', 'ceshi于2021-04-23 at 13:44:37 CST对物资进行了新增物资入库操作,识别码：', 'ceshi', '2021-04-23 13:44:37', NULL, '1');
INSERT INTO `xg_log` VALUES (3479, '1619156682248', '2', 'ceshi于2021-04-23 at 13:44:42 CST对物资进行了审批操作,识别码：', 'ceshi', '2021-04-23 13:44:42', NULL, '1');
INSERT INTO `xg_log` VALUES (3483, '1619156821943', '2', 'ceshi于2021-04-23 at 13:47:01 CST对物资进行了新增物资来源操作,识别码：', 'ceshi', '2021-04-23 13:47:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3484, '1619156821988', '2', 'ceshi于2021-04-23 at 13:47:01 CST对物资进行了新增物资入库操作,识别码：', 'ceshi', '2021-04-23 13:47:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3486, '1619157016983', '2', 'ceshi于2021-04-23 at 13:50:16 CST对物资进行了新增物资来源操作,识别码：', 'ceshi', '2021-04-23 13:50:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3487, '1619157017025', '2', 'ceshi于2021-04-23 at 13:50:17 CST对物资进行了新增物资入库操作,识别码：', 'ceshi', '2021-04-23 13:50:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3490, '1619157021289', '2', 'ceshi于2021-04-23 at 13:50:21 CST对物资进行了审批操作,识别码：', 'ceshi', '2021-04-23 13:50:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3492, '1619157022493', '2', 'ceshi于2021-04-23 at 13:50:22 CST对物资进行了审批操作,识别码：', 'ceshi', '2021-04-23 13:50:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3494, '1619157033207133025461', '0', '在2021-04-23 at 13:50:33 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-23 13:50:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3500, '1619157281620', '2', 'zhangzhang于2021-04-23 at 13:54:41 CST对物资进行了新增物资来源操作,识别码：', 'zhangzhang', '2021-04-23 13:54:41', NULL, '1');
INSERT INTO `xg_log` VALUES (3501, '1619157281662', '2', 'zhangzhang于2021-04-23 at 13:54:41 CST对物资进行了新增物资入库操作,识别码：', 'zhangzhang', '2021-04-23 13:54:41', NULL, '1');
INSERT INTO `xg_log` VALUES (3503, '1619157506664', '2', 'zhangzhang于2021-04-23 at 13:58:26 CST对物资进行了新增物资来源操作,识别码：', 'zhangzhang', '2021-04-23 13:58:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3504, '1619157506706', '2', 'zhangzhang于2021-04-23 at 13:58:26 CST对物资进行了新增物资入库操作,识别码：', 'zhangzhang', '2021-04-23 13:58:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3509, '1619157829723', '2', 'zhangzhang于2021-04-23 at 14:03:49 CST对物资进行了新增物资来源操作,识别码：', 'zhangzhang', '2021-04-23 14:03:49', NULL, '1');
INSERT INTO `xg_log` VALUES (3510, '1619157829763', '2', 'zhangzhang于2021-04-23 at 14:03:49 CST对物资进行了新增物资入库操作,识别码：', 'zhangzhang', '2021-04-23 14:03:49', NULL, '1');
INSERT INTO `xg_log` VALUES (3512, '1619158248855', '2', 'zhangzhang于2021-04-23 at 14:10:48 CST对物资进行了新增物资来源操作,识别码：', 'zhangzhang', '2021-04-23 14:10:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3513, '1619158248893', '2', 'zhangzhang于2021-04-23 at 14:10:48 CST对物资进行了新增物资入库操作,识别码：', 'zhangzhang', '2021-04-23 14:10:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3516, '1619158271976105289282', '0', '在2021-04-23 at 14:11:11 CST,admin登录系统', 'admin', '2021-04-23 14:11:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3519, '1619158278027', '2', 'admin于2021-04-23 at 14:11:18 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-23 14:11:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3521, '1619158278462', '2', 'admin于2021-04-23 at 14:11:18 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-23 14:11:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3523, '1619158280252', '2', 'admin于2021-04-23 at 14:11:20 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-23 14:11:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3525, '1619158280714', '2', 'admin于2021-04-23 at 14:11:20 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-23 14:11:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3527, '1619158285015', '2', 'admin于2021-04-23 at 14:11:25 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 14:11:25', NULL, '1');
INSERT INTO `xg_log` VALUES (3540, '1619159824536', '2', 'admin于2021-04-23 at 14:37:04 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 14:37:04', NULL, '1');
INSERT INTO `xg_log` VALUES (3545, '1619160022176', '2', 'admin于2021-04-23 at 14:40:22 CST对物资进行了添加物资去向信息操作,识别码：', 'admin', '2021-04-23 14:40:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3546, '1619160022213', '2', 'admin于2021-04-23 at 14:40:22 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-23 14:40:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3550, '1619160057235', '2', 'admin于2021-04-23 at 14:40:57 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 14:40:57', NULL, '1');
INSERT INTO `xg_log` VALUES (3551, '1619160103615', '2', 'admin于2021-04-23 at 14:41:43 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 14:41:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3552, '1619160119519', '2', 'admin于2021-04-23 at 14:41:59 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 14:41:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3582, '1619164377304', '2', 'admin于2021-04-23 at 15:52:57 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 15:52:57', NULL, '1');
INSERT INTO `xg_log` VALUES (3588, '1619164418146105289282', '0', '在2021-04-23 at 15:53:38 CST,admin登录系统', 'admin', '2021-04-23 15:53:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3592, '1619165254127', '2', 'admin于2021-04-23 at 16:07:34 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 16:07:34', NULL, '1');
INSERT INTO `xg_log` VALUES (3599, '1619165788186', '2', 'admin于2021-04-23 at 16:16:28 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 16:16:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3600, '1619165808405', '2', 'admin于2021-04-23 at 16:16:48 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 16:16:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3614, '1619166066133', '2', 'admin于2021-04-23 at 16:21:06 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 16:21:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3619, '1619166091295', '2', 'admin于2021-04-23 at 16:21:31 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 16:21:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3640, '1619170307798', '2', 'admin于2021-04-23 at 17:31:47 CST对物资进行了获取物资库存数据操作,识别码：', 'admin', '2021-04-23 17:31:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3647, '1619171748020', '1', 'admin于2021-04-23 at 17:55:48 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-23 17:55:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3648, '1619171760015', '1', 'admin于2021-04-23 at 17:56:00 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-23 17:56:00', NULL, '1');
INSERT INTO `xg_log` VALUES (3649, '1619171831090-1842767308', '0', '在2021-04-23 at 17:57:11 CST,admin登录系统', 'admin', '2021-04-23 17:57:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3650, '1619171842886', '1', 'admin于2021-04-23 at 17:57:22 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-23 17:57:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3651, '1619173706488-1842767308', '0', '在2021-04-23 at 18:28:26 CST,admin登录系统', 'admin', '2021-04-23 18:28:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3652, '1619173742332', '1', 'admin于2021-04-23 at 18:29:02 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-23 18:29:02', NULL, '1');
INSERT INTO `xg_log` VALUES (3653, '1619173759422', '1', 'admin于2021-04-23 at 18:29:19 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-23 18:29:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3654, '1619201317109-1842767308', '0', '在2021-04-24 at 02:08:37 CST,admin登录系统', 'admin', '2021-04-24 02:08:37', NULL, '1');
INSERT INTO `xg_log` VALUES (3655, '1619201361192', '1', 'admin于2021-04-24 at 02:09:21 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 02:09:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3656, '1619230468700-1842767308', '0', '在2021-04-24 at 10:14:28 CST,admin登录系统', 'admin', '2021-04-24 10:14:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3657, '1619230559443', '1', 'admin于2021-04-24 at 10:15:59 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 10:15:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3658, '1619230574645', '1', 'admin于2021-04-24 at 10:16:14 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 10:16:14', NULL, '1');
INSERT INTO `xg_log` VALUES (3659, '1619230614151', '1', 'admin于2021-04-24 at 10:16:54 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 10:16:54', NULL, '1');
INSERT INTO `xg_log` VALUES (3660, '1619250597887-1842767308', '0', '在2021-04-24 at 15:49:57 CST,admin登录系统', 'admin', '2021-04-24 15:49:57', NULL, '1');
INSERT INTO `xg_log` VALUES (3661, '1619250630714', '1', 'admin于2021-04-24 at 15:50:30 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 15:50:30', NULL, '1');
INSERT INTO `xg_log` VALUES (3662, '1619250704167', '1', 'admin于2021-04-24 at 15:51:44 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 15:51:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3663, '1619251758308', '2', 'admin于2021-04-24 at 16:09:18 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-24 16:09:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3664, '1619252055636', '2', 'admin于2021-04-24 at 16:14:15 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-24 16:14:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3665, '1619252573102', '2', 'admin于2021-04-24 at 16:22:53 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-24 16:22:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3666, '1619252761705', '2', 'admin于2021-04-24 at 16:26:01 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-24 16:26:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3667, '1619252964223-1842767308', '0', '在2021-04-24 at 16:29:24 CST,admin登录系统', 'admin', '2021-04-24 16:29:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3668, '1619253823933', '2', 'admin于2021-04-24 at 16:43:43 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-24 16:43:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3669, '1619253830688', '2', 'admin于2021-04-24 at 16:43:50 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-24 16:43:50', NULL, '1');
INSERT INTO `xg_log` VALUES (3670, '1619253831175', '2', 'admin于2021-04-24 at 16:43:51 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-24 16:43:51', NULL, '1');
INSERT INTO `xg_log` VALUES (3671, '1619253832016', '2', 'admin于2021-04-24 at 16:43:52 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-24 16:43:52', NULL, '1');
INSERT INTO `xg_log` VALUES (3672, '1619253947101', '2', 'admin于2021-04-24 at 16:45:47 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-24 16:45:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3673, '1619253975429', '2', 'admin于2021-04-24 at 16:46:15 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-24 16:46:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3674, '1619254134802', '1', 'admin于2021-04-24 at 16:48:54 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:48:54', NULL, '1');
INSERT INTO `xg_log` VALUES (3675, '1619254359891', '2', 'admin于2021-04-24 at 16:52:39 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-24 16:52:39', NULL, '1');
INSERT INTO `xg_log` VALUES (3676, '1619254523188', '1', 'admin于2021-04-24 at 16:55:23 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:55:23', NULL, '1');
INSERT INTO `xg_log` VALUES (3677, '1619254530610', '1', 'admin于2021-04-24 at 16:55:30 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:55:30', NULL, '1');
INSERT INTO `xg_log` VALUES (3678, '1619254531715', '1', 'admin于2021-04-24 at 16:55:31 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:55:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3679, '1619254559530', '1', 'admin于2021-04-24 at 16:55:59 CST对用户进行了修改用户信息操作,识别码：ququq', 'admin', '2021-04-24 16:55:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3680, '1619254559553', '1', 'admin于2021-04-24 at 16:55:59 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:55:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3681, '1619254559565', '1', 'admin于2021-04-24 at 16:55:59 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:55:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3682, '1619254576434', '1', 'admin于2021-04-24 at 16:56:16 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:56:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3683, '1619254577342', '1', 'admin于2021-04-24 at 16:56:17 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:56:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3684, '1619254577632', '1', 'admin于2021-04-24 at 16:56:17 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:56:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3685, '1619254577985', '1', 'admin于2021-04-24 at 16:56:17 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 16:56:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3686, '1619254813698', '1', 'admin于2021-04-24 at 17:00:13 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-24 17:00:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3687, '1619254813745', '1', 'admin于2021-04-24 at 17:00:13 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:00:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3688, '1619254818033', '1', 'admin于2021-04-24 at 17:00:18 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:00:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3689, '1619254819390', '1', 'admin于2021-04-24 at 17:00:19 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:00:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3690, '1619254819903', '1', 'admin于2021-04-24 at 17:00:19 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:00:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3691, '1619254820570', '1', 'admin于2021-04-24 at 17:00:20 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:00:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3692, '1619254821624', '1', 'admin于2021-04-24 at 17:00:21 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:00:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3693, '1619254866587', '1', 'admin于2021-04-24 at 17:01:06 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-24 17:01:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3694, '1619254866613', '1', 'admin于2021-04-24 at 17:01:06 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3695, '1619254878980', '1', 'admin于2021-04-24 at 17:01:18 CST对用户进行了删除用户信息操作,识别码：40', 'admin', '2021-04-24 17:01:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3696, '1619254879002', '1', 'admin于2021-04-24 at 17:01:19 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3697, '1619254879025', '1', 'admin于2021-04-24 at 17:01:19 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3698, '1619254880054', '1', 'admin于2021-04-24 at 17:01:20 CST对用户进行了删除用户信息操作,识别码：39', 'admin', '2021-04-24 17:01:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3699, '1619254880075', '1', 'admin于2021-04-24 at 17:01:20 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3700, '1619254880076', '1', 'admin于2021-04-24 at 17:01:20 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3701, '1619254882103', '1', 'admin于2021-04-24 at 17:01:22 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3702, '1619254888208', '1', 'admin于2021-04-24 at 17:01:28 CST对用户进行了删除用户信息操作,识别码：6', 'admin', '2021-04-24 17:01:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3703, '1619254888241', '1', 'admin于2021-04-24 at 17:01:28 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3704, '1619254888242', '1', 'admin于2021-04-24 at 17:01:28 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3705, '1619254891404', '1', 'admin于2021-04-24 at 17:01:31 CST对用户进行了删除用户信息操作,识别码：7', 'admin', '2021-04-24 17:01:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3706, '1619254891427', '1', 'admin于2021-04-24 at 17:01:31 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3707, '1619254891427', '1', 'admin于2021-04-24 at 17:01:31 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3708, '1619254892935', '1', 'admin于2021-04-24 at 17:01:32 CST对用户进行了删除用户信息操作,识别码：10', 'admin', '2021-04-24 17:01:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3709, '1619254892958', '1', 'admin于2021-04-24 at 17:01:32 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3710, '1619254892960', '1', 'admin于2021-04-24 at 17:01:32 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3711, '1619254893801', '1', 'admin于2021-04-24 at 17:01:33 CST对用户进行了删除用户信息操作,识别码：9', 'admin', '2021-04-24 17:01:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3712, '1619254893825', '1', 'admin于2021-04-24 at 17:01:33 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3713, '1619254893825', '1', 'admin于2021-04-24 at 17:01:33 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3714, '1619254896408', '1', 'admin于2021-04-24 at 17:01:36 CST对用户进行了删除用户信息操作,识别码：11', 'admin', '2021-04-24 17:01:36', NULL, '1');
INSERT INTO `xg_log` VALUES (3715, '1619254896428', '1', 'admin于2021-04-24 at 17:01:36 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:36', NULL, '1');
INSERT INTO `xg_log` VALUES (3716, '1619254896429', '1', 'admin于2021-04-24 at 17:01:36 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:36', NULL, '1');
INSERT INTO `xg_log` VALUES (3717, '1619254898779', '1', 'admin于2021-04-24 at 17:01:38 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3718, '1619254903308', '1', 'admin于2021-04-24 at 17:01:43 CST对用户进行了删除用户信息操作,识别码：20', 'admin', '2021-04-24 17:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3719, '1619254903328', '1', 'admin于2021-04-24 at 17:01:43 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3720, '1619254903339', '1', 'admin于2021-04-24 at 17:01:43 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3721, '1619254903745', '1', 'admin于2021-04-24 at 17:01:43 CST对用户进行了删除用户信息操作,识别码：22', 'admin', '2021-04-24 17:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3722, '1619254903768', '1', 'admin于2021-04-24 at 17:01:43 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3723, '1619254903769', '1', 'admin于2021-04-24 at 17:01:43 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3724, '1619254904755', '1', 'admin于2021-04-24 at 17:01:44 CST对用户进行了删除用户信息操作,识别码：25', 'admin', '2021-04-24 17:01:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3725, '1619254904776', '1', 'admin于2021-04-24 at 17:01:44 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3726, '1619254904778', '1', 'admin于2021-04-24 at 17:01:44 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:01:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3727, '1619255071152', '1', 'admin于2021-04-24 at 17:04:31 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-24 17:04:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3728, '1619255071193', '1', 'admin于2021-04-24 at 17:04:31 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:04:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3729, '1619255103748', '1', 'admin于2021-04-24 at 17:05:03 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-24 17:05:03', NULL, '1');
INSERT INTO `xg_log` VALUES (3730, '1619255103793', '1', 'admin于2021-04-24 at 17:05:03 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:05:03', NULL, '1');
INSERT INTO `xg_log` VALUES (3731, '1619255133728', '1', 'admin于2021-04-24 at 17:05:33 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-24 17:05:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3732, '1619255133759', '1', 'admin于2021-04-24 at 17:05:33 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:05:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3733, '1619255156459', '1', 'admin于2021-04-24 at 17:05:56 CST对用户进行了修改用户信息操作,识别码：zcxx', 'admin', '2021-04-24 17:05:56', NULL, '1');
INSERT INTO `xg_log` VALUES (3734, '1619255156482', '1', 'admin于2021-04-24 at 17:05:56 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:05:56', NULL, '1');
INSERT INTO `xg_log` VALUES (3735, '1619255156506', '1', 'admin于2021-04-24 at 17:05:56 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:05:56', NULL, '1');
INSERT INTO `xg_log` VALUES (3736, '1619255166595', '1', 'admin于2021-04-24 at 17:06:06 CST对用户进行了修改用户信息操作,识别码：asdasd', 'admin', '2021-04-24 17:06:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3737, '1619255166617', '1', 'admin于2021-04-24 at 17:06:06 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3738, '1619255166621', '1', 'admin于2021-04-24 at 17:06:06 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3739, '1619255170070', '1', 'admin于2021-04-24 at 17:06:10 CST对用户进行了修改用户信息操作,识别码：加加加', 'admin', '2021-04-24 17:06:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3740, '1619255170108', '1', 'admin于2021-04-24 at 17:06:10 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3741, '1619255170111', '1', 'admin于2021-04-24 at 17:06:10 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3742, '1619255173860', '1', 'admin于2021-04-24 at 17:06:13 CST对用户进行了修改用户信息操作,识别码：ruth', 'admin', '2021-04-24 17:06:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3743, '1619255173887', '1', 'admin于2021-04-24 at 17:06:13 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3744, '1619255173887', '1', 'admin于2021-04-24 at 17:06:13 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3745, '1619255177709', '1', 'admin于2021-04-24 at 17:06:17 CST对用户进行了修改用户信息操作,识别码：ada111', 'admin', '2021-04-24 17:06:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3746, '1619255177731', '1', 'admin于2021-04-24 at 17:06:17 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3747, '1619255177732', '1', 'admin于2021-04-24 at 17:06:17 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3748, '1619255184334', '1', 'admin于2021-04-24 at 17:06:24 CST对用户进行了修改用户信息操作,识别码：121', 'admin', '2021-04-24 17:06:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3749, '1619255184360', '1', 'admin于2021-04-24 at 17:06:24 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3750, '1619255184361', '1', 'admin于2021-04-24 at 17:06:24 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:06:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3751, '1619255519906', '1', 'admin于2021-04-24 at 17:11:59 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:11:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3752, '1619256670513', '1', 'admin于2021-04-24 at 17:31:10 CST对用户进行了查询用户信息操作,识别码：', 'admin', '2021-04-24 17:31:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3753, '1619314733963-1842767308', '0', '在2021-04-25 at 09:38:53 CST,admin登录系统', 'admin', '2021-04-25 09:38:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3754, '1619315692211', '1', 'admin于2021-04-25 at 09:54:52 CST对用户进行了修改用户角色权限操作,识别码：/', 'admin', '2021-04-25 09:54:52', NULL, '1');
INSERT INTO `xg_log` VALUES (3755, '1619315706327', '1', 'admin于2021-04-25 at 09:55:06 CST对用户进行了修改用户角色权限操作,识别码：管理员/1,2,3,4,16,17', 'admin', '2021-04-25 09:55:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3756, '1619317412404', '2', 'admin于2021-04-25 at 10:23:32 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-25 10:23:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3757, '1619317420984', '2', 'admin于2021-04-25 at 10:23:40 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-04-25 10:23:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3758, '1619333477786', '1', 'admin于2021-04-25 at 14:51:17 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-04-25 14:51:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3759, '1619344596057-1842767308', '0', '在2021-04-25 at 17:56:36 CST,admin登录系统', 'admin', '2021-04-25 17:56:36', NULL, '1');
INSERT INTO `xg_log` VALUES (3760, '1619401455432-1842767308', '0', '在2021-04-26 at 09:44:15 CST,admin登录系统', 'admin', '2021-04-26 09:44:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3761, '1619536551812-1842767308', '0', '在2021-04-27 at 23:15:51 CST,admin登录系统', 'admin', '2021-04-27 23:15:51', NULL, '1');
INSERT INTO `xg_log` VALUES (3762, '1619581088532133025461', '0', '在2021-04-28 at 11:38:08 CST,zhangzhang登录系统', 'zhangzhang', '2021-04-28 11:38:08', NULL, '1');
INSERT INTO `xg_log` VALUES (3763, '1619595490555-1842767308', '0', '在2021-04-28 at 15:38:10 CST,admin登录系统', 'admin', '2021-04-28 15:38:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3764, '1619608079509-1842767308', '0', '在2021-04-28 at 19:07:59 CST,admin登录系统', 'admin', '2021-04-28 19:07:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3765, '1619608218804', '1', 'admin于2021-04-28 at 19:10:18 CST对用户进行了修改用户角色信息操作,识别码：48', 'admin', '2021-04-28 19:10:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3766, '1619608238589', '1', 'admin于2021-04-28 at 19:10:38 CST对用户进行了修改用户角色信息操作,识别码：49', 'admin', '2021-04-28 19:10:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3767, '1619608968602', '1', 'admin于2021-04-28 at 19:22:48 CST对用户进行了修改用户角色信息操作,识别码：52', 'admin', '2021-04-28 19:22:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3768, '1619608989535', '1', 'admin于2021-04-28 at 19:23:09 CST对用户进行了修改用户角色信息操作,识别码：51', 'admin', '2021-04-28 19:23:09', NULL, '1');
INSERT INTO `xg_log` VALUES (3769, '1619609006450', '1', 'admin于2021-04-28 at 19:23:26 CST对用户进行了修改用户角色信息操作,识别码：50', 'admin', '2021-04-28 19:23:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3770, '1619609143961', '1', 'admin于2021-04-28 at 19:25:43 CST对用户进行了修改用户信息操作,识别码：ceshi22', 'admin', '2021-04-28 19:25:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3771, '1619609159390', '1', 'admin于2021-04-28 at 19:25:59 CST对用户进行了修改用户信息操作,识别码：mayun', 'admin', '2021-04-28 19:25:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3772, '1619609167193', '1', 'admin于2021-04-28 at 19:26:07 CST对用户进行了修改用户信息操作,识别码：ceshia', 'admin', '2021-04-28 19:26:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3773, '1619619024645-1842767308', '0', '在2021-04-28 at 22:10:24 CST,admin登录系统', 'admin', '2021-04-28 22:10:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3774, '1619623084715-1842767308', '0', '在2021-04-28 at 23:18:04 CST,admin登录系统', 'admin', '2021-04-28 23:18:04', NULL, '1');
INSERT INTO `xg_log` VALUES (3775, '1619623154406-1842767308', '0', '在2021-04-28 at 23:19:14 GMT+08:00,admin登录系统', 'admin', '2021-04-28 23:19:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3776, '1619625157394-1842767308', '0', '在2021-04-28 at 23:52:37 GMT+08:00,admin登录系统', 'admin', '2021-04-28 23:52:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3777, '16196285999101420036660', '0', '在2021-04-29 at 00:49:59 GMT+08:00,admin登录系统', 'admin', '2021-04-29 00:50:00', NULL, '1');
INSERT INTO `xg_log` VALUES (3778, '1619671480172-1842767308', '0', '在2021-04-29 at 12:44:40 CST,admin登录系统', 'admin', '2021-04-29 12:44:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3779, '1619678914888-1842767308', '0', '在2021-04-29 at 14:48:34 CST,admin登录系统', 'admin', '2021-04-29 14:48:34', NULL, '1');
INSERT INTO `xg_log` VALUES (3780, '1619679276793', '2', 'admin于2021-04-29 at 14:54:36 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-29 14:54:36', NULL, '1');
INSERT INTO `xg_log` VALUES (3781, '1619680936397', '2', 'admin于2021-04-29 at 15:22:16 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:22:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3782, '1619680938796', '2', 'admin于2021-04-29 at 15:22:18 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:22:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3783, '1619681332799', '2', 'admin于2021-04-29 at 15:28:52 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-29 15:28:52', NULL, '1');
INSERT INTO `xg_log` VALUES (3784, '1619681344838', '2', 'admin于2021-04-29 at 15:29:04 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:29:04', NULL, '1');
INSERT INTO `xg_log` VALUES (3785, '1619681461678', '2', 'admin于2021-04-29 at 15:31:01 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-29 15:31:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3786, '1619681472900', '2', 'admin于2021-04-29 at 15:31:12 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:31:12', NULL, '1');
INSERT INTO `xg_log` VALUES (3787, '1619681537846', '2', 'admin于2021-04-29 at 15:32:17 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-29 15:32:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3788, '1619681541171', '2', 'admin于2021-04-29 at 15:32:21 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:32:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3789, '1619681652008', '2', 'admin于2021-04-29 at 15:34:12 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-29 15:34:12', NULL, '1');
INSERT INTO `xg_log` VALUES (3790, '1619681666454', '2', 'admin于2021-04-29 at 15:34:26 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:34:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3791, '1619681921994', '2', 'admin于2021-04-29 at 15:38:41 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-29 15:38:41', NULL, '1');
INSERT INTO `xg_log` VALUES (3792, '1619681927311', '2', 'admin于2021-04-29 at 15:38:47 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:38:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3793, '1619682066519', '2', 'admin于2021-04-29 at 15:41:06 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-29 15:41:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3794, '1619682079595', '2', 'admin于2021-04-29 at 15:41:19 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:41:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3795, '1619682348821', '2', 'admin于2021-04-29 at 15:45:48 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-29 15:45:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3796, '1619682352775', '2', 'admin于2021-04-29 at 15:45:52 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-29 15:45:52', NULL, '1');
INSERT INTO `xg_log` VALUES (3797, '1619682971321-1842767308', '0', '在2021-04-29 at 15:56:11 CST,admin登录系统', 'admin', '2021-04-29 15:56:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3798, '1619749485474-1842767308', '0', '在2021-04-30 at 10:24:45 CST,admin登录系统', 'admin', '2021-04-30 10:24:45', NULL, '1');
INSERT INTO `xg_log` VALUES (3799, '1619770582974-1842767308', '0', '在2021-04-30 at 16:16:22 CST,admin登录系统', 'admin', '2021-04-30 16:16:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3800, '1619770668704-1842767308', '0', '在2021-04-30 at 16:17:48 CST,admin登录系统', 'admin', '2021-04-30 16:17:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3801, '1619772802712-1842767308', '0', '在2021-04-30 at 16:53:22 CST,admin登录系统', 'admin', '2021-04-30 16:53:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3802, '1619776353099', '2', 'admin于2021-04-30 at 17:52:33 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 17:52:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3803, '1619776357097', '2', 'admin于2021-04-30 at 17:52:37 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:52:37', NULL, '1');
INSERT INTO `xg_log` VALUES (3804, '1619776431268', '2', 'admin于2021-04-30 at 17:53:51 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 17:53:51', NULL, '1');
INSERT INTO `xg_log` VALUES (3805, '1619776438974', '2', 'admin于2021-04-30 at 17:53:58 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:53:58', NULL, '1');
INSERT INTO `xg_log` VALUES (3806, '1619776527226', '2', 'admin于2021-04-30 at 17:55:27 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 17:55:27', NULL, '1');
INSERT INTO `xg_log` VALUES (3807, '1619776532057', '2', 'admin于2021-04-30 at 17:55:32 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:55:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3808, '1619776570677', '2', 'admin于2021-04-30 at 17:56:10 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-30 17:56:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3809, '1619776573196', '2', 'admin于2021-04-30 at 17:56:13 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:56:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3810, '1619776619840', '2', 'admin于2021-04-30 at 17:56:59 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-30 17:56:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3811, '1619776621213', '2', 'admin于2021-04-30 at 17:57:01 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:57:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3812, '1619776630326', '2', 'admin于2021-04-30 at 17:57:10 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-04-30 17:57:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3813, '1619776631573', '2', 'admin于2021-04-30 at 17:57:11 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:57:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3814, '1619776670013', '2', 'admin于2021-04-30 at 17:57:50 CST对物资进行了审批驳回操作,识别码：', 'admin', '2021-04-30 17:57:50', NULL, '1');
INSERT INTO `xg_log` VALUES (3815, '1619776754112', '2', 'admin于2021-04-30 at 17:59:14 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 17:59:14', NULL, '1');
INSERT INTO `xg_log` VALUES (3816, '1619776756766', '2', 'admin于2021-04-30 at 17:59:16 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 17:59:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3817, '1619776846577', '2', 'admin于2021-04-30 at 18:00:46 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 18:00:46', NULL, '1');
INSERT INTO `xg_log` VALUES (3818, '1619776849848', '2', 'admin于2021-04-30 at 18:00:49 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 18:00:49', NULL, '1');
INSERT INTO `xg_log` VALUES (3819, '1619776964195', '2', 'admin于2021-04-30 at 18:02:44 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-04-30 18:02:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3820, '1619776967962', '2', 'admin于2021-04-30 at 18:02:47 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 18:02:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3821, '1619777056320', '2', 'admin于2021-04-30 at 18:04:16 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 18:04:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3822, '1619777059946', '2', 'admin于2021-04-30 at 18:04:19 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 18:04:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3823, '1619777143369', '2', 'admin于2021-04-30 at 18:05:43 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-04-30 18:05:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3824, '1619777147406', '2', 'admin于2021-04-30 at 18:05:47 CST对物资进行了审批操作,识别码：', 'admin', '2021-04-30 18:05:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3825, '1619778420936-1842767308', '0', '在2021-04-30 at 18:27:00 CST,admin登录系统', 'admin', '2021-04-30 18:27:00', NULL, '1');
INSERT INTO `xg_log` VALUES (3826, '1619783020295-1842767308', '0', '在2021-04-30 at 19:43:40 CST,admin登录系统', 'admin', '2021-04-30 19:43:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3827, '1619784668294-1874052256', '0', '在2021-04-30 at 20:11:08 CST,ceshi登录系统', 'ceshi', '2021-04-30 20:11:08', NULL, '1');
INSERT INTO `xg_log` VALUES (3828, '1619784713996-1842767308', '0', '在2021-04-30 at 20:11:53 CST,admin登录系统', 'admin', '2021-04-30 20:11:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3829, '1619784805767', '1', 'admin于2021-04-30 at 20:13:25 CST对用户进行了修改用户信息操作,识别码：liwentao', 'admin', '2021-04-30 20:13:25', NULL, '1');
INSERT INTO `xg_log` VALUES (3830, '1619784829387', '1', 'admin于2021-04-30 at 20:13:49 CST对用户进行了修改用户信息操作,识别码：yxy', 'admin', '2021-04-30 20:13:49', NULL, '1');
INSERT INTO `xg_log` VALUES (3831, '16197850929921522259775', '0', '在2021-04-30 at 20:18:12 CST,yxy登录系统', 'yxy', '2021-04-30 20:18:12', NULL, '1');
INSERT INTO `xg_log` VALUES (3832, '1619790006242-1842767308', '0', '在2021-04-30 at 21:40:06 CST,admin登录系统', 'admin', '2021-04-30 21:40:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3833, '1619829670258-1842767308', '0', '在2021-05-01 at 08:41:10 CST,admin登录系统', 'admin', '2021-05-01 08:41:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3834, '1619834334377-1842767308', '0', '在2021-05-01 at 09:58:54 CST,admin登录系统', 'admin', '2021-05-01 09:58:54', NULL, '1');
INSERT INTO `xg_log` VALUES (3835, '1619834416802', '1', 'admin于2021-05-01 at 10:00:16 CST对用户进行了修改用户角色信息操作,识别码：1', 'admin', '2021-05-01 10:00:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3836, '1619837181798', '2', 'admin于2021-05-01 at 10:46:21 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-05-01 10:46:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3837, '1619837215957', '2', 'admin于2021-05-01 at 10:46:55 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-05-01 10:46:55', NULL, '1');
INSERT INTO `xg_log` VALUES (3838, '1619837242907', '2', 'admin于2021-05-01 at 10:47:22 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-05-01 10:47:22', NULL, '1');
INSERT INTO `xg_log` VALUES (3839, '1619837256931', '2', 'admin于2021-05-01 at 10:47:36 CST对物资进行了修改物资资料操作,识别码：null', 'admin', '2021-05-01 10:47:36', NULL, '1');
INSERT INTO `xg_log` VALUES (3840, '1619847465566-1842767308', '0', '在2021-05-01 at 13:37:45 CST,admin登录系统', 'admin', '2021-05-01 13:37:45', NULL, '1');
INSERT INTO `xg_log` VALUES (3841, '1619847981204-1842767308', '0', '在2021-05-01 at 13:46:21 CST,admin登录系统', 'admin', '2021-05-01 13:46:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3842, '1619877187665-1842767308', '0', '在2021-05-01 at 21:53:07 CST,admin登录系统', 'admin', '2021-05-01 21:53:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3843, '1619877519736', '2', 'admin于2021-05-01 at 21:58:39 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-05-01 21:58:39', NULL, '1');
INSERT INTO `xg_log` VALUES (3844, '1619877523562', '2', 'admin于2021-05-01 at 21:58:43 CST对物资进行了审批操作,识别码：', 'admin', '2021-05-01 21:58:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3845, '1619878065370', '2', 'admin于2021-05-01 at 22:07:45 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-05-01 22:07:45', NULL, '1');
INSERT INTO `xg_log` VALUES (3846, '1619878253119', '2', 'admin于2021-05-01 at 22:10:53 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-05-01 22:10:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3847, '1619879069978', '2', 'admin于2021-05-01 at 22:24:29 CST对物资进行了新增物资资料操作,识别码：', 'admin', '2021-05-01 22:24:29', NULL, '1');
INSERT INTO `xg_log` VALUES (3848, '1619955218624-1842767308', '0', '在2021-05-02 at 19:33:38 CST,admin登录系统', 'admin', '2021-05-02 19:33:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3849, '1620027084378-1842767308', '0', '在2021-05-03 at 15:31:24 CST,admin登录系统', 'admin', '2021-05-03 15:31:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3850, '1620291644019-1842767308', '0', '在2021-05-06 at 17:00:44 CST,admin登录系统', 'admin', '2021-05-06 17:00:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3851, '1620354926676-1842767308', '0', '在2021-05-07 at 10:35:26 CST,admin登录系统', 'admin', '2021-05-07 10:35:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3852, '1620359360219', '2', 'admin于2021-05-07 at 11:49:20 CST对物资进行了新增物资入库操作,识别码：', 'admin', '2021-05-07 11:49:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3853, '1620361338381-1842767308', '0', '在2021-05-07 at 12:22:18 CST,admin登录系统', 'admin', '2021-05-07 12:22:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3854, '1620362112606', '2', 'admin于2021-05-07 at 12:35:12 CST对物资进行了新增物资发放信息操作,识别码：', 'admin', '2021-05-07 12:35:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3855, '1620362774976-1412606609', '0', '在2021-05-07 at 12:46:14 CST,ruth登录系统', 'ruth', '2021-05-07 12:46:14', NULL, '1');
INSERT INTO `xg_log` VALUES (3856, '1620362816949133025461', '0', '在2021-05-07 at 12:46:56 CST,zhangzhang登录系统', 'zhangzhang', '2021-05-07 12:46:56', NULL, '1');
INSERT INTO `xg_log` VALUES (3857, '1620362839396-1842767308', '0', '在2021-05-07 at 12:47:19 CST,admin登录系统', 'admin', '2021-05-07 12:47:18', NULL, '1');
INSERT INTO `xg_log` VALUES (3858, '1620362888535', '1', 'admin于2021-05-07 at 12:48:08 CST对用户进行了修改用户信息操作,识别码：mate', 'admin', '2021-05-07 12:48:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3859, '1620362948801', '1', 'admin于2021-05-07 at 12:49:08 CST对用户进行了修改用户信息操作,识别码：ccc', 'admin', '2021-05-07 12:49:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3860, '1620362968186', '1', 'admin于2021-05-07 at 12:49:28 CST对用户进行了修改用户信息操作,识别码：neo', 'admin', '2021-05-07 12:49:27', NULL, '1');
INSERT INTO `xg_log` VALUES (3861, '1620362975982', '1', 'admin于2021-05-07 at 12:49:35 CST对用户进行了修改用户信息操作,识别码：mike', 'admin', '2021-05-07 12:49:35', NULL, '1');
INSERT INTO `xg_log` VALUES (3862, '1620362990166', '1', 'admin于2021-05-07 at 12:49:50 CST对用户进行了修改用户信息操作,识别码：survicer', 'admin', '2021-05-07 12:49:49', NULL, '1');
INSERT INTO `xg_log` VALUES (3863, '1620362998630', '1', 'admin于2021-05-07 at 12:49:58 CST对用户进行了修改用户信息操作,识别码：admin', 'admin', '2021-05-07 12:49:57', NULL, '1');
INSERT INTO `xg_log` VALUES (3864, '1620363053682', '1', 'admin于2021-05-07 at 12:50:53 CST对用户进行了修改用户信息操作,识别码：fell', 'admin', '2021-05-07 12:50:52', NULL, '1');
INSERT INTO `xg_log` VALUES (3865, '1620363889074', '1', 'admin于2021-05-07 at 13:04:49 CST对用户进行了修改用户信息操作,识别码：张一一', 'admin', '2021-05-07 13:04:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3866, '1620364249554', '1', 'admin于2021-05-07 at 13:10:49 CST对用户进行了修改用户信息操作,识别码：张一', 'admin', '2021-05-07 13:10:48', NULL, '1');
INSERT INTO `xg_log` VALUES (3867, '1620364331502', '1', 'admin于2021-05-07 at 13:12:11 CST对用户进行了修改用户信息操作,识别码：张一一', 'admin', '2021-05-07 13:12:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3868, '1620364957475-1842767308', '0', '在2021-05-07 at 13:22:37 CST,admin登录系统', 'admin', '2021-05-07 13:22:37', NULL, '1');
INSERT INTO `xg_log` VALUES (3869, '1620368212134-1842767308', '0', '在2021-05-07 at 14:16:52 CST,admin登录系统', 'admin', '2021-05-07 14:16:52', NULL, '1');
INSERT INTO `xg_log` VALUES (3870, '1620375961560-1842767308', '0', '在2021-05-07 at 16:26:01 CST,admin登录系统', 'admin', '2021-05-07 16:26:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3871, '1620385332247-1842767308', '0', '在2021-05-07 at 19:02:12 CST,admin登录系统', 'admin', '2021-05-07 19:02:12', NULL, '1');
INSERT INTO `xg_log` VALUES (3872, '1620389647773-1842767308', '0', '在2021-05-07 at 20:14:07 CST,admin登录系统', 'admin', '2021-05-07 20:14:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3873, '1620440570127-1842767308', '0', '在2021-05-08 at 10:22:50 CST,admin登录系统', 'admin', '2021-05-08 10:22:50', NULL, '1');
INSERT INTO `xg_log` VALUES (3874, '1620442484377-1842767308', '0', '在2021-05-08 at 10:54:44 CST,admin登录系统', 'admin', '2021-05-08 10:54:43', NULL, '1');
INSERT INTO `xg_log` VALUES (3875, '1620447797162-1842767308', '0', '在2021-05-08 at 12:23:17 CST,admin登录系统', 'admin', '2021-05-08 12:23:17', NULL, '1');
INSERT INTO `xg_log` VALUES (3876, '1620615093629-1842767308', '0', '在2021-05-10 at 10:51:33 CST,admin登录系统', 'admin', '2021-05-10 10:51:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3877, '1620623729200-1842767308', '0', '在2021-05-10 at 13:15:29 CST,admin登录系统', 'admin', '2021-05-10 13:15:29', NULL, '1');
INSERT INTO `xg_log` VALUES (3878, '1620631165282', '1', 'admin于2021-05-10 at 15:19:25 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-05-10 15:19:25', NULL, '1');
INSERT INTO `xg_log` VALUES (3879, '1620635831120-1842767308', '0', '在2021-05-10 at 16:37:11 CST,admin登录系统', 'admin', '2021-05-10 16:37:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3880, '1620664427359-1842767308', '0', '在2021-05-11 at 00:33:47 CST,admin登录系统', 'admin', '2021-05-11 00:33:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3881, '16206644788691522259775', '0', '在2021-05-11 at 00:34:38 CST,yxy登录系统', 'yxy', '2021-05-11 00:34:38', NULL, '1');
INSERT INTO `xg_log` VALUES (3882, '16206644931801522259775', '0', '在2021-05-11 at 00:34:53 CST,yxy登录系统', 'yxy', '2021-05-11 00:34:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3883, '1620726099029-1842767308', '0', '在2021-05-11 at 17:41:39 CST,admin登录系统', 'admin', '2021-05-11 17:41:39', NULL, '1');
INSERT INTO `xg_log` VALUES (3884, '1620797306999-1842767308', '0', '在2021-05-12 at 13:28:26 CST,admin登录系统', 'admin', '2021-05-12 13:28:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3885, '1620797824225', '1', 'admin于2021-05-12 at 13:37:04 CST对用户进行了修改用户信息操作,识别码：mate', 'admin', '2021-05-12 13:37:04', NULL, '1');
INSERT INTO `xg_log` VALUES (3886, '1620797829999', '1', 'admin于2021-05-12 at 13:37:09 CST对用户进行了修改用户信息操作,识别码：ml2', 'admin', '2021-05-12 13:37:09', NULL, '1');
INSERT INTO `xg_log` VALUES (3887, '1620797843343', '1', 'admin于2021-05-12 at 13:37:23 CST对用户进行了修改用户信息操作,识别码：ml', 'admin', '2021-05-12 13:37:23', NULL, '1');
INSERT INTO `xg_log` VALUES (3888, '1620798989034-1512558233', '0', '在2021-05-12 at 13:56:29 CST,ml登录系统', 'ml', '2021-05-12 13:56:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3889, '1620799020872-1842767308', '0', '在2021-05-12 at 13:57:00 CST,admin登录系统', 'admin', '2021-05-12 13:57:00', NULL, '1');
INSERT INTO `xg_log` VALUES (3890, '1620799036200', '1', 'admin于2021-05-12 at 13:57:16 CST对用户进行了修改用户角色信息操作,识别码：53', 'admin', '2021-05-12 13:57:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3891, '1620799048887-1512558233', '0', '在2021-05-12 at 13:57:28 CST,ml登录系统', 'ml', '2021-05-12 13:57:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3892, '1620802526400-1842767308', '0', '在2021-05-12 at 14:55:26 CST,admin登录系统', 'admin', '2021-05-12 14:55:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3893, '1620802685296-279290204', '0', '在2021-05-12 at 14:58:05 CST,mate登录系统', 'mate', '2021-05-12 14:58:05', NULL, '1');
INSERT INTO `xg_log` VALUES (3894, '1620802712860-1842767308', '0', '在2021-05-12 at 14:58:32 CST,admin登录系统', 'admin', '2021-05-12 14:58:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3895, '1620802984659-1512558233', '0', '在2021-05-12 at 15:03:04 CST,ml登录系统', 'ml', '2021-05-12 15:03:04', NULL, '1');
INSERT INTO `xg_log` VALUES (3896, '1620803004504-1842767308', '0', '在2021-05-12 at 15:03:24 CST,admin登录系统', 'admin', '2021-05-12 15:03:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3897, '1620803020162-279290204', '0', '在2021-05-12 at 15:03:40 CST,mate登录系统', 'mate', '2021-05-12 15:03:39', NULL, '1');
INSERT INTO `xg_log` VALUES (3898, '1620803081198-1512558233', '2', 'admin于2021-05-12 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'ml', '2021-05-12 15:04:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3899, '1620803320534-1842767308', '2', 'admin于2021-05-12 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-12 15:08:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3900, '1620810175194-1842767308', '0', '在2021-05-12 at 17:02:55 CST,admin登录系统', 'admin', '2021-05-12 17:02:54', NULL, '1');
INSERT INTO `xg_log` VALUES (3901, '1620810311902-1512558233', '2', 'admin于2021-05-12 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'ml', '2021-05-12 17:05:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3902, '1620810367186-1842767308', '0', '在2021-05-12 at 17:06:07 CST,admin登录系统', 'admin', '2021-05-12 17:06:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3903, '1620810659282', '1', 'admin于2021-05-12 at 17:10:59 CST对用户进行了修改用户角色权限操作,识别码：管理员/1,2,3,4,16,17,20', 'admin', '2021-05-12 17:10:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3904, '1620810691009', '1', 'admin于2021-05-12 at 17:11:31 CST对用户进行了修改用户角色权限操作,识别码：管理员/1,2,3,4,16,17', 'admin', '2021-05-12 17:11:30', NULL, '1');
INSERT INTO `xg_log` VALUES (3905, '1620811104383-1842767308', '0', '在2021-05-12 at 17:18:24 CST,admin登录系统', 'admin', '2021-05-12 17:18:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3906, '1620812155419-1842767308', '2', 'admin于2021-05-14 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-13 17:35:55', NULL, '1');
INSERT INTO `xg_log` VALUES (3907, '1620812809672-1842767308', '2', 'admin于2021-05-14 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-13 17:46:49', NULL, '1');
INSERT INTO `xg_log` VALUES (3908, '1620836287323-1512558233', '2', 'admin于2021-05-13 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'ml', '2021-05-13 00:18:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3909, '1620836463141-1842767308', '2', 'admin于2021-05-13 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-13 00:21:03', NULL, '1');
INSERT INTO `xg_log` VALUES (3910, '1620836473038-1512558233', '0', '在2021-05-13 at 00:21:13 CST,ml登录系统', 'ml', '2021-05-13 00:21:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3911, '1620873374208-1842767308', '0', '在2021-05-13 at 10:36:14 CST,admin登录系统', 'admin', '2021-05-13 10:36:14', NULL, '1');
INSERT INTO `xg_log` VALUES (3912, '1620873782512', '1', 'admin于2021-05-13 at 10:43:02 CST对用户进行了修改用户信息操作,识别码：ceshia', 'admin', '2021-05-13 10:43:02', NULL, '1');
INSERT INTO `xg_log` VALUES (3913, '1620873846788', '2', 'admin于2021-05-14 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-13 10:44:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3914, '1620873856394', '1', 'admin于2021-05-13 at 10:44:16 CST对用户进行了修改用户角色信息操作,识别码：47', 'admin', '2021-05-14 10:44:16', NULL, '1');
INSERT INTO `xg_log` VALUES (3915, '1620873863693', '1', 'admin于2021-05-13 at 10:44:23 CST对用户进行了修改用户角色信息操作,识别码：47', 'admin', '2021-05-14 10:44:23', NULL, '1');
INSERT INTO `xg_log` VALUES (3916, '1620973491387-1842767308', '0', '在2021-05-14 at 14:24:51 CST,admin登录系统', 'admin', '2021-05-14 14:24:51', NULL, '1');
INSERT INTO `xg_log` VALUES (3917, '1620976591221', '2', 'admin于2021-05-14 at 15:16:31 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-14 15:16:31', NULL, '1');
INSERT INTO `xg_log` VALUES (3918, '1621085955517-1842767308', '0', '在2021-05-15 at 21:39:15 CST,admin登录系统', 'admin', '2021-05-15 21:39:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3919, '1621085986779-1842767308', '0', '在2021-05-15 at 21:39:46 CST,admin登录系统', 'admin', '2021-05-15 21:39:46', NULL, '1');
INSERT INTO `xg_log` VALUES (3920, '1621086019914-1512558233', '0', '在2021-05-15 at 21:40:19 CST,ml登录系统', 'ml', '2021-05-15 21:40:19', NULL, '1');
INSERT INTO `xg_log` VALUES (3921, '1621086066001-1512558233', '0', '在2021-05-15 at 21:41:06 CST,ml登录系统', 'ml', '2021-05-15 21:41:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3922, '1621094321732-1842767308', '0', '在2021-05-15 at 23:58:41 CST,admin登录系统', 'admin', '2021-05-15 23:58:41', NULL, '1');
INSERT INTO `xg_log` VALUES (3923, '1621094346392', '1', 'admin于2021-05-15 at 23:59:06 CST对用户进行了新增用户信息操作,识别码：', 'admin', '2021-05-15 23:59:06', NULL, '1');
INSERT INTO `xg_log` VALUES (3924, '1621094360687', '1', 'admin于2021-05-15 at 23:59:20 CST对用户进行了修改用户角色信息操作,识别码：54', 'admin', '2021-05-15 23:59:20', NULL, '1');
INSERT INTO `xg_log` VALUES (3925, '1621094382950', '1', 'admin于2021-05-15 at 23:59:42 CST对用户进行了修改用户信息操作,识别码：lsp', 'admin', '2021-05-15 23:59:42', NULL, '1');
INSERT INTO `xg_log` VALUES (3926, '1621094394273-831717846', '0', '在2021-05-15 at 23:59:54 CST,lsp登录系统', 'lsp', '2021-05-15 23:59:54', NULL, '1');
INSERT INTO `xg_log` VALUES (3927, '1621094504322-1512558233', '0', '在2021-05-16 at 00:01:44 CST,ml登录系统', 'ml', '2021-05-16 00:01:44', NULL, '1');
INSERT INTO `xg_log` VALUES (3928, '1621094694839-1512558233', '0', '在2021-05-16 at 00:04:54 CST,ml登录系统', 'ml', '2021-05-16 00:04:54', NULL, '1');
INSERT INTO `xg_log` VALUES (3929, '1621094771053-831717846', '0', '在2021-05-16 at 00:06:11 CST,lsp登录系统', 'lsp', '2021-05-16 00:06:11', NULL, '1');
INSERT INTO `xg_log` VALUES (3930, '1621145827729-1842767308', '0', '在2021-05-16 at 14:17:07 CST,admin登录系统', 'admin', '2021-05-16 14:17:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3931, '1621146767962-1842767308', '0', '在2021-05-16 at 14:32:47 CST,admin登录系统', 'admin', '2021-05-16 14:32:47', NULL, '1');
INSERT INTO `xg_log` VALUES (3932, '1621146959434-1842767308', '0', '在2021-05-16 at 14:35:59 CST,admin登录系统', 'admin', '2021-05-16 14:35:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3933, '1621148792522-1842767308', '0', '在2021-05-16 at 15:06:32 CST,admin登录系统', 'admin', '2021-05-16 15:06:32', NULL, '1');
INSERT INTO `xg_log` VALUES (3934, '1621148825212133025461', '0', '在2021-05-16 at 15:07:05 CST,zhangzhang登录系统', 'zhangzhang', '2021-05-16 15:07:05', NULL, '1');
INSERT INTO `xg_log` VALUES (3935, '1621148862913-1512558233', '0', '在2021-05-16 at 15:07:42 CST,ml登录系统', 'ml', '2021-05-16 15:07:42', NULL, '1');
INSERT INTO `xg_log` VALUES (3936, '1621149088900-1842767308', '0', '在2021-05-16 at 15:11:28 CST,admin登录系统', 'admin', '2021-05-16 15:11:28', NULL, '1');
INSERT INTO `xg_log` VALUES (3937, '1621149525324-1842767308', '0', '在2021-05-16 at 15:18:45 CST,admin登录系统', 'admin', '2021-05-16 15:18:45', NULL, '1');
INSERT INTO `xg_log` VALUES (3938, '1621152614899-1842767308', '0', '在2021-05-16 at 16:10:14 CST,admin登录系统', 'admin', '2021-05-16 16:10:14', NULL, '1');
INSERT INTO `xg_log` VALUES (3939, '1621155007348-1842767308', '0', '在2021-05-16 at 16:50:07 CST,admin登录系统', 'admin', '2021-05-16 16:50:07', NULL, '1');
INSERT INTO `xg_log` VALUES (3940, '1621226763924-1842767308', '0', '在2021-05-17 at 12:46:03 CST,admin登录系统', 'admin', '2021-05-17 12:46:03', NULL, '1');
INSERT INTO `xg_log` VALUES (3941, '1621226784430-831717846', '0', '在2021-05-17 at 12:46:24 CST,lsp登录系统', 'lsp', '2021-05-17 12:46:24', NULL, '1');
INSERT INTO `xg_log` VALUES (3942, '1621227555709-831717846', '0', '在2021-05-17 at 12:59:15 CST,lsp登录系统', 'lsp', '2021-05-17 12:59:15', NULL, '1');
INSERT INTO `xg_log` VALUES (3943, '1621227934530-1842767308', '0', '在2021-05-17 at 13:05:34 CST,admin登录系统', 'admin', '2021-05-17 13:05:34', NULL, '1');
INSERT INTO `xg_log` VALUES (3944, '1621228426624-1512558233', '0', '在2021-05-17 at 13:13:46 CST,ml登录系统', 'ml', '2021-05-17 13:13:46', NULL, '1');
INSERT INTO `xg_log` VALUES (3945, '1621254180027-1842767308', '0', '在2021-05-17 at 20:23:00 CST,admin登录系统', 'admin', '2021-05-17 20:23:00', NULL, '1');
INSERT INTO `xg_log` VALUES (3946, '1621319740866-1842767308', '0', '在2021-05-18 at 14:35:40 CST,admin登录系统', 'admin', '2021-05-18 14:35:40', NULL, '1');
INSERT INTO `xg_log` VALUES (3947, '1621350430055-1842767308', '0', '在2021-05-18 at 23:07:10 CST,admin登录系统', 'admin', '2021-05-18 23:07:10', NULL, '1');
INSERT INTO `xg_log` VALUES (3948, '1621351105254-1842767308', '0', '在2021-05-18 at 23:18:25 CST,admin登录系统', 'admin', '2021-05-18 23:18:25', NULL, '1');
INSERT INTO `xg_log` VALUES (3949, '1621394412015-1842767308', '0', '在2021-05-19 at 11:20:12 CST,admin登录系统', 'admin', '2021-05-19 11:20:12', NULL, '1');
INSERT INTO `xg_log` VALUES (3950, '1621444865135-1842767308', '0', '在2021-05-20 at 01:21:05 CST,admin登录系统', 'admin', '2021-05-20 01:21:05', NULL, '1');
INSERT INTO `xg_log` VALUES (3951, '1621665656932-1842767308', '0', '在2021-05-22 at 14:40:56 CST,admin登录系统', 'admin', '2021-05-22 14:40:56', NULL, '1');
INSERT INTO `xg_log` VALUES (3952, '1621665734308-1512558233', '0', '在2021-05-22 at 14:42:14 CST,ml登录系统', 'ml', '2021-05-22 14:42:14', NULL, '1');
INSERT INTO `xg_log` VALUES (3953, '1621665778753-831717846', '0', '在2021-05-22 at 14:42:58 CST,lsp登录系统', 'lsp', '2021-05-22 14:42:58', NULL, '1');
INSERT INTO `xg_log` VALUES (3954, '1621666425286-1842767308', '0', '在2021-05-22 at 14:53:45 CST,admin登录系统', 'admin', '2021-05-22 14:53:45', NULL, '1');
INSERT INTO `xg_log` VALUES (3955, '1621755930723-1842767308', '0', '在2021-05-23 at 15:45:30 CST,admin登录系统', 'admin', '2021-05-23 15:45:30', NULL, '1');
INSERT INTO `xg_log` VALUES (3956, '1621756028239', '1', 'admin于2021-05-23 at 15:47:08 CST对用户进行了修改用户角色信息操作,识别码：1', 'admin', '2021-05-23 15:47:08', NULL, '1');
INSERT INTO `xg_log` VALUES (3957, '1621756233416-831717846', '0', '在2021-05-23 at 15:50:33 CST,lsp登录系统', 'lsp', '2021-05-23 15:50:33', NULL, '1');
INSERT INTO `xg_log` VALUES (3958, '16217568594431522259775', '0', '在2021-05-23 at 16:00:59 CST,yxy登录系统', 'yxy', '2021-05-23 16:00:59', NULL, '1');
INSERT INTO `xg_log` VALUES (3959, '1621826940643-1842767308', '0', '在2021-05-24 at 11:29:00 CST,admin登录系统', 'admin', '2021-05-24 11:29:00', NULL, '1');
INSERT INTO `xg_log` VALUES (3960, '1621831621556-1842767308', '0', '在2021-05-24 at 12:47:01 CST,admin登录系统', 'admin', '2021-05-24 12:47:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3961, '1622037086561-1842767308', '0', '在2021-05-26 at 21:51:26 CST,admin登录系统', 'admin', '2021-05-26 21:51:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3962, '1622037241618-1842767308', '0', '在2021-05-26 at 21:54:01 CST,admin登录系统', 'admin', '2021-05-26 21:54:01', NULL, '1');
INSERT INTO `xg_log` VALUES (3963, '1622096109520-1842767308', '0', '在2021-05-27 at 14:15:09 CST,admin登录系统', 'admin', '2021-05-27 14:15:09', NULL, '1');
INSERT INTO `xg_log` VALUES (3964, '1622099773917-1842767308', '0', '在2021-05-27 at 15:16:13 CST,admin登录系统', 'admin', '2021-05-27 15:16:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3965, '1622112021407-1842767308', '0', '在2021-05-27 at 18:40:21 CST,admin登录系统', 'admin', '2021-05-27 18:40:21', NULL, '1');
INSERT INTO `xg_log` VALUES (3966, '1622112362063-1842767308', '0', '在2021-05-27 at 18:46:02 CST,admin登录系统', 'admin', '2021-05-27 18:46:02', NULL, '1');
INSERT INTO `xg_log` VALUES (3967, '1622112473421-1842767308', '0', '在2021-05-27 at 18:47:53 CST,admin登录系统', 'admin', '2021-05-27 18:47:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3968, '1622112488215-1842767308', '0', '在2021-05-27 at 18:48:08 CST,admin登录系统', 'admin', '2021-05-27 18:48:08', NULL, '1');
INSERT INTO `xg_log` VALUES (3969, '1622112553598', '2', 'admin于2021-05-27 at 18:49:13 CST对物资进行了修改物资发放信息操作,识别码：null', 'admin', '2021-05-27 18:49:13', NULL, '1');
INSERT INTO `xg_log` VALUES (3970, '1622191733253-1842767308', '0', '在2021-05-28 at 16:48:53 CST,admin登录系统', 'admin', '2021-05-28 16:48:53', NULL, '1');
INSERT INTO `xg_log` VALUES (3971, '1622276846342-1842767308', '0', '在2021-05-29 at 16:27:26 CST,admin登录系统', 'admin', '2021-05-29 16:27:26', NULL, '1');
INSERT INTO `xg_log` VALUES (3972, '1622299856605-1842767308', '0', '在2021-05-29 at 22:50:56 CST,admin登录系统', 'admin', '2021-05-29 22:50:56', NULL, '1');

-- ----------------------------
-- Table structure for xg_material_from
-- ----------------------------
DROP TABLE IF EXISTS `xg_material_from`;
CREATE TABLE `xg_material_from`  (
  `from_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_area_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_area_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_area_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_area_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`from_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_material_from
-- ----------------------------
INSERT INTO `xg_material_from` VALUES (43, '1619087243646XgWzF11123asd120lwxf6f', '湖北省', '荆门市', '市辖区', '湖北省 天门市竟陵街道办事处西龙社区', '杨经理', '13476235517', '公司网站 http://www.xinkang-api.com，https://show.guidechem.com/jusheng878', '1', '2021-04-22 18:27:23', NULL);
INSERT INTO `xg_material_from` VALUES (44, '1619156677187XgWzFrombx1ki24t7hlw', '浙江省', '温州市', '市辖区', '浙江省温州市平阳县海润路与新滨海路交叉口西南50米', '潘梦妮', '13906870034', 'http://www.wzonjx.com/', '1', '2021-04-23 13:44:37', NULL);
INSERT INTO `xg_material_from` VALUES (45, '1619156821947XgWzFrom39tka8lzdoj6', '山东省', '济南市', '天桥区', '济南市天桥区仁丰前街2号', '李灿辉', '18560048968', 'http://www.sdyxdz.com/a/contact/', '1', '2021-04-23 13:47:01', NULL);
INSERT INTO `xg_material_from` VALUES (46, '1619157016986XgWzFromj8rcyp1avlfv', '广西壮族自治区', '桂林市', '市辖区', '桂林市桂林经济技术开发区水荆东路1-2号', '胡智强 （先生）', '18907739928', 'http://igxbaidu.net/index.php?homepage=wd-hbjk2020&file=contact', '1', '2021-04-23 13:50:16', NULL);
INSERT INTO `xg_material_from` VALUES (47, '1619157281623XgWzFromaxs79cp1pjbt', '广东省', '广州市', '花都区', '广东省广州市花都区三东大道新和第四工业区', '王小姐', '13538896727', 'http://pengboglasses.czvv.com/', '1', '2021-04-23 13:54:41', NULL);
INSERT INTO `xg_material_from` VALUES (48, '1619157506668XgWzFromrgesbtro6goj', '江苏省', '盐城市', '亭湖区', '中国 江苏 盐城市亭湖区 新洋经济区新洋路58号9号厂房', '方国华 先生', '13705101386', 'https://xfylyp.1688.com/', '1', '2021-04-23 13:58:26', NULL);
INSERT INTO `xg_material_from` VALUES (49, '1619157829726XgWzFromw1jhpdlvukla', '广东省', '佛山市', '南海区', '中国 广东 佛山市南海区 大沥镇德裕宠物用品市场165档', '王琪 女士', '13928086450', 'https://shop986x45kx04512.1688.com/page/contactinfo.htm?spm=a2615.2177701.autotrace-topNav.6.22802a0', '1', '2021-04-23 14:03:49', NULL);
INSERT INTO `xg_material_from` VALUES (50, '1619158248858XgWzFroma1rh2l5np0lt', '江苏省', '南京市', '玄武区', '南京市玄武区徐庄软件园环园东路1号鱼跃科技中心', '王女士', '17751752564', 'https://www.yuyue.com.cn/index.php/contactus.html', '1', '2021-04-23 14:10:48', NULL);
INSERT INTO `xg_material_from` VALUES (51, '1619252573059XgWzFromwbiq3hr0el3j', '广东省', '广州市', '市辖区', '广东省中山市中山市市辖区东阜三路338', '李先生', '12390238911', '', '1', '2021-04-24 16:22:53', NULL);
INSERT INTO `xg_material_from` VALUES (52, '1619252761670XgWzFromg6nn87uiad3c', '湖南省', '长沙市', '市辖区', '湖南省长沙县星沙壹号企业特区19栋202', '李小姐', '18299121112', '邮箱：yujiao.chen@hnwdit.com', '1', '2021-04-24 16:26:01', NULL);
INSERT INTO `xg_material_from` VALUES (54, '1619681921956XgWzFromve25b5tuydgs', '广东省', '广州市', '番禺区', '广州市番禺区石基镇官涌村海涌路129号之105', '谭先生', '13316097968', 'www.gzshenbao.com', '1', '2021-04-29 15:38:41', NULL);
INSERT INTO `xg_material_from` VALUES (55, '1619682348774XgWzFrommf65ce7upzr9', '山东省', '潍坊市', '潍坊滨海经济技术开发区', ' 潍坊富乐新材料有限公司济南分公司', '马先生', '16753323201', '公司名称（中文）：潍坊富乐新材料有限公司\n生产基地：山东•潍坊昌邑市滨海（下营）经济开发区\n销售热线：0531- 88666798（南方地区）', '1', '2021-04-29 15:45:48', NULL);
INSERT INTO `xg_material_from` VALUES (56, '1619776964161XgWzFromt0kn0wu0toif', '上海市', '市辖区', '闵行区', '上海闵行区碧泉路36弄银宵大厦B102', '韩丽君', '13232329318', '', '1', '2021-04-30 18:02:44', NULL);
INSERT INTO `xg_material_from` VALUES (57, '1619877519697XgWzFrom9dy3pg2aufo5', '湖南省', '长沙市', '市辖区', '长沙高新开发区麓云路100号兴工科技园12号栋厂房201､203､204号', '蔡先生', '17326319121', '', '1', '2021-05-01 21:58:39', NULL);
INSERT INTO `xg_material_from` VALUES (58, '1620359360158XgWzFromaud00tmcjbk0', '山东省', '济南市', '济南高新技术产业开发区', '山东省单县经济技术开发区南园路', '吴经理', '18305305398', 'http://www.sdzsyyjt.cn/index.php?m=content&c=index&f=lists&catid=6&l=1&page=1', '1', '2021-05-07 11:49:20', NULL);

-- ----------------------------
-- Table structure for xg_material_info
-- ----------------------------
DROP TABLE IF EXISTS `xg_material_info`;
CREATE TABLE `xg_material_info`  (
  `material_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '资料ID',
  `material_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物资名',
  `material_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `material_type_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物资分类ID',
  `material_specifications` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物资规格',
  `material_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `material_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物资描述',
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态,0-正常,1-删除',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间	',
  PRIMARY KEY (`material_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_material_info
-- ----------------------------
INSERT INTO `xg_material_info` VALUES (2, '12311231', '干扰素', 'https://s3.jpg.cm/2021/04/06/jwGWS.jpg', '1', '12粒', '盒', '基因工程，慎用', '1', '2021-03-09 14:56:57', '2021-04-15 14:39:54');
INSERT INTO `xg_material_info` VALUES (3, '1231sdfs', '口罩', 'https://s3.jpg.cm/2021/04/06/jv3Ku.jpg', '3', '500ml', '袋', '李指导监制', '1', '2021-03-09 14:56:57', '2021-05-01 10:47:36');
INSERT INTO `xg_material_info` VALUES (8, 'Xgkteyezrhpht0info', '帐篷', 'https://s3.jpg.cm/2021/04/07/j9vyS.jpg', '6', '1个', '个', '来自南京', '1', '2021-04-07 16:27:05', NULL);
INSERT INTO `xg_material_info` VALUES (9, 'Xgppt36kymrsvbinfo', '医用防护服', 'https://s3.jpg.cm/2021/04/07/jTRS4.jpg', '3', '1套', '套', '江苏医疗院捐赠！', '1', '2021-04-07 16:52:35', NULL);
INSERT INTO `xg_material_info` VALUES (10, 'Xgseaozditgjivinfo', '额温枪', 'https://s3.jpg.cm/2021/04/07/jT1OU.jpg', '4', '1个', '个', '体温计', '1', '2021-04-07 17:10:58', '2021-04-07 17:15:19');
INSERT INTO `xg_material_info` VALUES (11, 'Xgpriejuea0y3zinfo', '干饭宝', 'https://s3.jpg.cm/2021/04/07/jTgrG.jpg', '5', '1个', '个', '干饭人，干饭魂', '1', '2021-04-07 17:18:01', '2021-05-01 10:46:55');
INSERT INTO `xg_material_info` VALUES (12, 'Xg6xgq8oss8f8vinfo', '呼吸机', 'https://s3.jpg.cm/2021/04/07/jO6TU.jpg', '2', '1台', '台', '呼吸机', '1', '2021-04-07 23:14:01', NULL);
INSERT INTO `xg_material_info` VALUES (13, 'Xgju6syi2kz6bdinfo', '医用手套', 'https://s3.jpg.cm/2021/04/22/aGfIQ.jpg', '3', '12/副', '副', '无', '1', '2021-04-22 11:51:12', '2021-04-22 11:55:10');
INSERT INTO `xg_material_info` VALUES (14, 'Xg4s6mmly6bjoqinfo', '医用护目镜', 'https://s3.jpg.cm/2021/04/22/aG0xW.jpg', '3', '1/副', '副', '无', '1', '2021-04-22 11:52:26', NULL);
INSERT INTO `xg_material_info` VALUES (15, 'Xgrrwe4fv75n0binfo', '医用一次性帽子', 'https://s3.jpg.cm/2021/04/22/aGgch.jpg', '3', '10/盒', '盒', '无', '1', '2021-04-22 11:53:23', NULL);
INSERT INTO `xg_material_info` VALUES (16, 'Xgwm038ubv3oujinfo', '医用胶布', 'https://s3.jpg.cm/2021/04/22/aGzwS.jpg', '6', '5/盒', '个', '无', '1', '2021-04-22 11:58:57', NULL);
INSERT INTO `xg_material_info` VALUES (17, 'Xgxoil23qsgb0iinfo', '医用制氧机', 'https://s3.jpg.cm/2021/05/01/izd1f.jpg', '2', '1/台', '台', '无', '1', '2021-05-01 22:07:45', NULL);
INSERT INTO `xg_material_info` VALUES (18, 'Xg507bxmrpfjm1info', '抽纸', 'https://s3.jpg.cm/2021/05/01/izVAw.jpg', '6', '24/箱', '包', '无', '1', '2021-05-01 22:10:53', NULL);
INSERT INTO `xg_material_info` VALUES (19, 'Xgqmjrmwuic5ewinfo', '洗手液', 'https://s3.jpg.cm/2021/05/01/izbCy.jpg', '3', '12/箱', '瓶', '无', '1', '2021-05-01 22:24:29', NULL);

-- ----------------------------
-- Table structure for xg_material_stock
-- ----------------------------
DROP TABLE IF EXISTS `xg_material_stock`;
CREATE TABLE `xg_material_stock`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `info_id` int(20) NOT NULL,
  `from_id` int(20) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `num` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_material_stock
-- ----------------------------
INSERT INTO `xg_material_stock` VALUES (1, 2, 1, '2021-04-10 22:50:47', NULL, 6987);
INSERT INTO `xg_material_stock` VALUES (3, 11, 1, '2021-04-11 02:06:33', NULL, 3143);
INSERT INTO `xg_material_stock` VALUES (4, 3, 5, '2021-04-11 02:51:45', NULL, 53781);
INSERT INTO `xg_material_stock` VALUES (5, 8, 6, '2021-04-14 17:28:18', NULL, 89);
INSERT INTO `xg_material_stock` VALUES (6, 9, 10, '2021-04-14 17:28:40', NULL, 99);
INSERT INTO `xg_material_stock` VALUES (7, 10, 11, '2021-04-14 17:28:59', NULL, 2899);
INSERT INTO `xg_material_stock` VALUES (8, 11, 11, '2021-04-14 17:29:09', NULL, 1799);
INSERT INTO `xg_material_stock` VALUES (9, 12, 14, '2021-04-14 17:29:21', NULL, 197);
INSERT INTO `xg_material_stock` VALUES (10, 15, 23, '2021-04-22 18:22:21', NULL, 2112);
INSERT INTO `xg_material_stock` VALUES (11, 13, 46, '2021-04-23 13:50:21', NULL, 1998);
INSERT INTO `xg_material_stock` VALUES (12, 14, 47, '2021-04-23 14:11:18', NULL, 1200);
INSERT INTO `xg_material_stock` VALUES (13, 16, 55, '2021-04-29 15:45:52', NULL, 20000);

-- ----------------------------
-- Table structure for xg_material_to
-- ----------------------------
DROP TABLE IF EXISTS `xg_material_to`;
CREATE TABLE `xg_material_to`  (
  `to_id` int(20) NOT NULL AUTO_INCREMENT,
  `to_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_area_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_area_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_area_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_area_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物资接受机构',
  `contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`to_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_material_to
-- ----------------------------
INSERT INTO `xg_material_to` VALUES (22, '1619086285530XgWzTorctx8rcsdd42', '江苏省', '徐州市', '云龙区', '徐州工程学院中心校区菜鸟驿站', '徐州工程学院后勤部', '张勇', '13023510991', '2021/4/23务必送达', '1', '2021-04-22 18:11:25', NULL);
INSERT INTO `xg_material_to` VALUES (23, '1619086707605XgWzTo4gic5k700gkt', '江苏省', '无锡市', '滨湖区', '雪浪街道仙河苑2栋3单元102号', '无锡市滨湖区雪浪街道居委会', '李丽丽', '18218232321', '', '1', '2021-04-22 18:18:27', NULL);
INSERT INTO `xg_material_to` VALUES (24, '1619160022170XgWzTodbuome97rckd', '山东省', '聊城市', '市辖区', '聊城大学菜鸟驿站', '聊城大学后勤部', '杨主任', '18923230178', '无', '1', '2021-04-23 14:40:22', NULL);
INSERT INTO `xg_material_to` VALUES (25, '1619252055600XgWzTocb8j05enmy1j', '江苏省', '无锡市', '滨湖区', '仙河街道仙河庭院13栋201室', '仙河街道办', '周小姐', '13666198723', '', '1', '2021-04-24 16:14:15', NULL);
INSERT INTO `xg_material_to` VALUES (26, '1619254359860XgWzToyr1gk1jvrk61', '江苏省', '南京市', '建邺区', '腾讯云启产业基地B座3F', '腾讯云启产业基地采购部', '方敏小姐姐', '17213929381', '放于前台即可', '1', '2021-04-24 16:52:39', NULL);
INSERT INTO `xg_material_to` VALUES (27, '1619679276745XgWzTonus8tnqaaczp', '浙江省', '温州市', '市辖区', '浙江温州皮革厂', '个人', '王毛毛', '18765436211', '厂长你懂我意思吗', '1', '2021-04-29 14:54:36', NULL);
INSERT INTO `xg_material_to` VALUES (28, '1619681332762XgWzToaedd10xur6xv', '江苏省', '徐州市', '市辖区', '徐州工程学院中心校区（菜鸟驿站）', '徐州工程学院后勤部', '张守军', '18823212390', '无', '1', '2021-04-29 15:28:52', NULL);
INSERT INTO `xg_material_to` VALUES (29, '1619681461638XgWzTompiitkp7rxk2', '广东省', '深圳市', '市辖区', '深圳腾讯技术有限公司', '腾讯深圳分公司采购部', '明先生', '13222019301', '', '1', '2021-04-29 15:31:01', NULL);
INSERT INTO `xg_material_to` VALUES (30, '1619681537788XgWzTogez4vgczhd61', '江苏省', '南京市', '市辖区', '南京市建邺区江心洲贤坤路3号江岛智立方B座二单元1F', '南京虎牙科技采购部', '万小姐', '15232323028', '', '1', '2021-04-29 15:32:17', NULL);
INSERT INTO `xg_material_to` VALUES (31, '1619681651965XgWzTosnc2dy8curx6', '黑龙江省', '哈尔滨市', '市辖区', '哈尔滨佛学院菜鸟驿站', '哈尔滨佛学院后勤部', '程晨', '18123982731', '', '1', '2021-04-29 15:34:11', NULL);
INSERT INTO `xg_material_to` VALUES (32, '1619682066471XgWzToo179hftky76i', '江苏省', '盐城市', '东台市', '东台市三仓镇政府', '东台市三仓镇政府后勤部', '李先生', '17231213123', '无', '1', '2021-04-29 15:41:06', NULL);
INSERT INTO `xg_material_to` VALUES (33, '1619776353064XgWzTosxncnoo83sdz', '江苏省', '南京市', '建邺区', '南京市建邺区江心洲贤坤路3号江岛智立方B座二单元1F', '南京虎牙科技采购部', '周小姐', '18231231021', '', '1', '2021-04-30 17:52:33', NULL);
INSERT INTO `xg_material_to` VALUES (34, '1619776431234XgWzTochla9x3l3dqv', '江苏省', '南京市', '市辖区', '南京市建邺区江心洲贤坤路3号江岛智立方B座二单元1F', '南京虎牙科技技术有限公司', '林小姐', '18813123131', '', '1', '2021-04-30 17:53:51', NULL);
INSERT INTO `xg_material_to` VALUES (35, '1619776527151XgWzToizjmq1l0ubvu', '上海市', '市辖区', '黄浦区', '上海黄浦', '个人', '方先生', '14022312388', '', '1', '2021-04-30 17:55:27', NULL);
INSERT INTO `xg_material_to` VALUES (36, '1619776754078XgWzTozzpgd16hm2ah', '北京市', '市辖区', '东城区', '无', '个人', '郝先生', '18821388811', '五环接收', '1', '2021-04-30 17:59:14', NULL);
INSERT INTO `xg_material_to` VALUES (37, '1619776846543XgWzTovbyctc1e7iks', '山东省', '济南市', '市辖区', '济南市政府', '济南市政府采购中心', '刘仁', '18231123123', '', '1', '2021-04-30 18:00:46', NULL);
INSERT INTO `xg_material_to` VALUES (38, '1619777056287XgWzTohofzdjozwbzx', '江苏省', '徐州市', '云龙区', '徐州工程学院中心校区菜鸟驿站', '个人', '马小姐', '13023031903', '', '1', '2021-04-30 18:04:16', NULL);
INSERT INTO `xg_material_to` VALUES (39, '1619777143333XgWzTo7bgqwj1fgbed', '辽宁省', '沈阳市', '市辖区', '市医院人民医院', '市医院人民医院采购部', '方主任', '16332839828', '', '1', '2021-04-30 18:05:43', NULL);
INSERT INTO `xg_material_to` VALUES (40, '1620362112499XgWzTopvnt3xho05s6', '江苏省', '徐州市', '云龙区', '徐州工程学院中心校区菜鸟驿站', '徐州工程学院后勤部', '李老师', '13232300201', '', '1', '2021-05-07 12:35:11', NULL);

-- ----------------------------
-- Table structure for xg_material_type
-- ----------------------------
DROP TABLE IF EXISTS `xg_material_type`;
CREATE TABLE `xg_material_type`  (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_material_type
-- ----------------------------
INSERT INTO `xg_material_type` VALUES (1, '20210401xgcategory123', '治疗类', '2', '治疗药品等', '1', '2021-03-27 15:46:54', NULL);
INSERT INTO `xg_material_type` VALUES (2, '20210401xgcategory3213', '医学仪器', '2', '医用仪器', '1', '2021-03-27 15:47:19', NULL);
INSERT INTO `xg_material_type` VALUES (3, '20210402xgcategory1231asd', '防护类', '2', '防护器具等', '1', '2021-03-27 15:48:48', NULL);
INSERT INTO `xg_material_type` VALUES (4, '20210403xgcategory121', '诊断类', '2', '例如温度计等', '1', '2021-03-27 15:49:46', NULL);
INSERT INTO `xg_material_type` VALUES (5, '20210406xgcategory1221', '电器类', '3', '电器类', '1', '2021-03-27 15:50:40', NULL);
INSERT INTO `xg_material_type` VALUES (6, '20210317xgcategory00', '其他', '2', '——', '1', '2021-04-07 16:26:08', NULL);

-- ----------------------------
-- Table structure for xg_menu
-- ----------------------------
DROP TABLE IF EXISTS `xg_menu`;
CREATE TABLE `xg_menu`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `m_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名',
  `m_pid` int(11) NULL DEFAULT NULL COMMENT '父级菜单',
  `m_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '菜单链接',
  `level` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '菜单层级',
  `create_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谁创建的',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '状态1/0，默认1',
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_menu
-- ----------------------------
INSERT INTO `xg_menu` VALUES (1, 'XinGuan', NULL, '/home', '1', '系统', '2021-02-25 20:24:51', NULL, '0', '所有', 'el-icon-ice-tea');
INSERT INTO `xg_menu` VALUES (2, '全国疫情', NULL, '/contents', '1', '系统', '2021-02-25 20:25:45', NULL, '1', '系统', 'el-icon-add-location');
INSERT INTO `xg_menu` VALUES (3, '系统管理', NULL, NULL, '1', '系统', '2021-02-25 20:26:28', NULL, '1', '系统', 'el-icon-s-platform');
INSERT INTO `xg_menu` VALUES (4, '物资管理', NULL, NULL, '1', '系统', '2021-02-25 20:26:45', NULL, '1', '系统', 'el-icon-s-tools');
INSERT INTO `xg_menu` VALUES (5, '人员管理', 3, '/userManage', '2', '系统', '2021-02-25 20:29:34', NULL, '1', '系统', 'el-icon-user');
INSERT INTO `xg_menu` VALUES (6, '权限管理', 3, '/authority', '2', '系统', '2021-02-25 20:31:12', NULL, '0', '系统', 'el-icon-scissors');
INSERT INTO `xg_menu` VALUES (7, '角色管理', 3, '/roleManage', '2', '系统', '2021-02-25 20:32:42', NULL, '1', '系统', 'el-icon-postcard');
INSERT INTO `xg_menu` VALUES (8, '菜单管理', 3, '/menuManage', '2', '系统', '2021-02-25 20:35:27', NULL, '0', '系统', 'el-icon-scissors');
INSERT INTO `xg_menu` VALUES (9, '物资入库', 4, '/materialIn', '2', '系统', '2021-02-25 20:53:08', NULL, '1', '业务', 'el-icon-takeaway-box');
INSERT INTO `xg_menu` VALUES (10, '物资出库', 4, '/materialOut', '2', '系统', '2021-02-25 20:53:34', NULL, '0', '业务', 'el-icon-magic-stick');
INSERT INTO `xg_menu` VALUES (11, '物资资料', 4, '/materialInfo', '2', '系统', '2021-02-25 20:54:03', NULL, '1', '业务', 'el-icon-tickets');
INSERT INTO `xg_menu` VALUES (12, '物资类别', 4, '/materialCategory', '2', '系统', '2021-02-25 20:54:40', NULL, '0', '业务', 'el-icon-magic-stick');
INSERT INTO `xg_menu` VALUES (13, '物资发放', 4, '/materialDistribution', '2', '系统', '2021-02-25 20:55:31', NULL, '1', '业务', 'el-icon-copy-document');
INSERT INTO `xg_menu` VALUES (14, '物资流向', 4, '/materialFlow', '2', '系统', '2021-02-25 20:56:19', NULL, '0', '业务', 'el-icon-magic-stick');
INSERT INTO `xg_menu` VALUES (15, '物资面板', 4, '/material', '2', '系统', '2021-03-06 21:01:13', NULL, '0', '业务', 'el-icon-magic-stick');
INSERT INTO `xg_menu` VALUES (16, '健康监控', NULL, '', '1', '系统', '2021-03-23 00:16:44', NULL, '1', '系统', 'el-icon-first-aid-kit');
INSERT INTO `xg_menu` VALUES (17, '操作日志管理', NULL, '/OperatorLogs', '1', '系统', '2021-03-23 00:17:37', NULL, '1', '系统', 'el-icon-cpu');
INSERT INTO `xg_menu` VALUES (18, '人员健康监控', 16, '/health', '2', '系统', '2021-03-31 13:32:16', NULL, '1', '系统', 'el-icon-s-order');
INSERT INTO `xg_menu` VALUES (19, '物资库存', 4, '/inventoryList', '2', '系统', '2021-04-07 22:23:28', NULL, '1', '业务', 'el-icon-box');
INSERT INTO `xg_menu` VALUES (20, '物资申请', NULL, '/grantMaterial', '1', '系统', '2021-05-12 17:02:11', NULL, '1', '业务', 'el-icon-monitor');

-- ----------------------------
-- Table structure for xg_n_user
-- ----------------------------
DROP TABLE IF EXISTS `xg_n_user`;
CREATE TABLE `xg_n_user`  (
  `n_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `n_uname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `n_password` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '用户密码',
  `n_phone` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '用户电话',
  `n_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '登陆时间',
  `n_dept` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户所属部门、机构',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '状态1/0，默认1',
  `create_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谁创建的',
  `avatar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_n_user
-- ----------------------------
INSERT INTO `xg_n_user` VALUES (1, 'admin', 'liwentao122700', '1302351111', '管理员', '男', '2021-05-29 22:50:56', '计算机管理部门', '2021-02-23 23:08:54', '2021-04-15 14:36:36', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (2, 'zhangzhang', '123456', '13888213152', '单位用户', '男', '2021-05-16 15:07:05', '计算机管理部门', '2021-02-27 09:51:21', '2021-03-17 11:56:01', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (3, 'mq', '123456', '12312312313', '单位用户', '女', NULL, '售前部', '2021-02-27 09:52:08', '2021-04-22 14:15:12', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (4, '李佳航', '123456', '12312312313', '单位用户', '男', NULL, '售前部', '2021-02-27 09:52:08', '2021-03-31 13:41:53', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (5, '龙傲天', '123456', '18312312312', '单位用户', '男', NULL, '公共技术中心', '2021-02-27 09:52:08', '2021-04-21 18:49:06', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (6, '李佳航2', '123456', '12312312312', '单位用户', '男', NULL, '公共技术中心', '2021-02-27 09:52:08', '2021-04-21 18:49:11', '0', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (7, '王德发', '123456', '12312312312', '单位用户', '男', NULL, '公共技术中心', '2021-02-27 09:52:08', '2021-04-21 18:49:15', '0', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (8, 'ququq', '123456', '1872391123', '单位用户', '男', NULL, '售前部', '2021-02-27 09:52:08', '2021-04-24 16:55:59', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (9, '李航123', '123456', '12312312310', '单位用户', '男', NULL, '售前部', '2021-02-27 09:52:08', '2021-02-27 09:52:11', '0', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (10, '李佳航1', '123456', '12312234910', '单位用户', '男', NULL, '售前部', '2021-02-27 09:52:08', '2021-03-14 22:39:38', '0', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (11, '阿萨德', '123456', '19997613123', '普通用户', '女', NULL, '公共技术中心', '2021-03-11 00:46:45', '2021-04-21 18:49:23', '0', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (12, 'aquan', '123456', '12313131231', '普通用户', '男', NULL, '智慧政务事业部门', '2021-03-11 00:46:45', '2021-04-21 18:49:27', '1', '系统', NULL);
INSERT INTO `xg_n_user` VALUES (13, '张德帅', '888888', '12312312312', '审核员', '男', NULL, '智慧警务事业部门', '2021-03-12 19:05:28', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (14, 'ruth', '888888', '12312111111', '审核员', '男', '2021-05-07 12:46:14', '智慧政务事业部门', '2021-03-13 18:07:13', '2021-04-24 17:06:13', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (15, '加加加', '888888', '13023520209', '审核员', '女', NULL, '智慧政务事业部门', '2021-03-13 18:09:03', '2021-04-24 17:06:10', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (16, 'asdasd', '888888', '12312312311', '审核员', '女', NULL, '智慧政务事业部门', '2021-03-13 18:12:27', '2021-04-24 17:06:06', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (17, 'ada111', '888888', '13022520201', '审核员', '女', NULL, '智慧政务事业部门', '2021-03-13 19:46:29', '2021-04-24 17:06:17', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (18, 'asdas', '888888', '13023510511', '审核员', '女', NULL, '智慧警务事业部门', '2021-03-13 19:54:26', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (19, 'aa1', '888888', '13023510511', '单位用户', '女', NULL, '智慧政务事业部门', '2021-03-13 19:56:00', '2021-03-13 22:05:26', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (20, 'master', '888888', '13023510511', '普通用户', '女', NULL, '公共技术中心', '2021-03-13 19:56:41', '2021-04-15 14:20:30', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (21, 'zcxx', '888888', '13023510511', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:01:52', '2021-04-24 17:05:56', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (22, 'aacccc', '888888', '13023510411', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:01:59', '2021-03-17 12:59:06', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (23, 'xmind', '888888', '13023510511', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:02:04', '2021-03-17 12:59:12', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (24, 'xcxc', '888888', '13023510511', '', '女', NULL, '智慧警务事业部门', '2021-03-13 20:02:13', NULL, '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (25, 'sd1', '888888', '13023510511', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:02:27', '2021-04-06 10:03:52', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (26, '121', '888888', '12213123111', '普通用户', '男', NULL, '智慧政务事业部门', '2021-03-13 20:12:15', '2021-04-24 17:06:24', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (27, '啊啊啊1', '888888', '13023510511', '', '男', NULL, '智慧警务事业部门', '2021-03-13 20:21:10', '2021-03-13 21:57:26', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (28, '21312', '888888', '11121222222', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:21:27', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (29, '12131', '888888', '12121111111', '普通用户', '男', NULL, '智慧警务事业部门', '2021-03-13 20:21:40', '2021-03-13 20:56:37', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (30, '122', '888888', '13023510511', '普通用户', '女', NULL, '智慧政务事业部门', '2021-03-13 20:21:49', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (31, 'fell', '888888', '11111212111', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:22:02', '2021-05-07 12:50:52', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (32, 'survicer', '888888', '13023510511', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:22:12', '2021-05-07 12:49:49', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (33, 'mike', '888888', '12133242343', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:22:37', '2021-05-07 12:49:35', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (34, '12法复', '888888', '13023510511', '普通用户', '女', NULL, '智慧政务事业部门', '2021-03-13 20:24:37', NULL, '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (35, 'ccc', '888888', '13023510511', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:24:49', '2021-05-07 12:49:07', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (36, '撒大都市', '888888', '13023510511', '', '女', NULL, '智慧警务事业部门', '2021-03-13 20:24:57', NULL, '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (37, '小Fuck', '888888', '13123123232', '', '女', NULL, '智慧警务事业部门', '2021-03-13 20:26:53', NULL, '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (38, 'neo', '888888', '13023510511', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:27:06', '2021-05-07 12:49:27', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (39, '1231231', '888888', '13023520201', '普通用户', '女', NULL, '智慧警务事业部门', '2021-03-13 20:27:15', '2021-03-13 21:27:34', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (40, '去', '888888', '13023520201', '普通用户', '女', NULL, '总经办', '2021-03-13 20:27:22', '2021-04-15 14:37:02', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (41, 'mayun', '888888', '13023510511', '普通用户', '女', NULL, '智慧政务事业部门', '2021-03-13 20:27:29', '2021-04-28 19:25:59', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (42, 'xxx22', '888888', '19312312313', '', '男', NULL, '公共技术中心', '2021-03-13 20:51:52', '2021-03-27 15:39:14', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (43, 'asd12331', '888888', '13023510511', '', '女', NULL, '智慧政务事业部门', '2021-03-17 12:21:42', '2021-03-27 15:39:20', '0', 'zhangzhang', NULL);
INSERT INTO `xg_n_user` VALUES (44, '2312', '888888', '13023510511', '', '女', NULL, '公共技术中心', '2021-03-17 12:27:46', '2021-03-27 15:39:17', '0', 'zhangzhang', NULL);
INSERT INTO `xg_n_user` VALUES (45, '1231213', '888888', '13023520201', '', '女', NULL, '智慧政务事业部门', '2021-03-17 12:30:53', '2021-03-27 15:39:23', '0', 'zhangzhang', NULL);
INSERT INTO `xg_n_user` VALUES (46, 'ceshia', '888888', '13023510511', '普通用户', '女', NULL, '智慧政务事业部门', '2021-04-03 18:50:51', '2021-05-13 10:43:02', '0', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (47, 'yxy', 'xzgcxy', '13023510510', '管理员', '男', '2021-05-23 16:00:59', '总经办', '2021-04-23 11:34:27', '2021-04-30 20:13:49', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (48, 'nali', '888888', '18823123811', '单位用户', '女', NULL, '公共技术中心', '2021-04-24 17:01:06', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (49, '方敏', '888888', '19283921123', '单位用户', '女', NULL, '公共技术中心', '2021-04-24 17:04:31', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (50, '张一一', '888888', '18923928311', '单位用户', '女', NULL, '公共技术中心', '2021-04-24 17:05:03', '2021-05-07 13:12:10', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (51, '顾雅', '888888', '18003123233', '单位用户', '女', NULL, '智慧警务事业部门', '2021-04-24 17:05:33', NULL, '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (52, 'mate', '123456', '18813131311', '单位用户', '女', '2021-05-12 15:03:39', '智慧政务事业部门', '2021-04-25 14:51:17', '2021-05-12 13:37:03', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (53, 'ml', '888888', '16298766121', '普通用户', '女', '2021-05-22 14:42:14', '非公司人员', '2021-05-10 15:19:25', '2021-05-12 13:37:23', '1', 'admin', NULL);
INSERT INTO `xg_n_user` VALUES (54, 'lsp', 'wslsp', '18232711232', '普通用户', '女', '2021-05-23 15:50:33', '非公司人员', '2021-05-15 23:59:06', '2021-05-15 23:59:42', '1', 'admin', NULL);

-- ----------------------------
-- Table structure for xg_role
-- ----------------------------
DROP TABLE IF EXISTS `xg_role`;
CREATE TABLE `xg_role`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `r_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `create_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谁创建的',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '状态1/0，默认1',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_role
-- ----------------------------
INSERT INTO `xg_role` VALUES (1, '管理员', '系统', '2021-02-25 20:22:38', '2021-02-25 20:22:42', '1');
INSERT INTO `xg_role` VALUES (2, '审核员', '系统', '2021-02-27 09:52:41', '2021-02-27 09:52:44', '1');
INSERT INTO `xg_role` VALUES (3, '单位用户', '系统', '2021-02-27 09:52:57', NULL, '1');
INSERT INTO `xg_role` VALUES (4, '普通用户', '系统', '2021-02-27 09:53:20', NULL, '1');

-- ----------------------------
-- Table structure for xg_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `xg_role_menu`;
CREATE TABLE `xg_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `r_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `m_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '菜单ID',
  `create_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谁创建的',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '状态1/0，默认1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_role_menu
-- ----------------------------
INSERT INTO `xg_role_menu` VALUES (1, 1, '1,2,3,4,16,17', '系统', '2021-02-25 20:23:03', NULL, '1');
INSERT INTO `xg_role_menu` VALUES (2, 2, '1,2,4', '系统', '2021-02-26 22:40:52', NULL, '1');
INSERT INTO `xg_role_menu` VALUES (3, 3, '2,4,16', '系统', '2021-02-27 09:50:35', NULL, '1');
INSERT INTO `xg_role_menu` VALUES (4, 4, '2,20', '系统', '2021-03-23 01:29:35', NULL, '1');

-- ----------------------------
-- Table structure for xg_storage_record
-- ----------------------------
DROP TABLE IF EXISTS `xg_storage_record`;
CREATE TABLE `xg_storage_record`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `record_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info_id` int(20) NOT NULL,
  `material_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `from_id` int(20) NOT NULL,
  `material_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_supportor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_storage_record
-- ----------------------------
INSERT INTO `xg_storage_record` VALUES (37, 'b7rxde4tdlz5Xgb7rxde4tdlz5', 2, '治疗类', '18', 43, '已入库', 'admin', '13023510511', '湖北信康医药化工有限公司', '1', '2021-04-22 18:27:23', NULL);
INSERT INTO `xg_storage_record` VALUES (38, 'fge3eypgs5uiXgfge3eypgs5ui', 3, '防护类', '2000', 44, '已入库', 'ceshi', '13023511110', '浙江欧诺机械有限公司', '1', '2021-04-23 13:44:37', NULL);
INSERT INTO `xg_storage_record` VALUES (39, 'chjj880vn6mzXgchjj880vn6mz', 9, '防护类', '100', 45, '已入库', 'ceshi', '13023511110', '济南一星电子有限公司', '1', '2021-04-23 13:47:01', NULL);
INSERT INTO `xg_storage_record` VALUES (40, 'x13kbxqq8a3kXgx13kbxqq8a3k', 13, '防护类', '9999', 46, '已入库', 'ceshi', '13023511110', '桂林恒保健康防护有限公司', '1', '2021-04-23 13:50:17', NULL);
INSERT INTO `xg_storage_record` VALUES (41, 'w7zbuidjumgvXgw7zbuidjumgv', 14, '防护类', '1200', 47, '已入库', 'zhangzhang', '13888213152', '广州市花都区彭博眼镜厂广州市花都区彭博眼镜厂', '1', '2021-04-23 13:54:41', NULL);
INSERT INTO `xg_storage_record` VALUES (42, 'c5lj3yiro8tpXgc5lj3yiro8tp', 15, '防护类', '2000', 48, '已入库', 'zhangzhang', '13888213152', '盐城市新锋医疗用品有限公司', '1', '2021-04-23 13:58:26', NULL);
INSERT INTO `xg_storage_record` VALUES (43, '7yxuh65925wfXg7yxuh65925wf', 2, '治疗类', '1312', 49, '已入库', 'zhangzhang', '13888213152', '瑞亚健康管理(深圳)有限公司', '1', '2021-04-23 14:03:49', NULL);
INSERT INTO `xg_storage_record` VALUES (44, 'ydkvmtyjd2chXgydkvmtyjd2ch', 12, '医学仪器', '200', 50, '已入库', 'zhangzhang', '13888213152', '江苏鱼跃集团', '1', '2021-04-23 14:10:48', NULL);
INSERT INTO `xg_storage_record` VALUES (45, 'wmnhp8vvns3gXgwmnhp8vvns3g', 11, '电器类', '2000', 51, '已入库', 'admin', '1302351111', '广东美的电器股份有限公司', '1', '2021-04-24 16:22:53', NULL);
INSERT INTO `xg_storage_record` VALUES (46, '1004215vbzcbXg1004215vbzcb', 10, '诊断类', '2000', 52, '已入库', 'admin', '1302351111', '深圳市维鼎康联信息技术有限公司', '1', '2021-04-24 16:26:01', NULL);
INSERT INTO `xg_storage_record` VALUES (48, 'pke8ldn2lm6uXgpke8ldn2lm6u', 8, '其他', '10', 54, '已入库', 'admin', '1302351111', '申宝帐篷（广州）有限公司', '1', '2021-04-29 15:38:41', NULL);
INSERT INTO `xg_storage_record` VALUES (49, 'nc022mgp5ezzXgnc022mgp5ezz', 16, '其他', '100000', 55, '已入库', 'admin', '1302351111', ' 潍坊富乐新材料有限公司济南分公司', '1', '2021-04-29 15:45:48', NULL);
INSERT INTO `xg_storage_record` VALUES (50, 'bul8kkiogddwXgbul8kkiogddw', 2, '治疗类', '4000', 56, '已入库', 'admin', '1302351111', '上海博湖生物科技有限公司', '1', '2021-04-30 18:02:44', NULL);
INSERT INTO `xg_storage_record` VALUES (51, 'z2lx9ns649xyXgz2lx9ns649xy', 10, '诊断类', '1000', 57, '已入库', 'admin', '1302351111', '长沙市鹏瑞生物科技有限公司', '1', '2021-05-01 21:58:39', NULL);
INSERT INTO `xg_storage_record` VALUES (52, 'w5mqjgffhze6Xgw5mqjgffhze6', 15, '防护类', '1000', 58, '待审核', 'admin', '1302351111', '山东朱氏药业集团有限公司', '1', '2021-05-07 11:49:20', NULL);

-- ----------------------------
-- Table structure for xg_user_role
-- ----------------------------
DROP TABLE IF EXISTS `xg_user_role`;
CREATE TABLE `xg_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `u_id` int(11) NULL DEFAULT NULL COMMENT '用户ID',
  `r_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `create_by` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '谁创建的',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `state` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT '状态1/0，默认1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xg_user_role
-- ----------------------------
INSERT INTO `xg_user_role` VALUES (1, 1, 1, '系统', '2021-03-18 14:55:47', NULL, '1');
INSERT INTO `xg_user_role` VALUES (2, 2, 3, '系统', '2021-03-18 14:56:25', NULL, '1');
INSERT INTO `xg_user_role` VALUES (3, 3, 3, '系统', '2021-03-18 15:07:45', NULL, '1');
INSERT INTO `xg_user_role` VALUES (4, 41, 4, '系统', '2021-03-22 23:18:53', NULL, '1');
INSERT INTO `xg_user_role` VALUES (5, 19, 3, '系统', '2021-03-22 23:22:32', NULL, '1');
INSERT INTO `xg_user_role` VALUES (6, 14, 2, '系统', '2021-04-22 14:16:49', NULL, '1');
INSERT INTO `xg_user_role` VALUES (7, 47, 1, '系统', '2021-04-23 11:34:58', NULL, '1');
INSERT INTO `xg_user_role` VALUES (8, 48, 3, '系统', '2021-04-28 19:10:18', NULL, '1');
INSERT INTO `xg_user_role` VALUES (9, 49, 3, '系统', '2021-04-28 19:10:38', NULL, '1');
INSERT INTO `xg_user_role` VALUES (10, 52, 3, '系统', '2021-04-28 19:22:48', NULL, '1');
INSERT INTO `xg_user_role` VALUES (11, 51, 3, '系统', '2021-04-28 19:23:09', NULL, '1');
INSERT INTO `xg_user_role` VALUES (12, 50, 3, '系统', '2021-04-28 19:23:26', NULL, '1');
INSERT INTO `xg_user_role` VALUES (13, 53, 4, '系统', '2021-05-12 13:57:16', NULL, '1');
INSERT INTO `xg_user_role` VALUES (14, 54, 4, '系统', '2021-05-15 23:59:20', NULL, '1');

SET FOREIGN_KEY_CHECKS = 1;
