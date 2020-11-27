/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : daima2

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 27/11/2020 00:14:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for announcements
-- ----------------------------
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE `announcements`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(0) NULL DEFAULT NULL,
  `annountcments_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcements
-- ----------------------------
INSERT INTO `announcements` VALUES (1, '2020-11-11 12:12:12', 'ss', '<p>ss</p>');
INSERT INTO `announcements` VALUES (2, '2020-11-24 16:11:57', 'ss', '<p><img src=\"/javawebcode4/20201124/1606205515627004226.jpeg\" title=\"1606205515627004226.jpeg\" alt=\"mayun.jpeg\"/></p>');
INSERT INTO `announcements` VALUES (4, '2020-11-24 18:26:45', NULL, NULL);
INSERT INTO `announcements` VALUES (5, '2020-11-24 18:27:04', NULL, NULL);
INSERT INTO `announcements` VALUES (6, '2020-11-24 18:28:26', '候补购票操作说明', '<p>ss</p>');
INSERT INTO `announcements` VALUES (7, '2020-11-24 18:28:30', '候补购票操作说明', '<p>ss</p>');
INSERT INTO `announcements` VALUES (8, '2020-11-24 18:34:05', '候补购票操作说明', '<p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-weight: bolder\"><span style=\"\"><span style=\"\"><span style=\"box-sizing: inherit;font-size: 29px\">候补购票操作说明</span></span></span></span>&nbsp;</p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-weight: bolder\"><span style=\"\"><span style=\"box-sizing: inherit;font-size: 24px\"><span style=\"font-family:Cambria\">&nbsp;&nbsp;&nbsp;&nbsp; 12306</span></span><span style=\"box-sizing: inherit;font-size: 24px\">网站的所有注册用户均可自愿申请获得该项服务。为了保证候补需求的真实性，在申请该项服务前，用户需进行人证一致性核验。目前已通过人证一致性核验的用户及激活的“铁路畅行”会员，可自动获得该项服务。用户可通过铁路</span><span style=\"box-sizing: inherit;font-size: 24px\"><span style=\"font-family:Cambria\">12306 App</span></span><span style=\"box-sizing: inherit;font-size: 24px\">个人中心的人证核验入口按引导完成验证。</span></span></span>&nbsp;</p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit\"><span style=\"font-family:Cambria\">&nbsp;</span></span></p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);font-size: 24px\"><span style=\"box-sizing: inherit;font-weight: bolder\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt=\"\" width=\"360\" height=\"642\" src=\"/test1_war_exploded/ueditor/jsp/upload/image/20201124/1606214043234018326.jpg\"/></span><img alt=\"\" src=\"/test1_war_exploded/ueditor/jsp/upload/image/20201124/1606214043260083246.jpg\"/></p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);font-size: 24px\">&nbsp;</p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;white-space: normal;background-color: rgb(255, 255, 255);font-size: 24px\">&nbsp;</p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"\"><span style=\"box-sizing: inherit;font-size: 24px\"><img alt=\"\" src=\"/test1_war_exploded/ueditor/jsp/upload/image/20201124/1606214043272091841.jpg\"/></span></span></p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"\"><span style=\"box-sizing: inherit;font-size: 24px\">未安装</span><span style=\"box-sizing: inherit;font-size: 24px\">铁路</span><span style=\"box-sizing: inherit;font-size: 24px\">12306 App</span><span style=\"box-sizing: inherit;font-size: 24px\">的用户可扫描二维码下载安装</span></span>&nbsp;</p><h2 style=\"box-sizing: inherit;font-weight: 400;font-size: 14px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit\"><span style=\"box-sizing: inherit\"><span style=\"font-family:Calibri\">1.</span></span></span><span style=\"box-sizing: inherit\"><span style=\"\">候补订单提交</span></span></h2><h2 style=\"box-sizing: inherit;font-weight: 400;font-size: 14px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit\">&nbsp;&nbsp;&nbsp;</span><span style=\"box-sizing: inherit;font-weight: bolder\"><span style=\"box-sizing: inherit\"><span style=\"\">当旅客在</span></span><span style=\"\"><span style=\"box-sizing: inherit;font-size: 24px\">12306</span><span style=\"box-sizing: inherit;font-size: 24px\">网站（含手机客户端）购票，输入乘车日期、发到站等信息查询没有余票时，页面会在相关车次的席别余票显示列表中出现“候补”字样，旅客可根据需求点击相应车次、席别对应的“候补”区域，系统将该需求自动加入当前候补购票需求列表。</span></span></span><span style=\"\">&nbsp;</span></h2><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"box-sizing: inherit;font-weight: bolder\"><span style=\"\"><span style=\"box-sizing: inherit;font-size: 24px\">&nbsp; 每位用户可提交</span><span style=\"box-sizing: inherit;font-size: 24px\">2</span><span style=\"box-sizing: inherit;font-size: 24px\">个候补订单，每个订单中可添加发到站相同（可以是同城的不同车站）的</span><span style=\"box-sizing: inherit;font-size: 24px\">2</span><span style=\"box-sizing: inherit;font-size: 24px\">个相邻的乘车日期，每个乘车日期可添加</span><span style=\"box-sizing: inherit;font-size: 24px\">5</span><span style=\"box-sizing: inherit;font-size: 24px\">个不同“车次</span><span style=\"box-sizing: inherit;font-size: 24px\">+</span><span style=\"box-sizing: inherit;font-size: 24px\">席别”的组合需求。</span></span></span>&nbsp;</p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\">&nbsp;</p><p style=\"box-sizing: inherit;margin-top: 0px;margin-bottom: 0px;padding: 0px;color: rgb(51, 51, 51);font-family: &#39;Helvetica Neue&#39;, Helvetica, Arial, &#39;PingFang SC&#39;, &#39;Hiragino Sans GB&#39;, &#39;Heiti SC&#39;, &#39;Microsoft YaHei&#39;, &#39;WenQuanYi Micro Hei&#39;, sans-serif;font-size: 14px;white-space: normal;background-color: rgb(255, 255, 255)\"><img alt=\"\" src=\"/test1_war_exploded/ueditor/jsp/upload/image/20201124/1606214043284064535.png\"/></p><p><br/></p>');
INSERT INTO `announcements` VALUES (9, '2020-11-24 18:38:18', '候补购票操作说明', '<p><span style=\"box-sizing: inherit; font-weight: bolder; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 24px; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;<img alt=\"\" width=\"360\" height=\"642\" src=\"/javawebcode4/ueditor/jsp/upload/image/20201124/1606214294084041539.jpg\"/></span></p>');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_age` int(255) NULL DEFAULT NULL,
  `manager_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 'hyh', '123456', '17839622400', 18, '男');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `train_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `from_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `to_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carriage_number` int(11) NULL DEFAULT NULL,
  `seat_number` int(11) NULL DEFAULT NULL,
  `of_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (36, 'K17', '郑州', '太原', 2, 2, 'hyh');

-- ----------------------------
-- Table structure for seat_type_price
-- ----------------------------
DROP TABLE IF EXISTS `seat_type_price`;
CREATE TABLE `seat_type_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seat_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat_type_price
-- ----------------------------
INSERT INTO `seat_type_price` VALUES (1, '硬座', '100');
INSERT INTO `seat_type_price` VALUES (2, '软座', '200');
INSERT INTO `seat_type_price` VALUES (3, '软卧', '300');

-- ----------------------------
-- Table structure for seats
-- ----------------------------
DROP TABLE IF EXISTS `seats`;
CREATE TABLE `seats`  (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `train_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `occupiedAreaFlag` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carriage_number` int(11) NULL DEFAULT NULL,
  `seat_number` int(11) NULL DEFAULT NULL,
  `seat_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 646 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seats
-- ----------------------------
INSERT INTO `seats` VALUES (1, 'G11', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (2, 'G11', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (3, 'G11', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (4, 'G11', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (5, 'G11', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (6, 'G11', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (7, 'G11', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (8, 'G11', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (9, 'G11', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (10, 'G11', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (11, 'G11', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (12, 'G11', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (13, 'G11', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (14, 'G11', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (15, 'G11', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (16, 'G13', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (17, 'G13', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (18, 'G13', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (19, 'G13', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (20, 'G13', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (21, 'G13', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (22, 'G13', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (23, 'G13', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (24, 'G13', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (25, 'G13', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (26, 'G13', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (27, 'G13', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (28, 'G13', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (29, 'G13', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (30, 'G13', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (31, 'G15', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (32, 'G15', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (33, 'G15', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (34, 'G15', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (35, 'G15', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (36, 'G15', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (37, 'G15', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (38, 'G15', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (39, 'G15', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (40, 'G15', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (41, 'G15', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (42, 'G15', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (43, 'G15', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (44, 'G15', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (45, 'G15', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (46, 'G17', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (47, 'G17', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (48, 'G17', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (49, 'G17', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (50, 'G17', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (51, 'G17', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (52, 'G17', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (53, 'G17', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (54, 'G17', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (55, 'G17', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (56, 'G17', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (57, 'G17', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (58, 'G17', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (59, 'G17', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (60, 'G17', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (61, 'G19', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (62, 'G19', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (63, 'G19', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (64, 'G19', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (65, 'G19', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (66, 'G19', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (67, 'G19', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (68, 'G19', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (69, 'G19', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (70, 'G19', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (71, 'G19', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (72, 'G19', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (73, 'G19', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (74, 'G19', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (75, 'G19', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (76, 'G21', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (77, 'G21', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (78, 'G21', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (79, 'G21', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (80, 'G21', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (81, 'G21', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (82, 'G21', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (83, 'G21', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (84, 'G21', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (85, 'G21', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (86, 'G21', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (87, 'G21', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (88, 'G21', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (89, 'G21', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (90, 'G21', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (91, 'G23', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (92, 'G23', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (93, 'G23', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (94, 'G23', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (95, 'G23', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (96, 'G23', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (97, 'G23', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (98, 'G23', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (99, 'G23', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (100, 'G23', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (101, 'G23', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (102, 'G23', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (103, 'G23', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (104, 'G23', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (105, 'G23', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (106, 'G25', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (107, 'G25', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (108, 'G25', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (109, 'G25', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (110, 'G25', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (111, 'G25', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (112, 'G25', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (113, 'G25', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (114, 'G25', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (115, 'G25', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (116, 'G25', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (117, 'G25', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (118, 'G25', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (119, 'G25', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (120, 'G25', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (121, 'G27', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (122, 'G27', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (123, 'G27', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (124, 'G27', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (125, 'G27', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (126, 'G27', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (127, 'G27', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (128, 'G27', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (129, 'G27', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (130, 'G27', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (131, 'G27', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (132, 'G27', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (133, 'G27', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (134, 'G27', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (135, 'G27', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (136, 'G29', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (137, 'G29', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (138, 'G29', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (139, 'G29', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (140, 'G29', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (141, 'G29', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (142, 'G29', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (143, 'G29', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (144, 'G29', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (145, 'G29', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (146, 'G29', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (147, 'G29', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (148, 'G29', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (149, 'G29', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (150, 'G29', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (151, 'G31', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (152, 'G31', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (153, 'G31', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (154, 'G31', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (155, 'G31', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (156, 'G31', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (157, 'G31', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (158, 'G31', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (159, 'G31', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (160, 'G31', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (161, 'G31', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (162, 'G31', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (163, 'G31', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (164, 'G31', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (165, 'G31', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (166, 'G33', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (167, 'G33', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (168, 'G33', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (169, 'G33', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (170, 'G33', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (171, 'G33', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (172, 'G33', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (173, 'G33', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (174, 'G33', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (175, 'G33', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (176, 'G33', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (177, 'G33', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (178, 'G33', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (179, 'G33', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (180, 'G33', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (181, 'G35', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (182, 'G35', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (183, 'G35', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (184, 'G35', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (185, 'G35', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (186, 'G35', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (187, 'G35', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (188, 'G35', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (189, 'G35', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (190, 'G35', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (191, 'G35', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (192, 'G35', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (193, 'G35', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (194, 'G35', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (195, 'G35', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (196, 'G37', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (197, 'G37', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (198, 'G37', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (199, 'G37', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (200, 'G37', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (201, 'G37', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (202, 'G37', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (203, 'G37', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (204, 'G37', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (205, 'G37', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (206, 'G37', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (207, 'G37', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (208, 'G37', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (209, 'G37', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (210, 'G37', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (211, 'G39', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (212, 'G39', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (213, 'G39', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (214, 'G39', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (215, 'G39', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (216, 'G39', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (217, 'G39', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (218, 'G39', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (219, 'G39', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (220, 'G39', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (221, 'G39', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (222, 'G39', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (223, 'G39', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (224, 'G39', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (225, 'G39', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (226, 'G41', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (227, 'G41', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (228, 'G41', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (229, 'G41', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (230, 'G41', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (231, 'G41', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (232, 'G41', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (233, 'G41', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (234, 'G41', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (235, 'G41', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (236, 'G41', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (237, 'G41', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (238, 'G41', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (239, 'G41', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (240, 'G41', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (241, 'G43', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (242, 'G43', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (243, 'G43', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (244, 'G43', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (245, 'G43', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (246, 'G43', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (247, 'G43', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (248, 'G43', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (249, 'G43', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (250, 'G43', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (251, 'G43', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (252, 'G43', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (253, 'G43', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (254, 'G43', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (255, 'G43', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (256, 'K11', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (257, 'K11', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (258, 'K11', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (259, 'K11', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (260, 'K11', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (261, 'K11', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (262, 'K11', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (263, 'K11', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (264, 'K11', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (265, 'K11', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (266, 'K11', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (267, 'K11', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (268, 'K11', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (269, 'K11', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (270, 'K11', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (271, 'K13', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (272, 'K13', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (273, 'K13', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (274, 'K13', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (275, 'K13', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (276, 'K13', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (277, 'K13', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (278, 'K13', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (279, 'K13', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (280, 'K13', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (281, 'K13', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (282, 'K13', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (283, 'K13', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (284, 'K13', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (285, 'K13', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (286, 'K15', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (287, 'K15', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (288, 'K15', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (289, 'K15', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (290, 'K15', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (291, 'K15', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (292, 'K15', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (293, 'K15', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (294, 'K15', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (295, 'K15', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (296, 'K15', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (297, 'K15', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (298, 'K15', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (299, 'K15', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (300, 'K15', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (301, 'K17', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (302, 'K17', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (303, 'K17', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (304, 'K17', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (305, 'K17', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (306, 'K17', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (307, 'K17', '00100000', 2, 2, '软座');
INSERT INTO `seats` VALUES (308, 'K17', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (309, 'K17', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (310, 'K17', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (311, 'K17', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (312, 'K17', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (313, 'K17', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (314, 'K17', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (315, 'K17', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (316, 'K19', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (317, 'K19', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (318, 'K19', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (319, 'K19', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (320, 'K19', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (321, 'K19', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (322, 'K19', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (323, 'K19', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (324, 'K19', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (325, 'K19', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (326, 'K19', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (327, 'K19', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (328, 'K19', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (329, 'K19', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (330, 'K19', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (331, 'K21', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (332, 'K21', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (333, 'K21', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (334, 'K21', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (335, 'K21', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (336, 'K21', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (337, 'K21', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (338, 'K21', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (339, 'K21', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (340, 'K21', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (341, 'K21', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (342, 'K21', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (343, 'K21', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (344, 'K21', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (345, 'K21', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (346, 'K23', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (347, 'K23', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (348, 'K23', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (349, 'K23', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (350, 'K23', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (351, 'K23', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (352, 'K23', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (353, 'K23', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (354, 'K23', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (355, 'K23', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (356, 'K23', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (357, 'K23', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (358, 'K23', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (359, 'K23', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (360, 'K23', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (361, 'K25', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (362, 'K25', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (363, 'K25', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (364, 'K25', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (365, 'K25', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (366, 'K25', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (367, 'K25', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (368, 'K25', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (369, 'K25', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (370, 'K25', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (371, 'K25', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (372, 'K25', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (373, 'K25', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (374, 'K25', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (375, 'K25', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (376, 'K27', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (377, 'K27', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (378, 'K27', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (379, 'K27', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (380, 'K27', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (381, 'K27', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (382, 'K27', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (383, 'K27', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (384, 'K27', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (385, 'K27', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (386, 'K27', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (387, 'K27', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (388, 'K27', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (389, 'K27', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (390, 'K27', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (391, 'K29', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (392, 'K29', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (393, 'K29', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (394, 'K29', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (395, 'K29', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (396, 'K29', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (397, 'K29', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (398, 'K29', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (399, 'K29', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (400, 'K29', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (401, 'K29', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (402, 'K29', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (403, 'K29', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (404, 'K29', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (405, 'K29', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (406, 'K31', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (407, 'K31', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (408, 'K31', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (409, 'K31', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (410, 'K31', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (411, 'K31', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (412, 'K31', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (413, 'K31', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (414, 'K31', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (415, 'K31', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (416, 'K31', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (417, 'K31', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (418, 'K31', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (419, 'K31', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (420, 'K31', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (421, 'K33', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (422, 'K33', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (423, 'K33', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (424, 'K33', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (425, 'K33', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (426, 'K33', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (427, 'K33', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (428, 'K33', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (429, 'K33', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (430, 'K33', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (431, 'K33', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (432, 'K33', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (433, 'K33', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (434, 'K33', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (435, 'K33', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (436, 'K35', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (437, 'K35', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (438, 'K35', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (439, 'K35', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (440, 'K35', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (441, 'K35', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (442, 'K35', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (443, 'K35', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (444, 'K35', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (445, 'K35', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (446, 'K35', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (447, 'K35', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (448, 'K35', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (449, 'K35', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (450, 'K35', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (451, 'Z11', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (452, 'Z11', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (453, 'Z11', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (454, 'Z11', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (455, 'Z11', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (456, 'Z11', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (457, 'Z11', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (458, 'Z11', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (459, 'Z11', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (460, 'Z11', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (461, 'Z11', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (462, 'Z11', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (463, 'Z11', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (464, 'Z11', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (465, 'Z11', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (466, 'Z13', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (467, 'Z13', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (468, 'Z13', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (469, 'Z13', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (470, 'Z13', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (471, 'Z13', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (472, 'Z13', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (473, 'Z13', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (474, 'Z13', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (475, 'Z13', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (476, 'Z13', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (477, 'Z13', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (478, 'Z13', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (479, 'Z13', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (480, 'Z13', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (481, 'Z15', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (482, 'Z15', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (483, 'Z15', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (484, 'Z15', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (485, 'Z15', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (486, 'Z15', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (487, 'Z15', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (488, 'Z15', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (489, 'Z15', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (490, 'Z15', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (491, 'Z15', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (492, 'Z15', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (493, 'Z15', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (494, 'Z15', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (495, 'Z15', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (496, 'Z17', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (497, 'Z17', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (498, 'Z17', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (499, 'Z17', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (500, 'Z17', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (501, 'Z17', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (502, 'Z17', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (503, 'Z17', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (504, 'Z17', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (505, 'Z17', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (506, 'Z17', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (507, 'Z17', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (508, 'Z17', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (509, 'Z17', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (510, 'Z17', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (511, 'Z19', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (512, 'Z19', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (513, 'Z19', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (514, 'Z19', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (515, 'Z19', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (516, 'Z19', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (517, 'Z19', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (518, 'Z19', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (519, 'Z19', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (520, 'Z19', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (521, 'Z19', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (522, 'Z19', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (523, 'Z19', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (524, 'Z19', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (525, 'Z19', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (526, 'Z21', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (527, 'Z21', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (528, 'Z21', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (529, 'Z21', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (530, 'Z21', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (531, 'Z21', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (532, 'Z21', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (533, 'Z21', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (534, 'Z21', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (535, 'Z21', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (536, 'Z21', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (537, 'Z21', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (538, 'Z21', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (539, 'Z21', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (540, 'Z21', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (541, 'Z23', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (542, 'Z23', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (543, 'Z23', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (544, 'Z23', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (545, 'Z23', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (546, 'Z23', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (547, 'Z23', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (548, 'Z23', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (549, 'Z23', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (550, 'Z23', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (551, 'Z23', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (552, 'Z23', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (553, 'Z23', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (554, 'Z23', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (555, 'Z23', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (556, 'Z25', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (557, 'Z25', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (558, 'Z25', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (559, 'Z25', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (560, 'Z25', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (561, 'Z25', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (562, 'Z25', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (563, 'Z25', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (564, 'Z25', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (565, 'Z25', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (566, 'Z25', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (567, 'Z25', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (568, 'Z25', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (569, 'Z25', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (570, 'Z25', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (571, 'Z27', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (572, 'Z27', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (573, 'Z27', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (574, 'Z27', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (575, 'Z27', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (576, 'Z27', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (577, 'Z27', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (578, 'Z27', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (579, 'Z27', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (580, 'Z27', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (581, 'Z27', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (582, 'Z27', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (583, 'Z27', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (584, 'Z27', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (585, 'Z27', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (586, 'Z29', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (587, 'Z29', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (588, 'Z29', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (589, 'Z29', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (590, 'Z29', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (591, 'Z29', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (592, 'Z29', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (593, 'Z29', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (594, 'Z29', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (595, 'Z29', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (596, 'Z29', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (597, 'Z29', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (598, 'Z29', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (599, 'Z29', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (600, 'Z29', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (601, 'Z31', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (602, 'Z31', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (603, 'Z31', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (604, 'Z31', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (605, 'Z31', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (606, 'Z31', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (607, 'Z31', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (608, 'Z31', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (609, 'Z31', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (610, 'Z31', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (611, 'Z31', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (612, 'Z31', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (613, 'Z31', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (614, 'Z31', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (615, 'Z31', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (616, 'Z33', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (617, 'Z33', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (618, 'Z33', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (619, 'Z33', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (620, 'Z33', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (621, 'Z33', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (622, 'Z33', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (623, 'Z33', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (624, 'Z33', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (625, 'Z33', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (626, 'Z33', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (627, 'Z33', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (628, 'Z33', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (629, 'Z33', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (630, 'Z33', '00000000', 3, 5, '软卧');
INSERT INTO `seats` VALUES (631, 'Z35', '00000000', 1, 1, '硬座');
INSERT INTO `seats` VALUES (632, 'Z35', '00000000', 1, 2, '硬座');
INSERT INTO `seats` VALUES (633, 'Z35', '00000000', 1, 3, '硬座');
INSERT INTO `seats` VALUES (634, 'Z35', '00000000', 1, 4, '硬座');
INSERT INTO `seats` VALUES (635, 'Z35', '00000000', 1, 5, '硬座');
INSERT INTO `seats` VALUES (636, 'Z35', '00000000', 2, 1, '软座');
INSERT INTO `seats` VALUES (637, 'Z35', '00000000', 2, 2, '软座');
INSERT INTO `seats` VALUES (638, 'Z35', '00000000', 2, 3, '软座');
INSERT INTO `seats` VALUES (639, 'Z35', '00000000', 2, 4, '软座');
INSERT INTO `seats` VALUES (640, 'Z35', '00000000', 2, 5, '软座');
INSERT INTO `seats` VALUES (641, 'Z35', '00000000', 3, 1, '软卧');
INSERT INTO `seats` VALUES (642, 'Z35', '00000000', 3, 2, '软卧');
INSERT INTO `seats` VALUES (643, 'Z35', '00000000', 3, 3, '软卧');
INSERT INTO `seats` VALUES (644, 'Z35', '00000000', 3, 4, '软卧');
INSERT INTO `seats` VALUES (645, 'Z35', '00000000', 3, 5, '软卧');

-- ----------------------------
-- Table structure for station_price
-- ----------------------------
DROP TABLE IF EXISTS `station_price`;
CREATE TABLE `station_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `station_price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of station_price
-- ----------------------------
INSERT INTO `station_price` VALUES (1, '郑州', '北京', 500.00);
INSERT INTO `station_price` VALUES (2, '北京', '哈尔滨', 600.00);

-- ----------------------------
-- Table structure for stations
-- ----------------------------
DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations`  (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `train_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `station` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_time` datetime(0) NULL DEFAULT NULL,
  `out_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stations
-- ----------------------------
INSERT INTO `stations` VALUES (1, 'Z11', '郑州', '2020-12-20 07:50:00', '2020-12-20 08:00:00');
INSERT INTO `stations` VALUES (2, 'Z11', '北京', '2020-12-20 15:00:00', '2020-12-20 15:10:00');
INSERT INTO `stations` VALUES (3, 'Z13', '郑州', '2020-12-20 12:50:00', '2020-12-20 13:00:00');
INSERT INTO `stations` VALUES (4, 'Z13', '北京', '2020-12-20 20:00:00', '2020-12-20 20:10:00');
INSERT INTO `stations` VALUES (5, 'Z15', '郑州', '2020-12-20 08:20:00', '2020-12-20 08:30:00');
INSERT INTO `stations` VALUES (6, 'Z15', '北京', '2020-12-20 15:30:00', '2020-12-20 15:40:00');
INSERT INTO `stations` VALUES (7, 'Z15', '哈尔滨', '2020-12-20 19:30:00', '2020-12-20 19:40:00');
INSERT INTO `stations` VALUES (8, 'Z17', '郑州', '2020-12-20 13:20:00', '2020-12-20 13:30:00');
INSERT INTO `stations` VALUES (9, 'Z17', '北京', '2020-12-20 20:30:00', '2020-12-20 20:40:00');
INSERT INTO `stations` VALUES (10, 'Z17', '哈尔滨', '2020-12-21 00:30:00', '2020-12-21 00:40:00');
INSERT INTO `stations` VALUES (11, 'Z19', '北京', '2020-12-20 07:50:00', '2020-12-20 08:00:00');
INSERT INTO `stations` VALUES (12, 'Z19', '哈尔滨', '2020-12-20 12:00:00', '2020-12-20 12:10:00');
INSERT INTO `stations` VALUES (13, 'Z21', '北京', '2020-12-20 08:20:00', '2020-12-20 08:30:00');
INSERT INTO `stations` VALUES (14, 'Z21', '哈尔滨', '2020-12-20 12:30:00', '2020-12-20 12:40:00');
INSERT INTO `stations` VALUES (15, 'G11', '郑州', '2020-12-20 08:50:00', '2020-12-20 09:00:00');
INSERT INTO `stations` VALUES (16, 'G11', '南京', '2020-12-20 12:40:00', '2020-12-20 12:50:00');
INSERT INTO `stations` VALUES (17, 'G11', '上海', '2020-12-20 13:40:00', '2020-12-20 13:50:00');
INSERT INTO `stations` VALUES (18, 'G13', '郑州', '2020-12-20 14:50:00', '2020-12-20 15:00:00');
INSERT INTO `stations` VALUES (19, 'G13', '南京', '2020-12-20 18:40:00', '2020-12-20 18:50:00');
INSERT INTO `stations` VALUES (20, 'G13', '上海', '2020-12-20 19:40:00', '2020-12-20 19:50:00');
INSERT INTO `stations` VALUES (21, 'G15', '郑州', '2020-12-20 06:50:00', '2020-12-20 07:00:00');
INSERT INTO `stations` VALUES (22, 'G15', '武汉', '2020-12-20 10:30:00', '2020-12-20 10:40:00');
INSERT INTO `stations` VALUES (23, 'G15', '广州', '2020-12-20 15:30:00', '2020-12-20 15:40:00');
INSERT INTO `stations` VALUES (24, 'G17', '郑州', '2020-12-20 09:50:00', '2020-12-20 10:00:00');
INSERT INTO `stations` VALUES (25, 'G17', '武汉', '2020-12-20 13:30:00', '2020-12-20 13:40:00');
INSERT INTO `stations` VALUES (26, 'G17', '广州', '2020-12-20 18:30:00', '2020-12-20 18:40:00');
INSERT INTO `stations` VALUES (27, 'G19', '郑州', '2020-12-20 12:50:00', '2020-12-20 13:00:00');
INSERT INTO `stations` VALUES (28, 'G19', '武汉', '2020-12-20 16:30:00', '2020-12-20 16:40:00');
INSERT INTO `stations` VALUES (29, 'G19', '广州', '2020-12-20 21:30:00', '2020-12-20 21:40:00');
INSERT INTO `stations` VALUES (30, 'G19', '深圳', '2020-12-20 23:30:00', '2020-12-20 23:40:00');
INSERT INTO `stations` VALUES (31, 'G21', '郑州', '2020-12-20 15:50:00', '2020-12-20 16:00:00');
INSERT INTO `stations` VALUES (32, 'G21', '郑州', '2020-12-20 19:30:00', '2020-12-20 19:40:00');
INSERT INTO `stations` VALUES (33, 'G21', '郑州', '2020-12-20 00:30:00', '2020-12-21 00:40:00');
INSERT INTO `stations` VALUES (34, 'G21', '郑州', '2020-12-21 02:30:00', '2020-12-21 02:40:00');
INSERT INTO `stations` VALUES (35, 'Z23', '武汉', '2020-12-20 07:50:00', '2020-12-20 08:00:00');
INSERT INTO `stations` VALUES (36, 'Z23', '深圳', '2020-12-20 15:00:00', '2020-12-20 15:10:00');
INSERT INTO `stations` VALUES (37, 'Z25', '深圳', '2020-12-20 06:50:00', '2020-12-20 07:00:00');
INSERT INTO `stations` VALUES (38, 'Z25', '南京', '2020-12-20 13:20:00', '2020-12-20 13:30:00');
INSERT INTO `stations` VALUES (39, 'Z25', '上海', '2020-12-20 14:20:00', '2020-12-20 14:30:00');
INSERT INTO `stations` VALUES (40, 'Z27', '深圳', '2020-12-20 09:50:00', '2020-12-20 10:00:00');
INSERT INTO `stations` VALUES (41, 'Z27', '南京', '2020-12-20 16:20:00', '2020-12-20 16:30:00');
INSERT INTO `stations` VALUES (42, 'Z27', '上海', '2020-12-20 17:20:00', '2020-12-20 17:30:00');
INSERT INTO `stations` VALUES (43, 'K11', '郑州', '2020-12-20 18:50:00', '2020-12-20 19:00:00');
INSERT INTO `stations` VALUES (44, 'K11', '武汉', '2020-12-20 22:30:00', '2020-12-20 22:40:00');
INSERT INTO `stations` VALUES (45, 'K11', '南宁', '2020-12-21 02:30:00', '2020-12-21 02:40:00');
INSERT INTO `stations` VALUES (46, 'K13', '郑州', '2020-12-20 06:50:00', '2020-12-20 07:00:00');
INSERT INTO `stations` VALUES (47, 'K13', '太原', '2020-12-20 11:00:00', '2020-12-20 11:10:00');
INSERT INTO `stations` VALUES (48, 'K13', '兰州', '2020-12-20 17:00:00', '2020-12-20 17:10:00');
INSERT INTO `stations` VALUES (49, 'K15', '郑州', '2020-12-21 03:00:00', '2020-12-21 03:10:00');
INSERT INTO `stations` VALUES (50, 'K15', '太原', '2020-12-20 09:50:00', '2020-12-20 10:00:00');
INSERT INTO `stations` VALUES (51, 'K15', '兰州', '2020-12-20 14:00:00', '2020-12-20 14:10:00');
INSERT INTO `stations` VALUES (52, 'K15', '成都', '2020-12-20 20:00:00', '2020-12-20 20:10:00');
INSERT INTO `stations` VALUES (53, 'G23', '郑州', '2020-12-21 00:00:00', '2020-12-21 00:10:00');
INSERT INTO `stations` VALUES (54, 'G23', '兰州', '2020-12-20 06:50:00', '2020-12-20 07:00:00');
INSERT INTO `stations` VALUES (55, 'G23', '成都', '2020-12-20 17:50:00', '2020-12-20 18:00:00');
INSERT INTO `stations` VALUES (56, 'G25', '郑州', '2020-12-20 21:00:00', '2020-12-20 21:10:00');
INSERT INTO `stations` VALUES (57, 'G25', '兰州', '2020-12-20 14:50:00', '2020-12-20 15:00:00');
INSERT INTO `stations` VALUES (58, 'G25', '成都', '2020-12-21 01:00:00', '2020-12-21 01:10:00');
INSERT INTO `stations` VALUES (59, 'G27', '郑州', '2020-12-21 05:00:00', '2020-12-20 05:10:00');
INSERT INTO `stations` VALUES (60, 'G27', '兰州', '2020-12-20 22:50:00', '2020-12-20 23:00:00');
INSERT INTO `stations` VALUES (61, 'G27', '乌鲁木齐', '2020-12-20 23:00:00', '2020-12-20 23:10:00');
INSERT INTO `stations` VALUES (62, 'K17', '南宁', '2020-12-21 09:00:00', '2020-12-21 09:10:00');
INSERT INTO `stations` VALUES (63, 'K17', '武汉', '2020-12-21 21:00:00', '2020-12-21 21:10:00');
INSERT INTO `stations` VALUES (64, 'K17', '郑州', '2020-12-20 07:00:00', '2020-12-20 07:10:00');
INSERT INTO `stations` VALUES (65, 'K17', '太原', '2020-12-20 11:00:00', '2020-12-20 11:10:00');
INSERT INTO `stations` VALUES (66, 'K17', '北京', '2020-12-20 14:30:00', '2020-12-20 14:40:00');
INSERT INTO `stations` VALUES (67, 'K17', '哈尔滨', '2020-12-20 18:20:00', '2020-12-20 18:30:00');
INSERT INTO `stations` VALUES (68, 'K19', '南京', '2020-12-20 19:30:00', '2020-12-20 19:40:00');
INSERT INTO `stations` VALUES (69, 'K19', '武汉', '2020-12-20 23:30:00', '2020-12-20 23:40:00');
INSERT INTO `stations` VALUES (70, 'K19', '广州', '2020-12-20 10:00:00', '2020-12-20 10:10:00');
INSERT INTO `stations` VALUES (71, 'K19', '深圳', '2020-12-20 14:00:00', '2020-12-20 14:10:00');
INSERT INTO `stations` VALUES (72, 'K19', '上海', '2020-12-20 19:00:00', '2020-12-20 19:10:00');
INSERT INTO `stations` VALUES (73, 'K21', '深圳', '2020-12-20 21:00:00', '2020-12-20 21:10:00');
INSERT INTO `stations` VALUES (74, 'K21', '广州', '2020-12-21 04:20:00', '2020-12-21 04:30:00');
INSERT INTO `stations` VALUES (75, 'K21', '武汉', '2020-12-20 07:00:00', '2020-12-20 07:10:00');
INSERT INTO `stations` VALUES (76, 'K21', '郑州', '2020-12-20 18:00:00', '2020-12-20 18:10:00');
INSERT INTO `stations` VALUES (77, 'K21', '太原', '2020-12-20 11:40:00', '2020-12-20 11:50:00');
INSERT INTO `stations` VALUES (78, 'K21', '北京', '2020-12-20 15:40:00', '2020-12-20 15:50:00');
INSERT INTO `stations` VALUES (79, 'K21', '哈尔滨', '2020-12-20 16:40:00', '2020-12-20 16:50:00');
INSERT INTO `stations` VALUES (80, 'G29', '上海', '2020-12-20 07:00:00', '2020-12-20 07:10:00');
INSERT INTO `stations` VALUES (81, 'G29', '南京', '2020-12-20 08:00:00', '2020-12-20 08:10:00');
INSERT INTO `stations` VALUES (82, 'G29', '郑州', '2020-12-20 11:40:00', '2020-12-20 11:50:00');
INSERT INTO `stations` VALUES (83, 'G29', '太原', '2020-12-20 15:40:00', '2020-12-20 15:50:00');
INSERT INTO `stations` VALUES (84, 'G29', '北京', '2020-12-20 16:40:00', '2020-12-20 16:50:00');
INSERT INTO `stations` VALUES (85, 'G29', '哈尔滨', '2020-12-20 20:40:00', '2020-12-20 20:50:00');
INSERT INTO `stations` VALUES (86, 'K23', '上海', '2020-12-20 11:00:00', '2020-12-20 11:10:00');
INSERT INTO `stations` VALUES (87, 'K23', '南京', '2020-12-20 12:00:00', '2020-12-20 12:10:00');
INSERT INTO `stations` VALUES (88, 'K23', '郑州', '2020-12-20 15:40:00', '2020-12-20 15:50:00');
INSERT INTO `stations` VALUES (89, 'K23', '兰州', '2020-12-21 01:40:00', '2020-12-21 01:50:00');
INSERT INTO `stations` VALUES (90, 'K23', '乌鲁木齐', '2020-12-21 13:40:00', '2020-12-21 13:50:00');
INSERT INTO `stations` VALUES (91, 'K25', '成都', '2020-11-21 06:50:00', '2020-11-21 07:00:00');
INSERT INTO `stations` VALUES (92, 'K25', '兰州', '2020-11-21 11:30:00', '2020-11-21 11:40:00');
INSERT INTO `stations` VALUES (93, 'K25', '郑州', '2020-11-21 21:30:00', '2020-11-21 21:40:00');
INSERT INTO `stations` VALUES (94, 'K25', '太原', '2020-11-22 01:30:00', '2020-11-22 01:40:00');
INSERT INTO `stations` VALUES (95, 'K25', '北京', '2020-11-22 02:30:00', '2020-11-22 02:40:00');
INSERT INTO `stations` VALUES (96, 'K25', '哈尔滨', '2020-11-22 06:30:00', '2020-11-22 06:40:00');
INSERT INTO `stations` VALUES (97, 'G31', '深圳', '2020-11-21 06:50:00', '2020-11-21 07:00:00');
INSERT INTO `stations` VALUES (98, 'G31', '广州', '2020-11-21 09:00:00', '2020-11-21 09:10:00');
INSERT INTO `stations` VALUES (99, 'G31', '武汉', '2020-11-21 14:00:00', '2020-11-21 14:10:00');
INSERT INTO `stations` VALUES (100, 'G31', '郑州', '2020-11-21 17:30:00', '2020-11-21 17:40:00');
INSERT INTO `stations` VALUES (101, 'G31', '兰州', '2020-11-22 03:30:00', '2020-11-22 03:40:00');
INSERT INTO `stations` VALUES (102, 'G31', '成都', '2020-11-22 07:30:00', '2020-11-22 07:40:00');
INSERT INTO `stations` VALUES (103, 'Z29', '广州', '2020-11-21 06:50:00', '2020-11-21 07:00:00');
INSERT INTO `stations` VALUES (104, 'Z29', '深圳', '2020-11-21 09:00:00', '2020-11-21 09:10:00');
INSERT INTO `stations` VALUES (105, 'Z29', '上海', '2020-11-21 16:20:00', '2020-11-21 16:30:00');
INSERT INTO `stations` VALUES (106, 'Z29', '南京', '2020-11-21 17:20:00', '2020-11-21 17:30:00');
INSERT INTO `stations` VALUES (107, 'Z29', '郑州', '2020-11-21 21:00:00', '2020-11-21 21:10:00');
INSERT INTO `stations` VALUES (108, 'Z29', '北京', '2020-11-22 04:00:00', '2020-11-22 04:10:00');
INSERT INTO `stations` VALUES (109, 'G33', '成都', '2020-11-21 08:20:00', '2020-11-21 08:30:00');
INSERT INTO `stations` VALUES (110, 'G33', '南宁', '2020-11-21 12:50:00', '2020-11-21 13:00:00');
INSERT INTO `stations` VALUES (111, 'G33', '武汉', '2020-11-21 16:50:00', '2020-11-21 17:00:00');
INSERT INTO `stations` VALUES (112, 'G33', '广州', '2020-11-21 21:50:00', '2020-11-21 22:00:00');
INSERT INTO `stations` VALUES (113, 'G33', '深圳', '2020-11-21 23:50:00', '2020-11-22 00:00:00');
INSERT INTO `stations` VALUES (114, 'K27', '乌鲁木齐', '2020-11-21 08:50:00', '2020-11-21 09:00:00');
INSERT INTO `stations` VALUES (115, 'K27', '兰州', '2020-11-21 21:00:00', '2020-11-21 21:10:00');
INSERT INTO `stations` VALUES (116, 'K27', '郑州', '2020-11-22 07:00:00', '2020-11-22 07:10:00');
INSERT INTO `stations` VALUES (117, 'K27', '南京', '2020-11-22 10:40:00', '2020-11-22 10:50:00');
INSERT INTO `stations` VALUES (118, 'K27', '上海', '2020-11-22 11:40:00', '2020-11-22 11:50:00');
INSERT INTO `stations` VALUES (119, 'K29', '乌鲁木齐', '2020-11-21 11:50:00', '2020-11-21 12:00:00');
INSERT INTO `stations` VALUES (120, 'K29', '成都', '2020-11-21 22:40:00', '2020-11-21 22:50:00');
INSERT INTO `stations` VALUES (121, 'K29', '南宁', '2020-12-22 03:00:00', '2020-12-22 03:10:00');
INSERT INTO `stations` VALUES (122, 'K29', '武汉', '2020-12-22 07:00:00', '2020-12-22 07:10:00');
INSERT INTO `stations` VALUES (123, 'K29', '郑州', '2020-12-22 10:30:00', '2020-12-22 10:40:00');
INSERT INTO `stations` VALUES (124, 'K29', '太原', '2020-12-22 14:30:00', '2020-12-22 14:40:00');
INSERT INTO `stations` VALUES (125, 'K29', '北京', '2020-12-22 15:30:00', '2020-12-22 15:40:00');
INSERT INTO `stations` VALUES (126, 'G35', '兰州', '2020-12-21 06:50:00', '2020-12-21 07:00:00');
INSERT INTO `stations` VALUES (127, 'G35', '太原', '2020-12-21 13:00:00', '2020-12-21 13:10:00');
INSERT INTO `stations` VALUES (128, 'G35', '郑州', '2020-12-21 17:00:00', '2020-12-21 17:10:00');
INSERT INTO `stations` VALUES (129, 'G35', '武汉', '2020-12-21 20:30:00', '2020-12-21 20:40:00');
INSERT INTO `stations` VALUES (130, 'G35', '广州', '2020-12-22 01:30:00', '2020-12-22 01:40:00');
INSERT INTO `stations` VALUES (131, 'G35', '深圳', '2020-12-22 03:30:00', '2020-12-22 03:40:00');
INSERT INTO `stations` VALUES (132, 'Z31', '郑州', '2020-11-21 07:50:00', '2020-11-21 08:00:00');
INSERT INTO `stations` VALUES (133, 'Z31', '武汉', '2020-11-21 11:50:00', '2020-11-21 12:00:00');
INSERT INTO `stations` VALUES (134, 'Z31', '广州', '2020-11-21 15:20:00', '2020-11-21 15:30:00');
INSERT INTO `stations` VALUES (135, 'Z31', '深圳', '2020-11-21 20:00:00', '2020-11-21 20:10:00');
INSERT INTO `stations` VALUES (136, 'Z31', '上海', '2020-11-22 03:00:00', '2020-11-22 03:10:00');
INSERT INTO `stations` VALUES (137, 'Z31', '北京', '2020-11-22 08:00:00', NULL);
INSERT INTO `stations` VALUES (138, 'K31', '拉萨', '2020-12-22 06:50:00', '2020-12-22 07:00:00');
INSERT INTO `stations` VALUES (139, 'K31', '重庆', '2020-12-22 18:40:00', '2020-12-22 18:50:00');
INSERT INTO `stations` VALUES (140, 'K31', '郑州', '2020-12-22 23:20:00', '2020-12-22 23:30:00');
INSERT INTO `stations` VALUES (141, 'K31', '太原', '2020-12-23 03:20:00', '2020-12-23 03:30:00');
INSERT INTO `stations` VALUES (142, 'K31', '北京', '2020-12-23 04:20:00', '2020-12-23 04:30:00');
INSERT INTO `stations` VALUES (143, 'G35', '拉萨', '2020-12-22 14:50:00', '2020-12-22 15:00:00');
INSERT INTO `stations` VALUES (144, 'G35', '南宁', '2020-12-23 04:30:00', '2020-12-23 04:40:00');
INSERT INTO `stations` VALUES (145, 'G35', '武汉', '2020-12-23 08:30:00', '2020-12-23 08:40:00');
INSERT INTO `stations` VALUES (146, 'G35', '重庆', '2020-12-23 09:30:00', '2020-12-23 09:40:00');
INSERT INTO `stations` VALUES (147, 'G35', '郑州', '2020-12-23 14:00:00', '2020-12-23 14:10:00');
INSERT INTO `stations` VALUES (148, 'G37', '重庆', '2020-12-22 06:50:00', '2020-12-22 07:00:00');
INSERT INTO `stations` VALUES (149, 'G37', '武汉', '2020-12-22 08:00:00', '2020-12-22 08:10:00');
INSERT INTO `stations` VALUES (150, 'G37', '广州', '2020-12-22 13:00:00', '2020-12-22 13:10:00');
INSERT INTO `stations` VALUES (151, 'G37', '深圳', '2020-12-22 14:50:00', '2020-12-22 15:00:00');
INSERT INTO `stations` VALUES (152, 'G37', '杭州', '2020-12-22 16:50:00', '2020-12-22 17:00:00');
INSERT INTO `stations` VALUES (153, 'K33', '重庆', '2020-12-22 09:50:00', '2020-12-22 10:00:00');
INSERT INTO `stations` VALUES (154, 'K33', '郑州', '2020-12-22 14:20:00', '2020-12-22 14:30:00');
INSERT INTO `stations` VALUES (155, 'K33', '北京', '2020-12-22 21:20:00', '2020-12-22 21:30:00');
INSERT INTO `stations` VALUES (156, 'K33', '哈尔滨', '2020-12-23 01:20:00', '2020-12-23 01:30:00');
INSERT INTO `stations` VALUES (157, 'G39', '重庆', '2020-12-22 12:50:00', '2020-12-22 13:00:00');
INSERT INTO `stations` VALUES (158, 'G39', '武汉', '2020-12-22 13:50:00', '2020-12-22 14:00:00');
INSERT INTO `stations` VALUES (159, 'G39', '广州', '2020-12-22 18:50:00', '2020-12-22 19:00:00');
INSERT INTO `stations` VALUES (160, 'G39', '南京', '2020-12-23 00:20:00', '2020-12-23 00:30:00');
INSERT INTO `stations` VALUES (161, 'G39', '上海', '2020-12-23 01:20:00', '2020-12-23 01:30:00');
INSERT INTO `stations` VALUES (162, 'G41', '杭州', '2020-12-23 06:50:00', '2020-12-23 07:00:00');
INSERT INTO `stations` VALUES (163, 'G41', '上海', '2020-12-23 13:10:00', '2020-12-23 13:20:00');
INSERT INTO `stations` VALUES (164, 'G41', '南京', '2020-12-23 14:10:00', '2020-12-23 14:20:00');
INSERT INTO `stations` VALUES (165, 'G41', '郑州', '2020-12-23 17:50:00', '2020-12-23 18:00:00');
INSERT INTO `stations` VALUES (166, 'Z33', '北京', '2020-12-23 06:50:00', '2020-12-23 07:00:00');
INSERT INTO `stations` VALUES (167, 'Z33', '郑州', '2020-12-23 13:50:00', '2020-12-23 14:00:00');
INSERT INTO `stations` VALUES (168, 'Z33', '武汉', '2020-12-23 17:20:00', '2020-12-23 17:30:00');
INSERT INTO `stations` VALUES (169, 'Z33', '广州', '2020-12-23 22:20:00', '2020-12-23 22:30:00');
INSERT INTO `stations` VALUES (170, 'Z33', '杭州', '2020-12-24 02:20:00', '2020-12-24 02:30:00');
INSERT INTO `stations` VALUES (171, 'Z35', '北京', '2020-12-23 09:50:00', '2020-12-23 10:00:00');
INSERT INTO `stations` VALUES (172, 'Z35', '南京', '2020-12-23 20:30:00', '2020-12-23 20:40:00');
INSERT INTO `stations` VALUES (173, 'Z35', '上海', '2020-12-23 21:30:00', '2020-12-23 21:40:00');
INSERT INTO `stations` VALUES (174, 'Z35', '杭州', '2020-12-24 02:30:00', '2020-12-24 02:40:00');
INSERT INTO `stations` VALUES (175, 'K35', '成都', '2020-12-23 06:50:00', '2020-12-23 07:00:00');
INSERT INTO `stations` VALUES (176, 'K35', '重庆', '2020-12-23 09:50:00', '2020-12-23 10:00:00');
INSERT INTO `stations` VALUES (177, 'K35', '武汉', '2020-12-23 10:50:00', '2020-12-23 11:00:00');
INSERT INTO `stations` VALUES (178, 'K35', '广州', '2020-12-23 15:50:00', '2020-12-23 16:00:00');
INSERT INTO `stations` VALUES (179, 'K35', '南京', '2020-12-23 20:50:00', '2020-12-23 21:00:00');
INSERT INTO `stations` VALUES (180, 'K35', '杭州', '2020-12-23 23:50:00', '2020-12-24 00:00:00');

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `train_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `train_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pass_stations` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (1, 'Z11', '郑州', '北京', '2020-12-20 08:30:00', '2020-12-20 15:00:00', '特快列车', 'Z11-郑州,北京');
INSERT INTO `train` VALUES (2, 'Z13', '郑州', '北京', '2020-12-20 13:30:00', '2020-12-20 20:00:00', '特快列车', 'Z13-郑州,北京');
INSERT INTO `train` VALUES (3, 'Z15', '郑州', '哈尔滨', '2020-12-20 08:30:00', '2020-12-20 19:30:00', '特快列车', 'Z15-郑州,北京,哈尔滨');
INSERT INTO `train` VALUES (4, 'Z17', '郑州', '哈尔滨', '2020-12-20 13:30:00', '2020-12-21 00:30:00', '特快列车', 'Z17-郑州,北京,哈尔滨');
INSERT INTO `train` VALUES (5, 'Z19', '北京', '哈尔滨', '2020-12-20 08:00:00', '2020-12-20 12:00:00', '特快列车', 'Z19-北京,哈尔滨');
INSERT INTO `train` VALUES (6, 'Z21', '北京', '哈尔滨', '2020-12-20 08:30:00', '2020-12-20 12:30:00', '特快列车', 'Z21-北京,哈尔滨');
INSERT INTO `train` VALUES (7, 'G11', '郑州', '上海', '2020-12-20 09:00:00', '2020-12-20 13:40:00', '高铁', 'G11-郑州,南京,上海');
INSERT INTO `train` VALUES (8, 'G13', '郑州', '上海', '2020-12-20 15:00:00', '2020-12-20 19:40:00', '高铁', 'G13-郑州,南京,上海');
INSERT INTO `train` VALUES (9, 'G15', '郑州', '广州', '2020-12-20 07:00:00', '2020-12-20 15:30:00', '高铁', 'G15-郑州,武汉,广州');
INSERT INTO `train` VALUES (10, 'G17', '郑州', '广州', '2020-12-20 10:00:00', '2020-12-20 18:30:00', '高铁', 'G17-郑州,武汉,广州');
INSERT INTO `train` VALUES (11, 'G19', '郑州', '深圳', '2020-12-20 13:00:00', '2020-12-20 23:30:00', '高铁', 'G19-郑州,武汉,广州,深圳');
INSERT INTO `train` VALUES (12, 'G21', '郑州', '深圳', '2020-12-20 16:00:00', '2020-12-21 02:30:00', '高铁', 'G21-郑州,武汉,广州,深圳');
INSERT INTO `train` VALUES (13, 'Z23', '武汉', '深圳', '2020-12-20 08:00:00', '2020-12-20 15:00:00', '特快列车', 'Z23-武汉,深圳');
INSERT INTO `train` VALUES (14, 'Z25', '深圳', '上海', '2020-12-20 07:00:00', '2020-12-20 14:20:00', '特快列车', 'Z25-深圳,南京,上海');
INSERT INTO `train` VALUES (15, 'Z27', '深圳', '上海', '2020-12-20 10:00:00', '2020-12-20 17:20:00', '特快列车', 'Z27-深圳,南京,上海');
INSERT INTO `train` VALUES (16, 'K11', '郑州', '南宁', '2020-12-20 19:30:00', '2020-12-21 02:30:00', '普通列车', 'K11-郑州,武汉,南宁');
INSERT INTO `train` VALUES (17, 'K13', '郑州', '南宁', '2020-12-20 01:00:00', '2020-12-21 03:00:00', '普通列车', 'K13-郑州,太原,兰州');
INSERT INTO `train` VALUES (18, 'K15', '郑州', '成都', '2020-12-20 10:00:00', '2020-12-21 00:00:00', '普通列车', 'K15-郑州,太原,兰州,成都');
INSERT INTO `train` VALUES (19, 'G23', '郑州', '成都', '2020-12-20 07:00:00', '2020-12-20 21:00:00', '高铁', 'G23-郑州,兰州,成都');
INSERT INTO `train` VALUES (20, 'G25', '郑州', '成都', '2020-12-20 15:00:00', '2020-12-21 05:00:00', '高铁', 'G25-郑州,兰州,成都');
INSERT INTO `train` VALUES (21, 'G27', '郑州', '乌鲁木齐', '2020-12-20 23:00:00', '2020-12-20 21:00:00', '高铁', 'G27-郑州,兰州,乌鲁木齐');
INSERT INTO `train` VALUES (22, 'K17', '南宁', '哈尔滨', '2020-12-20 07:00:00', '2020-12-20 23:30:00', '普通列车', 'K17-南宁,武汉,郑州,太原,北京,哈尔滨');
INSERT INTO `train` VALUES (23, 'K19', '南京', '上海', '2020-12-20 10:00:00', '2020-12-21 04:20:00', '普通列车', 'K19-南京,武汉,广州,深圳,上海');
INSERT INTO `train` VALUES (24, 'K21', '深圳', '哈尔滨', '2020-12-20 07:00:00', '2020-12-21 02:30:00', '普通列车', 'K21-深圳,广州,武汉,郑州,太原,北京,哈尔滨');
INSERT INTO `train` VALUES (25, 'G29', '上海', '哈尔滨', '2020-12-20 07:00:00', '2020-12-20 20:40:00', '高铁', 'G29-上海,南京,郑州,太原,北京,哈尔滨');
INSERT INTO `train` VALUES (26, 'K23', '上海', '乌鲁木齐', '2020-12-20 11:00:00', '2020-12-21 13:40:00', '普通列车', 'K23-上海,南京,郑州,兰州,乌鲁木齐');
INSERT INTO `train` VALUES (27, 'K25', '成都', '哈尔滨', '2020-12-21 07:00:00', '2020-12-22 06:30:00', '普通列车', 'K25-成都,兰州,郑州,太原,北京,哈尔滨');
INSERT INTO `train` VALUES (28, 'G31', '深圳', '成都', '2020-12-21 07:00:00', '2020-12-22 07:30:00', '高铁', 'G31-深圳,广州,武汉,郑州,兰州,成都');
INSERT INTO `train` VALUES (29, 'Z29', '广州', '北京', '2020-12-21 07:00:00', '2020-12-22 04:00:00', '特快列车', 'Z29-广州,深圳,上海,南京,郑州,北京');
INSERT INTO `train` VALUES (30, 'G33', '成都', '深圳', '2020-12-21 08:30:00', '2020-12-21 23:50:00', '高铁', 'G33-成都,南宁,武汉,广州,深圳');
INSERT INTO `train` VALUES (31, 'K27', '乌鲁木齐', '上海', '2020-12-21 09:00:00', '2020-12-22 11:40:00', '普通列车', 'K27-乌鲁木齐,兰州,郑州,南京,上海');
INSERT INTO `train` VALUES (32, 'K29', '乌鲁木齐', '北京', '2020-12-21 12:00:00', '2020-12-22 15:30:00', '普通列车', 'K29-乌鲁木齐,成都,南宁,武汉,郑州,太原,北京');
INSERT INTO `train` VALUES (33, 'G35', '兰州', '深圳', '2020-12-21 07:00:00', '2020-12-20 03:30:00', '高铁', 'G35-兰州,太原,郑州,武汉,广州,深圳');
INSERT INTO `train` VALUES (34, 'Z31', '郑州', '北京', '2020-12-20 19:30:00', '2020-12-21 19:30:00', '特快列车', 'Z31-郑州,武汉,广州,深圳,上海,北京');
INSERT INTO `train` VALUES (35, 'K31', '拉萨', '北京', '2020-12-22 07:00:00', '2020-12-23 04:20:00', '普通列车', 'K31-拉萨,重庆,郑州,太原,北京');
INSERT INTO `train` VALUES (36, 'G43', '拉萨', '郑州', '2020-12-22 15:00:00', '2020-12-23 14:00:00', '高铁', 'G35-拉萨,南宁,武汉,重庆,郑州');
INSERT INTO `train` VALUES (37, 'G37', '重庆', '杭州', '2020-12-22 07:00:00', '2020-12-22 17:00:00', '高铁', 'G37-重庆,武汉,广州,深圳,杭州');
INSERT INTO `train` VALUES (38, 'K33', '重庆', '哈尔滨', '2020-12-22 10:00:00', '2020-12-23 01:30:00', '普通列车', 'K33-重庆,郑州,北京,哈尔滨');
INSERT INTO `train` VALUES (39, 'G39', '重庆', '上海', '2020-12-22 13:00:00', '2020-12-23 01:30:00', '高铁', 'G39-重庆,武汉,广州,南京,上海');
INSERT INTO `train` VALUES (40, 'G41', '杭州', '郑州', '2020-12-23 07:00:00', '2020-12-23 18:00:00', '高铁', 'G41-杭州,上海,南京,郑州');
INSERT INTO `train` VALUES (41, 'Z33', '北京', '杭州', '2020-12-23 07:00:00', '2020-12-24 02:30:00', '特快列车', 'Z33-北京,郑州,武汉,广州,杭州');
INSERT INTO `train` VALUES (42, 'Z35', '北京', '杭州', '2020-12-23 10:00:00', '2020-12-24 02:40:00', '特快列车', 'Z35-北京,南京,上海,杭州');
INSERT INTO `train` VALUES (43, 'K35', '成都', '杭州', '2020-12-23 07:00:00', '2020-12-24 00:00:00', '普通列车', 'K35-成都,重庆,武汉,广州,南京,杭州');

-- ----------------------------
-- Table structure for train_type_price
-- ----------------------------
DROP TABLE IF EXISTS `train_type_price`;
CREATE TABLE `train_type_price`  (
  `id` int(11) NOT NULL,
  `train_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `train_price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train_type_price
-- ----------------------------
INSERT INTO `train_type_price` VALUES (1, '特快列车', 250.00);
INSERT INTO `train_type_price` VALUES (2, '高铁', 500.00);
INSERT INTO `train_type_price` VALUES (3, '普通列车', 50.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_age` int(255) NULL DEFAULT NULL,
  `user_sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zs', '123456', '16754626723', 30, '男');
INSERT INTO `user` VALUES (2, 'hyh', '123456', '12132123121', 18, '男');
INSERT INTO `user` VALUES (5, 'fda', '123456', '123', 12, '111');
INSERT INTO `user` VALUES (6, 'dsf', 'fsd', 'fsd', 2, '3');

SET FOREIGN_KEY_CHECKS = 1;
