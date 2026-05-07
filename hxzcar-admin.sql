/*
 Navicat Premium Dump SQL

 Source Server         : localhost_MySQL
 Source Server Type    : MySQL
 Source Server Version : 80045 (8.0.45)
 Source Host           : localhost:3306
 Source Schema         : hxzcar-admin

 Target Server Type    : MySQL
 Target Server Version : 80045 (8.0.45)
 File Encoding         : 65001

 Date: 07/05/2026 15:53:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abnormal_order
-- ----------------------------
DROP TABLE IF EXISTS `abnormal_order`;
CREATE TABLE `abnormal_order`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `abnormal_type` tinyint NOT NULL,
  `abnormal_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '0未处理 1已处理 2忽略',
  `handle_admin_id` int NULL DEFAULT NULL,
  `handle_opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `handle_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_id`(`order_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '异常订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of abnormal_order
-- ----------------------------
INSERT INTO `abnormal_order` VALUES (1, 1, 'ORD20260505001', 5, '订单金额小幅波动', 0, NULL, '', NULL, '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `activity_type` tinyint NOT NULL,
  `activity_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `target_user_type` tinyint NOT NULL DEFAULT 1,
  `condition_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `reward_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total_quota` int NOT NULL DEFAULT 0,
  `used_quota` int NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '初夏打车满减活动', 1, '全场满20减5', '2026-05-05 11:17:30', '2026-06-04 11:17:30', 1, NULL, '{\"reduce\":5}', 5000, 1280, 1, 'admin', '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '昵称',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '邮箱',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '13800138000', 'admin@taxi.com', '', 1, NULL, '127.0.0.1', '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `admin` VALUES (2, 'oper01', 'e10adc3949ba59abbe56e057f20f883e', '运营一', '13811110001', 'op01@test.com', '', 1, '2026-05-06 02:07:35', '192.168.1.101', '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `admin` VALUES (3, 'oper02', 'e10adc3949ba59abbe56e057f20f883e', '运营二', '13811110002', 'op02@test.com', '', 1, '2026-05-06 02:07:35', '192.168.1.102', '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `admin` VALUES (4, 'audit01', 'e10adc3949ba59abbe56e057f20f883e', '审核员', '13811110003', 'audit@test.com', '', 1, NULL, '', '2026-05-06 02:07:35', '2026-05-06 02:07:35');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `role_id` int NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_admin_role`(`admin_id` ASC, `role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员角色关联' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, 1, 1, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver_id` bigint NOT NULL,
  `car_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `car_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `car_brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `car_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `status` tinyint NOT NULL DEFAULT 1,
  `check_status` tinyint NULL DEFAULT 0,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_car_no`(`car_no` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '车辆表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 1, '京A88666', '经济型', '吉利', '白色', 1, 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `car` VALUES (2, 2, '沪B66888', '经济型', '大众', '黑色', 1, 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `car` VALUES (3, 3, '京B11223', '经济型', '日产', '灰色', 1, 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `car` VALUES (4, 4, '沪C33445', '舒适型', '大众', '银色', 1, 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `car` VALUES (5, 5, '粤A66778', '经济型', '丰田', '白色', 1, 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `car` VALUES (6, 6, '京D88990', '经济型', '比亚迪', '蓝色', 1, 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `car` VALUES (7, 3, '京A10101', '经济型', '比亚迪', '白色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (8, 4, '京A20202', '经济型', '吉利', '灰色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (9, 5, '京A30303', '舒适型', '大众', '黑色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (10, 6, '沪B10101', '经济型', '丰田', '白色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (11, 7, '沪B20202', '经济型', '本田', '银色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (12, 8, '沪B30303', '舒适型', '别克', '黑色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (13, 9, '粤A10101', '经济型', '日产', '白色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (14, 10, '粤A20202', '经济型', '马自达', '灰色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (15, 11, '粤A30303', '舒适型', '雪佛兰', '蓝色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (16, 12, '粤B10101', '经济型', '小鹏', '白色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (17, 13, '粤B20202', '经济型', '理想', '灰色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `car` VALUES (18, 14, '浙A10101', '经济型', '蔚来', '黑色', 1, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `coupon_type` tinyint NOT NULL,
  `amount` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `min_consume` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `valid_days` int NOT NULL DEFAULT 0,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_count` int NOT NULL DEFAULT 0,
  `used_count` int NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '优惠券表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, '10元无门槛打车券', 3, 10.00, 0.00, 7, '2026-05-05 11:17:30', '2026-05-12 11:17:30', 2000, 356, 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `coupon` VALUES (2, '5元无门槛券', 3, 5.00, 0.00, 7, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 5000, 1250, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (3, '8元无门槛券', 3, 8.00, 0.00, 7, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 3000, 860, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (4, '满20减5券', 1, 5.00, 20.00, 15, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 4000, 1120, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (5, '满30减8券', 1, 8.00, 30.00, 15, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 3000, 780, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (6, '满50减12券', 1, 12.00, 50.00, 20, '2026-05-06 02:10:21', '2026-05-26 02:10:21', 2000, 540, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (7, '周末8折券', 2, 0.80, 0.00, 5, '2026-05-06 02:10:21', '2026-05-11 02:10:21', 3000, 950, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (8, '夜间出行立减6券', 3, 6.00, 0.00, 10, '2026-05-06 02:10:21', '2026-05-16 02:10:21', 2500, 670, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `coupon` VALUES (9, '新用户10元券', 3, 10.00, 0.00, 30, '2026-05-06 02:10:21', '2026-06-05 02:10:21', 10000, 2300, 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for daily_statistics
-- ----------------------------
DROP TABLE IF EXISTS `daily_statistics`;
CREATE TABLE `daily_statistics`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `stat_date` date NOT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `order_count` int NOT NULL DEFAULT 0,
  `complete_order_count` int NOT NULL DEFAULT 0,
  `active_user_count` int NOT NULL DEFAULT 0,
  `active_driver_count` int NOT NULL DEFAULT 0,
  `gmv` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `avg_order_price` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_stat_date_city`(`stat_date` ASC, `city` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日统计' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of daily_statistics
-- ----------------------------
INSERT INTO `daily_statistics` VALUES (1, '2026-05-05', '北京市', 1260, 1235, 3560, 420, 36800.50, 29.85, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for dispatch_rule
-- ----------------------------
DROP TABLE IF EXISTS `dispatch_rule`;
CREATE TABLE `dispatch_rule`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '城市编码',
  `rule_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则编码',
  `rule_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则名称',
  `rule_value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规则值',
  `rule_type` tinyint NOT NULL DEFAULT 1 COMMENT '1权重 2开关 3数值',
  `status` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_city_rule`(`city_code` ASC, `rule_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '派单规则配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dispatch_rule
-- ----------------------------
INSERT INTO `dispatch_rule` VALUES (1, 'DEFAULT', 'max_radius', '最大派单半径km', '3', 3, 1);
INSERT INTO `dispatch_rule` VALUES (2, 'DEFAULT', 'max_retry', '最大重试次数', '5', 3, 1);
INSERT INTO `dispatch_rule` VALUES (3, 'DEFAULT', 'weight_distance', '距离权重', '40', 1, 1);
INSERT INTO `dispatch_rule` VALUES (4, 'DEFAULT', 'weight_service', '服务分权重', '30', 1, 1);
INSERT INTO `dispatch_rule` VALUES (5, 'DEFAULT', 'weight_accept', '接单率权重', '30', 1, 1);
INSERT INTO `dispatch_rule` VALUES (6, 'DEFAULT', 'enable_black', '启用黑名单', '1', 2, 1);
INSERT INTO `dispatch_rule` VALUES (7, 'DEFAULT', 'same_city', '仅同城派单', '1', 2, 1);

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `real_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_card` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `gender` tinyint NULL DEFAULT 0,
  `age` int NULL DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `license_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `license_issue_date` date NULL DEFAULT NULL,
  `license_valid_date` date NULL DEFAULT NULL,
  `driver_type` tinyint NULL DEFAULT 1 COMMENT '1全职 2兼职',
  `audit_status` tinyint NOT NULL DEFAULT 0 COMMENT '0待审核 1通过 2拒绝',
  `work_status` tinyint NOT NULL DEFAULT 0 COMMENT '0离线 1接单 2收工',
  `total_order_count` int NOT NULL DEFAULT 0,
  `total_income` decimal(12, 2) NOT NULL DEFAULT 0.00,
  `average_rating` decimal(3, 2) NOT NULL DEFAULT 5.00,
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `register_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_online_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_phone`(`phone` ASC) USING BTREE,
  UNIQUE INDEX `uk_id_card`(`id_card` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver
-- ----------------------------
INSERT INTO `driver` VALUES (1, '13900001111', '王师傅', '110101198805121234', '', 0, 36, '北京市', '', NULL, NULL, 1, 1, 1, 320, 9600.00, 4.95, 1, '2026-05-05 11:17:30', NULL, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `driver` VALUES (2, '13900002222', '刘师傅', '310101199003256789', '', 0, 34, '上海市', '', NULL, NULL, 2, 1, 0, 210, 6300.00, 4.86, 1, '2026-05-05 11:17:30', NULL, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `driver` VALUES (3, '13933330001', '李师傅', '110101198701011111', '', 0, 37, '北京市', '', NULL, NULL, 1, 1, 1, 420, 12600.00, 4.93, 1, '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `driver` VALUES (4, '13933330002', '张师傅', '310101198902022222', '', 0, 35, '上海市', '', NULL, NULL, 1, 1, 1, 380, 11400.00, 4.90, 1, '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `driver` VALUES (5, '13933330003', '王师傅', '440101199203033333', '', 0, 32, '广州市', '', NULL, NULL, 2, 1, 0, 150, 4500.00, 4.85, 1, '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `driver` VALUES (6, '13933330004', '陈师傅', '110101199004044444', '', 0, 34, '北京市', '', NULL, NULL, 1, 1, 1, 290, 8700.00, 4.96, 1, '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `driver` VALUES (7, '13930010001', '宋师傅', '110101198601011001', '', 0, 38, '北京市', '', NULL, NULL, 1, 1, 1, 450, 13500.00, 4.94, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (8, '13930010002', '胡师傅', '110101198802021002', '', 0, 36, '北京市', '', NULL, NULL, 1, 1, 1, 390, 11700.00, 4.91, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (9, '13930010003', '林师傅', '110101199003031003', '', 0, 34, '北京市', '', NULL, NULL, 2, 1, 0, 210, 6300.00, 4.86, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (10, '13930010004', '谢师傅', '310101198704042001', '', 0, 37, '上海市', '', NULL, NULL, 1, 1, 1, 410, 12300.00, 4.92, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (11, '13930010005', '邓师傅', '310101198905052002', '', 0, 35, '上海市', '', NULL, NULL, 1, 1, 1, 360, 10800.00, 4.89, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (12, '13930010006', '曹师傅', '310101199106062003', '', 0, 33, '上海市', '', NULL, NULL, 2, 1, 0, 180, 5400.00, 4.83, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (13, '13930010007', '袁师傅', '440101198807073001', '', 0, 36, '广州市', '', NULL, NULL, 1, 1, 1, 330, 9900.00, 4.90, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (14, '13930010008', '许师傅', '440101199008083002', '', 0, 34, '广州市', '', NULL, NULL, 1, 1, 1, 280, 8400.00, 4.87, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (15, '13930010009', '章师傅', '440101199209093003', '', 0, 32, '广州市', '', NULL, NULL, 2, 1, 0, 150, 4500.00, 4.81, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (16, '13930010010', '鲁师傅', '440301198910104001', '', 0, 35, '深圳市', '', NULL, NULL, 1, 1, 1, 310, 9300.00, 4.88, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (17, '13930010011', '童师傅', '440301199111114002', '', 0, 33, '深圳市', '', NULL, NULL, 1, 1, 1, 260, 7800.00, 4.85, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `driver` VALUES (18, '13930010012', '邢师傅', '330101199012125001', '', 0, 34, '杭州市', '', NULL, NULL, 1, 1, 1, 290, 8700.00, 4.89, 1, '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for driver_audit
-- ----------------------------
DROP TABLE IF EXISTS `driver_audit`;
CREATE TABLE `driver_audit`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver_id` bigint NOT NULL,
  `audit_type` tinyint NOT NULL,
  `submit_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `audit_status` tinyint NOT NULL DEFAULT 0,
  `audit_opinion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `audit_admin_id` int NULL DEFAULT NULL,
  `audit_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机审核表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver_audit
-- ----------------------------
INSERT INTO `driver_audit` VALUES (1, 1, 1, '{\"idCard\":\"正面+反面\",\"driverLicense\":\"驾驶证\"}', 1, '资料齐全审核通过', 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for driver_black_white
-- ----------------------------
DROP TABLE IF EXISTS `driver_black_white`;
CREATE TABLE `driver_black_white`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver_id` bigint NOT NULL,
  `list_type` tinyint NOT NULL COMMENT '1白 2黑',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `expire_time` datetime NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_driver_type`(`driver_id` ASC, `list_type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机黑白名单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of driver_black_white
-- ----------------------------

-- ----------------------------
-- Table structure for driver_comment
-- ----------------------------
DROP TABLE IF EXISTS `driver_comment`;
CREATE TABLE `driver_comment`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `driver_id` bigint NOT NULL,
  `star_rating` tinyint NOT NULL DEFAULT 5,
  `comment_content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `comment_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `comment_time` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_id`(`order_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机评价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver_comment
-- ----------------------------
INSERT INTO `driver_comment` VALUES (1, 1, 'ORD20260505001', 1, 1, 5, '师傅态度好、开车稳', '准时,服务好', '2026-05-05 11:17:30', 1, '2026-05-05 11:17:30');
INSERT INTO `driver_comment` VALUES (2, 10, 'ORD20260505010', 2, 3, 5, '准时到达，服务热情', '准时,服务好', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (3, 11, 'ORD20260505011', 3, 4, 5, '驾驶平稳，路线最优', '平稳,专业', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (4, 12, 'ORD20260505012', 4, 5, 5, '车内干净整洁，体验佳', '干净,舒适', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (5, 13, 'ORD20260505013', 5, 6, 5, '态度很好，非常满意', '服务好', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (6, 14, 'ORD20260505014', 6, 7, 5, '长途驾驶很稳，好评', '长途,平稳', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (7, 15, 'ORD20260505015', 7, 8, 5, '司机很有礼貌，推荐', '礼貌,专业', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (8, 16, 'ORD20260505016', 8, 9, 5, '路线熟悉，不绕路', '熟悉路线', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (9, 17, 'ORD20260505017', 9, 10, 5, '机场接送准时高效', '准时,高效', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (10, 18, 'ORD20260505018', 10, 11, 5, '车内无异味，乘坐舒适', '干净,舒适', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (11, 19, 'ORD20260505019', 11, 12, 5, '服务周到，值得信赖', '服务好,靠谱', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (12, 20, 'ORD20260505020', 12, 13, 5, '速度快，价格合理', '快速,划算', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (13, 21, 'ORD20260505021', 13, 14, 5, '车内环境很好，五星好评', '干净,环境好', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (14, 22, 'ORD20260505022', 14, 3, 5, '司机技术好，乘坐安心', '技术好', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (15, 23, 'ORD20260505023', 15, 4, 5, '服务态度满分，强烈推荐', '服务满分', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (16, 24, 'ORD20260505024', 2, 5, 5, '准时守信，非常满意', '准时,守信', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (17, 25, 'ORD20260505025', 3, 6, 5, '驾驶平稳，安全放心', '平稳,安全', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (18, 26, 'ORD20260505026', 4, 7, 4, '整体不错，小瑕疵不影响', '良好', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (19, 27, 'ORD20260505027', 5, 8, 5, '非常满意，下次还选', '满意,推荐', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (20, 28, 'ORD20260505028', 6, 9, 5, '短途也很用心，好评', '用心服务', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (21, 29, 'ORD20260505029', 7, 10, 5, '长途出行首选，很稳', '长途首选', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (22, 30, 'ORD20260505030', 8, 11, 5, '热情周到，服务一流', '热情,一流', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (23, 31, 'ORD20260505031', 9, 12, 5, '车内整洁，体验很好', '整洁,舒适', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (24, 32, 'ORD20260505032', 10, 13, 5, '准时到达，服务到位', '准时,到位', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (25, 33, 'ORD20260505033', 11, 14, 5, '司机很专业，好评', '专业', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');
INSERT INTO `driver_comment` VALUES (26, 34, 'ORD20260505034', 12, 3, 5, '全程舒适，非常满意', '舒适,满意', '2026-05-06 02:10:21', 1, '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for driver_distribution
-- ----------------------------
DROP TABLE IF EXISTS `driver_distribution`;
CREATE TABLE `driver_distribution`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver_id` bigint NOT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `district` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `lng` decimal(10, 6) NOT NULL,
  `lat` decimal(10, 6) NOT NULL,
  `work_status` tinyint NOT NULL,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_driver_id`(`driver_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机分布' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver_distribution
-- ----------------------------
INSERT INTO `driver_distribution` VALUES (1, 1, '北京市', '朝阳区', 116.403874, 39.914885, 1, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for driver_status
-- ----------------------------
DROP TABLE IF EXISTS `driver_status`;
CREATE TABLE `driver_status`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `driver_id` bigint NOT NULL COMMENT '司机ID',
  `work_status` tinyint NOT NULL DEFAULT 0 COMMENT '0离线 1可接单 2行程中 3收工',
  `current_lng` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '当前经度',
  `current_lat` decimal(10, 6) NOT NULL DEFAULT 0.000000 COMMENT '当前纬度',
  `geo_hash` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '地理位置hash',
  `service_score` decimal(5, 2) NOT NULL DEFAULT 5.00 COMMENT '服务分',
  `accept_rate` decimal(5, 2) NOT NULL DEFAULT 100.00 COMMENT '接单率%',
  `is_qualified` tinyint NOT NULL DEFAULT 1 COMMENT '是否合规 0否1是',
  `last_report_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后位置上报时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_driver_id`(`driver_id` ASC) USING BTREE,
  INDEX `idx_work`(`work_status` ASC) USING BTREE,
  INDEX `idx_geo`(`geo_hash` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机实时状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of driver_status
-- ----------------------------

-- ----------------------------
-- Table structure for marketing_tool
-- ----------------------------
DROP TABLE IF EXISTS `marketing_tool`;
CREATE TABLE `marketing_tool`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tool_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tool_type` tinyint NOT NULL,
  `content_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `target_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `pv_count` int NOT NULL DEFAULT 0,
  `click_count` int NOT NULL DEFAULT 0,
  `conversion_count` int NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_tool_code`(`tool_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '营销工具' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of marketing_tool
-- ----------------------------
INSERT INTO `marketing_tool` VALUES (1, '首页开屏活动', 'OPEN_SCREEN', 2, '{\"img\":\"xxx.jpg\"}', '{\"city\":\"北京\"}', '2026-05-05 11:17:30', '2026-05-20 11:17:30', 0, 0, 0, 1, 'admin', '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `module` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '模块',
  `operation` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作',
  `request_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `request_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `response_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `ip_address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0失败 1成功',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES (1, 1, 'admin', '管理员管理', '登录系统', 'POST', '/login', NULL, NULL, '127.0.0.1', 1, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `user_id` bigint UNSIGNED NOT NULL COMMENT '用户ID',
  `driver_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '司机ID',
  `car_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '车辆ID',
  `order_type` tinyint NOT NULL DEFAULT 1 COMMENT '1实时单 2预约单',
  `car_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车型',
  `channel` tinyint NOT NULL COMMENT '渠道1APP2支付宝3微信',
  `start_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '起点',
  `start_lng` decimal(10, 6) NOT NULL COMMENT '起点经度',
  `start_lat` decimal(10, 6) NOT NULL COMMENT '起点纬度',
  `end_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '终点',
  `end_lng` decimal(10, 6) NOT NULL COMMENT '终点经度',
  `end_lat` decimal(10, 6) NOT NULL COMMENT '终点纬度',
  `distance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '预估里程',
  `estimated_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '预估价格',
  `actual_distance` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '实际里程',
  `actual_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '实际价格',
  `total_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '总金额',
  `discount_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '优惠',
  `pay_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '实付',
  `order_status` tinyint NOT NULL DEFAULT 1 COMMENT '1待接单 2已接单 3行程中 4已完成 5已取消 6异常',
  `pay_status` tinyint NOT NULL DEFAULT 0 COMMENT '0未支付 1已支付 2已退款',
  `pay_type` tinyint NULL DEFAULT 0 COMMENT '1微信 2支付宝',
  `cancel_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '取消原因',
  `accept_time` datetime NULL DEFAULT NULL COMMENT '接单时间',
  `start_time` datetime NULL DEFAULT NULL COMMENT '行程开始',
  `end_time` datetime NULL DEFAULT NULL COMMENT '行程结束',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `cancel_time` datetime NULL DEFAULT NULL COMMENT '取消时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_no`(`order_no` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 'ORD20260505001', 1, 1, 1, 1, '经济型', 1, '北京市朝阳区国贸中心', 116.403874, 39.914885, '北京市海淀区中关村', 116.397480, 39.910340, 6.50, 28.00, 6.50, 28.00, 28.00, 5.00, 23.00, 4, 1, 1, '', '2026-05-05 11:17:30', '2026-05-05 11:17:30', '2026-05-05 11:17:30', '2026-05-05 11:17:30', NULL, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `order` VALUES (2, 'ORD20260505002', 2, 3, 3, 1, '经济型', 1, '北京市朝阳区望京', 116.450000, 39.950000, '北京市海淀区西二旗', 116.350000, 39.980000, 8.20, 32.00, 8.20, 32.00, 32.00, 4.00, 28.00, 4, 1, 1, '', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `order` VALUES (3, 'ORD20260505003', 3, 4, 4, 1, '舒适型', 2, '上海市浦东新区陆家嘴', 121.500000, 31.230000, '上海市静安区南京西路', 121.460000, 31.250000, 5.30, 28.00, 5.30, 28.00, 28.00, 3.00, 25.00, 4, 1, 2, '', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `order` VALUES (4, 'ORD20260505004', 4, 5, 5, 1, '经济型', 1, '广州市天河区珠江新城', 113.320000, 23.120000, '广州市越秀区北京路', 113.260000, 23.130000, 4.80, 22.00, 4.80, 22.00, 22.00, 2.00, 20.00, 4, 1, 1, '', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `order` VALUES (5, 'ORD20260505005', 5, 6, 6, 2, '经济型', 3, '北京市海淀区中关村', 116.390000, 39.910000, '北京市朝阳区国贸', 116.400000, 39.915000, 6.10, 26.00, 6.10, 26.00, 26.00, 5.00, 21.00, 4, 1, 2, '', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', '2026-05-06 02:07:35', NULL, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `order` VALUES (6, 'ORD20260505010', 2, 3, 3, 1, '经济型', 1, '北京朝阳大悦城', 116.452100, 39.935800, '北京字节跳动大厦', 116.435100, 39.950600, 4.20, 18.00, 4.20, 18.00, 18.00, 2.00, 16.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (7, 'ORD20260505011', 3, 4, 4, 1, '经济型', 2, '北京望京SOHO', 116.450100, 39.953600, '北京中关村', 116.397500, 39.910400, 6.50, 26.00, 6.50, 26.00, 26.00, 3.00, 23.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (8, 'ORD20260505012', 4, 5, 5, 1, '舒适型', 3, '北京国贸中心', 116.403900, 39.914900, '北京三里屯', 116.440500, 39.931700, 3.80, 22.00, 3.80, 22.00, 22.00, 2.00, 20.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (9, 'ORD20260505013', 5, 6, 6, 1, '经济型', 1, '上海陆家嘴', 121.506300, 31.237600, '上海人民广场', 121.473700, 31.230400, 5.10, 24.00, 5.10, 24.00, 24.00, 3.00, 21.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (10, 'ORD20260505014', 6, 7, 7, 1, '经济型', 2, '上海张江科技园', 121.596700, 31.205700, '上海迪士尼', 121.780500, 31.144600, 12.30, 45.00, 12.30, 45.00, 45.00, 5.00, 40.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (11, 'ORD20260505015', 7, 8, 8, 1, '舒适型', 3, '上海虹桥机场', 121.338100, 31.198500, '上海火车站', 121.457700, 31.244900, 15.20, 55.00, 15.20, 55.00, 55.00, 6.00, 49.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (12, 'ORD20260505016', 8, 9, 9, 1, '经济型', 1, '广州珠江新城', 113.324500, 23.120000, '广州北京路', 113.265400, 23.131600, 5.70, 25.00, 5.70, 25.00, 25.00, 3.00, 22.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (13, 'ORD20260505017', 9, 10, 10, 1, '经济型', 2, '广州白云机场', 113.307400, 23.192600, '广州天河城', 113.327600, 23.134200, 22.10, 75.00, 22.10, 75.00, 75.00, 8.00, 67.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (14, 'ORD20260505018', 10, 11, 11, 1, '舒适型', 3, '广州琶洲会展', 113.376600, 23.094900, '广州大学城', 113.416500, 23.060700, 11.80, 42.00, 11.80, 42.00, 42.00, 5.00, 37.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (15, 'ORD20260505019', 11, 12, 12, 1, '经济型', 1, '深圳科技园', 113.943200, 22.546500, '深圳福田CBD', 114.057800, 22.542900, 8.90, 35.00, 8.90, 35.00, 35.00, 4.00, 31.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (16, 'ORD20260505020', 12, 13, 13, 1, '经济型', 2, '深圳北站', 114.027400, 22.612400, '深圳宝安机场', 113.815500, 22.631700, 19.30, 65.00, 19.30, 65.00, 65.00, 7.00, 58.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (17, 'ORD20260505021', 13, 14, 14, 1, '舒适型', 3, '深圳海岸城', 113.936500, 22.513400, '深圳世界之窗', 113.972700, 22.541100, 6.30, 28.00, 6.30, 28.00, 28.00, 3.00, 25.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (18, 'ORD20260505022', 14, 3, 3, 1, '经济型', 1, '杭州西湖', 120.151700, 30.255600, '杭州东站', 120.213700, 30.292100, 9.20, 38.00, 9.20, 38.00, 38.00, 4.00, 34.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (19, 'ORD20260505023', 15, 4, 4, 1, '经济型', 2, '杭州阿里巴巴', 120.038200, 30.282800, '杭州未来科技城', 119.970600, 30.301500, 7.50, 32.00, 7.50, 32.00, 32.00, 3.00, 29.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (20, 'ORD20260505024', 2, 5, 5, 1, '舒适型', 3, '北京朝阳公园', 116.479300, 39.937100, '北京常营', 116.536200, 39.942500, 7.10, 30.00, 7.10, 30.00, 30.00, 3.00, 27.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (21, 'ORD20260505025', 3, 6, 6, 1, '经济型', 1, '北京通州万达', 116.640700, 39.911600, '北京环球影城', 116.670100, 39.851800, 10.50, 42.00, 10.50, 42.00, 42.00, 5.00, 37.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (22, 'ORD20260505026', 4, 7, 7, 1, '经济型', 2, '上海静安寺', 121.444200, 31.227600, '上海徐家汇', 121.435800, 31.194200, 4.80, 20.00, 4.80, 20.00, 20.00, 2.00, 18.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (23, 'ORD20260505027', 5, 8, 8, 1, '舒适型', 3, '上海五角场', 121.514500, 31.293700, '上海外滩', 121.485600, 31.232900, 6.90, 29.00, 6.90, 29.00, 29.00, 3.00, 26.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (24, 'ORD20260505028', 6, 9, 9, 1, '经济型', 1, '广州上下九', 113.249100, 23.114300, '广州沙面岛', 113.250700, 23.111500, 2.30, 12.00, 2.30, 12.00, 12.00, 1.00, 11.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (25, 'ORD20260505029', 7, 10, 10, 1, '经济型', 2, '广州花都融创', 113.200500, 23.411600, '广州北站', 113.256400, 23.379100, 14.60, 52.00, 14.60, 52.00, 52.00, 6.00, 46.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (26, 'ORD20260505030', 8, 11, 11, 1, '舒适型', 3, '深圳东门老街', 114.119200, 22.546400, '深圳罗湖口岸', 114.120700, 22.526800, 3.50, 16.00, 3.50, 16.00, 16.00, 2.00, 14.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (27, 'ORD20260505031', 9, 12, 12, 1, '经济型', 1, '深圳龙岗万达', 114.247600, 22.727100, '深圳大运中心', 114.260500, 22.720500, 5.90, 25.00, 5.90, 25.00, 25.00, 3.00, 22.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (28, 'ORD20260505032', 10, 13, 13, 1, '经济型', 2, '杭州武林广场', 120.156700, 30.280700, '杭州钱江新城', 120.190500, 30.239600, 6.20, 27.00, 6.20, 27.00, 27.00, 3.00, 24.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (29, 'ORD20260505033', 11, 14, 14, 1, '舒适型', 3, '杭州灵隐寺', 120.083500, 30.246200, '杭州宋城', 120.120100, 30.210500, 8.30, 34.00, 8.30, 34.00, 34.00, 4.00, 30.00, 4, 1, 2, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `order` VALUES (30, 'ORD20260505034', 12, 3, 3, 1, '经济型', 1, '北京亦庄', 116.507200, 39.786500, '北京次渠', 116.546300, 39.767100, 6.70, 28.00, 6.70, 28.00, 28.00, 3.00, 25.00, 4, 1, 1, '', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', '2026-05-06 02:10:21', NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for order_dispatch_log
-- ----------------------------
DROP TABLE IF EXISTS `order_dispatch_log`;
CREATE TABLE `order_dispatch_log`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `driver_id` bigint NOT NULL,
  `driver_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `distance` int NOT NULL DEFAULT 0 COMMENT '距离米',
  `score_total` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '总分',
  `score_distance` decimal(8, 2) NOT NULL DEFAULT 0.00,
  `score_service` decimal(8, 2) NOT NULL DEFAULT 0.00,
  `score_accept` decimal(8, 2) NOT NULL DEFAULT 0.00,
  `dispatch_status` tinyint NOT NULL COMMENT '1推送 2接单 3拒单 4超时',
  `response_time` int NULL DEFAULT NULL COMMENT '响应秒数',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order`(`order_id` ASC) USING BTREE,
  INDEX `idx_driver`(`driver_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单派单日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_dispatch_log
-- ----------------------------

-- ----------------------------
-- Table structure for order_monitor
-- ----------------------------
DROP TABLE IF EXISTS `order_monitor`;
CREATE TABLE `order_monitor`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `driver_id` bigint NULL DEFAULT NULL,
  `order_status` tinyint NOT NULL,
  `current_lng` decimal(10, 6) NULL DEFAULT NULL,
  `current_lat` decimal(10, 6) NULL DEFAULT NULL,
  `estimated_arrival_time` int NULL DEFAULT NULL,
  `last_update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_order_id`(`order_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单监控' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_monitor
-- ----------------------------
INSERT INTO `order_monitor` VALUES (1, 1, 'ORD20260505001', 1, 1, 4, 116.400000, 39.912000, 8, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `pay_amount` decimal(10, 2) NOT NULL,
  `pay_type` tinyint NOT NULL,
  `pay_status` tinyint NOT NULL DEFAULT 0,
  `pay_time` datetime NULL DEFAULT NULL,
  `transaction_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支付记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES (1, 'ORD20260505001', 1, 23.00, 1, 1, '2026-05-05 11:17:30', 'WX20260505668899', '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `pay` VALUES (2, 'ORD20260505002', 2, 28.00, 1, 1, '2026-05-06 02:07:35', 'WX2026050500002', '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `pay` VALUES (3, 'ORD20260505003', 3, 25.00, 2, 1, '2026-05-06 02:07:35', 'ZFB2026050500003', '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `pay` VALUES (4, 'ORD20260505004', 4, 20.00, 1, 1, '2026-05-06 02:07:35', 'WX2026050500004', '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `pay` VALUES (5, 'ORD20260505005', 5, 21.00, 2, 1, '2026-05-06 02:07:35', 'ZFB2026050500005', '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `pay` VALUES (6, 'ORD20260505010', 2, 16.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050010', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (7, 'ORD20260505011', 3, 23.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050011', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (8, 'ORD20260505012', 4, 20.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050012', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (9, 'ORD20260505013', 5, 21.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050013', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (10, 'ORD20260505014', 6, 40.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050014', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (11, 'ORD20260505015', 7, 49.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050015', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (12, 'ORD20260505016', 8, 22.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050016', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (13, 'ORD20260505017', 9, 67.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050017', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (14, 'ORD20260505018', 10, 37.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050018', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (15, 'ORD20260505019', 11, 31.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050019', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (16, 'ORD20260505020', 12, 58.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050020', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (17, 'ORD20260505021', 13, 25.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050021', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (18, 'ORD20260505022', 14, 34.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050022', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (19, 'ORD20260505023', 15, 29.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050023', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (20, 'ORD20260505024', 2, 27.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050024', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (21, 'ORD20260505025', 3, 37.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050025', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (22, 'ORD20260505026', 4, 18.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050026', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (23, 'ORD20260505027', 5, 26.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050027', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (24, 'ORD20260505028', 6, 11.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050028', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (25, 'ORD20260505029', 7, 46.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050029', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (26, 'ORD20260505030', 8, 14.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050030', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (27, 'ORD20260505031', 9, 22.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050031', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (28, 'ORD20260505032', 10, 24.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050032', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (29, 'ORD20260505033', 11, 30.00, 2, 1, '2026-05-06 02:10:21', 'ZFB202605050033', '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `pay` VALUES (30, 'ORD20260505034', 12, 25.00, 1, 1, '2026-05-06 02:10:21', 'WX202605050034', '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `parent_id` int NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单/权限名',
  `code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限编码',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '1目录 2菜单 3按钮',
  `path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '图标',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 0, '系统管理', 'system', 1, '/system', 'system', 1, 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `permission` VALUES (2, 1, '管理员管理', 'system:admin', 2, '/system/admin', 'user', 1, 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for region_hot
-- ----------------------------
DROP TABLE IF EXISTS `region_hot`;
CREATE TABLE `region_hot`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `geo_hash` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `city_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'DEFAULT',
  `order_count` int NOT NULL DEFAULT 0,
  `driver_count` int NOT NULL DEFAULT 0,
  `hot_level` tinyint NOT NULL DEFAULT 1 COMMENT '1低2中3高',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_geo`(`geo_hash` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '区域热力供需' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region_hot
-- ----------------------------

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `report_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `report_type` tinyint NOT NULL,
  `report_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `query_sql` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `report_params` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '报表中心' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES (1, '每日订单统计报表', 1, '按日期统计订单量和GMV', 'select * from daily_statistics', NULL, 1, 'admin', '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '描述',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_role_code`(`role_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 'ROOT', '拥有系统所有权限', 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `role` VALUES (2, '运营专员', 'OPERATOR', '仅运营业务权限', 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_role_perm`(`role_id` ASC, `permission_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限关联' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1, 1, '2026-05-05 11:17:30');
INSERT INTO `role_permission` VALUES (2, 1, 2, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '昵称',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像',
  `gender` tinyint NULL DEFAULT 0 COMMENT '0未知 1男 2女',
  `age` int NULL DEFAULT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '城市',
  `register_channel` tinyint NULL DEFAULT 1 COMMENT '1APP 2支付宝 3微信',
  `register_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login_time` datetime NULL DEFAULT NULL,
  `last_login_ip` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '0禁用 1正常',
  `total_order_count` int NOT NULL DEFAULT 0,
  `total_spend_amount` decimal(12, 2) NOT NULL DEFAULT 0.00,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_phone`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '13800001111', '乘客小张', '', 1, 26, '北京市', 1, '2026-05-05 11:17:30', '2026-05-05 11:17:30', '127.0.0.1', 1, 6, 156.50, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `user` VALUES (2, '13800002222', '乘客小李', '', 2, 24, '上海市', 3, '2026-05-05 11:17:30', '2026-05-05 11:17:30', '127.0.0.1', 1, 3, 78.00, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `user` VALUES (3, '13822220001', '赵小明', '', 1, 22, '北京市', 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35', '10.0.0.1', 1, 8, 218.00, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `user` VALUES (4, '13822220002', '钱小红', '', 2, 25, '北京市', 3, '2026-05-06 02:07:35', '2026-05-06 02:07:35', '10.0.0.2', 1, 12, 360.00, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `user` VALUES (5, '13822220003', '孙小亮', '', 1, 27, '上海市', 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35', '10.0.0.3', 1, 5, 145.50, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `user` VALUES (6, '13822220004', '周小琳', '', 2, 23, '上海市', 2, '2026-05-06 02:07:35', '2026-05-06 02:07:35', '10.0.0.4', 1, 9, 273.00, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `user` VALUES (7, '13822220005', '吴小辉', '', 1, 30, '广州市', 1, '2026-05-06 02:07:35', '2026-05-06 02:07:35', '10.0.0.5', 1, 18, 549.00, '2026-05-06 02:07:35', '2026-05-06 02:07:35');
INSERT INTO `user` VALUES (8, '13820001111', '陈明', '', 1, 24, '北京市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.1', 1, 12, 320.50, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (9, '13820002222', '刘芳', '', 2, 26, '北京市', 3, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.2', 1, 18, 486.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (10, '13820003333', '张伟', '', 1, 29, '北京市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.3', 1, 8, 212.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (11, '13820004444', '李丽', '', 2, 23, '上海市', 2, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.4', 1, 22, 624.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (12, '13820005555', '王强', '', 1, 31, '上海市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.5', 1, 14, 389.50, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (13, '13820006666', '赵雪', '', 2, 25, '上海市', 3, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.6', 1, 9, 253.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (14, '13820007777', '黄超', '', 1, 27, '广州市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.7', 1, 16, 432.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (15, '13820008888', '周敏', '', 2, 22, '广州市', 2, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.8', 1, 5, 136.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (16, '13820009999', '吴浩', '', 1, 33, '广州市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.9', 1, 25, 695.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (17, '13820010001', '郑琪', '', 2, 28, '深圳市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.10', 1, 11, 301.50, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (18, '13820010002', '马俊', '', 1, 30, '深圳市', 3, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.11', 1, 19, 527.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (19, '13820010003', '林燕', '', 2, 24, '深圳市', 2, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.12', 1, 7, 184.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (20, '13820010004', '韩磊', '', 1, 35, '杭州市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.13', 1, 13, 362.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (21, '13820010005', '冯婷', '', 2, 26, '杭州市', 3, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.14', 1, 10, 279.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user` VALUES (22, '13820010006', '孟祥', '', 1, 28, '杭州市', 1, '2026-05-06 02:10:21', '2026-05-06 02:10:21', '10.0.0.15', 1, 17, 471.00, '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for user_behavior
-- ----------------------------
DROP TABLE IF EXISTS `user_behavior`;
CREATE TABLE `user_behavior`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `behavior_type` tinyint NOT NULL,
  `behavior_desc` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `page_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `device_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `ip_address` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户行为' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_behavior
-- ----------------------------
INSERT INTO `user_behavior` VALUES (1, 1, 2, '进入下单页面', '/order/create', 'iPhone 15', '127.0.0.1', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon`;
CREATE TABLE `user_coupon`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `coupon_id` bigint NOT NULL,
  `coupon_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `coupon_type` tinyint NOT NULL,
  `amount` decimal(10, 2) NOT NULL,
  `min_consume` decimal(10, 2) NOT NULL,
  `valid_start_time` datetime NOT NULL,
  `valid_end_time` datetime NOT NULL,
  `use_status` tinyint NOT NULL DEFAULT 0,
  `order_id` bigint NULL DEFAULT NULL,
  `use_time` datetime NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户优惠券' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
INSERT INTO `user_coupon` VALUES (1, 1, 1, '10元无门槛打车券', 3, 10.00, 0.00, '2026-05-05 11:17:30', '2026-05-12 11:17:30', 0, NULL, NULL, '2026-05-05 11:17:30', '2026-05-05 11:17:30');
INSERT INTO `user_coupon` VALUES (2, 2, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (3, 2, 3, '满20减5券', 1, 5.00, 20.00, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (4, 3, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (5, 3, 4, '满30减8券', 1, 8.00, 30.00, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (6, 4, 2, '8元无门槛券', 3, 8.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (7, 4, 6, '周末8折券', 2, 0.80, 0.00, '2026-05-06 02:10:21', '2026-05-11 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (8, 5, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (9, 5, 5, '满50减12券', 1, 12.00, 50.00, '2026-05-06 02:10:21', '2026-05-26 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (10, 6, 2, '8元无门槛券', 3, 8.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (11, 6, 3, '满20减5券', 1, 5.00, 20.00, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (12, 7, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (13, 7, 7, '夜间出行立减6券', 3, 6.00, 0.00, '2026-05-06 02:10:21', '2026-05-16 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (14, 8, 2, '8元无门槛券', 3, 8.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (15, 8, 4, '满30减8券', 1, 8.00, 30.00, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (16, 9, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (17, 9, 6, '周末8折券', 2, 0.80, 0.00, '2026-05-06 02:10:21', '2026-05-11 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (18, 10, 2, '8元无门槛券', 3, 8.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (19, 10, 5, '满50减12券', 1, 12.00, 50.00, '2026-05-06 02:10:21', '2026-05-26 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (20, 11, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (21, 11, 3, '满20减5券', 1, 5.00, 20.00, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (22, 12, 2, '8元无门槛券', 3, 8.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (23, 12, 7, '夜间出行立减6券', 3, 6.00, 0.00, '2026-05-06 02:10:21', '2026-05-16 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (24, 13, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (25, 13, 4, '满30减8券', 1, 8.00, 30.00, '2026-05-06 02:10:21', '2026-05-21 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (26, 14, 2, '8元无门槛券', 3, 8.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (27, 14, 6, '周末8折券', 2, 0.80, 0.00, '2026-05-06 02:10:21', '2026-05-11 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (28, 15, 1, '5元无门槛券', 3, 5.00, 0.00, '2026-05-06 02:10:21', '2026-05-13 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (29, 15, 5, '满50减12券', 1, 12.00, 50.00, '2026-05-06 02:10:21', '2026-05-26 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (30, 2, 8, '新用户10元券', 3, 10.00, 0.00, '2026-05-06 02:10:21', '2026-06-05 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');
INSERT INTO `user_coupon` VALUES (31, 3, 8, '新用户10元券', 3, 10.00, 0.00, '2026-05-06 02:10:21', '2026-06-05 02:10:21', 0, NULL, NULL, '2026-05-06 02:10:21', '2026-05-06 02:10:21');

-- ----------------------------
-- Table structure for user_portrait
-- ----------------------------
DROP TABLE IF EXISTS `user_portrait`;
CREATE TABLE `user_portrait`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `portrait_tag` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `portrait_value` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `consume_level` tinyint NULL DEFAULT 1,
  `prefer_car_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `order_frequency` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `active_degree` tinyint NULL DEFAULT 1,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户画像' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_portrait
-- ----------------------------
INSERT INTO `user_portrait` VALUES (1, 1, '高频出行', '工作日通勤', 2, '经济型', '每周4-5次', 3, '2026-05-05 11:17:30');
INSERT INTO `user_portrait` VALUES (2, 2, '低频偶尔出行', '周末打车', 1, '舒适型', '每月2-3次', 2, '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for user_segment
-- ----------------------------
DROP TABLE IF EXISTS `user_segment`;
CREATE TABLE `user_segment`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `segment_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `segment_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `condition_config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_count` int NOT NULL DEFAULT 0,
  `status` tinyint NOT NULL DEFAULT 1,
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_segment_code`(`segment_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户分群' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_segment
-- ----------------------------
INSERT INTO `user_segment` VALUES (1, '高频通勤用户', 'HIGH_FREQ', '每月下单大于10次', '{\"orderCount\":10}', 1256, 1, 'admin', '2026-05-05 11:17:30', '2026-05-05 11:17:30');

-- ----------------------------
-- Table structure for user_segment_relation
-- ----------------------------
DROP TABLE IF EXISTS `user_segment_relation`;
CREATE TABLE `user_segment_relation`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `segment_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_segment_user`(`segment_id` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户分群关联' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_segment_relation
-- ----------------------------
INSERT INTO `user_segment_relation` VALUES (1, 1, 1, '2026-05-05 11:17:30');

SET FOREIGN_KEY_CHECKS = 1;
