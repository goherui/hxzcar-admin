/*
 Navicat Premium Dump SQL

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80408 (8.4.8)
 Source Host           : 115.190.54.31:3306
 Source Schema         : hxzcar-admin

 Target Server Type    : MySQL
 Target Server Version : 80408 (8.4.8)
 File Encoding         : 65001

 Date: 08/05/2026 14:37:30
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
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '异常订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of abnormal_order
-- ----------------------------
INSERT INTO `abnormal_order` VALUES (1, 21, 'DD20260508102859ee88a61f', 3, '支付失败', 2, 1, '', '2026-05-05 18:25:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (2, 27, 'DD20260508102859a5f7e3ed', 1, '司机定位异常', 0, NULL, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (3, 31, 'DD2026050810285962dbc0e7', 3, '司机定位异常', 0, 16, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (4, 37, 'DD2026050810285916cae362', 3, '用户投诉', 0, 2, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (5, 41, 'DD202605081028591ce71b9d', 2, '订单超时未接单', 1, 14, '已重新派单', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (6, 59, 'DD202605081028596bdf95db', 1, '支付失败', 2, 6, '已退款', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (7, 89, 'DD20260508102859bc199c06', 2, '支付失败', 1, 8, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (8, 105, 'DD20260508102859e7589452', 3, '订单超时未接单', 2, 16, '已联系司机处理', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (9, 123, 'DD20260508102859fcfc3d58', 2, '用户投诉', 2, 3, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (10, 151, 'DD20260508102859bc16f0fd', 2, '司机定位异常', 0, 15, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (11, 168, 'DD202605081028596cc507a8', 3, '订单超时未接单', 2, 1, '', '2026-05-06 05:27:33', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (12, 176, 'DD20260508102859e88fada0', 2, '行程异常终止', 0, NULL, '已联系司机处理', '2026-05-06 23:57:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (13, 182, 'DD2026050810285992ffb707', 1, '用户投诉', 1, 11, '已联系司机处理', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (14, 184, 'DD20260508102859e0f7ea73', 2, '订单超时未接单', 0, 14, '', '2026-05-05 19:20:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (15, 189, 'DD202605081028590342460e', 1, '司机定位异常', 1, 13, '已重新派单', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (16, 200, 'DD20260508102859aac9a4e5', 1, '司机定位异常', 0, 3, '已联系司机处理', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (17, 221, 'DD20260508102859a8bd5c42', 2, '用户投诉', 2, 9, '', '2026-05-08 02:05:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (18, 259, 'DD20260508102859255ed717', 2, '司机定位异常', 2, 15, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (19, 262, 'DD20260508102859b53c3cfb', 3, '司机定位异常', 0, 4, '', '2026-05-07 02:41:53', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (20, 266, 'DD20260508102859b6bdc5b3', 3, '用户投诉', 1, NULL, '已联系司机处理', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (21, 272, 'DD20260508102859c03c81c8', 2, '司机定位异常', 1, 12, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (22, 281, 'DD2026050810285942147778', 1, '支付失败', 2, 17, '已联系司机处理', '2026-05-08 02:17:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (23, 292, 'DD20260508102859e1230bcb', 1, '司机定位异常', 0, NULL, '', '2026-05-07 04:51:11', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (24, 295, 'DD2026050810285956d04157', 1, '用户投诉', 2, 2, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (25, 312, 'DD202605081028596379bf75', 3, '支付失败', 1, NULL, '已联系司机处理', '2026-05-05 21:37:19', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (26, 328, 'DD2026050810285990c1e85a', 2, '用户投诉', 0, 20, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (27, 330, 'DD202605081028598a369abf', 1, '支付失败', 1, 4, '', '2026-05-05 18:52:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (28, 332, 'DD2026050810285993a3d418', 3, '支付失败', 1, 10, '已退款', '2026-05-07 15:21:41', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (29, 333, 'DD202605081028590ef76991', 2, '行程异常终止', 2, NULL, '已联系司机处理', '2026-05-09 02:46:02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (30, 340, 'DD20260508102859ed51ceeb', 2, '订单超时未接单', 1, 3, '已重新派单', '2026-05-07 01:19:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (31, 343, 'DD20260508102859448a148e', 3, '行程异常终止', 1, 13, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (32, 350, 'DD2026050810285919a0dfb1', 3, '用户投诉', 1, 5, '已退款', '2026-05-07 07:02:09', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (33, 362, 'DD2026050810285992cc1b39', 2, '司机定位异常', 2, 12, '已重新派单', '2026-05-05 12:39:03', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (34, 371, 'DD20260508102859de92cba2', 3, '行程异常终止', 2, 8, '', '2026-05-07 08:03:39', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (35, 373, 'DD20260508102859a96f33a9', 2, '支付失败', 0, 15, '已重新派单', '2026-05-05 20:54:06', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (36, 403, 'DD202605081028597c11adb9', 2, '支付失败', 2, 3, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (37, 420, 'DD20260508102859bdec0d93', 3, '订单超时未接单', 1, 15, '已重新派单', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (38, 423, 'DD20260508102859f95fa3b7', 3, '订单超时未接单', 0, 16, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (39, 435, 'DD2026050810285972f26d04', 2, '支付失败', 0, 20, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (40, 470, 'DD20260508102859156e516e', 3, '司机定位异常', 0, 6, '已联系用户处理', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (41, 480, 'DD202605081028595053f792', 3, '用户投诉', 2, 8, '', '2026-05-08 12:58:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (42, 485, 'DD20260508102859b7771070', 3, '行程异常终止', 0, 11, '', '2026-05-06 21:48:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (43, 522, 'DD2026050810285962bb0327', 3, '支付失败', 1, 11, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (44, 526, 'DD202605081028591c11ab40', 2, '用户投诉', 2, NULL, '已联系用户处理', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (45, 530, 'DD202605081028598871cbcf', 2, '订单超时未接单', 2, NULL, '', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (46, 547, 'DD20260508102859ab3dadc8', 3, '用户投诉', 2, NULL, '', '2026-05-07 06:46:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (47, 548, 'DD2026050810285924a0c1ca', 1, '用户投诉', 0, NULL, '已联系司机处理', '2026-05-07 15:34:49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (48, 583, 'DD2026050810285942258dba', 2, '订单超时未接单', 2, 18, '', '2026-05-08 03:11:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (49, 587, 'DD20260508102859553dee3e', 2, '支付失败', 0, 4, '已联系用户处理', '2026-05-08 11:11:45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `abnormal_order` VALUES (50, 603, 'DD20260508102859927fb9d1', 2, '司机定位异常', 2, 16, '', '2026-05-05 16:02:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '活动表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '拉新活动', 4, '新用户注册送红包', '2026-05-08 10:28:59', '2026-06-06 10:28:59', 3, '{\"minOrder\": 1}', '{\"amount\": 10}', 877, 251, 1, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (2, '转化活动', 2, '邀请好友得奖励', '2026-05-08 10:28:59', '2026-05-17 10:28:59', 2, '{\"minOrder\": 1}', '{\"amount\": 10}', 709, 89, 1, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (3, '促活活动', 1, '邀请好友得奖励', '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, '{\"minOrder\": 1}', '{\"amount\": 10}', 517, 404, 1, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (4, '留存活动', 2, '新用户注册送红包', '2026-05-08 10:28:59', '2026-05-20 10:28:59', 3, '{\"minOrder\": 1}', '{\"amount\": 10}', 236, 233, 0, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (5, '拉新活动', 2, '新用户注册送红包', '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, '{\"minOrder\": 1}', '{\"amount\": 10}', 207, 59, 0, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (6, '转化活动', 2, '周末打车优惠', '2026-05-08 10:28:59', '2026-05-26 10:28:59', 1, '{\"minOrder\": 1}', '{\"amount\": 10}', 980, 299, 1, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (7, '留存活动', 4, '会员专属福利', '2026-05-08 10:28:59', '2026-06-01 10:28:59', 1, '{\"minOrder\": 1}', '{\"amount\": 10}', 841, 402, 1, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (8, '拉新活动', 3, '邀请好友得奖励', '2026-05-08 10:28:59', '2026-06-06 10:28:59', 2, '{\"minOrder\": 1}', '{\"amount\": 10}', 162, 362, 1, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (9, '促活活动', 2, '会员专属福利', '2026-05-08 10:28:59', '2026-05-30 10:28:59', 2, '{\"minOrder\": 1}', '{\"amount\": 10}', 882, 473, 0, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `activity` VALUES (10, '促活活动', 2, '邀请好友得奖励', '2026-05-08 10:28:59', '2026-05-23 10:28:59', 3, '{\"minOrder\": 1}', '{\"amount\": 10}', 777, 454, 0, 'admin', '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '蛆延龙管理员', '18215319884', 'admin0@example.com', 'https://example.com/admin/1.png', 1, '2025-09-22 00:26:30', '151.194.235.141', '2026-05-08 10:29:46', '2026-05-08 11:05:41');
INSERT INTO `admin` VALUES (2, 'superadmin', 'e10adc3949ba59abbe56e057f20f883e', '刘军管理员', '18242439592', 'admin1@example.com', 'https://example.com/admin/2.png', 1, '2025-12-08 07:46:03', '39.109.111.168', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (3, 'manager', 'e10adc3949ba59abbe56e057f20f883e', '朱敏管理员', '18634341664', 'admin2@example.com', 'https://example.com/admin/3.png', 0, '2024-12-27 05:51:24', '232.68.235.56', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (4, 'operator', 'e10adc3949ba59abbe56e057f20f883e', '张涛管理员', '15216902240', 'admin3@example.com', 'https://example.com/admin/4.png', 0, '2026-04-10 05:29:47', '83.130.191.193', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (5, 'finance', 'e10adc3949ba59abbe56e057f20f883e', '马艳管理员', '15269782271', 'admin4@example.com', 'https://example.com/admin/5.png', 0, '2025-10-22 22:17:57', '70.248.152.78', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (6, 'audit', 'e10adc3949ba59abbe56e057f20f883e', '黄丽管理员', '18811748109', 'admin5@example.com', 'https://example.com/admin/6.png', 1, '2025-05-08 21:00:50', '234.31.71.145', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (7, 'admin6', 'e10adc3949ba59abbe56e057f20f883e', '陈磊管理员', '15890363957', 'admin6@example.com', 'https://example.com/admin/7.png', 0, '2024-08-31 05:51:51', '72.210.95.204', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (8, 'superadmin7', 'e10adc3949ba59abbe56e057f20f883e', '陈艳管理员', '13714431567', 'admin7@example.com', 'https://example.com/admin/8.png', 1, '2024-11-10 14:27:25', '143.96.116.165', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (9, 'manager8', 'e10adc3949ba59abbe56e057f20f883e', '刘磊管理员', '13996185826', 'admin8@example.com', 'https://example.com/admin/9.png', 1, '2024-11-10 11:59:30', '18.70.166.79', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (10, 'operator9', 'e10adc3949ba59abbe56e057f20f883e', '李磊管理员', '18600855286', 'admin9@example.com', 'https://example.com/admin/10.png', 0, '2024-10-08 01:11:17', '173.130.15.251', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (11, 'finance10', 'e10adc3949ba59abbe56e057f20f883e', '杨杰管理员', '18238708449', 'admin10@example.com', 'https://example.com/admin/11.png', 0, '2024-05-08 14:46:11', '76.125.37.23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (12, 'audit11', 'e10adc3949ba59abbe56e057f20f883e', '杨平管理员', '13986972714', 'admin11@example.com', 'https://example.com/admin/12.png', 1, '2024-12-02 20:35:46', '83.1.11.190', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (13, 'admin12', 'e10adc3949ba59abbe56e057f20f883e', '杨刚管理员', '13736424483', 'admin12@example.com', 'https://example.com/admin/13.png', 1, '2024-08-28 12:38:56', '11.196.148.225', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (14, 'superadmin13', 'e10adc3949ba59abbe56e057f20f883e', '马平管理员', '18816290328', 'admin13@example.com', 'https://example.com/admin/14.png', 0, '2025-06-24 23:51:35', '15.60.209.27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (15, 'manager14', 'e10adc3949ba59abbe56e057f20f883e', '王敏管理员', '18201362081', 'admin14@example.com', 'https://example.com/admin/15.png', 0, '2025-04-02 20:19:15', '124.187.217.236', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (16, 'operator15', 'e10adc3949ba59abbe56e057f20f883e', '孙刚管理员', '13789905905', 'admin15@example.com', 'https://example.com/admin/16.png', 0, '2025-09-24 18:02:46', '113.176.182.33', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (17, 'finance16', 'e10adc3949ba59abbe56e057f20f883e', '马涛管理员', '13816612579', 'admin16@example.com', 'https://example.com/admin/17.png', 0, '2025-10-27 10:35:15', '20.66.106.162', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (18, 'audit17', 'e10adc3949ba59abbe56e057f20f883e', '胡强管理员', '13873496786', 'admin17@example.com', 'https://example.com/admin/18.png', 1, '2024-03-29 05:35:48', '33.155.250.195', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (19, 'admin18', 'e10adc3949ba59abbe56e057f20f883e', '黄军管理员', '15929668458', 'admin18@example.com', 'https://example.com/admin/19.png', 0, '2026-03-04 05:11:45', '202.159.189.174', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `admin` VALUES (20, 'superadmin19', 'e10adc3949ba59abbe56e057f20f883e', '黄敏管理员', '13997351033', 'admin19@example.com', 'https://example.com/admin/20.png', 0, '2026-03-26 23:52:45', '31.81.151.241', '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '管理员角色关联' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, 1, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (2, 1, 1, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (3, 1, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (4, 2, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (5, 3, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (6, 3, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (7, 4, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (8, 5, 1, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (9, 5, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (10, 6, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (11, 7, 5, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (12, 7, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (13, 7, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (14, 8, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (15, 8, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (16, 9, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (17, 9, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (18, 9, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (19, 10, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (20, 10, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (21, 10, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (22, 11, 1, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (23, 12, 5, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (24, 12, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (25, 13, 5, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (26, 13, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (27, 13, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (28, 14, 1, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (29, 14, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (30, 14, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (31, 15, 5, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (32, 16, 5, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (33, 16, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (34, 17, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (35, 18, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (36, 18, 1, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (37, 18, 4, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (38, 19, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (39, 20, 2, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (40, 20, 3, '2026-05-08 10:29:46');
INSERT INTO `admin_role` VALUES (41, 20, 4, '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '车辆表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 1, '冀H97582', '商务型', '大众', '银色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (2, 8, '京F98188', '商务型', '比亚迪', '灰色', 0, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (3, 11, '川W62414', '商务型', '本田', '蓝色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (4, 23, '京P88409', '舒适型', '大众', '蓝色', 0, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (5, 25, '川P30187', '商务型', '奔驰', '灰色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (6, 30, '浙C10311', '豪华型', '特斯拉', '蓝色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (7, 32, '浙T23362', '舒适型', '宝马', '蓝色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (8, 36, '沪S44447', '豪华型', '宝马', '灰色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (9, 37, '鲁C66780', '舒适型', '大众', '蓝色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (10, 43, '云V88122', '经济型', '丰田', '白色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (11, 45, '京K87665', '豪华型', '特斯拉', '红色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (12, 49, '川P82422', '豪华型', '丰田', '白色', 0, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (13, 50, '冀P97272', '经济型', '丰田', '白色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (14, 53, '川U24002', '豪华型', '奔驰', '灰色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (15, 56, '粤X70763', '豪华型', '比亚迪', '灰色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (16, 62, '鲁D32238', '舒适型', '宝马', '黑色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (17, 64, '冀L84973', '经济型', '丰田', '银色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (18, 72, '粤G52137', '舒适型', '宝马', '灰色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (19, 73, '川T68478', '商务型', '特斯拉', '红色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (20, 93, '苏U45850', '经济型', '比亚迪', '红色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (21, 94, '京V67843', '豪华型', '大众', '白色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (22, 95, '沪V45720', '经济型', '特斯拉', '红色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (23, 98, '沪E52580', '豪华型', '大众', '灰色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (24, 99, '京F77971', '商务型', '丰田', '银色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (25, 100, '苏P38029', '商务型', '丰田', '银色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (26, 104, '冀D34219', '商务型', '奥迪', '红色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (27, 106, '冀Q83070', '经济型', '奥迪', '红色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (28, 108, '粤Z76548', '豪华型', '奥迪', '红色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (29, 110, '云Q27369', '豪华型', '比亚迪', '银色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (30, 111, '冀N39733', '商务型', '大众', '蓝色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (31, 116, '粤M73062', '舒适型', '特斯拉', '蓝色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (32, 122, '粤K81432', '舒适型', '本田', '灰色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (33, 125, '云M87399', '豪华型', '特斯拉', '蓝色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (34, 129, '苏G22064', '豪华型', '本田', '蓝色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (35, 135, '京S40377', '舒适型', '奥迪', '蓝色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (36, 137, '冀J49197', '商务型', '本田', '蓝色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (37, 140, '粤Y64429', '经济型', '特斯拉', '灰色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (38, 141, '浙B98506', '豪华型', '宝马', '蓝色', 0, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (39, 145, '粤D14257', '商务型', '丰田', '白色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (40, 150, '沪M29160', '经济型', '特斯拉', '灰色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (41, 155, '京L35859', '豪华型', '特斯拉', '银色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (42, 157, '苏J01010', '经济型', '奔驰', '白色', 0, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (43, 159, '冀A44355', '商务型', '丰田', '黑色', 1, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (44, 165, '云H91236', '豪华型', '特斯拉', '银色', 0, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (45, 171, '鲁Z94081', '商务型', '奥迪', '蓝色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (46, 177, '豫B18290', '豪华型', '比亚迪', '蓝色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (47, 180, '京E80914', '舒适型', '宝马', '红色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (48, 183, '云C49593', '舒适型', '丰田', '红色', 1, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (49, 185, '京J54741', '舒适型', '本田', '银色', 0, 2, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (50, 193, '京S99777', '舒适型', '大众', '蓝色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (51, 194, '云G25369', '商务型', '奔驰', '白色', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `car` VALUES (52, 200, '冀J64841', '商务型', '丰田', '银色', 0, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '优惠券表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, '限时优惠券', 2, 38.44, 157.66, 26, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 492, 393, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (2, '限时优惠券', 2, 77.47, 179.87, 28, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 879, 405, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (3, '满减优惠券', 2, 13.15, 48.81, 29, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 906, 214, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (4, '专属优惠券', 2, 12.61, 27.18, 12, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 900, 206, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (5, '限时优惠券', 3, 52.12, 125.14, 21, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 159, 367, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (6, '折扣优惠券', 3, 66.59, 110.53, 17, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 368, 391, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (7, '折扣优惠券', 2, 11.90, 32.93, 29, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 848, 221, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (8, '专属优惠券', 2, 35.35, 189.99, 10, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 854, 83, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (9, '专属优惠券', 3, 58.21, 129.05, 10, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 629, 43, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (10, '折扣优惠券', 1, 16.63, 69.41, 26, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 883, 486, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (11, '满减优惠券', 3, 86.67, 193.32, 16, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 644, 487, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (12, '限时优惠券', 1, 46.10, 167.56, 11, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 461, 103, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (13, '折扣优惠券', 3, 32.40, 87.03, 10, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 810, 357, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (14, '专属优惠券', 2, 42.97, 76.80, 26, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 523, 143, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (15, '新人优惠券', 2, 74.34, 191.83, 22, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 716, 117, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (16, '限时优惠券', 3, 22.28, 191.25, 28, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 423, 32, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (17, '折扣优惠券', 2, 75.84, 123.10, 30, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 403, 490, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (18, '专属优惠券', 2, 20.34, 172.52, 28, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 898, 70, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (19, '专属优惠券', 3, 29.72, 124.02, 15, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 408, 457, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `coupon` VALUES (20, '限时优惠券', 2, 15.47, 142.22, 7, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 430, 117, 0, '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日统计' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of daily_statistics
-- ----------------------------
INSERT INTO `daily_statistics` VALUES (1, '2026-04-08', '北京', 2444, 2064, 949, 446, 27748.56, 56.23, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (2, '2026-04-08', '上海', 512, 477, 1933, 154, 84638.16, 34.38, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (3, '2026-04-08', '广州', 1889, 1339, 321, 381, 65132.03, 48.75, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (4, '2026-04-08', '深圳', 2082, 1546, 432, 173, 63217.78, 32.14, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (5, '2026-04-08', '杭州', 1525, 1154, 1046, 353, 61969.42, 58.24, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (6, '2026-04-09', '北京', 2016, 1894, 606, 280, 31648.07, 44.43, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (7, '2026-04-09', '上海', 2025, 1603, 759, 289, 96972.21, 34.15, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (8, '2026-04-09', '广州', 1906, 1714, 1670, 114, 96172.45, 40.42, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (9, '2026-04-09', '深圳', 1711, 1540, 1509, 75, 74151.00, 48.10, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (10, '2026-04-09', '杭州', 1596, 1259, 1295, 80, 63628.41, 21.72, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (11, '2026-04-10', '北京', 802, 709, 1838, 327, 15146.14, 24.43, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (12, '2026-04-10', '上海', 2930, 2231, 1527, 98, 40438.69, 26.51, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (13, '2026-04-10', '广州', 1582, 1448, 953, 196, 76028.05, 44.34, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (14, '2026-04-10', '深圳', 2947, 2444, 1447, 433, 69439.28, 35.32, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (15, '2026-04-10', '杭州', 2438, 1717, 507, 406, 85908.32, 49.90, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (16, '2026-04-11', '北京', 1627, 1350, 1168, 87, 90658.11, 55.30, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (17, '2026-04-11', '上海', 2409, 1908, 955, 319, 29590.21, 36.36, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (18, '2026-04-11', '广州', 898, 808, 1723, 117, 85128.46, 48.48, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (19, '2026-04-11', '深圳', 2517, 2366, 932, 120, 44439.72, 38.33, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (20, '2026-04-11', '杭州', 973, 880, 1881, 426, 16925.49, 48.21, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (21, '2026-04-12', '北京', 1622, 1151, 257, 52, 43160.91, 41.86, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (22, '2026-04-12', '上海', 2075, 1617, 1024, 126, 15778.58, 35.51, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (23, '2026-04-12', '广州', 548, 509, 415, 419, 60860.01, 57.63, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (24, '2026-04-12', '深圳', 2816, 1993, 325, 488, 31646.05, 37.86, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (25, '2026-04-12', '杭州', 1042, 860, 1943, 223, 50341.58, 47.14, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (26, '2026-04-13', '北京', 1800, 1595, 1549, 320, 95806.12, 57.29, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (27, '2026-04-13', '上海', 749, 683, 483, 288, 23981.22, 54.76, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (28, '2026-04-13', '广州', 1087, 857, 1148, 481, 70526.86, 51.57, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (29, '2026-04-13', '深圳', 1531, 1090, 1447, 205, 59592.82, 36.88, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (30, '2026-04-13', '杭州', 2672, 2279, 661, 95, 85502.83, 51.56, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (31, '2026-04-14', '北京', 1844, 1596, 699, 64, 37036.27, 45.81, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (32, '2026-04-14', '上海', 2343, 1989, 1486, 163, 65270.55, 37.63, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (33, '2026-04-14', '广州', 1540, 1100, 1716, 225, 93065.73, 58.60, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (34, '2026-04-14', '深圳', 2695, 2389, 213, 464, 94957.77, 44.82, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (35, '2026-04-14', '杭州', 2987, 2162, 389, 166, 15247.93, 59.51, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (36, '2026-04-15', '北京', 1357, 1220, 1414, 260, 31363.80, 48.08, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (37, '2026-04-15', '上海', 768, 722, 1559, 167, 58308.17, 23.12, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (38, '2026-04-15', '广州', 2069, 1685, 267, 317, 84028.03, 39.17, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (39, '2026-04-15', '深圳', 2962, 2758, 1413, 458, 66496.25, 26.58, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (40, '2026-04-15', '杭州', 1543, 1323, 872, 293, 73929.35, 26.93, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (41, '2026-04-16', '北京', 2871, 2653, 1689, 169, 14543.55, 32.65, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (42, '2026-04-16', '上海', 1502, 1206, 1848, 91, 26015.74, 39.67, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (43, '2026-04-16', '广州', 1762, 1358, 672, 323, 91750.31, 24.15, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (44, '2026-04-16', '深圳', 1598, 1500, 1674, 233, 21053.21, 56.66, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (45, '2026-04-16', '杭州', 823, 642, 358, 194, 22226.72, 22.13, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (46, '2026-04-17', '北京', 1842, 1590, 731, 362, 67685.69, 22.09, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (47, '2026-04-17', '上海', 1664, 1466, 1534, 199, 20543.46, 58.07, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (48, '2026-04-17', '广州', 2521, 2232, 449, 87, 96610.24, 56.92, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (49, '2026-04-17', '深圳', 2584, 2113, 1812, 188, 25060.51, 27.22, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (50, '2026-04-17', '杭州', 1958, 1791, 924, 89, 86928.60, 53.78, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (51, '2026-04-18', '北京', 2158, 1588, 950, 170, 35421.13, 35.46, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (52, '2026-04-18', '上海', 648, 552, 1282, 84, 27038.66, 51.65, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (53, '2026-04-18', '广州', 2436, 1779, 1950, 144, 26338.55, 26.76, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (54, '2026-04-18', '深圳', 1857, 1633, 860, 380, 67733.32, 49.35, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (55, '2026-04-18', '杭州', 1467, 1178, 1104, 330, 73976.65, 39.64, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (56, '2026-04-19', '北京', 2907, 2311, 853, 72, 88585.07, 33.03, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (57, '2026-04-19', '上海', 898, 740, 561, 248, 28053.79, 27.34, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (58, '2026-04-19', '广州', 1638, 1407, 871, 322, 70898.27, 51.50, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (59, '2026-04-19', '深圳', 2208, 1894, 1466, 319, 42058.94, 22.64, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (60, '2026-04-19', '杭州', 567, 486, 1825, 91, 32312.89, 31.45, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (61, '2026-04-20', '北京', 845, 690, 1857, 71, 54225.19, 49.24, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (62, '2026-04-20', '上海', 1134, 937, 1805, 493, 67511.05, 27.12, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (63, '2026-04-20', '广州', 1357, 1128, 227, 108, 85302.60, 24.32, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (64, '2026-04-20', '深圳', 2801, 2392, 1940, 181, 71675.52, 36.40, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (65, '2026-04-20', '杭州', 2696, 2442, 1685, 211, 78119.97, 38.22, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (66, '2026-04-21', '北京', 2179, 1637, 210, 165, 94882.41, 38.65, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (67, '2026-04-21', '上海', 2148, 1682, 795, 341, 31780.23, 53.20, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (68, '2026-04-21', '广州', 2236, 1659, 574, 127, 46863.24, 49.78, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (69, '2026-04-21', '深圳', 2317, 2056, 1895, 473, 44954.75, 40.10, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (70, '2026-04-21', '杭州', 704, 612, 1939, 144, 69808.65, 24.25, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (71, '2026-04-22', '北京', 1126, 854, 1575, 82, 68538.41, 44.45, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (72, '2026-04-22', '上海', 593, 466, 1355, 454, 62324.27, 26.92, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (73, '2026-04-22', '广州', 1707, 1222, 1096, 459, 65965.56, 25.17, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (74, '2026-04-22', '深圳', 610, 515, 518, 114, 75023.34, 45.21, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (75, '2026-04-22', '杭州', 1461, 1063, 1256, 475, 61543.52, 55.72, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (76, '2026-04-23', '北京', 2050, 1645, 1507, 308, 21501.51, 27.86, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (77, '2026-04-23', '上海', 2729, 2000, 1276, 216, 71500.08, 26.54, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (78, '2026-04-23', '广州', 2911, 2542, 219, 174, 89384.94, 57.37, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (79, '2026-04-23', '深圳', 2181, 1671, 1362, 461, 67603.50, 55.30, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (80, '2026-04-23', '杭州', 2377, 1682, 855, 263, 19186.44, 45.47, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (81, '2026-04-24', '北京', 799, 601, 786, 91, 62539.32, 42.04, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (82, '2026-04-24', '上海', 679, 582, 1253, 384, 64269.76, 55.68, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (83, '2026-04-24', '广州', 1592, 1379, 1435, 77, 45766.77, 34.86, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (84, '2026-04-24', '深圳', 2875, 2534, 1008, 69, 60779.23, 28.34, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (85, '2026-04-24', '杭州', 2275, 1788, 498, 471, 76712.42, 29.45, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (86, '2026-04-25', '北京', 1276, 1181, 686, 429, 96131.39, 31.14, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (87, '2026-04-25', '上海', 1976, 1771, 1548, 288, 59707.10, 40.08, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (88, '2026-04-25', '广州', 1164, 1076, 1835, 435, 11452.25, 24.88, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (89, '2026-04-25', '深圳', 1567, 1399, 997, 202, 75864.17, 37.70, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (90, '2026-04-25', '杭州', 2054, 1455, 607, 146, 42989.08, 51.30, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (91, '2026-04-26', '北京', 2692, 2431, 477, 62, 27650.81, 23.65, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (92, '2026-04-26', '上海', 872, 731, 494, 440, 53183.00, 25.73, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (93, '2026-04-26', '广州', 2873, 2334, 1659, 161, 72669.54, 26.28, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (94, '2026-04-26', '深圳', 1812, 1345, 320, 124, 51195.92, 37.00, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (95, '2026-04-26', '杭州', 1891, 1375, 572, 220, 75106.34, 53.29, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (96, '2026-04-27', '北京', 1500, 1155, 1187, 479, 71186.92, 59.12, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (97, '2026-04-27', '上海', 1715, 1346, 1645, 316, 76507.43, 46.40, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (98, '2026-04-27', '广州', 2032, 1660, 422, 72, 28555.05, 38.02, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (99, '2026-04-27', '深圳', 663, 607, 1596, 56, 93723.50, 21.27, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (100, '2026-04-27', '杭州', 944, 824, 209, 305, 55479.66, 48.18, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (101, '2026-04-28', '北京', 533, 481, 1575, 494, 68797.26, 42.29, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (102, '2026-04-28', '上海', 1032, 955, 761, 251, 71737.39, 31.68, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (103, '2026-04-28', '广州', 2286, 2140, 1330, 164, 21820.52, 48.33, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (104, '2026-04-28', '深圳', 1771, 1519, 649, 256, 46550.69, 58.06, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (105, '2026-04-28', '杭州', 2547, 1787, 368, 400, 17911.23, 33.44, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (106, '2026-04-29', '北京', 767, 549, 1476, 494, 94851.16, 52.23, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (107, '2026-04-29', '上海', 1106, 815, 993, 432, 58100.61, 45.77, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (108, '2026-04-29', '广州', 1292, 988, 1640, 309, 42046.16, 52.93, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (109, '2026-04-29', '深圳', 2101, 1786, 344, 384, 93649.29, 39.81, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (110, '2026-04-29', '杭州', 2913, 2533, 699, 289, 23032.52, 29.16, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (111, '2026-04-30', '北京', 1031, 936, 1568, 316, 21357.33, 26.91, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (112, '2026-04-30', '上海', 1442, 1247, 1220, 344, 69081.85, 51.09, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (113, '2026-04-30', '广州', 2586, 2055, 1942, 71, 20958.26, 49.45, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (114, '2026-04-30', '深圳', 600, 457, 1790, 221, 94538.41, 52.61, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (115, '2026-04-30', '杭州', 2165, 1807, 1224, 312, 62497.31, 58.83, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (116, '2026-05-01', '北京', 1900, 1541, 1674, 303, 78720.58, 45.73, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (117, '2026-05-01', '上海', 1738, 1632, 1099, 149, 22901.30, 33.59, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (118, '2026-05-01', '广州', 1545, 1205, 1096, 273, 76470.49, 31.13, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (119, '2026-05-01', '深圳', 2217, 2050, 895, 231, 19133.86, 36.73, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (120, '2026-05-01', '杭州', 982, 778, 1844, 225, 37443.89, 24.79, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (121, '2026-05-02', '北京', 1332, 1043, 1993, 56, 53346.77, 36.80, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (122, '2026-05-02', '上海', 923, 752, 1032, 300, 41712.35, 21.69, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (123, '2026-05-02', '广州', 932, 852, 489, 94, 79565.57, 36.52, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (124, '2026-05-02', '深圳', 1579, 1172, 844, 438, 13359.71, 26.76, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (125, '2026-05-02', '杭州', 1573, 1431, 1319, 277, 41218.16, 23.69, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (126, '2026-05-03', '北京', 2452, 1761, 1900, 224, 72296.98, 51.27, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (127, '2026-05-03', '上海', 2318, 1698, 225, 182, 13433.24, 39.44, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (128, '2026-05-03', '广州', 1464, 1045, 1504, 486, 96161.61, 38.83, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (129, '2026-05-03', '深圳', 562, 469, 1203, 342, 28823.48, 45.54, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (130, '2026-05-03', '杭州', 2977, 2687, 932, 310, 67126.97, 52.64, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (131, '2026-05-04', '北京', 1191, 874, 1665, 412, 81187.52, 59.72, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (132, '2026-05-04', '上海', 1089, 775, 875, 59, 82676.90, 26.02, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (133, '2026-05-04', '广州', 1239, 1077, 1334, 455, 68413.94, 33.38, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (134, '2026-05-04', '深圳', 1411, 1218, 1256, 338, 80558.34, 40.04, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (135, '2026-05-04', '杭州', 679, 570, 200, 414, 19983.87, 40.06, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (136, '2026-05-05', '北京', 2474, 2249, 1968, 365, 17881.92, 24.52, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (137, '2026-05-05', '上海', 1250, 1068, 1319, 69, 40557.43, 35.36, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (138, '2026-05-05', '广州', 1588, 1273, 1335, 104, 57986.47, 42.83, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (139, '2026-05-05', '深圳', 602, 482, 278, 380, 42723.35, 58.21, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (140, '2026-05-05', '杭州', 2914, 2450, 334, 479, 45264.12, 59.45, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (141, '2026-05-06', '北京', 1077, 767, 1262, 242, 75511.41, 54.28, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (142, '2026-05-06', '上海', 501, 388, 1143, 152, 49236.11, 43.61, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (143, '2026-05-06', '广州', 2185, 1836, 1231, 60, 50383.17, 42.71, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (144, '2026-05-06', '深圳', 612, 533, 568, 231, 24793.90, 42.24, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (145, '2026-05-06', '杭州', 2186, 1546, 918, 86, 23226.33, 55.66, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (146, '2026-05-07', '北京', 2614, 2140, 289, 57, 33088.44, 48.45, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (147, '2026-05-07', '上海', 855, 672, 1639, 202, 88768.04, 58.38, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (148, '2026-05-07', '广州', 2601, 2344, 1769, 350, 14779.22, 57.71, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (149, '2026-05-07', '深圳', 985, 820, 1126, 322, 50357.94, 36.56, '2026-05-08 10:29:46');
INSERT INTO `daily_statistics` VALUES (150, '2026-05-07', '杭州', 1054, 897, 1834, 279, 21147.88, 20.05, '2026-05-08 10:29:46');

-- ----------------------------
-- Table structure for dh_config
-- ----------------------------
DROP TABLE IF EXISTS `dh_config`;
CREATE TABLE `dh_config`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置键',
  `config_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '配置值(JSON)',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '说明',
  `updated_at` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_dh_config_config_key`(`config_key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dh_config
-- ----------------------------

-- ----------------------------
-- Table structure for dh_conversation
-- ----------------------------
DROP TABLE IF EXISTS `dh_conversation`;
CREATE TABLE `dh_conversation`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL COMMENT '运营端用户ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会话标题',
  `source` tinyint UNSIGNED NULL DEFAULT 1 COMMENT '来源1=手动2=上下文触发',
  `page_context` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时页面路径',
  `created_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `deleted_at` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_dh_conversation_created_at`(`created_at` ASC) USING BTREE,
  INDEX `idx_dh_conversation_deleted_at`(`deleted_at` ASC) USING BTREE,
  INDEX `idx_dh_conversation_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dh_conversation
-- ----------------------------
INSERT INTO `dh_conversation` VALUES (1, 0, '今天多少单', 1, '', '2026-05-07 20:30:46.759', '2026-05-07 20:30:46.759', NULL);
INSERT INTO `dh_conversation` VALUES (2, 0, '今天司机效益怎么样', 1, '', '2026-05-07 20:31:30.166', '2026-05-07 20:31:30.166', NULL);
INSERT INTO `dh_conversation` VALUES (3, 0, '今天司机效益怎么样', 1, '', '2026-05-07 20:33:21.063', '2026-05-07 20:33:21.063', NULL);

-- ----------------------------
-- Table structure for dh_feedback
-- ----------------------------
DROP TABLE IF EXISTS `dh_feedback`;
CREATE TABLE `dh_feedback`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_id` bigint UNSIGNED NOT NULL COMMENT '关联的助手消息ID',
  `rating` tinyint UNSIGNED NOT NULL COMMENT '评分1=差 2=好',
  `comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '反馈备注',
  `created_at` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_dh_feedback_message_id`(`message_id` ASC) USING BTREE,
  CONSTRAINT `fk_dh_message_feedback` FOREIGN KEY (`message_id`) REFERENCES `dh_message` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dh_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for dh_message
-- ----------------------------
DROP TABLE IF EXISTS `dh_message`;
CREATE TABLE `dh_message`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint UNSIGNED NULL DEFAULT NULL COMMENT '所属会话ID',
  `role` tinyint UNSIGNED NOT NULL COMMENT '角色1=user 2=assistant 3=system',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息内容',
  `intent_json` json NULL COMMENT '意图解析结果',
  `query_sql` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '实际执行的SQL',
  `query_result` json NULL COMMENT '查询原始结果集',
  `tokens_used` bigint UNSIGNED NULL DEFAULT 0 COMMENT '消耗token数',
  `latency_ms` bigint UNSIGNED NULL DEFAULT 0 COMMENT '响应耗时ms',
  `created_at` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `not null`(`conversation_id` ASC) USING BTREE,
  INDEX `idx_dh_message_created_at`(`created_at` ASC) USING BTREE,
  CONSTRAINT `fk_dh_conversation_messages` FOREIGN KEY (`conversation_id`) REFERENCES `dh_conversation` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dh_message
-- ----------------------------
INSERT INTO `dh_message` VALUES (1, 1, 1, '今天多少单', NULL, NULL, NULL, 0, 0, '2026-05-07 20:30:46.893');
INSERT INTO `dh_message` VALUES (2, 1, 2, '```\n{\n  \"total_orders\": 24,\n  \"completed_orders\": 6,\n  \"cancelled_orders\": 0,\n  \"total_gmv\": 282.98,\n  \"avg_fare\": 47.163333,\n  \"completion_rate\": 25,\n  \"cancel_rate\": 0\n}\n```', '{\"reply\": \"\", \"action\": \"count\", \"filters\": null, \"category\": \"order\", \"raw_query\": \"\", \"confidence\": 0.85, \"time_range\": \"today\", \"need_db_query\": true}', NULL, '{\"avg_fare\": 47.163333, \"total_gmv\": 282.98, \"cancel_rate\": 0, \"total_orders\": 24, \"completion_rate\": 25, \"cancelled_orders\": 0, \"completed_orders\": 6}', 0, 606, '2026-05-07 20:30:47.328');
INSERT INTO `dh_message` VALUES (3, 2, 1, '今天司机效益怎么样', NULL, NULL, NULL, 0, 0, '2026-05-07 20:31:30.317');
INSERT INTO `dh_message` VALUES (4, 3, 1, '今天司机效益怎么样', NULL, NULL, NULL, 0, 0, '2026-05-07 20:33:21.192');

-- ----------------------------
-- Table structure for dh_query_log
-- ----------------------------
DROP TABLE IF EXISTS `dh_query_log`;
CREATE TABLE `dh_query_log`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `message_id` bigint UNSIGNED NOT NULL COMMENT '关联消息ID',
  `category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '查询类别',
  `action` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作类型',
  `time_range` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时间范围',
  `sql_executed` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '实际执行的SQL',
  `row_count` bigint UNSIGNED NULL DEFAULT 0 COMMENT '返回行数',
  `exec_time_ms` bigint UNSIGNED NULL DEFAULT 0 COMMENT '查询耗时ms',
  `success` tinyint UNSIGNED NULL DEFAULT 1 COMMENT '是否成功0=失败1=成功',
  `error_msg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '错误信息',
  `created_at` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_dh_query_log_message_id`(`message_id` ASC) USING BTREE,
  INDEX `idx_dh_query_log_category`(`category` ASC) USING BTREE,
  INDEX `idx_dh_query_log_created_at`(`created_at` ASC) USING BTREE,
  CONSTRAINT `fk_dh_message_query_logs` FOREIGN KEY (`message_id`) REFERENCES `dh_message` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dh_query_log
-- ----------------------------
INSERT INTO `dh_query_log` VALUES (1, 1, 'order', 'count', 'today', NULL, 0, 93, 1, '', '2026-05-07 20:30:47.199');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '派单规则配置' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dispatch_rule
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver
-- ----------------------------
INSERT INTO `driver` VALUES (1, '13939377423', '周伟', '330106198001061576', 'https://example.com/driver/1.png', 1, 43, '杭州', 'D1926025', '2019-08-10', '2030-04-14', 1, 1, 1, 447, 41167.82, 4.01, 1, '2025-05-23 16:12:40', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (2, '15965130161', '陈杰', '320508199204149306', 'https://example.com/driver/2.png', 2, 32, '南京', 'D1081192', '2016-06-01', '2030-04-14', 1, 2, 0, 310, 38729.17, 4.23, 1, '2025-07-02 18:12:46', '2025-08-03 12:01:27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (3, '18289512337', '周涛', '120102197012287123', 'https://example.com/driver/3.png', 2, 35, '上海', 'D5260871', '2021-11-18', '2030-08-16', 2, 2, 0, 472, 78227.09, 4.80, 0, '2024-01-16 12:42:23', '2024-02-05 21:10:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (4, '18654943111', '朱静', '110101197901012394', 'https://example.com/driver/4.png', 1, 28, '深圳', 'D6242155', '2014-11-28', '2028-07-23', 2, 0, 1, 246, 75775.45, 4.90, 1, '2024-10-10 23:32:47', '2025-08-22 00:10:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (5, '13823231151', '徐敏', '440305199202118797', 'https://example.com/driver/5.png', 2, 42, '南京', 'D4398378', '2017-09-14', '2028-06-26', 2, 2, 0, 496, 73409.60, 4.46, 1, '2025-09-07 11:40:24', '2025-11-07 05:29:51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (6, '15286702091', '杨艳', '440305199001197361', 'https://example.com/driver/6.png', 1, 28, '北京', 'D6896066', '2019-05-30', '2028-07-14', 2, 0, 1, 87, 21839.66, 4.12, 1, '2023-07-29 20:50:52', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (7, '13989536262', '马平', '330106197002199841', 'https://example.com/driver/7.png', 2, 33, '北京', 'D4896522', '2020-05-17', '2030-09-21', 1, 0, 1, 468, 26300.51, 4.97, 0, '2024-08-21 00:37:10', '2025-08-23 08:18:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (8, '13780051131', '周刚', '320102197903234396', 'https://example.com/driver/8.png', 1, 34, '南京', 'D1535109', '2015-11-26', '2027-11-17', 1, 1, 0, 287, 50531.30, 4.46, 0, '2023-12-26 00:42:07', '2025-09-24 11:07:54', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (9, '18623646725', '黄强', '310106197604129183', 'https://example.com/driver/9.png', 1, 35, '成都', 'D7880497', '2014-02-13', '2027-07-25', 1, 0, 0, 458, 28085.41, 4.36, 1, '2024-01-18 20:30:09', '2025-10-16 16:32:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (10, '15252467428', '马娜', '110101197012161516', 'https://example.com/driver/10.png', 2, 38, '杭州', 'D7773810', '2020-11-10', '2028-09-11', 1, 2, 0, 442, 60890.23, 4.31, 1, '2023-05-31 12:18:42', '2024-07-29 17:52:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (11, '15291202563', '胡敏', '320102198110092940', 'https://example.com/driver/11.png', 2, 42, '广州', 'D1412279', '2013-07-29', '2031-02-20', 1, 1, 1, 486, 50321.07, 4.34, 0, '2023-01-30 22:39:03', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (12, '15081495520', '陈芳', '320102198701192825', 'https://example.com/driver/12.png', 1, 40, '北京', 'D3580468', '2021-07-11', '2028-05-31', 2, 2, 1, 480, 96444.87, 4.73, 1, '2023-11-05 13:01:57', '2025-07-27 00:22:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (13, '18664422524', '李强', '310106199004014413', 'https://example.com/driver/13.png', 1, 37, '西安', 'D5058640', '2016-12-24', '2030-06-15', 1, 2, 2, 102, 73915.53, 4.83, 0, '2024-06-30 01:36:29', '2025-10-11 10:06:04', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (14, '13710721682', '李刚', '440305197905090438', 'https://example.com/driver/14.png', 1, 44, '杭州', 'D5337254', '2021-02-16', '2027-08-30', 1, 2, 2, 347, 99912.42, 4.96, 1, '2024-12-02 14:33:38', '2025-07-05 20:15:40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (15, '15292687651', '朱平', '310106197210289020', 'https://example.com/driver/15.png', 2, 34, '成都', 'D8923429', '2016-09-14', '2029-06-21', 1, 1, 2, 154, 3992.61, 4.74, 1, '2025-09-12 21:58:42', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (16, '15853423033', '刘丽', '320508198911254693', 'https://example.com/driver/16.png', 2, 27, '重庆', 'D3658073', '2017-10-06', '2029-03-01', 1, 0, 2, 118, 23532.36, 4.30, 0, '2024-03-07 23:12:47', '2026-02-01 15:43:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (17, '15288196075', '张娜', '120102198811241847', 'https://example.com/driver/17.png', 1, 25, '北京', 'D4635295', '2017-12-12', '2028-06-10', 1, 2, 2, 116, 67471.69, 4.45, 0, '2024-08-12 23:13:09', '2026-02-08 18:46:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (18, '15255821311', '刘涛', '330106197007035998', 'https://example.com/driver/18.png', 2, 50, '上海', 'D7192255', '2020-08-17', '2029-08-31', 2, 0, 2, 113, 33306.08, 4.18, 0, '2024-01-23 02:52:28', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (19, '18201324460', '李娜', '120102197904243753', 'https://example.com/driver/19.png', 2, 39, '重庆', 'D2996152', '2019-11-04', '2030-02-09', 2, 2, 2, 330, 41746.92, 4.53, 1, '2024-12-02 12:05:58', '2026-01-26 22:37:40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (20, '18650042121', '王杰', '110101199903273463', 'https://example.com/driver/20.png', 1, 33, '西安', 'D8036682', '2019-06-11', '2030-01-20', 1, 0, 1, 264, 68404.21, 4.90, 1, '2024-09-16 08:09:44', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (21, '13971862869', '张涛', '330106197508188909', 'https://example.com/driver/21.png', 2, 42, '杭州', 'D5322716', '2018-06-30', '2028-06-10', 2, 2, 1, 186, 3724.67, 4.33, 0, '2023-02-03 06:36:23', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (22, '18603086280', '马芳', '320102198006040642', 'https://example.com/driver/22.png', 2, 44, '西安', 'D2425083', '2018-02-28', '2031-04-02', 2, 0, 0, 126, 91699.52, 4.17, 1, '2025-09-23 06:59:08', '2026-03-25 14:55:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (23, '13780382832', '李伟', '510104198904156910', 'https://example.com/driver/23.png', 2, 27, '广州', 'D5583963', '2021-08-25', '2028-06-24', 2, 1, 2, 475, 63372.27, 4.98, 1, '2025-04-26 02:25:40', '2025-09-29 05:01:53', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (24, '18212876562', '马娜', '320102200012085446', 'https://example.com/driver/24.png', 2, 41, '杭州', 'D3999107', '2024-05-15', '2029-09-11', 2, 0, 2, 74, 82935.25, 4.51, 0, '2025-07-02 08:35:57', '2025-08-26 00:22:47', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (25, '18890456033', '朱杰', '330106198802010049', 'https://example.com/driver/25.png', 1, 54, '北京', 'D7825444', '2016-03-03', '2028-05-06', 2, 1, 0, 339, 80763.80, 4.90, 1, '2023-12-28 04:40:06', '2024-05-06 15:05:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (26, '15896364651', '吴平', '320102197210229612', 'https://example.com/driver/26.png', 1, 35, '上海', 'D3842534', '2022-11-01', '2028-05-25', 1, 2, 0, 74, 4246.90, 4.35, 0, '2023-12-20 18:35:11', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (27, '18603255519', '陈刚', '310106200006192942', 'https://example.com/driver/27.png', 2, 31, '杭州', 'D5997930', '2022-01-10', '2030-01-19', 2, 0, 0, 267, 30213.24, 4.61, 0, '2024-10-28 01:00:17', '2025-01-05 21:51:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (28, '15217859750', '黄艳', '110101199406122577', 'https://example.com/driver/28.png', 2, 49, '上海', 'D5696934', '2015-05-16', '2027-12-28', 2, 0, 0, 380, 97334.39, 4.65, 1, '2023-08-30 20:08:12', '2025-11-23 00:24:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (29, '15817006116', '徐芳', '120102197908020228', 'https://example.com/driver/29.png', 2, 27, '重庆', 'D1788036', '2018-10-16', '2030-01-19', 1, 0, 0, 346, 19799.83, 4.82, 0, '2026-02-02 10:19:42', '2026-03-06 12:56:58', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (30, '15894887708', '徐丽', '32050819890127598X', 'https://example.com/driver/30.png', 1, 28, '杭州', 'D2576063', '2015-08-15', '2027-08-11', 1, 1, 2, 258, 49086.20, 4.62, 1, '2025-06-27 00:57:06', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (31, '18299126000', '刘杰', '120102199212112372', 'https://example.com/driver/31.png', 1, 34, '武汉', 'D2637151', '2014-01-07', '2029-11-04', 2, 0, 2, 359, 52500.83, 4.59, 0, '2023-02-11 20:07:10', '2023-10-29 11:48:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (32, '15979368169', '胡艳', '330106198007061429', 'https://example.com/driver/32.png', 2, 25, '武汉', 'D3644186', '2017-11-28', '2027-11-16', 1, 1, 1, 46, 86627.35, 4.44, 0, '2024-04-27 10:47:35', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (33, '18263196977', '赵娜', '120102197402015364', 'https://example.com/driver/33.png', 2, 48, '南京', 'D1272736', '2017-05-20', '2028-05-07', 2, 2, 2, 250, 41454.52, 4.79, 0, '2025-04-27 18:34:26', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (34, '15284701930', '杨丽', '120102197810273128', 'https://example.com/driver/34.png', 2, 43, '武汉', 'D8787182', '2014-09-13', '2028-11-03', 2, 0, 1, 268, 67723.65, 4.80, 1, '2023-02-25 21:15:48', '2025-04-16 06:11:54', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (35, '15074280349', '孙丽', '320508197308218918', 'https://example.com/driver/35.png', 2, 42, '南京', 'D1112575', '2015-07-31', '2029-04-13', 2, 0, 0, 407, 85225.05, 4.79, 1, '2024-09-20 09:54:24', '2025-01-20 03:04:29', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (36, '18864657907', '朱强', '440305198208062783', 'https://example.com/driver/36.png', 1, 45, '深圳', 'D5284276', '2018-09-11', '2029-06-29', 2, 1, 1, 60, 20734.97, 4.69, 0, '2023-01-25 16:41:08', '2025-10-05 08:27:18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (37, '18656766631', '周强', '510104199103216177', 'https://example.com/driver/37.png', 2, 32, '北京', 'D2750160', '2022-08-16', '2029-10-24', 2, 1, 2, 289, 69779.44, 4.73, 0, '2026-02-20 04:52:11', '2026-04-01 12:44:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (38, '13859592171', '黄敏', '510104199806118581', 'https://example.com/driver/38.png', 1, 45, '西安', 'D3609597', '2016-06-07', '2031-04-25', 2, 0, 1, 33, 24026.78, 4.80, 1, '2024-04-10 16:01:45', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (39, '15874023487', '胡强', '11010120001204276X', 'https://example.com/driver/39.png', 2, 48, '成都', 'D1401992', '2015-07-12', '2030-02-16', 1, 2, 2, 327, 11739.41, 4.09, 0, '2023-09-29 01:06:50', '2025-12-24 09:30:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (40, '15085723031', '周涛', '120102197510082173', 'https://example.com/driver/40.png', 1, 42, '南京', 'D3440649', '2020-11-27', '2029-02-18', 2, 2, 2, 350, 33960.78, 4.43, 0, '2026-03-28 10:35:42', '2026-04-14 19:13:09', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (41, '18648773497', '刘军', '310106199102263425', 'https://example.com/driver/41.png', 1, 53, '北京', 'D3119292', '2024-05-13', '2030-09-09', 2, 2, 0, 208, 55198.75, 4.78, 1, '2025-06-23 14:01:25', '2025-07-30 14:04:35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (42, '15077645701', '李涛', '310106198603229474', 'https://example.com/driver/42.png', 2, 34, '深圳', 'D7639264', '2022-01-24', '2030-03-17', 1, 0, 0, 227, 90296.50, 4.80, 0, '2023-05-04 08:42:26', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (43, '13822393641', '杨磊', '320508198201265136', 'https://example.com/driver/43.png', 1, 25, '杭州', 'D6252179', '2016-04-10', '2029-11-06', 2, 1, 1, 486, 95367.46, 4.81, 1, '2024-03-08 22:35:45', '2024-12-10 16:46:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (44, '15964104012', '赵刚', '120102197106202991', 'https://example.com/driver/44.png', 2, 28, '成都', 'D1040360', '2018-03-21', '2030-07-04', 2, 0, 2, 69, 97161.49, 4.29, 0, '2024-01-23 23:24:21', '2024-10-11 00:29:41', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (45, '15037519324', '胡伟', '120102198008052773', 'https://example.com/driver/45.png', 1, 53, '深圳', 'D9165508', '2014-11-04', '2030-05-21', 2, 1, 2, 337, 37370.77, 4.95, 0, '2024-03-16 05:35:21', '2026-03-10 08:27:12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (46, '13872985533', '徐杰', '440305197009058251', 'https://example.com/driver/46.png', 1, 46, '杭州', 'D6146790', '2019-01-16', '2030-07-22', 1, 2, 0, 305, 48732.25, 4.93, 1, '2026-02-18 21:18:34', '2026-04-10 10:44:06', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (47, '13856555891', '徐伟', '330106198311110484', 'https://example.com/driver/47.png', 1, 35, '成都', 'D3408330', '2015-05-27', '2028-10-20', 1, 1, 0, 280, 46276.02, 4.10, 1, '2025-03-15 03:43:20', '2026-02-27 23:43:51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (48, '18665935333', '张平', '320508198707051528', 'https://example.com/driver/48.png', 2, 40, '杭州', 'D5074288', '2016-10-30', '2030-10-18', 2, 2, 0, 340, 35186.80, 4.69, 1, '2024-01-22 17:22:33', '2025-12-03 08:48:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (49, '15824871536', '胡涛', '310106199707242170', 'https://example.com/driver/49.png', 1, 49, '南京', 'D7035117', '2020-05-08', '2030-03-09', 2, 1, 1, 83, 86064.52, 4.68, 1, '2025-09-30 01:19:10', '2026-02-07 19:34:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (50, '15853757402', '王刚', '110101199512164395', 'https://example.com/driver/50.png', 1, 41, '武汉', 'D8709109', '2018-10-07', '2030-04-29', 1, 1, 0, 48, 81470.04, 4.35, 1, '2025-04-13 12:16:01', '2025-07-08 21:14:11', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (51, '15819350168', '刘强', '310106198610061162', 'https://example.com/driver/51.png', 2, 34, '重庆', 'D7512313', '2017-01-02', '2028-08-03', 2, 0, 2, 191, 73792.38, 4.62, 1, '2025-08-19 20:13:15', '2026-05-02 12:13:18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (52, '13948981929', '赵静', '320102197610158138', 'https://example.com/driver/52.png', 2, 25, '深圳', 'D9570208', '2019-11-26', '2029-05-24', 2, 0, 1, 169, 60640.22, 4.85, 0, '2023-02-02 20:16:33', '2024-10-29 13:56:22', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (53, '13969790811', '周杰', '440305197910198229', 'https://example.com/driver/53.png', 2, 50, '深圳', 'D1327538', '2023-04-06', '2029-03-15', 2, 1, 0, 477, 39449.03, 4.94, 0, '2025-03-22 18:23:17', '2025-09-13 20:58:41', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (54, '18602883728', '王艳', '330106197608100823', 'https://example.com/driver/54.png', 1, 41, '西安', 'D1170366', '2019-07-08', '2029-06-03', 2, 2, 0, 191, 72481.73, 4.98, 1, '2023-05-29 21:51:23', '2025-11-16 13:51:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (55, '18615390643', '王芳', '320508199003253328', 'https://example.com/driver/55.png', 2, 46, '南京', 'D1857868', '2016-07-16', '2028-09-03', 2, 2, 0, 155, 84491.55, 4.35, 0, '2023-10-31 23:48:38', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (56, '15202028624', '王芳', '120102197111055887', 'https://example.com/driver/56.png', 2, 50, '杭州', 'D8640529', '2020-05-20', '2028-07-06', 2, 1, 2, 166, 74702.24, 4.71, 1, '2026-05-01 07:28:39', '2026-05-03 00:39:40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (57, '18669128330', '周涛', '440305197405224414', 'https://example.com/driver/57.png', 1, 35, '南京', 'D2002197', '2024-10-10', '2028-01-30', 2, 1, 1, 189, 48816.82, 4.60, 1, '2026-04-28 14:57:54', '2026-05-01 15:23:30', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (58, '15871582991', '张平', '330106197708127563', 'https://example.com/driver/58.png', 1, 45, '南京', 'D4009308', '2021-11-25', '2027-09-13', 1, 2, 1, 189, 36915.28, 4.10, 0, '2025-03-21 19:38:13', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (59, '13933568948', '张平', '120102198006278477', 'https://example.com/driver/59.png', 2, 28, '成都', 'D6012240', '2023-10-05', '2028-01-06', 2, 2, 1, 93, 45585.75, 4.18, 0, '2026-01-01 03:14:09', '2026-02-24 03:41:22', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (60, '15229927753', '马杰', '310106198908097024', 'https://example.com/driver/60.png', 2, 41, '重庆', 'D1409221', '2022-08-11', '2029-01-19', 2, 2, 2, 197, 62453.13, 4.53, 1, '2025-11-30 15:34:07', '2025-12-08 13:14:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (61, '18823223912', '黄涛', '320508199812088780', 'https://example.com/driver/61.png', 1, 25, '重庆', 'D5055329', '2013-07-10', '2030-02-26', 1, 0, 2, 398, 72212.76, 4.18, 0, '2023-04-17 18:22:14', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (62, '13989770752', '胡涛', '320102197712114466', 'https://example.com/driver/62.png', 1, 44, '南京', 'D9701894', '2019-08-02', '2027-08-10', 2, 1, 2, 174, 61420.92, 4.20, 0, '2024-03-27 13:58:11', '2025-08-10 06:33:26', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (63, '15811804790', '吴军', '320508197512111421', 'https://example.com/driver/63.png', 2, 33, '广州', 'D5632510', '2021-04-13', '2028-02-27', 1, 1, 2, 2, 79065.85, 4.93, 1, '2023-02-11 20:10:57', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (64, '13752502728', '周丽', '120102198208209644', 'https://example.com/driver/64.png', 2, 29, '成都', 'D1171692', '2016-10-25', '2030-02-14', 2, 1, 1, 241, 68809.00, 4.08, 0, '2025-07-15 20:01:39', '2026-02-24 15:39:40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (65, '13986579093', '吴强', '320102198003050095', 'https://example.com/driver/65.png', 2, 35, '武汉', 'D5390651', '2022-08-29', '2027-05-08', 2, 0, 1, 432, 62119.55, 4.83, 1, '2024-02-24 15:48:26', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (66, '18253933264', '徐平', '330106199407190923', 'https://example.com/driver/66.png', 2, 37, '重庆', 'D6611385', '2018-01-02', '2030-12-09', 2, 2, 2, 479, 66255.65, 4.97, 1, '2025-08-16 06:20:35', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (67, '18820737722', '孙丽', '320102198701080686', 'https://example.com/driver/67.png', 2, 46, '重庆', 'D6828788', '2016-02-02', '2030-05-17', 2, 2, 2, 37, 62467.63, 4.62, 0, '2024-11-10 12:31:24', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (68, '13873997240', '陈娜', '310106197906174864', 'https://example.com/driver/68.png', 1, 31, '成都', 'D1113709', '2014-10-02', '2030-04-20', 2, 0, 2, 388, 44980.06, 4.66, 1, '2024-04-20 00:59:09', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (69, '15921678682', '徐杰', '120102199708182995', 'https://example.com/driver/69.png', 1, 48, '南京', 'D1703967', '2013-12-20', '2030-12-22', 1, 2, 2, 177, 65971.09, 4.30, 1, '2023-08-30 21:16:55', '2024-03-31 20:29:27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (70, '18808438810', '周艳', '120102197701195698', 'https://example.com/driver/70.png', 2, 51, '武汉', 'D3749142', '2017-10-25', '2027-05-18', 2, 0, 2, 314, 17630.79, 4.63, 0, '2023-02-05 02:07:00', '2023-03-06 08:27:52', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (71, '13888598398', '张娜', '51010419960822207X', 'https://example.com/driver/71.png', 2, 51, '成都', 'D3305078', '2021-03-29', '2028-01-28', 1, 2, 0, 171, 79637.23, 4.25, 0, '2025-04-10 15:02:27', '2026-01-27 22:20:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (72, '13736496191', '胡艳', '510104197112170244', 'https://example.com/driver/72.png', 1, 45, '北京', 'D1068605', '2020-02-24', '2028-02-15', 1, 1, 1, 137, 10201.08, 4.20, 1, '2023-04-04 05:41:15', '2023-06-14 12:33:30', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (73, '18666004397', '周刚', '320508199304258552', 'https://example.com/driver/73.png', 1, 33, '杭州', 'D9233155', '2015-01-19', '2030-11-18', 1, 1, 0, 326, 55794.97, 4.30, 0, '2023-09-26 07:48:00', '2024-05-13 21:48:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (74, '13992634867', '杨杰', '310106197008022361', 'https://example.com/driver/74.png', 1, 52, '重庆', 'D2514781', '2016-07-04', '2027-06-22', 1, 2, 2, 269, 82702.14, 4.60, 0, '2025-06-01 13:16:31', '2026-03-21 13:57:46', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (75, '13779545721', '吴涛', '120102200012227864', 'https://example.com/driver/75.png', 2, 32, '成都', 'D7637722', '2022-09-03', '2028-09-23', 2, 2, 0, 361, 62985.95, 4.47, 1, '2024-01-20 06:41:36', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (76, '13974482286', '王刚', '110101197208150816', 'https://example.com/driver/76.png', 2, 25, '北京', 'D4778215', '2018-11-03', '2028-03-11', 1, 0, 1, 41, 74143.13, 4.43, 1, '2025-04-18 14:39:59', '2025-06-12 05:06:47', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (77, '18817305673', '周涛', '12010219820404536X', 'https://example.com/driver/77.png', 1, 29, '西安', 'D9064903', '2017-09-12', '2029-04-09', 2, 0, 0, 288, 93200.54, 4.56, 0, '2023-02-28 07:58:05', '2025-02-18 07:10:36', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (78, '18867723333', '赵芳', '330106198502208723', 'https://example.com/driver/78.png', 1, 38, '重庆', 'D3656719', '2023-10-03', '2029-06-04', 2, 0, 0, 135, 38682.79, 4.57, 1, '2025-12-30 04:14:17', '2026-03-09 20:57:20', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (79, '18646469822', '胡杰', '120102198510189757', 'https://example.com/driver/79.png', 1, 50, '南京', 'D8373559', '2017-05-05', '2028-05-29', 1, 0, 1, 143, 43697.39, 4.20, 1, '2024-03-15 01:45:49', '2024-07-11 05:56:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (80, '18235183974', '孙刚', '320508198502160998', 'https://example.com/driver/80.png', 1, 33, '杭州', 'D7249972', '2016-09-03', '2027-07-27', 1, 1, 2, 410, 66779.69, 4.91, 0, '2024-09-07 07:26:19', '2025-05-10 13:25:28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (81, '15023942833', '赵丽', '310106197605278571', 'https://example.com/driver/81.png', 2, 53, '深圳', 'D6929593', '2017-07-26', '2030-02-19', 2, 2, 2, 263, 67863.49, 4.56, 1, '2023-05-04 17:48:56', '2026-03-17 16:28:12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (82, '18830991814', '胡娜', '510104198007177392', 'https://example.com/driver/82.png', 2, 27, '成都', 'D6182207', '2020-10-13', '2028-07-20', 1, 0, 0, 266, 82313.16, 4.01, 1, '2023-05-10 02:17:39', '2024-07-10 16:56:12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (83, '15988415193', '王芳', '310106199505281058', 'https://example.com/driver/83.png', 2, 29, '广州', 'D2859329', '2023-07-25', '2030-01-15', 2, 0, 0, 135, 94772.99, 4.43, 1, '2025-02-19 06:02:55', '2025-07-30 14:30:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (84, '15035049230', '张艳', '310106197411055465', 'https://example.com/driver/84.png', 1, 27, '南京', 'D3335016', '2019-12-16', '2028-03-10', 1, 1, 1, 220, 25871.91, 4.44, 0, '2025-03-05 13:30:44', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (85, '13790863874', '张伟', '44030519810411686X', 'https://example.com/driver/85.png', 2, 52, '深圳', 'D7447139', '2020-09-09', '2029-01-04', 2, 2, 1, 162, 52200.79, 4.73, 1, '2025-03-06 13:13:25', '2025-11-02 08:22:09', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (86, '18879053075', '黄伟', '320508199901235554', 'https://example.com/driver/86.png', 1, 33, '杭州', 'D2559444', '2023-04-25', '2030-12-12', 2, 2, 1, 34, 31897.39, 4.30, 0, '2025-01-19 21:24:02', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (87, '18673417010', '王军', '33010619810517767X', 'https://example.com/driver/87.png', 1, 37, '南京', 'D1220975', '2021-04-17', '2029-04-19', 2, 1, 2, 104, 24259.01, 4.04, 0, '2026-02-28 04:57:32', '2026-03-18 15:49:19', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (88, '15998407257', '王伟', '310106199405184836', 'https://example.com/driver/88.png', 1, 42, '重庆', 'D7957389', '2014-04-11', '2030-09-22', 1, 0, 0, 15, 94350.85, 4.14, 0, '2023-04-06 05:52:45', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (89, '15941447083', '徐平', '120102197104148031', 'https://example.com/driver/89.png', 2, 25, '成都', 'D9338613', '2018-06-09', '2031-04-04', 2, 0, 1, 278, 5645.31, 4.64, 0, '2025-01-02 12:56:17', '2026-04-25 05:59:51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (90, '15814118215', '陈强', '110101197307058724', 'https://example.com/driver/90.png', 1, 52, '广州', 'D7310815', '2021-05-30', '2028-10-17', 2, 0, 1, 245, 42985.60, 4.35, 1, '2025-09-28 02:41:15', '2026-01-23 11:53:48', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (91, '15270699206', '胡娜', '330106198407283182', 'https://example.com/driver/91.png', 2, 54, '西安', 'D8625913', '2017-01-02', '2028-04-27', 2, 0, 2, 229, 22388.06, 4.57, 1, '2024-10-04 07:56:05', '2025-07-29 12:01:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (92, '13941757075', '孙强', '330106198902134309', 'https://example.com/driver/92.png', 1, 33, '上海', 'D1624135', '2016-04-01', '2028-02-21', 1, 0, 0, 158, 35799.54, 4.37, 0, '2024-06-13 10:01:22', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (93, '13710788163', '胡杰', '510104197307177751', 'https://example.com/driver/93.png', 1, 26, '深圳', 'D8334405', '2017-12-19', '2028-10-11', 1, 1, 0, 134, 65453.51, 4.43, 1, '2023-12-21 19:31:59', '2024-03-27 00:54:04', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (94, '18200532256', '李艳', '11010119850216966X', 'https://example.com/driver/94.png', 2, 36, '成都', 'D5501424', '2016-04-01', '2030-03-17', 2, 1, 1, 351, 45641.58, 4.80, 1, '2025-09-26 10:54:55', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (95, '15929422946', '黄杰', '110101199101215449', 'https://example.com/driver/95.png', 1, 30, '杭州', 'D1580729', '2018-06-11', '2030-09-26', 1, 1, 2, 172, 83019.49, 4.20, 1, '2026-05-07 01:49:28', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (96, '13773845791', '杨静', '120102199001129621', 'https://example.com/driver/96.png', 1, 27, '上海', 'D5626208', '2017-09-10', '2028-06-19', 2, 0, 0, 9, 80307.36, 4.37, 1, '2025-01-18 18:08:47', '2025-09-03 15:10:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (97, '13933522921', '张强', '33010619930225602X', 'https://example.com/driver/97.png', 1, 49, '上海', 'D8602933', '2014-10-03', '2028-12-05', 2, 1, 2, 294, 35281.04, 4.03, 0, '2023-07-28 09:39:31', '2024-01-13 12:05:56', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (98, '13751938391', '朱平', '440305197601014250', 'https://example.com/driver/98.png', 1, 55, '重庆', 'D3264837', '2024-03-09', '2028-03-02', 2, 1, 2, 393, 61195.63, 4.96, 0, '2025-08-12 14:17:37', '2026-02-08 02:57:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (99, '18640500993', '王伟', '110101197710224781', 'https://example.com/driver/99.png', 1, 47, '重庆', 'D9402563', '2020-08-12', '2029-02-12', 2, 1, 2, 474, 33295.11, 4.98, 1, '2023-08-15 07:08:18', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (100, '18819732725', '周涛', '440305199209097452', 'https://example.com/driver/100.png', 2, 42, '重庆', 'D3281673', '2018-09-18', '2029-07-16', 1, 1, 1, 418, 31454.91, 4.73, 1, '2023-08-31 15:06:02', '2025-02-09 16:51:50', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (101, '15977926371', '徐杰', '110101197002190505', 'https://example.com/driver/101.png', 1, 46, '武汉', 'D8395835', '2020-10-11', '2030-10-30', 1, 0, 1, 275, 54955.90, 5.00, 1, '2025-05-12 16:13:05', '2025-08-29 13:37:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (102, '15252877201', '朱丽', '320508199202265623', 'https://example.com/driver/102.png', 2, 30, '南京', 'D8213847', '2014-11-29', '2028-05-31', 1, 0, 0, 321, 57324.70, 4.49, 1, '2024-10-04 04:39:12', '2026-04-12 18:28:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (103, '13934049438', '张敏', '110101197108070260', 'https://example.com/driver/103.png', 2, 30, '广州', 'D5459278', '2018-11-20', '2028-02-25', 1, 2, 0, 160, 56784.93, 4.68, 0, '2023-03-16 07:25:50', '2026-04-05 12:19:58', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (104, '13842856445', '黄伟', '120102197110083717', 'https://example.com/driver/104.png', 1, 42, '上海', 'D5430318', '2017-03-04', '2030-12-16', 1, 1, 0, 136, 82761.13, 4.54, 1, '2025-01-16 14:40:35', '2025-06-14 01:34:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (105, '15215952283', '胡磊', '510104198403285207', 'https://example.com/driver/105.png', 1, 53, '广州', 'D8744568', '2021-04-06', '2030-11-19', 2, 2, 2, 415, 47554.14, 4.77, 0, '2023-05-20 03:21:09', '2025-12-22 02:50:58', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (106, '13825296425', '张艳', '310106199007113683', 'https://example.com/driver/106.png', 1, 34, '上海', 'D3070423', '2021-03-02', '2029-09-17', 1, 1, 2, 202, 23281.20, 4.47, 0, '2023-06-20 04:43:40', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (107, '15021550963', '吴丽', '120102197507186652', 'https://example.com/driver/107.png', 2, 48, '成都', 'D2572681', '2017-08-10', '2027-06-02', 2, 0, 1, 337, 74586.63, 4.51, 0, '2024-06-02 20:17:22', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (108, '13899967643', '黄静', '120102197709270623', 'https://example.com/driver/108.png', 1, 38, '西安', 'D5235426', '2023-08-05', '2029-06-10', 1, 1, 1, 20, 49265.59, 4.34, 0, '2025-01-07 16:40:16', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (109, '15822986427', '杨娜', '440305199703261072', 'https://example.com/driver/109.png', 2, 51, '广州', 'D3883140', '2019-04-22', '2030-06-22', 1, 2, 2, 159, 73649.56, 4.64, 1, '2026-04-17 19:10:07', '2026-04-22 17:16:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (110, '15272725263', '张军', '110101197105044992', 'https://example.com/driver/110.png', 2, 44, '杭州', 'D5431500', '2022-06-04', '2028-09-04', 2, 1, 1, 20, 17792.24, 4.17, 1, '2023-08-04 19:26:20', '2024-02-28 04:19:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (111, '13953129777', '张娜', '320508198211175740', 'https://example.com/driver/111.png', 2, 52, '西安', 'D1667536', '2024-05-28', '2030-12-30', 1, 1, 0, 207, 14805.57, 4.68, 0, '2025-09-24 18:17:14', '2026-05-07 21:44:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (112, '13908041059', '徐涛', '320508199503045404', 'https://example.com/driver/112.png', 1, 39, '上海', 'D1755327', '2020-03-30', '2030-02-21', 1, 0, 1, 46, 4834.58, 4.43, 1, '2023-04-20 13:18:38', '2024-07-15 10:12:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (113, '13758360463', '孙平', '310106198101134967', 'https://example.com/driver/113.png', 2, 43, '广州', 'D5813978', '2016-02-02', '2029-10-25', 2, 0, 1, 371, 89948.80, 4.88, 0, '2023-03-07 02:03:00', '2025-10-08 22:59:04', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (114, '18852485123', '刘涛', '330106199111255322', 'https://example.com/driver/114.png', 2, 49, '成都', 'D9301535', '2014-11-21', '2027-11-17', 1, 2, 1, 254, 20947.78, 4.07, 1, '2024-08-29 10:36:36', '2025-10-05 23:51:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (115, '13778980967', '黄刚', '440305198605123240', 'https://example.com/driver/115.png', 2, 35, '深圳', 'D2770472', '2021-04-10', '2030-07-05', 1, 0, 0, 296, 68198.56, 4.80, 0, '2024-06-30 18:05:49', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (116, '13716266818', '马丽', '330106197102080551', 'https://example.com/driver/116.png', 1, 49, '重庆', 'D5067682', '2017-07-01', '2030-05-01', 1, 1, 1, 181, 53167.72, 4.87, 0, '2025-07-17 06:20:08', '2025-12-13 05:51:33', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (117, '13864218392', '杨敏', '310106197402211767', 'https://example.com/driver/117.png', 1, 52, '西安', 'D5522744', '2021-08-16', '2030-02-27', 1, 0, 2, 129, 41665.34, 4.34, 1, '2023-02-21 13:53:48', '2023-06-16 03:09:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (118, '13794344693', '朱强', '120102197107259059', 'https://example.com/driver/118.png', 1, 42, '广州', 'D6618786', '2013-12-18', '2029-07-21', 2, 0, 0, 406, 18251.34, 4.95, 1, '2023-01-13 02:49:18', '2025-01-15 09:35:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (119, '15940852635', '马强', '44030519960802127X', 'https://example.com/driver/119.png', 1, 41, '西安', 'D2431924', '2022-03-22', '2027-07-28', 2, 1, 2, 48, 10887.22, 4.66, 1, '2023-05-23 07:13:59', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (120, '13903104342', '黄军', '330106199310116877', 'https://example.com/driver/120.png', 1, 50, '成都', 'D2349915', '2016-12-26', '2029-01-09', 2, 2, 1, 36, 3547.03, 4.24, 1, '2025-04-26 12:18:02', '2025-07-28 04:04:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (121, '15873805220', '陈敏', '310106198601134960', 'https://example.com/driver/121.png', 2, 46, '上海', 'D2399219', '2022-02-11', '2030-02-03', 2, 0, 0, 41, 64159.22, 4.69, 1, '2023-11-07 16:33:45', '2025-04-02 15:39:17', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (122, '15987740708', '吴静', '310106197702208833', 'https://example.com/driver/122.png', 2, 49, '武汉', 'D2303925', '2021-04-02', '2029-07-27', 2, 1, 1, 151, 92257.90, 4.56, 0, '2025-05-20 11:40:05', '2025-10-31 00:38:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (123, '13705788321', '黄涛', '110101197103019872', 'https://example.com/driver/123.png', 2, 27, '广州', 'D5706847', '2016-07-24', '2030-10-02', 2, 2, 2, 78, 38083.27, 4.60, 0, '2023-01-29 16:41:04', '2025-01-25 15:23:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (124, '15060304865', '胡涛', '330106199305240905', 'https://example.com/driver/124.png', 1, 26, '广州', 'D3727417', '2015-05-30', '2029-06-02', 1, 0, 2, 336, 68638.21, 4.42, 1, '2023-06-13 06:11:20', '2024-07-26 13:22:21', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (125, '15817398800', '周平', '310106199412178645', 'https://example.com/driver/125.png', 2, 42, '广州', 'D1674568', '2013-05-27', '2028-04-26', 2, 1, 0, 410, 15920.28, 4.23, 1, '2023-03-14 05:23:40', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (126, '13827907555', '徐敏', '330106198608098609', 'https://example.com/driver/126.png', 2, 55, '杭州', 'D1490384', '2016-03-11', '2028-09-06', 1, 2, 2, 4, 27083.51, 4.92, 1, '2024-01-19 16:37:17', '2024-07-02 08:51:33', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (127, '15211244307', '杨磊', '320102199407238601', 'https://example.com/driver/127.png', 2, 45, '重庆', 'D3924545', '2018-08-27', '2028-10-20', 2, 0, 0, 347, 94694.73, 4.87, 1, '2025-05-15 15:46:23', '2026-02-15 21:59:46', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (128, '13721623092', '孙涛', '110101199904267170', 'https://example.com/driver/128.png', 2, 35, '成都', 'D6948870', '2017-12-04', '2029-12-08', 1, 2, 2, 411, 19552.43, 4.81, 0, '2024-02-02 17:23:29', '2025-08-11 10:26:41', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (129, '18878825688', '孙艳', '33010619870707767X', 'https://example.com/driver/129.png', 2, 50, '南京', 'D2984058', '2020-12-17', '2030-04-23', 2, 1, 2, 123, 65591.25, 4.56, 0, '2024-04-01 10:03:27', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (130, '15218973341', '黄平', '320508197505033453', 'https://example.com/driver/130.png', 2, 33, '北京', 'D2682983', '2023-01-30', '2027-06-10', 1, 2, 2, 322, 29073.13, 4.35, 0, '2024-05-10 13:38:19', '2025-09-22 11:37:47', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (131, '18274898515', '朱娜', '110101199009233232', 'https://example.com/driver/131.png', 2, 45, '广州', 'D5701347', '2020-12-28', '2031-03-22', 1, 0, 2, 402, 30880.90, 4.74, 0, '2026-02-03 18:59:07', '2026-02-21 16:00:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (132, '15038007635', '王伟', '32010219820913196X', 'https://example.com/driver/132.png', 2, 54, '武汉', 'D8227192', '2015-04-17', '2028-11-14', 2, 2, 1, 18, 56083.81, 4.64, 1, '2023-09-11 17:49:19', '2023-12-26 23:09:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (133, '13975013050', '朱丽', '44030519970525113X', 'https://example.com/driver/133.png', 2, 44, '武汉', 'D6933379', '2020-05-14', '2030-09-13', 2, 0, 2, 341, 13712.57, 4.90, 0, '2024-09-27 01:08:02', '2025-02-02 16:39:18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (134, '18220981238', '朱平', '330106198106276906', 'https://example.com/driver/134.png', 1, 29, '杭州', 'D8921427', '2018-06-26', '2030-05-02', 2, 2, 0, 162, 6070.94, 4.23, 1, '2023-04-25 04:01:20', '2024-02-24 14:37:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (135, '15021256511', '赵涛', '320508199505012163', 'https://example.com/driver/135.png', 1, 47, '南京', 'D2036451', '2023-04-12', '2030-08-29', 2, 1, 1, 187, 67504.18, 4.27, 0, '2025-06-29 13:55:46', '2025-11-24 13:35:30', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (136, '18846153909', '杨平', '330106198909168091', 'https://example.com/driver/136.png', 1, 48, '上海', 'D6711811', '2016-07-06', '2029-03-24', 1, 0, 1, 406, 17436.60, 4.15, 1, '2025-09-22 04:57:48', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (137, '15828578007', '陈丽', '320508198609159128', 'https://example.com/driver/137.png', 1, 40, '武汉', 'D4610426', '2020-10-21', '2029-04-21', 1, 1, 1, 347, 32118.84, 4.73, 1, '2025-11-05 08:12:08', '2026-01-27 21:15:29', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (138, '15078092183', '陈敏', '440305200003103110', 'https://example.com/driver/138.png', 1, 25, '成都', 'D8967344', '2015-06-27', '2028-01-18', 2, 0, 1, 182, 4102.06, 4.99, 0, '2023-11-10 17:58:49', '2024-11-16 22:04:19', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (139, '13965428331', '刘艳', '320102199511108923', 'https://example.com/driver/139.png', 2, 47, '成都', 'D8401289', '2023-01-23', '2027-10-06', 1, 2, 2, 63, 57112.24, 4.37, 0, '2026-01-08 11:11:26', '2026-01-17 09:15:31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (140, '18821662747', '张艳', '320102198404128126', 'https://example.com/driver/140.png', 1, 50, '西安', 'D1177182', '2018-08-26', '2028-07-13', 1, 1, 2, 102, 91254.85, 4.75, 0, '2025-10-23 17:45:52', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (141, '15035904235', '赵刚', '44030519800721754X', 'https://example.com/driver/141.png', 1, 44, '西安', 'D3559394', '2022-06-08', '2029-05-12', 2, 1, 2, 485, 4484.41, 4.60, 1, '2025-07-04 12:43:23', '2025-12-01 20:34:35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (142, '15906732615', '朱刚', '320508197407079049', 'https://example.com/driver/142.png', 2, 26, '上海', 'D2355884', '2019-05-01', '2027-10-02', 2, 2, 0, 212, 60809.31, 4.75, 1, '2026-05-07 02:23:05', '2026-05-07 16:44:36', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (143, '18666338012', '周刚', '44030519930320806X', 'https://example.com/driver/143.png', 1, 30, '深圳', 'D7289064', '2020-12-31', '2030-04-05', 2, 0, 2, 211, 64863.13, 4.42, 0, '2023-10-23 06:03:27', '2026-01-08 05:01:11', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (144, '13952450639', '马艳', '120102199709160648', 'https://example.com/driver/144.png', 2, 51, '南京', 'D6929703', '2017-03-13', '2028-07-30', 2, 0, 0, 429, 86189.21, 4.17, 0, '2023-04-26 00:19:22', '2025-06-15 12:38:31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (145, '15263682725', '王涛', '120102197009028204', 'https://example.com/driver/145.png', 2, 45, '武汉', 'D8318140', '2016-08-26', '2029-09-14', 1, 1, 0, 22, 36227.45, 4.46, 0, '2023-08-29 22:16:45', '2025-01-19 08:21:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (146, '18268942272', '徐丽', '510104198208285357', 'https://example.com/driver/146.png', 2, 47, '南京', 'D8227378', '2018-08-15', '2027-12-22', 2, 0, 0, 100, 46263.29, 4.68, 0, '2023-12-30 17:01:19', '2025-03-23 07:29:45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (147, '15216431469', '马磊', '120102198807176135', 'https://example.com/driver/147.png', 1, 35, '杭州', 'D6999174', '2022-08-25', '2030-04-05', 1, 0, 1, 161, 86042.91, 4.67, 1, '2023-09-15 12:36:43', '2023-10-16 17:53:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (148, '15246451139', '黄军', '310106197408280329', 'https://example.com/driver/148.png', 1, 43, '上海', 'D1381931', '2023-07-16', '2027-11-15', 1, 2, 0, 180, 76450.02, 4.04, 0, '2026-04-23 07:50:37', '2026-05-08 03:15:09', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (149, '15270822212', '刘刚', '320508198107197613', 'https://example.com/driver/149.png', 2, 48, '西安', 'D7796320', '2022-07-20', '2028-03-21', 1, 2, 2, 191, 29565.86, 4.01, 1, '2024-08-29 12:00:33', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (150, '13787930939', '刘杰', '330106199009184658', 'https://example.com/driver/150.png', 2, 25, '上海', 'D2083136', '2020-08-17', '2030-05-10', 1, 1, 2, 438, 66635.98, 4.60, 0, '2024-02-18 18:04:11', '2024-08-09 16:34:53', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (151, '15872101232', '张杰', '320508197012024271', 'https://example.com/driver/151.png', 2, 26, '北京', 'D5559730', '2014-07-31', '2030-08-07', 1, 2, 2, 210, 26514.15, 4.65, 0, '2024-07-19 04:59:42', '2024-12-16 18:18:03', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (152, '18290313854', '孙刚', '510104197105049800', 'https://example.com/driver/152.png', 1, 29, '西安', 'D6017291', '2018-10-19', '2030-06-19', 2, 2, 2, 300, 82917.61, 4.06, 0, '2023-01-24 04:26:34', '2023-11-01 18:17:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (153, '13884585303', '刘涛', '320102197410217874', 'https://example.com/driver/153.png', 1, 27, '深圳', 'D9468947', '2015-01-19', '2027-12-31', 2, 2, 0, 52, 3571.19, 4.14, 1, '2024-11-20 08:35:17', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (154, '15971195436', '马杰', '330106197407034307', 'https://example.com/driver/154.png', 1, 42, '南京', 'D6827348', '2016-03-10', '2029-08-21', 2, 2, 2, 447, 693.97, 4.19, 1, '2025-05-28 16:13:47', '2025-06-14 14:23:27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (155, '15262409264', '朱磊', '330106197504262321', 'https://example.com/driver/155.png', 2, 39, '武汉', 'D1925791', '2014-01-02', '2031-01-24', 1, 1, 0, 124, 35967.32, 4.60, 0, '2023-08-28 07:01:21', '2025-08-16 18:29:28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (156, '15009811687', '赵艳', '440305198603198859', 'https://example.com/driver/156.png', 1, 50, '广州', 'D9465571', '2018-11-11', '2029-07-01', 1, 0, 1, 235, 21532.54, 4.07, 1, '2025-04-26 12:30:45', '2026-04-25 10:21:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (157, '18826814315', '王静', '330106198105255784', 'https://example.com/driver/157.png', 2, 40, '北京', 'D8697156', '2018-01-13', '2030-09-09', 1, 1, 2, 30, 99230.67, 4.09, 0, '2024-03-16 13:07:29', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (158, '15900661075', '孙伟', '310106198608201148', 'https://example.com/driver/158.png', 1, 26, '成都', 'D2329645', '2018-03-17', '2030-06-20', 1, 2, 1, 80, 45388.49, 4.97, 0, '2024-11-06 05:53:25', '2025-08-13 17:57:46', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (159, '13917136830', '李平', '330106199810016684', 'https://example.com/driver/159.png', 1, 46, '重庆', 'D5121714', '2021-05-09', '2028-10-30', 2, 1, 1, 261, 32925.55, 4.89, 0, '2023-10-28 09:33:43', '2024-07-31 06:08:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (160, '15858953077', '王敏', '320508197002126272', 'https://example.com/driver/160.png', 2, 54, '上海', 'D1197192', '2021-04-24', '2029-02-24', 2, 0, 2, 50, 48778.84, 4.07, 1, '2025-02-12 14:29:55', '2025-06-09 10:26:46', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (161, '15029637754', '黄伟', '440305197408226640', 'https://example.com/driver/161.png', 2, 37, '杭州', 'D3195614', '2023-07-04', '2027-08-18', 2, 2, 2, 180, 30333.25, 4.60, 1, '2025-06-07 06:37:07', '2025-10-06 00:00:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (162, '13945789640', '杨杰', '120102197706177157', 'https://example.com/driver/162.png', 2, 34, '上海', 'D1612131', '2016-12-25', '2029-06-07', 2, 0, 2, 289, 81611.01, 4.61, 0, '2024-08-12 07:50:04', '2025-12-03 08:02:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (163, '13987687395', '周丽', '120102199405087486', 'https://example.com/driver/163.png', 2, 30, '西安', 'D6082129', '2016-01-01', '2028-11-30', 2, 2, 1, 324, 13689.69, 4.23, 1, '2024-08-23 00:32:30', '2025-11-24 17:01:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (164, '18815903807', '王敏', '310106197109231721', 'https://example.com/driver/164.png', 1, 47, '成都', 'D6767098', '2017-02-15', '2029-10-18', 2, 0, 0, 84, 11005.98, 4.24, 0, '2025-01-16 19:23:48', '2025-03-16 02:28:18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (165, '18223075191', '杨涛', '32010219710223917X', 'https://example.com/driver/165.png', 2, 48, '西安', 'D3091274', '2022-12-08', '2027-08-28', 2, 1, 0, 402, 93125.54, 4.58, 1, '2026-01-08 18:15:07', '2026-02-08 13:07:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (166, '13758390966', '黄静', '110101198212262405', 'https://example.com/driver/166.png', 1, 53, '北京', 'D6634069', '2018-12-01', '2027-08-21', 2, 0, 1, 407, 90859.21, 4.54, 1, '2024-07-19 18:38:12', '2025-06-20 07:41:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (167, '15008757212', '王刚', '320508197205015841', 'https://example.com/driver/167.png', 1, 50, '杭州', 'D2139418', '2020-07-20', '2028-05-30', 1, 0, 0, 327, 12916.86, 4.37, 0, '2025-08-03 16:22:19', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (168, '15977623496', '胡平', '510104199801177246', 'https://example.com/driver/168.png', 1, 40, '南京', 'D6334269', '2023-03-10', '2030-03-02', 2, 2, 0, 252, 75737.24, 4.05, 0, '2025-12-25 13:57:53', '2026-01-14 12:24:03', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (169, '15081285631', '胡艳', '320102197503135502', 'https://example.com/driver/169.png', 1, 29, '重庆', 'D7325230', '2016-04-26', '2031-02-26', 2, 0, 0, 312, 77639.11, 4.44, 0, '2025-03-12 09:55:55', '2026-01-06 18:10:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (170, '18861028363', '杨平', '310106199504043925', 'https://example.com/driver/170.png', 2, 26, '南京', 'D2562477', '2020-11-23', '2027-11-04', 2, 1, 1, 499, 73439.84, 4.51, 1, '2025-03-02 03:38:14', '2025-05-01 01:16:49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (171, '18894058471', '张芳', '44030519971122735X', 'https://example.com/driver/171.png', 1, 40, '北京', 'D7472324', '2020-05-01', '2028-03-31', 1, 1, 1, 205, 25345.79, 4.33, 1, '2025-08-25 09:07:52', '2026-01-09 01:48:35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (172, '18215832688', '刘刚', '510104197108204595', 'https://example.com/driver/172.png', 1, 46, '杭州', 'D6222932', '2015-11-07', '2028-08-15', 1, 2, 1, 119, 57240.36, 4.72, 1, '2024-07-19 22:46:49', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (173, '15828996667', '杨涛', '320508198011260330', 'https://example.com/driver/173.png', 2, 29, '上海', 'D6452520', '2015-12-16', '2029-08-04', 1, 0, 1, 423, 12051.03, 4.72, 1, '2024-05-19 10:05:04', '2026-02-04 02:32:07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (174, '18615079481', '周伟', '320102198405107748', 'https://example.com/driver/174.png', 1, 53, '成都', 'D2910502', '2020-06-16', '2029-07-13', 2, 1, 1, 415, 14235.22, 4.70, 0, '2023-03-11 20:53:44', '2024-02-18 15:23:45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (175, '15876679288', '马强', '320508199103238016', 'https://example.com/driver/175.png', 1, 36, '武汉', 'D1849389', '2018-07-15', '2029-01-21', 2, 2, 0, 458, 37185.95, 4.90, 1, '2025-04-29 06:36:07', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (176, '13964454732', '朱敏', '110101198612164084', 'https://example.com/driver/176.png', 2, 29, '广州', 'D6474182', '2018-10-13', '2028-03-09', 2, 2, 2, 473, 53106.78, 4.16, 1, '2023-11-22 09:52:05', '2024-03-05 06:33:14', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (177, '13748383319', '李娜', '330106197112185420', 'https://example.com/driver/177.png', 1, 46, '杭州', 'D1361134', '2017-01-19', '2029-07-25', 1, 1, 1, 341, 64678.60, 4.28, 1, '2025-10-10 19:17:57', '2025-12-16 13:15:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (178, '15897804709', '张涛', '320508197809156974', 'https://example.com/driver/178.png', 1, 55, '重庆', 'D5267473', '2019-09-25', '2029-01-21', 2, 0, 1, 273, 73682.37, 4.22, 0, '2024-10-17 03:54:14', '2025-07-12 13:33:41', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (179, '15952845718', '马丽', '510104199112218551', 'https://example.com/driver/179.png', 2, 34, '杭州', 'D8088492', '2020-03-29', '2028-07-27', 2, 0, 2, 288, 58593.10, 4.29, 0, '2024-06-26 00:07:18', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (180, '18619908563', '徐涛', '110101199708030653', 'https://example.com/driver/180.png', 2, 51, '武汉', 'D5856273', '2018-09-25', '2027-11-06', 2, 1, 2, 402, 76758.39, 4.38, 0, '2023-03-21 17:27:11', '2024-12-13 01:19:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (181, '15800823886', '张强', '320102199011157844', 'https://example.com/driver/181.png', 2, 43, '杭州', 'D3385058', '2022-12-25', '2030-10-06', 2, 2, 1, 476, 28417.92, 4.28, 1, '2024-06-05 21:50:42', '2025-09-18 07:43:03', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (182, '15052926257', '张平', '32050819920611049X', 'https://example.com/driver/182.png', 1, 44, '重庆', 'D5272953', '2016-07-15', '2028-08-23', 2, 1, 0, 43, 93289.38, 4.93, 1, '2025-10-15 22:04:27', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (183, '15940756933', '刘刚', '510104199008214739', 'https://example.com/driver/183.png', 2, 30, '武汉', 'D5249511', '2019-05-30', '2030-12-09', 1, 1, 0, 412, 59854.75, 4.02, 0, '2025-11-12 15:56:02', '2026-03-27 10:58:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (184, '15098779148', '朱军', '510104197303022562', 'https://example.com/driver/184.png', 2, 33, '杭州', 'D9100948', '2021-11-17', '2028-01-29', 1, 2, 2, 207, 79238.90, 4.95, 0, '2026-02-25 15:47:32', '2026-03-28 19:22:30', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (185, '18661432784', '徐刚', '310106198011248198', 'https://example.com/driver/185.png', 1, 37, '成都', 'D9245140', '2022-02-28', '2028-03-23', 1, 1, 2, 213, 12838.08, 4.18, 0, '2023-04-04 02:15:34', '2023-07-15 13:53:12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (186, '18698024773', '徐丽', '320508197711239694', 'https://example.com/driver/186.png', 2, 46, '成都', 'D6905227', '2023-04-30', '2027-06-26', 2, 0, 0, 177, 25788.98, 4.89, 1, '2024-09-27 06:25:11', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (187, '18820908143', '刘娜', '330106197104122555', 'https://example.com/driver/187.png', 1, 41, '武汉', 'D4517784', '2016-05-04', '2030-05-15', 2, 0, 0, 37, 20620.98, 4.52, 1, '2024-03-21 04:50:44', '2024-09-06 06:18:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (188, '15827165994', '赵丽', '110101199812227965', 'https://example.com/driver/188.png', 2, 42, '南京', 'D3446087', '2019-06-12', '2030-10-12', 2, 1, 1, 136, 1924.83, 4.32, 0, '2025-10-01 09:53:53', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (189, '18883559181', '李丽', '330106197705160228', 'https://example.com/driver/189.png', 2, 28, '西安', 'D3156725', '2021-11-01', '2031-03-17', 1, 0, 1, 181, 66620.24, 4.57, 1, '2024-11-22 01:26:09', '2024-12-08 00:34:59', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (190, '18262773265', '王伟', '320508197006085964', 'https://example.com/driver/190.png', 2, 45, '广州', 'D3372170', '2020-02-29', '2028-12-02', 2, 2, 0, 347, 4821.45, 4.17, 0, '2025-08-29 02:49:41', '2025-12-19 09:28:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (191, '15278493707', '吴平', '44030519871016437X', 'https://example.com/driver/191.png', 2, 35, '武汉', 'D2215229', '2020-07-13', '2030-10-21', 1, 0, 2, 141, 12913.86, 4.04, 1, '2025-05-07 13:44:23', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (192, '15865542674', '马芳', '12010219911028189X', 'https://example.com/driver/192.png', 2, 44, '北京', 'D9479017', '2017-01-28', '2027-09-27', 1, 0, 1, 257, 62193.86, 4.23, 0, '2023-05-01 23:12:46', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (193, '18605409234', '赵丽', '320102198410088768', 'https://example.com/driver/193.png', 1, 41, '成都', 'D5005439', '2018-12-04', '2027-10-24', 2, 1, 0, 355, 25398.78, 4.62, 1, '2025-11-05 09:29:40', '2025-12-14 19:18:06', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (194, '18686910250', '陈伟', '440305198512072793', 'https://example.com/driver/194.png', 2, 50, '重庆', 'D4868364', '2015-12-24', '2029-07-03', 2, 1, 2, 351, 8680.61, 4.99, 1, '2025-12-21 16:10:08', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (195, '13868244090', '孙平', '310106198403277328', 'https://example.com/driver/195.png', 1, 39, '上海', 'D2178568', '2021-12-02', '2028-08-12', 1, 0, 0, 79, 59624.87, 4.42, 0, '2026-03-25 23:41:35', '2026-04-04 17:18:20', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (196, '15019184623', '吴刚', '310106198312120478', 'https://example.com/driver/196.png', 2, 55, '武汉', 'D7220157', '2022-11-19', '2029-10-24', 2, 0, 0, 466, 72138.68, 4.62, 0, '2025-04-05 20:29:23', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (197, '15009239639', '张芳', '320508198403284474', 'https://example.com/driver/197.png', 2, 36, '西安', 'D4746306', '2019-01-14', '2027-12-24', 2, 0, 2, 478, 54666.94, 4.84, 1, '2024-06-11 08:15:11', '2024-11-09 04:01:26', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (198, '18260090899', '杨杰', '510104198209089471', 'https://example.com/driver/198.png', 1, 48, '上海', 'D1315157', '2019-06-15', '2030-01-13', 1, 2, 2, 25, 62016.48, 4.92, 1, '2025-03-11 05:50:02', '2026-01-27 06:39:47', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (199, '15866497177', '赵涛', '120102197201144999', 'https://example.com/driver/199.png', 2, 37, '西安', 'D1513115', '2020-05-10', '2029-06-19', 2, 0, 0, 480, 27757.57, 4.30, 0, '2025-09-07 08:15:45', NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `driver` VALUES (200, '15002779627', '李磊', '320102199001021784', 'https://example.com/driver/200.png', 1, 42, '重庆', 'D2400574', '2021-11-20', '2030-07-12', 1, 1, 0, 119, 43788.68, 4.44, 1, '2023-10-29 09:51:03', '2023-12-02 08:06:35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机黑白名单' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 293 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机评价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver_comment
-- ----------------------------
INSERT INTO `driver_comment` VALUES (1, 4, 'DD202605081028593f1f90de', 3, 56, 4, '整体满意，下次还会选择', '态度好,车干净', '2024-02-23 07:35:35', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (2, 5, 'DD20260508102859a94edb56', 300, 141, 2, '司机态度一般', '车干净', '2026-04-02 11:31:28', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (3, 6, 'DD20260508102859f4483938', 389, 194, 5, '车内很干净，体验不错', '车干净,准时,驾驶稳', '2024-09-17 03:33:23', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (4, 9, 'DD202605081028594e045414', 8, 45, 5, '整体满意，下次还会选择', '态度好,服务好', '2024-11-01 03:16:28', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (5, 12, 'DD202605081028594b192b4d', 18, 141, 5, '准时到达，开车很稳', '路线熟', '2025-01-08 02:49:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (6, 17, 'DD2026050810285908b7d1b5', 335, 194, 4, '整体满意，下次还会选择', '准时,驾驶稳', '2024-03-12 07:40:58', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (7, 18, 'DD20260508102859e8326800', 292, 137, 5, '准时到达，开车很稳', '驾驶稳,态度好,路线熟', '2024-03-24 00:59:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (8, 22, 'DD2026050810285975bfb13e', 362, 98, 4, '响应迅速，服务周到', '准时', '2026-01-22 13:31:12', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (9, 23, 'DD202605081028595cf43c07', 209, 23, 5, '服务非常好，司机很有礼貌', '准时,车干净,服务好', '2024-12-11 04:22:36', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (10, 24, 'DD20260508102859e6261ef4', 209, 177, 1, '车内不太干净', '准时,车干净,态度好', '2025-08-07 05:08:58', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (11, 25, 'DD20260508102859c2586d38', 28, 157, 5, '车内很干净，体验不错', '车干净', '2024-04-26 10:02:09', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (12, 30, 'DD20260508102859f49cb415', 272, 141, 3, '等待时间较长', '态度好,车干净', '2025-01-05 02:20:48', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (13, 33, 'DD2026050810285925222549', 128, 30, 5, '司机技术很好，路线规划合理', '', '2024-08-25 03:18:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (14, 35, 'DD202605081028597c4b1df9', 350, 45, 5, '准时到达，开车很稳', '驾驶稳', '2025-02-18 20:49:48', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (15, 38, 'DD20260508102859d6029213', 19, 72, 5, '准时到达，开车很稳', '驾驶稳,车干净', '2025-07-10 19:46:33', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (16, 44, 'DD20260508102859c07f957c', 216, 106, 4, '响应迅速，服务周到', '驾驶稳,准时', '2026-04-30 01:58:01', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (17, 45, 'DD202605081028595e1bad88', 155, 194, 3, '路线不熟，绕路了', '准时', '2025-09-28 05:12:00', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (18, 46, 'DD2026050810285946d359f1', 231, 49, 5, '车内很干净，体验不错', '', '2025-09-24 05:37:17', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (19, 47, 'DD2026050810285913620611', 326, 141, 5, '车内很干净，体验不错', '', '2025-05-14 00:55:28', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (20, 54, 'DD20260508102859bf05188c', 417, 108, 5, '整体满意，下次还会选择', '路线熟,态度好,服务好', '2025-12-15 11:24:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (21, 55, 'DD20260508102859ada643b3', 260, 135, 2, '车内不太干净', '准时,服务好,态度好', '2024-09-28 02:30:38', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (22, 56, 'DD2026050810285936ef3024', 274, 36, 1, '路线不熟，绕路了', '态度好,车干净,服务好', '2025-08-11 11:06:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (23, 58, 'DD20260508102859b395ac8e', 151, 177, 5, '准时到达，开车很稳', '驾驶稳', '2024-04-19 19:10:33', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (24, 61, 'DD202605081028592a906cc4', 438, 159, 4, '服务非常好，司机很有礼貌', '驾驶稳', '2024-12-30 02:54:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (25, 62, 'DD202605081028599bd5a850', 481, 99, 3, '路线不熟，绕路了', '车干净,准时', '2024-12-24 01:35:21', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (26, 64, 'DD202605081028598017b646', 490, 129, 5, '司机技术很好，路线规划合理', '车干净', '2024-09-15 20:59:43', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (27, 74, 'DD202605081028590655d733', 89, 110, 5, '服务非常好，司机很有礼貌', '服务好', '2025-01-06 13:34:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (28, 76, 'DD202605081028599eee68e1', 49, 194, 5, '准时到达，开车很稳', '', '2024-06-08 08:17:09', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (29, 78, 'DD20260508102859b2c53491', 220, 56, 5, '车内很干净，体验不错', '态度好,驾驶稳,服务好', '2025-12-08 09:41:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (30, 80, 'DD20260508102859ff82fa0d', 84, 56, 5, '车内很干净，体验不错', '服务好,态度好,路线熟', '2024-03-22 08:51:10', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (31, 82, 'DD20260508102859284985c6', 16, 150, 3, '路线不熟，绕路了', '', '2024-11-14 19:07:13', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (32, 86, 'DD2026050810285978ae05ff', 34, 116, 5, '准时到达，开车很稳', '准时,路线熟,驾驶稳', '2024-02-19 19:21:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (33, 87, 'DD202605081028596ab99929', 311, 98, 4, '司机技术很好，路线规划合理', '驾驶稳,准时', '2025-10-16 18:07:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (34, 90, 'DD20260508102859d5289831', 435, 100, 2, '司机态度一般', '路线熟', '2024-11-22 01:29:34', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (35, 91, 'DD20260508102859054cf605', 174, 141, 4, '整体满意，下次还会选择', '准时,驾驶稳', '2025-08-31 03:59:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (36, 98, 'DD20260508102859548b32fe', 93, 36, 5, '服务非常好，司机很有礼貌', '驾驶稳,路线熟,服务好', '2024-03-21 06:22:04', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (37, 99, 'DD20260508102859925e0ef0', 286, 150, 4, '司机技术很好，路线规划合理', '驾驶稳', '2025-01-26 09:15:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (38, 102, 'DD2026050810285903591d48', 187, 100, 4, '准时到达，开车很稳', '', '2024-04-22 17:32:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (39, 103, 'DD202605081028592f5201ed', 281, 32, 5, '整体满意，下次还会选择', '路线熟,准时', '2026-03-02 02:51:17', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (40, 104, 'DD202605081028591107153c', 302, 194, 4, '司机技术很好，路线规划合理', '服务好,驾驶稳', '2024-06-15 02:38:10', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (41, 106, 'DD20260508102859c66d587e', 103, 110, 4, '准时到达，开车很稳', '服务好,车干净,态度好', '2025-11-07 19:08:21', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (42, 116, 'DD20260508102859dc3c3ea1', 190, 72, 2, '司机态度一般', '', '2025-02-04 06:35:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (43, 117, 'DD202605081028599c7a6881', 157, 99, 5, '准时到达，开车很稳', '态度好,服务好,路线熟', '2024-04-21 23:14:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (44, 120, 'DD20260508102859d7195a28', 470, 116, 1, '车内不太干净', '车干净', '2025-07-06 04:26:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (45, 122, 'DD202605081028593f9d3a99', 79, 122, 5, '整体满意，下次还会选择', '', '2024-09-02 10:46:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (46, 129, 'DD2026050810285967320500', 225, 157, 2, '司机态度一般', '车干净', '2024-04-21 22:22:31', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (47, 130, 'DD202605081028593c41ef5f', 215, 62, 5, '车内很干净，体验不错', '', '2024-09-13 03:05:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (48, 138, 'DD20260508102859624dac48', 477, 194, 5, '整体满意，下次还会选择', '准时,服务好', '2024-02-10 08:49:34', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (49, 141, 'DD202605081028595ad31861', 260, 37, 5, '整体满意，下次还会选择', '车干净,服务好', '2025-08-06 08:33:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (50, 142, 'DD202605081028599ce7d7d7', 76, 64, 5, '服务非常好，司机很有礼貌', '服务好,准时', '2025-09-04 15:27:58', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (51, 146, 'DD2026050810285997415484', 474, 150, 5, '整体满意，下次还会选择', '', '2024-07-21 02:35:29', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (52, 147, 'DD2026050810285943db9026', 430, 141, 5, '准时到达，开车很稳', '驾驶稳,车干净,准时', '2025-03-23 10:13:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (53, 149, 'DD20260508102859d6538a6c', 205, 137, 4, '准时到达，开车很稳', '', '2025-10-30 10:12:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (54, 152, 'DD202605081028594acd1ce3', 21, 129, 2, '路线不熟，绕路了', '态度好,准时', '2024-05-22 10:32:21', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (55, 155, 'DD20260508102859e08a42e8', 254, 49, 5, '车内很干净，体验不错', '', '2025-07-03 03:21:15', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (56, 156, 'DD202605081028591636a24e', 60, 140, 5, '服务非常好，司机很有礼貌', '态度好', '2024-02-03 04:20:44', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (57, 160, 'DD2026050810285960636703', 7, 106, 5, '车内很干净，体验不错', '准时', '2025-07-01 08:34:54', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (58, 162, 'DD20260508102859ea1ab86f', 237, 36, 1, '路线不熟，绕路了', '准时', '2025-04-08 23:45:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (59, 164, 'DD20260508102859b42731da', 488, 99, 4, '车内很干净，体验不错', '驾驶稳,服务好', '2025-02-18 21:31:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (60, 165, 'DD2026050810285901255697', 234, 64, 5, '准时到达，开车很稳', '服务好,驾驶稳,车干净', '2026-04-07 07:46:07', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (61, 167, 'DD202605081028597f82d9ec', 73, 32, 4, '整体满意，下次还会选择', '车干净', '2024-10-19 20:31:32', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (62, 168, 'DD202605081028596cc507a8', 94, 157, 2, '司机态度一般', '驾驶稳,车干净', '2026-03-18 06:40:50', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (63, 170, 'DD2026050810285951152123', 125, 108, 4, '司机技术很好，路线规划合理', '准时', '2025-02-23 10:31:00', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (64, 172, 'DD202605081028591cdcf3b0', 262, 62, 1, '路线不熟，绕路了', '服务好,车干净', '2025-03-20 17:59:01', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (65, 177, 'DD20260508102859016b9097', 152, 110, 3, '路线不熟，绕路了', '', '2024-09-17 02:18:23', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (66, 178, 'DD20260508102859896a2511', 114, 94, 5, '准时到达，开车很稳', '服务好,驾驶稳', '2025-10-27 09:24:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (67, 180, 'DD20260508102859db95803c', 142, 135, 5, '司机技术很好，路线规划合理', '', '2024-05-25 20:58:52', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (68, 183, 'DD2026050810285920894742', 49, 36, 5, '响应迅速，服务周到', '', '2025-08-15 16:29:40', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (69, 185, 'DD2026050810285983dbdfb2', 375, 62, 5, '车内很干净，体验不错', '服务好,准时,路线熟', '2025-03-15 05:37:29', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (70, 195, 'DD2026050810285917b26a9d', 395, 150, 5, '整体满意，下次还会选择', '车干净,路线熟', '2025-04-29 08:27:04', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (71, 202, 'DD2026050810285931292c1b', 266, 1, 5, '响应迅速，服务周到', '', '2024-03-05 02:53:03', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (72, 203, 'DD2026050810285971818696', 138, 99, 5, '车内很干净，体验不错', '服务好,态度好,准时', '2025-10-08 18:28:33', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (73, 205, 'DD202605081028595ad4541d', 85, 106, 4, '服务非常好，司机很有礼貌', '', '2024-02-16 17:49:00', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (74, 207, 'DD202605081028599f829af0', 290, 94, 4, '车内很干净，体验不错', '态度好,准时', '2024-01-19 15:53:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (75, 208, 'DD20260508102859491b28ca', 233, 129, 1, '司机态度一般', '驾驶稳', '2024-05-25 21:43:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (76, 209, 'DD2026050810285972d1a5b4', 179, 137, 5, '车内很干净，体验不错', '路线熟,驾驶稳,车干净', '2025-06-15 07:52:32', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (77, 211, 'DD20260508102859b7d581e9', 120, 135, 5, '整体满意，下次还会选择', '服务好', '2024-11-24 15:13:41', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (78, 213, 'DD2026050810285930d4945c', 306, 30, 4, '响应迅速，服务周到', '服务好', '2024-10-16 22:16:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (79, 215, 'DD202605081028598ff61b29', 458, 171, 4, '司机技术很好，路线规划合理', '驾驶稳,服务好,路线熟', '2024-10-24 18:38:37', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (80, 217, 'DD202605081028591e7665aa', 254, 122, 5, '响应迅速，服务周到', '路线熟,驾驶稳,准时', '2025-04-27 05:27:44', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (81, 218, 'DD202605081028595318aff0', 166, 62, 5, '服务非常好，司机很有礼貌', '路线熟,准时', '2025-01-28 22:43:39', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (82, 219, 'DD20260508102859ce35513b', 13, 56, 5, '准时到达，开车很稳', '', '2025-02-18 13:02:50', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (83, 220, 'DD202605081028593d21d131', 344, 94, 5, '准时到达，开车很稳', '车干净,服务好', '2025-06-23 17:47:01', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (84, 222, 'DD202605081028592a13072f', 426, 141, 5, '整体满意，下次还会选择', '路线熟', '2024-07-12 21:23:33', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (85, 223, 'DD20260508102859b40b154d', 230, 94, 4, '服务非常好，司机很有礼貌', '路线熟,态度好,驾驶稳', '2024-03-18 06:31:45', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (86, 227, 'DD202605081028591a55e0bf', 146, 185, 4, '车内很干净，体验不错', '路线熟,准时', '2024-03-01 15:28:15', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (87, 229, 'DD202605081028591ad84fe3', 237, 62, 5, '司机技术很好，路线规划合理', '', '2026-04-13 09:32:35', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (88, 233, 'DD20260508102859a56e2088', 301, 100, 5, '服务非常好，司机很有礼貌', '', '2024-10-12 05:16:36', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (89, 234, 'DD20260508102859b9d9bdb8', 11, 177, 4, '服务非常好，司机很有礼貌', '准时', '2024-07-11 16:48:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (90, 236, 'DD20260508102859f1bc2a9f', 352, 171, 5, '车内很干净，体验不错', '车干净,态度好', '2026-03-22 20:25:39', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (91, 238, 'DD20260508102859e03f6078', 332, 150, 5, '准时到达，开车很稳', '', '2024-10-04 18:31:51', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (92, 239, 'DD202605081028590c6ce7d5', 309, 116, 4, '车内很干净，体验不错', '服务好,路线熟', '2025-10-29 01:09:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (93, 241, 'DD20260508102859a8100d0c', 454, 171, 5, '响应迅速，服务周到', '驾驶稳,服务好', '2025-08-06 15:20:15', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (94, 243, 'DD2026050810285917971f33', 296, 108, 4, '司机技术很好，路线规划合理', '', '2024-02-11 22:41:28', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (95, 244, 'DD202605081028595d17f947', 231, 100, 5, '整体满意，下次还会选择', '路线熟,准时,车干净', '2026-03-11 22:48:10', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (96, 250, 'DD20260508102859549d3c89', 420, 110, 1, '路线不熟，绕路了', '车干净,准时,路线熟', '2026-02-13 13:09:12', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (97, 258, 'DD202605081028596b81db5c', 373, 157, 5, '车内很干净，体验不错', '驾驶稳,态度好,路线熟', '2024-06-30 02:14:05', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (98, 260, 'DD20260508102859dabf731e', 461, 108, 5, '司机技术很好，路线规划合理', '', '2026-05-03 12:00:38', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (99, 261, 'DD202605081028597ff2d3ba', 131, 32, 2, '路线不熟，绕路了', '', '2025-02-14 12:36:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (100, 262, 'DD20260508102859b53c3cfb', 458, 64, 5, '响应迅速，服务周到', '态度好', '2025-12-10 03:14:31', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (101, 265, 'DD20260508102859278330d5', 231, 137, 4, '服务非常好，司机很有礼貌', '驾驶稳,服务好,车干净', '2025-02-19 19:23:15', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (102, 268, 'DD20260508102859a73e07f3', 410, 56, 5, '整体满意，下次还会选择', '服务好', '2024-05-22 12:26:48', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (103, 275, 'DD20260508102859284de71b', 427, 116, 4, '整体满意，下次还会选择', '服务好,驾驶稳,态度好', '2024-10-31 18:03:54', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (104, 284, 'DD202605081028594b00452b', 200, 177, 4, '准时到达，开车很稳', '路线熟,驾驶稳,态度好', '2024-06-28 04:40:51', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (105, 286, 'DD20260508102859b2bcc3bd', 182, 116, 5, '整体满意，下次还会选择', '', '2025-08-29 21:43:49', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (106, 287, 'DD2026050810285993916b73', 307, 140, 4, '准时到达，开车很稳', '服务好,态度好,车干净', '2025-11-26 00:11:36', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (107, 288, 'DD202605081028590b5a905b', 261, 94, 4, '服务非常好，司机很有礼貌', '路线熟,准时,驾驶稳', '2024-06-26 08:20:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (108, 293, 'DD202605081028599863f812', 282, 116, 4, '整体满意，下次还会选择', '', '2024-03-06 03:49:39', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (109, 296, 'DD2026050810285959324ff3', 402, 140, 5, '整体满意，下次还会选择', '', '2026-03-27 13:55:33', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (110, 298, 'DD20260508102859d1bc0b19', 275, 180, 5, '车内很干净，体验不错', '车干净,态度好,驾驶稳', '2025-04-24 20:24:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (111, 300, 'DD2026050810285993411e4e', 123, 23, 5, '准时到达，开车很稳', '驾驶稳', '2025-02-28 21:01:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (112, 302, 'DD202605081028599d9eac5f', 72, 37, 3, '等待时间较长', '准时,驾驶稳', '2025-04-13 07:57:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (113, 304, 'DD202605081028596ce62750', 178, 72, 5, '车内很干净，体验不错', '车干净,服务好,态度好', '2025-12-02 00:08:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (114, 307, 'DD202605081028595c4297da', 398, 100, 5, '准时到达，开车很稳', '路线熟,车干净,准时', '2026-02-25 15:58:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (115, 308, 'DD20260508102859f7ff5b2b', 277, 45, 4, '响应迅速，服务周到', '态度好', '2026-04-13 18:55:17', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (116, 309, 'DD202605081028597466ee2c', 181, 62, 4, '整体满意，下次还会选择', '路线熟', '2024-12-21 16:50:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (117, 310, 'DD20260508102859f92052d8', 147, 137, 5, '服务非常好，司机很有礼貌', '驾驶稳,态度好,路线熟', '2024-01-23 20:32:30', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (118, 320, 'DD20260508102859b257950b', 324, 185, 1, '车内不太干净', '驾驶稳,态度好', '2024-08-09 07:33:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (119, 327, 'DD20260508102859f83b9880', 458, 116, 5, '响应迅速，服务周到', '准时,路线熟,驾驶稳', '2024-09-24 10:05:43', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (120, 329, 'DD20260508102859fb19eac1', 205, 150, 1, '车内不太干净', '路线熟,车干净,态度好', '2025-04-22 09:25:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (121, 333, 'DD202605081028590ef76991', 469, 45, 4, '整体满意，下次还会选择', '', '2026-04-13 01:38:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (122, 336, 'DD20260508102859dbf1b09a', 110, 43, 5, '准时到达，开车很稳', '车干净', '2024-02-10 13:43:18', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (123, 337, 'DD20260508102859a47ddd95', 375, 141, 4, '准时到达，开车很稳', '', '2025-12-30 12:22:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (124, 341, 'DD202605081028592180ecec', 51, 98, 4, '司机技术很好，路线规划合理', '', '2024-03-15 07:51:17', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (125, 342, 'DD2026050810285940684dc5', 370, 43, 4, '司机技术很好，路线规划合理', '驾驶稳,服务好,路线熟', '2025-04-10 12:25:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (126, 346, 'DD202605081028597427bee0', 70, 100, 4, '准时到达，开车很稳', '准时,驾驶稳,态度好', '2024-05-22 22:20:11', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (127, 349, 'DD20260508102859b3542b5a', 434, 135, 4, '车内很干净，体验不错', '驾驶稳', '2025-12-17 09:39:40', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (128, 352, 'DD202605081028597478c3e0', 55, 72, 5, '司机技术很好，路线规划合理', '驾驶稳,路线熟', '2025-04-22 21:33:51', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (129, 355, 'DD20260508102859daa907f2', 406, 157, 3, '等待时间较长', '', '2025-03-27 21:03:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (130, 356, 'DD20260508102859ad622ffa', 356, 135, 2, '路线不熟，绕路了', '服务好,准时,态度好', '2024-10-16 11:50:40', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (131, 357, 'DD2026050810285938427cf2', 268, 177, 4, '车内很干净，体验不错', '路线熟,准时,驾驶稳', '2024-03-15 07:40:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (132, 359, 'DD20260508102859e5802476', 7, 36, 2, '路线不熟，绕路了', '驾驶稳', '2026-02-21 22:24:15', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (133, 360, 'DD202605081028592e63a50d', 117, 23, 5, '准时到达，开车很稳', '驾驶稳,态度好', '2024-09-11 19:30:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (134, 361, 'DD202605081028593f5cf760', 167, 62, 2, '司机态度一般', '准时,路线熟,车干净', '2025-09-21 02:55:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (135, 366, 'DD20260508102859282fc5b1', 173, 11, 4, '车内很干净，体验不错', '车干净,态度好,路线熟', '2024-02-17 11:27:55', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (136, 369, 'DD20260508102859d6e6dc11', 382, 36, 4, '准时到达，开车很稳', '路线熟,服务好,准时', '2024-01-09 11:29:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (137, 372, 'DD202605081028595d5feef5', 263, 99, 3, '车内不太干净', '准时,服务好', '2025-05-16 05:19:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (138, 373, 'DD20260508102859a96f33a9', 55, 11, 3, '司机态度一般', '', '2024-03-05 07:22:48', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (139, 374, 'DD202605081028599dbdbf87', 10, 11, 5, '司机技术很好，路线规划合理', '车干净,路线熟,驾驶稳', '2024-12-11 08:19:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (140, 376, 'DD20260508102859618719cb', 339, 135, 3, '路线不熟，绕路了', '', '2024-07-21 19:17:31', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (141, 377, 'DD20260508102859db2372ad', 404, 94, 5, '整体满意，下次还会选择', '态度好', '2024-02-17 03:37:01', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (142, 380, 'DD20260508102859ec8e670c', 238, 32, 4, '准时到达，开车很稳', '车干净,驾驶稳', '2024-06-07 08:51:54', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (143, 382, 'DD20260508102859e0a8b309', 196, 32, 5, '整体满意，下次还会选择', '路线熟', '2024-09-20 18:28:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (144, 383, 'DD20260508102859e9455f75', 19, 180, 4, '司机技术很好，路线规划合理', '驾驶稳', '2025-10-21 17:29:46', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (145, 396, 'DD20260508102859ceef4449', 80, 129, 5, '整体满意，下次还会选择', '', '2025-09-25 12:01:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (146, 399, 'DD20260508102859bdd4b8ac', 170, 23, 3, '等待时间较长', '驾驶稳,车干净', '2025-05-30 04:04:46', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (147, 400, 'DD202605081028593d00a8fb', 244, 185, 4, '服务非常好，司机很有礼貌', '', '2025-12-17 23:31:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (148, 410, 'DD20260508102859e53e574d', 463, 11, 5, '响应迅速，服务周到', '态度好', '2026-01-29 06:23:05', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (149, 411, 'DD20260508102859d781ce52', 171, 72, 5, '司机技术很好，路线规划合理', '态度好,路线熟', '2024-06-24 17:59:49', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (150, 412, 'DD20260508102859744e771b', 172, 43, 5, '车内很干净，体验不错', '车干净', '2026-04-11 18:34:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (151, 416, 'DD20260508102859be80e27b', 499, 11, 5, '司机技术很好，路线规划合理', '路线熟,服务好', '2026-03-16 11:49:13', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (152, 422, 'DD202605081028597a658cee', 145, 122, 3, '车内不太干净', '', '2024-08-02 01:28:36', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (153, 424, 'DD20260508102859a84e1bad', 380, 122, 1, '路线不熟，绕路了', '路线熟,服务好', '2025-05-22 19:52:47', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (154, 425, 'DD20260508102859f1c81b0b', 163, 94, 5, '响应迅速，服务周到', '车干净', '2024-12-28 05:38:07', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (155, 426, 'DD202605081028591091a95e', 135, 100, 5, '准时到达，开车很稳', '车干净,驾驶稳', '2024-01-12 17:24:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (156, 430, 'DD202605081028594d2d5077', 50, 135, 4, '准时到达，开车很稳', '驾驶稳,态度好', '2024-07-20 05:56:10', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (157, 431, 'DD2026050810285966d9406a', 250, 49, 5, '整体满意，下次还会选择', '服务好,准时,态度好', '2024-04-08 16:02:59', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (158, 432, 'DD202605081028596e8e7c40', 85, 72, 5, '整体满意，下次还会选择', '路线熟', '2024-09-13 06:24:09', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (159, 434, 'DD202605081028594b8ead72', 341, 171, 5, '整体满意，下次还会选择', '车干净', '2024-05-28 11:42:48', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (160, 435, 'DD2026050810285972f26d04', 375, 185, 5, '司机技术很好，路线规划合理', '', '2024-03-18 07:13:02', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (161, 436, 'DD20260508102859db244f79', 169, 99, 4, '准时到达，开车很稳', '', '2025-11-10 20:05:35', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (162, 437, 'DD20260508102859411febb3', 72, 11, 4, '准时到达，开车很稳', '车干净,服务好,路线熟', '2024-01-23 06:51:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (163, 438, 'DD2026050810285978595982', 387, 135, 5, '整体满意，下次还会选择', '态度好,驾驶稳', '2024-04-19 14:18:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (164, 440, 'DD202605081028595ca08777', 436, 122, 4, '车内很干净，体验不错', '驾驶稳', '2025-11-09 03:05:42', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (165, 443, 'DD20260508102859ad234b9e', 268, 171, 3, '车内不太干净', '准时', '2026-01-19 11:38:28', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (166, 447, 'DD20260508102859146f229e', 245, 106, 4, '司机技术很好，路线规划合理', '', '2024-08-16 10:54:21', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (167, 448, 'DD2026050810285924ffe145', 402, 23, 5, '车内很干净，体验不错', '准时', '2025-10-21 03:22:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (168, 450, 'DD202605081028594f2aadc8', 499, 137, 1, '司机态度一般', '驾驶稳', '2025-05-29 02:57:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (169, 452, 'DD2026050810285976b2f006', 482, 64, 4, '准时到达，开车很稳', '', '2026-02-20 13:34:35', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (170, 453, 'DD20260508102859b4765445', 341, 122, 5, '整体满意，下次还会选择', '态度好', '2024-03-29 04:37:03', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (171, 455, 'DD20260508102859878cd77f', 208, 141, 5, '司机技术很好，路线规划合理', '车干净,态度好,准时', '2026-04-20 15:20:11', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (172, 456, 'DD20260508102859fd4b6ffd', 278, 11, 4, '车内很干净，体验不错', '态度好,服务好,驾驶稳', '2024-11-27 07:40:23', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (173, 459, 'DD2026050810285922a4211f', 60, 135, 5, '司机技术很好，路线规划合理', '', '2025-02-15 06:36:05', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (174, 463, 'DD202605081028594db7a259', 205, 110, 5, '车内很干净，体验不错', '', '2024-01-30 18:57:05', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (175, 464, 'DD20260508102859b6d4857c', 73, 177, 4, '服务非常好，司机很有礼貌', '路线熟,驾驶稳', '2024-03-15 13:42:46', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (176, 465, 'DD20260508102859ac9903f0', 25, 62, 4, '整体满意，下次还会选择', '', '2026-01-20 12:45:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (177, 469, 'DD202605081028591191f0b2', 61, 110, 4, '整体满意，下次还会选择', '服务好', '2024-06-06 00:25:27', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (178, 471, 'DD20260508102859ca530a54', 111, 45, 4, '司机技术很好，路线规划合理', '路线熟,准时', '2025-07-15 08:22:43', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (179, 474, 'DD202605081028597a35c84f', 360, 94, 5, '服务非常好，司机很有礼貌', '态度好', '2025-12-30 11:48:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (180, 475, 'DD2026050810285947684611', 284, 62, 4, '响应迅速，服务周到', '', '2024-03-18 02:06:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (181, 476, 'DD20260508102859e247ea99', 314, 95, 4, '响应迅速，服务周到', '', '2024-08-05 08:10:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (182, 477, 'DD202605081028594deb9ca5', 282, 137, 5, '响应迅速，服务周到', '态度好,驾驶稳,路线熟', '2025-12-13 18:56:29', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (183, 478, 'DD202605081028596bb9cc61', 451, 95, 5, '车内很干净，体验不错', '驾驶稳,服务好', '2024-01-26 05:42:43', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (184, 479, 'DD2026050810285969ab99f2', 15, 37, 5, '车内很干净，体验不错', '服务好', '2025-07-29 01:22:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (185, 483, 'DD20260508102859ebc21cc8', 393, 100, 4, '响应迅速，服务周到', '态度好,车干净', '2025-06-12 01:23:52', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (186, 485, 'DD20260508102859b7771070', 183, 11, 4, '准时到达，开车很稳', '驾驶稳', '2025-11-21 20:15:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (187, 486, 'DD20260508102859e3251661', 497, 159, 4, '整体满意，下次还会选择', '驾驶稳', '2024-08-28 01:30:31', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (188, 489, 'DD20260508102859f84da0b7', 409, 177, 5, '司机技术很好，路线规划合理', '', '2024-02-25 08:05:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (189, 491, 'DD202605081028594dc8e3a5', 299, 177, 5, '准时到达，开车很稳', '态度好,路线熟', '2026-01-21 00:28:45', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (190, 492, 'DD202605081028590ee26462', 344, 135, 5, '车内很干净，体验不错', '', '2025-11-25 09:24:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (191, 493, 'DD2026050810285940e17eca', 403, 62, 4, '整体满意，下次还会选择', '准时', '2026-04-25 06:58:01', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (192, 500, 'DD202605081028590e026f7c', 311, 177, 4, '服务非常好，司机很有礼貌', '', '2026-01-06 06:19:38', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (193, 507, 'DD20260508102859cc0d3ed7', 232, 150, 5, '整体满意，下次还会选择', '驾驶稳,车干净', '2024-07-10 05:12:36', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (194, 509, 'DD202605081028596412f1d4', 199, 49, 4, '车内很干净，体验不错', '', '2024-11-29 19:50:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (195, 510, 'DD202605081028590cb2c73c', 110, 43, 5, '响应迅速，服务周到', '', '2025-01-24 03:44:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (196, 513, 'DD20260508102859e8f677b8', 244, 159, 5, '整体满意，下次还会选择', '', '2024-12-26 05:21:59', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (197, 520, 'DD20260508102859e30530f7', 176, 159, 5, '司机技术很好，路线规划合理', '态度好,驾驶稳', '2025-05-06 02:27:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (198, 522, 'DD2026050810285962bb0327', 228, 194, 5, '服务非常好，司机很有礼貌', '车干净', '2026-02-10 09:09:54', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (199, 526, 'DD202605081028591c11ab40', 341, 157, 4, '整体满意，下次还会选择', '服务好', '2024-12-16 04:39:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (200, 528, 'DD20260508102859b891061b', 339, 177, 5, '准时到达，开车很稳', '车干净,服务好', '2025-02-25 12:43:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (201, 531, 'DD20260508102859454c5f71', 487, 140, 5, '服务非常好，司机很有礼貌', '', '2024-12-06 16:59:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (202, 532, 'DD20260508102859d179e2ed', 21, 43, 5, '服务非常好，司机很有礼貌', '驾驶稳,服务好', '2025-04-30 17:00:41', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (203, 533, 'DD2026050810285901179bc1', 219, 30, 5, '车内很干净，体验不错', '路线熟', '2025-02-21 15:31:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (204, 534, 'DD2026050810285969e85b26', 358, 180, 1, '等待时间较长', '准时,态度好', '2024-10-13 19:22:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (205, 537, 'DD20260508102859960422fb', 455, 62, 5, '准时到达，开车很稳', '', '2025-07-03 14:06:49', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (206, 540, 'DD20260508102859069a1c87', 294, 37, 5, '服务非常好，司机很有礼貌', '态度好,车干净,驾驶稳', '2025-01-01 21:10:27', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (207, 548, 'DD2026050810285924a0c1ca', 79, 43, 3, '司机态度一般', '驾驶稳,准时', '2024-10-28 16:54:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (208, 552, 'DD2026050810285912c9227f', 262, 1, 1, '路线不熟，绕路了', '驾驶稳,准时', '2025-03-24 15:52:35', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (209, 554, 'DD20260508102859b3bf60fa', 111, 137, 5, '整体满意，下次还会选择', '路线熟', '2025-05-03 20:48:35', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (210, 555, 'DD20260508102859413627c3', 277, 177, 4, '司机技术很好，路线规划合理', '车干净,服务好,路线熟', '2024-12-13 07:51:37', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (211, 556, 'DD20260508102859695be5ef', 424, 171, 1, '车内不太干净', '', '2024-03-14 11:59:50', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (212, 558, 'DD202605081028597ec32995', 203, 116, 5, '司机技术很好，路线规划合理', '路线熟,车干净', '2025-11-11 02:28:50', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (213, 560, 'DD20260508102859bc3af106', 374, 140, 4, '准时到达，开车很稳', '', '2024-04-24 03:37:45', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (214, 561, 'DD20260508102859f6001a7c', 248, 137, 4, '整体满意，下次还会选择', '驾驶稳,车干净,服务好', '2025-08-29 16:47:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (215, 566, 'DD20260508102859c2a3a541', 366, 45, 5, '车内很干净，体验不错', '', '2025-05-14 04:27:21', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (216, 570, 'DD20260508102859658590b5', 436, 23, 4, '司机技术很好，路线规划合理', '', '2025-08-13 09:09:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (217, 573, 'DD202605081028592ca10768', 45, 99, 5, '整体满意，下次还会选择', '驾驶稳,态度好,路线熟', '2025-09-05 00:20:34', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (218, 575, 'DD20260508102859c1bbad45', 427, 122, 5, '服务非常好，司机很有礼貌', '态度好', '2025-06-18 16:41:23', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (219, 578, 'DD202605081028594c750514', 175, 100, 5, '司机技术很好，路线规划合理', '路线熟,驾驶稳,准时', '2025-04-30 20:04:03', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (220, 587, 'DD20260508102859553dee3e', 276, 62, 5, '整体满意，下次还会选择', '态度好', '2025-07-17 07:35:17', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (221, 588, 'DD2026050810285983d4b62a', 430, 37, 5, '车内很干净，体验不错', '态度好', '2026-03-19 17:06:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (222, 589, 'DD20260508102859b3249d8e', 150, 100, 5, '整体满意，下次还会选择', '', '2024-09-24 11:22:31', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (223, 590, 'DD202605081028599d192868', 73, 185, 5, '响应迅速，服务周到', '服务好', '2025-05-22 15:03:42', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (224, 592, 'DD2026050810285919d68d93', 11, 185, 4, '司机技术很好，路线规划合理', '路线熟,态度好', '2026-02-24 17:28:46', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (225, 596, 'DD2026050810285966275668', 399, 108, 3, '车内不太干净', '服务好', '2025-11-21 04:18:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (226, 597, 'DD20260508102859dbb84d5d', 419, 95, 5, '整体满意，下次还会选择', '驾驶稳', '2025-01-07 22:01:41', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (227, 598, 'DD202605081028599f79f708', 187, 62, 3, '车内不太干净', '驾驶稳,服务好', '2025-09-05 12:45:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (228, 602, 'DD2026050810285990530236', 177, 45, 5, '响应迅速，服务周到', '态度好,准时,路线熟', '2025-01-17 13:47:52', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (229, 605, 'DD20260508102859c82ae9e9', 163, 45, 5, '准时到达，开车很稳', '态度好,车干净', '2024-08-09 05:53:42', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (230, 607, 'DD202605081028590b856d19', 353, 140, 3, '司机态度一般', '驾驶稳,车干净', '2025-06-14 20:05:21', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (231, 610, 'DD20260508102859f3d606fb', 35, 64, 3, '司机态度一般', '态度好,服务好', '2024-04-29 18:54:37', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (232, 617, 'DD2026050810285938f73edc', 191, 108, 5, '准时到达，开车很稳', '驾驶稳,服务好,车干净', '2026-02-28 02:24:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (233, 622, 'DD202605081028597346781d', 20, 62, 5, '车内很干净，体验不错', '车干净,驾驶稳', '2024-12-15 13:01:46', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (234, 624, 'DD20260508102859dcf55595', 323, 23, 4, '准时到达，开车很稳', '路线熟,态度好', '2025-04-04 14:45:59', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (235, 627, 'DD202605081028594032014d', 76, 98, 5, '整体满意，下次还会选择', '车干净', '2024-01-12 21:48:45', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (236, 629, 'DD2026050810285978bd814f', 445, 100, 3, '等待时间较长', '服务好,驾驶稳,态度好', '2024-06-06 13:23:06', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (237, 630, 'DD20260508102859fc74e592', 289, 37, 3, '等待时间较长', '车干净', '2024-09-15 07:12:34', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (238, 632, 'DD2026050810285964146937', 351, 122, 3, '等待时间较长', '车干净', '2025-12-12 01:39:29', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (239, 635, 'DD20260508102859e432c96c', 480, 1, 4, '服务非常好，司机很有礼貌', '服务好', '2025-06-03 08:30:45', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (240, 637, 'DD20260508102859188c9089', 467, 62, 1, '等待时间较长', '服务好,准时', '2026-02-20 17:04:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (241, 641, 'DD20260508102859c1545709', 474, 157, 5, '司机技术很好，路线规划合理', '', '2025-12-01 13:31:40', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (242, 642, 'DD20260508102859283d5054', 139, 30, 5, '车内很干净，体验不错', '路线熟,服务好,态度好', '2024-11-06 07:51:39', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (243, 643, 'DD20260508102859f5a32811', 332, 23, 5, '准时到达，开车很稳', '驾驶稳,车干净,路线熟', '2024-10-15 19:32:17', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (244, 645, 'DD20260508102859c38e64e0', 109, 49, 3, '路线不熟，绕路了', '', '2024-04-24 21:33:08', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (245, 646, 'DD2026050810285916cb29da', 117, 177, 4, '服务非常好，司机很有礼貌', '', '2026-04-28 10:51:37', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (246, 649, 'DD202605081028593fa12688', 404, 45, 5, '司机技术很好，路线规划合理', '车干净,准时', '2026-03-03 21:08:34', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (247, 653, 'DD202605081028594bcdeb37', 186, 23, 4, '响应迅速，服务周到', '', '2024-01-16 09:42:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (248, 655, 'DD20260508102859bc94b766', 217, 100, 5, '整体满意，下次还会选择', '准时', '2025-03-06 04:26:39', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (249, 658, 'DD202605081028598fd75747', 2, 137, 5, '准时到达，开车很稳', '', '2025-02-20 05:43:42', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (250, 660, 'DD20260508102859e79f9e65', 223, 98, 4, '司机技术很好，路线规划合理', '服务好', '2025-05-29 21:51:23', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (251, 663, 'DD202605081028596424ee52', 250, 141, 5, '整体满意，下次还会选择', '车干净', '2025-09-06 14:36:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (252, 665, 'DD20260508102859a030b712', 234, 150, 4, '整体满意，下次还会选择', '', '2025-06-18 10:40:55', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (253, 666, 'DD20260508102859d9db800b', 69, 11, 5, '车内很干净，体验不错', '驾驶稳,服务好', '2026-02-25 02:50:56', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (254, 667, 'DD20260508102859885700b3', 446, 150, 5, '响应迅速，服务周到', '准时,车干净,路线熟', '2026-01-18 01:38:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (255, 671, 'DD2026050810285984b6035b', 423, 30, 4, '服务非常好，司机很有礼貌', '驾驶稳,服务好,准时', '2024-03-30 18:27:43', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (256, 672, 'DD20260508102859dad6e0bc', 264, 108, 4, '车内很干净，体验不错', '态度好,准时', '2025-11-09 22:44:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (257, 673, 'DD2026050810285903d15223', 486, 141, 5, '服务非常好，司机很有礼貌', '驾驶稳', '2026-04-15 15:40:44', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (258, 676, 'DD20260508102859602e86f9', 31, 95, 5, '司机技术很好，路线规划合理', '驾驶稳', '2026-01-07 19:43:41', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (259, 678, 'DD20260508102859bac4c59b', 60, 100, 4, '准时到达，开车很稳', '', '2025-03-22 19:20:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (260, 680, 'DD202605081028597187049a', 265, 150, 2, '路线不熟，绕路了', '路线熟,服务好', '2024-11-29 21:54:57', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (261, 693, 'DD20260508102859bd75a468', 183, 140, 5, '司机技术很好，路线规划合理', '', '2024-02-21 05:50:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (262, 695, 'DD20260508102859d19db743', 263, 171, 2, '等待时间较长', '准时', '2025-11-26 03:27:51', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (263, 696, 'DD20260508102859f4a36c45', 98, 137, 2, '等待时间较长', '驾驶稳,服务好,车干净', '2025-01-19 18:26:36', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (264, 698, 'DD2026050810285902b4217b', 368, 116, 4, '服务非常好，司机很有礼貌', '路线熟,准时', '2025-04-20 11:23:44', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (265, 702, 'DD2026050810285971f6ab74', 499, 45, 4, '准时到达，开车很稳', '准时,态度好,路线熟', '2025-12-19 15:21:41', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (266, 703, 'DD20260508102859ca8d194e', 35, 110, 4, '司机技术很好，路线规划合理', '车干净,准时,驾驶稳', '2024-08-03 20:39:52', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (267, 712, 'DD2026050810285910981d4e', 281, 150, 3, '等待时间较长', '准时,态度好', '2024-01-14 00:26:46', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (268, 714, 'DD2026050810285960fbd9da', 442, 108, 4, '响应迅速，服务周到', '', '2024-11-27 10:35:20', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (269, 719, 'DD20260508102859cdfb29fd', 103, 1, 5, '服务非常好，司机很有礼貌', '', '2025-01-07 10:33:25', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (270, 722, 'DD20260508102859cd07a2f8', 490, 94, 5, '准时到达，开车很稳', '准时', '2025-09-18 01:24:10', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (271, 729, 'DD2026050810285958772e96', 83, 95, 4, '响应迅速，服务周到', '服务好,车干净', '2025-07-22 20:42:08', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (272, 733, 'DD2026050810285934096617', 331, 185, 5, '车内很干净，体验不错', '服务好,车干净,准时', '2024-07-16 01:58:02', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (273, 742, 'DD20260508102859be960bd4', 340, 62, 5, '响应迅速，服务周到', '驾驶稳,路线熟,服务好', '2025-10-27 09:00:16', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (274, 745, 'DD20260508102859e4b38988', 88, 49, 4, '准时到达，开车很稳', '路线熟,服务好,准时', '2025-12-07 02:51:33', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (275, 750, 'DD2026050810285973b19375', 326, 64, 2, '路线不熟，绕路了', '态度好', '2026-05-02 14:13:32', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (276, 751, 'DD2026050810285951c58163', 27, 37, 3, '车内不太干净', '驾驶稳', '2025-02-08 06:57:14', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (277, 752, 'DD20260508102859b985d585', 283, 45, 5, '服务非常好，司机很有礼貌', '车干净', '2025-04-29 16:27:51', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (278, 753, 'DD202605081028590a5adad3', 200, 23, 5, '司机技术很好，路线规划合理', '路线熟', '2024-08-23 00:12:53', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (279, 755, 'DD2026050810285972de5995', 130, 140, 5, '响应迅速，服务周到', '服务好,态度好,驾驶稳', '2024-12-07 19:12:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (280, 757, 'DD202605081028599c9729ac', 166, 141, 4, '整体满意，下次还会选择', '车干净,服务好', '2024-05-02 15:59:24', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (281, 758, 'DD202605081028590ef19ea3', 41, 11, 4, '整体满意，下次还会选择', '', '2025-11-24 22:07:10', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (282, 760, 'DD2026050810285960aa4254', 93, 177, 5, '车内很干净，体验不错', '车干净,服务好', '2026-03-23 15:30:54', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (283, 771, 'DD20260508102859335bd257', 330, 72, 4, '司机技术很好，路线规划合理', '准时', '2025-04-13 06:57:26', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (284, 774, 'DD2026050810285939e8075b', 407, 180, 5, '司机技术很好，路线规划合理', '服务好,态度好', '2026-03-20 11:42:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (285, 778, 'DD202605081028595fdf16e1', 190, 185, 5, '准时到达，开车很稳', '车干净', '2024-09-04 00:45:41', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (286, 783, 'DD2026050810285993174ace', 476, 140, 5, '司机技术很好，路线规划合理', '', '2024-12-14 17:15:44', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (287, 785, 'DD20260508102859f3db392b', 150, 122, 5, '车内很干净，体验不错', '驾驶稳', '2026-03-24 00:06:02', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (288, 788, 'DD20260508102859426eddd8', 216, 43, 4, '准时到达，开车很稳', '态度好', '2026-04-26 15:38:04', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (289, 791, 'DD20260508102859e7ce43a3', 63, 157, 5, '准时到达，开车很稳', '态度好', '2025-02-26 11:22:19', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (290, 797, 'DD20260508102859a8967fa6', 227, 171, 2, '司机态度一般', '准时,态度好', '2025-06-13 18:40:22', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (291, 798, 'DD2026050810285984f124d2', 446, 129, 5, '响应迅速，服务周到', '路线熟,车干净,态度好', '2024-07-14 04:06:38', 1, '2026-05-08 10:29:46');
INSERT INTO `driver_comment` VALUES (292, 799, 'DD20260508102859475125ca', 178, 150, 5, '车内很干净，体验不错', '态度好,车干净,准时', '2024-05-18 03:25:42', 1, '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '司机实时状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of driver_status
-- ----------------------------
INSERT INTO `driver_status` VALUES (1, 1, 1, 119.552957, 41.193947, 'fxhj885qws', 4.72, 84.12, 1, '2026-05-09 06:06:19', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (2, 2, 0, 116.963417, 40.046307, '6fzk0hkyqy', 4.38, 94.29, 0, '2026-05-08 19:13:51', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (3, 3, 0, 117.850711, 40.351805, 'swws4dewut', 4.77, 95.63, 0, '2026-05-08 22:25:08', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (4, 4, 1, 119.656015, 39.675809, '8vdpcm9muv', 4.18, 90.24, 0, '2026-05-08 18:51:02', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (5, 5, 0, 117.600867, 39.304481, 'yd2py8wg5u', 4.77, 82.15, 0, '2026-05-08 15:22:32', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (6, 6, 1, 116.045876, 41.936422, '890k03q2gy', 4.68, 86.29, 0, '2026-05-08 10:51:07', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (7, 7, 1, 117.475237, 39.878715, 'kmr89qv5rm', 4.59, 82.13, 0, '2026-05-08 09:50:45', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (8, 8, 0, 119.254479, 41.725065, 'hh7565t49u', 4.57, 85.09, 1, '2026-05-08 10:09:07', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (9, 9, 0, 117.615070, 41.628810, 'upk81eemfs', 4.35, 85.97, 0, '2026-05-08 12:49:20', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (10, 10, 0, 119.293002, 41.314589, 'u1wus0hf25', 4.29, 99.20, 0, '2026-05-08 12:15:22', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (11, 11, 1, 117.121147, 41.277861, 'k755beknzh', 4.29, 89.26, 1, '2026-05-09 07:00:10', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (12, 12, 1, 116.953949, 39.884409, '5nvjr7jvc7', 4.66, 83.71, 0, '2026-05-08 15:41:30', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (13, 13, 2, 119.130682, 39.057915, '02qmtux7mb', 4.82, 93.86, 0, '2026-05-08 17:09:26', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (14, 14, 2, 118.407864, 40.318965, 'x1sy1mhy3s', 4.17, 93.29, 0, '2026-05-08 17:31:16', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (15, 15, 2, 117.863479, 39.869386, 'n919ujy8w4', 4.67, 88.37, 1, '2026-05-08 15:03:59', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (16, 16, 2, 119.176773, 39.782420, 'kt74ngwcyq', 4.98, 83.10, 0, '2026-05-08 15:36:18', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (17, 17, 2, 119.306744, 41.058871, '4909k2jwhw', 4.19, 89.82, 0, '2026-05-08 09:10:10', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (18, 18, 2, 118.960558, 41.812581, 'ygbjr2wj1p', 4.93, 86.39, 0, '2026-05-08 18:26:48', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (19, 19, 2, 117.490182, 41.268063, '658gmec59r', 4.54, 80.64, 0, '2026-05-08 12:34:15', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (20, 20, 1, 117.143940, 41.519988, '231twq4d8q', 4.49, 90.19, 0, '2026-05-09 03:40:49', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (21, 21, 1, 116.310494, 40.388716, '1fku8zunp3', 4.96, 85.27, 0, '2026-05-09 03:21:04', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (22, 22, 0, 118.081132, 40.628526, 'hgjfvfxqg2', 4.24, 84.20, 0, '2026-05-08 18:26:11', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (23, 23, 2, 116.801942, 40.405839, '4y0kbnv8cj', 4.74, 87.77, 1, '2026-05-09 05:25:55', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (24, 24, 2, 118.884192, 40.797543, 'rs4jvgcf80', 4.63, 96.83, 0, '2026-05-08 13:35:35', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (25, 25, 0, 116.574457, 41.144108, 'spu3fyvywn', 4.69, 88.92, 1, '2026-05-08 22:01:52', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (26, 26, 0, 116.013649, 40.352738, '3n7zu33z8q', 4.60, 99.79, 0, '2026-05-08 11:37:55', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (27, 27, 0, 118.329573, 40.606786, 'wcrnx2xpg0', 4.39, 89.29, 0, '2026-05-08 21:06:41', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (28, 28, 0, 119.478126, 39.806042, 'ynzk9d1d12', 4.52, 86.81, 0, '2026-05-08 21:11:51', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (29, 29, 0, 119.154039, 40.198429, '7yy6emk61d', 4.84, 94.28, 0, '2026-05-08 17:53:05', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (30, 30, 2, 119.002116, 41.717608, 'srtqmudymr', 4.99, 94.86, 1, '2026-05-08 23:25:43', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (31, 31, 2, 119.767828, 41.738015, '6mqft0uyv3', 4.84, 89.13, 0, '2026-05-09 07:16:15', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (32, 32, 1, 116.767633, 41.577844, 'tbggqhtvdn', 4.29, 87.78, 1, '2026-05-08 14:40:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (33, 33, 2, 118.170045, 40.250593, 'bpcjzxcn61', 4.27, 89.24, 0, '2026-05-08 17:04:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (34, 34, 1, 117.451165, 40.992652, 'gtu4t6eryw', 4.33, 98.14, 0, '2026-05-08 15:26:04', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (35, 35, 0, 118.606266, 41.901500, 'dtgn079wc4', 4.45, 83.82, 0, '2026-05-08 09:41:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (36, 36, 1, 118.834574, 40.276999, 'csv6v37sex', 4.31, 96.98, 1, '2026-05-08 10:44:02', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (37, 37, 2, 118.997555, 41.461522, 'dx47fwyc4e', 4.38, 89.69, 1, '2026-05-08 13:02:12', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (38, 38, 1, 117.497873, 40.620102, '8dc3tp24qw', 4.27, 97.83, 0, '2026-05-09 08:04:02', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (39, 39, 2, 118.619742, 39.496370, '1bt58km4dq', 4.43, 94.21, 0, '2026-05-08 20:38:15', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (40, 40, 2, 116.628887, 40.611494, 'p6g7kz7f3v', 4.25, 82.77, 0, '2026-05-08 21:01:36', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (41, 41, 0, 116.884302, 39.567773, 'exhfs3hm9e', 4.49, 95.40, 0, '2026-05-09 00:57:58', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (42, 42, 0, 119.906582, 41.495073, 'sp0pxpmyj8', 4.48, 90.99, 0, '2026-05-08 18:19:39', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (43, 43, 1, 119.779792, 41.685432, '4pzxxdnq5x', 4.81, 95.04, 1, '2026-05-09 03:42:33', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (44, 44, 2, 117.197740, 40.469485, 'y7dpn3uz1e', 4.91, 93.65, 0, '2026-05-08 17:23:48', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (45, 45, 2, 119.950080, 39.144553, '9k8t33qnw7', 4.93, 96.60, 1, '2026-05-08 13:09:28', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (46, 46, 0, 116.977879, 40.608652, 'ssdy971fpm', 4.90, 99.19, 0, '2026-05-09 01:30:03', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (47, 47, 0, 116.712065, 41.976372, 'fghwyrjg0y', 4.98, 96.70, 1, '2026-05-08 17:34:30', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (48, 48, 0, 117.587726, 39.663170, 'xgd0vnq7hf', 4.09, 89.36, 0, '2026-05-08 21:22:23', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (49, 49, 1, 118.630665, 40.556923, 'h5ekqu2s3g', 4.38, 80.60, 1, '2026-05-08 19:08:05', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (50, 50, 0, 116.409266, 39.471281, '3bnbx3brhg', 4.14, 83.18, 1, '2026-05-08 19:37:54', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (51, 51, 2, 117.580869, 41.829800, 'hcgxvh7jcy', 4.35, 95.27, 0, '2026-05-08 22:01:51', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (52, 52, 1, 117.442882, 40.408446, 'ksweewu08f', 4.64, 82.49, 0, '2026-05-09 06:45:47', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (53, 53, 0, 116.052878, 41.589731, 'e7fqmuth1d', 4.36, 80.35, 1, '2026-05-09 00:33:11', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (54, 54, 0, 119.478781, 39.718662, '8hy66hg22k', 4.52, 84.42, 0, '2026-05-08 13:01:14', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (55, 55, 0, 118.350151, 41.095420, '91cfcbmn2y', 4.81, 88.73, 0, '2026-05-08 11:35:38', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (56, 56, 2, 117.204652, 39.512150, 'd4kj4gqu8v', 4.31, 89.70, 1, '2026-05-08 13:42:00', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (57, 57, 1, 118.221839, 39.006422, 'w7r9wbgg7r', 4.82, 98.28, 1, '2026-05-08 19:14:18', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (58, 58, 1, 118.849349, 39.037634, 'x05hz529jn', 4.75, 95.20, 0, '2026-05-08 11:05:57', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (59, 59, 1, 118.182142, 39.681921, '3xqnqhec7k', 4.55, 82.55, 0, '2026-05-08 21:21:12', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (60, 60, 2, 118.334150, 41.530899, 'q85pkdqyhx', 4.95, 99.97, 0, '2026-05-08 11:10:11', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (61, 61, 2, 118.768879, 41.518987, '8vmwpqhdg5', 4.75, 93.74, 0, '2026-05-08 21:04:20', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (62, 62, 2, 119.534841, 40.987554, '77vxyecfyd', 4.85, 94.68, 1, '2026-05-08 23:07:45', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (63, 63, 2, 116.979191, 40.905540, 'e41nr5vewy', 4.67, 81.11, 1, '2026-05-09 04:45:28', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (64, 64, 1, 116.217198, 40.256107, '9jp82zt87w', 4.71, 84.93, 1, '2026-05-08 18:38:52', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (65, 65, 1, 118.157370, 39.723478, 'gxjfu8fwjb', 4.34, 92.36, 0, '2026-05-08 20:52:14', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (66, 66, 2, 116.254459, 39.905619, 'qq86991hwg', 4.14, 86.18, 0, '2026-05-08 12:40:44', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (67, 67, 2, 116.328423, 39.996916, 'ezg05qxcuq', 4.54, 87.37, 0, '2026-05-08 16:12:07', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (68, 68, 2, 118.342227, 41.248522, '0w1r4gf61j', 4.91, 88.37, 0, '2026-05-08 21:54:21', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (69, 69, 2, 118.988549, 39.891423, 'ccqybhng08', 4.75, 93.96, 0, '2026-05-09 04:56:11', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (70, 70, 2, 117.815003, 40.937809, '77u4ngheq7', 4.29, 85.27, 0, '2026-05-09 01:24:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (71, 71, 0, 118.810492, 40.790749, 'm1spmqw7hf', 4.40, 94.18, 0, '2026-05-08 20:03:24', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (72, 72, 1, 119.460818, 41.494825, '0jscqgsn1s', 4.79, 94.44, 1, '2026-05-08 22:45:06', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (73, 73, 0, 118.670069, 41.938731, 'tc18zum234', 4.32, 85.17, 1, '2026-05-08 13:10:33', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (74, 74, 2, 118.573594, 41.518451, '5uqvs32vgx', 4.85, 96.79, 0, '2026-05-08 23:52:17', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (75, 75, 0, 118.612196, 41.124655, 'e7p9d5mgcm', 4.16, 80.50, 0, '2026-05-08 21:19:36', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (76, 76, 1, 116.978644, 39.460061, '2n0xf5s4yx', 4.35, 99.69, 0, '2026-05-08 12:12:47', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (77, 77, 0, 119.196188, 41.790450, '7cfhw22cdj', 4.32, 93.09, 0, '2026-05-08 12:35:32', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (78, 78, 0, 116.899933, 41.812476, '77y49xbfy1', 4.27, 97.07, 0, '2026-05-09 03:45:27', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (79, 79, 1, 118.014224, 40.652818, 'hzk5eh1e33', 4.81, 98.00, 0, '2026-05-08 13:11:52', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (80, 80, 2, 119.527776, 41.564672, '3qhyknhezn', 4.31, 96.48, 1, '2026-05-08 19:38:25', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (81, 81, 2, 119.378119, 39.219690, '972tng98m8', 4.84, 85.82, 0, '2026-05-09 06:07:17', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (82, 82, 0, 117.084950, 39.495686, '3dg49z5ym5', 4.18, 98.95, 0, '2026-05-08 09:52:06', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (83, 83, 0, 116.343080, 39.380628, 'qrmugsmhhm', 4.62, 82.86, 0, '2026-05-09 02:31:06', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (84, 84, 1, 117.939381, 40.287790, '29yrumgxjn', 4.68, 95.73, 1, '2026-05-09 00:34:53', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (85, 85, 1, 118.717639, 40.002424, 'vc7psqtm00', 4.15, 87.34, 0, '2026-05-09 03:11:41', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (86, 86, 1, 119.659732, 40.089685, 'xs2992qyfm', 4.95, 97.93, 0, '2026-05-08 18:51:46', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (87, 87, 2, 117.922999, 41.638889, 'vxmee3ttsk', 4.92, 91.06, 1, '2026-05-09 04:13:44', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (88, 88, 0, 117.577058, 41.026521, 'umhtnehgu1', 4.71, 93.01, 0, '2026-05-08 09:32:47', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (89, 89, 1, 117.531449, 40.002487, 'zsqhpn1rzk', 4.88, 83.75, 0, '2026-05-08 10:45:35', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (90, 90, 1, 118.435566, 39.750041, 'ekm4yysxjg', 4.02, 96.38, 0, '2026-05-08 22:52:21', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (91, 91, 2, 118.801197, 40.394391, 'psy086c041', 4.22, 88.78, 0, '2026-05-08 10:53:04', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (92, 92, 0, 117.204380, 41.595418, '57unws7mzp', 4.09, 95.66, 0, '2026-05-09 00:16:02', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (93, 93, 0, 117.964764, 40.148938, '6037jz4d41', 4.46, 94.70, 1, '2026-05-09 05:42:06', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (94, 94, 1, 117.725129, 39.025359, 'thc28fn9nc', 4.03, 98.19, 1, '2026-05-09 05:09:12', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (95, 95, 2, 117.329719, 40.154157, '3kbd1mgg7u', 4.89, 97.20, 1, '2026-05-09 07:51:22', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (96, 96, 0, 117.227112, 39.970906, 'c2m7hhkz85', 4.64, 96.25, 0, '2026-05-08 10:43:37', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (97, 97, 2, 119.798921, 39.022776, 'tre6gjcqcw', 4.59, 86.86, 1, '2026-05-09 03:39:04', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (98, 98, 2, 118.139401, 40.095400, 'gwkkcknpu2', 4.06, 97.57, 1, '2026-05-08 18:08:22', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (99, 99, 2, 117.501524, 41.897102, 'xup41vsukk', 4.06, 80.49, 1, '2026-05-08 21:41:10', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (100, 100, 1, 119.287354, 40.936342, 'x48z2m23mq', 4.39, 83.58, 1, '2026-05-08 23:45:07', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (101, 101, 1, 116.485807, 39.272519, 'vruuvub7yf', 4.94, 87.16, 0, '2026-05-08 19:44:36', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (102, 102, 0, 119.524293, 41.581035, 'y0k7nr51yd', 4.86, 99.83, 0, '2026-05-08 08:30:45', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (103, 103, 0, 117.217611, 40.900278, 'jgyu9h7tts', 4.58, 84.64, 0, '2026-05-08 14:41:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (104, 104, 0, 119.108223, 39.992442, 'qtz4vg81he', 4.81, 86.25, 1, '2026-05-08 10:50:40', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (105, 105, 2, 116.474640, 41.325765, 'dbmv9g44q8', 4.59, 83.15, 0, '2026-05-08 08:51:31', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (106, 106, 2, 116.099099, 39.196120, 'zzrs197kn7', 4.77, 95.43, 1, '2026-05-08 14:07:25', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (107, 107, 1, 119.803265, 41.204770, 'c8hkp5qbn0', 4.42, 98.14, 0, '2026-05-08 23:57:50', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (108, 108, 1, 116.370075, 40.828902, 'q1bfzr7vzp', 4.18, 95.95, 1, '2026-05-08 11:20:23', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (109, 109, 2, 119.032142, 41.528963, 'b0ew63zw46', 4.59, 86.62, 0, '2026-05-08 10:31:37', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (110, 110, 1, 119.705562, 39.903272, 'g8fvu1snue', 4.69, 93.77, 1, '2026-05-09 00:58:17', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (111, 111, 0, 116.070652, 39.107864, 's2rst7jtn6', 4.42, 87.11, 1, '2026-05-08 13:18:50', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (112, 112, 1, 116.603366, 39.438088, '3y93mvqvu0', 4.31, 98.39, 0, '2026-05-08 22:26:18', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (113, 113, 1, 119.418497, 39.554128, '2mhgu70c7r', 4.43, 86.01, 0, '2026-05-08 13:46:12', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (114, 114, 1, 116.095634, 39.219979, '1ryf7yj5d0', 4.24, 90.77, 0, '2026-05-09 03:46:35', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (115, 115, 0, 116.745643, 41.671972, 'vu7vtnmffv', 4.25, 99.82, 0, '2026-05-08 13:17:33', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (116, 116, 1, 116.051054, 39.701846, 'x21qxqxhcz', 4.84, 94.56, 1, '2026-05-09 02:29:39', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (117, 117, 2, 117.992196, 39.120828, '195butet2y', 4.67, 95.89, 0, '2026-05-08 10:06:58', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (118, 118, 0, 118.858906, 41.976886, '7xrb5m4tfs', 4.87, 96.69, 0, '2026-05-08 17:54:21', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (119, 119, 2, 117.135244, 39.018351, 'bty0485y1h', 4.08, 80.41, 1, '2026-05-09 07:09:41', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (120, 120, 1, 116.517466, 40.694463, 's9xx7hu8bf', 4.28, 93.66, 0, '2026-05-08 23:23:12', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (121, 121, 0, 117.730137, 41.747765, 'ck16nqusp6', 4.52, 85.23, 0, '2026-05-08 09:41:03', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (122, 122, 1, 118.898838, 40.821513, 'fk84fn4mm4', 4.28, 99.36, 1, '2026-05-08 13:58:53', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (123, 123, 2, 117.223646, 40.000332, 'v2nf1gg9rn', 4.92, 88.59, 0, '2026-05-08 16:21:03', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (124, 124, 2, 118.649316, 39.388785, '2hpe2c0h9s', 4.37, 97.49, 0, '2026-05-08 19:11:37', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (125, 125, 0, 119.287888, 39.907347, 'e6013suv2p', 4.50, 95.79, 1, '2026-05-09 06:10:36', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (126, 126, 2, 118.102147, 40.821806, '820c7219my', 4.04, 98.52, 0, '2026-05-09 03:53:02', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (127, 127, 0, 119.444708, 39.258582, 'x5x2jf1fwq', 4.74, 88.37, 0, '2026-05-08 22:44:53', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (128, 128, 2, 119.740094, 40.077893, '7zu09vs7gv', 4.81, 95.60, 0, '2026-05-08 08:41:33', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (129, 129, 2, 116.913705, 40.151158, '8j7794e77n', 4.43, 99.75, 1, '2026-05-09 06:08:36', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (130, 130, 2, 119.032192, 41.662622, 'cr3j5jz3bm', 4.93, 84.22, 0, '2026-05-08 22:30:43', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (131, 131, 2, 119.660395, 40.744965, 'yqtn2pryur', 4.37, 86.46, 0, '2026-05-08 17:16:46', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (132, 132, 1, 117.431717, 40.282783, 'p7v1mwmmpd', 4.37, 88.52, 0, '2026-05-08 20:31:56', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (133, 133, 2, 119.675410, 41.570750, 'mkew67e694', 4.84, 88.15, 0, '2026-05-08 21:34:33', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (134, 134, 0, 119.094421, 39.213841, 'ue7mr00zw7', 4.12, 92.57, 0, '2026-05-08 21:59:53', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (135, 135, 1, 116.278471, 41.641980, '43crxhtxpg', 4.37, 82.60, 1, '2026-05-08 18:09:19', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (136, 136, 1, 119.232464, 40.823659, 'p3c4jch4hs', 4.96, 87.72, 0, '2026-05-09 00:33:56', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (137, 137, 1, 117.957360, 40.149925, 'tngd1f3e1t', 4.17, 86.42, 1, '2026-05-08 22:11:49', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (138, 138, 1, 116.353454, 40.495119, 's85que52yx', 4.94, 89.49, 0, '2026-05-08 22:54:39', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (139, 139, 2, 117.395196, 41.149458, 'umh0mdkt8b', 4.69, 86.78, 0, '2026-05-09 04:53:07', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (140, 140, 2, 117.004075, 39.137882, 'q8c67judts', 4.84, 93.78, 1, '2026-05-08 23:10:48', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (141, 141, 2, 119.003645, 40.983967, '56g57mnw7q', 4.37, 99.91, 1, '2026-05-08 15:25:29', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (142, 142, 0, 116.610870, 39.254241, '3s08ggkn3r', 4.19, 82.25, 0, '2026-05-08 21:34:18', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (143, 143, 2, 118.584361, 41.204564, 'gj5fdpp4xr', 4.27, 96.01, 0, '2026-05-08 21:35:25', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (144, 144, 0, 118.704444, 39.512181, 'rm0x0u5yj0', 4.85, 83.53, 0, '2026-05-08 17:23:41', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (145, 145, 0, 119.942606, 39.799046, 'p3n6xw4r97', 4.90, 84.17, 1, '2026-05-08 17:21:20', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (146, 146, 0, 117.191848, 41.966638, '5xdjv01eqd', 4.45, 93.51, 0, '2026-05-08 18:52:28', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (147, 147, 1, 118.017642, 39.522479, 'pmteqb68hz', 4.31, 90.32, 0, '2026-05-09 02:33:27', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (148, 148, 0, 117.148349, 41.647608, 'j1bn1k7tsm', 4.44, 96.17, 0, '2026-05-09 05:02:55', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (149, 149, 2, 116.905745, 39.278361, '207ygdcn5k', 4.71, 87.71, 0, '2026-05-08 12:15:31', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (150, 150, 2, 117.329452, 39.694929, 'pwnfph9tp0', 4.64, 80.51, 1, '2026-05-09 04:54:36', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (151, 151, 2, 116.311724, 39.876551, 'tc4rf6ktz0', 4.90, 80.29, 0, '2026-05-08 16:56:51', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (152, 152, 2, 117.405791, 40.302981, 'rxq5hnwhk6', 4.99, 88.91, 0, '2026-05-09 07:32:47', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (153, 153, 0, 117.296385, 39.849565, 'nx2u9twdhj', 4.12, 95.36, 0, '2026-05-09 00:22:00', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (154, 154, 2, 116.614318, 39.819102, 'tphbchsh5y', 4.46, 94.46, 0, '2026-05-08 09:14:59', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (155, 155, 0, 117.077177, 41.738782, 'z57bx8xfzw', 4.75, 83.82, 1, '2026-05-09 05:08:34', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (156, 156, 1, 119.859951, 39.533094, '6pby0kbbc1', 4.94, 83.43, 0, '2026-05-09 08:12:34', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (157, 157, 2, 116.347622, 41.563088, '4rnydmxyc0', 4.74, 88.44, 1, '2026-05-09 07:57:56', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (158, 158, 1, 118.461189, 40.544258, '6we1xgnecq', 4.23, 83.11, 0, '2026-05-08 08:43:46', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (159, 159, 1, 119.669258, 40.866930, '87g73jf2sq', 4.72, 86.95, 1, '2026-05-08 15:08:01', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (160, 160, 2, 119.815885, 40.420096, '5hfzugc42k', 4.17, 98.13, 0, '2026-05-09 06:37:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (161, 161, 2, 118.276462, 41.771561, 's36hw08vwu', 4.06, 93.05, 0, '2026-05-09 03:23:38', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (162, 162, 2, 119.822734, 41.989827, 'qykd1by8dc', 4.97, 81.31, 0, '2026-05-09 07:29:12', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (163, 163, 1, 119.602741, 40.156120, '4jjfuhkfjc', 4.81, 83.93, 0, '2026-05-08 18:37:42', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (164, 164, 0, 119.903976, 40.424024, 'nnsvvcheqt', 4.59, 95.21, 0, '2026-05-08 15:59:44', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (165, 165, 0, 118.342023, 41.120670, '96hcesssgx', 4.82, 88.34, 1, '2026-05-09 07:11:24', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (166, 166, 1, 117.835579, 40.349061, 'j4xuppxnqp', 4.61, 98.00, 0, '2026-05-09 05:32:02', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (167, 167, 0, 119.603328, 40.739351, 'w8q0tn2g1q', 4.15, 85.98, 0, '2026-05-09 07:56:15', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (168, 168, 0, 118.776320, 40.573336, 'gbktjjmcm3', 4.09, 81.80, 0, '2026-05-08 09:10:23', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (169, 169, 0, 117.346455, 40.394386, '4uzwknr9jt', 4.71, 87.48, 0, '2026-05-08 17:22:48', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (170, 170, 1, 118.910947, 39.047931, 'u5t7j07exe', 4.68, 93.78, 1, '2026-05-08 09:30:05', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (171, 171, 1, 116.668565, 41.800561, 's43rm06nnm', 4.02, 91.03, 1, '2026-05-08 20:03:54', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (172, 172, 1, 119.491035, 40.379772, '2hxxtsf5b1', 4.52, 89.33, 0, '2026-05-09 08:28:11', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (173, 173, 1, 116.733972, 40.838774, 'yg4bxepym9', 4.03, 85.25, 0, '2026-05-08 21:46:37', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (174, 174, 1, 119.259908, 41.514367, 'zu8p29pysu', 4.95, 80.86, 1, '2026-05-08 14:20:04', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (175, 175, 0, 118.861799, 40.555074, 'ncc22v1q3j', 4.04, 82.42, 0, '2026-05-08 09:43:20', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (176, 176, 2, 117.756626, 40.036764, 'fyjxtntxny', 4.39, 96.52, 0, '2026-05-08 09:20:17', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (177, 177, 1, 116.189978, 39.263556, 'm64gkkrxw5', 4.94, 99.31, 1, '2026-05-08 13:29:05', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (178, 178, 1, 116.456686, 41.156767, 'gmu9ygzttw', 5.00, 91.29, 0, '2026-05-08 13:59:26', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (179, 179, 2, 118.451247, 41.899194, 'yz76h2wz8j', 4.51, 95.96, 0, '2026-05-08 17:52:44', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (180, 180, 2, 118.807210, 39.260643, 'y5v5zcxp4j', 4.75, 88.24, 1, '2026-05-08 21:52:50', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (181, 181, 1, 116.567377, 39.455180, 'yz3c4fbjq2', 4.81, 87.34, 0, '2026-05-09 05:53:25', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (182, 182, 0, 118.214269, 41.837919, 'ybqt4p3chu', 4.31, 81.50, 1, '2026-05-09 03:06:04', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (183, 183, 0, 119.599608, 39.584368, '84um34pscz', 4.85, 94.31, 1, '2026-05-08 11:09:13', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (184, 184, 2, 119.345010, 39.033038, '1um3t98s78', 4.93, 86.19, 0, '2026-05-09 00:00:56', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (185, 185, 2, 116.284112, 39.703848, 'ujphpq7svc', 4.73, 91.43, 1, '2026-05-08 14:28:30', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (186, 186, 0, 117.949451, 40.785929, '6e1486g33k', 4.65, 94.20, 0, '2026-05-08 23:19:19', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (187, 187, 0, 118.400652, 41.419187, '2wmqsg0z39', 4.59, 85.99, 0, '2026-05-08 10:53:03', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (188, 188, 1, 116.158937, 40.641201, 'ru0bpyy590', 4.20, 97.34, 1, '2026-05-08 19:13:34', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (189, 189, 1, 118.826474, 39.324662, 'pdz858rvpt', 4.29, 98.56, 0, '2026-05-08 12:27:24', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (190, 190, 0, 119.309113, 40.586164, 'p9h139g6t6', 4.63, 84.13, 0, '2026-05-08 10:43:38', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (191, 191, 2, 116.761727, 39.125022, 'm0bhgm3u5t', 4.42, 96.72, 0, '2026-05-09 05:53:45', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (192, 192, 1, 117.662867, 41.994464, 'sedc45w9qw', 4.68, 96.52, 0, '2026-05-09 04:43:31', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (193, 193, 0, 119.158189, 40.705139, 'yfrqqp96v5', 4.81, 97.96, 1, '2026-05-08 15:51:28', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (194, 194, 2, 116.641557, 40.568426, '06zfdwtjyr', 4.59, 96.41, 1, '2026-05-09 01:19:52', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (195, 195, 0, 116.781560, 40.824036, 'sp6bq4n96q', 4.93, 99.85, 0, '2026-05-08 09:07:05', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (196, 196, 0, 119.169060, 40.773171, 'f18nvgkxp9', 4.23, 82.07, 0, '2026-05-08 19:47:16', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (197, 197, 2, 117.094309, 41.159180, '5wjs589qzz', 4.82, 84.49, 0, '2026-05-09 06:17:07', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (198, 198, 2, 116.482005, 40.132424, 'hq1489yw6c', 4.56, 89.75, 0, '2026-05-08 20:10:48', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (199, 199, 0, 116.731822, 41.292941, 'nrwdgu0mx3', 4.35, 89.50, 0, '2026-05-08 23:33:32', '2026-05-08 10:29:46');
INSERT INTO `driver_status` VALUES (200, 200, 0, 118.291654, 40.591423, 'mhe4txnwkk', 4.96, 84.81, 1, '2026-05-08 14:22:48', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES (1, 7, 'admin6', '用户管理', '删除', 'DELETE', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '228.88.192.184', 0, '2026-05-01 11:28:30');
INSERT INTO `operation_log` VALUES (2, 12, 'audit11', '系统设置', '新增', 'POST', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '137.244.49.186', 0, '2026-05-08 22:37:19');
INSERT INTO `operation_log` VALUES (3, 20, 'superadmin19', '系统设置', '编辑', 'PUT', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '202.47.132.95', 1, '2026-05-02 00:41:09');
INSERT INTO `operation_log` VALUES (4, 11, 'finance10', '司机管理', '审核', 'PUT', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '142.214.245.27', 0, '2026-05-02 05:23:14');
INSERT INTO `operation_log` VALUES (5, 4, 'operator', '订单管理', '导出', 'DELETE', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '208.183.219.40', 0, '2026-05-07 22:42:21');
INSERT INTO `operation_log` VALUES (6, 3, 'manager', '订单管理', '导出', 'POST', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '23.48.187.108', 1, '2026-05-07 01:37:01');
INSERT INTO `operation_log` VALUES (7, 13, 'admin12', '财务管理', '导出', 'POST', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '194.112.193.110', 0, '2026-05-04 01:03:09');
INSERT INTO `operation_log` VALUES (8, 7, 'admin6', '司机管理', '编辑', 'POST', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '1.75.247.216', 1, '2026-05-03 09:05:00');
INSERT INTO `operation_log` VALUES (9, 5, 'finance', '司机管理', '审核', 'DELETE', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '170.138.221.182', 1, '2026-05-08 05:03:11');
INSERT INTO `operation_log` VALUES (10, 1, 'admin', '系统设置', '查询', 'PUT', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '203.117.100.187', 1, '2026-05-06 05:13:02');
INSERT INTO `operation_log` VALUES (11, 15, 'manager14', '订单管理', '编辑', 'POST', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '159.230.201.43', 0, '2026-05-05 15:20:13');
INSERT INTO `operation_log` VALUES (12, 16, 'operator15', '订单管理', '导出', 'PUT', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '236.82.97.40', 1, '2026-05-06 02:50:59');
INSERT INTO `operation_log` VALUES (13, 20, 'superadmin19', '司机管理', '导出', 'DELETE', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '191.142.65.167', 1, '2026-05-06 08:40:56');
INSERT INTO `operation_log` VALUES (14, 3, 'manager', '用户管理', '删除', 'DELETE', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '18.83.140.248', 0, '2026-05-06 04:55:53');
INSERT INTO `operation_log` VALUES (15, 7, 'admin6', '用户管理', '审核', 'POST', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '154.219.0.145', 0, '2026-05-02 17:38:31');
INSERT INTO `operation_log` VALUES (16, 8, 'superadmin7', '司机管理', '导出', 'PUT', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '229.156.111.204', 0, '2026-05-08 13:56:11');
INSERT INTO `operation_log` VALUES (17, 11, 'finance10', '财务管理', '导出', 'DELETE', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '240.145.215.156', 0, '2026-05-06 14:39:45');
INSERT INTO `operation_log` VALUES (18, 10, 'operator9', '用户管理', '审核', 'PUT', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '112.75.12.154', 1, '2026-05-01 23:29:00');
INSERT INTO `operation_log` VALUES (19, 9, 'manager8', '财务管理', '新增', 'GET', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '59.79.142.8', 0, '2026-05-03 22:49:37');
INSERT INTO `operation_log` VALUES (20, 12, 'audit11', '司机管理', '查询', 'POST', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '5.121.3.201', 1, '2026-05-09 10:11:17');
INSERT INTO `operation_log` VALUES (21, 9, 'manager8', '订单管理', '导出', 'GET', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '67.125.82.46', 0, '2026-05-07 03:14:35');
INSERT INTO `operation_log` VALUES (22, 15, 'manager14', '订单管理', '审核', 'DELETE', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '107.241.188.50', 0, '2026-05-07 20:25:32');
INSERT INTO `operation_log` VALUES (23, 5, 'finance', '系统设置', '审核', 'DELETE', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '122.70.44.69', 0, '2026-05-04 09:18:59');
INSERT INTO `operation_log` VALUES (24, 4, 'operator', '订单管理', '查询', 'PUT', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '3.251.71.254', 1, '2026-05-03 23:57:01');
INSERT INTO `operation_log` VALUES (25, 19, 'admin18', '财务管理', '新增', 'GET', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '125.245.154.185', 0, '2026-05-03 04:39:49');
INSERT INTO `operation_log` VALUES (26, 13, 'admin12', '财务管理', '编辑', 'GET', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '226.187.81.202', 1, '2026-05-04 15:08:02');
INSERT INTO `operation_log` VALUES (27, 12, 'audit11', '用户管理', '审核', 'GET', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '60.163.223.52', 1, '2026-05-04 14:30:43');
INSERT INTO `operation_log` VALUES (28, 17, 'finance16', '司机管理', '导出', 'DELETE', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '176.76.251.233', 0, '2026-05-08 11:11:29');
INSERT INTO `operation_log` VALUES (29, 5, 'finance', '订单管理', '新增', 'POST', '/api/finance/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '200.247.37.253', 1, '2026-05-01 14:02:33');
INSERT INTO `operation_log` VALUES (30, 19, 'admin18', '司机管理', '导出', 'GET', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '7.224.113.213', 1, '2026-05-06 10:38:33');
INSERT INTO `operation_log` VALUES (31, 14, 'superadmin13', '用户管理', '查询', 'POST', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '200.79.197.172', 1, '2026-05-07 17:11:02');
INSERT INTO `operation_log` VALUES (32, 10, 'operator9', '用户管理', '编辑', 'POST', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '28.105.247.32', 0, '2026-05-02 20:15:33');
INSERT INTO `operation_log` VALUES (33, 9, 'manager8', '司机管理', '新增', 'DELETE', '/api/finance/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '136.55.206.225', 1, '2026-05-08 09:21:39');
INSERT INTO `operation_log` VALUES (34, 16, 'operator15', '司机管理', '查询', 'PUT', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '234.147.179.122', 1, '2026-05-02 07:12:49');
INSERT INTO `operation_log` VALUES (35, 6, 'audit', '用户管理', '新增', 'PUT', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '70.131.98.212', 0, '2026-05-06 21:58:36');
INSERT INTO `operation_log` VALUES (36, 15, 'manager14', '司机管理', '导出', 'DELETE', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '167.113.105.188', 1, '2026-05-04 17:21:11');
INSERT INTO `operation_log` VALUES (37, 1, 'admin', '司机管理', '编辑', 'GET', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '62.164.118.120', 1, '2026-05-08 09:47:54');
INSERT INTO `operation_log` VALUES (38, 16, 'operator15', '财务管理', '删除', 'POST', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '69.154.170.215', 0, '2026-05-03 17:23:56');
INSERT INTO `operation_log` VALUES (39, 19, 'admin18', '司机管理', '新增', 'GET', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '186.164.100.74', 1, '2026-05-07 06:50:14');
INSERT INTO `operation_log` VALUES (40, 3, 'manager', '财务管理', '新增', 'POST', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '135.105.48.170', 0, '2026-05-04 09:55:05');
INSERT INTO `operation_log` VALUES (41, 7, 'admin6', '系统设置', '审核', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '163.91.69.46', 1, '2026-05-06 18:50:17');
INSERT INTO `operation_log` VALUES (42, 3, 'manager', '司机管理', '新增', 'PUT', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '78.5.155.122', 0, '2026-05-06 00:16:52');
INSERT INTO `operation_log` VALUES (43, 19, 'admin18', '用户管理', '编辑', 'GET', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '243.61.174.80', 1, '2026-05-03 06:40:54');
INSERT INTO `operation_log` VALUES (44, 15, 'manager14', '订单管理', '导出', 'POST', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '38.48.128.27', 0, '2026-05-08 13:21:03');
INSERT INTO `operation_log` VALUES (45, 13, 'admin12', '司机管理', '编辑', 'DELETE', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '26.102.192.201', 0, '2026-05-08 11:01:54');
INSERT INTO `operation_log` VALUES (46, 4, 'operator', '财务管理', '删除', 'GET', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '120.27.130.140', 1, '2026-05-06 02:26:21');
INSERT INTO `operation_log` VALUES (47, 4, 'operator', '系统设置', '查询', 'PUT', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '119.27.25.184', 0, '2026-05-08 23:47:56');
INSERT INTO `operation_log` VALUES (48, 5, 'finance', '系统设置', '导出', 'POST', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '110.120.141.157', 0, '2026-05-04 02:49:53');
INSERT INTO `operation_log` VALUES (49, 16, 'operator15', '订单管理', '审核', 'DELETE', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '221.234.94.95', 0, '2026-05-05 17:20:30');
INSERT INTO `operation_log` VALUES (50, 3, 'manager', '司机管理', '导出', 'GET', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '190.80.7.25', 0, '2026-05-02 11:27:57');
INSERT INTO `operation_log` VALUES (51, 7, 'admin6', '司机管理', '删除', 'POST', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '219.174.233.10', 0, '2026-05-07 07:11:43');
INSERT INTO `operation_log` VALUES (52, 2, 'superadmin', '用户管理', '导出', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '134.32.127.132', 0, '2026-05-07 18:59:24');
INSERT INTO `operation_log` VALUES (53, 18, 'audit17', '用户管理', '删除', 'POST', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '95.245.79.224', 1, '2026-05-04 07:49:30');
INSERT INTO `operation_log` VALUES (54, 10, 'operator9', '用户管理', '查询', 'PUT', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '186.250.99.3', 1, '2026-05-08 17:57:14');
INSERT INTO `operation_log` VALUES (55, 20, 'superadmin19', '司机管理', '删除', 'POST', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '171.225.172.159', 1, '2026-05-04 00:15:34');
INSERT INTO `operation_log` VALUES (56, 4, 'operator', '财务管理', '新增', 'POST', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '112.204.111.162', 0, '2026-05-08 05:45:10');
INSERT INTO `operation_log` VALUES (57, 9, 'manager8', '财务管理', '查询', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '224.202.27.166', 0, '2026-05-01 17:46:06');
INSERT INTO `operation_log` VALUES (58, 19, 'admin18', '司机管理', '导出', 'GET', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '153.187.194.27', 0, '2026-05-07 13:24:21');
INSERT INTO `operation_log` VALUES (59, 11, 'finance10', '用户管理', '审核', 'PUT', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '52.114.121.116', 0, '2026-05-04 14:19:14');
INSERT INTO `operation_log` VALUES (60, 12, 'audit11', '司机管理', '编辑', 'DELETE', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '96.162.200.116', 0, '2026-05-09 07:42:15');
INSERT INTO `operation_log` VALUES (61, 13, 'admin12', '司机管理', '查询', 'DELETE', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '46.208.64.6', 0, '2026-05-08 07:42:32');
INSERT INTO `operation_log` VALUES (62, 20, 'superadmin19', '司机管理', '删除', 'PUT', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '111.124.81.97', 0, '2026-05-01 12:55:01');
INSERT INTO `operation_log` VALUES (63, 10, 'operator9', '订单管理', '编辑', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '44.246.136.193', 0, '2026-05-09 07:57:28');
INSERT INTO `operation_log` VALUES (64, 6, 'audit', '司机管理', '查询', 'DELETE', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '247.33.223.173', 0, '2026-05-02 20:23:40');
INSERT INTO `operation_log` VALUES (65, 8, 'superadmin7', '司机管理', '编辑', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '25.5.39.217', 1, '2026-05-04 02:14:49');
INSERT INTO `operation_log` VALUES (66, 5, 'finance', '财务管理', '删除', 'DELETE', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '224.229.187.7', 1, '2026-05-03 22:16:36');
INSERT INTO `operation_log` VALUES (67, 10, 'operator9', '用户管理', '导出', 'DELETE', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '84.216.241.251', 1, '2026-05-02 06:59:13');
INSERT INTO `operation_log` VALUES (68, 10, 'operator9', '订单管理', '审核', 'GET', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '108.165.246.29', 1, '2026-05-04 22:53:53');
INSERT INTO `operation_log` VALUES (69, 8, 'superadmin7', '财务管理', '删除', 'PUT', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '12.199.251.164', 0, '2026-05-04 05:22:10');
INSERT INTO `operation_log` VALUES (70, 5, 'finance', '用户管理', '新增', 'DELETE', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '2.161.45.47', 0, '2026-05-07 21:52:03');
INSERT INTO `operation_log` VALUES (71, 20, 'superadmin19', '系统设置', '新增', 'DELETE', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '57.122.115.108', 1, '2026-05-01 16:01:34');
INSERT INTO `operation_log` VALUES (72, 11, 'finance10', '司机管理', '查询', 'GET', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '208.220.175.74', 0, '2026-05-05 17:59:25');
INSERT INTO `operation_log` VALUES (73, 19, 'admin18', '系统设置', '导出', 'DELETE', '/api/finance/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '15.42.183.16', 1, '2026-05-07 23:14:39');
INSERT INTO `operation_log` VALUES (74, 17, 'finance16', '订单管理', '导出', 'DELETE', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '224.245.168.166', 0, '2026-05-05 00:14:09');
INSERT INTO `operation_log` VALUES (75, 15, 'manager14', '司机管理', '导出', 'GET', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '175.122.203.110', 1, '2026-05-07 16:29:18');
INSERT INTO `operation_log` VALUES (76, 5, 'finance', '用户管理', '删除', 'DELETE', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '210.50.87.242', 0, '2026-05-04 23:59:01');
INSERT INTO `operation_log` VALUES (77, 6, 'audit', '司机管理', '查询', 'PUT', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '173.174.141.34', 0, '2026-05-07 22:43:21');
INSERT INTO `operation_log` VALUES (78, 1, 'admin', '财务管理', '导出', 'GET', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '160.211.197.19', 1, '2026-05-05 20:50:33');
INSERT INTO `operation_log` VALUES (79, 11, 'finance10', '财务管理', '编辑', 'POST', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '147.225.252.184', 0, '2026-05-01 13:26:33');
INSERT INTO `operation_log` VALUES (80, 3, 'manager', '订单管理', '审核', 'GET', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '140.199.232.162', 1, '2026-05-07 17:11:18');
INSERT INTO `operation_log` VALUES (81, 16, 'operator15', '订单管理', '编辑', 'GET', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '236.99.130.127', 0, '2026-05-04 12:16:53');
INSERT INTO `operation_log` VALUES (82, 2, 'superadmin', '订单管理', '编辑', 'GET', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '174.202.114.252', 1, '2026-05-03 11:26:44');
INSERT INTO `operation_log` VALUES (83, 1, 'admin', '财务管理', '导出', 'POST', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '67.44.236.186', 0, '2026-05-06 12:15:50');
INSERT INTO `operation_log` VALUES (84, 9, 'manager8', '订单管理', '新增', 'POST', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '118.12.122.39', 1, '2026-05-03 15:21:50');
INSERT INTO `operation_log` VALUES (85, 13, 'admin12', '订单管理', '编辑', 'POST', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '1.196.96.5', 1, '2026-05-08 09:08:41');
INSERT INTO `operation_log` VALUES (86, 20, 'superadmin19', '系统设置', '查询', 'GET', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '220.245.210.138', 1, '2026-05-04 05:18:26');
INSERT INTO `operation_log` VALUES (87, 10, 'operator9', '系统设置', '审核', 'POST', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '249.185.143.109', 1, '2026-05-06 19:50:59');
INSERT INTO `operation_log` VALUES (88, 11, 'finance10', '订单管理', '删除', 'POST', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '58.81.85.217', 1, '2026-05-04 06:28:08');
INSERT INTO `operation_log` VALUES (89, 2, 'superadmin', '系统设置', '编辑', 'GET', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '189.111.182.240', 1, '2026-05-05 12:48:28');
INSERT INTO `operation_log` VALUES (90, 2, 'superadmin', '财务管理', '审核', 'POST', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '24.43.6.124', 1, '2026-05-08 09:25:39');
INSERT INTO `operation_log` VALUES (91, 11, 'finance10', '系统设置', '审核', 'PUT', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '93.252.237.32', 0, '2026-05-03 14:40:16');
INSERT INTO `operation_log` VALUES (92, 12, 'audit11', '财务管理', '导出', 'POST', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '47.120.4.42', 0, '2026-05-08 23:30:54');
INSERT INTO `operation_log` VALUES (93, 9, 'manager8', '订单管理', '导出', 'POST', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '170.133.47.245', 0, '2026-05-05 04:22:12');
INSERT INTO `operation_log` VALUES (94, 11, 'finance10', '用户管理', '查询', 'POST', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '142.79.26.129', 0, '2026-05-02 18:50:47');
INSERT INTO `operation_log` VALUES (95, 4, 'operator', '系统设置', '导出', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '43.146.233.91', 0, '2026-05-08 14:02:31');
INSERT INTO `operation_log` VALUES (96, 17, 'finance16', '财务管理', '编辑', 'DELETE', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '55.123.142.64', 0, '2026-05-08 15:13:27');
INSERT INTO `operation_log` VALUES (97, 10, 'operator9', '系统设置', '查询', 'PUT', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '85.249.198.174', 1, '2026-05-06 12:06:23');
INSERT INTO `operation_log` VALUES (98, 13, 'admin12', '司机管理', '新增', 'PUT', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '68.69.50.183', 0, '2026-05-04 02:36:45');
INSERT INTO `operation_log` VALUES (99, 15, 'manager14', '司机管理', '编辑', 'PUT', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '148.35.176.236', 1, '2026-05-07 06:24:02');
INSERT INTO `operation_log` VALUES (100, 14, 'superadmin13', '财务管理', '导出', 'POST', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '105.245.17.28', 0, '2026-05-07 01:07:11');
INSERT INTO `operation_log` VALUES (101, 8, 'superadmin7', '订单管理', '删除', 'POST', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '22.187.117.10', 1, '2026-05-03 13:56:55');
INSERT INTO `operation_log` VALUES (102, 2, 'superadmin', '财务管理', '查询', 'DELETE', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '162.181.219.96', 1, '2026-05-01 23:56:54');
INSERT INTO `operation_log` VALUES (103, 20, 'superadmin19', '用户管理', '审核', 'DELETE', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '170.135.211.252', 1, '2026-05-02 00:25:44');
INSERT INTO `operation_log` VALUES (104, 11, 'finance10', '用户管理', '导出', 'GET', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '28.14.149.100', 0, '2026-05-01 13:09:53');
INSERT INTO `operation_log` VALUES (105, 14, 'superadmin13', '订单管理', '查询', 'GET', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '253.247.103.91', 1, '2026-05-04 02:15:30');
INSERT INTO `operation_log` VALUES (106, 12, 'audit11', '订单管理', '导出', 'DELETE', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '202.137.243.69', 1, '2026-05-08 19:04:12');
INSERT INTO `operation_log` VALUES (107, 20, 'superadmin19', '司机管理', '审核', 'PUT', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '188.193.48.51', 1, '2026-05-02 18:09:31');
INSERT INTO `operation_log` VALUES (108, 17, 'finance16', '订单管理', '查询', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '61.70.22.172', 0, '2026-05-04 21:35:17');
INSERT INTO `operation_log` VALUES (109, 2, 'superadmin', '系统设置', '导出', 'GET', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '84.150.102.224', 0, '2026-05-01 11:40:08');
INSERT INTO `operation_log` VALUES (110, 6, 'audit', '系统设置', '导出', 'GET', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '113.92.92.26', 1, '2026-05-04 21:10:14');
INSERT INTO `operation_log` VALUES (111, 7, 'admin6', '系统设置', '导出', 'POST', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '71.31.209.81', 1, '2026-05-01 21:22:33');
INSERT INTO `operation_log` VALUES (112, 18, 'audit17', '订单管理', '新增', 'POST', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '145.136.231.184', 1, '2026-05-05 09:07:34');
INSERT INTO `operation_log` VALUES (113, 5, 'finance', '司机管理', '导出', 'GET', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '238.237.199.14', 0, '2026-05-03 15:24:22');
INSERT INTO `operation_log` VALUES (114, 7, 'admin6', '系统设置', '查询', 'DELETE', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '189.195.207.209', 0, '2026-05-04 15:22:58');
INSERT INTO `operation_log` VALUES (115, 8, 'superadmin7', '司机管理', '删除', 'PUT', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '53.102.90.56', 0, '2026-05-02 00:33:34');
INSERT INTO `operation_log` VALUES (116, 16, 'operator15', '系统设置', '编辑', 'GET', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '44.118.126.75', 1, '2026-05-03 01:26:13');
INSERT INTO `operation_log` VALUES (117, 5, 'finance', '系统设置', '查询', 'PUT', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '217.223.101.203', 0, '2026-05-05 12:18:47');
INSERT INTO `operation_log` VALUES (118, 3, 'manager', '用户管理', '导出', 'POST', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '191.241.3.203', 1, '2026-05-02 21:11:16');
INSERT INTO `operation_log` VALUES (119, 18, 'audit17', '系统设置', '新增', 'GET', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '14.123.232.244', 0, '2026-05-07 22:16:45');
INSERT INTO `operation_log` VALUES (120, 3, 'manager', '司机管理', '编辑', 'POST', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '158.153.64.117', 1, '2026-05-02 07:18:40');
INSERT INTO `operation_log` VALUES (121, 12, 'audit11', '订单管理', '新增', 'GET', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '186.239.177.247', 0, '2026-05-03 18:07:07');
INSERT INTO `operation_log` VALUES (122, 7, 'admin6', '司机管理', '导出', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '192.99.91.248', 0, '2026-05-06 13:01:50');
INSERT INTO `operation_log` VALUES (123, 2, 'superadmin', '订单管理', '新增', 'POST', '/api/finance/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '141.118.183.143', 1, '2026-05-07 15:29:13');
INSERT INTO `operation_log` VALUES (124, 10, 'operator9', '系统设置', '新增', 'DELETE', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '203.222.64.68', 1, '2026-05-03 03:42:18');
INSERT INTO `operation_log` VALUES (125, 1, 'admin', '订单管理', '查询', 'PUT', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '81.226.47.34', 1, '2026-05-06 12:20:09');
INSERT INTO `operation_log` VALUES (126, 13, 'admin12', '财务管理', '导出', 'GET', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '7.215.157.144', 0, '2026-05-06 17:56:36');
INSERT INTO `operation_log` VALUES (127, 3, 'manager', '财务管理', '审核', 'GET', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '230.132.3.162', 1, '2026-05-01 13:47:06');
INSERT INTO `operation_log` VALUES (128, 5, 'finance', '司机管理', '删除', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '57.73.227.209', 1, '2026-05-02 14:21:39');
INSERT INTO `operation_log` VALUES (129, 2, 'superadmin', '用户管理', '审核', 'GET', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '188.23.183.36', 0, '2026-05-06 22:37:09');
INSERT INTO `operation_log` VALUES (130, 16, 'operator15', '系统设置', '审核', 'GET', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '55.184.144.84', 0, '2026-05-04 07:27:15');
INSERT INTO `operation_log` VALUES (131, 2, 'superadmin', '财务管理', '查询', 'GET', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '2.191.176.245', 1, '2026-05-03 12:57:23');
INSERT INTO `operation_log` VALUES (132, 2, 'superadmin', '司机管理', '审核', 'DELETE', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '13.99.33.130', 1, '2026-05-07 01:12:09');
INSERT INTO `operation_log` VALUES (133, 12, 'audit11', '财务管理', '导出', 'DELETE', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '141.113.38.145', 0, '2026-05-02 02:38:11');
INSERT INTO `operation_log` VALUES (134, 4, 'operator', '订单管理', '导出', 'GET', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '15.247.206.181', 0, '2026-05-01 15:50:38');
INSERT INTO `operation_log` VALUES (135, 1, 'admin', '司机管理', '审核', 'GET', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '92.121.115.231', 0, '2026-05-01 12:04:01');
INSERT INTO `operation_log` VALUES (136, 12, 'audit11', '财务管理', '导出', 'PUT', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '120.129.11.239', 1, '2026-05-08 09:01:40');
INSERT INTO `operation_log` VALUES (137, 17, 'finance16', '财务管理', '新增', 'PUT', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '232.132.151.134', 0, '2026-05-06 02:34:33');
INSERT INTO `operation_log` VALUES (138, 6, 'audit', '用户管理', '新增', 'PUT', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '127.90.178.19', 1, '2026-05-01 14:11:02');
INSERT INTO `operation_log` VALUES (139, 19, 'admin18', '财务管理', '删除', 'POST', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '106.7.228.76', 0, '2026-05-07 07:38:31');
INSERT INTO `operation_log` VALUES (140, 15, 'manager14', '用户管理', '编辑', 'DELETE', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '68.140.255.45', 0, '2026-05-05 21:14:41');
INSERT INTO `operation_log` VALUES (141, 9, 'manager8', '司机管理', '审核', 'GET', '/api/finance/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '235.151.76.77', 1, '2026-05-04 10:39:02');
INSERT INTO `operation_log` VALUES (142, 3, 'manager', '订单管理', '新增', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '226.38.129.69', 1, '2026-05-07 08:55:05');
INSERT INTO `operation_log` VALUES (143, 14, 'superadmin13', '订单管理', '审核', 'GET', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '194.141.133.26', 0, '2026-05-08 09:33:44');
INSERT INTO `operation_log` VALUES (144, 2, 'superadmin', '订单管理', '编辑', 'DELETE', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '208.59.185.18', 1, '2026-05-04 03:46:18');
INSERT INTO `operation_log` VALUES (145, 15, 'manager14', '订单管理', '导出', 'DELETE', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '232.217.37.179', 1, '2026-05-09 02:21:14');
INSERT INTO `operation_log` VALUES (146, 20, 'superadmin19', '财务管理', '审核', 'DELETE', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '219.143.117.179', 1, '2026-05-06 16:25:04');
INSERT INTO `operation_log` VALUES (147, 10, 'operator9', '订单管理', '编辑', 'GET', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '23.162.20.219', 1, '2026-05-01 17:40:23');
INSERT INTO `operation_log` VALUES (148, 19, 'admin18', '订单管理', '编辑', 'PUT', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '196.38.136.81', 1, '2026-05-01 11:50:18');
INSERT INTO `operation_log` VALUES (149, 2, 'superadmin', '财务管理', '审核', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '141.6.242.192', 0, '2026-05-03 22:15:44');
INSERT INTO `operation_log` VALUES (150, 5, 'finance', '用户管理', '查询', 'GET', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '166.103.175.129', 0, '2026-05-03 06:41:40');
INSERT INTO `operation_log` VALUES (151, 15, 'manager14', '司机管理', '导出', 'DELETE', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '219.209.255.142', 1, '2026-05-09 08:03:39');
INSERT INTO `operation_log` VALUES (152, 13, 'admin12', '财务管理', '查询', 'POST', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '210.14.147.41', 1, '2026-05-06 13:56:32');
INSERT INTO `operation_log` VALUES (153, 19, 'admin18', '订单管理', '审核', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '111.144.238.239', 0, '2026-05-07 20:44:34');
INSERT INTO `operation_log` VALUES (154, 12, 'audit11', '用户管理', '查询', 'PUT', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '189.211.208.90', 0, '2026-05-04 06:28:25');
INSERT INTO `operation_log` VALUES (155, 13, 'admin12', '司机管理', '编辑', 'DELETE', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '16.132.124.103', 1, '2026-05-06 17:07:53');
INSERT INTO `operation_log` VALUES (156, 14, 'superadmin13', '系统设置', '新增', 'GET', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '20.1.138.110', 0, '2026-05-02 23:15:37');
INSERT INTO `operation_log` VALUES (157, 10, 'operator9', '用户管理', '编辑', 'PUT', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '218.161.14.192', 1, '2026-05-06 12:39:35');
INSERT INTO `operation_log` VALUES (158, 4, 'operator', '系统设置', '删除', 'POST', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '176.192.109.240', 1, '2026-05-03 01:07:44');
INSERT INTO `operation_log` VALUES (159, 16, 'operator15', '订单管理', '查询', 'DELETE', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '235.134.15.179', 1, '2026-05-02 07:19:02');
INSERT INTO `operation_log` VALUES (160, 6, 'audit', '用户管理', '编辑', 'POST', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '110.239.203.10', 0, '2026-05-04 15:39:27');
INSERT INTO `operation_log` VALUES (161, 8, 'superadmin7', '系统设置', '审核', 'POST', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '125.70.98.54', 1, '2026-05-07 02:33:52');
INSERT INTO `operation_log` VALUES (162, 1, 'admin', '财务管理', '导出', 'PUT', '/api/finance/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '252.123.90.109', 1, '2026-05-09 03:17:38');
INSERT INTO `operation_log` VALUES (163, 9, 'manager8', '系统设置', '查询', 'POST', '/api/order/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '184.111.102.86', 1, '2026-05-02 07:17:44');
INSERT INTO `operation_log` VALUES (164, 8, 'superadmin7', '司机管理', '导出', 'POST', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '1.208.190.240', 0, '2026-05-04 02:49:06');
INSERT INTO `operation_log` VALUES (165, 12, 'audit11', '财务管理', '编辑', 'POST', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '171.51.134.109', 0, '2026-05-02 02:30:50');
INSERT INTO `operation_log` VALUES (166, 5, 'finance', '用户管理', '审核', 'DELETE', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '196.150.207.190', 1, '2026-05-03 23:06:51');
INSERT INTO `operation_log` VALUES (167, 8, 'superadmin7', '财务管理', '审核', 'GET', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '109.221.192.96', 0, '2026-05-02 10:29:18');
INSERT INTO `operation_log` VALUES (168, 17, 'finance16', '订单管理', '删除', 'DELETE', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '158.154.188.148', 1, '2026-05-06 04:45:01');
INSERT INTO `operation_log` VALUES (169, 5, 'finance', '财务管理', '删除', 'POST', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '120.139.23.104', 0, '2026-05-06 10:34:32');
INSERT INTO `operation_log` VALUES (170, 16, 'operator15', '司机管理', '导出', 'DELETE', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '41.94.26.222', 0, '2026-05-01 17:20:24');
INSERT INTO `operation_log` VALUES (171, 16, 'operator15', '订单管理', '查询', 'GET', '/api/finance/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '70.182.160.17', 1, '2026-05-06 08:48:46');
INSERT INTO `operation_log` VALUES (172, 5, 'finance', '司机管理', '查询', 'DELETE', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '135.255.4.123', 0, '2026-05-07 18:11:14');
INSERT INTO `operation_log` VALUES (173, 20, 'superadmin19', '系统设置', '导出', 'GET', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '114.228.106.75', 1, '2026-05-04 17:57:06');
INSERT INTO `operation_log` VALUES (174, 12, 'audit11', '财务管理', '导出', 'POST', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '114.144.79.36', 0, '2026-05-04 23:29:40');
INSERT INTO `operation_log` VALUES (175, 16, 'operator15', '财务管理', '编辑', 'DELETE', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '85.79.218.206', 1, '2026-05-06 15:50:48');
INSERT INTO `operation_log` VALUES (176, 10, 'operator9', '司机管理', '删除', 'POST', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '59.225.171.162', 0, '2026-05-04 00:33:59');
INSERT INTO `operation_log` VALUES (177, 7, 'admin6', '系统设置', '删除', 'DELETE', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '101.73.251.165', 0, '2026-05-03 19:32:37');
INSERT INTO `operation_log` VALUES (178, 7, 'admin6', '系统设置', '查询', 'DELETE', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '98.145.132.170', 0, '2026-05-04 14:48:03');
INSERT INTO `operation_log` VALUES (179, 12, 'audit11', '司机管理', '新增', 'POST', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '35.238.81.67', 1, '2026-05-09 10:04:49');
INSERT INTO `operation_log` VALUES (180, 16, 'operator15', '订单管理', '查询', 'POST', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '107.23.223.57', 1, '2026-05-07 05:10:49');
INSERT INTO `operation_log` VALUES (181, 19, 'admin18', '司机管理', '删除', 'PUT', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '119.96.132.103', 1, '2026-05-07 13:36:09');
INSERT INTO `operation_log` VALUES (182, 3, 'manager', '订单管理', '新增', 'DELETE', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '21.213.198.21', 1, '2026-05-07 04:07:51');
INSERT INTO `operation_log` VALUES (183, 19, 'admin18', '系统设置', '审核', 'DELETE', '/api/order/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '82.246.162.175', 1, '2026-05-01 11:40:12');
INSERT INTO `operation_log` VALUES (184, 8, 'superadmin7', '用户管理', '新增', 'GET', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '37.201.183.72', 1, '2026-05-05 22:43:25');
INSERT INTO `operation_log` VALUES (185, 14, 'superadmin13', '订单管理', '查询', 'POST', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '232.144.64.54', 1, '2026-05-08 21:00:43');
INSERT INTO `operation_log` VALUES (186, 20, 'superadmin19', '财务管理', '删除', 'PUT', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '212.53.160.214', 1, '2026-05-06 06:03:26');
INSERT INTO `operation_log` VALUES (187, 6, 'audit', '系统设置', '编辑', 'DELETE', '/api/order/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '137.169.66.66', 1, '2026-05-05 05:20:24');
INSERT INTO `operation_log` VALUES (188, 7, 'admin6', '用户管理', '新增', 'GET', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '240.70.219.103', 0, '2026-05-06 20:15:42');
INSERT INTO `operation_log` VALUES (189, 14, 'superadmin13', '司机管理', '审核', 'POST', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '222.247.28.200', 1, '2026-05-06 08:23:43');
INSERT INTO `operation_log` VALUES (190, 13, 'admin12', '财务管理', '导出', 'DELETE', '/api/user/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '98.94.131.164', 0, '2026-05-07 02:24:50');
INSERT INTO `operation_log` VALUES (191, 11, 'finance10', '用户管理', '查询', 'POST', '/api/user/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '157.117.114.240', 0, '2026-05-04 15:03:53');
INSERT INTO `operation_log` VALUES (192, 6, 'audit', '司机管理', '编辑', 'DELETE', '/api/order/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '105.30.224.248', 0, '2026-05-02 07:49:05');
INSERT INTO `operation_log` VALUES (193, 11, 'finance10', '订单管理', '查询', 'PUT', '/api/user/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '189.240.106.182', 1, '2026-05-03 14:30:18');
INSERT INTO `operation_log` VALUES (194, 4, 'operator', '司机管理', '删除', 'DELETE', '/api/driver/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '115.156.242.132', 0, '2026-05-05 05:57:55');
INSERT INTO `operation_log` VALUES (195, 15, 'manager14', '订单管理', '删除', 'PUT', '/api/driver/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '198.188.17.236', 1, '2026-05-04 21:50:06');
INSERT INTO `operation_log` VALUES (196, 16, 'operator15', '订单管理', '编辑', 'PUT', '/api/finance/edit', '{}', '{\"code\": 200, \"message\": \"success\"}', '178.190.205.225', 0, '2026-05-05 05:04:40');
INSERT INTO `operation_log` VALUES (197, 4, 'operator', '财务管理', '导出', 'DELETE', '/api/user/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '169.251.33.163', 1, '2026-05-06 23:19:54');
INSERT INTO `operation_log` VALUES (198, 11, 'finance10', '系统设置', '新增', 'DELETE', '/api/driver/add', '{}', '{\"code\": 200, \"message\": \"success\"}', '237.172.79.210', 1, '2026-05-02 12:12:40');
INSERT INTO `operation_log` VALUES (199, 6, 'audit', '司机管理', '审核', 'POST', '/api/finance/delete', '{}', '{\"code\": 200, \"message\": \"success\"}', '234.51.95.226', 0, '2026-05-07 17:00:33');
INSERT INTO `operation_log` VALUES (200, 20, 'superadmin19', '财务管理', '编辑', 'GET', '/api/driver/list', '{}', '{\"code\": 200, \"message\": \"success\"}', '103.22.29.167', 1, '2026-05-07 19:20:38');

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
) ENGINE = InnoDB AUTO_INCREMENT = 926 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单主表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, 'DD2026050810285920976066', 112, 94, 21, 2, '商务型', 1, '北京市东城区街道', 119.978650, 39.160094, '重庆市海淀区街道', 119.527348, 39.081850, 5.21, 15.43, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-02-18 13:25:06', '2026-02-18 13:35:06', NULL, NULL, NULL, '2026-02-18 13:22:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (2, 'DD202605081028595f7ef89c', 13, 72, 18, 1, '舒适型', 2, '北京市朝阳区街道', 116.589297, 40.675139, '成都市福田区街道', 117.073797, 40.460431, 23.13, 69.23, 27.66, 77.71, 77.71, 18.04, 59.67, 4, 1, 2, '', '2025-10-21 04:48:01', '2025-10-21 05:15:01', '2025-10-21 06:38:01', '2025-10-21 07:06:01', NULL, '2025-10-21 04:36:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (3, 'DD2026050810285928bebac9', 360, 141, 38, 2, '舒适型', 1, '北京市海淀区街道', 117.489047, 41.014966, '重庆市海淀区街道', 117.903892, 40.927278, 13.68, 33.09, 15.80, 42.64, 42.64, 8.44, 34.20, 5, 2, 0, '系统取消', '2025-10-31 07:52:43', '2025-10-31 08:04:43', '2025-10-31 08:35:43', NULL, '2025-10-31 08:31:43', '2025-10-31 07:47:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (4, 'DD202605081028593f1f90de', 3, 56, 15, 1, '商务型', 3, '北京市福田区街道', 116.155745, 40.316247, '南京市海淀区街道', 116.148863, 40.112007, 23.60, 65.30, 27.55, 62.57, 62.57, 11.53, 51.04, 4, 1, 1, '', '2024-02-23 05:28:35', '2024-02-23 05:45:35', '2024-02-23 06:48:35', '2024-02-23 06:56:35', NULL, '2024-02-23 05:17:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (5, 'DD20260508102859a94edb56', 300, 141, 38, 1, '舒适型', 2, '武汉市南山区街道', 116.963882, 40.368144, '北京市朝阳区街道', 117.430175, 40.266057, 29.68, 111.19, 33.74, 95.26, 95.26, 10.23, 85.03, 4, 1, 1, '', '2026-04-02 09:17:28', '2026-04-02 09:46:28', '2026-04-02 11:12:28', '2026-04-02 11:41:28', NULL, '2026-04-02 09:14:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (6, 'DD20260508102859f4483938', 389, 194, 51, 1, '商务型', 1, '南京市福田区街道', 119.977510, 41.333244, '上海市东城区街道', 119.781243, 41.218665, 28.09, 58.84, 28.71, 88.05, 88.05, 15.61, 72.44, 4, 1, 2, '', '2024-09-17 01:07:23', '2024-09-17 01:33:23', '2024-09-17 02:51:23', '2024-09-17 03:12:23', NULL, '2024-09-17 01:00:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (7, 'DD20260508102859169ec2c7', 341, 108, 28, 2, '商务型', 3, '广州市朝阳区街道', 118.988035, 41.992707, '武汉市海淀区街道', 118.931918, 41.831364, 19.43, 76.46, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-03-01 00:55:01', NULL, NULL, NULL, NULL, '2024-03-01 00:40:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (8, 'DD2026050810285948f48059', 489, 140, 37, 2, '商务型', 1, '南京市东城区街道', 117.167673, 39.769168, '南京市西城区街道', 117.272424, 40.037335, 11.12, 29.40, 13.24, 37.41, 37.41, 0.39, 37.02, 4, 1, 2, '', '2025-12-20 13:56:59', '2025-12-20 14:04:59', '2025-12-20 14:27:59', '2025-12-20 14:50:59', NULL, '2025-12-20 13:42:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (9, 'DD202605081028594e045414', 8, 45, 11, 1, '舒适型', 1, '深圳市南山区街道', 116.306988, 40.223921, '上海市西城区街道', 116.663117, 39.948399, 17.22, 46.36, 15.58, 39.24, 39.24, 2.51, 36.73, 4, 1, 1, '', '2024-11-01 01:39:28', '2024-11-01 01:46:28', '2024-11-01 02:31:28', '2024-11-01 02:35:28', NULL, '2024-11-01 01:30:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (10, 'DD20260508102859adcb8dd5', 136, 129, 34, 2, '商务型', 3, '上海市海淀区街道', 118.827044, 41.167438, '深圳市西城区街道', 118.829693, 41.104440, 28.58, 73.39, 26.04, 98.69, 98.69, 24.34, 74.35, 5, 2, 0, '司机取消', '2024-03-14 13:15:05', '2024-03-14 13:29:05', '2024-03-14 14:18:05', NULL, '2024-03-14 13:58:05', '2024-03-14 13:02:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (11, 'DD20260508102859aff61789', 66, 72, 18, 1, '经济型', 3, '杭州市西城区街道', 118.936526, 41.612085, '武汉市朝阳区街道', 118.651515, 41.384054, 3.36, 10.71, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-10-01 13:48:52', NULL, NULL, NULL, NULL, '2025-10-01 13:42:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (12, 'DD202605081028594b192b4d', 18, 141, 38, 2, '经济型', 3, '深圳市朝阳区街道', 118.293551, 41.881739, '重庆市南山区街道', 117.948243, 42.102533, 6.42, 15.23, 6.66, 19.60, 19.60, 5.36, 14.24, 4, 1, 1, '', '2025-01-08 01:25:57', '2025-01-08 01:48:57', '2025-01-08 02:42:57', '2025-01-08 02:43:57', NULL, '2025-01-08 01:15:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (13, 'DD20260508102859ef44c58a', 32, 23, 4, 2, '舒适型', 2, '成都市海淀区街道', 118.357571, 39.167494, '上海市西城区街道', 118.181630, 39.296558, 15.78, 55.55, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-05-03 08:31:46', '2024-05-03 08:39:46', NULL, NULL, NULL, '2024-05-03 08:27:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (14, 'DD20260508102859c99eab53', 241, 72, 18, 1, '舒适型', 3, '深圳市海淀区街道', 116.147988, 41.530894, '南京市海淀区街道', 116.282094, 41.524979, 2.88, 6.52, 3.26, 7.66, 7.66, 2.09, 5.57, 5, 2, 0, '司机取消', '2025-03-07 20:09:36', '2025-03-07 20:36:36', '2025-03-07 20:54:36', NULL, '2025-03-07 20:48:36', '2025-03-07 20:08:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (15, 'DD20260508102859b21faccc', 469, NULL, NULL, 2, '舒适型', 1, '杭州市朝阳区街道', 118.898330, 39.538187, '深圳市南山区街道', 118.444111, 39.279287, 8.14, 18.64, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-09-28 04:31:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (16, 'DD202605081028590344c6e2', 287, 150, 40, 2, '商务型', 3, '重庆市朝阳区街道', 116.403936, 39.274903, '杭州市福田区街道', 116.221618, 39.200873, 27.21, 108.73, 31.96, 120.08, 120.08, 34.74, 85.34, 5, 2, 0, '司机取消', '2026-02-05 12:59:26', '2026-02-05 13:11:26', '2026-02-05 14:02:26', NULL, '2026-02-05 13:44:26', '2026-02-05 12:46:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (17, 'DD2026050810285908b7d1b5', 335, 194, 51, 1, '商务型', 2, '北京市朝阳区街道', 119.993759, 40.270005, '西安市福田区街道', 120.110914, 40.532073, 3.30, 7.16, 3.23, 12.16, 12.16, 1.56, 10.60, 4, 1, 1, '', '2024-03-12 06:08:58', '2024-03-12 06:14:58', '2024-03-12 07:21:58', '2024-03-12 07:24:58', NULL, '2024-03-12 06:07:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (18, 'DD20260508102859e8326800', 292, 137, 36, 2, '经济型', 2, '北京市福田区街道', 116.930818, 41.589683, '北京市福田区街道', 117.212597, 41.499982, 9.59, 31.32, 10.99, 34.73, 34.73, 7.60, 27.13, 4, 1, 1, '', '2024-03-23 22:28:25', '2024-03-23 22:38:25', '2024-03-24 00:33:25', '2024-03-24 00:39:25', NULL, '2024-03-23 22:20:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (19, 'DD202605081028593d54e847', 445, 45, 11, 1, '商务型', 2, '西安市南山区街道', 118.055871, 41.721066, '上海市朝阳区街道', 118.365407, 41.565055, 17.22, 49.18, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-04-08 17:37:27', '2025-04-08 17:54:27', NULL, NULL, NULL, '2025-04-08 17:22:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (20, 'DD2026050810285990b62f43', 46, 150, 40, 2, '经济型', 2, '重庆市东城区街道', 118.925298, 40.009469, '上海市南山区街道', 118.454168, 39.930079, 2.47, 6.93, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-01-10 09:07:40', '2024-01-10 09:28:40', NULL, NULL, NULL, '2024-01-10 08:54:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (21, 'DD20260508102859ee88a61f', 164, 185, 49, 2, '商务型', 3, '广州市海淀区街道', 119.123053, 41.584367, '重庆市西城区街道', 119.446267, 41.569838, 22.83, 70.19, 27.29, 58.93, 58.93, 2.74, 56.19, 6, 0, 0, '', '2025-01-27 16:53:46', '2025-01-27 17:04:46', '2025-01-27 18:37:46', NULL, NULL, '2025-01-27 16:42:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (22, 'DD2026050810285975bfb13e', 362, 98, 23, 1, '商务型', 2, '成都市福田区街道', 118.426767, 41.347399, '上海市东城区街道', 117.995523, 41.168341, 19.86, 77.65, 22.18, 75.31, 75.31, 16.28, 59.03, 4, 1, 2, '', '2026-01-22 11:35:12', '2026-01-22 11:48:12', '2026-01-22 12:46:12', '2026-01-22 12:49:12', NULL, '2026-01-22 11:22:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (23, 'DD202605081028595cf43c07', 209, 23, 4, 1, '商务型', 2, '南京市东城区街道', 119.546579, 40.880461, '成都市南山区街道', 119.965043, 40.643027, 29.03, 62.87, 30.99, 122.73, 122.73, 1.20, 121.53, 4, 1, 2, '', '2024-12-11 02:08:36', '2024-12-11 02:22:36', '2024-12-11 03:58:36', '2024-12-11 04:15:36', NULL, '2024-12-11 01:53:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (24, 'DD20260508102859e6261ef4', 209, 177, 46, 2, '商务型', 2, '深圳市海淀区街道', 118.255829, 39.072191, '南京市海淀区街道', 118.334228, 38.923387, 22.89, 76.31, 22.55, 65.91, 65.91, 10.73, 55.18, 4, 1, 2, '', '2025-08-07 02:27:58', '2025-08-07 02:35:58', '2025-08-07 04:25:58', '2025-08-07 04:52:58', NULL, '2025-08-07 02:13:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (25, 'DD20260508102859c2586d38', 28, 157, 42, 2, '经济型', 3, '西安市福田区街道', 118.080974, 41.461171, '杭州市海淀区街道', 118.120441, 41.364283, 16.11, 43.74, 18.10, 53.46, 53.46, 4.98, 48.48, 4, 1, 2, '', '2024-04-26 07:24:09', '2024-04-26 07:41:09', '2024-04-26 09:25:09', '2024-04-26 09:31:09', NULL, '2024-04-26 07:12:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (26, 'DD2026050810285965163516', 319, 64, 17, 2, '舒适型', 1, '深圳市南山区街道', 116.403938, 39.069466, '武汉市朝阳区街道', 116.047463, 39.243447, 22.09, 87.65, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-11-21 19:05:05', '2024-11-21 19:13:05', NULL, NULL, NULL, '2024-11-21 18:56:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (27, 'DD20260508102859a5f7e3ed', 81, NULL, NULL, 1, '舒适型', 1, '武汉市福田区街道', 118.014094, 41.394162, '西安市西城区街道', 118.296990, 41.463828, 11.85, 39.42, 13.19, 38.19, 38.19, 7.19, 31.00, 6, 0, 0, '', '2024-01-01 03:43:11', '2024-01-01 04:08:11', '2024-01-01 06:03:11', NULL, NULL, '2024-01-01 03:32:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (28, 'DD20260508102859381655d5', 408, 129, 34, 2, '经济型', 3, '重庆市朝阳区街道', 116.275818, 41.747301, '重庆市海淀区街道', 115.963615, 41.900287, 26.27, 98.15, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-10-14 19:44:56', '2025-10-14 19:58:56', NULL, NULL, NULL, '2025-10-14 19:31:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (29, 'DD202605081028591016724e', 480, NULL, NULL, 2, '经济型', 3, '广州市东城区街道', 117.381987, 40.503386, '杭州市东城区街道', 117.144458, 40.298757, 7.30, 26.31, 6.94, 21.41, 21.41, 2.49, 18.92, 4, 1, 1, '', '2025-06-24 03:05:02', '2025-06-24 03:20:02', '2025-06-24 04:54:02', '2025-06-24 05:20:02', NULL, '2025-06-24 02:54:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (30, 'DD20260508102859f49cb415', 272, 141, 38, 1, '经济型', 3, '深圳市西城区街道', 118.882380, 39.426855, '南京市朝阳区街道', 119.278052, 39.584360, 27.81, 82.03, 28.14, 58.91, 58.91, 10.63, 48.28, 4, 1, 2, '', '2025-01-05 00:18:48', '2025-01-05 00:37:48', '2025-01-05 02:09:48', '2025-01-05 02:32:48', NULL, '2025-01-05 00:05:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (31, 'DD2026050810285962dbc0e7', 245, 1, 1, 1, '商务型', 1, '武汉市西城区街道', 119.492959, 39.529712, '南京市福田区街道', 119.853413, 39.310608, 25.62, 99.19, 29.74, 85.85, 85.85, 13.12, 72.73, 6, 0, 0, '', '2025-09-19 02:11:46', '2025-09-19 02:41:46', '2025-09-19 03:12:46', NULL, NULL, '2025-09-19 02:10:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (32, 'DD202605081028596d148207', 498, 110, 29, 2, '商务型', 3, '北京市福田区街道', 117.592371, 39.304163, '武汉市福田区街道', 117.443219, 39.531589, 2.44, 9.14, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-02-11 16:21:52', NULL, NULL, NULL, NULL, '2025-02-11 16:14:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (33, 'DD2026050810285925222549', 128, 30, 6, 1, '舒适型', 2, '北京市南山区街道', 116.138426, 41.929101, '西安市海淀区街道', 115.974012, 41.695661, 25.65, 79.41, 24.71, 97.24, 97.24, 0.30, 96.94, 4, 1, 1, '', '2024-08-25 00:36:24', '2024-08-25 00:59:24', '2024-08-25 02:28:24', '2024-08-25 02:35:24', NULL, '2024-08-25 00:30:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (34, 'DD202605081028593760e9f7', 80, NULL, NULL, 1, '商务型', 2, '西安市海淀区街道', 119.519509, 40.432830, '杭州市南山区街道', 119.456244, 40.715784, 19.07, 68.82, 21.11, 77.13, 77.13, 6.42, 70.71, 4, 1, 1, '', '2024-11-11 23:47:40', '2024-11-11 23:59:40', '2024-11-12 00:44:40', '2024-11-12 01:03:40', NULL, '2024-11-11 23:36:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (35, 'DD202605081028597c4b1df9', 350, 45, 11, 2, '舒适型', 1, '杭州市海淀区街道', 119.682644, 39.929691, '杭州市朝阳区街道', 119.207927, 39.786052, 14.86, 45.74, 17.15, 43.44, 43.44, 8.27, 35.17, 4, 1, 1, '', '2025-02-18 19:15:48', '2025-02-18 19:40:48', '2025-02-18 20:29:48', '2025-02-18 20:53:48', NULL, '2025-02-18 19:04:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (36, 'DD20260508102859bcf3f9e7', 426, 37, 9, 2, '商务型', 2, '武汉市福田区街道', 118.725044, 41.197868, '深圳市福田区街道', 118.757105, 41.198904, 6.17, 23.35, 6.43, 15.30, 15.30, 2.62, 12.68, 5, 2, 0, '用户取消', '2025-01-14 13:59:31', '2025-01-14 14:17:31', '2025-01-14 15:00:31', NULL, '2025-01-14 14:23:31', '2025-01-14 13:48:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (37, 'DD2026050810285916cae362', 383, NULL, NULL, 2, '经济型', 2, '重庆市南山区街道', 118.946716, 39.219269, '武汉市东城区街道', 118.822067, 39.168110, 16.10, 55.57, 17.04, 43.58, 43.58, 5.96, 37.62, 6, 0, 0, '', '2026-02-12 19:34:14', '2026-02-12 20:00:14', '2026-02-12 21:13:14', NULL, NULL, '2026-02-12 19:25:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (38, 'DD20260508102859d6029213', 19, 72, 18, 2, '舒适型', 3, '成都市西城区街道', 116.854181, 39.829895, '南京市福田区街道', 116.415811, 39.856909, 6.29, 13.88, 6.84, 14.56, 14.56, 4.36, 10.20, 4, 1, 2, '', '2025-07-10 18:16:33', '2025-07-10 18:32:33', '2025-07-10 19:13:33', '2025-07-10 19:42:33', NULL, '2025-07-10 18:06:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (39, 'DD202605081028598229b67b', 243, 56, 15, 2, '经济型', 2, '成都市西城区街道', 117.974404, 40.230737, '成都市海淀区街道', 118.242871, 40.420416, 8.85, 31.79, 10.01, 30.07, 30.07, 8.00, 22.07, 5, 2, 0, '用户取消', '2026-02-08 17:37:10', '2026-02-08 17:52:10', '2026-02-08 18:18:10', NULL, '2026-02-08 17:53:10', '2026-02-08 17:29:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (40, 'DD20260508102859620ec87a', 211, NULL, NULL, 2, '经济型', 1, '深圳市西城区街道', 116.712454, 41.018130, '南京市南山区街道', 116.392865, 40.952837, 13.74, 28.25, 13.41, 48.25, 48.25, 3.11, 45.14, 4, 1, 1, '', '2025-02-15 08:33:17', '2025-02-15 08:41:17', '2025-02-15 09:17:17', '2025-02-15 09:28:17', NULL, '2025-02-15 08:25:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (41, 'DD202605081028591ce71b9d', 29, NULL, NULL, 1, '经济型', 3, '深圳市南山区街道', 119.669187, 40.385666, '成都市东城区街道', 119.903894, 40.180208, 22.11, 80.72, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-11-11 02:54:57', NULL, NULL, NULL, NULL, '2024-11-11 02:53:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (42, 'DD202605081028593c1afb14', 20, 49, 12, 2, '商务型', 2, '西安市东城区街道', 116.612381, 40.786414, '重庆市福田区街道', 116.981004, 40.741090, 1.48, 3.60, 1.43, 3.76, 3.76, 0.01, 3.75, 5, 2, 0, '系统取消', '2025-02-26 06:23:38', '2025-02-26 06:40:38', '2025-02-26 06:51:38', NULL, '2025-02-26 06:53:38', '2025-02-26 06:13:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (43, 'DD2026050810285928a3a1ab', 423, 150, 40, 2, '经济型', 3, '深圳市南山区街道', 119.523482, 41.552488, '南京市东城区街道', 119.146595, 41.814679, 23.42, 74.83, 23.78, 74.52, 74.52, 6.81, 67.71, 4, 1, 1, '', '2025-06-26 14:04:07', '2025-06-26 14:27:07', '2025-06-26 15:20:07', '2025-06-26 15:42:07', NULL, '2025-06-26 13:55:07', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (44, 'DD20260508102859c07f957c', 216, 106, 27, 1, '舒适型', 3, '北京市海淀区街道', 118.751209, 40.140212, '成都市海淀区街道', 118.320572, 39.882981, 8.15, 32.30, 7.99, 30.32, 30.32, 8.34, 21.98, 4, 1, 1, '', '2026-04-30 00:07:01', '2026-04-30 00:26:01', '2026-04-30 01:15:01', '2026-04-30 01:23:01', NULL, '2026-04-30 00:04:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (45, 'DD202605081028595e1bad88', 155, 194, 51, 1, '舒适型', 3, '西安市朝阳区街道', 116.737562, 39.026900, '西安市海淀区街道', 117.112394, 38.758431, 19.00, 73.83, 21.05, 78.61, 78.61, 16.05, 62.56, 4, 1, 2, '', '2025-09-28 03:01:00', '2025-09-28 03:14:00', '2025-09-28 04:22:00', '2025-09-28 04:25:00', NULL, '2025-09-28 02:49:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (46, 'DD2026050810285946d359f1', 231, 49, 12, 2, '舒适型', 2, '上海市朝阳区街道', 117.100905, 40.962838, '成都市东城区街道', 116.749741, 41.085305, 12.05, 27.83, 11.63, 45.47, 45.47, 12.81, 32.66, 4, 1, 1, '', '2025-09-24 03:25:17', '2025-09-24 03:40:17', '2025-09-24 05:10:17', '2025-09-24 05:33:17', NULL, '2025-09-24 03:15:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (47, 'DD2026050810285913620611', 326, 141, 38, 1, '商务型', 3, '武汉市朝阳区街道', 116.446442, 40.361714, '上海市福田区街道', 116.835959, 40.237433, 6.23, 17.54, 7.18, 20.27, 20.27, 2.90, 17.37, 4, 1, 1, '', '2025-05-13 23:02:28', '2025-05-13 23:07:28', '2025-05-14 00:13:28', '2025-05-14 00:16:28', NULL, '2025-05-13 22:59:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (48, 'DD20260508102859b60fccae', 453, 11, 3, 2, '商务型', 3, '成都市海淀区街道', 116.112376, 39.307823, '广州市朝阳区街道', 116.055307, 39.550031, 14.44, 33.96, 15.17, 35.67, 35.67, 0.05, 35.62, 4, 1, 2, '', '2025-12-18 21:00:44', '2025-12-18 21:15:44', '2025-12-18 22:59:44', '2025-12-18 23:12:44', NULL, '2025-12-18 20:57:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (49, 'DD2026050810285936ba452e', 273, 137, 36, 1, '舒适型', 2, '上海市福田区街道', 119.321302, 41.092900, '南京市朝阳区街道', 119.241080, 41.091685, 20.80, 42.26, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-09-11 06:36:54', NULL, NULL, NULL, NULL, '2025-09-11 06:22:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (50, 'DD20260508102859c98cd5e1', 314, NULL, NULL, 1, '经济型', 3, '深圳市东城区街道', 119.661543, 40.939579, '杭州市西城区街道', 120.073074, 41.182144, 9.30, 20.68, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-10-27 22:08:19', '2025-10-27 22:28:19', NULL, NULL, NULL, '2025-10-27 22:05:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (51, 'DD2026050810285915a9e436', 139, 32, 7, 1, '舒适型', 1, '南京市西城区街道', 118.829719, 40.336589, '杭州市福田区街道', 118.938056, 40.527660, 7.19, 15.63, 6.88, 17.41, 17.41, 1.06, 16.35, 4, 1, 1, '', '2025-04-23 20:12:48', '2025-04-23 20:18:48', '2025-04-23 22:15:48', '2025-04-23 22:27:48', NULL, '2025-04-23 20:01:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (52, 'DD202605081028597aaac228', 380, 140, 37, 2, '经济型', 2, '广州市海淀区街道', 116.528013, 41.792640, '西安市西城区街道', 116.320938, 41.894538, 13.83, 36.71, 13.30, 40.38, 40.38, 7.67, 32.71, 5, 2, 0, '司机取消', '2026-05-06 21:30:53', '2026-05-06 21:46:53', '2026-05-06 22:37:53', NULL, '2026-05-06 21:57:53', '2026-05-06 21:29:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (53, 'DD20260508102859753d8aae', 319, 157, 42, 2, '舒适型', 3, '南京市东城区街道', 117.927141, 39.653108, '北京市东城区街道', 117.555079, 39.843032, 17.71, 70.15, 19.88, 74.01, 74.01, 6.39, 67.62, 5, 2, 0, '用户取消', '2026-05-05 11:31:18', '2026-05-05 11:40:18', '2026-05-05 12:34:18', NULL, '2026-05-05 11:44:18', '2026-05-05 11:23:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (54, 'DD20260508102859bf05188c', 417, 108, 28, 1, '商务型', 3, '北京市南山区街道', 118.441956, 39.871587, '成都市海淀区街道', 118.639982, 40.038012, 5.12, 12.05, 4.72, 17.15, 17.15, 1.60, 15.55, 4, 1, 2, '', '2025-12-15 09:23:53', '2025-12-15 09:53:53', '2025-12-15 10:49:53', '2025-12-15 10:57:53', NULL, '2025-12-15 09:08:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (55, 'DD20260508102859ada643b3', 260, 135, 35, 1, '经济型', 2, '成都市朝阳区街道', 117.637321, 41.171284, '成都市福田区街道', 117.274819, 40.943551, 5.99, 12.73, 6.11, 17.49, 17.49, 4.20, 13.29, 4, 1, 2, '', '2024-09-28 00:02:38', '2024-09-28 00:07:38', '2024-09-28 01:30:38', '2024-09-28 01:52:38', NULL, '2024-09-27 23:54:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (56, 'DD2026050810285936ef3024', 274, 36, 8, 2, '商务型', 3, '西安市海淀区街道', 118.745659, 41.551510, '武汉市福田区街道', 118.911141, 41.428188, 6.63, 22.77, 7.87, 19.11, 19.11, 1.56, 17.55, 4, 1, 2, '', '2025-08-11 08:31:24', '2025-08-11 08:45:24', '2025-08-11 10:21:24', '2025-08-11 10:26:24', NULL, '2025-08-11 08:27:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (57, 'DD2026050810285939dcfdb2', 115, 32, 7, 1, '舒适型', 2, '成都市朝阳区街道', 117.412545, 39.475174, '西安市东城区街道', 117.117585, 39.203259, 10.62, 34.81, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-02-23 01:56:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (58, 'DD20260508102859b395ac8e', 151, 177, 46, 1, '舒适型', 3, '西安市福田区街道', 117.372393, 41.309463, '北京市朝阳区街道', 117.396479, 41.068370, 23.53, 83.11, 22.56, 58.18, 58.18, 12.90, 45.28, 4, 1, 2, '', '2024-04-19 16:49:33', '2024-04-19 17:18:33', '2024-04-19 18:25:33', '2024-04-19 18:49:33', NULL, '2024-04-19 16:41:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (59, 'DD202605081028596bdf95db', 335, 100, 25, 1, '舒适型', 3, '武汉市东城区街道', 116.123467, 41.020724, '深圳市福田区街道', 115.627559, 41.238786, 14.46, 54.42, 15.59, 44.20, 44.20, 2.51, 41.69, 6, 0, 0, '', '2024-10-12 10:03:36', '2024-10-12 10:30:36', '2024-10-12 12:04:36', NULL, NULL, '2024-10-12 09:50:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (60, 'DD20260508102859998594f6', 33, 49, 12, 1, '商务型', 3, '深圳市朝阳区街道', 116.819553, 41.146569, '深圳市南山区街道', 117.183556, 41.006260, 10.56, 40.10, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-11-07 10:08:05', '2024-11-07 10:19:05', NULL, NULL, NULL, '2024-11-07 10:06:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (61, 'DD202605081028592a906cc4', 438, 159, 43, 2, '商务型', 2, '西安市海淀区街道', 118.095635, 39.195535, '西安市福田区街道', 118.045660, 39.274044, 5.89, 15.34, 5.79, 13.17, 13.17, 3.91, 9.26, 4, 1, 2, '', '2024-12-30 01:59:16', '2024-12-30 02:22:16', '2024-12-30 02:42:16', '2024-12-30 02:43:16', NULL, '2024-12-30 01:45:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (62, 'DD202605081028599bd5a850', 481, 99, 24, 1, '经济型', 1, '成都市东城区街道', 117.919400, 39.459932, '武汉市朝阳区街道', 117.728033, 39.339085, 26.85, 62.68, 30.11, 119.49, 119.49, 14.21, 105.28, 4, 1, 1, '', '2024-12-23 23:07:21', '2024-12-23 23:20:21', '2024-12-24 01:12:21', '2024-12-24 01:40:21', NULL, '2024-12-23 22:56:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (63, 'DD20260508102859056cf0cf', 24, 157, 42, 2, '商务型', 1, '成都市南山区街道', 116.330958, 39.074150, '南京市朝阳区街道', 116.621351, 39.168041, 8.09, 29.55, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-01-02 05:31:00', NULL, NULL, NULL, NULL, '2026-01-02 05:20:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (64, 'DD202605081028598017b646', 490, 129, 34, 2, '经济型', 3, '深圳市朝阳区街道', 119.789081, 40.710022, '武汉市朝阳区街道', 119.927988, 40.688167, 15.13, 52.79, 16.81, 67.18, 67.18, 19.91, 47.27, 4, 1, 2, '', '2024-09-15 18:24:43', '2024-09-15 18:42:43', '2024-09-15 19:59:43', '2024-09-15 20:21:43', NULL, '2024-09-15 18:14:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (65, 'DD202605081028595113a81b', 328, 95, 22, 1, '商务型', 3, '武汉市西城区街道', 116.401670, 40.721266, '北京市西城区街道', 116.367970, 40.511806, 5.82, 23.28, 6.81, 23.95, 23.95, 0.62, 23.33, 5, 2, 0, '用户取消', '2024-10-12 10:57:57', '2024-10-12 11:10:57', '2024-10-12 11:21:57', NULL, '2024-10-12 11:03:57', '2024-10-12 10:54:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (66, 'DD202605081028594b79a579', 312, 49, 12, 2, '舒适型', 1, '成都市南山区街道', 117.883089, 40.607314, '广州市福田区街道', 117.436411, 40.380874, 24.15, 56.11, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-02 00:35:31', NULL, NULL, NULL, NULL, '2026-05-02 00:22:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (67, 'DD20260508102859831fc767', 340, 177, 46, 1, '商务型', 3, '广州市南山区街道', 117.651629, 39.838502, '重庆市西城区街道', 117.520739, 39.905926, 3.04, 6.38, 3.16, 11.15, 11.15, 2.46, 8.69, 5, 2, 0, '司机取消', '2024-02-10 04:54:44', '2024-02-10 05:09:44', '2024-02-10 06:11:44', NULL, '2024-02-10 04:46:44', '2024-02-10 04:44:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (68, 'DD20260508102859a8d4082a', 105, 100, 25, 1, '经济型', 1, '杭州市福田区街道', 118.764065, 41.082518, '上海市福田区街道', 119.087917, 40.870518, 20.09, 69.91, 23.57, 90.31, 90.31, 20.94, 69.37, 4, 1, 1, '', '2024-05-09 08:51:23', '2024-05-09 09:02:23', '2024-05-09 10:48:23', '2024-05-09 10:59:23', NULL, '2024-05-09 08:41:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (69, 'DD20260508102859b947b9b3', 272, 1, 1, 1, '经济型', 2, '南京市朝阳区街道', 117.955415, 41.625840, '重庆市海淀区街道', 117.916746, 41.847760, 7.65, 20.88, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-01-06 05:00:42', '2024-01-06 05:10:42', NULL, NULL, NULL, '2024-01-06 04:45:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (70, 'DD20260508102859f17c4e68', 18, 64, 17, 2, '商务型', 3, '南京市海淀区街道', 119.444724, 41.427466, '杭州市西城区街道', 119.087169, 41.357063, 24.40, 52.64, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-07-11 06:13:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (71, 'DD202605081028595ae7730f', 498, 180, 47, 1, '舒适型', 2, '深圳市东城区街道', 118.322734, 41.413813, '上海市福田区街道', 118.379320, 41.555693, 27.88, 78.59, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-12-23 10:31:55', NULL, NULL, NULL, NULL, '2024-12-23 10:20:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (72, 'DD20260508102859a0831634', 419, 62, 16, 1, '商务型', 2, '南京市朝阳区街道', 116.095683, 41.252209, '武汉市福田区街道', 116.382196, 41.034815, 9.19, 36.22, 9.39, 33.51, 33.51, 5.17, 28.34, 4, 1, 1, '', '2025-02-13 11:45:09', '2025-02-13 12:03:09', '2025-02-13 13:41:09', '2025-02-13 14:11:09', NULL, '2025-02-13 11:35:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (73, 'DD20260508102859411c51d4', 195, 141, 38, 2, '商务型', 1, '武汉市东城区街道', 118.002090, 40.587558, '上海市西城区街道', 117.629264, 40.513878, 23.73, 69.29, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-11-12 18:15:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (74, 'DD202605081028590655d733', 89, 110, 29, 2, '商务型', 3, '深圳市西城区街道', 116.404827, 40.549066, '武汉市海淀区街道', 116.426520, 40.828203, 8.39, 24.92, 8.17, 24.44, 24.44, 6.84, 17.60, 4, 1, 2, '', '2025-01-06 11:23:16', '2025-01-06 11:47:16', '2025-01-06 12:39:16', '2025-01-06 13:04:16', NULL, '2025-01-06 11:10:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (75, 'DD20260508102859afa49f61', 436, 135, 35, 1, '舒适型', 1, '杭州市福田区街道', 119.583072, 40.318420, '重庆市东城区街道', 119.232597, 40.539606, 17.16, 65.28, 17.15, 63.98, 63.98, 4.95, 59.03, 4, 1, 2, '', '2025-12-19 11:34:17', '2025-12-19 11:40:17', '2025-12-19 13:19:17', '2025-12-19 13:29:17', NULL, '2025-12-19 11:33:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (76, 'DD202605081028599eee68e1', 49, 194, 51, 2, '舒适型', 1, '成都市西城区街道', 117.532990, 41.559431, '上海市南山区街道', 117.741909, 41.648612, 14.68, 38.93, 16.59, 50.46, 50.46, 11.26, 39.20, 4, 1, 1, '', '2024-06-08 06:45:09', '2024-06-08 07:13:09', '2024-06-08 07:47:09', '2024-06-08 07:56:09', NULL, '2024-06-08 06:38:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (77, 'DD2026050810285976c4ced5', 319, NULL, NULL, 2, '商务型', 1, '南京市东城区街道', 117.809780, 39.302610, '西安市东城区街道', 118.085936, 39.063566, 17.77, 40.76, 19.51, 72.78, 72.78, 21.55, 51.23, 4, 1, 2, '', '2025-12-08 09:38:23', '2025-12-08 09:53:23', '2025-12-08 11:22:23', '2025-12-08 11:33:23', NULL, '2025-12-08 09:25:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (78, 'DD20260508102859b2c53491', 220, 56, 15, 2, '舒适型', 3, '上海市东城区街道', 116.472258, 41.860427, '南京市东城区街道', 116.849586, 41.908678, 1.94, 5.36, 1.99, 4.63, 4.63, 0.90, 3.73, 4, 1, 1, '', '2025-12-08 07:44:53', '2025-12-08 07:55:53', '2025-12-08 09:14:53', '2025-12-08 09:29:53', NULL, '2025-12-08 07:35:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (79, 'DD20260508102859811cbf42', 451, 62, 16, 1, '商务型', 3, '北京市海淀区街道', 117.220942, 40.476561, '重庆市南山区街道', 116.901882, 40.499007, 4.06, 15.63, 3.84, 13.05, 13.05, 1.54, 11.51, 5, 2, 0, '用户取消', '2026-04-10 07:04:03', '2026-04-10 07:22:03', '2026-04-10 07:56:03', NULL, '2026-04-10 07:29:03', '2026-04-10 06:57:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (80, 'DD20260508102859ff82fa0d', 84, 56, 15, 2, '经济型', 1, '上海市海淀区街道', 118.162785, 39.281877, '北京市西城区街道', 118.018474, 39.015831, 15.39, 48.71, 17.76, 67.53, 67.53, 16.51, 51.02, 4, 1, 1, '', '2024-03-22 06:29:10', '2024-03-22 06:35:10', '2024-03-22 08:14:10', '2024-03-22 08:31:10', NULL, '2024-03-22 06:26:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (81, 'DD2026050810285971d837c8', 123, 180, 47, 2, '经济型', 2, '重庆市东城区街道', 117.097395, 41.914411, '武汉市海淀区街道', 116.760084, 41.848569, 3.73, 12.26, 3.50, 8.71, 8.71, 0.02, 8.69, 5, 2, 0, '司机取消', '2024-02-19 03:20:18', '2024-02-19 03:29:18', '2024-02-19 05:17:18', NULL, '2024-02-19 03:37:18', '2024-02-19 03:09:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (82, 'DD20260508102859284985c6', 16, 150, 40, 1, '舒适型', 1, '深圳市西城区街道', 119.041137, 40.501855, '杭州市朝阳区街道', 118.959260, 40.482425, 3.38, 8.56, 3.86, 9.79, 9.79, 2.42, 7.37, 4, 1, 2, '', '2024-11-14 16:56:13', '2024-11-14 17:08:13', '2024-11-14 18:13:13', '2024-11-14 18:37:13', NULL, '2024-11-14 16:51:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (83, 'DD20260508102859f7f6c8d8', 102, 37, 9, 2, '经济型', 1, '杭州市东城区街道', 118.852830, 41.660892, '深圳市南山区街道', 119.193946, 41.836831, 21.44, 80.52, 24.79, 80.50, 80.50, 6.67, 73.83, 5, 2, 0, '司机取消', '2026-03-16 00:01:03', '2026-03-16 00:29:03', '2026-03-16 00:54:03', NULL, '2026-03-16 00:42:03', '2026-03-16 00:00:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (84, 'DD2026050810285934bbe73e', 294, 37, 9, 1, '商务型', 1, '武汉市东城区街道', 118.728334, 40.257634, '成都市海淀区街道', 119.078591, 40.053460, 1.22, 2.72, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-07-17 20:08:58', '2024-07-17 20:36:58', NULL, NULL, NULL, '2024-07-17 20:03:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (85, 'DD2026050810285900ab7466', 489, 64, 17, 2, '经济型', 1, '南京市西城区街道', 119.679292, 40.719955, '南京市朝阳区街道', 119.186628, 40.962509, 21.28, 42.77, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-06-04 18:00:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (86, 'DD2026050810285978ae05ff', 34, 116, 31, 1, '经济型', 3, '武汉市南山区街道', 116.148512, 41.714560, '南京市东城区街道', 115.741331, 41.498660, 25.46, 67.71, 26.27, 100.16, 100.16, 2.25, 97.91, 4, 1, 2, '', '2024-02-19 18:26:22', '2024-02-19 18:33:22', '2024-02-19 19:01:22', '2024-02-19 19:02:22', NULL, '2024-02-19 18:18:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (87, 'DD202605081028596ab99929', 311, 98, 23, 2, '经济型', 2, '广州市西城区街道', 116.018785, 40.127518, '西安市东城区街道', 116.455809, 40.159542, 19.03, 42.25, 20.52, 64.83, 64.83, 12.23, 52.60, 4, 1, 1, '', '2025-10-16 16:45:57', '2025-10-16 16:58:57', '2025-10-16 17:21:57', '2025-10-16 17:38:57', NULL, '2025-10-16 16:34:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (88, 'DD20260508102859d987f6a9', 353, 116, 31, 1, '经济型', 3, '北京市南山区街道', 119.139934, 39.243381, '重庆市海淀区街道', 118.854876, 39.321261, 4.39, 13.98, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-07-10 00:38:13', '2025-07-10 00:58:13', NULL, NULL, NULL, '2025-07-10 00:33:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (89, 'DD20260508102859bc199c06', 3, 100, 25, 2, '商务型', 2, '上海市南山区街道', 119.060193, 41.069389, '西安市福田区街道', 118.832624, 40.988876, 20.13, 71.81, 21.63, 86.00, 86.00, 15.08, 70.92, 6, 0, 0, '', '2026-05-02 15:17:23', '2026-05-02 15:27:23', '2026-05-02 15:39:23', NULL, NULL, '2026-05-02 15:05:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (90, 'DD20260508102859d5289831', 435, 100, 25, 2, '商务型', 1, '武汉市朝阳区街道', 116.899185, 41.299902, '杭州市东城区街道', 117.384721, 41.248136, 11.36, 32.98, 11.80, 34.28, 34.28, 2.87, 31.41, 4, 1, 1, '', '2024-11-22 00:00:34', '2024-11-22 00:12:34', '2024-11-22 01:18:34', '2024-11-22 01:31:34', NULL, '2024-11-21 23:57:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (91, 'DD20260508102859054cf605', 174, 141, 38, 1, '经济型', 2, '成都市南山区街道', 117.191883, 40.191110, '杭州市南山区街道', 117.580542, 40.381258, 10.62, 22.62, 10.58, 22.58, 22.58, 4.26, 18.32, 4, 1, 1, '', '2025-08-31 01:34:06', '2025-08-31 02:02:06', '2025-08-31 03:11:06', '2025-08-31 03:12:06', NULL, '2025-08-31 01:22:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (92, 'DD20260508102859bc12a999', 361, 108, 28, 1, '舒适型', 3, '北京市东城区街道', 118.351468, 41.585143, '北京市南山区街道', 118.565840, 41.390601, 9.45, 22.27, 10.73, 30.20, 30.20, 8.08, 22.12, 4, 1, 2, '', '2024-08-30 04:52:25', '2024-08-30 05:02:25', '2024-08-30 07:01:25', '2024-08-30 07:20:25', NULL, '2024-08-30 04:45:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (93, 'DD2026050810285997a8d5f8', 168, 129, 34, 2, '舒适型', 3, '重庆市福田区街道', 119.395907, 39.001620, '南京市福田区街道', 119.459938, 38.964071, 25.76, 82.09, 23.71, 54.09, 54.09, 10.45, 43.64, 5, 2, 0, '系统取消', '2025-09-23 20:21:46', '2025-09-23 20:33:46', '2025-09-23 22:14:46', NULL, '2025-09-23 20:17:46', '2025-09-23 20:06:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (94, 'DD202605081028597d464823', 385, 150, 40, 1, '舒适型', 3, '西安市海淀区街道', 118.150014, 40.275811, '西安市朝阳区街道', 118.585693, 40.467145, 24.23, 93.32, 23.00, 77.17, 77.17, 11.57, 65.60, 4, 1, 1, '', '2024-04-01 01:39:08', '2024-04-01 02:04:08', '2024-04-01 02:38:08', '2024-04-01 02:48:08', NULL, '2024-04-01 01:25:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (95, 'DD202605081028597a913f31', 386, 32, 7, 1, '经济型', 3, '上海市南山区街道', 117.936664, 40.449426, '北京市福田区街道', 117.502573, 40.396819, 26.67, 92.97, 26.76, 95.12, 95.12, 10.39, 84.73, 5, 2, 0, '用户取消', '2026-05-07 09:11:55', '2026-05-07 09:40:55', '2026-05-07 10:44:55', NULL, '2026-05-07 09:50:55', '2026-05-07 09:02:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (96, 'DD2026050810285975717781', 39, 23, 4, 2, '舒适型', 2, '深圳市朝阳区街道', 119.317995, 41.963782, '西安市南山区街道', 119.006612, 41.950262, 14.10, 31.77, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-07-29 22:55:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (97, 'DD20260508102859dc6f03ae', 2, 106, 27, 2, '商务型', 2, '武汉市海淀区街道', 117.497307, 39.287619, '重庆市福田区街道', 117.899113, 39.416328, 19.70, 44.52, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-09-16 06:21:35', NULL, NULL, NULL, NULL, '2025-09-16 06:16:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (98, 'DD20260508102859548b32fe', 93, 36, 8, 2, '舒适型', 1, '深圳市朝阳区街道', 116.422365, 39.344143, '杭州市海淀区街道', 116.340821, 39.276859, 1.62, 5.23, 1.71, 3.71, 3.71, 0.69, 3.02, 4, 1, 1, '', '2024-03-21 04:31:04', '2024-03-21 04:43:04', '2024-03-21 06:16:04', '2024-03-21 06:42:04', NULL, '2024-03-21 04:17:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (99, 'DD20260508102859925e0ef0', 286, 150, 40, 1, '商务型', 3, '重庆市朝阳区街道', 116.339907, 41.017377, '西安市海淀区街道', 116.189707, 40.838791, 26.12, 73.50, 24.51, 56.90, 56.90, 12.57, 44.33, 4, 1, 1, '', '2025-01-26 07:41:14', '2025-01-26 08:05:14', '2025-01-26 08:41:14', '2025-01-26 08:52:14', NULL, '2025-01-26 07:28:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (100, 'DD20260508102859df097321', 394, NULL, NULL, 2, '商务型', 1, '杭州市南山区街道', 118.694702, 39.526419, '成都市西城区街道', 118.448476, 39.577900, 10.37, 31.14, 10.73, 23.57, 23.57, 4.70, 18.87, 4, 1, 2, '', '2024-06-28 15:54:48', '2024-06-28 16:09:48', '2024-06-28 17:38:48', '2024-06-28 17:41:48', NULL, '2024-06-28 15:50:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (101, 'DD2026050810285963edc321', 54, 56, 15, 2, '经济型', 1, '北京市海淀区街道', 118.616847, 41.701184, '成都市海淀区街道', 118.669905, 41.848313, 12.58, 25.85, 11.96, 41.55, 41.55, 0.34, 41.21, 5, 2, 0, '司机取消', '2026-03-14 04:42:43', '2026-03-14 05:03:43', '2026-03-14 06:22:43', NULL, '2026-03-14 05:01:43', '2026-03-14 04:30:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (102, 'DD2026050810285903591d48', 187, 100, 25, 1, '舒适型', 1, '武汉市西城区街道', 119.894542, 39.709286, '西安市南山区街道', 120.202498, 39.482552, 3.56, 11.41, 3.56, 11.63, 11.63, 0.91, 10.72, 4, 1, 2, '', '2024-04-22 16:12:57', '2024-04-22 16:26:57', '2024-04-22 16:49:57', '2024-04-22 17:01:57', NULL, '2024-04-22 16:10:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (103, 'DD202605081028592f5201ed', 281, 32, 7, 2, '商务型', 2, '西安市福田区街道', 116.875024, 40.284836, '深圳市海淀区街道', 116.737008, 40.522357, 18.29, 67.71, 18.89, 39.25, 39.25, 7.64, 31.61, 4, 1, 2, '', '2026-03-02 01:52:17', '2026-03-02 01:58:17', '2026-03-02 02:32:17', '2026-03-02 03:02:17', NULL, '2026-03-02 01:37:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (104, 'DD202605081028591107153c', 302, 194, 51, 2, '舒适型', 1, '西安市南山区街道', 116.994254, 40.275403, '武汉市朝阳区街道', 116.714991, 40.204710, 6.62, 18.94, 7.47, 20.16, 20.16, 0.64, 19.52, 4, 1, 2, '', '2024-06-15 01:01:10', '2024-06-15 01:22:10', '2024-06-15 01:54:10', '2024-06-15 01:58:10', NULL, '2024-06-15 00:47:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (105, 'DD20260508102859e7589452', 152, 140, 37, 1, '经济型', 1, '武汉市朝阳区街道', 118.269202, 40.378417, '成都市海淀区街道', 117.954939, 40.436923, 13.30, 46.87, 13.24, 35.40, 35.40, 7.19, 28.21, 5, 2, 0, '司机取消', '2025-11-20 19:30:33', '2025-11-20 19:46:33', '2025-11-20 20:20:33', NULL, '2025-11-20 19:55:33', '2025-11-20 19:22:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (106, 'DD20260508102859c66d587e', 103, 110, 29, 1, '舒适型', 2, '武汉市西城区街道', 117.778665, 40.643290, '西安市朝阳区街道', 117.282748, 40.397597, 17.02, 43.37, 19.68, 52.44, 52.44, 2.38, 50.06, 4, 1, 1, '', '2025-11-07 16:57:21', '2025-11-07 17:17:21', '2025-11-07 19:01:21', '2025-11-07 19:22:21', NULL, '2025-11-07 16:44:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (107, 'DD2026050810285950c79d32', 351, 45, 11, 1, '商务型', 3, '武汉市东城区街道', 117.794847, 39.775871, '杭州市南山区街道', 117.466477, 39.742490, 29.49, 70.18, 34.94, 92.17, 92.17, 13.91, 78.26, 5, 2, 0, '用户取消', '2024-10-17 09:44:10', '2024-10-17 09:49:10', '2024-10-17 11:40:10', NULL, '2024-10-17 09:52:10', '2024-10-17 09:34:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (108, 'DD20260508102859eb989d45', 302, 194, 51, 2, '舒适型', 1, '武汉市福田区街道', 119.205926, 39.836990, '上海市南山区街道', 119.208073, 40.000643, 10.67, 35.63, 10.70, 38.87, 38.87, 9.92, 28.95, 5, 2, 0, '用户取消', '2024-02-11 13:03:38', '2024-02-11 13:20:38', '2024-02-11 13:42:38', NULL, '2024-02-11 13:46:38', '2024-02-11 12:58:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (109, 'DD202605081028597cc10409', 186, 56, 15, 1, '商务型', 2, '西安市福田区街道', 118.308602, 40.380266, '成都市西城区街道', 118.753271, 40.174279, 2.29, 7.20, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-02-28 19:19:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (110, 'DD20260508102859b49534e2', 319, 43, 10, 2, '经济型', 3, '重庆市朝阳区街道', 116.416957, 41.491796, '北京市西城区街道', 116.162935, 41.258486, 9.44, 27.59, 8.94, 18.07, 18.07, 4.75, 13.32, 5, 2, 0, '系统取消', '2026-03-03 20:12:53', '2026-03-03 20:32:53', '2026-03-03 21:46:53', NULL, '2026-03-03 20:12:53', '2026-03-03 20:03:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (111, 'DD2026050810285963d12da8', 257, NULL, NULL, 1, '舒适型', 1, '西安市朝阳区街道', 116.849636, 40.038190, '南京市西城区街道', 116.933102, 40.281315, 5.25, 10.61, 5.27, 17.62, 17.62, 2.91, 14.71, 4, 1, 1, '', '2024-05-07 01:02:39', '2024-05-07 01:28:39', '2024-05-07 03:26:39', '2024-05-07 03:30:39', NULL, '2024-05-07 00:47:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (112, 'DD2026050810285933b57120', 246, NULL, NULL, 1, '经济型', 3, '西安市南山区街道', 118.659750, 40.872581, '北京市南山区街道', 118.750314, 40.840274, 21.11, 73.98, 25.31, 56.03, 56.03, 12.74, 43.29, 5, 2, 0, '司机取消', '2025-09-07 20:39:45', '2025-09-07 20:52:45', '2025-09-07 21:02:45', NULL, '2025-09-07 20:47:45', '2025-09-07 20:31:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (113, 'DD20260508102859cefbe2eb', 223, 100, 25, 1, '经济型', 3, '广州市朝阳区街道', 119.399714, 41.947987, '广州市东城区街道', 119.543930, 42.222556, 20.44, 52.13, 24.47, 78.99, 78.99, 4.41, 74.58, 5, 2, 0, '司机取消', '2024-02-21 01:37:19', '2024-02-21 01:47:19', '2024-02-21 01:59:19', NULL, '2024-02-21 02:08:19', '2024-02-21 01:35:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (114, 'DD202605081028597be603c8', 276, 157, 42, 1, '舒适型', 2, '深圳市西城区街道', 118.599722, 41.311470, '重庆市东城区街道', 118.664813, 41.124020, 1.30, 2.86, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-09-13 08:25:00', '2024-09-13 08:38:00', NULL, NULL, NULL, '2024-09-13 08:11:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (115, 'DD20260508102859d9e693c2', 392, 99, 24, 1, '舒适型', 1, '成都市海淀区街道', 116.350774, 41.604852, '武汉市朝阳区街道', 116.173513, 41.687081, 11.87, 32.90, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-08-10 03:08:03', NULL, NULL, NULL, NULL, '2024-08-10 02:58:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (116, 'DD20260508102859dc3c3ea1', 190, 72, 18, 2, '商务型', 1, '深圳市南山区街道', 117.627682, 40.965630, '南京市海淀区街道', 117.140911, 41.224507, 12.50, 48.22, 12.95, 40.61, 40.61, 5.13, 35.48, 4, 1, 1, '', '2025-02-04 05:00:47', '2025-02-04 05:09:47', '2025-02-04 05:37:47', '2025-02-04 05:56:47', NULL, '2025-02-04 04:54:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (117, 'DD202605081028599c7a6881', 157, 99, 24, 2, '经济型', 2, '北京市海淀区街道', 117.122455, 39.315157, '深圳市福田区街道', 117.485336, 39.547611, 13.79, 33.21, 14.68, 48.01, 48.01, 4.09, 43.92, 4, 1, 1, '', '2024-04-21 21:16:20', '2024-04-21 21:34:20', '2024-04-21 22:54:20', '2024-04-21 23:23:20', NULL, '2024-04-21 21:10:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (118, 'DD202605081028597f67dd37', 84, 49, 12, 1, '舒适型', 1, '北京市海淀区街道', 116.470556, 39.501127, '北京市朝阳区街道', 116.148822, 39.344694, 13.14, 42.71, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-01-21 06:17:29', NULL, NULL, NULL, NULL, '2024-01-21 06:16:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (119, 'DD202605081028594a8a2897', 68, 98, 23, 1, '舒适型', 1, '深圳市海淀区街道', 116.198474, 41.906473, '北京市西城区街道', 116.457478, 41.902008, 26.00, 98.66, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-01-06 09:59:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (120, 'DD20260508102859d7195a28', 470, 116, 31, 2, '经济型', 3, '武汉市西城区街道', 117.655066, 40.216488, '西安市东城区街道', 117.317456, 40.506489, 13.10, 50.00, 14.92, 55.41, 55.41, 13.26, 42.15, 4, 1, 1, '', '2025-07-06 01:49:25', '2025-07-06 01:54:25', '2025-07-06 03:31:25', '2025-07-06 03:32:25', NULL, '2025-07-06 01:48:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (121, 'DD2026050810285996da7bfb', 258, 177, 46, 1, '商务型', 3, '广州市福田区街道', 117.474364, 40.961816, '深圳市福田区街道', 117.884172, 41.083351, 19.50, 50.88, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-07-07 00:31:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (122, 'DD202605081028593f9d3a99', 79, 122, 32, 1, '经济型', 2, '北京市东城区街道', 119.150990, 39.243675, '重庆市西城区街道', 118.801682, 39.356568, 29.75, 109.89, 27.36, 62.81, 62.81, 17.98, 44.83, 4, 1, 2, '', '2024-09-02 09:34:22', '2024-09-02 09:49:22', '2024-09-02 10:34:22', '2024-09-02 10:54:22', NULL, '2024-09-02 09:29:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (123, 'DD20260508102859fcfc3d58', 81, 64, 17, 2, '商务型', 2, '武汉市南山区街道', 119.586383, 41.669726, '北京市海淀区街道', 119.760918, 41.632621, 9.51, 27.57, 10.16, 24.81, 24.81, 2.45, 22.36, 5, 2, 0, '用户取消', '2025-08-12 02:10:59', '2025-08-12 02:36:59', '2025-08-12 04:29:59', NULL, '2025-08-12 02:16:59', '2025-08-12 02:05:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (124, 'DD20260508102859a66253e9', 274, 116, 31, 2, '商务型', 1, '上海市东城区街道', 118.250850, 39.181927, '南京市福田区街道', 118.641560, 39.325432, 13.12, 26.90, 12.96, 45.92, 45.92, 11.64, 34.28, 5, 2, 0, '司机取消', '2026-02-06 01:51:15', '2026-02-06 02:19:15', '2026-02-06 02:56:15', NULL, '2026-02-06 02:43:15', '2026-02-06 01:46:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (125, 'DD2026050810285919f3e258', 435, NULL, NULL, 1, '经济型', 1, '南京市福田区街道', 117.774080, 40.987022, '杭州市南山区街道', 117.919208, 41.024025, 23.16, 51.26, 22.66, 67.83, 67.83, 12.23, 55.60, 5, 2, 0, '系统取消', '2026-03-01 21:14:46', '2026-03-01 21:32:46', '2026-03-01 23:16:46', NULL, '2026-03-01 21:37:46', '2026-03-01 21:01:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (126, 'DD2026050810285992e88f6a', 112, NULL, NULL, 1, '商务型', 1, '北京市西城区街道', 116.590337, 41.676831, '成都市东城区街道', 116.912831, 41.430975, 29.60, 101.26, 33.40, 95.82, 95.82, 23.65, 72.17, 5, 2, 0, '司机取消', '2026-04-26 07:17:33', '2026-04-26 07:46:33', '2026-04-26 09:39:33', NULL, '2026-04-26 07:18:33', '2026-04-26 07:10:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (127, 'DD202605081028594374a09c', 338, 141, 38, 2, '商务型', 2, '深圳市海淀区街道', 116.191984, 40.970504, '重庆市朝阳区街道', 116.543517, 41.094657, 13.20, 37.85, 13.33, 44.98, 44.98, 11.81, 33.17, 4, 1, 1, '', '2024-05-09 20:13:46', '2024-05-09 20:41:46', '2024-05-09 21:23:46', '2024-05-09 21:29:46', NULL, '2024-05-09 20:12:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (128, 'DD20260508102859b4a3783e', 268, 100, 25, 1, '舒适型', 1, '成都市福田区街道', 117.267001, 40.561362, '南京市朝阳区街道', 116.933876, 40.724675, 28.37, 62.05, 28.91, 77.59, 77.59, 3.80, 73.79, 5, 2, 0, '用户取消', '2025-08-10 14:22:27', '2025-08-10 14:27:27', '2025-08-10 16:17:27', NULL, '2025-08-10 14:40:27', '2025-08-10 14:18:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (129, 'DD2026050810285967320500', 225, 157, 42, 1, '舒适型', 3, '武汉市南山区街道', 119.956103, 39.274968, '北京市朝阳区街道', 119.919562, 39.183342, 19.41, 71.32, 21.24, 52.01, 52.01, 3.83, 48.18, 4, 1, 2, '', '2024-04-21 20:47:31', '2024-04-21 21:05:31', '2024-04-21 21:32:31', '2024-04-21 21:55:31', NULL, '2024-04-21 20:43:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (130, 'DD202605081028593c41ef5f', 215, 62, 16, 1, '舒适型', 3, '成都市海淀区街道', 119.642565, 39.345631, '南京市南山区街道', 119.552246, 39.581088, 8.43, 16.93, 8.00, 20.10, 20.10, 1.80, 18.30, 4, 1, 1, '', '2024-09-13 01:28:19', '2024-09-13 01:48:19', '2024-09-13 02:56:19', '2024-09-13 03:01:19', NULL, '2024-09-13 01:26:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (131, 'DD202605081028599d06bdf3', 153, 30, 6, 1, '经济型', 2, '重庆市南山区街道', 117.462022, 39.135975, '成都市福田区街道', 117.799281, 39.244526, 21.51, 48.48, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-03-25 17:16:59', NULL, NULL, NULL, NULL, '2026-03-25 17:13:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (132, 'DD202605081028593fc00df6', 457, 150, 40, 1, '商务型', 1, '深圳市东城区街道', 118.075807, 41.281204, '武汉市东城区街道', 118.492932, 41.027487, 4.96, 18.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-09-10 15:36:00', '2025-09-10 15:43:00', NULL, NULL, NULL, '2025-09-10 15:22:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (133, 'DD2026050810285944ceab67', 68, 56, 15, 2, '商务型', 3, '成都市东城区街道', 116.331637, 40.886383, '重庆市朝阳区街道', 116.079368, 40.788592, 3.34, 10.09, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-01-28 07:22:36', '2025-01-28 07:39:36', NULL, NULL, NULL, '2025-01-28 07:11:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (134, 'DD2026050810285964ebd064', 430, NULL, NULL, 1, '舒适型', 2, '杭州市朝阳区街道', 117.646576, 39.040707, '西安市东城区街道', 117.890479, 39.227627, 16.62, 44.19, 15.07, 36.23, 36.23, 3.73, 32.50, 4, 1, 2, '', '2024-09-05 16:55:56', '2024-09-05 17:19:56', '2024-09-05 18:09:56', '2024-09-05 18:19:56', NULL, '2024-09-05 16:46:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (135, 'DD20260508102859a26f40bb', 223, 157, 42, 1, '经济型', 2, '武汉市海淀区街道', 119.874362, 40.034023, '武汉市西城区街道', 119.466456, 40.135741, 18.12, 60.86, 21.51, 66.90, 66.90, 2.15, 64.75, 4, 1, 2, '', '2024-09-05 20:52:04', '2024-09-05 21:08:04', '2024-09-05 23:05:04', '2024-09-05 23:28:04', NULL, '2024-09-05 20:40:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (136, 'DD20260508102859314c7870', 276, 64, 17, 2, '经济型', 2, '南京市朝阳区街道', 119.602440, 41.156777, '西安市福田区街道', 119.924535, 41.239167, 24.26, 81.23, 27.13, 99.84, 99.84, 11.41, 88.43, 5, 2, 0, '系统取消', '2025-12-19 07:30:03', '2025-12-19 07:39:03', '2025-12-19 08:08:03', NULL, '2025-12-19 07:27:03', '2025-12-19 07:25:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (137, 'DD20260508102859804d543e', 469, 56, 15, 1, '经济型', 1, '上海市南山区街道', 117.185121, 39.832501, '西安市西城区街道', 117.056987, 39.565723, 3.71, 14.02, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-05-20 13:17:40', '2024-05-20 13:28:40', NULL, NULL, NULL, '2024-05-20 13:13:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (138, 'DD20260508102859624dac48', 477, 194, 51, 2, '舒适型', 1, '南京市东城区街道', 117.486574, 40.581804, '上海市西城区街道', 117.589866, 40.836491, 13.23, 40.97, 12.76, 49.84, 49.84, 11.69, 38.15, 4, 1, 1, '', '2024-02-10 07:53:34', '2024-02-10 08:10:34', '2024-02-10 08:32:34', '2024-02-10 08:44:34', NULL, '2024-02-10 07:41:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (139, 'DD20260508102859e4d9070f', 283, 157, 42, 2, '舒适型', 1, '武汉市海淀区街道', 116.884699, 40.255964, '武汉市东城区街道', 116.615716, 40.128525, 19.20, 52.03, 19.74, 46.50, 46.50, 7.84, 38.66, 5, 2, 0, '系统取消', '2026-04-21 21:36:57', '2026-04-21 21:59:57', '2026-04-21 22:27:57', NULL, '2026-04-21 22:16:57', '2026-04-21 21:30:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (140, 'DD2026050810285945897f92', 105, 122, 32, 1, '经济型', 1, '南京市西城区街道', 119.315766, 39.714470, '杭州市西城区街道', 119.791260, 39.691429, 13.09, 51.65, 14.66, 34.80, 34.80, 5.32, 29.48, 5, 2, 0, '用户取消', '2024-10-06 20:35:48', '2024-10-06 20:57:48', '2024-10-06 22:15:48', NULL, '2024-10-06 21:20:48', '2024-10-06 20:32:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (141, 'DD202605081028595ad31861', 260, 37, 9, 2, '商务型', 2, '上海市朝阳区街道', 116.134727, 40.875812, '重庆市福田区街道', 116.019097, 40.827750, 13.63, 31.97, 12.73, 39.24, 39.24, 1.83, 37.41, 4, 1, 2, '', '2025-08-06 06:14:47', '2025-08-06 06:27:47', '2025-08-06 07:33:47', '2025-08-06 07:57:47', NULL, '2025-08-06 06:13:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (142, 'DD202605081028599ce7d7d7', 76, 64, 17, 2, '舒适型', 2, '广州市朝阳区街道', 116.414978, 41.605043, '上海市南山区街道', 115.956621, 41.377307, 22.12, 44.88, 24.74, 82.77, 82.77, 3.36, 79.41, 4, 1, 1, '', '2025-09-04 13:17:58', '2025-09-04 13:47:58', '2025-09-04 15:03:58', '2025-09-04 15:04:58', NULL, '2025-09-04 13:06:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (143, 'DD202605081028598d8cf762', 165, 108, 28, 2, '商务型', 2, '上海市东城区街道', 117.566328, 40.121760, '广州市朝阳区街道', 117.196621, 39.999318, 19.51, 57.25, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-05-26 01:28:57', '2025-05-26 01:53:57', NULL, NULL, NULL, '2025-05-26 01:20:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (144, 'DD20260508102859fdce6f67', 59, 45, 11, 1, '商务型', 1, '北京市东城区街道', 116.469302, 39.949064, '杭州市朝阳区街道', 116.317006, 39.874751, 6.77, 15.53, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-04-06 13:40:17', '2024-04-06 13:55:17', NULL, NULL, NULL, '2024-04-06 13:36:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (145, 'DD2026050810285994596abb', 224, NULL, NULL, 2, '经济型', 3, '深圳市福田区街道', 117.756221, 41.020328, '成都市东城区街道', 117.927798, 40.820646, 23.21, 84.28, 25.12, 70.09, 70.09, 6.13, 63.96, 4, 1, 2, '', '2024-12-25 23:37:51', '2024-12-25 23:59:51', '2024-12-26 01:37:51', '2024-12-26 01:59:51', NULL, '2024-12-25 23:26:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (146, 'DD2026050810285997415484', 474, 150, 40, 2, '经济型', 1, '重庆市东城区街道', 116.117296, 40.274917, '深圳市朝阳区街道', 115.970418, 40.447394, 4.58, 17.74, 4.70, 12.98, 12.98, 3.51, 9.47, 4, 1, 2, '', '2024-07-21 01:32:29', '2024-07-21 01:50:29', '2024-07-21 02:24:29', '2024-07-21 02:36:29', NULL, '2024-07-21 01:19:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (147, 'DD2026050810285943db9026', 430, 141, 38, 2, '经济型', 1, '北京市海淀区街道', 118.294497, 41.343159, '重庆市东城区街道', 118.222062, 41.276709, 11.34, 40.18, 10.24, 30.26, 30.26, 1.06, 29.20, 4, 1, 2, '', '2025-03-23 07:37:26', '2025-03-23 08:04:26', '2025-03-23 09:26:26', '2025-03-23 09:56:26', NULL, '2025-03-23 07:32:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (148, 'DD202605081028595b31f105', 433, 135, 35, 1, '经济型', 2, '杭州市南山区街道', 117.698214, 41.458930, '武汉市海淀区街道', 117.525668, 41.505767, 27.55, 80.86, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-06-04 16:05:19', '2025-06-04 16:33:19', NULL, NULL, NULL, '2025-06-04 16:04:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (149, 'DD20260508102859d6538a6c', 205, 137, 36, 2, '舒适型', 2, '深圳市福田区街道', 117.321232, 41.986649, '成都市东城区街道', 116.865089, 42.151135, 27.56, 108.52, 28.08, 62.79, 62.79, 6.25, 56.54, 4, 1, 1, '', '2025-10-30 07:20:20', '2025-10-30 07:45:20', '2025-10-30 09:33:20', '2025-10-30 09:35:20', NULL, '2025-10-30 07:10:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (150, 'DD20260508102859887d76ec', 74, 137, 36, 1, '舒适型', 3, '武汉市海淀区街道', 119.954955, 40.077108, '深圳市海淀区街道', 119.910257, 40.143494, 6.75, 14.57, 7.50, 21.62, 21.62, 3.77, 17.85, 4, 1, 1, '', '2026-01-15 14:30:08', '2026-01-15 14:48:08', '2026-01-15 16:32:08', '2026-01-15 17:02:08', NULL, '2026-01-15 14:25:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (151, 'DD20260508102859bc16f0fd', 20, 110, 29, 2, '舒适型', 1, '上海市西城区街道', 118.391689, 40.914694, '上海市南山区街道', 117.893193, 41.102743, 11.42, 34.46, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-01-03 08:53:18', '2026-01-03 09:20:18', NULL, NULL, NULL, '2026-01-03 08:44:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (152, 'DD202605081028594acd1ce3', 21, 129, 34, 1, '舒适型', 2, '南京市南山区街道', 119.214804, 39.924093, '重庆市南山区街道', 118.936855, 40.098947, 25.26, 54.92, 25.23, 90.13, 90.13, 0.48, 89.65, 4, 1, 2, '', '2024-05-22 09:01:21', '2024-05-22 09:17:21', '2024-05-22 09:51:21', '2024-05-22 10:00:21', NULL, '2024-05-22 08:58:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (153, 'DD20260508102859f452d6b1', 77, 141, 38, 1, '舒适型', 1, '北京市南山区街道', 117.128478, 40.458834, '武汉市南山区街道', 117.374717, 40.756503, 18.94, 65.58, 17.13, 39.92, 39.92, 8.91, 31.01, 4, 1, 2, '', '2024-07-27 02:19:38', '2024-07-27 02:28:38', '2024-07-27 02:50:38', '2024-07-27 03:11:38', NULL, '2024-07-27 02:10:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (154, 'DD20260508102859df980fef', 389, 129, 34, 1, '商务型', 3, '西安市东城区街道', 117.691307, 41.685187, '西安市海淀区街道', 117.251452, 41.463074, 19.64, 66.44, 22.95, 55.79, 55.79, 14.90, 40.89, 5, 2, 0, '司机取消', '2025-11-20 00:10:23', '2025-11-20 00:34:23', '2025-11-20 01:25:23', NULL, '2025-11-20 00:15:23', '2025-11-19 23:59:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (155, 'DD20260508102859e08a42e8', 254, 49, 12, 1, '舒适型', 3, '杭州市朝阳区街道', 117.395048, 41.637265, '西安市福田区街道', 117.204083, 41.491102, 8.58, 31.64, 8.55, 20.46, 20.46, 3.55, 16.91, 4, 1, 1, '', '2025-07-03 02:17:15', '2025-07-03 02:32:15', '2025-07-03 03:07:15', '2025-07-03 03:15:15', NULL, '2025-07-03 02:03:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (156, 'DD202605081028591636a24e', 60, 140, 37, 2, '商务型', 3, '深圳市东城区街道', 117.057313, 39.318554, '武汉市西城区街道', 117.506826, 39.035042, 16.70, 36.38, 16.56, 65.41, 65.41, 3.33, 62.08, 4, 1, 1, '', '2024-02-03 01:55:44', '2024-02-03 02:10:44', '2024-02-03 03:46:44', '2024-02-03 04:01:44', NULL, '2024-02-03 01:51:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (157, 'DD2026050810285997ad1bb0', 303, 45, 11, 1, '经济型', 1, '南京市西城区街道', 118.348724, 39.627045, '上海市西城区街道', 118.501698, 39.896266, 2.24, 7.34, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-03-11 03:11:29', '2024-03-11 03:36:29', NULL, NULL, NULL, '2024-03-11 03:03:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (158, 'DD20260508102859e973cdd4', 337, 159, 43, 1, '舒适型', 1, '成都市福田区街道', 116.953854, 41.601126, '武汉市海淀区街道', 117.317930, 41.415475, 18.22, 43.44, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-04-18 04:22:50', NULL, NULL, NULL, NULL, '2024-04-18 04:21:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (159, 'DD20260508102859cdb36688', 34, 56, 15, 2, '舒适型', 2, '重庆市福田区街道', 118.630166, 41.393898, '南京市东城区街道', 119.094943, 41.350414, 26.53, 95.70, 23.98, 49.35, 49.35, 13.33, 36.02, 4, 1, 1, '', '2026-01-22 12:01:51', '2026-01-22 12:09:51', '2026-01-22 12:48:51', '2026-01-22 13:02:51', NULL, '2026-01-22 11:57:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (160, 'DD2026050810285960636703', 7, 106, 27, 1, '舒适型', 1, '北京市福田区街道', 118.264067, 40.263986, '上海市西城区街道', 118.017118, 40.171349, 16.38, 47.65, 17.56, 54.67, 54.67, 0.08, 54.59, 4, 1, 1, '', '2025-07-01 06:23:54', '2025-07-01 06:33:54', '2025-07-01 07:38:54', '2025-07-01 08:05:54', NULL, '2025-07-01 06:22:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (161, 'DD20260508102859ff1e83a8', 329, 37, 9, 2, '舒适型', 2, '武汉市南山区街道', 118.775378, 39.739159, '武汉市西城区街道', 118.389388, 39.674643, 11.19, 41.45, 11.28, 26.38, 26.38, 5.12, 21.26, 4, 1, 1, '', '2024-04-04 07:37:05', '2024-04-04 07:48:05', '2024-04-04 09:44:05', '2024-04-04 10:07:05', NULL, '2024-04-04 07:36:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (162, 'DD20260508102859ea1ab86f', 237, 36, 8, 2, '经济型', 2, '成都市海淀区街道', 117.516390, 39.275249, '西安市福田区街道', 117.606884, 39.319931, 15.15, 30.64, 17.77, 49.65, 49.65, 0.37, 49.28, 4, 1, 1, '', '2025-04-08 21:00:25', '2025-04-08 21:29:25', '2025-04-08 23:17:25', '2025-04-08 23:46:25', NULL, '2025-04-08 20:46:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (163, 'DD20260508102859a5bb1010', 488, 94, 21, 2, '经济型', 1, '杭州市西城区街道', 119.347556, 40.125026, '武汉市东城区街道', 118.862862, 40.408156, 10.41, 36.12, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-04-15 14:32:20', '2024-04-15 14:54:20', NULL, NULL, NULL, '2024-04-15 14:18:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (164, 'DD20260508102859b42731da', 488, 99, 24, 1, '舒适型', 2, '深圳市东城区街道', 116.128325, 39.345041, '重庆市朝阳区街道', 115.769324, 39.354025, 2.68, 8.20, 2.44, 5.05, 5.05, 1.12, 3.93, 4, 1, 1, '', '2025-02-18 20:28:20', '2025-02-18 20:36:20', '2025-02-18 21:09:20', '2025-02-18 21:34:20', NULL, '2025-02-18 20:23:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (165, 'DD2026050810285901255697', 234, 64, 17, 2, '经济型', 3, '广州市南山区街道', 117.350761, 39.827336, '杭州市东城区街道', 117.048224, 40.103369, 2.91, 7.25, 2.87, 7.57, 7.57, 0.30, 7.27, 4, 1, 2, '', '2026-04-07 06:15:07', '2026-04-07 06:26:07', '2026-04-07 07:16:07', '2026-04-07 07:23:07', NULL, '2026-04-07 06:09:07', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (166, 'DD202605081028591ec8b018', 284, 177, 46, 1, '经济型', 3, '武汉市海淀区街道', 119.545044, 39.197674, '杭州市海淀区街道', 119.276533, 38.955142, 25.62, 56.29, 27.70, 80.90, 80.90, 4.27, 76.63, 5, 2, 0, '司机取消', '2025-01-26 13:23:22', '2025-01-26 13:35:22', '2025-01-26 15:11:22', NULL, '2025-01-26 13:50:22', '2025-01-26 13:12:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (167, 'DD202605081028597f82d9ec', 73, 32, 7, 2, '商务型', 2, '南京市南山区街道', 119.159643, 39.513730, '上海市南山区街道', 119.417302, 39.268171, 10.52, 35.99, 12.32, 33.79, 33.79, 9.26, 24.53, 4, 1, 2, '', '2024-10-19 18:19:32', '2024-10-19 18:45:32', '2024-10-19 20:06:32', '2024-10-19 20:35:32', NULL, '2024-10-19 18:07:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (168, 'DD202605081028596cc507a8', 94, 157, 42, 1, '舒适型', 2, '北京市海淀区街道', 116.433333, 41.944739, '北京市海淀区街道', 116.575983, 42.211029, 18.60, 57.84, 17.47, 35.48, 35.48, 8.59, 26.89, 4, 1, 1, '', '2026-03-18 04:58:50', '2026-03-18 05:03:50', '2026-03-18 05:53:50', '2026-03-18 06:23:50', NULL, '2026-03-18 04:45:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (169, 'DD20260508102859dc05aa97', 79, 64, 17, 2, '舒适型', 3, '广州市海淀区街道', 119.872191, 41.523224, '杭州市南山区街道', 119.815905, 41.555342, 18.95, 67.75, 21.36, 74.93, 74.93, 19.26, 55.67, 5, 2, 0, '用户取消', '2025-02-18 20:52:30', '2025-02-18 21:09:30', '2025-02-18 22:43:30', NULL, '2025-02-18 21:44:30', '2025-02-18 20:45:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (170, 'DD2026050810285951152123', 125, 108, 28, 2, '商务型', 3, '武汉市海淀区街道', 116.818111, 39.705957, '西安市福田区街道', 117.114242, 39.964857, 18.18, 65.55, 20.17, 46.98, 46.98, 7.51, 39.47, 4, 1, 2, '', '2025-02-23 07:55:00', '2025-02-23 08:10:00', '2025-02-23 09:52:00', '2025-02-23 10:11:00', NULL, '2025-02-23 07:54:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (171, 'DD20260508102859d84bb79b', 493, 62, 16, 1, '舒适型', 3, '武汉市南山区街道', 116.553423, 40.680841, '重庆市东城区街道', 116.723151, 40.841453, 29.45, 117.23, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-01-08 11:35:33', '2024-01-08 11:50:33', NULL, NULL, NULL, '2024-01-08 11:31:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (172, 'DD202605081028591cdcf3b0', 262, 62, 16, 2, '商务型', 3, '深圳市福田区街道', 119.197440, 40.445832, '杭州市东城区街道', 119.681288, 40.731737, 25.81, 56.66, 30.96, 76.49, 76.49, 11.17, 65.32, 4, 1, 1, '', '2025-03-20 15:18:01', '2025-03-20 15:42:01', '2025-03-20 17:33:01', '2025-03-20 18:01:01', NULL, '2025-03-20 15:15:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (173, 'DD20260508102859591b9ed1', 123, 1, 1, 1, '舒适型', 3, '武汉市西城区街道', 118.512062, 40.144475, '广州市海淀区街道', 118.856534, 39.960106, 2.67, 10.37, 2.76, 5.53, 5.53, 1.19, 4.34, 5, 2, 0, '司机取消', '2025-07-08 23:41:28', '2025-07-08 23:59:28', '2025-07-09 01:24:28', NULL, '2025-07-09 00:35:28', '2025-07-08 23:39:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (174, 'DD2026050810285967e19d0a', 105, NULL, NULL, 1, '舒适型', 1, '西安市海淀区街道', 118.250434, 40.558583, '武汉市西城区街道', 117.962640, 40.850286, 13.94, 54.58, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-11-03 15:02:53', '2025-11-03 15:22:53', NULL, NULL, NULL, '2025-11-03 15:00:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (175, 'DD2026050810285965a1575c', 429, 122, 32, 2, '经济型', 2, '南京市南山区街道', 117.113204, 41.622541, '深圳市东城区街道', 117.462465, 41.843252, 17.27, 51.69, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-03-23 12:50:51', NULL, NULL, NULL, NULL, '2025-03-23 12:36:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (176, 'DD20260508102859e88fada0', 388, 122, 32, 1, '商务型', 3, '上海市海淀区街道', 119.293820, 40.973160, '重庆市福田区街道', 119.087114, 41.168361, 9.05, 31.70, 10.45, 26.43, 26.43, 6.98, 19.45, 5, 2, 0, '司机取消', '2024-12-29 23:35:18', '2024-12-29 23:47:18', '2024-12-30 00:30:18', NULL, '2024-12-29 23:51:18', '2024-12-29 23:20:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (177, 'DD20260508102859016b9097', 152, 110, 29, 2, '经济型', 1, '广州市西城区街道', 116.012347, 41.442232, '重庆市南山区街道', 116.310211, 41.738676, 28.90, 90.88, 31.83, 116.67, 116.67, 25.25, 91.42, 4, 1, 2, '', '2024-09-16 23:50:23', '2024-09-17 00:01:23', '2024-09-17 01:19:23', '2024-09-17 01:38:23', NULL, '2024-09-16 23:37:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (178, 'DD20260508102859896a2511', 114, 94, 21, 2, '经济型', 1, '上海市西城区街道', 116.379595, 40.251774, '武汉市西城区街道', 116.560251, 40.228364, 23.31, 65.89, 24.52, 51.69, 51.69, 3.32, 48.37, 4, 1, 1, '', '2025-10-27 07:14:56', '2025-10-27 07:34:56', '2025-10-27 08:40:56', '2025-10-27 09:07:56', NULL, '2025-10-27 07:09:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (179, 'DD20260508102859f7f3124e', 28, 37, 9, 2, '舒适型', 1, '重庆市西城区街道', 119.787303, 41.397805, '深圳市朝阳区街道', 119.850708, 41.371387, 23.06, 59.26, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-04-29 20:30:45', '2025-04-29 21:00:45', NULL, NULL, NULL, '2025-04-29 20:15:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (180, 'DD20260508102859db95803c', 142, 135, 35, 1, '经济型', 3, '北京市西城区街道', 118.092165, 41.038240, '北京市南山区街道', 118.379742, 41.336156, 22.16, 68.23, 24.31, 73.18, 73.18, 8.54, 64.64, 4, 1, 1, '', '2024-05-25 18:59:52', '2024-05-25 19:19:52', '2024-05-25 20:21:52', '2024-05-25 20:48:52', NULL, '2024-05-25 18:46:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (181, 'DD2026050810285941ca7801', 5, NULL, NULL, 1, '经济型', 1, '重庆市海淀区街道', 118.340000, 40.959617, '重庆市朝阳区街道', 117.944009, 40.915561, 10.69, 32.68, 11.92, 44.87, 44.87, 7.97, 36.90, 4, 1, 2, '', '2025-04-15 06:47:53', '2025-04-15 07:15:53', '2025-04-15 08:53:53', '2025-04-15 08:57:53', NULL, '2025-04-15 06:42:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (182, 'DD2026050810285992ffb707', 81, 159, 43, 2, '商务型', 2, '西安市西城区街道', 117.085340, 39.710624, '西安市福田区街道', 117.137049, 39.842449, 6.10, 17.25, 5.53, 11.83, 11.83, 2.58, 9.25, 6, 0, 0, '', '2025-09-05 17:58:45', '2025-09-05 18:28:45', '2025-09-05 19:51:45', NULL, NULL, '2025-09-05 17:48:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (183, 'DD2026050810285920894742', 49, 36, 8, 2, '经济型', 1, '上海市南山区街道', 118.355780, 40.289615, '武汉市西城区街道', 118.750192, 40.487810, 14.24, 42.55, 16.67, 37.90, 37.90, 10.82, 27.08, 4, 1, 2, '', '2025-08-15 13:35:40', '2025-08-15 13:58:40', '2025-08-15 15:39:40', '2025-08-15 16:08:40', NULL, '2025-08-15 13:30:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (184, 'DD20260508102859e0f7ea73', 290, 45, 11, 2, '舒适型', 2, '武汉市东城区街道', 119.491244, 41.927042, '杭州市福田区街道', 119.313617, 41.767820, 2.54, 7.86, 2.54, 9.23, 9.23, 2.27, 6.96, 6, 0, 0, '', '2024-02-10 01:16:12', '2024-02-10 01:40:12', '2024-02-10 03:20:12', NULL, NULL, '2024-02-10 01:06:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (185, 'DD2026050810285983dbdfb2', 375, 62, 16, 2, '商务型', 3, '北京市海淀区街道', 118.887338, 40.433856, '北京市南山区街道', 118.950371, 40.605628, 14.72, 47.25, 16.32, 53.35, 53.35, 5.66, 47.69, 4, 1, 2, '', '2025-03-15 03:17:29', '2025-03-15 03:33:29', '2025-03-15 05:17:29', '2025-03-15 05:25:29', NULL, '2025-03-15 03:08:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (186, 'DD2026050810285946397716', 73, NULL, NULL, 1, '舒适型', 2, '杭州市西城区街道', 118.530517, 40.420774, '上海市福田区街道', 118.250878, 40.346732, 12.58, 42.40, 12.39, 31.03, 31.03, 3.38, 27.65, 5, 2, 0, '系统取消', '2025-12-13 21:30:24', '2025-12-13 21:43:24', '2025-12-13 23:29:24', NULL, '2025-12-13 21:58:24', '2025-12-13 21:28:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (187, 'DD20260508102859f04a082a', 289, 30, 6, 2, '经济型', 1, '深圳市南山区街道', 117.827501, 41.391998, '北京市朝阳区街道', 118.308649, 41.389311, 13.29, 29.43, 14.28, 45.70, 45.70, 3.10, 42.60, 5, 2, 0, '用户取消', '2024-10-13 20:43:44', '2024-10-13 20:48:44', '2024-10-13 21:04:44', NULL, '2024-10-13 20:37:44', '2024-10-13 20:35:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (188, 'DD20260508102859cd2b5fb0', 485, 62, 16, 1, '经济型', 3, '成都市西城区街道', 117.149180, 40.089388, '杭州市海淀区街道', 116.671042, 40.319581, 5.34, 14.69, 5.21, 17.63, 17.63, 0.06, 17.57, 4, 1, 2, '', '2024-10-11 20:28:33', '2024-10-11 20:36:33', '2024-10-11 22:08:33', '2024-10-11 22:26:33', NULL, '2024-10-11 20:23:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (189, 'DD202605081028590342460e', 185, 116, 31, 2, '舒适型', 1, '成都市福田区街道', 118.827962, 41.598341, '南京市福田区街道', 118.616398, 41.357630, 17.97, 53.34, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-03-19 12:34:11', NULL, NULL, NULL, NULL, '2024-03-19 12:27:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (190, 'DD2026050810285958ea03b6', 139, 1, 1, 2, '商务型', 3, '广州市西城区街道', 118.617853, 41.674605, '成都市西城区街道', 118.182221, 41.885145, 23.72, 74.50, 21.87, 87.42, 87.42, 11.08, 76.34, 5, 2, 0, '系统取消', '2026-04-07 02:50:29', '2026-04-07 02:55:29', '2026-04-07 04:08:29', NULL, '2026-04-07 03:12:29', '2026-04-07 02:39:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (191, 'DD202605081028590cefbc43', 285, 185, 49, 2, '商务型', 2, '上海市朝阳区街道', 118.737752, 40.673950, '重庆市东城区街道', 118.275813, 40.726718, 20.74, 71.68, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-04-20 04:52:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (192, 'DD20260508102859a859b460', 253, 62, 16, 1, '舒适型', 3, '上海市东城区街道', 117.738086, 39.952542, '杭州市海淀区街道', 117.890385, 40.180098, 16.79, 66.41, 19.31, 67.41, 67.41, 6.25, 61.16, 4, 1, 1, '', '2024-09-08 07:45:09', '2024-09-08 07:53:09', '2024-09-08 08:32:09', '2024-09-08 08:38:09', NULL, '2024-09-08 07:42:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (193, 'DD20260508102859548c64a0', 334, 23, 4, 1, '舒适型', 1, '广州市南山区街道', 117.628767, 40.703736, '南京市东城区街道', 118.009657, 40.656476, 6.11, 17.11, 7.29, 26.89, 26.89, 4.61, 22.28, 5, 2, 0, '系统取消', '2024-09-17 12:27:46', '2024-09-17 12:33:46', '2024-09-17 12:47:46', NULL, '2024-09-17 12:37:46', '2024-09-17 12:14:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (194, 'DD20260508102859a0893e0b', 331, 36, 8, 2, '舒适型', 2, '深圳市南山区街道', 116.161594, 40.514827, '南京市福田区街道', 116.599821, 40.442837, 5.44, 15.67, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-05-09 11:54:29', NULL, NULL, NULL, NULL, '2025-05-09 11:41:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (195, 'DD2026050810285917b26a9d', 395, 150, 40, 2, '商务型', 1, '北京市南山区街道', 118.003788, 41.626250, '上海市福田区街道', 117.550696, 41.518358, 28.89, 108.59, 29.93, 109.33, 109.33, 16.50, 92.83, 4, 1, 2, '', '2025-04-29 07:12:04', '2025-04-29 07:18:04', '2025-04-29 08:07:04', '2025-04-29 08:27:04', NULL, '2025-04-29 07:09:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (196, 'DD20260508102859f3d5a53a', 163, NULL, NULL, 1, '经济型', 3, '北京市海淀区街道', 116.185678, 41.199489, '北京市南山区街道', 115.718336, 41.144787, 16.68, 34.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-10-21 09:20:30', NULL, NULL, NULL, NULL, '2025-10-21 09:08:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (197, 'DD202605081028594d9ff0d2', 223, 185, 49, 2, '经济型', 3, '重庆市海淀区街道', 116.078832, 41.190113, '深圳市海淀区街道', 116.540432, 40.986156, 10.22, 31.32, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-06-11 10:10:33', '2025-06-11 10:36:33', NULL, NULL, NULL, '2025-06-11 10:07:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (198, 'DD20260508102859d48025b4', 234, 194, 51, 2, '舒适型', 3, '重庆市东城区街道', 119.974106, 39.591507, '杭州市东城区街道', 120.384470, 39.681561, 6.57, 16.28, 6.94, 15.48, 15.48, 2.12, 13.36, 4, 1, 2, '', '2025-10-28 04:52:45', '2025-10-28 05:05:45', '2025-10-28 07:00:45', '2025-10-28 07:03:45', NULL, '2025-10-28 04:44:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (199, 'DD202605081028593eb01dc2', 465, 106, 27, 2, '商务型', 1, '广州市东城区街道', 119.151916, 41.195227, '广州市福田区街道', 118.967351, 41.488915, 5.51, 18.34, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-08-15 00:21:05', NULL, NULL, NULL, NULL, '2025-08-15 00:07:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (200, 'DD20260508102859aac9a4e5', 179, 106, 27, 1, '经济型', 2, '北京市东城区街道', 116.002274, 40.044901, '武汉市西城区街道', 116.462434, 39.764937, 10.62, 41.24, 10.16, 26.30, 26.30, 4.69, 21.61, 6, 0, 0, '', '2026-01-25 21:54:10', '2026-01-25 22:24:10', '2026-01-25 23:40:10', NULL, NULL, '2026-01-25 21:46:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (201, 'DD202605081028599b272390', 105, 157, 42, 1, '舒适型', 1, '重庆市福田区街道', 116.857632, 40.184706, '深圳市西城区街道', 116.790039, 40.173981, 20.11, 60.76, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-08-29 09:32:14', NULL, NULL, NULL, NULL, '2025-08-29 09:31:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (202, 'DD2026050810285931292c1b', 266, 1, 1, 1, '商务型', 1, '重庆市东城区街道', 118.423078, 39.423724, '成都市东城区街道', 118.905808, 39.131419, 10.06, 30.40, 10.27, 39.97, 39.97, 2.35, 37.62, 4, 1, 1, '', '2024-03-05 01:04:03', '2024-03-05 01:14:03', '2024-03-05 02:43:03', '2024-03-05 02:48:03', NULL, '2024-03-05 01:00:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (203, 'DD2026050810285971818696', 138, 99, 24, 1, '商务型', 2, '广州市西城区街道', 119.071039, 39.592726, '成都市南山区街道', 118.923190, 39.655293, 2.86, 8.16, 2.61, 5.31, 5.31, 0.95, 4.36, 4, 1, 1, '', '2025-10-08 17:16:33', '2025-10-08 17:41:33', '2025-10-08 17:53:33', '2025-10-08 17:54:33', NULL, '2025-10-08 17:01:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (204, 'DD202605081028597b14b823', 338, NULL, NULL, 1, '商务型', 1, '南京市海淀区街道', 117.687085, 40.563078, '深圳市南山区街道', 117.523436, 40.814556, 21.00, 61.78, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-01-07 07:12:51', NULL, NULL, NULL, NULL, '2026-01-07 07:01:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (205, 'DD202605081028595ad4541d', 85, 106, 27, 1, '商务型', 3, '深圳市东城区街道', 117.577625, 39.706586, '深圳市朝阳区街道', 117.836805, 39.436243, 24.38, 60.55, 24.48, 93.20, 93.20, 19.92, 73.28, 4, 1, 2, '', '2024-02-16 16:08:00', '2024-02-16 16:30:00', '2024-02-16 16:53:00', '2024-02-16 17:17:00', NULL, '2024-02-16 16:06:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (206, 'DD202605081028590f2d6fde', 44, 98, 23, 1, '舒适型', 3, '深圳市东城区街道', 116.739642, 39.234021, '成都市福田区街道', 116.525905, 39.221066, 5.04, 15.62, 5.55, 20.26, 20.26, 1.72, 18.54, 5, 2, 0, '司机取消', '2025-07-07 17:52:53', '2025-07-07 18:05:53', '2025-07-07 19:09:53', NULL, '2025-07-07 17:55:53', '2025-07-07 17:46:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (207, 'DD202605081028599f829af0', 290, 94, 21, 2, '商务型', 2, '武汉市东城区街道', 117.004595, 39.529752, '成都市西城区街道', 116.873353, 39.729266, 22.21, 87.53, 26.17, 75.41, 75.41, 12.49, 62.92, 4, 1, 1, '', '2024-01-19 13:56:16', '2024-01-19 14:17:16', '2024-01-19 15:20:16', '2024-01-19 15:33:16', NULL, '2024-01-19 13:47:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (208, 'DD20260508102859491b28ca', 233, 129, 34, 1, '经济型', 2, '西安市西城区街道', 117.387365, 39.223815, '南京市海淀区街道', 117.164970, 39.068255, 26.84, 72.20, 25.33, 54.78, 54.78, 12.74, 42.04, 4, 1, 2, '', '2024-05-25 20:11:47', '2024-05-25 20:28:47', '2024-05-25 21:33:47', '2024-05-25 21:52:47', NULL, '2024-05-25 19:57:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (209, 'DD2026050810285972d1a5b4', 179, 137, 36, 2, '商务型', 1, '重庆市朝阳区街道', 119.314780, 39.296340, '广州市朝阳区街道', 119.092938, 39.198031, 19.97, 58.13, 23.79, 62.26, 62.26, 13.14, 49.12, 4, 1, 1, '', '2025-06-15 05:20:32', '2025-06-15 05:27:32', '2025-06-15 07:03:32', '2025-06-15 07:13:32', NULL, '2025-06-15 05:16:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (210, 'DD202605081028595bc92d6f', 329, 141, 38, 2, '商务型', 2, '武汉市海淀区街道', 117.363423, 41.856268, '北京市东城区街道', 117.554427, 41.627642, 28.35, 80.50, 32.40, 108.85, 108.85, 6.63, 102.22, 4, 1, 1, '', '2025-06-01 13:45:11', '2025-06-01 13:52:11', '2025-06-01 14:50:11', '2025-06-01 14:59:11', NULL, '2025-06-01 13:31:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (211, 'DD20260508102859b7d581e9', 120, 135, 35, 1, '经济型', 2, '广州市东城区街道', 119.939560, 40.279548, '重庆市西城区街道', 119.694414, 40.456159, 24.98, 60.51, 28.05, 60.97, 60.97, 16.36, 44.61, 4, 1, 2, '', '2024-11-24 13:30:41', '2024-11-24 13:57:41', '2024-11-24 15:00:41', '2024-11-24 15:24:41', NULL, '2024-11-24 13:18:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (212, 'DD2026050810285990b29afd', 139, 185, 49, 1, '经济型', 3, '西安市西城区街道', 116.161467, 40.899835, '北京市西城区街道', 116.051498, 40.768949, 26.14, 65.82, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-07-30 23:11:36', NULL, NULL, NULL, NULL, '2025-07-30 23:02:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (213, 'DD2026050810285930d4945c', 306, 30, 6, 1, '舒适型', 3, '上海市东城区街道', 117.464332, 40.955440, '南京市朝阳区街道', 117.597998, 41.077142, 9.36, 27.91, 10.92, 30.31, 30.31, 6.78, 23.53, 4, 1, 1, '', '2024-10-16 21:18:14', '2024-10-16 21:25:14', '2024-10-16 21:57:14', '2024-10-16 22:23:14', NULL, '2024-10-16 21:07:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (214, 'DD20260508102859e251170f', 418, 171, 45, 1, '经济型', 2, '上海市东城区街道', 119.959710, 39.253950, '成都市西城区街道', 119.572867, 39.055154, 29.32, 86.70, 27.24, 73.76, 73.76, 16.60, 57.16, 5, 2, 0, '司机取消', '2026-02-19 13:34:25', '2026-02-19 14:04:25', '2026-02-19 14:26:25', NULL, '2026-02-19 13:37:25', '2026-02-19 13:33:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (215, 'DD202605081028598ff61b29', 458, 171, 45, 2, '舒适型', 3, '成都市东城区街道', 119.844397, 41.525050, '西安市东城区街道', 119.489238, 41.275572, 28.34, 67.03, 25.99, 90.30, 90.30, 15.35, 74.95, 4, 1, 1, '', '2024-10-24 17:16:37', '2024-10-24 17:34:37', '2024-10-24 18:21:37', '2024-10-24 18:45:37', NULL, '2024-10-24 17:03:37', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (216, 'DD20260508102859d029ee20', 289, 56, 15, 1, '商务型', 2, '武汉市海淀区街道', 119.177569, 40.467687, '广州市南山区街道', 119.552204, 40.693772, 10.49, 35.99, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-01-04 12:38:06', '2024-01-04 12:43:06', NULL, NULL, NULL, '2024-01-04 12:25:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (217, 'DD202605081028591e7665aa', 254, 122, 32, 2, '舒适型', 2, '深圳市福田区街道', 118.807821, 40.648336, '重庆市海淀区街道', 119.022634, 40.596929, 22.28, 67.79, 21.51, 66.62, 66.62, 19.53, 47.09, 4, 1, 1, '', '2025-04-27 02:54:44', '2025-04-27 03:13:44', '2025-04-27 05:09:44', '2025-04-27 05:14:44', NULL, '2025-04-27 02:48:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (218, 'DD202605081028595318aff0', 166, 62, 16, 1, '商务型', 2, '深圳市朝阳区街道', 117.732666, 39.084201, '成都市西城区街道', 118.096305, 38.803257, 27.74, 59.39, 30.87, 106.79, 106.79, 11.37, 95.42, 4, 1, 1, '', '2025-01-28 21:37:39', '2025-01-28 22:04:39', '2025-01-28 22:27:39', '2025-01-28 22:44:39', NULL, '2025-01-28 21:36:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (219, 'DD20260508102859ce35513b', 13, 56, 15, 1, '商务型', 1, '重庆市南山区街道', 117.350165, 41.535677, '成都市西城区街道', 117.440188, 41.249724, 12.04, 28.68, 14.37, 37.84, 37.84, 4.16, 33.68, 4, 1, 2, '', '2025-02-18 10:53:50', '2025-02-18 11:07:50', '2025-02-18 12:14:50', '2025-02-18 12:44:50', NULL, '2025-02-18 10:40:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (220, 'DD202605081028593d21d131', 344, 94, 21, 2, '商务型', 2, '西安市东城区街道', 118.323058, 40.118359, '重庆市南山区街道', 117.905162, 39.860378, 14.24, 52.94, 15.63, 41.44, 41.44, 6.25, 35.19, 4, 1, 1, '', '2025-06-23 16:09:01', '2025-06-23 16:32:01', '2025-06-23 17:15:01', '2025-06-23 17:38:01', NULL, '2025-06-23 15:54:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (221, 'DD20260508102859a8bd5c42', 459, 157, 42, 1, '舒适型', 1, '北京市南山区街道', 117.587072, 41.261942, '广州市西城区街道', 117.754018, 41.511493, 2.28, 8.28, 2.66, 8.21, 8.21, 0.58, 7.63, 6, 0, 0, '', '2024-04-16 11:22:27', '2024-04-16 11:38:27', '2024-04-16 12:05:27', NULL, NULL, '2024-04-16 11:09:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (222, 'DD202605081028592a13072f', 426, 141, 38, 2, '舒适型', 2, '南京市福田区街道', 116.159757, 40.014916, '上海市南山区街道', 116.119308, 40.312566, 7.12, 16.28, 7.61, 22.90, 22.90, 6.71, 16.19, 4, 1, 2, '', '2024-07-12 19:23:33', '2024-07-12 19:42:33', '2024-07-12 21:12:33', '2024-07-12 21:18:33', NULL, '2024-07-12 19:09:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (223, 'DD20260508102859b40b154d', 230, 94, 21, 1, '舒适型', 1, '西安市东城区街道', 118.793833, 41.763304, '杭州市南山区街道', 118.471067, 41.501621, 3.46, 13.37, 3.63, 10.25, 10.25, 1.96, 8.29, 4, 1, 1, '', '2024-03-18 04:59:45', '2024-03-18 05:27:45', '2024-03-18 05:39:45', '2024-03-18 05:41:45', NULL, '2024-03-18 04:49:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (224, 'DD202605081028593ab1cf3a', 366, 43, 10, 2, '舒适型', 3, '武汉市南山区街道', 119.601116, 40.544048, '武汉市朝阳区街道', 119.558905, 40.250181, 21.40, 85.19, 23.18, 64.35, 64.35, 6.87, 57.48, 4, 1, 1, '', '2026-03-05 07:07:13', '2026-03-05 07:32:13', '2026-03-05 08:00:13', '2026-03-05 08:08:13', NULL, '2026-03-05 06:59:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (225, 'DD202605081028595a56226b', 137, 98, 23, 2, '商务型', 3, '武汉市海淀区街道', 116.573660, 41.923873, '西安市东城区街道', 116.849952, 42.130734, 17.71, 68.42, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-07-18 19:19:44', NULL, NULL, NULL, NULL, '2024-07-18 19:07:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (226, 'DD20260508102859b38a9c94', 363, 98, 23, 1, '商务型', 3, '南京市东城区街道', 116.785256, 40.557011, '北京市福田区街道', 116.477999, 40.409868, 23.79, 94.88, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-06-27 03:34:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (227, 'DD202605081028591a55e0bf', 146, 185, 49, 2, '舒适型', 1, '成都市南山区街道', 117.086681, 40.708534, '西安市西城区街道', 117.475242, 40.968917, 3.73, 13.21, 4.31, 11.53, 11.53, 1.98, 9.55, 4, 1, 1, '', '2024-03-01 12:13:15', '2024-03-01 12:36:15', '2024-03-01 14:29:15', '2024-03-01 14:38:15', NULL, '2024-03-01 12:03:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (228, 'DD20260508102859f8251b0a', 17, 11, 3, 1, '经济型', 1, '重庆市海淀区街道', 118.326494, 39.906043, '武汉市朝阳区街道', 118.529401, 39.839975, 9.68, 20.35, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-11-07 09:54:36', NULL, NULL, NULL, NULL, '2024-11-07 09:51:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (229, 'DD202605081028591ad84fe3', 237, 62, 16, 1, '商务型', 1, '南京市南山区街道', 119.201553, 40.421675, '广州市海淀区街道', 119.006377, 40.692840, 25.10, 54.77, 29.71, 86.44, 86.44, 19.14, 67.30, 4, 1, 1, '', '2026-04-13 06:47:35', '2026-04-13 06:57:35', '2026-04-13 08:35:35', '2026-04-13 08:38:35', NULL, '2026-04-13 06:38:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (230, 'DD20260508102859f8cf19d5', 243, 72, 18, 1, '商务型', 2, '杭州市福田区街道', 118.261651, 41.437451, '上海市南山区街道', 118.643280, 41.302005, 20.92, 63.58, 21.00, 43.60, 43.60, 3.53, 40.07, 4, 1, 2, '', '2025-03-29 18:08:18', '2025-03-29 18:18:18', '2025-03-29 19:25:18', '2025-03-29 19:42:18', NULL, '2025-03-29 17:53:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (231, 'DD20260508102859b1827ab8', 169, 64, 17, 2, '商务型', 3, '深圳市朝阳区街道', 119.888299, 41.405348, '重庆市海淀区街道', 120.161377, 41.421417, 19.44, 53.48, 21.89, 56.32, 56.32, 1.61, 54.71, 5, 2, 0, '司机取消', '2025-06-13 21:25:00', '2025-06-13 21:44:00', '2025-06-13 21:56:00', NULL, '2025-06-13 21:24:00', '2025-06-13 21:19:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (232, 'DD2026050810285994ac869f', 282, 137, 36, 1, '舒适型', 2, '南京市东城区街道', 116.046164, 39.070152, '杭州市南山区街道', 115.951279, 39.360499, 21.08, 75.15, 22.56, 86.92, 86.92, 24.02, 62.90, 5, 2, 0, '系统取消', '2026-01-10 03:52:43', '2026-01-10 04:17:43', '2026-01-10 05:58:43', NULL, '2026-01-10 04:31:43', '2026-01-10 03:45:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (233, 'DD20260508102859a56e2088', 301, 100, 25, 2, '商务型', 1, '武汉市南山区街道', 119.105373, 39.505847, '西安市朝阳区街道', 119.248179, 39.305182, 22.28, 56.46, 20.56, 77.80, 77.80, 13.71, 64.09, 4, 1, 1, '', '2024-10-12 03:04:36', '2024-10-12 03:24:36', '2024-10-12 04:56:36', '2024-10-12 05:15:36', NULL, '2024-10-12 03:02:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (234, 'DD20260508102859b9d9bdb8', 11, 177, 46, 1, '舒适型', 3, '上海市南山区街道', 117.559771, 41.807546, '南京市南山区街道', 118.001948, 41.757089, 18.76, 49.14, 17.11, 62.02, 62.02, 0.28, 61.74, 4, 1, 2, '', '2024-07-11 15:52:16', '2024-07-11 16:06:16', '2024-07-11 16:37:16', '2024-07-11 17:01:16', NULL, '2024-07-11 15:50:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (235, 'DD202605081028591b98dfe8', 69, 122, 32, 1, '经济型', 1, '武汉市东城区街道', 119.419472, 39.590737, '深圳市海淀区街道', 119.613751, 39.564081, 3.95, 7.95, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-08-03 16:26:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (236, 'DD20260508102859f1bc2a9f', 352, 171, 45, 1, '商务型', 2, '杭州市海淀区街道', 118.215414, 39.129386, '西安市朝阳区街道', 118.598969, 39.190175, 17.39, 69.46, 18.84, 41.71, 41.71, 11.45, 30.26, 4, 1, 1, '', '2026-03-22 19:07:39', '2026-03-22 19:21:39', '2026-03-22 19:59:39', '2026-03-22 20:25:39', NULL, '2026-03-22 19:05:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (237, 'DD20260508102859612c5aed', 197, 37, 9, 1, '商务型', 1, '成都市西城区街道', 118.918438, 40.789422, '成都市西城区街道', 119.115506, 40.728196, 17.51, 61.85, 19.85, 41.57, 41.57, 4.25, 37.32, 5, 2, 0, '用户取消', '2026-02-06 19:31:58', '2026-02-06 19:43:58', '2026-02-06 20:53:58', NULL, '2026-02-06 19:59:58', '2026-02-06 19:28:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (238, 'DD20260508102859e03f6078', 332, 150, 40, 2, '舒适型', 1, '武汉市海淀区街道', 118.846598, 40.802161, '广州市朝阳区街道', 118.842580, 40.517014, 27.87, 64.71, 25.69, 102.42, 102.42, 23.25, 79.17, 4, 1, 1, '', '2024-10-04 16:57:51', '2024-10-04 17:11:51', '2024-10-04 17:49:51', '2024-10-04 18:06:51', NULL, '2024-10-04 16:56:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (239, 'DD202605081028590c6ce7d5', 309, 116, 31, 2, '商务型', 3, '北京市朝阳区街道', 118.550182, 39.422788, '成都市东城区街道', 118.589156, 39.335334, 17.01, 53.26, 19.22, 65.77, 65.77, 2.33, 63.44, 4, 1, 1, '', '2025-10-29 00:09:06', '2025-10-29 00:21:06', '2025-10-29 00:39:06', '2025-10-29 00:55:06', NULL, '2025-10-29 00:03:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (240, 'DD20260508102859d205a5ae', 70, 64, 17, 1, '舒适型', 1, '成都市东城区街道', 116.319237, 40.589780, '深圳市海淀区街道', 116.507561, 40.475882, 6.37, 25.13, 7.55, 19.04, 19.04, 0.18, 18.86, 5, 2, 0, '系统取消', '2024-09-20 16:32:32', '2024-09-20 16:45:32', '2024-09-20 18:22:32', NULL, '2024-09-20 17:10:32', '2024-09-20 16:17:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (241, 'DD20260508102859a8100d0c', 454, 171, 45, 2, '舒适型', 3, '南京市东城区街道', 116.804125, 41.481537, '重庆市朝阳区街道', 117.240897, 41.186846, 28.94, 111.29, 26.75, 70.88, 70.88, 12.59, 58.29, 4, 1, 1, '', '2025-08-06 12:55:15', '2025-08-06 13:25:15', '2025-08-06 15:00:15', '2025-08-06 15:10:15', NULL, '2025-08-06 12:40:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (242, 'DD20260508102859c7809dac', 210, 32, 7, 2, '商务型', 2, '杭州市东城区街道', 119.388183, 40.974824, '深圳市西城区街道', 118.898772, 41.041480, 14.86, 47.27, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-08-13 09:44:49', '2024-08-13 09:57:49', NULL, NULL, NULL, '2024-08-13 09:43:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (243, 'DD2026050810285917971f33', 296, 108, 28, 1, '经济型', 2, '成都市朝阳区街道', 118.879921, 39.558147, '成都市南山区街道', 119.150857, 39.780163, 9.40, 23.11, 9.54, 37.32, 37.32, 9.40, 27.92, 4, 1, 2, '', '2024-02-11 20:25:28', '2024-02-11 20:31:28', '2024-02-11 22:22:28', '2024-02-11 22:42:28', NULL, '2024-02-11 20:14:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (244, 'DD202605081028595d17f947', 231, 100, 25, 2, '舒适型', 2, '西安市福田区街道', 119.714102, 39.115788, '武汉市西城区街道', 119.942133, 38.857550, 5.72, 13.76, 5.82, 17.70, 17.70, 2.69, 15.01, 4, 1, 1, '', '2026-03-11 21:54:10', '2026-03-11 22:09:10', '2026-03-11 22:34:10', '2026-03-11 22:43:10', NULL, '2026-03-11 21:43:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (245, 'DD20260508102859a7d5c7bd', 330, 36, 8, 2, '经济型', 3, '成都市朝阳区街道', 118.322774, 41.782559, '杭州市海淀区街道', 117.830427, 41.832938, 13.47, 33.75, 14.81, 44.73, 44.73, 9.42, 35.31, 5, 2, 0, '用户取消', '2025-04-09 12:31:14', '2025-04-09 13:01:14', '2025-04-09 14:33:14', NULL, '2025-04-09 12:54:14', '2025-04-09 12:28:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (246, 'DD2026050810285944b3a7b7', 245, 122, 32, 1, '商务型', 2, '南京市朝阳区街道', 117.451735, 41.842868, '武汉市南山区街道', 117.816157, 41.965237, 25.49, 67.38, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-08-04 00:00:09', NULL, NULL, NULL, NULL, '2025-08-03 23:55:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (247, 'DD202605081028594cce27f9', 495, NULL, NULL, 1, '舒适型', 1, '广州市东城区街道', 119.137677, 40.973608, '广州市福田区街道', 119.237911, 40.716930, 5.11, 13.92, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-12-22 22:23:46', '2024-12-22 22:32:46', NULL, NULL, NULL, '2024-12-22 22:10:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (248, 'DD20260508102859f51dd1e3', 436, 106, 27, 2, '舒适型', 3, '重庆市福田区街道', 119.756435, 41.017761, '深圳市东城区街道', 119.767993, 41.191734, 26.13, 70.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-11-03 02:52:54', '2024-11-03 03:14:54', NULL, NULL, NULL, '2024-11-03 02:38:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (249, 'DD2026050810285947f5b18e', 394, 45, 11, 1, '舒适型', 3, '南京市福田区街道', 116.173836, 40.814944, '深圳市南山区街道', 116.118666, 40.855921, 19.53, 47.10, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-04-12 01:32:11', NULL, NULL, NULL, NULL, '2025-04-12 01:29:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (250, 'DD20260508102859549d3c89', 420, 110, 29, 2, '舒适型', 3, '西安市朝阳区街道', 116.903618, 40.573468, '西安市东城区街道', 117.348458, 40.731707, 6.43, 23.34, 5.89, 18.29, 18.29, 1.40, 16.89, 4, 1, 1, '', '2026-02-13 11:32:12', '2026-02-13 11:54:12', '2026-02-13 12:21:12', '2026-02-13 12:38:12', NULL, '2026-02-13 11:17:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (251, 'DD20260508102859460e9f33', 108, 56, 15, 2, '舒适型', 2, '深圳市朝阳区街道', 117.969593, 40.491700, '重庆市西城区街道', 118.234449, 40.544718, 26.41, 104.74, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-11-24 14:29:16', NULL, NULL, NULL, NULL, '2024-11-24 14:27:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (252, 'DD20260508102859dff12bd6', 70, NULL, NULL, 2, '商务型', 1, '武汉市西城区街道', 119.179174, 41.085088, '成都市朝阳区街道', 119.162988, 40.867377, 13.95, 53.62, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-02-26 00:11:28', '2026-02-26 00:26:28', NULL, NULL, NULL, '2026-02-26 00:10:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (253, 'DD20260508102859c6f8a8b6', 53, 72, 18, 2, '舒适型', 1, '杭州市海淀区街道', 117.429195, 39.036780, '北京市海淀区街道', 117.081180, 39.135824, 11.95, 46.12, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-06-17 06:46:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (254, 'DD20260508102859ca8856a4', 457, 185, 49, 1, '商务型', 2, '上海市朝阳区街道', 118.904253, 40.485503, '西安市东城区街道', 118.759538, 40.200305, 13.50, 53.34, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-03-20 05:03:51', '2026-03-20 05:23:51', NULL, NULL, NULL, '2026-03-20 04:52:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (255, 'DD202605081028594c3c6322', 11, 171, 45, 2, '商务型', 2, '杭州市南山区街道', 118.186639, 41.801243, '广州市海淀区街道', 118.044337, 41.968376, 17.84, 45.87, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-07-02 17:38:27', '2024-07-02 18:03:27', NULL, NULL, NULL, '2024-07-02 17:23:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (256, 'DD2026050810285997647e53', 164, 140, 37, 2, '商务型', 2, '上海市朝阳区街道', 119.476489, 39.558521, '成都市东城区街道', 119.154808, 39.450068, 3.83, 10.80, 3.59, 12.36, 12.36, 3.47, 8.89, 4, 1, 1, '', '2024-02-01 07:40:49', '2024-02-01 08:02:49', '2024-02-01 08:55:49', '2024-02-01 09:06:49', NULL, '2024-02-01 07:35:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (257, 'DD202605081028594511499c', 309, NULL, NULL, 1, '经济型', 3, '北京市朝阳区街道', 116.161060, 40.692018, '成都市海淀区街道', 116.294664, 40.623869, 2.20, 7.27, 2.09, 7.90, 7.90, 0.62, 7.28, 4, 1, 1, '', '2026-04-25 15:12:03', '2026-04-25 15:26:03', '2026-04-25 16:58:03', '2026-04-25 16:59:03', NULL, '2026-04-25 15:02:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (258, 'DD202605081028596b81db5c', 373, 157, 42, 1, '舒适型', 3, '深圳市东城区街道', 117.195314, 41.641971, '西安市南山区街道', 116.855321, 41.600263, 28.46, 70.69, 33.64, 107.20, 107.20, 19.28, 87.92, 4, 1, 1, '', '2024-06-30 00:00:05', '2024-06-30 00:21:05', '2024-06-30 02:06:05', '2024-06-30 02:25:05', NULL, '2024-06-29 23:58:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (259, 'DD20260508102859255ed717', 149, 140, 37, 1, '商务型', 2, '广州市福田区街道', 116.784771, 41.614879, '杭州市福田区街道', 116.405786, 41.376002, 4.05, 14.84, 4.01, 9.07, 9.07, 0.35, 8.72, 6, 0, 0, '', '2024-01-28 03:21:47', '2024-01-28 03:51:47', '2024-01-28 04:04:47', NULL, NULL, '2024-01-28 03:07:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (260, 'DD20260508102859dabf731e', 461, 108, 28, 2, '经济型', 3, '广州市东城区街道', 117.201077, 40.522846, '西安市西城区街道', 117.492766, 40.305619, 7.95, 24.57, 8.26, 19.01, 19.01, 2.06, 16.95, 4, 1, 1, '', '2026-05-03 09:41:38', '2026-05-03 10:11:38', '2026-05-03 11:24:38', '2026-05-03 11:26:38', NULL, '2026-05-03 09:40:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (261, 'DD202605081028597ff2d3ba', 131, 32, 7, 1, '商务型', 1, '南京市朝阳区街道', 118.134918, 39.747394, '成都市海淀区街道', 118.117585, 39.709454, 7.65, 19.75, 8.17, 18.12, 18.12, 2.31, 15.81, 4, 1, 1, '', '2025-02-14 09:49:26', '2025-02-14 09:57:26', '2025-02-14 11:40:26', '2025-02-14 11:56:26', NULL, '2025-02-14 09:42:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (262, 'DD20260508102859b53c3cfb', 458, 64, 17, 2, '商务型', 2, '重庆市东城区街道', 116.828995, 40.752520, '广州市南山区街道', 116.399267, 41.035909, 22.75, 88.18, 25.66, 96.72, 96.72, 0.48, 96.24, 4, 1, 1, '', '2025-12-10 02:02:31', '2025-12-10 02:11:31', '2025-12-10 03:06:31', '2025-12-10 03:20:31', NULL, '2025-12-10 01:49:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (263, 'DD2026050810285915500375', 307, 180, 47, 2, '商务型', 2, '重庆市南山区街道', 116.918568, 41.247821, '上海市福田区街道', 117.087157, 41.006668, 12.84, 47.45, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-01-02 04:08:47', NULL, NULL, NULL, NULL, '2025-01-02 04:03:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (264, 'DD20260508102859128ed7ee', 348, 30, 6, 1, '商务型', 3, '广州市朝阳区街道', 117.505931, 39.947092, '西安市南山区街道', 117.596035, 39.872934, 7.37, 18.81, 8.65, 18.00, 18.00, 0.81, 17.19, 5, 2, 0, '司机取消', '2025-12-21 00:01:54', '2025-12-21 00:25:54', '2025-12-21 00:54:54', NULL, '2025-12-21 00:47:54', '2025-12-20 23:47:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (265, 'DD20260508102859278330d5', 231, 137, 36, 1, '商务型', 1, '西安市西城区街道', 118.236215, 40.380898, '广州市西城区街道', 118.353987, 40.310711, 23.85, 70.60, 25.46, 56.09, 56.09, 3.73, 52.36, 4, 1, 1, '', '2025-02-19 16:57:15', '2025-02-19 17:17:15', '2025-02-19 19:16:15', '2025-02-19 19:43:15', NULL, '2025-02-19 16:48:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (266, 'DD20260508102859b6bdc5b3', 70, 116, 31, 1, '商务型', 3, '西安市福田区街道', 118.275193, 39.374332, '杭州市东城区街道', 118.075546, 39.490750, 18.65, 60.17, 20.76, 55.51, 55.51, 12.00, 43.51, 6, 0, 0, '', '2026-01-23 03:28:39', '2026-01-23 03:52:39', '2026-01-23 04:48:39', NULL, NULL, '2026-01-23 03:22:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (267, 'DD2026050810285984bbabdc', 200, 177, 46, 2, '经济型', 3, '深圳市东城区街道', 118.771029, 40.258342, '西安市福田区街道', 118.583141, 40.480283, 14.49, 33.22, 17.06, 47.60, 47.60, 4.51, 43.09, 5, 2, 0, '系统取消', '2026-04-06 19:08:04', '2026-04-06 19:20:04', '2026-04-06 20:24:04', NULL, '2026-04-06 19:28:04', '2026-04-06 19:02:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (268, 'DD20260508102859a73e07f3', 410, 56, 15, 1, '商务型', 2, '广州市福田区街道', 116.013364, 40.350652, '重庆市朝阳区街道', 116.477193, 40.612291, 3.89, 11.51, 3.69, 11.57, 11.57, 1.65, 9.92, 4, 1, 2, '', '2024-05-22 11:53:48', '2024-05-22 12:07:48', '2024-05-22 12:19:48', '2024-05-22 12:39:48', NULL, '2024-05-22 11:49:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (269, 'DD202605081028593fa9b593', 101, NULL, NULL, 1, '经济型', 3, '南京市西城区街道', 119.230493, 41.386088, '广州市福田区街道', 119.285261, 41.169655, 15.86, 56.60, 16.24, 63.21, 63.21, 4.26, 58.95, 5, 2, 0, '系统取消', '2024-03-25 17:15:50', '2024-03-25 17:31:50', '2024-03-25 18:37:50', NULL, '2024-03-25 17:17:50', '2024-03-25 17:03:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (270, 'DD20260508102859fc91a49a', 195, NULL, NULL, 1, '经济型', 1, '深圳市东城区街道', 119.766202, 41.659904, '南京市福田区街道', 119.797673, 41.775851, 27.29, 67.27, 24.66, 50.44, 50.44, 2.79, 47.65, 5, 2, 0, '用户取消', '2025-01-19 19:17:12', '2025-01-19 19:26:12', '2025-01-19 20:06:12', NULL, '2025-01-19 20:02:12', '2025-01-19 19:16:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (271, 'DD20260508102859728246bd', 417, 43, 10, 2, '舒适型', 1, '南京市东城区街道', 116.598355, 41.113398, '广州市海淀区街道', 116.683932, 41.074766, 25.37, 58.14, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-10-31 13:32:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (272, 'DD20260508102859c03c81c8', 436, NULL, NULL, 2, '舒适型', 1, '杭州市朝阳区街道', 119.044345, 40.689622, '杭州市朝阳区街道', 119.031755, 40.676907, 10.60, 30.29, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-04-25 00:48:01', '2025-04-25 01:07:01', NULL, NULL, NULL, '2025-04-25 00:35:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (273, 'DD2026050810285972178979', 14, 36, 8, 2, '商务型', 1, '西安市西城区街道', 117.908740, 40.084831, '成都市南山区街道', 118.045562, 40.321797, 22.51, 75.42, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-09-15 06:23:58', NULL, NULL, NULL, NULL, '2024-09-15 06:08:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (274, 'DD20260508102859302307df', 222, 122, 32, 2, '商务型', 1, '成都市朝阳区街道', 119.619849, 41.302650, '重庆市福田区街道', 119.857351, 41.190805, 21.55, 54.79, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-08-31 04:16:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (275, 'DD20260508102859284de71b', 427, 116, 31, 2, '舒适型', 3, '深圳市东城区街道', 119.737606, 41.397497, '上海市西城区街道', 119.419054, 41.578490, 14.78, 34.74, 16.84, 62.93, 62.93, 11.15, 51.78, 4, 1, 2, '', '2024-10-31 16:50:54', '2024-10-31 17:16:54', '2024-10-31 17:33:54', '2024-10-31 17:42:54', NULL, '2024-10-31 16:42:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (276, 'DD20260508102859e075e072', 475, 49, 12, 2, '商务型', 2, '深圳市南山区街道', 117.768428, 41.423501, '深圳市朝阳区街道', 118.169033, 41.418366, 7.15, 26.14, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-07-25 00:30:08', NULL, NULL, NULL, NULL, '2025-07-25 00:18:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (277, 'DD20260508102859b3493e4a', 50, 194, 51, 1, '经济型', 1, '上海市福田区街道', 118.412233, 39.582946, '深圳市西城区街道', 118.477011, 39.401154, 19.35, 44.14, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-01-03 05:26:59', '2024-01-03 05:55:59', NULL, NULL, NULL, '2024-01-03 05:19:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (278, 'DD20260508102859f3c253bb', 212, 11, 3, 1, '舒适型', 2, '杭州市南山区街道', 116.786739, 40.678303, '北京市海淀区街道', 116.423890, 40.746004, 14.26, 35.39, 15.25, 55.92, 55.92, 9.04, 46.88, 5, 2, 0, '用户取消', '2024-07-22 12:34:56', '2024-07-22 13:00:56', '2024-07-22 13:25:56', NULL, '2024-07-22 13:19:56', '2024-07-22 12:24:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (279, 'DD20260508102859ddd60ca2', 235, 194, 51, 1, '经济型', 3, '深圳市西城区街道', 116.730940, 41.505232, '深圳市福田区街道', 116.895793, 41.687969, 6.74, 21.29, 7.93, 16.52, 16.52, 0.96, 15.56, 4, 1, 2, '', '2025-07-14 16:41:48', '2025-07-14 16:51:48', '2025-07-14 18:02:48', '2025-07-14 18:13:48', NULL, '2025-07-14 16:26:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (280, 'DD2026050810285944348d42', 144, 150, 40, 2, '商务型', 2, '成都市福田区街道', 119.612006, 40.569581, '武汉市海淀区街道', 119.839781, 40.506741, 19.92, 40.97, 20.08, 64.18, 64.18, 11.21, 52.97, 5, 2, 0, '用户取消', '2024-05-10 01:43:37', '2024-05-10 01:51:37', '2024-05-10 02:56:37', NULL, '2024-05-10 02:26:37', '2024-05-10 01:37:37', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (281, 'DD2026050810285942147778', 460, 1, 1, 2, '商务型', 3, '深圳市海淀区街道', 117.738921, 39.710145, '广州市福田区街道', 117.448475, 39.662083, 4.92, 16.62, 5.74, 15.49, 15.49, 4.41, 11.08, 6, 0, 0, '', '2026-05-08 01:08:43', '2026-05-08 01:26:43', '2026-05-08 02:01:43', NULL, NULL, '2026-05-08 01:05:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (282, 'DD2026050810285905dc5b95', 131, 64, 17, 2, '经济型', 3, '杭州市南山区街道', 116.918604, 39.646461, '上海市福田区街道', 116.638893, 39.567009, 29.95, 83.03, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-07-14 15:32:39', NULL, NULL, NULL, NULL, '2024-07-14 15:26:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (283, 'DD20260508102859073245aa', 459, NULL, NULL, 2, '商务型', 3, '武汉市海淀区街道', 116.303963, 40.758623, '杭州市朝阳区街道', 116.561024, 40.727521, 20.68, 64.33, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-10-14 01:15:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (284, 'DD202605081028594b00452b', 200, 177, 46, 2, '经济型', 3, '上海市朝阳区街道', 118.380187, 40.061907, '杭州市南山区街道', 118.392708, 39.800232, 7.40, 23.50, 7.81, 28.28, 28.28, 2.02, 26.26, 4, 1, 1, '', '2024-06-28 03:30:51', '2024-06-28 03:36:51', '2024-06-28 04:00:51', '2024-06-28 04:15:51', NULL, '2024-06-28 03:19:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (285, 'DD20260508102859e6517f0b', 65, 37, 9, 1, '商务型', 1, '深圳市福田区街道', 116.704421, 39.700406, '杭州市福田区街道', 117.163804, 39.830959, 2.68, 9.85, 2.69, 9.23, 9.23, 1.57, 7.66, 4, 1, 2, '', '2024-01-19 04:17:41', '2024-01-19 04:33:41', '2024-01-19 05:48:41', '2024-01-19 06:04:41', NULL, '2024-01-19 04:15:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (286, 'DD20260508102859b2bcc3bd', 182, 116, 31, 2, '舒适型', 1, '上海市西城区街道', 118.554614, 39.533239, '北京市东城区街道', 118.461105, 39.581574, 11.96, 28.32, 14.11, 40.80, 40.80, 9.45, 31.35, 4, 1, 1, '', '2025-08-29 20:03:49', '2025-08-29 20:19:49', '2025-08-29 21:20:49', '2025-08-29 21:34:49', NULL, '2025-08-29 19:49:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (287, 'DD2026050810285993916b73', 307, 140, 37, 1, '商务型', 1, '西安市东城区街道', 118.780111, 39.549657, '西安市东城区街道', 118.946305, 39.784125, 18.93, 46.03, 21.26, 58.28, 58.28, 11.14, 47.14, 4, 1, 2, '', '2025-11-25 22:05:36', '2025-11-25 22:12:36', '2025-11-25 23:44:36', '2025-11-25 23:56:36', NULL, '2025-11-25 22:01:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (288, 'DD202605081028590b5a905b', 261, 94, 21, 2, '商务型', 2, '广州市海淀区街道', 119.674080, 39.308948, '上海市朝阳区街道', 119.810355, 39.123719, 20.33, 65.93, 18.33, 51.32, 51.32, 9.77, 41.55, 4, 1, 2, '', '2024-06-26 07:38:16', '2024-06-26 07:45:16', '2024-06-26 08:13:16', '2024-06-26 08:23:16', NULL, '2024-06-26 07:26:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (289, 'DD20260508102859f3f1f98f', 119, 94, 21, 2, '舒适型', 3, '成都市西城区街道', 118.286236, 40.210275, '深圳市东城区街道', 117.936719, 40.495007, 24.49, 52.59, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-08-27 20:15:18', '2025-08-27 20:40:18', NULL, NULL, NULL, '2025-08-27 20:04:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (290, 'DD202605081028594e62f187', 15, 180, 47, 1, '商务型', 1, '重庆市西城区街道', 116.199103, 41.369574, '北京市东城区街道', 116.601259, 41.501782, 3.24, 8.79, 3.44, 12.71, 12.71, 1.82, 10.89, 4, 1, 2, '', '2024-06-14 00:43:46', '2024-06-14 00:52:46', '2024-06-14 02:21:46', '2024-06-14 02:47:46', NULL, '2024-06-14 00:30:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (291, 'DD20260508102859efd02f10', 191, 99, 24, 2, '舒适型', 2, '上海市南山区街道', 118.942817, 41.646199, '重庆市南山区街道', 118.661141, 41.729116, 28.68, 65.92, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-02-17 17:06:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (292, 'DD20260508102859e1230bcb', 120, 129, 34, 1, '舒适型', 2, '西安市西城区街道', 116.909453, 39.150962, '杭州市福田区街道', 116.601328, 39.293593, 4.98, 14.30, 4.51, 10.41, 10.41, 0.11, 10.30, 6, 0, 0, '', '2025-12-31 18:44:31', '2025-12-31 18:58:31', '2025-12-31 20:24:31', NULL, NULL, '2025-12-31 18:31:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (293, 'DD202605081028599863f812', 282, 116, 31, 2, '经济型', 2, '北京市东城区街道', 117.930290, 40.696085, '南京市南山区街道', 117.781364, 40.668675, 11.49, 41.09, 10.90, 43.02, 43.02, 6.47, 36.55, 4, 1, 2, '', '2024-03-06 00:48:39', '2024-03-06 01:03:39', '2024-03-06 02:55:39', '2024-03-06 03:13:39', NULL, '2024-03-06 00:33:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (294, 'DD2026050810285985a34245', 147, 72, 18, 1, '舒适型', 2, '武汉市海淀区街道', 118.492214, 39.534695, '上海市海淀区街道', 118.228619, 39.304150, 23.82, 91.20, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-04-10 09:09:15', NULL, NULL, NULL, NULL, '2026-04-10 08:54:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (295, 'DD2026050810285956d04157', 188, 180, 47, 2, '舒适型', 2, '重庆市朝阳区街道', 116.287191, 40.080121, '广州市福田区街道', 116.311857, 40.251210, 15.41, 45.98, 17.70, 41.78, 41.78, 9.58, 32.20, 5, 2, 0, '用户取消', '2024-07-05 22:18:09', '2024-07-05 22:48:09', '2024-07-05 23:56:09', NULL, '2024-07-05 22:31:09', '2024-07-05 22:12:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (296, 'DD2026050810285959324ff3', 402, 140, 37, 1, '经济型', 3, '广州市西城区街道', 116.540757, 41.909493, '深圳市海淀区街道', 117.016303, 41.812563, 17.19, 42.55, 19.68, 75.76, 75.76, 17.61, 58.15, 4, 1, 1, '', '2026-03-27 11:18:33', '2026-03-27 11:34:33', '2026-03-27 13:01:33', '2026-03-27 13:10:33', NULL, '2026-03-27 11:10:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (297, 'DD20260508102859522375eb', 93, NULL, NULL, 1, '商务型', 3, '杭州市南山区街道', 119.164471, 40.083430, '武汉市西城区街道', 119.313160, 40.305160, 21.16, 65.21, 19.98, 56.04, 56.04, 15.22, 40.82, 5, 2, 0, '系统取消', '2024-02-04 04:48:25', '2024-02-04 05:14:25', '2024-02-04 07:04:25', NULL, '2024-02-04 05:14:25', '2024-02-04 04:43:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (298, 'DD20260508102859d1bc0b19', 275, 180, 47, 2, '经济型', 3, '成都市福田区街道', 119.494987, 39.403727, '北京市南山区街道', 119.341828, 39.159579, 21.54, 58.86, 19.84, 79.24, 79.24, 18.12, 61.12, 4, 1, 2, '', '2025-04-24 18:09:14', '2025-04-24 18:32:14', '2025-04-24 19:35:14', '2025-04-24 19:37:14', NULL, '2025-04-24 18:02:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (299, 'DD2026050810285999d037fe', 398, 49, 12, 1, '经济型', 3, '上海市东城区街道', 117.479075, 39.321675, '杭州市东城区街道', 117.016267, 39.328843, 19.40, 67.85, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-06-03 15:17:52', '2024-06-03 15:41:52', NULL, NULL, NULL, '2024-06-03 15:16:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (300, 'DD2026050810285993411e4e', 123, 23, 4, 2, '舒适型', 3, '广州市东城区街道', 119.373994, 39.352707, '西安市西城区街道', 119.187471, 39.054967, 16.02, 60.60, 16.23, 37.84, 37.84, 4.96, 32.88, 4, 1, 2, '', '2025-02-28 19:01:22', '2025-02-28 19:22:22', '2025-02-28 20:11:22', '2025-02-28 20:35:22', NULL, '2025-02-28 18:46:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (301, 'DD202605081028599f43aa19', 330, 11, 3, 2, '经济型', 1, '北京市南山区街道', 119.620744, 41.183327, '成都市海淀区街道', 119.909249, 41.442617, 10.81, 28.57, 10.39, 36.91, 36.91, 7.91, 29.00, 5, 2, 0, '系统取消', '2026-04-05 08:52:58', '2026-04-05 08:57:58', '2026-04-05 09:13:58', NULL, '2026-04-05 09:07:58', '2026-04-05 08:48:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (302, 'DD202605081028599d9eac5f', 72, 37, 9, 2, '舒适型', 3, '北京市东城区街道', 116.021549, 41.525092, '上海市朝阳区街道', 116.019108, 41.791520, 21.45, 60.47, 24.84, 51.89, 51.89, 8.96, 42.93, 4, 1, 2, '', '2025-04-13 06:30:24', '2025-04-13 06:43:24', '2025-04-13 07:15:24', '2025-04-13 07:45:24', NULL, '2025-04-13 06:16:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (303, 'DD20260508102859ca3c1d56', 448, 171, 45, 1, '经济型', 1, '西安市西城区街道', 117.368467, 41.126933, '广州市海淀区街道', 117.830740, 41.189242, 29.33, 86.08, 29.36, 105.01, 105.01, 10.54, 94.47, 5, 2, 0, '系统取消', '2024-03-16 10:05:02', '2024-03-16 10:31:02', '2024-03-16 10:54:02', NULL, '2024-03-16 10:24:02', '2024-03-16 09:53:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (304, 'DD202605081028596ce62750', 178, 72, 18, 1, '经济型', 3, '武汉市海淀区街道', 116.952063, 39.276400, '杭州市海淀区街道', 117.360754, 39.149224, 23.57, 51.90, 26.26, 98.77, 98.77, 22.85, 75.92, 4, 1, 1, '', '2025-12-01 22:03:53', '2025-12-01 22:26:53', '2025-12-01 23:45:53', '2025-12-01 23:49:53', NULL, '2025-12-01 21:54:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (305, 'DD2026050810285958894ebb', 222, 36, 8, 2, '商务型', 3, '广州市海淀区街道', 118.748083, 39.058092, '武汉市海淀区街道', 118.390742, 39.174546, 6.11, 21.85, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-05-29 00:39:48', NULL, NULL, NULL, NULL, '2025-05-29 00:26:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (306, 'DD2026050810285951290163', 111, 185, 49, 2, '舒适型', 3, '北京市海淀区街道', 118.363083, 39.607746, '重庆市福田区街道', 118.483779, 39.666153, 20.88, 56.43, 22.43, 48.18, 48.18, 6.04, 42.14, 4, 1, 2, '', '2024-11-19 05:47:15', '2024-11-19 06:13:15', '2024-11-19 06:59:15', '2024-11-19 07:06:15', NULL, '2024-11-19 05:46:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (307, 'DD202605081028595c4297da', 398, 100, 25, 2, '商务型', 1, '上海市西城区街道', 119.770788, 39.534906, '重庆市海淀区街道', 119.917440, 39.790473, 29.77, 65.30, 31.35, 71.29, 71.29, 19.99, 51.30, 4, 1, 2, '', '2026-02-25 14:19:20', '2026-02-25 14:40:20', '2026-02-25 15:30:20', '2026-02-25 15:42:20', NULL, '2026-02-25 14:15:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (308, 'DD20260508102859f7ff5b2b', 277, 45, 11, 2, '商务型', 3, '广州市海淀区街道', 118.009985, 39.519397, '成都市东城区街道', 117.995593, 39.331052, 2.66, 5.58, 2.68, 7.60, 7.60, 0.66, 6.94, 4, 1, 1, '', '2026-04-13 16:28:17', '2026-04-13 16:57:17', '2026-04-13 18:03:17', '2026-04-13 18:33:17', NULL, '2026-04-13 16:27:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (309, 'DD202605081028597466ee2c', 181, 62, 16, 1, '经济型', 3, '西安市朝阳区街道', 118.952190, 40.788377, '武汉市朝阳区街道', 118.605968, 40.633274, 18.03, 39.29, 17.95, 65.31, 65.31, 18.48, 46.83, 4, 1, 2, '', '2024-12-21 15:04:47', '2024-12-21 15:18:47', '2024-12-21 16:09:47', '2024-12-21 16:32:47', NULL, '2024-12-21 14:51:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (310, 'DD20260508102859f92052d8', 147, 137, 36, 2, '经济型', 1, '南京市西城区街道', 119.957690, 40.935930, '成都市朝阳区街道', 119.908570, 41.107486, 12.74, 32.65, 15.11, 31.20, 31.20, 6.61, 24.59, 4, 1, 2, '', '2024-01-23 19:19:30', '2024-01-23 19:35:30', '2024-01-23 20:20:30', '2024-01-23 20:43:30', NULL, '2024-01-23 19:08:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (311, 'DD2026050810285986d01dfb', 37, 180, 47, 2, '商务型', 1, '广州市海淀区街道', 118.759474, 41.127478, '深圳市海淀区街道', 118.995096, 41.101561, 5.10, 19.45, 5.15, 10.41, 10.41, 1.87, 8.54, 4, 1, 2, '', '2025-01-18 21:16:47', '2025-01-18 21:36:47', '2025-01-18 23:11:47', '2025-01-18 23:18:47', NULL, '2025-01-18 21:05:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (312, 'DD202605081028596379bf75', 292, 98, 23, 2, '商务型', 1, '西安市南山区街道', 116.176857, 41.920028, '深圳市海淀区街道', 116.312579, 42.157752, 1.33, 3.27, 1.57, 3.43, 3.43, 0.23, 3.20, 6, 0, 0, '', '2024-02-29 20:52:22', '2024-02-29 21:11:22', '2024-02-29 22:22:22', NULL, NULL, '2024-02-29 20:39:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (313, 'DD202605081028595872dd3c', 260, 106, 27, 1, '经济型', 2, '广州市东城区街道', 117.180920, 39.393919, '成都市南山区街道', 116.917643, 39.519860, 26.71, 102.62, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-01-10 02:00:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (314, 'DD2026050810285938daa8e3', 158, 94, 21, 1, '舒适型', 1, '深圳市东城区街道', 118.728253, 39.931689, '深圳市海淀区街道', 118.754966, 39.666154, 1.27, 4.92, 1.40, 4.84, 4.84, 0.60, 4.24, 5, 2, 0, '系统取消', '2024-01-19 20:06:24', '2024-01-19 20:28:24', '2024-01-19 22:00:24', NULL, '2024-01-19 20:30:24', '2024-01-19 20:00:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (315, 'DD202605081028590ec36a37', 289, 122, 32, 1, '经济型', 1, '南京市朝阳区街道', 117.884672, 41.792913, '深圳市福田区街道', 117.868687, 41.735949, 26.43, 71.02, 25.36, 81.13, 81.13, 2.41, 78.72, 4, 1, 1, '', '2026-04-03 22:42:23', '2026-04-03 22:48:23', '2026-04-04 00:01:23', '2026-04-04 00:24:23', NULL, '2026-04-03 22:27:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (316, 'DD20260508102859dda5d5b0', 130, 37, 9, 1, '商务型', 2, '武汉市海淀区街道', 116.373825, 40.388060, '武汉市南山区街道', 116.263365, 40.287289, 18.02, 65.89, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-04-26 18:17:21', NULL, NULL, NULL, NULL, '2025-04-26 18:12:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (317, 'DD2026050810285919145b60', 405, 185, 49, 1, '经济型', 1, '武汉市西城区街道', 116.783764, 40.565786, '广州市朝阳区街道', 117.043835, 40.645155, 18.61, 38.25, 17.26, 42.33, 42.33, 12.22, 30.11, 5, 2, 0, '系统取消', '2025-04-11 01:38:54', '2025-04-11 01:48:54', '2025-04-11 02:40:54', NULL, '2025-04-11 01:45:54', '2025-04-11 01:31:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (318, 'DD202605081028594ee76cc3', 109, 137, 36, 2, '商务型', 1, '西安市东城区街道', 118.684112, 40.658125, '南京市福田区街道', 118.618263, 40.641464, 25.07, 54.47, 28.14, 103.92, 103.92, 8.01, 95.91, 5, 2, 0, '用户取消', '2025-11-01 09:43:19', '2025-11-01 10:04:19', '2025-11-01 11:35:19', NULL, '2025-11-01 09:54:19', '2025-11-01 09:38:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (319, 'DD20260508102859afe8ab6b', 328, 30, 6, 2, '舒适型', 2, '重庆市海淀区街道', 116.693185, 40.467529, '杭州市朝阳区街道', 116.782867, 40.368839, 5.43, 17.51, 5.16, 20.35, 20.35, 0.76, 19.59, 5, 2, 0, '司机取消', '2026-04-19 05:36:51', '2026-04-19 06:03:51', '2026-04-19 06:27:51', NULL, '2026-04-19 06:00:51', '2026-04-19 05:32:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (320, 'DD20260508102859b257950b', 324, 185, 49, 1, '舒适型', 2, '成都市东城区街道', 118.268968, 39.420722, '广州市海淀区街道', 118.031470, 39.462219, 9.72, 29.98, 10.22, 36.59, 36.59, 1.16, 35.43, 4, 1, 2, '', '2024-08-09 05:43:56', '2024-08-09 05:58:56', '2024-08-09 07:05:56', '2024-08-09 07:27:56', NULL, '2024-08-09 05:40:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (321, 'DD20260508102859721bb95b', 148, 32, 7, 1, '经济型', 3, '重庆市朝阳区街道', 118.659164, 41.566401, '西安市南山区街道', 119.022007, 41.631301, 18.30, 48.83, 19.90, 42.55, 42.55, 10.67, 31.88, 4, 1, 1, '', '2026-02-05 00:28:23', '2026-02-05 00:57:23', '2026-02-05 02:46:23', '2026-02-05 02:51:23', NULL, '2026-02-05 00:21:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (322, 'DD20260508102859d6066033', 13, 94, 21, 2, '经济型', 3, '上海市朝阳区街道', 118.295480, 40.319751, '成都市朝阳区街道', 118.561001, 40.351903, 24.33, 95.53, 22.82, 90.20, 90.20, 18.88, 71.32, 5, 2, 0, '用户取消', '2025-02-21 09:30:53', '2025-02-21 09:57:53', '2025-02-21 11:45:53', NULL, '2025-02-21 09:47:53', '2025-02-21 09:26:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (323, 'DD20260508102859f0523064', 80, 140, 37, 2, '商务型', 3, '重庆市福田区街道', 118.087004, 39.922669, '重庆市西城区街道', 117.629019, 40.029796, 25.47, 58.55, 25.90, 53.94, 53.94, 13.28, 40.66, 4, 1, 1, '', '2024-05-16 15:01:20', '2024-05-16 15:18:20', '2024-05-16 16:18:20', '2024-05-16 16:27:20', NULL, '2024-05-16 14:55:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (324, 'DD2026050810285909d424b7', 371, 122, 32, 2, '商务型', 2, '深圳市福田区街道', 119.081277, 40.126135, '武汉市朝阳区街道', 118.721577, 40.128751, 5.74, 19.26, 5.68, 17.65, 17.65, 3.25, 14.40, 5, 2, 0, '用户取消', '2026-02-06 04:20:06', '2026-02-06 04:38:06', '2026-02-06 06:07:06', NULL, '2026-02-06 04:55:06', '2026-02-06 04:07:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (325, 'DD20260508102859ad995d2f', 262, 116, 31, 1, '经济型', 1, '杭州市朝阳区街道', 118.180826, 40.924261, '杭州市海淀区街道', 118.392172, 41.222233, 29.30, 65.21, 32.12, 76.03, 76.03, 17.66, 58.37, 5, 2, 0, '系统取消', '2024-09-02 08:31:49', '2024-09-02 08:40:49', '2024-09-02 09:55:49', NULL, '2024-09-02 09:25:49', '2024-09-02 08:30:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (326, 'DD202605081028593b3a0b53', 250, 108, 28, 2, '经济型', 3, '重庆市福田区街道', 116.608567, 41.862861, '深圳市朝阳区街道', 116.947672, 41.921805, 14.63, 46.94, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-06-04 12:10:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (327, 'DD20260508102859f83b9880', 458, 116, 31, 2, '经济型', 1, '广州市西城区街道', 118.587915, 39.571613, '北京市海淀区街道', 118.145902, 39.678361, 18.09, 52.30, 17.58, 69.72, 69.72, 6.94, 62.78, 4, 1, 2, '', '2024-09-24 06:59:43', '2024-09-24 07:27:43', '2024-09-24 09:19:43', '2024-09-24 09:46:43', NULL, '2024-09-24 06:48:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (328, 'DD2026050810285990c1e85a', 404, 171, 45, 2, '商务型', 3, '上海市南山区街道', 119.972719, 40.591117, '武汉市朝阳区街道', 120.146598, 40.474282, 23.24, 70.85, 27.58, 102.74, 102.74, 12.15, 90.59, 6, 0, 0, '', '2025-05-17 06:59:08', '2025-05-17 07:20:08', '2025-05-17 07:36:08', NULL, NULL, '2025-05-17 06:53:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (329, 'DD20260508102859fb19eac1', 205, 150, 40, 1, '商务型', 3, '杭州市福田区街道', 117.701009, 41.693985, '北京市海淀区街道', 117.881673, 41.807628, 2.24, 6.95, 2.67, 9.15, 9.15, 0.69, 8.46, 4, 1, 1, '', '2025-04-22 06:43:25', '2025-04-22 07:11:25', '2025-04-22 08:46:25', '2025-04-22 08:53:25', NULL, '2025-04-22 06:38:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (330, 'DD202605081028598a369abf', 86, 135, 35, 2, '舒适型', 1, '广州市朝阳区街道', 117.475694, 41.782448, '西安市朝阳区街道', 117.839509, 41.486408, 24.79, 77.15, 27.06, 72.09, 72.09, 4.86, 67.23, 6, 0, 0, '', '2025-01-27 01:07:46', '2025-01-27 01:28:46', '2025-01-27 03:18:46', NULL, NULL, '2025-01-27 00:56:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (331, 'DD20260508102859b290f9eb', 436, 23, 4, 2, '舒适型', 1, '武汉市南山区街道', 119.609252, 39.864556, '杭州市朝阳区街道', 119.367616, 39.842343, 2.58, 8.26, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-08-02 02:16:42', NULL, NULL, NULL, NULL, '2024-08-02 02:15:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (332, 'DD2026050810285993a3d418', 207, 64, 17, 1, '舒适型', 2, '西安市南山区街道', 118.423492, 40.306061, '重庆市海淀区街道', 118.800407, 40.474947, 26.94, 101.46, 27.89, 59.37, 59.37, 11.12, 48.25, 6, 0, 0, '', '2024-10-13 04:14:10', '2024-10-13 04:22:10', '2024-10-13 05:08:10', NULL, NULL, '2024-10-13 04:13:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (333, 'DD202605081028590ef76991', 469, 45, 11, 2, '舒适型', 3, '广州市福田区街道', 118.061521, 40.697823, '广州市东城区街道', 118.155648, 40.840624, 21.93, 75.30, 19.80, 58.36, 58.36, 13.18, 45.18, 4, 1, 1, '', '2026-04-13 00:28:22', '2026-04-13 00:33:22', '2026-04-13 00:45:22', '2026-04-13 00:48:22', NULL, '2026-04-13 00:22:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (334, 'DD2026050810285972dfa9ae', 105, 100, 25, 1, '商务型', 3, '南京市南山区街道', 117.298641, 40.041148, '上海市南山区街道', 117.732143, 40.183240, 24.10, 71.80, 21.92, 46.76, 46.76, 6.29, 40.47, 4, 1, 1, '', '2025-12-22 14:47:57', '2025-12-22 14:52:57', '2025-12-22 15:48:57', '2025-12-22 15:59:57', NULL, '2025-12-22 14:34:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (335, 'DD2026050810285936b17a05', 38, 116, 31, 1, '商务型', 2, '广州市海淀区街道', 116.566668, 40.030828, '北京市东城区街道', 116.753486, 40.023493, 24.35, 76.28, 28.45, 61.59, 61.59, 9.94, 51.65, 4, 1, 1, '', '2025-12-30 10:25:14', '2025-12-30 10:51:14', '2025-12-30 12:23:14', '2025-12-30 12:40:14', NULL, '2025-12-30 10:22:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (336, 'DD20260508102859dbf1b09a', 110, 43, 10, 1, '经济型', 3, '武汉市福田区街道', 118.091613, 39.952827, '深圳市东城区街道', 118.225616, 39.700170, 20.16, 62.17, 20.59, 46.25, 46.25, 0.82, 45.43, 4, 1, 2, '', '2024-02-10 12:31:18', '2024-02-10 12:40:18', '2024-02-10 12:55:18', '2024-02-10 12:56:18', NULL, '2024-02-10 12:24:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (337, 'DD20260508102859a47ddd95', 375, 141, 38, 2, '舒适型', 2, '南京市东城区街道', 116.578712, 40.566495, '上海市海淀区街道', 116.249156, 40.387109, 15.13, 44.76, 13.92, 35.40, 35.40, 3.27, 32.13, 4, 1, 2, '', '2025-12-30 10:46:24', '2025-12-30 11:04:24', '2025-12-30 11:40:24', '2025-12-30 12:03:24', NULL, '2025-12-30 10:37:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (338, 'DD2026050810285908d60dfd', 475, NULL, NULL, 2, '经济型', 1, '南京市东城区街道', 119.164482, 39.109003, '武汉市福田区街道', 119.108895, 39.361555, 7.35, 17.18, 8.52, 24.91, 24.91, 3.84, 21.07, 4, 1, 1, '', '2025-05-19 13:26:20', '2025-05-19 13:34:20', '2025-05-19 14:14:20', '2025-05-19 14:24:20', NULL, '2025-05-19 13:24:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (339, 'DD20260508102859d0d9baca', 442, 150, 40, 1, '经济型', 3, '西安市东城区街道', 116.790565, 40.606622, '武汉市朝阳区街道', 116.777762, 40.335210, 25.71, 56.14, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-10-08 13:54:42', '2024-10-08 14:02:42', NULL, NULL, NULL, '2024-10-08 13:40:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (340, 'DD20260508102859ed51ceeb', 478, 37, 9, 1, '商务型', 2, '杭州市东城区街道', 117.510449, 39.443152, '杭州市东城区街道', 117.833109, 39.436221, 20.80, 80.87, 19.18, 70.67, 70.67, 3.92, 66.75, 6, 0, 0, '', '2025-08-10 08:23:30', '2025-08-10 08:41:30', '2025-08-10 09:12:30', NULL, NULL, '2025-08-10 08:15:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (341, 'DD202605081028592180ecec', 51, 98, 23, 2, '经济型', 2, '南京市西城区街道', 119.947830, 40.726645, '成都市海淀区街道', 120.153876, 40.607022, 13.11, 28.47, 15.12, 43.67, 43.67, 12.92, 30.75, 4, 1, 2, '', '2024-03-15 05:18:17', '2024-03-15 05:40:17', '2024-03-15 07:32:17', '2024-03-15 07:56:17', NULL, '2024-03-15 05:14:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (342, 'DD2026050810285940684dc5', 370, 43, 10, 1, '商务型', 2, '南京市东城区街道', 117.995922, 41.343896, '北京市西城区街道', 118.451874, 41.135804, 26.82, 76.75, 25.17, 88.77, 88.77, 12.73, 76.04, 4, 1, 2, '', '2025-04-10 11:29:19', '2025-04-10 11:48:19', '2025-04-10 12:02:19', '2025-04-10 12:25:19', NULL, '2025-04-10 11:18:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (343, 'DD20260508102859448a148e', 176, NULL, NULL, 1, '经济型', 1, '广州市朝阳区街道', 118.004378, 41.925477, '上海市海淀区街道', 118.048378, 41.887196, 18.89, 56.25, 20.22, 42.46, 42.46, 11.54, 30.92, 6, 0, 0, '', '2026-02-21 12:28:42', '2026-02-21 12:37:42', '2026-02-21 14:11:42', NULL, NULL, '2026-02-21 12:25:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (344, 'DD2026050810285975cd38db', 13, 171, 45, 1, '商务型', 1, '成都市东城区街道', 119.305581, 39.434232, '西安市东城区街道', 119.336082, 39.219670, 15.57, 56.35, 15.99, 58.23, 58.23, 3.38, 54.85, 5, 2, 0, '司机取消', '2026-03-31 10:06:22', '2026-03-31 10:27:22', '2026-03-31 11:43:22', NULL, '2026-03-31 10:49:22', '2026-03-31 10:02:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (345, 'DD202605081028593be73380', 71, NULL, NULL, 1, '舒适型', 2, '成都市朝阳区街道', 117.089471, 40.111274, '上海市海淀区街道', 116.602652, 39.901249, 28.41, 65.68, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-04-21 21:03:56', '2026-04-21 21:18:56', NULL, NULL, NULL, '2026-04-21 20:49:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (346, 'DD202605081028597427bee0', 70, 100, 25, 1, '舒适型', 1, '上海市海淀区街道', 118.085892, 39.989040, '武汉市海淀区街道', 118.576770, 40.278578, 13.57, 32.82, 12.77, 39.22, 39.22, 10.28, 28.94, 4, 1, 1, '', '2024-05-22 21:08:11', '2024-05-22 21:33:11', '2024-05-22 22:05:11', '2024-05-22 22:13:11', NULL, '2024-05-22 21:07:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (347, 'DD20260508102859d35d6228', 287, 11, 3, 2, '经济型', 2, '南京市西城区街道', 119.526027, 39.999515, '西安市海淀区街道', 119.567601, 40.124703, 13.69, 29.89, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-04-11 15:00:44', NULL, NULL, NULL, NULL, '2025-04-11 14:58:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (348, 'DD20260508102859706b1409', 55, NULL, NULL, 1, '舒适型', 1, '重庆市东城区街道', 118.572184, 39.327729, '武汉市东城区街道', 118.776320, 39.358346, 10.30, 41.07, 11.47, 34.20, 34.20, 2.51, 31.69, 4, 1, 1, '', '2024-02-02 09:30:39', '2024-02-02 09:52:39', '2024-02-02 10:04:39', '2024-02-02 10:19:39', NULL, '2024-02-02 09:17:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (349, 'DD20260508102859b3542b5a', 434, 135, 35, 2, '商务型', 1, '成都市朝阳区街道', 116.019337, 41.468817, '深圳市南山区街道', 115.764323, 41.227931, 22.00, 53.44, 25.30, 54.75, 54.75, 2.95, 51.80, 4, 1, 1, '', '2025-12-17 08:16:40', '2025-12-17 08:23:40', '2025-12-17 09:34:40', '2025-12-17 09:47:40', NULL, '2025-12-17 08:08:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (350, 'DD2026050810285919a0dfb1', 335, 150, 40, 1, '商务型', 2, '上海市海淀区街道', 117.391047, 41.182698, '重庆市西城区街道', 116.913194, 41.321640, 16.46, 33.52, 15.75, 32.12, 32.12, 8.97, 23.15, 5, 2, 0, '用户取消', '2026-03-12 17:46:48', '2026-03-12 18:00:48', '2026-03-12 19:58:48', NULL, '2026-03-12 17:54:48', '2026-03-12 17:35:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (351, 'DD20260508102859a2d09b80', 336, NULL, NULL, 1, '经济型', 3, '武汉市西城区街道', 118.029665, 41.972719, '杭州市朝阳区街道', 118.172781, 42.041549, 8.58, 21.45, 9.15, 35.34, 35.34, 7.21, 28.13, 4, 1, 2, '', '2025-12-09 13:18:15', '2025-12-09 13:42:15', '2025-12-09 14:10:15', '2025-12-09 14:39:15', NULL, '2025-12-09 13:06:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (352, 'DD202605081028597478c3e0', 55, 72, 18, 2, '商务型', 2, '北京市西城区街道', 116.621391, 39.988871, '重庆市南山区街道', 116.606422, 40.031537, 4.49, 16.39, 5.35, 16.51, 16.51, 3.34, 13.17, 4, 1, 1, '', '2025-04-22 20:07:51', '2025-04-22 20:27:51', '2025-04-22 20:49:51', '2025-04-22 21:11:51', NULL, '2025-04-22 19:53:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (353, 'DD202605081028593fd2574c', 35, 157, 42, 1, '商务型', 2, '上海市东城区街道', 119.952257, 39.875060, '上海市朝阳区街道', 120.306906, 40.169673, 15.22, 58.35, 13.76, 53.95, 53.95, 12.73, 41.22, 4, 1, 2, '', '2024-10-08 19:16:02', '2024-10-08 19:34:02', '2024-10-08 21:17:02', '2024-10-08 21:18:02', NULL, '2024-10-08 19:15:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (354, 'DD2026050810285900b06830', 261, 32, 7, 1, '经济型', 3, '上海市南山区街道', 119.260123, 39.541520, '北京市海淀区街道', 119.237939, 39.243271, 21.19, 70.03, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-10-17 11:40:59', NULL, NULL, NULL, NULL, '2024-10-17 11:35:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (355, 'DD20260508102859daa907f2', 406, 157, 42, 1, '舒适型', 2, '杭州市朝阳区街道', 116.665941, 39.957352, '上海市南山区街道', 116.236251, 39.945336, 4.53, 12.52, 4.59, 10.34, 10.34, 0.35, 9.99, 4, 1, 2, '', '2025-03-27 18:45:14', '2025-03-27 19:12:14', '2025-03-27 20:16:14', '2025-03-27 20:22:14', NULL, '2025-03-27 18:44:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (356, 'DD20260508102859ad622ffa', 356, 135, 35, 2, '经济型', 1, '北京市福田区街道', 119.325612, 41.185812, '广州市朝阳区街道', 118.832185, 41.228461, 6.20, 14.36, 6.52, 14.42, 14.42, 2.61, 11.81, 4, 1, 1, '', '2024-10-16 09:53:40', '2024-10-16 10:04:40', '2024-10-16 11:21:40', '2024-10-16 11:29:40', NULL, '2024-10-16 09:40:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (357, 'DD2026050810285938427cf2', 268, 177, 46, 2, '商务型', 1, '重庆市朝阳区街道', 116.363642, 39.160512, '武汉市西城区街道', 116.220998, 39.145804, 25.58, 85.60, 29.40, 115.80, 115.80, 10.83, 104.97, 4, 1, 2, '', '2024-03-15 05:40:20', '2024-03-15 06:10:20', '2024-03-15 06:49:20', '2024-03-15 06:56:20', NULL, '2024-03-15 05:29:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (358, 'DD202605081028594ab2f99a', 78, 36, 8, 2, '经济型', 3, '北京市西城区街道', 116.858486, 40.144895, '杭州市西城区街道', 116.976072, 40.383032, 1.89, 6.43, 2.08, 7.54, 7.54, 1.84, 5.70, 4, 1, 2, '', '2024-10-07 12:35:42', '2024-10-07 13:05:42', '2024-10-07 15:04:42', '2024-10-07 15:20:42', NULL, '2024-10-07 12:22:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (359, 'DD20260508102859e5802476', 7, 36, 8, 1, '舒适型', 1, '武汉市西城区街道', 118.054088, 41.698781, '北京市东城区街道', 118.142985, 41.535348, 17.09, 36.62, 19.20, 58.35, 58.35, 8.00, 50.35, 4, 1, 1, '', '2026-02-21 20:08:15', '2026-02-21 20:27:15', '2026-02-21 21:41:15', '2026-02-21 21:59:15', NULL, '2026-02-21 19:55:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (360, 'DD202605081028592e63a50d', 117, 23, 4, 2, '商务型', 3, '武汉市海淀区街道', 117.726399, 40.167686, '南京市东城区街道', 118.127594, 40.317909, 6.22, 23.48, 6.05, 12.62, 12.62, 1.43, 11.19, 4, 1, 1, '', '2024-09-11 16:50:47', '2024-09-11 17:18:47', '2024-09-11 19:04:47', '2024-09-11 19:10:47', NULL, '2024-09-11 16:48:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (361, 'DD202605081028593f5cf760', 167, 62, 16, 2, '商务型', 1, '杭州市海淀区街道', 117.369756, 40.012948, '深圳市海淀区街道', 117.363528, 40.138596, 28.40, 110.52, 29.56, 80.14, 80.14, 20.13, 60.01, 4, 1, 2, '', '2025-09-21 00:52:56', '2025-09-21 01:14:56', '2025-09-21 02:04:56', '2025-09-21 02:17:56', NULL, '2025-09-21 00:38:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (362, 'DD2026050810285992cc1b39', 89, 116, 31, 1, '舒适型', 3, '成都市朝阳区街道', 116.169723, 40.276323, '南京市西城区街道', 116.198121, 40.243132, 2.12, 4.40, 1.96, 7.39, 7.39, 1.37, 6.02, 6, 0, 0, '', '2025-11-05 00:43:05', '2025-11-05 01:01:05', '2025-11-05 02:39:05', NULL, NULL, '2025-11-05 00:31:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (363, 'DD20260508102859c598a6a8', 487, NULL, NULL, 1, '经济型', 3, '深圳市南山区街道', 116.967003, 40.179203, '重庆市南山区街道', 117.446521, 40.471068, 21.05, 70.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-12-27 04:00:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (364, 'DD2026050810285959d4eaba', 375, 99, 24, 1, '经济型', 2, '成都市东城区街道', 119.481466, 39.719915, '武汉市海淀区街道', 119.469712, 39.526121, 21.35, 73.53, 20.22, 68.87, 68.87, 0.57, 68.30, 5, 2, 0, '用户取消', '2024-12-21 01:48:36', '2024-12-21 02:01:36', '2024-12-21 03:04:36', NULL, '2024-12-21 02:36:36', '2024-12-21 01:41:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (365, 'DD20260508102859a16a041f', 148, NULL, NULL, 1, '经济型', 3, '成都市东城区街道', 119.358926, 40.021961, '武汉市海淀区街道', 119.082766, 40.271970, 19.25, 67.65, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-02-19 14:54:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (366, 'DD20260508102859282fc5b1', 173, 11, 3, 1, '经济型', 2, '南京市西城区街道', 118.869480, 40.982108, '广州市南山区街道', 118.428850, 41.034056, 5.34, 11.48, 4.95, 17.41, 17.41, 4.25, 13.16, 4, 1, 1, '', '2024-02-17 10:09:55', '2024-02-17 10:34:55', '2024-02-17 11:01:55', '2024-02-17 11:06:55', NULL, '2024-02-17 10:01:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (367, 'DD20260508102859a8f64954', 307, 94, 21, 2, '舒适型', 3, '重庆市西城区街道', 118.016488, 41.402576, '西安市朝阳区街道', 117.928273, 41.458170, 14.37, 29.88, 16.82, 49.63, 49.63, 14.76, 34.87, 5, 2, 0, '司机取消', '2026-04-05 14:25:59', '2026-04-05 14:33:59', '2026-04-05 14:47:59', NULL, '2026-04-05 15:05:59', '2026-04-05 14:16:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (368, 'DD202605081028593c9c7f92', 425, 95, 22, 1, '舒适型', 1, '武汉市西城区街道', 119.129786, 41.726020, '深圳市东城区街道', 118.955224, 41.436954, 25.83, 84.81, 29.70, 112.56, 112.56, 8.65, 103.91, 5, 2, 0, '司机取消', '2024-09-28 15:16:09', '2024-09-28 15:42:09', '2024-09-28 17:08:09', NULL, '2024-09-28 15:19:09', '2024-09-28 15:15:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (369, 'DD20260508102859d6e6dc11', 382, 36, 8, 1, '经济型', 3, '武汉市南山区街道', 119.910635, 39.048456, '深圳市海淀区街道', 120.314189, 39.180135, 22.26, 88.96, 23.03, 76.24, 76.24, 2.16, 74.08, 4, 1, 2, '', '2024-01-09 09:56:56', '2024-01-09 10:21:56', '2024-01-09 11:05:56', '2024-01-09 11:09:56', NULL, '2024-01-09 09:53:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (370, 'DD20260508102859f021ce3a', 429, 141, 38, 2, '经济型', 2, '深圳市海淀区街道', 118.985753, 39.605419, '广州市南山区街道', 118.757647, 39.671434, 11.53, 32.36, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-02-24 00:06:58', '2024-02-24 00:16:58', NULL, NULL, NULL, '2024-02-23 23:53:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (371, 'DD20260508102859de92cba2', 433, 171, 45, 2, '经济型', 2, '上海市海淀区街道', 118.843510, 39.051602, '西安市朝阳区街道', 118.416550, 39.279475, 8.48, 18.35, 8.19, 23.67, 23.67, 4.79, 18.88, 6, 0, 0, '', '2025-05-05 20:40:45', '2025-05-05 21:06:45', '2025-05-05 22:01:45', NULL, NULL, '2025-05-05 20:25:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (372, 'DD202605081028595d5feef5', 263, 99, 24, 2, '经济型', 1, '广州市海淀区街道', 119.260728, 39.042707, '上海市朝阳区街道', 119.529906, 39.318723, 3.93, 9.56, 4.29, 15.73, 15.73, 2.55, 13.18, 4, 1, 1, '', '2025-05-16 04:10:25', '2025-05-16 04:35:25', '2025-05-16 04:53:25', '2025-05-16 04:54:25', NULL, '2025-05-16 04:09:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (373, 'DD20260508102859a96f33a9', 55, 11, 3, 1, '经济型', 3, '西安市西城区街道', 118.326143, 39.187515, '成都市西城区街道', 118.019000, 38.896597, 18.05, 53.01, 19.45, 41.42, 41.42, 11.58, 29.84, 4, 1, 1, '', '2024-03-05 06:41:48', '2024-03-05 06:46:48', '2024-03-05 07:04:48', '2024-03-05 07:12:48', NULL, '2024-03-05 06:37:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (374, 'DD202605081028599dbdbf87', 10, 11, 3, 2, '商务型', 1, '重庆市海淀区街道', 116.829553, 39.359719, '上海市西城区街道', 116.456838, 39.537010, 8.84, 26.14, 9.43, 21.86, 21.86, 4.00, 17.86, 4, 1, 2, '', '2024-12-11 06:16:47', '2024-12-11 06:41:47', '2024-12-11 07:32:47', '2024-12-11 07:42:47', NULL, '2024-12-11 06:05:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (375, 'DD202605081028597c61d6e8', 402, 150, 40, 2, '舒适型', 1, '深圳市南山区街道', 119.457964, 41.587817, '南京市福田区街道', 119.042740, 41.472853, 26.58, 88.15, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-12-11 16:12:25', '2025-12-11 16:19:25', NULL, NULL, NULL, '2025-12-11 16:06:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (376, 'DD20260508102859618719cb', 339, 135, 35, 1, '商务型', 3, '成都市海淀区街道', 119.655707, 41.019762, '南京市朝阳区街道', 119.211473, 41.186443, 3.74, 13.33, 3.73, 8.22, 8.22, 1.84, 6.38, 4, 1, 2, '', '2024-07-21 18:15:31', '2024-07-21 18:30:31', '2024-07-21 18:46:31', '2024-07-21 18:48:31', NULL, '2024-07-21 18:02:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (377, 'DD20260508102859db2372ad', 404, 94, 21, 2, '商务型', 2, '上海市东城区街道', 118.124147, 39.167086, '上海市海淀区街道', 118.499028, 39.435977, 15.22, 44.53, 15.93, 43.26, 43.26, 5.40, 37.86, 4, 1, 1, '', '2024-02-17 02:12:01', '2024-02-17 02:18:01', '2024-02-17 03:28:01', '2024-02-17 03:36:01', NULL, '2024-02-17 02:04:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (378, 'DD2026050810285928dee2c5', 404, 116, 31, 2, '经济型', 3, '杭州市朝阳区街道', 117.313333, 40.836884, '武汉市南山区街道', 117.372018, 40.674421, 28.76, 105.79, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-10-28 04:16:53', NULL, NULL, NULL, NULL, '2024-10-28 04:03:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (379, 'DD20260508102859d5418a7d', 327, 129, 34, 2, '经济型', 1, '重庆市南山区街道', 118.969875, 41.811584, '南京市福田区街道', 118.811323, 41.664335, 11.10, 23.00, 12.64, 37.53, 37.53, 2.84, 34.69, 5, 2, 0, '系统取消', '2025-04-10 02:14:58', '2025-04-10 02:43:58', '2025-04-10 02:57:58', NULL, '2025-04-10 02:22:58', '2025-04-10 02:01:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (380, 'DD20260508102859ec8e670c', 238, 32, 7, 2, '舒适型', 1, '南京市福田区街道', 118.112588, 41.836421, '上海市福田区街道', 117.945769, 41.693582, 21.07, 81.28, 22.86, 60.88, 60.88, 10.39, 50.49, 4, 1, 1, '', '2024-06-07 07:19:54', '2024-06-07 07:44:54', '2024-06-07 07:55:54', '2024-06-07 08:08:54', NULL, '2024-06-07 07:11:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (381, 'DD202605081028593540cb12', 123, 150, 40, 1, '经济型', 1, '北京市西城区街道', 118.296919, 41.745598, '北京市东城区街道', 117.920776, 41.895657, 26.83, 75.40, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-02-11 23:29:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (382, 'DD20260508102859e0a8b309', 196, 32, 7, 1, '舒适型', 2, '杭州市东城区街道', 119.597345, 41.842592, '南京市南山区街道', 119.951167, 41.702753, 8.78, 32.34, 10.50, 29.91, 29.91, 8.00, 21.91, 4, 1, 1, '', '2024-09-20 16:33:47', '2024-09-20 16:51:47', '2024-09-20 18:06:47', '2024-09-20 18:09:47', NULL, '2024-09-20 16:19:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (383, 'DD20260508102859e9455f75', 19, 180, 47, 1, '舒适型', 3, '成都市福田区街道', 119.547651, 40.730577, '广州市东城区街道', 119.921666, 40.760250, 24.47, 90.68, 26.85, 85.06, 85.06, 5.81, 79.25, 4, 1, 2, '', '2025-10-21 15:21:46', '2025-10-21 15:48:46', '2025-10-21 17:23:46', '2025-10-21 17:36:46', NULL, '2025-10-21 15:16:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (384, 'DD20260508102859e1d277da', 25, NULL, NULL, 1, '舒适型', 1, '南京市福田区街道', 116.309881, 40.193156, '重庆市东城区街道', 115.990662, 40.182338, 28.01, 70.42, 30.34, 91.37, 91.37, 2.07, 89.30, 4, 1, 1, '', '2024-08-29 20:45:34', '2024-08-29 20:55:34', '2024-08-29 22:34:34', '2024-08-29 23:01:34', NULL, '2024-08-29 20:33:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (385, 'DD20260508102859a5bfc63b', 450, 108, 28, 2, '经济型', 3, '重庆市西城区街道', 116.078132, 39.819957, '上海市东城区街道', 115.801291, 39.714818, 21.44, 80.37, 19.44, 76.53, 76.53, 16.38, 60.15, 4, 1, 2, '', '2024-01-13 16:53:14', '2024-01-13 17:13:14', '2024-01-13 18:27:14', '2024-01-13 18:45:14', NULL, '2024-01-13 16:38:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (386, 'DD202605081028590f7b9a9e', 139, 36, 8, 1, '经济型', 2, '杭州市海淀区街道', 119.242840, 41.406208, '北京市东城区街道', 119.085716, 41.594386, 8.10, 20.83, 7.66, 25.38, 25.38, 3.72, 21.66, 5, 2, 0, '系统取消', '2025-04-30 23:42:40', '2025-05-01 00:03:40', '2025-05-01 00:50:40', NULL, '2025-05-01 00:32:40', '2025-04-30 23:34:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (387, 'DD202605081028597646c79a', 377, 106, 27, 1, '商务型', 1, '北京市东城区街道', 118.764993, 39.931415, '西安市福田区街道', 119.203756, 40.050745, 10.67, 30.87, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-07-26 04:18:34', '2025-07-26 04:44:34', NULL, NULL, NULL, '2025-07-26 04:03:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (388, 'DD20260508102859aa8545dd', 109, 64, 17, 1, '舒适型', 3, '武汉市福田区街道', 116.186261, 41.774181, '杭州市东城区街道', 115.863863, 41.929287, 9.46, 23.02, 11.16, 39.53, 39.53, 8.51, 31.02, 4, 1, 2, '', '2024-06-19 14:27:33', '2024-06-19 14:57:33', '2024-06-19 15:12:33', '2024-06-19 15:31:33', NULL, '2024-06-19 14:14:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (389, 'DD2026050810285965ddfe46', 399, 1, 1, 1, '舒适型', 3, '南京市东城区街道', 117.386132, 41.437649, '武汉市福田区街道', 117.236720, 41.379871, 17.78, 56.76, 17.95, 42.66, 42.66, 5.92, 36.74, 4, 1, 1, '', '2024-02-20 12:39:12', '2024-02-20 13:03:12', '2024-02-20 13:53:12', '2024-02-20 14:20:12', NULL, '2024-02-20 12:38:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (390, 'DD20260508102859c4b4b300', 493, 159, 43, 2, '商务型', 3, '南京市南山区街道', 119.839933, 40.017773, '广州市南山区街道', 119.852029, 40.028408, 26.11, 69.85, 23.81, 91.51, 91.51, 7.33, 84.18, 5, 2, 0, '用户取消', '2026-03-28 14:20:35', '2026-03-28 14:37:35', '2026-03-28 16:26:35', NULL, '2026-03-28 14:25:35', '2026-03-28 14:17:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (391, 'DD202605081028599fc9ccb0', 86, NULL, NULL, 2, '舒适型', 3, '西安市海淀区街道', 118.258249, 41.421050, '武汉市朝阳区街道', 118.682484, 41.133118, 11.76, 33.64, 12.16, 41.58, 41.58, 11.73, 29.85, 5, 2, 0, '司机取消', '2024-10-07 18:55:01', '2024-10-07 19:13:01', '2024-10-07 21:07:01', NULL, '2024-10-07 19:18:01', '2024-10-07 18:40:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (392, 'DD20260508102859c52b3832', 385, 150, 40, 1, '经济型', 3, '杭州市海淀区街道', 119.550660, 40.351656, '西安市海淀区街道', 119.380833, 40.192020, 22.07, 69.98, 21.26, 79.79, 79.79, 12.32, 67.47, 5, 2, 0, '系统取消', '2025-09-26 21:46:50', '2025-09-26 22:02:50', '2025-09-26 23:45:50', NULL, '2025-09-26 22:11:50', '2025-09-26 21:41:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (393, 'DD202605081028591406a75b', 259, 1, 1, 1, '商务型', 3, '南京市海淀区街道', 118.363121, 40.515909, '北京市朝阳区街道', 118.279912, 40.359525, 26.30, 64.28, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-01-25 05:03:25', '2025-01-25 05:18:25', NULL, NULL, NULL, '2025-01-25 04:58:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (394, 'DD20260508102859e284bb16', 351, 32, 7, 1, '商务型', 2, '杭州市南山区街道', 118.701284, 39.129063, '深圳市东城区街道', 118.725188, 39.055847, 6.55, 19.63, 6.47, 16.19, 16.19, 3.13, 13.06, 5, 2, 0, '用户取消', '2025-08-06 18:28:49', '2025-08-06 18:41:49', '2025-08-06 19:00:49', NULL, '2025-08-06 18:53:49', '2025-08-06 18:27:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (395, 'DD2026050810285969325d94', 305, 30, 6, 2, '商务型', 2, '深圳市福田区街道', 119.480706, 40.425908, '北京市海淀区街道', 119.386131, 40.682421, 1.35, 4.15, 1.55, 4.69, 4.69, 0.89, 3.80, 4, 1, 2, '', '2024-09-11 22:43:23', '2024-09-11 23:10:23', '2024-09-12 00:17:23', '2024-09-12 00:40:23', NULL, '2024-09-11 22:40:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (396, 'DD20260508102859ceef4449', 80, 129, 34, 1, '舒适型', 1, '深圳市海淀区街道', 119.623471, 41.638081, '深圳市西城区街道', 119.380447, 41.841366, 1.29, 2.70, 1.54, 4.14, 4.14, 0.90, 3.24, 4, 1, 2, '', '2025-09-25 09:25:57', '2025-09-25 09:50:57', '2025-09-25 11:40:57', '2025-09-25 11:49:57', NULL, '2025-09-25 09:19:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (397, 'DD2026050810285976c1dffd', 245, 36, 8, 1, '经济型', 3, '重庆市海淀区街道', 118.082870, 41.270799, '武汉市南山区街道', 117.691170, 41.463223, 16.17, 62.71, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-11-13 12:17:33', '2024-11-13 12:45:33', NULL, NULL, NULL, '2024-11-13 12:07:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (398, 'DD20260508102859eb632463', 95, 30, 6, 2, '经济型', 1, '成都市福田区街道', 117.456667, 41.800047, '广州市西城区街道', 117.788934, 41.540388, 4.99, 12.24, 4.89, 16.33, 16.33, 1.58, 14.75, 5, 2, 0, '司机取消', '2025-06-25 03:29:57', '2025-06-25 03:43:57', '2025-06-25 04:02:57', NULL, '2025-06-25 03:30:57', '2025-06-25 03:20:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (399, 'DD20260508102859bdd4b8ac', 170, 23, 4, 1, '经济型', 1, '北京市西城区街道', 119.742126, 39.952535, '西安市海淀区街道', 119.344336, 40.014783, 11.23, 24.42, 10.56, 22.90, 22.90, 4.10, 18.80, 4, 1, 2, '', '2025-05-30 02:32:46', '2025-05-30 02:43:46', '2025-05-30 03:37:46', '2025-05-30 03:53:46', NULL, '2025-05-30 02:31:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (400, 'DD202605081028593d00a8fb', 244, 185, 49, 1, '经济型', 1, '重庆市海淀区街道', 117.452250, 39.420918, '杭州市西城区街道', 117.500192, 39.213804, 20.15, 72.55, 18.49, 73.85, 73.85, 6.74, 67.11, 4, 1, 2, '', '2025-12-17 22:28:22', '2025-12-17 22:42:22', '2025-12-17 23:06:22', '2025-12-17 23:25:22', NULL, '2025-12-17 22:25:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (401, 'DD202605081028599166d60e', 358, 135, 35, 2, '舒适型', 3, '杭州市南山区街道', 119.425853, 41.442403, '重庆市海淀区街道', 119.694866, 41.539553, 24.92, 75.66, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-05-08 21:03:01', NULL, NULL, NULL, NULL, '2024-05-08 20:57:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (402, 'DD20260508102859c0bf8a34', 449, 43, 10, 1, '经济型', 2, '广州市西城区街道', 116.957704, 40.160054, '杭州市南山区街道', 117.382566, 40.243667, 7.29, 22.63, 7.58, 28.29, 28.29, 0.02, 28.27, 4, 1, 2, '', '2025-07-06 17:27:04', '2025-07-06 17:40:04', '2025-07-06 19:03:04', '2025-07-06 19:13:04', NULL, '2025-07-06 17:22:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (403, 'DD202605081028597c11adb9', 431, 110, 29, 2, '经济型', 1, '上海市东城区街道', 118.772218, 40.998282, '重庆市西城区街道', 118.709099, 40.761192, 13.14, 42.37, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-09-27 21:35:54', NULL, NULL, NULL, NULL, '2025-09-27 21:27:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (404, 'DD202605081028599a316f72', 92, 49, 12, 1, '舒适型', 3, '北京市东城区街道', 118.819233, 40.508869, '上海市福田区街道', 118.996521, 40.469903, 13.92, 50.27, 15.95, 31.91, 31.91, 5.41, 26.50, 4, 1, 2, '', '2025-01-09 04:56:34', '2025-01-09 05:17:34', '2025-01-09 06:03:34', '2025-01-09 06:32:34', NULL, '2025-01-09 04:46:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (405, 'DD20260508102859d316fb3c', 392, 37, 9, 1, '经济型', 2, '广州市西城区街道', 117.346076, 41.546802, '杭州市朝阳区街道', 117.621245, 41.762475, 23.61, 63.06, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-10-21 14:26:55', NULL, NULL, NULL, NULL, '2024-10-21 14:16:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (406, 'DD20260508102859b7d3cc00', 283, 45, 11, 2, '舒适型', 3, '成都市朝阳区街道', 117.471983, 39.598146, '北京市西城区街道', 117.535551, 39.395660, 18.79, 37.90, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-10-30 15:52:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (407, 'DD2026050810285980867517', 435, 185, 49, 1, '商务型', 1, '成都市南山区街道', 116.452528, 39.978921, '成都市南山区街道', 116.588465, 40.191137, 24.81, 69.47, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-02-20 15:07:14', NULL, NULL, NULL, NULL, '2025-02-20 14:53:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (408, 'DD20260508102859c204072a', 414, 36, 8, 1, '经济型', 1, '重庆市西城区街道', 119.052490, 39.248727, '成都市西城区街道', 119.318989, 39.078072, 1.63, 5.92, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-05-12 18:24:27', '2025-05-12 18:42:27', NULL, NULL, NULL, '2025-05-12 18:18:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (409, 'DD2026050810285943aa0c69', 423, 56, 15, 2, '舒适型', 1, '杭州市西城区街道', 116.037573, 39.491855, '杭州市海淀区街道', 115.719407, 39.713416, 16.56, 44.29, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-03-12 10:50:36', '2025-03-12 11:00:36', NULL, NULL, NULL, '2025-03-12 10:39:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (410, 'DD20260508102859e53e574d', 463, 11, 3, 1, '舒适型', 3, '成都市东城区街道', 118.477004, 39.190719, '南京市朝阳区街道', 118.550427, 39.463338, 4.45, 10.09, 5.20, 17.44, 17.44, 1.88, 15.56, 4, 1, 1, '', '2026-01-29 03:50:05', '2026-01-29 04:19:05', '2026-01-29 06:14:05', '2026-01-29 06:22:05', NULL, '2026-01-29 03:46:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (411, 'DD20260508102859d781ce52', 171, 72, 18, 2, '商务型', 1, '深圳市朝阳区街道', 119.220874, 41.615253, '西安市东城区街道', 119.704058, 41.849583, 27.35, 99.09, 31.79, 111.60, 111.60, 9.05, 102.55, 4, 1, 1, '', '2024-06-24 17:07:49', '2024-06-24 17:17:49', '2024-06-24 17:53:49', '2024-06-24 18:07:49', NULL, '2024-06-24 17:03:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (412, 'DD20260508102859744e771b', 172, 43, 10, 1, '经济型', 3, '北京市南山区街道', 116.906823, 40.705288, '西安市西城区街道', 116.704772, 40.991068, 6.62, 13.36, 6.34, 19.43, 19.43, 3.89, 15.54, 4, 1, 1, '', '2026-04-11 16:48:14', '2026-04-11 17:18:14', '2026-04-11 17:52:14', '2026-04-11 18:06:14', NULL, '2026-04-11 16:36:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (413, 'DD20260508102859a6982429', 215, 62, 16, 2, '舒适型', 2, '西安市朝阳区街道', 116.236183, 39.660737, '上海市南山区街道', 115.954560, 39.402743, 23.32, 69.74, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-07-11 10:26:42', '2025-07-11 10:38:42', NULL, NULL, NULL, '2025-07-11 10:21:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (414, 'DD20260508102859f7ec6ac4', 414, 32, 7, 2, '经济型', 2, '深圳市朝阳区街道', 116.681105, 41.818441, '西安市东城区街道', 116.605078, 41.966508, 24.79, 65.74, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-12-07 00:09:07', '2025-12-07 00:38:07', NULL, NULL, NULL, '2025-12-07 00:02:07', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (415, 'DD20260508102859aca9080a', 424, 180, 47, 1, '舒适型', 3, '北京市南山区街道', 116.034823, 39.438946, '西安市朝阳区街道', 116.384507, 39.450374, 24.24, 87.04, 26.93, 74.39, 74.39, 18.85, 55.54, 4, 1, 1, '', '2026-01-30 22:18:39', '2026-01-30 22:36:39', '2026-01-30 23:40:39', '2026-01-30 23:46:39', NULL, '2026-01-30 22:16:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (416, 'DD20260508102859be80e27b', 499, 11, 3, 1, '经济型', 2, '成都市东城区街道', 116.741618, 39.989241, '成都市西城区街道', 116.286898, 40.164443, 3.26, 11.70, 3.16, 9.49, 9.49, 2.59, 6.90, 4, 1, 1, '', '2026-03-16 09:23:13', '2026-03-16 09:45:13', '2026-03-16 11:37:13', '2026-03-16 11:58:13', NULL, '2026-03-16 09:09:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (417, 'DD2026050810285968d678d0', 191, 98, 23, 1, '商务型', 2, '广州市福田区街道', 117.103026, 39.121424, '深圳市朝阳区街道', 116.832760, 38.900951, 11.77, 38.84, 11.74, 42.35, 42.35, 4.65, 37.70, 5, 2, 0, '用户取消', '2024-06-14 06:49:48', '2024-06-14 07:03:48', '2024-06-14 07:55:48', NULL, '2024-06-14 06:52:48', '2024-06-14 06:45:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (418, 'DD202605081028599dd28836', 282, 110, 29, 2, '舒适型', 2, '深圳市海淀区街道', 119.518460, 39.924323, '成都市海淀区街道', 119.347927, 40.127020, 5.41, 15.63, 5.33, 21.02, 21.02, 1.30, 19.72, 4, 1, 1, '', '2024-04-08 20:54:15', '2024-04-08 21:05:15', '2024-04-08 22:16:15', '2024-04-08 22:20:15', NULL, '2024-04-08 20:41:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (419, 'DD2026050810285932059fb0', 73, 137, 36, 1, '经济型', 1, '成都市东城区街道', 119.095588, 39.372349, '南京市福田区街道', 119.452118, 39.656031, 23.55, 83.26, 22.03, 65.26, 65.26, 6.62, 58.64, 4, 1, 2, '', '2025-08-21 00:02:49', '2025-08-21 00:16:49', '2025-08-21 01:09:49', '2025-08-21 01:31:49', NULL, '2025-08-20 23:58:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (420, 'DD20260508102859bdec0d93', 8, 94, 21, 2, '商务型', 1, '重庆市福田区街道', 119.034645, 40.555346, '武汉市南山区街道', 118.915365, 40.782568, 26.57, 81.68, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-07-06 16:03:44', '2024-07-06 16:25:44', NULL, NULL, NULL, '2024-07-06 15:54:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (421, 'DD20260508102859a02150fa', 199, 140, 37, 1, '经济型', 2, '广州市海淀区街道', 116.146565, 40.153985, '重庆市海淀区街道', 116.042283, 40.107681, 9.77, 32.10, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-12-13 06:49:14', '2024-12-13 07:00:14', NULL, NULL, NULL, '2024-12-13 06:39:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (422, 'DD202605081028597a658cee', 145, 122, 32, 2, '商务型', 1, '武汉市海淀区街道', 116.905467, 40.890028, '杭州市海淀区街道', 116.630144, 40.764622, 16.12, 61.40, 16.65, 50.77, 50.77, 1.77, 49.00, 4, 1, 1, '', '2024-08-01 23:58:36', '2024-08-02 00:08:36', '2024-08-02 00:53:36', '2024-08-02 01:17:36', NULL, '2024-08-01 23:52:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (423, 'DD20260508102859f95fa3b7', 82, NULL, NULL, 1, '舒适型', 3, '广州市南山区街道', 119.733176, 39.743401, '深圳市福田区街道', 119.744984, 39.508376, 2.29, 7.62, 2.28, 5.32, 5.32, 0.56, 4.76, 5, 2, 0, '系统取消', '2025-12-27 06:21:27', '2025-12-27 06:37:27', '2025-12-27 07:48:27', NULL, '2025-12-27 06:21:27', '2025-12-27 06:11:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (424, 'DD20260508102859a84e1bad', 380, 122, 32, 1, '商务型', 1, '深圳市朝阳区街道', 119.802752, 39.000055, '重庆市南山区街道', 120.009244, 39.094275, 17.69, 59.34, 16.21, 54.51, 54.51, 0.64, 53.87, 4, 1, 2, '', '2025-05-22 18:39:47', '2025-05-22 18:54:47', '2025-05-22 19:32:47', '2025-05-22 19:42:47', NULL, '2025-05-22 18:35:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (425, 'DD20260508102859f1c81b0b', 163, 94, 21, 1, '商务型', 1, '南京市南山区街道', 117.577564, 40.109376, '上海市西城区街道', 117.919505, 40.034425, 4.24, 11.21, 4.04, 14.75, 14.75, 3.16, 11.59, 4, 1, 2, '', '2024-12-28 03:29:07', '2024-12-28 03:55:07', '2024-12-28 05:09:07', '2024-12-28 05:33:07', NULL, '2024-12-28 03:14:07', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (426, 'DD202605081028591091a95e', 135, 100, 25, 1, '商务型', 1, '深圳市朝阳区街道', 116.804668, 41.686490, '杭州市西城区街道', 117.152111, 41.476659, 20.93, 53.98, 23.53, 68.88, 68.88, 19.95, 48.93, 4, 1, 2, '', '2024-01-12 14:32:06', '2024-01-12 14:55:06', '2024-01-12 16:28:06', '2024-01-12 16:47:06', NULL, '2024-01-12 14:24:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (427, 'DD20260508102859052896d4', 131, 98, 23, 2, '经济型', 1, '南京市福田区街道', 118.401175, 40.803953, '成都市朝阳区街道', 118.333789, 40.828515, 21.77, 57.98, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-01-31 01:29:00', '2026-01-31 01:55:00', NULL, NULL, NULL, '2026-01-31 01:14:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (428, 'DD202605081028599b978c3e', 395, 49, 12, 1, '舒适型', 1, '北京市东城区街道', 116.701954, 39.016338, '武汉市东城区街道', 116.857142, 38.863947, 14.50, 51.96, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-11-14 14:37:34', NULL, NULL, NULL, NULL, '2025-11-14 14:24:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (429, 'DD20260508102859b85961ef', 202, 116, 31, 1, '舒适型', 2, '深圳市福田区街道', 117.362148, 41.863651, '重庆市朝阳区街道', 117.027348, 41.994955, 26.27, 59.73, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-09-15 23:01:45', NULL, NULL, NULL, NULL, '2025-09-15 22:46:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (430, 'DD202605081028594d2d5077', 50, 135, 35, 2, '舒适型', 1, '重庆市东城区街道', 119.747924, 40.132106, '北京市西城区街道', 120.082463, 40.386336, 6.80, 21.07, 7.24, 19.81, 19.81, 2.28, 17.53, 4, 1, 1, '', '2024-07-20 03:52:10', '2024-07-20 03:57:10', '2024-07-20 05:20:10', '2024-07-20 05:23:10', NULL, '2024-07-20 03:47:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (431, 'DD2026050810285966d9406a', 250, 49, 12, 1, '经济型', 1, '深圳市南山区街道', 117.620977, 41.316274, '成都市东城区街道', 117.851303, 41.419971, 17.00, 67.19, 19.76, 75.54, 75.54, 3.19, 72.35, 4, 1, 1, '', '2024-04-08 14:36:59', '2024-04-08 14:43:59', '2024-04-08 15:11:59', '2024-04-08 15:29:59', NULL, '2024-04-08 14:26:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (432, 'DD202605081028596e8e7c40', 85, 72, 18, 2, '经济型', 3, '成都市西城区街道', 118.207995, 41.171572, '武汉市南山区街道', 118.166042, 40.931140, 14.71, 44.15, 16.69, 44.00, 44.00, 3.57, 40.43, 4, 1, 1, '', '2024-09-13 03:44:09', '2024-09-13 03:51:09', '2024-09-13 05:35:09', '2024-09-13 05:44:09', NULL, '2024-09-13 03:33:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (433, 'DD20260508102859edbc410c', 348, 94, 21, 1, '舒适型', 1, '杭州市东城区街道', 116.359255, 40.508629, '西安市东城区街道', 116.405040, 40.605325, 17.34, 65.01, 15.80, 32.93, 32.93, 0.29, 32.64, 4, 1, 2, '', '2025-10-13 19:18:55', '2025-10-13 19:25:55', '2025-10-13 20:30:55', '2025-10-13 20:59:55', NULL, '2025-10-13 19:06:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (434, 'DD202605081028594b8ead72', 341, 171, 45, 1, '商务型', 2, '上海市南山区街道', 116.945587, 40.962814, '上海市东城区街道', 116.797688, 40.847239, 20.81, 70.57, 21.02, 72.84, 72.84, 5.36, 67.48, 4, 1, 1, '', '2024-05-28 10:11:48', '2024-05-28 10:28:48', '2024-05-28 11:22:48', '2024-05-28 11:35:48', NULL, '2024-05-28 10:08:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (435, 'DD2026050810285972f26d04', 375, 185, 49, 1, '商务型', 3, '重庆市西城区街道', 119.575178, 39.133386, '上海市东城区街道', 119.541739, 39.001753, 2.35, 5.95, 2.23, 7.38, 7.38, 1.35, 6.03, 4, 1, 1, '', '2024-03-18 05:14:02', '2024-03-18 05:35:02', '2024-03-18 06:25:02', '2024-03-18 06:55:02', NULL, '2024-03-18 05:13:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (436, 'DD20260508102859db244f79', 169, 99, 24, 1, '舒适型', 1, '武汉市南山区街道', 119.090423, 41.486046, '北京市朝阳区街道', 118.749043, 41.689585, 19.19, 42.73, 21.50, 62.92, 62.92, 16.58, 46.34, 4, 1, 1, '', '2025-11-10 17:41:35', '2025-11-10 17:49:35', '2025-11-10 19:09:35', '2025-11-10 19:29:35', NULL, '2025-11-10 17:26:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (437, 'DD20260508102859411febb3', 72, 11, 3, 1, '经济型', 2, '武汉市福田区街道', 117.102276, 39.115551, '南京市朝阳区街道', 116.680460, 39.061184, 11.68, 39.76, 11.30, 34.56, 34.56, 7.03, 27.53, 4, 1, 2, '', '2024-01-23 04:14:26', '2024-01-23 04:38:26', '2024-01-23 06:18:26', '2024-01-23 06:27:26', NULL, '2024-01-23 04:10:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (438, 'DD2026050810285978595982', 387, 135, 35, 2, '经济型', 1, '武汉市南山区街道', 119.997399, 39.351476, '南京市福田区街道', 120.155057, 39.233497, 2.06, 6.89, 2.09, 4.95, 4.95, 1.20, 3.75, 4, 1, 2, '', '2024-04-19 11:57:56', '2024-04-19 12:16:56', '2024-04-19 13:37:56', '2024-04-19 13:56:56', NULL, '2024-04-19 11:53:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (439, 'DD2026050810285930583205', 463, 141, 38, 1, '经济型', 2, '深圳市福田区街道', 118.283879, 39.964464, '西安市福田区街道', 117.862664, 39.880795, 21.36, 79.11, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-02-19 14:35:36', NULL, NULL, NULL, NULL, '2025-02-19 14:29:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (440, 'DD202605081028595ca08777', 436, 122, 32, 1, '舒适型', 2, '上海市福田区街道', 116.772344, 39.425690, '成都市福田区街道', 116.897481, 39.560552, 18.42, 49.11, 18.40, 49.04, 49.04, 14.30, 34.74, 4, 1, 2, '', '2025-11-08 23:57:42', '2025-11-09 00:22:42', '2025-11-09 02:05:42', '2025-11-09 02:19:42', NULL, '2025-11-08 23:46:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (441, 'DD202605081028594ce365d3', 67, 94, 21, 2, '经济型', 1, '北京市西城区街道', 119.502336, 41.828152, '上海市海淀区街道', 119.483092, 41.857187, 10.49, 38.82, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-03-04 16:04:42', NULL, NULL, NULL, NULL, '2025-03-04 16:01:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (442, 'DD202605081028595a86e9cf', 241, 194, 51, 1, '舒适型', 2, '广州市海淀区街道', 118.408088, 39.874635, '西安市东城区街道', 118.777771, 40.023482, 5.56, 13.13, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-05-24 01:05:59', '2025-05-24 01:18:59', NULL, NULL, NULL, '2025-05-24 01:04:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (443, 'DD20260508102859ad234b9e', 268, 171, 45, 2, '经济型', 2, '西安市西城区街道', 117.954641, 40.591553, '成都市海淀区街道', 117.550966, 40.872001, 18.33, 51.25, 21.00, 56.61, 56.61, 0.87, 55.74, 4, 1, 2, '', '2026-01-19 09:59:28', '2026-01-19 10:13:28', '2026-01-19 11:32:28', '2026-01-19 11:57:28', NULL, '2026-01-19 09:55:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (444, 'DD20260508102859e93029ae', 370, 49, 12, 1, '经济型', 2, '北京市南山区街道', 119.683352, 40.107290, '重庆市朝阳区街道', 119.970153, 40.228812, 23.75, 57.21, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-10-09 17:52:57', NULL, NULL, NULL, NULL, '2025-10-09 17:40:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (445, 'DD20260508102859a999e6d4', 208, 23, 4, 1, '商务型', 2, '西安市海淀区街道', 116.554769, 39.783559, '深圳市朝阳区街道', 116.894404, 39.835147, 26.86, 93.81, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-06-20 19:57:47', NULL, NULL, NULL, NULL, '2024-06-20 19:42:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (446, 'DD2026050810285917f73f22', 113, 37, 9, 2, '舒适型', 1, '杭州市朝阳区街道', 116.987054, 41.852753, '北京市福田区街道', 117.053494, 42.059698, 8.94, 23.47, 9.71, 29.79, 29.79, 0.99, 28.80, 5, 2, 0, '司机取消', '2025-06-19 06:02:29', '2025-06-19 06:10:29', '2025-06-19 06:46:29', NULL, '2025-06-19 05:53:29', '2025-06-19 05:49:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (447, 'DD20260508102859146f229e', 245, 106, 27, 2, '商务型', 2, '重庆市福田区街道', 117.617450, 41.092261, '北京市南山区街道', 117.551552, 41.151996, 29.05, 80.15, 30.96, 99.16, 99.16, 15.28, 83.88, 4, 1, 1, '', '2024-08-16 09:23:21', '2024-08-16 09:53:21', '2024-08-16 10:11:21', '2024-08-16 10:35:21', NULL, '2024-08-16 09:20:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (448, 'DD2026050810285924ffe145', 402, 23, 4, 2, '商务型', 3, '武汉市福田区街道', 117.195672, 41.452785, '杭州市朝阳区街道', 117.440275, 41.648962, 29.28, 116.87, 26.82, 96.86, 96.86, 1.83, 95.03, 4, 1, 1, '', '2025-10-21 00:46:16', '2025-10-21 00:58:16', '2025-10-21 02:36:16', '2025-10-21 03:06:16', NULL, '2025-10-21 00:36:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (449, 'DD20260508102859bcef88c2', 455, 99, 24, 2, '经济型', 3, '武汉市福田区街道', 118.044225, 39.002970, '深圳市海淀区街道', 118.407934, 39.077902, 25.09, 75.40, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-06-03 14:59:31', NULL, NULL, NULL, NULL, '2025-06-03 14:54:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (450, 'DD202605081028594f2aadc8', 499, 137, 36, 1, '经济型', 1, '上海市海淀区街道', 119.798272, 39.784361, '上海市朝阳区街道', 119.918896, 39.653112, 25.21, 61.06, 23.75, 48.14, 48.14, 6.44, 41.70, 4, 1, 1, '', '2025-05-29 00:33:25', '2025-05-29 00:52:25', '2025-05-29 02:37:25', '2025-05-29 02:54:25', NULL, '2025-05-29 00:31:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (451, 'DD20260508102859b4aa0437', 208, 99, 24, 1, '舒适型', 2, '北京市朝阳区街道', 116.094825, 39.854293, '杭州市朝阳区街道', 115.764563, 40.025094, 19.88, 64.05, 21.08, 62.97, 62.97, 3.54, 59.43, 4, 1, 2, '', '2025-02-14 09:23:56', '2025-02-14 09:46:56', '2025-02-14 10:07:56', '2025-02-14 10:37:56', NULL, '2025-02-14 09:13:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (452, 'DD2026050810285976b2f006', 482, 64, 17, 2, '商务型', 3, '武汉市福田区街道', 119.116522, 39.749889, '上海市西城区街道', 119.046998, 39.896256, 7.10, 24.22, 8.41, 24.76, 24.76, 6.25, 18.51, 4, 1, 1, '', '2026-02-20 11:58:35', '2026-02-20 12:24:35', '2026-02-20 13:19:35', '2026-02-20 13:37:35', NULL, '2026-02-20 11:46:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (453, 'DD20260508102859b4765445', 341, 122, 32, 1, '商务型', 2, '西安市西城区街道', 116.577252, 40.022002, '重庆市海淀区街道', 116.483280, 39.949508, 16.03, 48.77, 18.76, 69.38, 69.38, 12.06, 57.32, 4, 1, 2, '', '2024-03-29 02:43:03', '2024-03-29 03:12:03', '2024-03-29 04:00:03', '2024-03-29 04:18:03', NULL, '2024-03-29 02:38:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (454, 'DD20260508102859ba6ba0ce', 112, 72, 18, 2, '舒适型', 1, '武汉市西城区街道', 117.894815, 41.376532, '北京市东城区街道', 118.262705, 41.472283, 23.99, 61.32, 26.34, 79.39, 79.39, 0.44, 78.95, 5, 2, 0, '用户取消', '2024-05-31 21:12:03', '2024-05-31 21:27:03', '2024-05-31 21:47:03', NULL, '2024-05-31 22:05:03', '2024-05-31 21:05:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (455, 'DD20260508102859878cd77f', 208, 141, 38, 1, '舒适型', 2, '武汉市福田区街道', 119.834355, 40.084414, '南京市南山区街道', 119.935146, 40.334210, 28.41, 64.09, 25.85, 99.96, 99.96, 13.16, 86.80, 4, 1, 1, '', '2026-04-20 13:56:11', '2026-04-20 14:24:11', '2026-04-20 14:35:11', '2026-04-20 14:57:11', NULL, '2026-04-20 13:43:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (456, 'DD20260508102859fd4b6ffd', 278, 11, 3, 2, '经济型', 1, '广州市南山区街道', 118.131740, 40.020270, '成都市海淀区街道', 118.215836, 40.241371, 11.52, 39.85, 11.56, 35.42, 35.42, 7.45, 27.97, 4, 1, 1, '', '2024-11-27 05:14:23', '2024-11-27 05:23:23', '2024-11-27 06:52:23', '2024-11-27 07:21:23', NULL, '2024-11-27 04:59:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (457, 'DD2026050810285979af3cb1', 371, NULL, NULL, 2, '舒适型', 2, '武汉市西城区街道', 116.524206, 40.323653, '北京市福田区街道', 116.487217, 40.074869, 25.44, 85.95, 25.39, 57.04, 57.04, 13.88, 43.16, 5, 2, 0, '系统取消', '2025-08-17 19:06:34', '2025-08-17 19:35:34', '2025-08-17 20:50:34', NULL, '2025-08-17 19:08:34', '2025-08-17 18:58:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (458, 'DD20260508102859c76ba77b', 148, 64, 17, 1, '舒适型', 2, '北京市东城区街道', 119.633954, 40.745582, '武汉市福田区街道', 119.569096, 40.981359, 24.81, 50.98, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-11-12 02:32:32', NULL, NULL, NULL, NULL, '2024-11-12 02:17:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (459, 'DD2026050810285922a4211f', 60, 135, 35, 1, '经济型', 1, '武汉市福田区街道', 116.136732, 40.506227, '成都市朝阳区街道', 116.185798, 40.712585, 17.36, 36.63, 15.77, 61.36, 61.36, 9.23, 52.13, 4, 1, 2, '', '2025-02-15 04:29:05', '2025-02-15 04:45:05', '2025-02-15 05:39:05', '2025-02-15 06:08:05', NULL, '2025-02-15 04:25:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (460, 'DD20260508102859ab9ae122', 163, NULL, NULL, 2, '商务型', 1, '成都市海淀区街道', 119.671069, 39.695582, '上海市福田区街道', 120.116790, 39.887120, 14.46, 34.80, 15.37, 38.04, 38.04, 4.92, 33.12, 4, 1, 2, '', '2025-07-17 09:30:44', '2025-07-17 09:35:44', '2025-07-17 09:53:44', '2025-07-17 09:54:44', NULL, '2025-07-17 09:29:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (461, 'DD20260508102859789234e8', 261, 135, 35, 1, '舒适型', 1, '南京市南山区街道', 119.882593, 39.564169, '南京市海淀区街道', 120.311270, 39.669866, 12.12, 31.07, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-04-22 11:57:53', '2025-04-22 12:20:53', NULL, NULL, NULL, '2025-04-22 11:44:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (462, 'DD202605081028597d16fb4a', 300, 177, 46, 1, '舒适型', 2, '深圳市朝阳区街道', 118.819843, 39.380194, '西安市朝阳区街道', 118.742251, 39.304831, 4.70, 11.21, 4.39, 12.15, 12.15, 1.23, 10.92, 4, 1, 1, '', '2026-03-03 19:59:32', '2026-03-03 20:08:32', '2026-03-03 21:21:32', '2026-03-03 21:42:32', NULL, '2026-03-03 19:58:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (463, 'DD202605081028594db7a259', 205, 110, 29, 2, '舒适型', 2, '成都市海淀区街道', 119.939711, 40.945890, '成都市西城区街道', 120.079002, 40.919367, 7.28, 15.33, 8.07, 26.46, 26.46, 3.39, 23.07, 4, 1, 2, '', '2024-01-30 16:26:05', '2024-01-30 16:41:05', '2024-01-30 18:06:05', '2024-01-30 18:34:05', NULL, '2024-01-30 16:23:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (464, 'DD20260508102859b6d4857c', 73, 177, 46, 1, '经济型', 3, '西安市海淀区街道', 119.944553, 41.010535, '杭州市西城区街道', 120.362552, 41.144860, 15.38, 41.19, 15.84, 35.94, 35.94, 4.91, 31.03, 4, 1, 1, '', '2024-03-15 11:39:46', '2024-03-15 12:08:46', '2024-03-15 13:24:46', '2024-03-15 13:26:46', NULL, '2024-03-15 11:36:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (465, 'DD20260508102859ac9903f0', 25, 62, 16, 2, '舒适型', 1, '杭州市西城区街道', 119.715014, 40.220438, '成都市朝阳区街道', 119.521079, 40.353300, 3.10, 9.37, 3.50, 9.59, 9.59, 2.08, 7.51, 4, 1, 2, '', '2026-01-20 10:25:26', '2026-01-20 10:42:26', '2026-01-20 12:02:26', '2026-01-20 12:23:26', NULL, '2026-01-20 10:10:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (466, 'DD20260508102859f8741caf', 236, 159, 43, 2, '经济型', 3, '杭州市海淀区街道', 117.267255, 40.103228, '武汉市东城区街道', 117.315087, 40.205983, 5.36, 20.41, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-05-15 04:15:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (467, 'DD202605081028595e3b8b7e', 206, NULL, NULL, 1, '经济型', 2, '北京市福田区街道', 119.726922, 41.370962, '杭州市朝阳区街道', 119.243929, 41.381258, 11.77, 31.35, 13.78, 40.40, 40.40, 10.64, 29.76, 4, 1, 2, '', '2024-05-05 10:01:08', '2024-05-05 10:30:08', '2024-05-05 12:22:08', '2024-05-05 12:33:08', NULL, '2024-05-05 10:00:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (468, 'DD2026050810285937027060', 238, 137, 36, 2, '商务型', 2, '杭州市西城区街道', 119.543362, 40.344905, '成都市东城区街道', 119.743045, 40.586462, 14.73, 49.47, 13.91, 29.24, 29.24, 7.87, 21.37, 5, 2, 0, '系统取消', '2024-06-13 17:55:38', '2024-06-13 18:02:38', '2024-06-13 18:14:38', NULL, '2024-06-13 18:10:38', '2024-06-13 17:41:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (469, 'DD202605081028591191f0b2', 61, 110, 29, 1, '商务型', 3, '成都市西城区街道', 117.884354, 40.494301, '广州市朝阳区街道', 118.078194, 40.407739, 24.65, 78.16, 28.66, 102.59, 102.59, 13.63, 88.96, 4, 1, 1, '', '2024-06-05 22:38:27', '2024-06-05 22:46:27', '2024-06-05 23:31:27', '2024-06-05 23:36:27', NULL, '2024-06-05 22:26:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (470, 'DD20260508102859156e516e', 391, 64, 17, 2, '商务型', 1, '北京市海淀区街道', 116.000255, 40.029682, '成都市东城区街道', 116.049842, 39.771139, 15.23, 43.10, 14.99, 43.90, 43.90, 10.88, 33.02, 6, 0, 0, '', '2024-05-29 00:24:46', '2024-05-29 00:43:46', '2024-05-29 01:40:46', NULL, NULL, '2024-05-29 00:12:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (471, 'DD20260508102859ca530a54', 111, 45, 11, 2, '经济型', 1, '上海市海淀区街道', 118.120134, 39.855637, '武汉市南山区街道', 118.532986, 39.754427, 11.20, 38.78, 13.22, 32.26, 32.26, 4.10, 28.16, 4, 1, 1, '', '2025-07-15 06:42:43', '2025-07-15 07:07:43', '2025-07-15 07:28:43', '2025-07-15 07:33:43', NULL, '2025-07-15 06:34:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (472, 'DD2026050810285902dd403e', 276, 1, 1, 2, '经济型', 2, '深圳市南山区街道', 116.782127, 39.356250, '广州市东城区街道', 117.264679, 39.603597, 28.37, 111.86, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-01-22 11:43:05', NULL, NULL, NULL, NULL, '2025-01-22 11:35:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (473, 'DD20260508102859c00c84a9', 378, 159, 43, 2, '舒适型', 2, '上海市南山区街道', 118.155912, 41.387361, '上海市海淀区街道', 118.280874, 41.165732, 17.23, 55.42, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-02-25 06:57:10', NULL, NULL, NULL, NULL, '2025-02-25 06:53:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (474, 'DD202605081028597a35c84f', 360, 94, 21, 2, '舒适型', 2, '广州市海淀区街道', 117.631974, 41.434137, '西安市南山区街道', 117.386728, 41.375587, 25.29, 88.88, 28.45, 56.94, 56.94, 3.40, 53.54, 4, 1, 2, '', '2025-12-30 10:24:56', '2025-12-30 10:37:56', '2025-12-30 11:22:56', '2025-12-30 11:49:56', NULL, '2025-12-30 10:22:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (475, 'DD2026050810285947684611', 284, 62, 16, 1, '经济型', 2, '重庆市西城区街道', 116.777186, 40.447028, '上海市海淀区街道', 116.974286, 40.169465, 26.39, 85.95, 24.92, 63.30, 63.30, 0.82, 62.48, 4, 1, 1, '', '2024-03-18 00:39:19', '2024-03-18 01:09:19', '2024-03-18 01:30:19', '2024-03-18 01:51:19', NULL, '2024-03-18 00:34:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (476, 'DD20260508102859e247ea99', 314, 95, 22, 2, '舒适型', 1, '成都市西城区街道', 117.451105, 39.076488, '重庆市东城区街道', 117.569505, 39.202504, 21.15, 46.07, 21.19, 68.65, 68.65, 4.57, 64.08, 4, 1, 1, '', '2024-08-05 06:25:22', '2024-08-05 06:30:22', '2024-08-05 07:16:22', '2024-08-05 07:44:22', NULL, '2024-08-05 06:10:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (477, 'DD202605081028594deb9ca5', 282, 137, 36, 2, '舒适型', 1, '西安市福田区街道', 118.622196, 41.393278, '杭州市海淀区街道', 118.941756, 41.527644, 19.86, 53.40, 23.71, 78.59, 78.59, 9.88, 68.71, 4, 1, 2, '', '2025-12-13 17:20:29', '2025-12-13 17:33:29', '2025-12-13 18:43:29', '2025-12-13 19:12:29', NULL, '2025-12-13 17:13:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (478, 'DD202605081028596bb9cc61', 451, 95, 22, 2, '经济型', 3, '上海市朝阳区街道', 119.994878, 41.968050, '南京市东城区街道', 120.084647, 42.056101, 5.96, 18.54, 6.22, 24.05, 24.05, 3.19, 20.86, 4, 1, 2, '', '2024-01-26 02:53:43', '2024-01-26 03:07:43', '2024-01-26 05:04:43', '2024-01-26 05:34:43', NULL, '2024-01-26 02:45:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (479, 'DD2026050810285969ab99f2', 15, 37, 9, 2, '舒适型', 3, '北京市海淀区街道', 117.387502, 40.805530, '武汉市西城区街道', 117.582078, 40.971203, 27.08, 64.50, 24.84, 97.62, 97.62, 20.38, 77.24, 4, 1, 1, '', '2025-07-28 23:44:53', '2025-07-28 23:58:53', '2025-07-29 00:59:53', '2025-07-29 01:29:53', NULL, '2025-07-28 23:39:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (480, 'DD202605081028595053f792', 485, 194, 51, 1, '经济型', 1, '杭州市海淀区街道', 118.161918, 40.826619, '杭州市东城区街道', 117.734455, 40.843906, 5.44, 18.28, 5.89, 20.08, 20.08, 5.29, 14.79, 6, 0, 0, '', '2024-02-12 14:20:49', '2024-02-12 14:50:49', '2024-02-12 16:06:49', NULL, NULL, '2024-02-12 14:16:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (481, 'DD20260508102859ab79ade4', 183, NULL, NULL, 2, '经济型', 3, '深圳市南山区街道', 117.886985, 41.344272, '北京市东城区街道', 117.417093, 41.340507, 15.00, 44.44, 15.82, 32.33, 32.33, 9.05, 23.28, 5, 2, 0, '司机取消', '2025-09-03 09:04:26', '2025-09-03 09:09:26', '2025-09-03 09:58:26', NULL, '2025-09-03 09:31:26', '2025-09-03 08:57:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (482, 'DD2026050810285910836a88', 498, 122, 32, 2, '舒适型', 1, '上海市朝阳区街道', 118.476831, 39.279034, '上海市福田区街道', 118.013934, 39.410213, 23.35, 76.64, 26.21, 103.69, 103.69, 5.94, 97.75, 5, 2, 0, '系统取消', '2024-08-23 02:09:22', '2024-08-23 02:15:22', '2024-08-23 02:30:22', NULL, '2024-08-23 02:01:22', '2024-08-23 01:54:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (483, 'DD20260508102859ebc21cc8', 393, 100, 25, 2, '经济型', 2, '武汉市南山区街道', 116.075885, 41.558321, '武汉市东城区街道', 116.375483, 41.344816, 11.37, 36.79, 12.40, 25.93, 25.93, 5.42, 20.51, 4, 1, 2, '', '2025-06-12 00:43:52', '2025-06-12 00:52:52', '2025-06-12 01:14:52', '2025-06-12 01:19:52', NULL, '2025-06-12 00:34:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (484, 'DD20260508102859d04178c4', 241, 49, 12, 1, '舒适型', 2, '西安市东城区街道', 117.495395, 39.361149, '深圳市海淀区街道', 117.742665, 39.296592, 28.88, 110.46, 33.07, 93.34, 93.34, 25.38, 67.96, 4, 1, 2, '', '2025-07-07 09:07:43', '2025-07-07 09:35:43', '2025-07-07 11:25:43', '2025-07-07 11:50:43', NULL, '2025-07-07 08:57:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (485, 'DD20260508102859b7771070', 183, 11, 3, 2, '舒适型', 2, '上海市朝阳区街道', 119.860187, 41.329117, '深圳市南山区街道', 120.110311, 41.578527, 13.46, 29.19, 13.19, 46.12, 46.12, 12.69, 33.43, 4, 1, 2, '', '2025-11-21 18:16:26', '2025-11-21 18:23:26', '2025-11-21 19:24:26', '2025-11-21 19:52:26', NULL, '2025-11-21 18:12:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (486, 'DD20260508102859e3251661', 497, 159, 43, 1, '舒适型', 1, '西安市南山区街道', 117.805654, 41.422582, '深圳市南山区街道', 117.374910, 41.701666, 1.10, 2.52, 1.07, 3.45, 3.45, 0.27, 3.18, 4, 1, 2, '', '2024-08-27 23:37:31', '2024-08-27 23:46:31', '2024-08-28 00:54:31', '2024-08-28 01:02:31', NULL, '2024-08-27 23:34:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (487, 'DD20260508102859de0024c1', 373, 116, 31, 1, '经济型', 3, '重庆市海淀区街道', 117.094417, 39.409442, '武汉市西城区街道', 117.231796, 39.484934, 6.35, 16.14, 5.73, 19.77, 19.77, 3.83, 15.94, 5, 2, 0, '司机取消', '2024-06-07 16:58:27', '2024-06-07 17:26:27', '2024-06-07 18:34:27', NULL, '2024-06-07 17:12:27', '2024-06-07 16:51:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (488, 'DD2026050810285909684f73', 386, NULL, NULL, 1, '经济型', 1, '北京市海淀区街道', 119.522316, 40.251166, '广州市朝阳区街道', 119.642005, 40.017307, 18.18, 53.17, 17.02, 60.26, 60.26, 10.72, 49.54, 4, 1, 1, '', '2024-05-02 10:57:21', '2024-05-02 11:25:21', '2024-05-02 11:49:21', '2024-05-02 12:10:21', NULL, '2024-05-02 10:54:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (489, 'DD20260508102859f84da0b7', 409, 177, 46, 1, '经济型', 3, '深圳市福田区街道', 118.287523, 41.126366, '南京市西城区街道', 118.337930, 40.876234, 18.20, 42.42, 17.56, 48.47, 48.47, 5.80, 42.67, 4, 1, 2, '', '2024-02-25 05:40:19', '2024-02-25 06:08:19', '2024-02-25 07:31:19', '2024-02-25 07:51:19', NULL, '2024-02-25 05:25:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (490, 'DD202605081028599ed4fb3c', 246, 137, 36, 1, '商务型', 3, '上海市南山区街道', 119.046042, 39.439886, '南京市福田区街道', 118.921420, 39.439942, 16.45, 47.56, 17.39, 37.92, 37.92, 7.18, 30.74, 4, 1, 1, '', '2024-11-15 22:33:02', '2024-11-15 22:51:02', '2024-11-16 00:28:02', '2024-11-16 00:39:02', NULL, '2024-11-15 22:20:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (491, 'DD202605081028594dc8e3a5', 299, 177, 46, 1, '经济型', 3, '武汉市朝阳区街道', 119.054145, 40.833806, '西安市朝阳区街道', 119.118598, 41.076586, 10.36, 33.45, 9.94, 28.13, 28.13, 7.13, 21.00, 4, 1, 1, '', '2026-01-20 22:25:45', '2026-01-20 22:41:45', '2026-01-20 23:31:45', '2026-01-20 23:35:45', NULL, '2026-01-20 22:16:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (492, 'DD202605081028590ee26462', 344, 135, 35, 1, '经济型', 3, '深圳市东城区街道', 118.295862, 39.226695, '武汉市东城区街道', 118.396208, 39.414921, 22.07, 48.49, 23.48, 72.86, 72.86, 20.93, 51.93, 4, 1, 1, '', '2025-11-25 07:21:06', '2025-11-25 07:36:06', '2025-11-25 08:32:06', '2025-11-25 08:37:06', NULL, '2025-11-25 07:06:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (493, 'DD2026050810285940e17eca', 403, 62, 16, 1, '商务型', 3, '深圳市福田区街道', 119.240005, 41.543422, '武汉市东城区街道', 119.405350, 41.272491, 3.10, 11.67, 3.24, 12.96, 12.96, 2.40, 10.56, 4, 1, 2, '', '2026-04-25 05:18:01', '2026-04-25 05:24:01', '2026-04-25 06:37:01', '2026-04-25 06:47:01', NULL, '2026-04-25 05:16:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (494, 'DD2026050810285965c19657', 27, NULL, NULL, 2, '经济型', 1, '重庆市福田区街道', 119.423851, 41.532899, '西安市西城区街道', 119.743757, 41.311481, 18.04, 52.23, 17.56, 61.51, 61.51, 16.01, 45.50, 4, 1, 1, '', '2025-07-20 19:32:34', '2025-07-20 19:59:34', '2025-07-20 20:53:34', '2025-07-20 20:59:34', NULL, '2025-07-20 19:31:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (495, 'DD20260508102859cdf7b709', 164, 135, 35, 2, '舒适型', 3, '重庆市朝阳区街道', 119.754097, 41.461246, '武汉市朝阳区街道', 119.726543, 41.434034, 27.58, 100.46, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-03-17 03:52:19', '2025-03-17 03:57:19', NULL, NULL, NULL, '2025-03-17 03:45:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (496, 'DD20260508102859a920e9c9', 274, 94, 21, 1, '舒适型', 1, '杭州市西城区街道', 116.712277, 40.262655, '西安市东城区街道', 117.211487, 40.088600, 15.01, 49.50, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-04-16 01:43:18', NULL, NULL, NULL, NULL, '2024-04-16 01:28:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (497, 'DD2026050810285970fbc93c', 407, 110, 29, 2, '经济型', 1, '西安市西城区街道', 118.166190, 41.867056, '南京市西城区街道', 118.309650, 41.701224, 8.37, 28.12, 9.25, 33.83, 33.83, 0.14, 33.69, 4, 1, 2, '', '2024-05-08 18:52:13', '2024-05-08 19:16:13', '2024-05-08 20:58:13', '2024-05-08 21:07:13', NULL, '2024-05-08 18:46:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (498, 'DD2026050810285963b39222', 27, 157, 42, 2, '经济型', 2, '南京市海淀区街道', 117.250538, 41.997849, '西安市西城区街道', 117.102356, 41.837232, 21.83, 68.44, 20.93, 53.34, 53.34, 3.09, 50.25, 5, 2, 0, '用户取消', '2025-07-20 02:47:01', '2025-07-20 03:16:01', '2025-07-20 04:27:01', NULL, '2025-07-20 03:12:01', '2025-07-20 02:36:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (499, 'DD2026050810285954cc57f6', 277, 110, 29, 1, '商务型', 3, '深圳市朝阳区街道', 116.497055, 39.767814, '南京市西城区街道', 116.818253, 39.809102, 28.06, 93.91, 28.01, 82.90, 82.90, 12.45, 70.45, 4, 1, 1, '', '2024-09-23 20:26:23', '2024-09-23 20:54:23', '2024-09-23 22:46:23', '2024-09-23 23:00:23', NULL, '2024-09-23 20:23:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (500, 'DD202605081028590e026f7c', 311, 177, 46, 2, '商务型', 1, '重庆市福田区街道', 116.400568, 39.260967, '成都市南山区街道', 116.229091, 39.384603, 23.63, 60.48, 21.82, 61.05, 61.05, 6.07, 54.98, 4, 1, 1, '', '2026-01-06 04:40:38', '2026-01-06 04:45:38', '2026-01-06 06:06:38', '2026-01-06 06:09:38', NULL, '2026-01-06 04:37:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (501, 'DD202605081028596912cfbb', 454, 49, 12, 1, '经济型', 1, '南京市福田区街道', 118.386790, 41.535979, '深圳市朝阳区街道', 118.029831, 41.635901, 1.55, 5.98, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-06-06 10:46:26', NULL, NULL, NULL, NULL, '2024-06-06 10:36:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (502, 'DD20260508102859f8bdf0ae', 273, 62, 16, 1, '商务型', 1, '上海市朝阳区街道', 118.532410, 39.945566, '武汉市福田区街道', 118.898853, 40.135345, 24.16, 83.35, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-05-17 02:19:12', NULL, NULL, NULL, NULL, '2024-05-17 02:13:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (503, 'DD202605081028597768b8c7', 379, 185, 49, 1, '商务型', 2, '北京市南山区街道', 118.021691, 39.615400, '武汉市南山区街道', 117.759676, 39.804073, 13.31, 39.92, 15.40, 37.68, 37.68, 3.74, 33.94, 5, 2, 0, '系统取消', '2026-04-26 16:45:31', '2026-04-26 16:51:31', '2026-04-26 17:46:31', NULL, '2026-04-26 17:30:31', '2026-04-26 16:44:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (504, 'DD20260508102859fd8f8ce7', 461, NULL, NULL, 2, '经济型', 2, '上海市南山区街道', 117.616105, 39.780729, '深圳市海淀区街道', 117.200224, 39.969643, 28.74, 85.55, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-01-05 18:48:09', '2025-01-05 19:03:09', NULL, NULL, NULL, '2025-01-05 18:38:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (505, 'DD202605081028590ccb6f70', 7, 45, 11, 2, '经济型', 1, '上海市南山区街道', 117.794270, 40.371142, '重庆市西城区街道', 117.749159, 40.359955, 4.50, 12.64, 4.42, 15.75, 15.75, 2.64, 13.11, 5, 2, 0, '系统取消', '2024-11-06 23:03:53', '2024-11-06 23:15:53', '2024-11-07 00:18:53', NULL, '2024-11-06 23:01:53', '2024-11-06 22:48:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (506, 'DD2026050810285964644d8c', 270, 36, 8, 1, '商务型', 3, '南京市西城区街道', 118.024705, 39.466369, '南京市福田区街道', 118.507118, 39.602419, 21.59, 58.91, 24.27, 53.60, 53.60, 1.28, 52.32, 4, 1, 2, '', '2025-06-05 05:53:11', '2025-06-05 06:06:11', '2025-06-05 07:26:11', '2025-06-05 07:46:11', NULL, '2025-06-05 05:39:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (507, 'DD20260508102859cc0d3ed7', 232, 150, 40, 2, '经济型', 3, '深圳市海淀区街道', 116.586602, 39.703520, '重庆市东城区街道', 116.745539, 39.411088, 22.07, 86.37, 23.38, 47.77, 47.77, 1.19, 46.58, 4, 1, 1, '', '2024-07-10 03:09:36', '2024-07-10 03:17:36', '2024-07-10 04:28:36', '2024-07-10 04:31:36', NULL, '2024-07-10 03:03:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (508, 'DD20260508102859b0a492d4', 288, 110, 29, 2, '商务型', 2, '深圳市朝阳区街道', 116.302968, 41.725364, '上海市东城区街道', 116.597302, 41.734372, 21.46, 73.74, 23.31, 59.40, 59.40, 9.19, 50.21, 5, 2, 0, '系统取消', '2024-02-23 22:10:06', '2024-02-23 22:34:06', '2024-02-23 23:52:06', NULL, '2024-02-23 22:47:06', '2024-02-23 22:06:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (509, 'DD202605081028596412f1d4', 199, 49, 12, 1, '经济型', 2, '北京市朝阳区街道', 118.871741, 40.003824, '成都市东城区街道', 118.671511, 39.973718, 7.00, 16.23, 6.56, 25.31, 25.31, 6.83, 18.48, 4, 1, 2, '', '2024-11-29 17:47:24', '2024-11-29 18:17:24', '2024-11-29 19:20:24', '2024-11-29 19:43:24', NULL, '2024-11-29 17:41:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (510, 'DD202605081028590cb2c73c', 110, 43, 10, 2, '商务型', 3, '重庆市南山区街道', 116.433937, 41.984496, '广州市南山区街道', 116.003618, 41.873926, 24.31, 55.79, 26.74, 73.67, 73.67, 16.49, 57.18, 4, 1, 2, '', '2025-01-24 01:54:57', '2025-01-24 02:21:57', '2025-01-24 02:51:57', '2025-01-24 02:55:57', NULL, '2025-01-24 01:53:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (511, 'DD20260508102859b4f5f3d7', 364, 56, 15, 1, '舒适型', 1, '南京市福田区街道', 118.885922, 40.535211, '成都市西城区街道', 119.372445, 40.332543, 5.50, 14.58, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-05-31 03:38:23', NULL, NULL, NULL, NULL, '2024-05-31 03:28:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (512, 'DD20260508102859a5d0cd97', 469, 1, 1, 1, '商务型', 2, '广州市西城区街道', 118.984221, 40.113404, '上海市朝阳区街道', 119.396082, 40.332142, 26.22, 103.94, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-03-22 05:34:45', NULL, NULL, NULL, NULL, '2025-03-22 05:32:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (513, 'DD20260508102859e8f677b8', 244, 159, 43, 1, '经济型', 2, '深圳市南山区街道', 118.141409, 39.832540, '杭州市东城区街道', 118.067328, 39.634103, 16.67, 34.89, 17.72, 53.81, 53.81, 12.19, 41.62, 4, 1, 1, '', '2024-12-26 03:39:59', '2024-12-26 03:50:59', '2024-12-26 05:16:59', '2024-12-26 05:36:59', NULL, '2024-12-26 03:25:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (514, 'DD202605081028591ae4f53b', 410, 56, 15, 1, '商务型', 1, '上海市福田区街道', 118.074405, 40.374323, '上海市朝阳区街道', 117.644942, 40.625382, 17.37, 57.70, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-03-14 08:19:39', '2024-03-14 08:39:39', NULL, NULL, NULL, '2024-03-14 08:06:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (515, 'DD2026050810285943795790', 436, 30, 6, 1, '经济型', 1, '上海市南山区街道', 116.802519, 40.144455, '重庆市朝阳区街道', 117.068121, 39.968431, 5.04, 14.31, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-07-16 19:08:27', '2025-07-16 19:13:27', NULL, NULL, NULL, '2025-07-16 19:03:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (516, 'DD2026050810285981dd5822', 342, 185, 49, 2, '舒适型', 1, '南京市朝阳区街道', 116.093827, 41.328459, '广州市西城区街道', 116.394732, 41.151325, 14.98, 34.80, 13.68, 39.74, 39.74, 2.33, 37.41, 5, 2, 0, '系统取消', '2025-07-23 04:56:56', '2025-07-23 05:17:56', '2025-07-23 07:14:56', NULL, '2025-07-23 05:20:56', '2025-07-23 04:49:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (517, 'DD202605081028599bad4a43', 141, 99, 24, 2, '商务型', 1, '西安市西城区街道', 119.800187, 41.726573, '武汉市东城区街道', 119.648493, 41.634641, 4.18, 14.18, 4.24, 15.95, 15.95, 3.30, 12.65, 5, 2, 0, '用户取消', '2025-06-13 22:49:47', '2025-06-13 23:19:47', '2025-06-14 01:04:47', NULL, '2025-06-13 23:31:47', '2025-06-13 22:44:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (518, 'DD20260508102859eb114c65', 287, 98, 23, 2, '商务型', 3, '广州市东城区街道', 118.018822, 39.771812, '西安市海淀区街道', 117.654210, 39.757485, 10.19, 39.11, 10.24, 36.78, 36.78, 10.96, 25.82, 4, 1, 2, '', '2025-05-05 18:23:34', '2025-05-05 18:34:34', '2025-05-05 19:32:34', '2025-05-05 19:54:34', NULL, '2025-05-05 18:08:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (519, 'DD202605081028598feb7124', 52, 137, 36, 1, '经济型', 3, '成都市西城区街道', 119.221139, 40.861259, '西安市南山区街道', 119.115788, 40.884687, 7.03, 22.52, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-12-08 23:11:21', NULL, NULL, NULL, NULL, '2024-12-08 22:58:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (520, 'DD20260508102859e30530f7', 176, 159, 43, 1, '经济型', 2, '成都市福田区街道', 116.742009, 39.151903, '杭州市朝阳区街道', 116.593064, 39.190814, 20.30, 72.17, 23.57, 89.00, 89.00, 14.04, 74.96, 4, 1, 1, '', '2025-05-06 00:36:53', '2025-05-06 01:00:53', '2025-05-06 01:45:53', '2025-05-06 02:07:53', NULL, '2025-05-06 00:29:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (521, 'DD2026050810285975761773', 8, NULL, NULL, 1, '舒适型', 3, '成都市海淀区街道', 118.901380, 41.303609, '上海市西城区街道', 118.762529, 41.081146, 23.45, 89.03, 25.53, 95.82, 95.82, 23.67, 72.15, 4, 1, 2, '', '2025-01-26 23:14:36', '2025-01-26 23:19:36', '2025-01-27 00:30:36', '2025-01-27 00:43:36', NULL, '2025-01-26 23:07:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (522, 'DD2026050810285962bb0327', 228, 194, 51, 1, '商务型', 2, '成都市东城区街道', 117.946840, 39.163455, '杭州市西城区街道', 118.139837, 39.146339, 18.92, 71.40, 18.04, 43.48, 43.48, 11.30, 32.18, 4, 1, 2, '', '2026-02-10 06:12:54', '2026-02-10 06:42:54', '2026-02-10 08:38:54', '2026-02-10 09:08:54', NULL, '2026-02-10 06:07:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (523, 'DD202605081028593e80c578', 94, 99, 24, 1, '经济型', 3, '成都市海淀区街道', 117.716117, 39.574662, '上海市东城区街道', 118.116069, 39.276472, 5.49, 12.95, 6.03, 19.53, 19.53, 1.71, 17.82, 4, 1, 2, '', '2024-08-06 11:08:22', '2024-08-06 11:22:22', '2024-08-06 12:56:22', '2024-08-06 13:12:22', NULL, '2024-08-06 11:02:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (524, 'DD202605081028598f341bcb', 169, NULL, NULL, 2, '舒适型', 3, '重庆市东城区街道', 118.799842, 39.832204, '广州市朝阳区街道', 118.323252, 39.939235, 25.61, 73.69, 29.26, 103.21, 103.21, 16.38, 86.83, 4, 1, 2, '', '2025-03-31 10:17:08', '2025-03-31 10:40:08', '2025-03-31 12:38:08', '2025-03-31 12:41:08', NULL, '2025-03-31 10:07:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (525, 'DD20260508102859a3b02e78', 268, 171, 45, 1, '经济型', 2, '广州市福田区街道', 117.885650, 41.904110, '南京市西城区街道', 118.133481, 42.115621, 26.16, 80.73, 27.37, 64.00, 64.00, 8.98, 55.02, 4, 1, 1, '', '2024-02-23 02:14:09', '2024-02-23 02:41:09', '2024-02-23 03:59:09', '2024-02-23 04:05:09', NULL, '2024-02-23 02:11:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (526, 'DD202605081028591c11ab40', 341, 157, 42, 2, '商务型', 1, '上海市东城区街道', 119.796353, 39.488847, '西安市朝阳区街道', 119.390368, 39.517690, 23.71, 89.47, 27.85, 107.16, 107.16, 5.65, 101.51, 4, 1, 2, '', '2024-12-16 03:34:16', '2024-12-16 04:02:16', '2024-12-16 04:13:16', '2024-12-16 04:20:16', NULL, '2024-12-16 03:28:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (527, 'DD20260508102859e7e767ae', 262, 23, 4, 1, '舒适型', 1, '南京市福田区街道', 117.275411, 39.905688, '杭州市东城区街道', 117.760649, 40.178639, 19.60, 59.62, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-11-23 20:54:54', '2024-11-23 21:10:54', NULL, NULL, NULL, '2024-11-23 20:42:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (528, 'DD20260508102859b891061b', 339, 177, 46, 2, '商务型', 2, '杭州市西城区街道', 118.046653, 41.547654, '深圳市西城区街道', 118.032666, 41.296585, 3.27, 11.98, 3.20, 8.08, 8.08, 1.29, 6.79, 4, 1, 1, '', '2025-02-25 10:57:16', '2025-02-25 11:07:16', '2025-02-25 12:06:16', '2025-02-25 12:33:16', NULL, '2025-02-25 10:54:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (529, 'DD20260508102859a862badf', 385, NULL, NULL, 2, '舒适型', 1, '广州市南山区街道', 117.689742, 39.338782, '北京市南山区街道', 117.989918, 39.492131, 8.45, 31.72, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-05-04 19:03:20', NULL, NULL, NULL, NULL, '2025-05-04 18:56:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (530, 'DD202605081028598871cbcf', 324, 141, 38, 2, '经济型', 1, '西安市朝阳区街道', 118.706840, 41.795720, '武汉市南山区街道', 118.866390, 41.636477, 26.98, 72.46, 24.43, 94.38, 94.38, 11.62, 82.76, 6, 0, 0, '', '2025-06-22 08:25:15', '2025-06-22 08:50:15', '2025-06-22 09:20:15', NULL, NULL, '2025-06-22 08:24:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (531, 'DD20260508102859454c5f71', 487, 140, 37, 2, '经济型', 3, '杭州市西城区街道', 119.157599, 39.794728, '重庆市福田区街道', 119.468604, 39.863082, 26.61, 92.30, 26.11, 99.28, 99.28, 0.81, 98.47, 4, 1, 2, '', '2024-12-06 15:42:06', '2024-12-06 15:56:06', '2024-12-06 16:21:06', '2024-12-06 16:36:06', NULL, '2024-12-06 15:34:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (532, 'DD20260508102859d179e2ed', 21, 43, 10, 2, '舒适型', 3, '重庆市西城区街道', 119.322526, 39.499665, '杭州市东城区街道', 119.473820, 39.433345, 28.05, 60.35, 31.48, 90.36, 90.36, 16.58, 73.78, 4, 1, 1, '', '2025-04-30 15:08:41', '2025-04-30 15:37:41', '2025-04-30 16:45:41', '2025-04-30 16:46:41', NULL, '2025-04-30 15:05:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (533, 'DD2026050810285901179bc1', 219, 30, 6, 2, '经济型', 2, '上海市海淀区街道', 118.128635, 39.935617, '武汉市朝阳区街道', 118.386936, 39.881240, 13.46, 30.43, 14.58, 32.71, 32.71, 7.87, 24.84, 4, 1, 1, '', '2025-02-21 14:27:19', '2025-02-21 14:48:19', '2025-02-21 15:10:19', '2025-02-21 15:28:19', NULL, '2025-02-21 14:26:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (534, 'DD2026050810285969e85b26', 358, 180, 47, 2, '舒适型', 2, '重庆市福田区街道', 118.125290, 41.922117, '成都市西城区街道', 118.565666, 41.999839, 6.67, 19.11, 6.17, 15.40, 15.40, 2.89, 12.51, 4, 1, 1, '', '2024-10-13 17:15:26', '2024-10-13 17:20:26', '2024-10-13 18:32:26', '2024-10-13 18:58:26', NULL, '2024-10-13 17:05:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (535, 'DD2026050810285966b0213c', 143, 95, 22, 1, '舒适型', 3, '北京市福田区街道', 116.477251, 39.936422, '重庆市南山区街道', 116.243327, 40.111333, 1.44, 4.88, 1.32, 3.58, 3.58, 0.54, 3.04, 4, 1, 2, '', '2025-02-02 09:56:39', '2025-02-02 10:21:39', '2025-02-02 11:40:39', '2025-02-02 11:44:39', NULL, '2025-02-02 09:43:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (536, 'DD20260508102859dc739da5', 13, 108, 28, 1, '经济型', 2, '武汉市西城区街道', 116.233749, 40.657691, '南京市朝阳区街道', 115.828265, 40.936716, 19.67, 60.97, 17.99, 59.84, 59.84, 0.03, 59.81, 5, 2, 0, '司机取消', '2024-12-18 16:17:02', '2024-12-18 16:32:02', '2024-12-18 17:08:02', NULL, '2024-12-18 16:24:02', '2024-12-18 16:05:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (537, 'DD20260508102859960422fb', 455, 62, 16, 2, '商务型', 1, '西安市朝阳区街道', 118.316572, 41.010104, '西安市海淀区街道', 118.360099, 40.743759, 10.98, 31.19, 12.27, 46.52, 46.52, 13.16, 33.36, 4, 1, 2, '', '2025-07-03 12:41:49', '2025-07-03 12:54:49', '2025-07-03 13:27:49', '2025-07-03 13:42:49', NULL, '2025-07-03 12:37:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (538, 'DD20260508102859e7594238', 435, 30, 6, 1, '经济型', 1, '重庆市西城区街道', 119.707247, 39.350101, '重庆市福田区街道', 119.237311, 39.052638, 13.25, 30.66, 13.78, 49.48, 49.48, 6.10, 43.38, 5, 2, 0, '司机取消', '2024-02-24 19:57:41', '2024-02-24 20:17:41', '2024-02-24 20:31:41', NULL, '2024-02-24 20:35:41', '2024-02-24 19:48:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (539, 'DD202605081028598df59712', 281, 159, 43, 2, '舒适型', 2, '南京市东城区街道', 118.923510, 39.549490, '深圳市朝阳区街道', 119.302221, 39.549993, 11.88, 31.34, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-10-28 04:47:31', '2025-10-28 05:00:31', NULL, NULL, NULL, '2025-10-28 04:36:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (540, 'DD20260508102859069a1c87', 294, 37, 9, 2, '舒适型', 2, '武汉市福田区街道', 119.518324, 39.148503, '重庆市福田区街道', 119.489916, 39.223773, 1.09, 2.22, 1.10, 2.47, 2.47, 0.09, 2.38, 4, 1, 1, '', '2025-01-01 19:34:27', '2025-01-01 20:01:27', '2025-01-01 20:46:27', '2025-01-01 20:48:27', NULL, '2025-01-01 19:27:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (541, 'DD20260508102859c78ecd1f', 409, NULL, NULL, 1, '商务型', 3, '西安市东城区街道', 119.170391, 41.447669, '西安市东城区街道', 119.110452, 41.633739, 26.36, 94.67, 24.12, 66.35, 66.35, 3.86, 62.49, 4, 1, 2, '', '2025-10-04 03:12:16', '2025-10-04 03:22:16', '2025-10-04 05:20:16', '2025-10-04 05:49:16', NULL, '2025-10-04 03:11:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (542, 'DD2026050810285929f7f6cb', 455, 37, 9, 2, '经济型', 1, '西安市西城区街道', 118.005070, 41.283945, '上海市朝阳区街道', 117.861058, 41.180256, 28.65, 103.20, 33.53, 95.58, 95.58, 1.44, 94.14, 4, 1, 2, '', '2025-03-22 04:03:20', '2025-03-22 04:23:20', '2025-03-22 05:24:20', '2025-03-22 05:42:20', NULL, '2025-03-22 03:54:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (543, 'DD2026050810285999aa4d63', 429, 159, 43, 2, '经济型', 3, '上海市南山区街道', 119.976432, 39.719755, '重庆市西城区街道', 119.489401, 39.615418, 28.66, 81.88, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-03-12 20:31:11', NULL, NULL, NULL, NULL, '2025-03-12 20:30:11', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (544, 'DD20260508102859e40a2efe', 353, 49, 12, 2, '舒适型', 2, '上海市福田区街道', 119.131393, 41.840742, '重庆市海淀区街道', 119.053545, 42.101399, 2.04, 4.14, 1.98, 6.86, 6.86, 1.80, 5.06, 4, 1, 2, '', '2024-04-24 21:35:57', '2024-04-24 21:50:57', '2024-04-24 23:35:57', '2024-04-25 00:00:57', NULL, '2024-04-24 21:30:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (545, 'DD2026050810285964e956a6', 300, 43, 10, 1, '商务型', 1, '武汉市西城区街道', 119.206545, 39.291380, '杭州市福田区街道', 119.704675, 39.479559, 7.12, 20.18, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-03-16 13:25:58', '2024-03-16 13:54:58', NULL, NULL, NULL, '2024-03-16 13:14:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (546, 'DD20260508102859e0e023c1', 43, NULL, NULL, 1, '舒适型', 2, '深圳市西城区街道', 116.021802, 40.486019, '深圳市东城区街道', 115.685737, 40.314134, 23.51, 91.72, 21.69, 48.10, 48.10, 1.19, 46.91, 4, 1, 1, '', '2026-01-28 22:12:56', '2026-01-28 22:30:56', '2026-01-28 23:32:56', '2026-01-28 23:54:56', NULL, '2026-01-28 22:05:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (547, 'DD20260508102859ab3dadc8', 290, 43, 10, 2, '商务型', 3, '重庆市西城区街道', 118.127491, 39.511541, '成都市东城区街道', 118.539682, 39.733754, 1.38, 3.87, 1.47, 3.14, 3.14, 0.00, 3.14, 6, 0, 0, '', '2026-05-06 07:59:30', '2026-05-06 08:05:30', '2026-05-06 08:33:30', NULL, NULL, '2026-05-06 07:44:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (548, 'DD2026050810285924a0c1ca', 79, 43, 10, 1, '商务型', 2, '成都市福田区街道', 118.018598, 40.371899, '上海市海淀区街道', 118.318391, 40.227285, 19.03, 64.38, 20.83, 75.27, 75.27, 15.44, 59.83, 4, 1, 1, '', '2024-10-28 15:42:20', '2024-10-28 15:53:20', '2024-10-28 16:16:20', '2024-10-28 16:24:20', NULL, '2024-10-28 15:39:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (549, 'DD20260508102859d9e65497', 413, 43, 10, 1, '经济型', 1, '上海市朝阳区街道', 116.799106, 39.904357, '南京市海淀区街道', 116.907256, 40.028312, 18.17, 61.19, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-05-06 19:45:26', NULL, NULL, NULL, NULL, '2025-05-06 19:39:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (550, 'DD202605081028592c62f7ef', 427, 56, 15, 1, '舒适型', 3, '杭州市西城区街道', 118.463708, 40.147152, '西安市南山区街道', 118.669591, 39.899954, 29.31, 111.78, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-09-24 07:34:25', '2024-09-24 07:55:25', NULL, NULL, NULL, '2024-09-24 07:23:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (551, 'DD202605081028592d1d8179', 122, NULL, NULL, 1, '商务型', 2, '重庆市海淀区街道', 117.560147, 39.428888, '重庆市东城区街道', 117.638599, 39.530672, 9.04, 31.21, 9.07, 32.39, 32.39, 1.26, 31.13, 4, 1, 2, '', '2025-04-28 20:00:35', '2025-04-28 20:27:35', '2025-04-28 22:02:35', '2025-04-28 22:30:35', NULL, '2025-04-28 19:51:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (552, 'DD2026050810285912c9227f', 262, 1, 1, 1, '舒适型', 1, '重庆市东城区街道', 118.623527, 40.163564, '深圳市南山区街道', 118.204423, 40.396208, 15.68, 32.47, 17.08, 44.00, 44.00, 7.66, 36.34, 4, 1, 1, '', '2025-03-24 14:04:35', '2025-03-24 14:11:35', '2025-03-24 15:32:35', '2025-03-24 15:51:35', NULL, '2025-03-24 13:53:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (553, 'DD202605081028598c166447', 446, NULL, NULL, 1, '商务型', 1, '成都市南山区街道', 119.300418, 40.982752, '西安市海淀区街道', 118.940983, 41.242529, 28.13, 72.74, 27.63, 100.84, 100.84, 7.11, 93.73, 4, 1, 2, '', '2024-12-07 13:23:03', '2024-12-07 13:53:03', '2024-12-07 14:59:03', '2024-12-07 15:21:03', NULL, '2024-12-07 13:12:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (554, 'DD20260508102859b3bf60fa', 111, 137, 36, 1, '经济型', 2, '武汉市福田区街道', 117.152332, 39.497058, '成都市南山区街道', 116.703047, 39.200651, 4.89, 14.55, 5.62, 11.73, 11.73, 2.20, 9.53, 4, 1, 2, '', '2025-05-03 18:17:35', '2025-05-03 18:23:35', '2025-05-03 20:06:35', '2025-05-03 20:35:35', NULL, '2025-05-03 18:15:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (555, 'DD20260508102859413627c3', 277, 177, 46, 1, '舒适型', 2, '上海市朝阳区街道', 116.851099, 39.975174, '广州市东城区街道', 116.917423, 39.863885, 2.37, 5.96, 2.15, 7.68, 7.68, 1.80, 5.88, 4, 1, 2, '', '2024-12-13 06:15:37', '2024-12-13 06:20:37', '2024-12-13 06:56:37', '2024-12-13 07:11:37', NULL, '2024-12-13 06:01:37', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (556, 'DD20260508102859695be5ef', 424, 171, 45, 2, '经济型', 3, '西安市西城区街道', 117.845485, 41.913539, '南京市福田区街道', 117.743955, 41.994795, 24.36, 91.64, 25.48, 60.26, 60.26, 6.32, 53.94, 4, 1, 1, '', '2024-03-14 10:52:50', '2024-03-14 11:22:50', '2024-03-14 11:48:50', '2024-03-14 12:13:50', NULL, '2024-03-14 10:48:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (557, 'DD20260508102859888571aa', 168, 135, 35, 1, '舒适型', 2, '上海市福田区街道', 118.414766, 40.577878, '南京市西城区街道', 118.706983, 40.705774, 18.08, 67.76, 19.47, 63.30, 63.30, 2.94, 60.36, 4, 1, 1, '', '2024-09-06 19:47:25', '2024-09-06 20:08:25', '2024-09-06 20:41:25', '2024-09-06 20:43:25', NULL, '2024-09-06 19:43:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (558, 'DD202605081028597ec32995', 203, 116, 31, 2, '舒适型', 3, '杭州市海淀区街道', 119.351876, 39.381954, '西安市东城区街道', 119.705812, 39.106622, 21.77, 57.55, 25.89, 96.16, 96.16, 2.40, 93.76, 4, 1, 1, '', '2025-11-10 23:34:50', '2025-11-11 00:04:50', '2025-11-11 01:56:50', '2025-11-11 02:20:50', NULL, '2025-11-10 23:33:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (559, 'DD20260508102859a6b77e88', 8, NULL, NULL, 1, '舒适型', 3, '武汉市西城区街道', 116.890234, 40.108733, '上海市朝阳区街道', 117.000214, 40.380377, 22.81, 56.66, 25.36, 66.31, 66.31, 10.79, 55.52, 4, 1, 1, '', '2025-07-31 06:58:45', '2025-07-31 07:03:45', '2025-07-31 07:50:45', '2025-07-31 07:55:45', NULL, '2025-07-31 06:44:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (560, 'DD20260508102859bc3af106', 374, 140, 37, 1, '商务型', 1, '武汉市东城区街道', 116.988822, 41.069118, '南京市西城区街道', 116.677274, 40.917031, 27.18, 93.42, 27.58, 78.39, 78.39, 6.67, 71.72, 4, 1, 2, '', '2024-04-24 01:54:45', '2024-04-24 01:59:45', '2024-04-24 03:32:45', '2024-04-24 03:44:45', NULL, '2024-04-24 01:42:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (561, 'DD20260508102859f6001a7c', 248, 137, 36, 1, '经济型', 3, '广州市西城区街道', 116.425833, 41.702406, '武汉市西城区街道', 116.730706, 41.462698, 18.19, 72.41, 20.15, 76.80, 76.80, 6.47, 70.33, 4, 1, 2, '', '2025-08-29 14:12:14', '2025-08-29 14:23:14', '2025-08-29 16:14:14', '2025-08-29 16:19:14', NULL, '2025-08-29 13:57:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (562, 'DD20260508102859c1c0c6ec', 393, 150, 40, 1, '舒适型', 2, '广州市海淀区街道', 116.426158, 39.385391, '杭州市海淀区街道', 116.051472, 39.533813, 8.86, 21.62, 9.21, 21.53, 21.53, 1.93, 19.60, 5, 2, 0, '用户取消', '2025-10-23 17:16:22', '2025-10-23 17:25:22', '2025-10-23 18:45:22', NULL, '2025-10-23 17:23:22', '2025-10-23 17:14:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (563, 'DD2026050810285929369320', 416, 100, 25, 2, '经济型', 3, '深圳市福田区街道', 118.526440, 39.060962, '成都市海淀区街道', 118.140036, 39.163685, 18.99, 71.17, 18.13, 62.69, 62.69, 16.29, 46.40, 4, 1, 1, '', '2025-07-18 15:51:24', '2025-07-18 16:04:24', '2025-07-18 16:55:24', '2025-07-18 17:23:24', NULL, '2025-07-18 15:40:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (564, 'DD2026050810285929614cc4', 114, 49, 12, 2, '商务型', 2, '上海市南山区街道', 119.419494, 41.295528, '成都市朝阳区街道', 119.570399, 41.441998, 2.18, 5.83, 2.53, 8.19, 8.19, 1.10, 7.09, 5, 2, 0, '司机取消', '2025-04-17 02:30:04', '2025-04-17 02:47:04', '2025-04-17 03:31:04', NULL, '2025-04-17 03:25:04', '2025-04-17 02:25:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (565, 'DD20260508102859718aee4d', 18, 180, 47, 2, '舒适型', 1, '杭州市东城区街道', 118.846271, 40.805938, '杭州市福田区街道', 118.515344, 40.575040, 12.92, 28.10, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-08-18 07:12:17', NULL, NULL, NULL, NULL, '2025-08-18 07:04:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (566, 'DD20260508102859c2a3a541', 366, 45, 11, 1, '经济型', 2, '成都市西城区街道', 118.492361, 39.741044, '杭州市南山区街道', 118.991184, 39.489042, 19.24, 70.04, 22.05, 66.53, 66.53, 4.40, 62.13, 4, 1, 1, '', '2025-05-14 02:55:21', '2025-05-14 03:01:21', '2025-05-14 03:51:21', '2025-05-14 03:57:21', NULL, '2025-05-14 02:48:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (567, 'DD20260508102859511a5597', 365, 95, 22, 1, '商务型', 2, '北京市西城区街道', 116.413430, 40.877083, '西安市朝阳区街道', 115.913433, 40.773240, 19.73, 43.90, 22.16, 73.50, 73.50, 13.08, 60.42, 4, 1, 2, '', '2026-03-20 16:12:55', '2026-03-20 16:23:55', '2026-03-20 17:10:55', '2026-03-20 17:26:55', NULL, '2026-03-20 15:57:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (568, 'DD202605081028590a411666', 11, 72, 18, 1, '舒适型', 3, '成都市海淀区街道', 116.962651, 41.544182, '重庆市福田区街道', 117.396028, 41.625838, 2.30, 6.35, 2.74, 6.83, 6.83, 1.96, 4.87, 4, 1, 2, '', '2026-02-22 01:49:17', '2026-02-22 02:12:17', '2026-02-22 03:02:17', '2026-02-22 03:21:17', NULL, '2026-02-22 01:43:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (569, 'DD20260508102859e903587d', 118, 116, 31, 1, '舒适型', 1, '杭州市海淀区街道', 116.779362, 41.258599, '北京市福田区街道', 116.402406, 41.386941, 2.07, 4.62, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-09-13 12:35:30', NULL, NULL, NULL, NULL, '2024-09-13 12:22:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (570, 'DD20260508102859658590b5', 436, 23, 4, 1, '经济型', 2, '武汉市海淀区街道', 118.801410, 41.771407, '上海市西城区街道', 118.919749, 41.771861, 17.86, 62.35, 19.49, 65.61, 65.61, 7.46, 58.15, 4, 1, 1, '', '2025-08-13 07:42:19', '2025-08-13 08:01:19', '2025-08-13 08:50:19', '2025-08-13 09:14:19', NULL, '2025-08-13 07:34:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (571, 'DD202605081028598c6ffb8f', 489, 62, 16, 1, '舒适型', 2, '重庆市东城区街道', 116.662028, 40.248491, '上海市南山区街道', 116.184354, 40.547341, 18.21, 56.62, 20.82, 63.36, 63.36, 7.00, 56.36, 5, 2, 0, '用户取消', '2024-10-20 23:03:16', '2024-10-20 23:09:16', '2024-10-21 00:37:16', NULL, '2024-10-20 23:52:16', '2024-10-20 22:55:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (572, 'DD20260508102859c381a879', 402, 159, 43, 2, '商务型', 2, '武汉市南山区街道', 116.674650, 41.992310, '西安市福田区街道', 116.425663, 42.197715, 22.22, 59.85, 26.31, 74.86, 74.86, 14.12, 60.74, 5, 2, 0, '司机取消', '2026-02-01 05:50:13', '2026-02-01 06:18:13', '2026-02-01 06:40:13', NULL, '2026-02-01 05:42:13', '2026-02-01 05:36:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (573, 'DD202605081028592ca10768', 45, 99, 24, 2, '舒适型', 2, '广州市西城区街道', 119.302994, 40.168178, '深圳市福田区街道', 119.802813, 40.020468, 12.89, 47.87, 14.49, 56.07, 56.07, 0.15, 55.92, 4, 1, 1, '', '2025-09-04 22:59:34', '2025-09-04 23:06:34', '2025-09-04 23:33:34', '2025-09-04 23:43:34', NULL, '2025-09-04 22:45:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (574, 'DD202605081028597d7865db', 149, 141, 38, 2, '商务型', 2, '成都市西城区街道', 118.043073, 41.688270, '广州市南山区街道', 118.006831, 41.708401, 23.61, 63.92, 25.40, 95.79, 95.79, 2.81, 92.98, 4, 1, 1, '', '2026-05-04 05:54:57', '2026-05-04 06:01:57', '2026-05-04 07:32:57', '2026-05-04 07:38:57', NULL, '2026-05-04 05:46:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (575, 'DD20260508102859c1bbad45', 427, 122, 32, 2, '商务型', 1, '北京市西城区街道', 116.332555, 40.641900, '成都市朝阳区街道', 116.807121, 40.421293, 3.75, 13.75, 3.57, 11.30, 11.30, 0.28, 11.02, 4, 1, 2, '', '2025-06-18 14:20:23', '2025-06-18 14:35:23', '2025-06-18 15:43:23', '2025-06-18 15:54:23', NULL, '2025-06-18 14:14:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (576, 'DD202605081028592289eb91', 245, 37, 9, 1, '经济型', 2, '重庆市东城区街道', 118.468903, 40.582081, '成都市福田区街道', 118.435271, 40.692975, 9.14, 26.87, 10.69, 28.90, 28.90, 0.39, 28.51, 4, 1, 1, '', '2025-07-06 19:16:01', '2025-07-06 19:35:01', '2025-07-06 20:21:01', '2025-07-06 20:50:01', NULL, '2025-07-06 19:08:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (577, 'DD2026050810285927b5826f', 64, 94, 21, 2, '舒适型', 2, '杭州市朝阳区街道', 117.233489, 41.718710, '重庆市海淀区街道', 116.995412, 41.934937, 7.08, 14.63, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-04-03 06:15:52', '2026-04-03 06:33:52', NULL, NULL, NULL, '2026-04-03 06:09:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (578, 'DD202605081028594c750514', 175, 100, 25, 1, '商务型', 3, '武汉市东城区街道', 118.377200, 39.079557, '武汉市福田区街道', 118.510826, 38.866069, 8.59, 20.90, 9.85, 28.63, 28.63, 2.01, 26.62, 4, 1, 1, '', '2025-04-30 17:14:03', '2025-04-30 17:31:03', '2025-04-30 19:17:03', '2025-04-30 19:45:03', NULL, '2025-04-30 17:05:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (579, 'DD202605081028595d48efb6', 328, NULL, NULL, 1, '经济型', 2, '重庆市朝阳区街道', 116.473688, 41.068596, '西安市南山区街道', 116.223626, 41.132371, 16.52, 57.85, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-11-28 13:21:38', NULL, NULL, NULL, NULL, '2025-11-28 13:06:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (580, 'DD202605081028599596efa6', 395, 159, 43, 2, '舒适型', 3, '重庆市西城区街道', 119.505614, 40.535698, '武汉市福田区街道', 119.827957, 40.732251, 15.45, 51.63, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-03-25 23:24:53', '2025-03-25 23:53:53', NULL, NULL, NULL, '2025-03-25 23:14:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (581, 'DD202605081028594323111b', 423, 99, 24, 2, '经济型', 2, '广州市海淀区街道', 119.776426, 40.350517, '北京市海淀区街道', 119.617104, 40.528291, 25.68, 89.69, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-10-04 03:57:43', NULL, NULL, NULL, NULL, '2024-10-04 03:54:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (582, 'DD20260508102859417ac461', 30, 122, 32, 2, '经济型', 1, '深圳市福田区街道', 116.662039, 39.953674, '杭州市朝阳区街道', 116.345121, 40.169192, 14.46, 38.54, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-04-29 17:21:30', NULL, NULL, NULL, NULL, '2024-04-29 17:19:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (583, 'DD2026050810285942258dba', 89, 30, 6, 2, '经济型', 2, '广州市东城区街道', 119.847482, 40.923482, '武汉市海淀区街道', 120.171297, 40.699046, 20.99, 44.92, 22.47, 45.58, 45.58, 2.30, 43.28, 6, 0, 0, '', '2024-10-28 09:21:22', '2024-10-28 09:49:22', '2024-10-28 10:28:22', NULL, NULL, '2024-10-28 09:14:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (584, 'DD2026050810285948c7d10c', 96, 95, 22, 2, '经济型', 3, '深圳市福田区街道', 118.623275, 39.251317, '广州市海淀区街道', 118.398565, 39.383024, 26.03, 55.20, 30.57, 79.39, 79.39, 17.34, 62.05, 4, 1, 1, '', '2025-10-25 18:03:57', '2025-10-25 18:12:57', '2025-10-25 19:09:57', '2025-10-25 19:33:57', NULL, '2025-10-25 17:58:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (585, 'DD20260508102859d13ca376', 335, 95, 22, 1, '经济型', 2, '重庆市福田区街道', 119.863583, 41.947266, '杭州市福田区街道', 119.590245, 41.761683, 7.93, 19.08, 7.57, 17.81, 17.81, 2.49, 15.32, 4, 1, 1, '', '2024-10-04 20:55:40', '2024-10-04 21:21:40', '2024-10-04 21:42:40', '2024-10-04 21:43:40', NULL, '2024-10-04 20:49:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (586, 'DD20260508102859856fff31', 123, 62, 16, 1, '商务型', 1, '广州市东城区街道', 117.581277, 39.340081, '广州市东城区街道', 117.714523, 39.344476, 24.47, 74.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-01-29 23:59:01', '2025-01-30 00:22:01', NULL, NULL, NULL, '2025-01-29 23:51:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (587, 'DD20260508102859553dee3e', 276, 62, 16, 1, '舒适型', 2, '成都市朝阳区街道', 116.581869, 39.098452, '西安市东城区街道', 116.775914, 39.327249, 3.51, 8.42, 3.75, 14.52, 14.52, 0.83, 13.69, 4, 1, 1, '', '2025-07-17 06:22:17', '2025-07-17 06:42:17', '2025-07-17 07:16:17', '2025-07-17 07:29:17', NULL, '2025-07-17 06:18:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (588, 'DD2026050810285983d4b62a', 430, 37, 9, 1, '经济型', 2, '武汉市东城区街道', 116.078472, 41.761564, '南京市南山区街道', 116.104922, 41.666806, 24.26, 50.49, 27.10, 56.66, 56.66, 9.41, 47.25, 4, 1, 1, '', '2026-03-19 15:43:06', '2026-03-19 16:05:06', '2026-03-19 16:17:06', '2026-03-19 16:45:06', NULL, '2026-03-19 15:35:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (589, 'DD20260508102859b3249d8e', 150, 100, 25, 1, '商务型', 3, '北京市西城区街道', 117.767429, 40.061408, '重庆市朝阳区街道', 117.646420, 40.074459, 22.57, 79.75, 24.11, 80.77, 80.77, 1.64, 79.13, 4, 1, 1, '', '2024-09-24 10:32:31', '2024-09-24 10:55:31', '2024-09-24 11:13:31', '2024-09-24 11:38:31', NULL, '2024-09-24 10:25:31', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (590, 'DD202605081028599d192868', 73, 185, 49, 1, '舒适型', 1, '深圳市朝阳区街道', 117.312336, 41.095958, '武汉市东城区街道', 117.630321, 40.953772, 16.67, 56.24, 19.07, 73.97, 73.97, 3.43, 70.54, 4, 1, 1, '', '2025-05-22 12:35:42', '2025-05-22 12:43:42', '2025-05-22 14:28:42', '2025-05-22 14:33:42', NULL, '2025-05-22 12:25:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (591, 'DD2026050810285972fab1f7', 332, 177, 46, 1, '商务型', 1, '上海市南山区街道', 117.800005, 40.705702, '重庆市朝阳区街道', 117.712620, 40.565649, 6.95, 19.94, 8.09, 32.21, 32.21, 2.85, 29.36, 4, 1, 1, '', '2025-04-03 17:51:21', '2025-04-03 17:56:21', '2025-04-03 18:48:21', '2025-04-03 19:15:21', NULL, '2025-04-03 17:39:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (592, 'DD2026050810285919d68d93', 11, 185, 49, 2, '经济型', 3, '北京市西城区街道', 116.094954, 39.118390, '北京市西城区街道', 116.062583, 39.019357, 3.33, 7.42, 3.16, 11.73, 11.73, 1.95, 9.78, 4, 1, 1, '', '2026-02-24 15:27:46', '2026-02-24 15:47:46', '2026-02-24 17:11:46', '2026-02-24 17:23:46', NULL, '2026-02-24 15:12:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (593, 'DD20260508102859c6d60549', 276, 180, 47, 2, '舒适型', 3, '南京市南山区街道', 117.864085, 41.678196, '杭州市东城区街道', 118.291378, 41.970790, 5.07, 17.28, 4.92, 13.49, 13.49, 0.83, 12.66, 4, 1, 2, '', '2025-01-03 22:53:30', '2025-01-03 23:00:30', '2025-01-03 23:55:30', '2025-01-04 00:09:30', NULL, '2025-01-03 22:45:30', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (594, 'DD202605081028595e23d63e', 210, 49, 12, 1, '舒适型', 2, '重庆市南山区街道', 119.869632, 40.252221, '武汉市海淀区街道', 120.057498, 40.030314, 5.45, 14.46, 5.77, 15.38, 15.38, 0.43, 14.95, 4, 1, 2, '', '2024-12-25 01:34:50', '2024-12-25 01:45:50', '2024-12-25 02:20:50', '2024-12-25 02:42:50', NULL, '2024-12-25 01:21:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (595, 'DD20260508102859f7ab8318', 96, 159, 43, 1, '舒适型', 3, '广州市西城区街道', 117.940389, 40.442842, '西安市朝阳区街道', 118.267958, 40.268045, 27.72, 69.27, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-04-17 08:12:34', '2026-04-17 08:22:34', NULL, NULL, NULL, '2026-04-17 08:01:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (596, 'DD2026050810285966275668', 399, 108, 28, 2, '商务型', 2, '北京市海淀区街道', 119.804260, 40.770807, '广州市海淀区街道', 119.650408, 40.633372, 11.21, 28.06, 12.73, 31.16, 31.16, 9.35, 21.81, 4, 1, 2, '', '2025-11-21 02:47:06', '2025-11-21 03:16:06', '2025-11-21 03:44:06', '2025-11-21 03:48:06', NULL, '2025-11-21 02:42:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (597, 'DD20260508102859dbb84d5d', 419, 95, 22, 1, '商务型', 1, '上海市南山区街道', 116.073345, 40.396234, '杭州市西城区街道', 116.421178, 40.418106, 10.90, 40.89, 10.87, 39.38, 39.38, 3.01, 36.37, 4, 1, 2, '', '2025-01-07 20:48:41', '2025-01-07 20:59:41', '2025-01-07 21:48:41', '2025-01-07 22:01:41', NULL, '2025-01-07 20:33:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (598, 'DD202605081028599f79f708', 187, 62, 16, 2, '经济型', 1, '西安市朝阳区街道', 117.564328, 39.430647, '武汉市朝阳区街道', 117.335141, 39.334058, 18.13, 58.03, 21.38, 49.80, 49.80, 5.85, 43.95, 4, 1, 2, '', '2025-09-05 11:31:26', '2025-09-05 11:45:26', '2025-09-05 12:27:26', '2025-09-05 12:35:26', NULL, '2025-09-05 11:18:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (599, 'DD202605081028597547b865', 379, 110, 29, 2, '经济型', 2, '重庆市福田区街道', 117.732009, 39.898572, '武汉市南山区街道', 117.663010, 39.755173, 25.54, 95.35, 30.52, 80.48, 80.48, 13.30, 67.18, 4, 1, 2, '', '2025-05-03 08:04:10', '2025-05-03 08:31:10', '2025-05-03 08:43:10', '2025-05-03 08:57:10', NULL, '2025-05-03 07:58:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (600, 'DD202605081028590fb6ddcc', 75, 100, 25, 2, '经济型', 2, '杭州市福田区街道', 117.971592, 40.541771, '西安市东城区街道', 118.024188, 40.524591, 25.58, 59.75, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-11-08 09:07:36', '2025-11-08 09:29:36', NULL, NULL, NULL, '2025-11-08 09:00:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (601, 'DD20260508102859551dd589', 477, NULL, NULL, 1, '舒适型', 1, '西安市海淀区街道', 119.042447, 39.992725, '杭州市南山区街道', 119.521287, 40.261915, 17.97, 66.29, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-02-21 15:04:10', '2025-02-21 15:15:10', NULL, NULL, NULL, '2025-02-21 14:49:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (602, 'DD2026050810285990530236', 177, 45, 11, 1, '经济型', 1, '南京市南山区街道', 116.028984, 40.575699, '广州市朝阳区街道', 116.247495, 40.455323, 1.07, 2.20, 1.17, 4.01, 4.01, 0.07, 3.94, 4, 1, 2, '', '2025-01-17 12:26:52', '2025-01-17 12:45:52', '2025-01-17 13:09:52', '2025-01-17 13:15:52', NULL, '2025-01-17 12:25:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (603, 'DD20260508102859927fb9d1', 461, 177, 46, 1, '经济型', 3, '北京市朝阳区街道', 116.265798, 41.825100, '武汉市朝阳区街道', 116.344404, 41.945184, 28.78, 95.10, 31.14, 110.30, 110.30, 21.45, 88.85, 6, 0, 0, '', '2025-01-15 03:14:26', '2025-01-15 03:24:26', '2025-01-15 05:21:26', NULL, NULL, '2025-01-15 03:01:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (604, 'DD20260508102859b7f3023d', 164, 177, 46, 1, '商务型', 3, '西安市海淀区街道', 119.420300, 39.052285, '成都市朝阳区街道', 118.958032, 38.778160, 20.04, 74.50, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-11-24 06:14:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (605, 'DD20260508102859c82ae9e9', 163, 45, 11, 2, '舒适型', 1, '武汉市朝阳区街道', 116.927464, 40.707605, '成都市东城区街道', 117.332328, 41.002684, 28.34, 82.25, 30.06, 78.24, 78.24, 6.99, 71.25, 4, 1, 1, '', '2024-08-09 02:48:42', '2024-08-09 03:18:42', '2024-08-09 05:03:42', '2024-08-09 05:31:42', NULL, '2024-08-09 02:39:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (606, 'DD20260508102859e66f9a4c', 442, 185, 49, 2, '舒适型', 2, '上海市南山区街道', 118.384264, 40.087911, '深圳市朝阳区街道', 118.773949, 40.258646, 11.19, 24.85, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-06-14 07:49:14', '2025-06-14 08:16:14', NULL, NULL, NULL, '2025-06-14 07:48:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (607, 'DD202605081028590b856d19', 353, 140, 37, 2, '商务型', 2, '成都市西城区街道', 117.536404, 39.060867, '杭州市朝阳区街道', 117.438596, 39.348929, 5.05, 16.36, 4.75, 16.39, 16.39, 2.97, 13.42, 4, 1, 2, '', '2025-06-14 17:29:21', '2025-06-14 17:52:21', '2025-06-14 19:45:21', '2025-06-14 20:05:21', NULL, '2025-06-14 17:14:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (608, 'DD20260508102859403eaf9a', 203, 159, 43, 1, '舒适型', 1, '北京市南山区街道', 117.145012, 41.361382, '武汉市朝阳区街道', 117.134200, 41.217162, 8.92, 20.69, 9.51, 31.12, 31.12, 7.41, 23.71, 5, 2, 0, '司机取消', '2025-07-31 03:55:45', '2025-07-31 04:25:45', '2025-07-31 04:52:45', NULL, '2025-07-31 04:04:45', '2025-07-31 03:48:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (609, 'DD202605081028596f3ebf35', 372, 185, 49, 2, '商务型', 1, '北京市南山区街道', 118.209932, 39.028084, '南京市福田区街道', 117.819401, 39.013849, 4.45, 13.44, 4.93, 9.94, 9.94, 0.06, 9.88, 4, 1, 2, '', '2025-10-19 23:40:53', '2025-10-19 23:59:53', '2025-10-20 01:49:53', '2025-10-20 01:55:53', NULL, '2025-10-19 23:29:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (610, 'DD20260508102859f3d606fb', 35, 64, 17, 2, '舒适型', 3, '杭州市朝阳区街道', 116.111190, 39.221625, '重庆市朝阳区街道', 116.141740, 39.330292, 19.56, 54.66, 18.17, 71.91, 71.91, 14.23, 57.68, 4, 1, 1, '', '2024-04-29 16:21:37', '2024-04-29 16:37:37', '2024-04-29 18:16:37', '2024-04-29 18:39:37', NULL, '2024-04-29 16:10:37', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (611, 'DD20260508102859929cf897', 429, 110, 29, 1, '舒适型', 1, '西安市东城区街道', 116.433640, 39.615371, '西安市朝阳区街道', 115.994717, 39.403006, 24.73, 97.14, 24.34, 89.28, 89.28, 23.95, 65.33, 4, 1, 2, '', '2024-06-07 04:13:24', '2024-06-07 04:40:24', '2024-06-07 05:17:24', '2024-06-07 05:26:24', NULL, '2024-06-07 04:00:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (612, 'DD202605081028599cf07482', 60, 11, 3, 2, '商务型', 1, '南京市福田区街道', 116.625278, 39.020356, '广州市西城区街道', 116.819492, 38.789336, 3.34, 6.99, 3.27, 6.76, 6.76, 1.29, 5.47, 5, 2, 0, '用户取消', '2024-11-23 04:44:55', '2024-11-23 05:01:55', '2024-11-23 06:08:55', NULL, '2024-11-23 05:19:55', '2024-11-23 04:39:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (613, 'DD2026050810285938b9897e', 125, NULL, NULL, 2, '舒适型', 3, '深圳市西城区街道', 116.039618, 41.269676, '西安市福田区街道', 115.796584, 41.325964, 21.49, 53.10, 19.82, 75.31, 75.31, 10.11, 65.20, 4, 1, 1, '', '2024-12-22 14:31:04', '2024-12-22 14:45:04', '2024-12-22 16:44:04', '2024-12-22 16:52:04', NULL, '2024-12-22 14:27:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (614, 'DD20260508102859723ba2f0', 440, 94, 21, 1, '商务型', 2, '武汉市东城区街道', 119.408597, 41.614768, '杭州市海淀区街道', 119.065259, 41.533929, 4.45, 12.47, 5.15, 15.06, 15.06, 0.74, 14.32, 4, 1, 1, '', '2025-01-29 01:24:44', '2025-01-29 01:50:44', '2025-01-29 02:28:44', '2025-01-29 02:52:44', NULL, '2025-01-29 01:10:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (615, 'DD2026050810285964861047', 103, 43, 10, 2, '舒适型', 3, '上海市朝阳区街道', 116.001047, 40.615392, '上海市南山区街道', 116.447008, 40.703610, 19.76, 68.03, 23.27, 66.08, 66.08, 5.40, 60.68, 5, 2, 0, '用户取消', '2026-02-13 04:06:33', '2026-02-13 04:30:33', '2026-02-13 05:27:33', NULL, '2026-02-13 04:01:33', '2026-02-13 03:52:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (616, 'DD20260508102859aacc8017', 59, 37, 9, 2, '经济型', 2, '重庆市西城区街道', 118.490331, 41.915031, '上海市东城区街道', 118.071874, 42.133945, 15.09, 36.25, 14.12, 41.71, 41.71, 11.64, 30.07, 5, 2, 0, '司机取消', '2026-03-04 08:21:17', '2026-03-04 08:49:17', '2026-03-04 09:53:17', NULL, '2026-03-04 08:19:17', '2026-03-04 08:08:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (617, 'DD2026050810285938f73edc', 191, 108, 28, 1, '商务型', 1, '武汉市福田区街道', 117.825325, 40.732513, '成都市海淀区街道', 117.440117, 40.693195, 29.44, 64.13, 29.00, 87.26, 87.26, 21.14, 66.12, 4, 1, 2, '', '2026-02-28 01:21:20', '2026-02-28 01:30:20', '2026-02-28 02:17:20', '2026-02-28 02:29:20', NULL, '2026-02-28 01:09:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (618, 'DD20260508102859037a959f', 141, NULL, NULL, 2, '商务型', 3, '武汉市西城区街道', 117.882387, 40.696811, '深圳市海淀区街道', 117.967104, 40.959611, 29.45, 96.10, 34.85, 126.99, 126.99, 37.54, 89.45, 6, 0, 0, '', '2025-08-05 17:42:49', '2025-08-05 17:48:49', '2025-08-05 18:45:49', NULL, NULL, '2025-08-05 17:31:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (619, 'DD2026050810285981065d7f', 413, 36, 8, 2, '经济型', 1, '重庆市西城区街道', 119.202189, 40.208195, '杭州市福田区街道', 118.783716, 39.983409, 9.77, 30.41, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-10-14 04:12:33', '2024-10-14 04:21:33', NULL, NULL, NULL, '2024-10-14 03:59:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (620, 'DD202605081028594adfa0e2', 326, 56, 15, 1, '商务型', 1, '成都市福田区街道', 118.981971, 41.114067, '杭州市朝阳区街道', 118.606791, 41.121689, 4.20, 11.13, 4.76, 13.27, 13.27, 1.06, 12.21, 4, 1, 2, '', '2025-12-13 04:59:27', '2025-12-13 05:18:27', '2025-12-13 06:28:27', '2025-12-13 06:42:27', NULL, '2025-12-13 04:58:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (621, 'DD202605081028594bfae707', 433, 171, 45, 1, '舒适型', 3, '西安市南山区街道', 119.065339, 41.533205, '广州市朝阳区街道', 119.439719, 41.627367, 15.99, 38.27, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-04-24 07:20:49', '2024-04-24 07:45:49', NULL, NULL, NULL, '2024-04-24 07:09:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (622, 'DD202605081028597346781d', 20, 62, 16, 1, '舒适型', 2, '广州市福田区街道', 116.586739, 39.312479, '重庆市西城区街道', 116.913488, 39.355178, 26.47, 56.50, 29.54, 113.73, 113.73, 5.64, 108.09, 4, 1, 2, '', '2024-12-15 11:13:46', '2024-12-15 11:26:46', '2024-12-15 12:25:46', '2024-12-15 12:44:46', NULL, '2024-12-15 11:02:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (623, 'DD202605081028590605121e', 466, 157, 42, 1, '商务型', 1, '南京市福田区街道', 116.458231, 40.159310, '南京市朝阳区街道', 116.413729, 40.328616, 15.80, 44.31, 18.20, 51.10, 51.10, 9.74, 41.36, 4, 1, 2, '', '2025-12-11 13:43:56', '2025-12-11 14:12:56', '2025-12-11 15:08:56', '2025-12-11 15:36:56', NULL, '2025-12-11 13:40:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (624, 'DD20260508102859dcf55595', 323, 23, 4, 1, '商务型', 1, '西安市东城区街道', 118.249613, 41.019119, '重庆市南山区街道', 118.501613, 40.754019, 4.65, 15.57, 5.03, 16.59, 16.59, 1.82, 14.77, 4, 1, 2, '', '2025-04-04 13:53:59', '2025-04-04 14:20:59', '2025-04-04 14:31:59', '2025-04-04 14:59:59', NULL, '2025-04-04 13:48:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (625, 'DD20260508102859c34d63c2', 56, 98, 23, 2, '经济型', 1, '广州市西城区街道', 118.029075, 41.138666, '深圳市南山区街道', 118.045902, 41.414746, 21.59, 78.61, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-02-14 02:46:56', NULL, NULL, NULL, NULL, '2026-02-14 02:34:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (626, 'DD2026050810285944859cb7', 36, 36, 8, 1, '舒适型', 2, '杭州市福田区街道', 116.642046, 41.075451, '上海市福田区街道', 116.554600, 40.811839, 9.35, 31.93, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-02-08 14:13:53', '2025-02-08 14:31:53', NULL, NULL, NULL, '2025-02-08 14:10:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (627, 'DD202605081028594032014d', 76, 98, 23, 1, '商务型', 1, '北京市海淀区街道', 116.972186, 41.607697, '深圳市海淀区街道', 116.637688, 41.881972, 4.33, 10.16, 4.80, 13.43, 13.43, 2.16, 11.27, 4, 1, 2, '', '2024-01-12 20:01:45', '2024-01-12 20:22:45', '2024-01-12 21:41:45', '2024-01-12 21:47:45', NULL, '2024-01-12 19:48:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (628, 'DD2026050810285994540e75', 121, 140, 37, 1, '商务型', 1, '北京市福田区街道', 116.450323, 40.248976, '广州市朝阳区街道', 116.189932, 40.198789, 22.85, 81.68, 22.33, 49.53, 49.53, 6.30, 43.23, 4, 1, 2, '', '2024-10-22 20:18:49', '2024-10-22 20:47:49', '2024-10-22 22:33:49', '2024-10-22 22:53:49', NULL, '2024-10-22 20:03:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (629, 'DD2026050810285978bd814f', 445, 100, 25, 1, '商务型', 1, '北京市南山区街道', 118.591301, 40.852709, '北京市福田区街道', 118.421139, 40.914688, 3.79, 11.74, 4.22, 15.04, 15.04, 4.50, 10.54, 4, 1, 2, '', '2024-06-06 10:59:06', '2024-06-06 11:28:06', '2024-06-06 13:00:06', '2024-06-06 13:16:06', NULL, '2024-06-06 10:56:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (630, 'DD20260508102859fc74e592', 289, 37, 9, 1, '舒适型', 1, '深圳市海淀区街道', 116.687914, 39.587684, '重庆市南山区街道', 116.361966, 39.483950, 15.88, 40.69, 14.97, 57.67, 57.67, 9.53, 48.14, 4, 1, 2, '', '2024-09-15 04:54:34', '2024-09-15 05:01:34', '2024-09-15 06:20:34', '2024-09-15 06:23:34', NULL, '2024-09-15 04:51:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (631, 'DD202605081028590e074b87', 190, 95, 22, 2, '商务型', 2, '南京市南山区街道', 116.030177, 40.734256, '广州市西城区街道', 116.524726, 40.665253, 28.45, 101.30, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-07-12 08:57:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (632, 'DD2026050810285964146937', 351, 122, 32, 2, '商务型', 2, '成都市东城区街道', 119.494383, 39.066777, '深圳市南山区街道', 119.811597, 38.877692, 25.24, 67.30, 24.65, 93.61, 93.61, 3.98, 89.63, 4, 1, 2, '', '2025-12-12 01:01:29', '2025-12-12 01:17:29', '2025-12-12 01:32:29', '2025-12-12 01:42:29', NULL, '2025-12-12 00:52:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (633, 'DD20260508102859ea705bed', 80, 64, 17, 1, '经济型', 1, '武汉市朝阳区街道', 118.799740, 41.992311, '重庆市南山区街道', 118.801552, 42.139476, 12.72, 45.65, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-05-25 02:24:35', '2025-05-25 02:43:35', NULL, NULL, NULL, '2025-05-25 02:22:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (634, 'DD2026050810285961ebed27', 57, 140, 37, 2, '经济型', 1, '南京市东城区街道', 117.641256, 41.903357, '西安市东城区街道', 117.670983, 41.932052, 23.82, 90.50, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-10-27 14:16:48', NULL, NULL, NULL, NULL, '2024-10-27 14:14:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (635, 'DD20260508102859e432c96c', 480, 1, 1, 2, '商务型', 2, '深圳市朝阳区街道', 119.251004, 39.891353, '杭州市南山区街道', 119.548131, 39.870782, 6.23, 12.47, 6.10, 22.42, 22.42, 4.79, 17.63, 4, 1, 2, '', '2025-06-03 06:24:45', '2025-06-03 06:54:45', '2025-06-03 08:03:45', '2025-06-03 08:26:45', NULL, '2025-06-03 06:18:45', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (636, 'DD20260508102859b3d5f7d2', 153, 64, 17, 1, '舒适型', 3, '杭州市福田区街道', 119.678537, 40.904312, '西安市福田区街道', 120.021801, 40.720795, 16.48, 53.29, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-12-18 06:44:40', '2025-12-18 07:06:40', NULL, NULL, NULL, '2025-12-18 06:41:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (637, 'DD20260508102859188c9089', 467, 62, 16, 2, '舒适型', 1, '深圳市福田区街道', 119.142391, 39.620686, '深圳市朝阳区街道', 119.501872, 39.789159, 11.01, 36.86, 11.86, 43.30, 43.30, 10.35, 32.95, 4, 1, 1, '', '2026-02-20 15:03:16', '2026-02-20 15:17:16', '2026-02-20 16:15:16', '2026-02-20 16:27:16', NULL, '2026-02-20 14:54:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (638, 'DD20260508102859b96f8e79', 79, 137, 36, 2, '商务型', 3, '深圳市西城区街道', 117.728015, 39.704736, '南京市西城区街道', 117.561882, 39.638157, 4.40, 14.24, 4.51, 13.31, 13.31, 0.51, 12.80, 4, 1, 1, '', '2024-10-18 22:17:28', '2024-10-18 22:29:28', '2024-10-18 23:17:28', '2024-10-18 23:23:28', NULL, '2024-10-18 22:10:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (639, 'DD202605081028597fc7e499', 342, 100, 25, 2, '舒适型', 3, '深圳市朝阳区街道', 119.572017, 41.313545, '深圳市东城区街道', 119.513503, 41.239323, 20.43, 52.97, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-03-18 12:19:26', NULL, NULL, NULL, NULL, '2024-03-18 12:12:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (640, 'DD20260508102859daf0181f', 486, NULL, NULL, 2, '商务型', 2, '南京市福田区街道', 116.049677, 40.012891, '成都市东城区街道', 116.156330, 39.884505, 4.49, 17.61, 5.03, 14.96, 14.96, 4.03, 10.93, 6, 0, 0, '', '2025-07-18 15:26:18', '2025-07-18 15:54:18', '2025-07-18 17:13:18', NULL, NULL, '2025-07-18 15:24:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (641, 'DD20260508102859c1545709', 474, 157, 42, 1, '舒适型', 2, '重庆市南山区街道', 118.828650, 40.649527, '重庆市朝阳区街道', 118.758776, 40.844118, 27.31, 67.58, 24.86, 56.67, 56.67, 15.85, 40.82, 4, 1, 1, '', '2025-12-01 12:13:40', '2025-12-01 12:26:40', '2025-12-01 13:04:40', '2025-12-01 13:30:40', NULL, '2025-12-01 12:05:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (642, 'DD20260508102859283d5054', 139, 30, 6, 1, '商务型', 2, '成都市南山区街道', 116.337169, 39.942275, '广州市东城区街道', 116.450746, 40.125953, 9.33, 31.84, 10.62, 31.36, 31.36, 2.57, 28.79, 4, 1, 1, '', '2024-11-06 05:58:39', '2024-11-06 06:26:39', '2024-11-06 07:38:39', '2024-11-06 08:05:39', NULL, '2024-11-06 05:49:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (643, 'DD20260508102859f5a32811', 332, 23, 4, 1, '舒适型', 2, '成都市西城区街道', 116.379969, 40.291838, '重庆市朝阳区街道', 116.685737, 40.240093, 27.15, 97.08, 27.67, 55.73, 55.73, 0.15, 55.58, 4, 1, 2, '', '2024-10-15 17:58:17', '2024-10-15 18:12:17', '2024-10-15 19:15:17', '2024-10-15 19:35:17', NULL, '2024-10-15 17:57:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (644, 'DD202605081028596967a9a2', 56, 137, 36, 1, '舒适型', 2, '上海市西城区街道', 118.586357, 40.532354, '南京市朝阳区街道', 118.935865, 40.658580, 10.00, 25.27, 10.25, 24.61, 24.61, 6.19, 18.42, 5, 2, 0, '司机取消', '2025-01-18 03:29:35', '2025-01-18 03:42:35', '2025-01-18 04:18:35', NULL, '2025-01-18 03:49:35', '2025-01-18 03:16:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (645, 'DD20260508102859c38e64e0', 109, 49, 12, 1, '经济型', 3, '成都市南山区街道', 116.035108, 39.038778, '武汉市海淀区街道', 116.213974, 39.210352, 29.37, 91.83, 28.00, 105.52, 105.52, 21.35, 84.17, 4, 1, 1, '', '2024-04-24 18:38:08', '2024-04-24 19:04:08', '2024-04-24 20:51:08', '2024-04-24 21:00:08', NULL, '2024-04-24 18:31:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (646, 'DD2026050810285916cb29da', 117, 177, 46, 1, '舒适型', 2, '重庆市西城区街道', 116.045562, 41.430305, '西安市朝阳区街道', 116.315266, 41.639072, 7.40, 25.11, 7.46, 29.08, 29.08, 3.16, 25.92, 4, 1, 2, '', '2026-04-28 08:57:37', '2026-04-28 09:04:37', '2026-04-28 10:02:37', '2026-04-28 10:23:37', NULL, '2026-04-28 08:42:37', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (647, 'DD20260508102859bede5a44', 155, 108, 28, 1, '经济型', 3, '成都市海淀区街道', 119.246921, 41.738523, '南京市西城区街道', 119.450756, 41.962243, 9.88, 29.46, 10.00, 34.36, 34.36, 1.77, 32.59, 5, 2, 0, '司机取消', '2024-08-01 10:30:42', '2024-08-01 10:42:42', '2024-08-01 12:13:42', NULL, '2024-08-01 10:37:42', '2024-08-01 10:16:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (648, 'DD20260508102859ba710235', 127, 159, 43, 2, '经济型', 3, '南京市南山区街道', 118.328261, 41.428946, '深圳市朝阳区街道', 118.192663, 41.665557, 17.46, 60.11, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-06-24 22:29:17', '2025-06-24 22:35:17', NULL, NULL, NULL, '2025-06-24 22:19:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (649, 'DD202605081028593fa12688', 404, 45, 11, 1, '舒适型', 3, '重庆市东城区街道', 116.067058, 39.210844, '杭州市朝阳区街道', 116.248884, 39.307424, 28.43, 57.92, 33.78, 124.68, 124.68, 11.61, 113.07, 4, 1, 2, '', '2026-03-03 19:10:34', '2026-03-03 19:38:34', '2026-03-03 20:08:34', '2026-03-03 20:21:34', NULL, '2026-03-03 19:03:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (650, 'DD202605081028594e3a030c', 129, 62, 16, 1, '商务型', 1, '西安市东城区街道', 118.295585, 40.711575, '深圳市西城区街道', 118.435512, 40.663142, 11.64, 45.49, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-03-25 18:48:49', '2024-03-25 19:08:49', NULL, NULL, NULL, '2024-03-25 18:34:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (651, 'DD2026050810285984df619e', 453, 141, 38, 2, '舒适型', 1, '上海市福田区街道', 118.981024, 41.881918, '广州市南山区街道', 119.107168, 41.784127, 14.25, 41.91, 15.26, 37.35, 37.35, 2.95, 34.40, 4, 1, 2, '', '2025-12-17 07:06:16', '2025-12-17 07:13:16', '2025-12-17 07:26:16', '2025-12-17 07:49:16', NULL, '2025-12-17 06:55:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (652, 'DD20260508102859f2e6645f', 179, 137, 36, 1, '商务型', 3, '重庆市东城区街道', 119.740967, 40.075513, '杭州市南山区街道', 119.460369, 40.237403, 13.31, 47.34, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-04-12 04:34:51', '2026-04-12 04:47:51', NULL, NULL, NULL, '2026-04-12 04:23:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (653, 'DD202605081028594bcdeb37', 186, 23, 4, 2, '经济型', 3, '西安市西城区街道', 116.121217, 40.231445, '南京市福田区街道', 115.987959, 40.108334, 23.23, 72.18, 21.98, 84.58, 84.58, 9.55, 75.03, 4, 1, 1, '', '2024-01-16 07:25:57', '2024-01-16 07:37:57', '2024-01-16 09:31:57', '2024-01-16 09:49:57', NULL, '2024-01-16 07:20:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (654, 'DD20260508102859d5dfc773', 318, 11, 3, 1, '舒适型', 3, '南京市海淀区街道', 116.067409, 39.519823, '南京市福田区街道', 116.068806, 39.247228, 24.49, 69.60, 22.76, 78.53, 78.53, 13.73, 64.80, 4, 1, 1, '', '2024-08-13 04:02:06', '2024-08-13 04:26:06', '2024-08-13 06:10:06', '2024-08-13 06:36:06', NULL, '2024-08-13 03:51:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (655, 'DD20260508102859bc94b766', 217, 100, 25, 1, '商务型', 2, '广州市朝阳区街道', 119.402425, 39.048295, '武汉市朝阳区街道', 118.908844, 39.273571, 10.37, 40.76, 12.16, 25.86, 25.86, 2.73, 23.13, 4, 1, 1, '', '2025-03-06 02:24:39', '2025-03-06 02:43:39', '2025-03-06 03:54:39', '2025-03-06 04:04:39', NULL, '2025-03-06 02:18:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (656, 'DD20260508102859615aeb26', 395, NULL, NULL, 2, '经济型', 3, '深圳市福田区街道', 119.840981, 40.735078, '成都市东城区街道', 119.346512, 40.748649, 25.42, 93.39, 28.03, 97.51, 97.51, 21.08, 76.43, 4, 1, 2, '', '2025-04-06 01:49:51', '2025-04-06 01:57:51', '2025-04-06 03:52:51', '2025-04-06 04:21:51', NULL, '2025-04-06 01:35:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (657, 'DD202605081028596e4b57f9', 246, 62, 16, 1, '经济型', 3, '南京市东城区街道', 118.174128, 39.547786, '武汉市海淀区街道', 118.320919, 39.744993, 13.10, 42.15, 14.17, 56.64, 56.64, 13.20, 43.44, 6, 0, 0, '', '2025-09-28 23:11:02', '2025-09-28 23:37:02', '2025-09-29 01:06:02', NULL, NULL, '2025-09-28 23:04:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (658, 'DD202605081028598fd75747', 2, 137, 36, 1, '商务型', 1, '西安市朝阳区街道', 118.388255, 40.548376, '南京市西城区街道', 118.294003, 40.255837, 2.17, 5.27, 2.40, 6.89, 6.89, 0.63, 6.26, 4, 1, 1, '', '2025-02-20 03:56:42', '2025-02-20 04:25:42', '2025-02-20 05:33:42', '2025-02-20 05:53:42', NULL, '2025-02-20 03:45:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (659, 'DD202605081028592d8d53b2', 446, 94, 21, 1, '经济型', 2, '深圳市东城区街道', 119.860900, 41.914242, '成都市东城区街道', 119.614621, 41.887448, 18.34, 69.87, 20.52, 47.76, 47.76, 9.13, 38.63, 4, 1, 1, '', '2026-05-07 00:13:04', '2026-05-07 00:40:04', '2026-05-07 02:24:04', '2026-05-07 02:49:04', NULL, '2026-05-07 00:10:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (660, 'DD20260508102859e79f9e65', 223, 98, 23, 2, '经济型', 3, '南京市福田区街道', 116.395550, 40.172264, '西安市西城区街道', 116.805216, 39.999276, 22.33, 85.92, 20.69, 57.53, 57.53, 4.63, 52.90, 4, 1, 2, '', '2025-05-29 20:11:23', '2025-05-29 20:23:23', '2025-05-29 21:23:23', '2025-05-29 21:31:23', NULL, '2025-05-29 20:06:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (661, 'DD20260508102859b1318331', 495, 141, 38, 1, '舒适型', 2, '北京市福田区街道', 119.231913, 39.847344, '南京市南山区街道', 118.877346, 39.574629, 17.83, 71.09, 19.85, 74.05, 74.05, 6.58, 67.47, 6, 0, 0, '', '2024-05-22 01:56:15', '2024-05-22 02:17:15', '2024-05-22 02:53:15', NULL, NULL, '2024-05-22 01:53:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (662, 'DD20260508102859e8dd472d', 473, 106, 27, 1, '舒适型', 2, '南京市南山区街道', 116.735587, 40.646224, '深圳市福田区街道', 116.857738, 40.462911, 26.48, 78.12, 28.69, 93.40, 93.40, 13.49, 79.91, 4, 1, 2, '', '2024-06-26 16:21:28', '2024-06-26 16:34:28', '2024-06-26 18:07:28', '2024-06-26 18:16:28', NULL, '2024-06-26 16:07:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (663, 'DD202605081028596424ee52', 250, 141, 38, 2, '舒适型', 2, '杭州市东城区街道', 116.439512, 39.593215, '成都市南山区街道', 116.553514, 39.662688, 27.46, 70.25, 29.22, 70.79, 70.79, 9.59, 61.20, 4, 1, 1, '', '2025-09-06 13:13:16', '2025-09-06 13:38:16', '2025-09-06 14:01:16', '2025-09-06 14:29:16', NULL, '2025-09-06 13:04:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (664, 'DD20260508102859179dfa2a', 352, NULL, NULL, 1, '舒适型', 3, '重庆市东城区街道', 116.412353, 39.583444, '重庆市东城区街道', 116.162921, 39.597686, 17.59, 51.02, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-08-30 03:57:41', '2024-08-30 04:14:41', NULL, NULL, NULL, '2024-08-30 03:51:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (665, 'DD20260508102859a030b712', 234, 150, 40, 2, '经济型', 3, '成都市南山区街道', 118.132049, 41.621067, '西安市南山区街道', 118.420761, 41.561282, 22.68, 79.69, 26.94, 91.83, 91.83, 22.74, 69.09, 4, 1, 2, '', '2025-06-18 09:05:55', '2025-06-18 09:21:55', '2025-06-18 10:17:55', '2025-06-18 10:23:55', NULL, '2025-06-18 08:53:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (666, 'DD20260508102859d9db800b', 69, 11, 3, 2, '商务型', 2, '西安市东城区街道', 117.440034, 40.694634, '南京市朝阳区街道', 117.130678, 40.949488, 17.23, 61.97, 19.31, 41.40, 41.40, 6.48, 34.92, 4, 1, 1, '', '2026-02-25 01:28:56', '2026-02-25 01:35:56', '2026-02-25 02:39:56', '2026-02-25 02:57:56', NULL, '2026-02-25 01:24:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (667, 'DD20260508102859885700b3', 446, 150, 40, 1, '商务型', 3, '南京市福田区街道', 118.885145, 41.783222, '广州市南山区街道', 118.917256, 41.570092, 22.83, 90.43, 25.21, 81.89, 81.89, 2.15, 79.74, 4, 1, 1, '', '2026-01-17 22:56:53', '2026-01-17 23:19:53', '2026-01-18 01:18:53', '2026-01-18 01:35:53', NULL, '2026-01-17 22:45:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (668, 'DD20260508102859ced8d8a2', 260, 32, 7, 2, '商务型', 2, '上海市朝阳区街道', 119.140006, 41.334564, '西安市朝阳区街道', 118.753929, 41.204113, 29.79, 90.97, 27.54, 90.48, 90.48, 6.33, 84.15, 5, 2, 0, '司机取消', '2026-04-27 21:24:24', '2026-04-27 21:40:24', '2026-04-27 22:17:24', NULL, '2026-04-27 21:22:24', '2026-04-27 21:21:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (669, 'DD202605081028597139386b', 27, 72, 18, 1, '商务型', 1, '武汉市西城区街道', 119.541838, 40.444838, '成都市福田区街道', 119.535988, 40.345940, 10.97, 42.19, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-09-16 04:20:33', NULL, NULL, NULL, NULL, '2024-09-16 04:10:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (670, 'DD2026050810285913a9273a', 54, NULL, NULL, 1, '商务型', 2, '武汉市东城区街道', 117.808687, 40.071477, '广州市朝阳区街道', 117.733144, 40.129423, 3.38, 13.22, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-01-29 09:39:23', NULL, NULL, NULL, NULL, '2025-01-29 09:24:23', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (671, 'DD2026050810285984b6035b', 423, 30, 6, 1, '商务型', 1, '重庆市西城区街道', 118.870331, 40.347705, '广州市西城区街道', 119.057735, 40.193023, 12.26, 46.79, 11.98, 34.62, 34.62, 3.06, 31.56, 4, 1, 1, '', '2024-03-30 16:37:43', '2024-03-30 17:02:43', '2024-03-30 18:16:43', '2024-03-30 18:45:43', NULL, '2024-03-30 16:29:43', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (672, 'DD20260508102859dad6e0bc', 264, 108, 28, 1, '舒适型', 2, '西安市东城区街道', 116.851650, 41.620518, '南京市南山区街道', 117.066295, 41.858831, 25.45, 79.45, 28.66, 94.39, 94.39, 24.23, 70.16, 4, 1, 1, '', '2025-11-09 20:37:24', '2025-11-09 20:46:24', '2025-11-09 22:27:24', '2025-11-09 22:40:24', NULL, '2025-11-09 20:32:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (673, 'DD2026050810285903d15223', 486, 141, 38, 1, '经济型', 3, '杭州市西城区街道', 116.087881, 39.886636, '武汉市东城区街道', 115.891367, 39.973757, 11.55, 38.61, 13.69, 47.84, 47.84, 1.08, 46.76, 4, 1, 1, '', '2026-04-15 14:17:44', '2026-04-15 14:39:44', '2026-04-15 15:05:44', '2026-04-15 15:13:44', NULL, '2026-04-15 14:04:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (674, 'DD20260508102859b0748dd8', 285, NULL, NULL, 1, '舒适型', 2, '北京市南山区街道', 119.685386, 40.038559, '成都市南山区街道', 119.329134, 40.094317, 1.69, 6.49, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-03-02 03:50:53', '2024-03-02 03:59:53', NULL, NULL, NULL, '2024-03-02 03:45:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (675, 'DD20260508102859263951cb', 19, 100, 25, 1, '经济型', 3, '深圳市西城区街道', 117.493332, 41.946273, '成都市海淀区街道', 117.444760, 41.806416, 19.02, 56.49, 17.29, 40.49, 40.49, 4.54, 35.95, 4, 1, 1, '', '2025-08-29 07:37:49', '2025-08-29 07:59:49', '2025-08-29 09:32:49', '2025-08-29 09:54:49', NULL, '2025-08-29 07:28:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (676, 'DD20260508102859602e86f9', 31, 95, 22, 2, '商务型', 2, '深圳市东城区街道', 117.109464, 39.862689, '西安市南山区街道', 116.933038, 40.028394, 4.82, 10.11, 4.91, 10.65, 10.65, 2.20, 8.45, 4, 1, 2, '', '2026-01-07 17:36:41', '2026-01-07 17:53:41', '2026-01-07 19:02:41', '2026-01-07 19:05:41', NULL, '2026-01-07 17:30:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (677, 'DD20260508102859d6109ca4', 2, 43, 10, 1, '舒适型', 2, '西安市西城区街道', 118.607693, 40.595477, '上海市朝阳区街道', 119.047937, 40.433649, 17.29, 65.68, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-06-17 10:37:09', '2025-06-17 11:03:09', NULL, NULL, NULL, '2025-06-17 10:34:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (678, 'DD20260508102859bac4c59b', 60, 100, 25, 1, '商务型', 3, '杭州市海淀区街道', 116.052520, 40.782938, '西安市福田区街道', 116.346294, 40.710897, 3.03, 9.00, 3.41, 12.10, 12.10, 2.38, 9.72, 4, 1, 2, '', '2025-03-22 17:02:22', '2025-03-22 17:26:22', '2025-03-22 18:31:22', '2025-03-22 18:40:22', NULL, '2025-03-22 17:00:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (679, 'DD202605081028590e4b9b0b', 259, 180, 47, 2, '舒适型', 3, '成都市朝阳区街道', 118.061704, 41.411417, '南京市福田区街道', 118.101638, 41.302569, 28.61, 68.19, 29.55, 98.26, 98.26, 21.71, 76.55, 5, 2, 0, '用户取消', '2025-03-02 10:22:40', '2025-03-02 10:45:40', '2025-03-02 12:13:40', NULL, '2025-03-02 10:59:40', '2025-03-02 10:18:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (680, 'DD202605081028597187049a', 265, 150, 40, 1, '舒适型', 2, '广州市海淀区街道', 116.432534, 40.309328, '广州市朝阳区街道', 116.329202, 40.264092, 14.00, 38.97, 14.44, 42.44, 42.44, 4.08, 38.36, 4, 1, 1, '', '2024-11-29 19:46:57', '2024-11-29 19:51:57', '2024-11-29 21:30:57', '2024-11-29 21:44:57', NULL, '2024-11-29 19:38:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (681, 'DD202605081028593919fd43', 285, 122, 32, 2, '舒适型', 3, '重庆市南山区街道', 117.807057, 39.649798, '西安市西城区街道', 117.600117, 39.764096, 3.40, 8.39, 3.18, 8.50, 8.50, 0.32, 8.18, 4, 1, 1, '', '2024-07-04 15:06:32', '2024-07-04 15:31:32', '2024-07-04 17:10:32', '2024-07-04 17:16:32', NULL, '2024-07-04 15:02:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (682, 'DD20260508102859779e60ee', 50, 94, 21, 2, '舒适型', 3, '成都市西城区街道', 119.240177, 40.010390, '武汉市海淀区街道', 118.751452, 40.014958, 11.99, 36.47, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-05-19 05:42:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (683, 'DD20260508102859dcf90b43', 140, 11, 3, 1, '舒适型', 1, '广州市南山区街道', 119.474928, 40.707367, '深圳市福田区街道', 119.868658, 40.653286, 2.24, 6.85, 2.31, 7.95, 7.95, 0.02, 7.93, 5, 2, 0, '司机取消', '2024-10-18 02:28:21', '2024-10-18 02:38:21', '2024-10-18 04:23:21', NULL, '2024-10-18 02:37:21', '2024-10-18 02:24:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (684, 'DD2026050810285945abe616', 285, 11, 3, 2, '商务型', 3, '北京市海淀区街道', 116.847632, 40.506760, '西安市南山区街道', 116.395301, 40.290913, 4.43, 11.30, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-02-10 03:19:09', NULL, NULL, NULL, NULL, '2026-02-10 03:18:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (685, 'DD20260508102859ad7c31a3', 100, 171, 45, 1, '商务型', 2, '成都市朝阳区街道', 116.538696, 40.178534, '杭州市海淀区街道', 116.424571, 40.059810, 23.87, 50.89, 23.42, 63.49, 63.49, 10.09, 53.40, 4, 1, 2, '', '2025-12-07 02:06:59', '2025-12-07 02:26:59', '2025-12-07 02:38:59', '2025-12-07 02:53:59', NULL, '2025-12-07 01:51:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (686, 'DD20260508102859a312c848', 81, 94, 21, 2, '商务型', 1, '深圳市东城区街道', 117.403858, 41.055186, '上海市朝阳区街道', 117.621124, 40.830980, 12.11, 41.97, 11.40, 45.27, 45.27, 13.15, 32.12, 4, 1, 2, '', '2026-01-21 09:56:36', '2026-01-21 10:03:36', '2026-01-21 10:50:36', '2026-01-21 11:12:36', NULL, '2026-01-21 09:50:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (687, 'DD2026050810285915c342c1', 449, 94, 21, 1, '商务型', 1, '成都市东城区街道', 116.253639, 39.710628, '西安市西城区街道', 116.434370, 39.758436, 3.96, 13.53, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-05-28 17:06:49', '2024-05-28 17:16:49', NULL, NULL, NULL, '2024-05-28 17:02:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (688, 'DD20260508102859ebe770ed', 4, 45, 11, 1, '经济型', 1, '杭州市西城区街道', 117.847829, 39.448387, '武汉市朝阳区街道', 117.841639, 39.416212, 8.04, 23.16, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-05-21 07:39:59', NULL, NULL, NULL, NULL, '2025-05-21 07:25:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (689, 'DD202605081028597040f08d', 477, 45, 11, 1, '舒适型', 3, '南京市朝阳区街道', 119.757624, 41.049689, '深圳市南山区街道', 120.188100, 41.205643, 16.74, 49.82, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-11-26 18:11:42', '2024-11-26 18:39:42', NULL, NULL, NULL, '2024-11-26 18:02:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (690, 'DD20260508102859fc55ec2b', 204, NULL, NULL, 2, '舒适型', 3, '深圳市西城区街道', 119.661112, 41.172510, '南京市海淀区街道', 120.065345, 41.088396, 5.85, 20.38, 5.49, 19.99, 19.99, 0.42, 19.57, 5, 2, 0, '用户取消', '2024-03-24 14:51:38', '2024-03-24 15:17:38', '2024-03-24 16:00:38', NULL, '2024-03-24 15:05:38', '2024-03-24 14:39:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (691, 'DD20260508102859f9ff293e', 293, 36, 8, 2, '经济型', 3, '广州市福田区街道', 119.576622, 41.273211, '杭州市福田区街道', 119.903035, 41.563888, 16.55, 43.48, 19.54, 58.44, 58.44, 4.71, 53.73, 4, 1, 2, '', '2026-03-01 17:09:36', '2026-03-01 17:26:36', '2026-03-01 17:42:36', '2026-03-01 17:44:36', NULL, '2026-03-01 16:58:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (692, 'DD2026050810285979f14d39', 158, 194, 51, 1, '商务型', 1, '深圳市东城区街道', 117.789426, 40.516141, '西安市海淀区街道', 117.697159, 40.632238, 8.96, 19.93, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-11-21 21:24:22', NULL, NULL, NULL, NULL, '2024-11-21 21:16:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (693, 'DD20260508102859bd75a468', 183, 140, 37, 2, '商务型', 2, '广州市朝阳区街道', 116.166989, 40.600049, '西安市海淀区街道', 116.434216, 40.315451, 12.82, 46.31, 12.84, 44.63, 44.63, 12.94, 31.69, 4, 1, 1, '', '2024-02-21 04:02:20', '2024-02-21 04:24:20', '2024-02-21 05:10:20', '2024-02-21 05:36:20', NULL, '2024-02-21 03:51:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (694, 'DD202605081028592f2d37d4', 321, 98, 23, 1, '商务型', 3, '重庆市东城区街道', 118.146612, 41.937851, '广州市朝阳区街道', 118.246554, 41.792800, 27.09, 76.42, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-07-06 06:41:50', NULL, NULL, NULL, NULL, '2025-07-06 06:37:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (695, 'DD20260508102859d19db743', 263, 171, 45, 1, '商务型', 2, '成都市朝阳区街道', 119.862636, 39.290521, '武汉市朝阳区街道', 120.324578, 39.220627, 19.07, 45.64, 17.64, 44.11, 44.11, 4.67, 39.44, 4, 1, 1, '', '2025-11-26 01:57:51', '2025-11-26 02:21:51', '2025-11-26 03:21:51', '2025-11-26 03:43:51', NULL, '2025-11-26 01:55:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (696, 'DD20260508102859f4a36c45', 98, 137, 36, 1, '经济型', 2, '成都市东城区街道', 117.987768, 39.307066, '重庆市福田区街道', 118.366772, 39.144339, 22.16, 86.07, 24.75, 91.00, 91.00, 7.44, 83.56, 4, 1, 2, '', '2025-01-19 16:42:36', '2025-01-19 16:52:36', '2025-01-19 17:32:36', '2025-01-19 18:01:36', NULL, '2025-01-19 16:27:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (697, 'DD2026050810285913059961', 394, NULL, NULL, 2, '舒适型', 1, '西安市福田区街道', 117.823619, 39.775681, '重庆市福田区街道', 118.063020, 39.541889, 24.07, 81.95, 24.88, 86.25, 86.25, 4.88, 81.37, 5, 2, 0, '用户取消', '2025-11-16 07:07:00', '2025-11-16 07:18:00', '2025-11-16 08:25:00', NULL, '2025-11-16 07:30:00', '2025-11-16 06:52:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (698, 'DD2026050810285902b4217b', 368, 116, 31, 2, '商务型', 2, '北京市海淀区街道', 117.194395, 40.755897, '西安市朝阳区街道', 117.291175, 40.752010, 20.38, 58.55, 23.83, 77.88, 77.88, 16.04, 61.84, 4, 1, 1, '', '2025-04-20 09:21:44', '2025-04-20 09:33:44', '2025-04-20 11:18:44', '2025-04-20 11:24:44', NULL, '2025-04-20 09:07:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (699, 'DD2026050810285919485ff6', 276, 11, 3, 2, '经济型', 3, '杭州市东城区街道', 116.823335, 40.276897, '上海市南山区街道', 117.060691, 40.517259, 19.43, 53.53, 21.95, 79.37, 79.37, 21.77, 57.60, 4, 1, 2, '', '2024-08-09 08:12:21', '2024-08-09 08:29:21', '2024-08-09 09:43:21', '2024-08-09 09:52:21', NULL, '2024-08-09 08:02:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (700, 'DD2026050810285947d54446', 28, 43, 10, 2, '经济型', 2, '重庆市福田区街道', 117.345291, 41.879937, '南京市东城区街道', 117.158402, 42.124139, 7.86, 30.31, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-07-13 03:44:55', '2024-07-13 03:52:55', NULL, NULL, NULL, '2024-07-13 03:35:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (701, 'DD202605081028597adbe5cc', 41, 98, 23, 2, '商务型', 1, '西安市朝阳区街道', 116.917267, 40.863834, '南京市南山区街道', 116.556085, 41.098514, 2.35, 8.76, 2.41, 5.30, 5.30, 0.59, 4.71, 4, 1, 1, '', '2025-08-09 01:52:48', '2025-08-09 02:15:48', '2025-08-09 02:36:48', '2025-08-09 02:50:48', NULL, '2025-08-09 01:42:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (702, 'DD2026050810285971f6ab74', 499, 45, 11, 1, '经济型', 2, '广州市福田区街道', 118.310269, 39.561305, '北京市南山区街道', 118.204512, 39.658461, 28.75, 110.92, 32.29, 86.99, 86.99, 13.41, 73.58, 4, 1, 2, '', '2025-12-19 13:08:41', '2025-12-19 13:32:41', '2025-12-19 14:52:41', '2025-12-19 15:18:41', NULL, '2025-12-19 12:53:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (703, 'DD20260508102859ca8d194e', 35, 110, 29, 1, '舒适型', 2, '北京市海淀区街道', 117.343104, 41.582342, '广州市西城区街道', 116.967548, 41.499076, 14.73, 32.03, 13.56, 33.75, 33.75, 8.74, 25.01, 4, 1, 1, '', '2024-08-03 18:29:52', '2024-08-03 18:39:52', '2024-08-03 20:17:52', '2024-08-03 20:40:52', NULL, '2024-08-03 18:27:52', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (704, 'DD20260508102859dfe7c896', 169, 98, 23, 1, '商务型', 2, '深圳市南山区街道', 117.618614, 40.230332, '杭州市海淀区街道', 117.715131, 40.350505, 19.37, 65.37, 22.26, 81.91, 81.91, 9.70, 72.21, 5, 2, 0, '用户取消', '2025-01-30 16:46:55', '2025-01-30 17:08:55', '2025-01-30 17:53:55', NULL, '2025-01-30 17:26:55', '2025-01-30 16:37:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (705, 'DD20260508102859fa8599f7', 469, 116, 31, 2, '商务型', 3, '杭州市南山区街道', 119.927644, 39.144599, '杭州市海淀区街道', 120.109897, 39.253704, 29.32, 97.34, 31.52, 79.96, 79.96, 13.62, 66.34, 5, 2, 0, '司机取消', '2025-01-08 13:59:01', '2025-01-08 14:27:01', '2025-01-08 15:52:01', NULL, '2025-01-08 13:54:01', '2025-01-08 13:48:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (706, 'DD20260508102859f439c931', 139, 64, 17, 2, '商务型', 1, '南京市东城区街道', 116.660782, 40.109052, '成都市海淀区街道', 117.048993, 40.147461, 6.96, 16.47, 6.32, 19.18, 19.18, 3.42, 15.76, 5, 2, 0, '司机取消', '2025-10-25 19:04:29', '2025-10-25 19:30:29', '2025-10-25 21:26:29', NULL, '2025-10-25 19:21:29', '2025-10-25 19:01:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (707, 'DD20260508102859084c34e8', 5, NULL, NULL, 2, '商务型', 1, '南京市东城区街道', 116.880292, 40.935554, '广州市南山区街道', 116.731350, 40.795953, 9.31, 31.23, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-12-10 14:30:06', NULL, NULL, NULL, NULL, '2025-12-10 14:18:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (708, 'DD2026050810285969d9d5cd', 165, 110, 29, 2, '商务型', 3, '深圳市朝阳区街道', 118.873076, 41.243795, '西安市西城区街道', 118.719170, 41.256686, 11.37, 32.30, 12.27, 47.98, 47.98, 13.12, 34.86, 6, 0, 0, '', '2025-09-01 06:34:34', '2025-09-01 06:50:34', '2025-09-01 08:17:34', NULL, NULL, '2025-09-01 06:21:34', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (709, 'DD20260508102859ff4e9edb', 50, 36, 8, 2, '经济型', 2, '上海市朝阳区街道', 116.944769, 41.519307, '成都市朝阳区街道', 117.112461, 41.489199, 15.09, 38.52, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-06-02 23:57:40', '2024-06-03 00:13:40', NULL, NULL, NULL, '2024-06-02 23:51:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (710, 'DD20260508102859b11e0552', 337, NULL, NULL, 2, '舒适型', 2, '北京市福田区街道', 118.356702, 41.984315, '武汉市朝阳区街道', 117.965073, 42.078587, 17.00, 49.56, 19.17, 54.72, 54.72, 12.86, 41.86, 4, 1, 1, '', '2025-02-12 03:04:46', '2025-02-12 03:18:46', '2025-02-12 04:48:46', '2025-02-12 05:04:46', NULL, '2025-02-12 03:00:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (711, 'DD2026050810285952cf8f8a', 245, 108, 28, 2, '经济型', 3, '成都市福田区街道', 118.438268, 40.405938, '成都市福田区街道', 118.568726, 40.339346, 14.38, 51.69, 15.81, 54.34, 54.34, 13.77, 40.57, 4, 1, 1, '', '2025-10-29 16:33:55', '2025-10-29 16:43:55', '2025-10-29 18:22:55', '2025-10-29 18:27:55', NULL, '2025-10-29 16:23:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (712, 'DD2026050810285910981d4e', 281, 150, 40, 1, '商务型', 1, '广州市南山区街道', 118.324214, 40.293685, '深圳市福田区街道', 118.283518, 40.152259, 9.57, 21.83, 9.30, 28.04, 28.04, 5.70, 22.34, 4, 1, 2, '', '2024-01-13 22:22:46', '2024-01-13 22:40:46', '2024-01-14 00:09:46', '2024-01-14 00:19:46', NULL, '2024-01-13 22:21:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (713, 'DD20260508102859235fda29', 415, 157, 42, 2, '经济型', 3, '重庆市福田区街道', 116.398507, 41.913514, '南京市福田区街道', 116.521876, 41.738040, 7.10, 20.21, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-06-21 16:35:10', NULL, NULL, NULL, NULL, '2024-06-21 16:31:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (714, 'DD2026050810285960fbd9da', 442, 108, 28, 2, '经济型', 2, '重庆市西城区街道', 116.424692, 41.620548, '西安市福田区街道', 116.838313, 41.342158, 8.22, 32.73, 8.34, 18.24, 18.24, 0.13, 18.11, 4, 1, 2, '', '2024-11-27 08:58:20', '2024-11-27 09:25:20', '2024-11-27 10:30:20', '2024-11-27 10:40:20', NULL, '2024-11-27 08:56:20', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (715, 'DD20260508102859ad2b4fb7', 413, 62, 16, 1, '经济型', 3, '广州市东城区街道', 118.990993, 39.577612, '广州市福田区街道', 118.615344, 39.323187, 5.73, 17.83, 6.78, 25.89, 25.89, 5.49, 20.40, 5, 2, 0, '系统取消', '2025-07-03 14:51:46', '2025-07-03 15:14:46', '2025-07-03 15:24:46', NULL, '2025-07-03 14:56:46', '2025-07-03 14:39:46', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (716, 'DD20260508102859c62ce147', 175, 106, 27, 2, '经济型', 1, '上海市海淀区街道', 118.797220, 39.151714, '南京市东城区街道', 118.422879, 38.952107, 27.31, 72.71, 30.46, 93.94, 93.94, 18.48, 75.46, 4, 1, 1, '', '2024-08-16 12:02:09', '2024-08-16 12:21:09', '2024-08-16 13:15:09', '2024-08-16 13:39:09', NULL, '2024-08-16 11:48:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (717, 'DD202605081028598090f2f9', 180, 23, 4, 2, '舒适型', 3, '北京市东城区街道', 117.812484, 39.841036, '广州市福田区街道', 118.073710, 39.605560, 29.92, 113.65, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-10-06 23:15:01', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (718, 'DD20260508102859d6a26ef9', 130, 159, 43, 1, '舒适型', 1, '上海市南山区街道', 118.565097, 40.666311, '武汉市西城区街道', 118.531873, 40.614224, 21.81, 52.75, 21.46, 52.06, 52.06, 7.65, 44.41, 5, 2, 0, '用户取消', '2024-03-30 18:51:54', '2024-03-30 19:20:54', '2024-03-30 21:13:54', NULL, '2024-03-30 19:30:54', '2024-03-30 18:36:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (719, 'DD20260508102859cdfb29fd', 103, 1, 1, 2, '经济型', 3, '北京市海淀区街道', 117.197297, 41.905221, '武汉市朝阳区街道', 117.139467, 41.616097, 25.06, 85.49, 26.51, 89.22, 89.22, 8.00, 81.22, 4, 1, 2, '', '2025-01-07 08:04:25', '2025-01-07 08:30:25', '2025-01-07 09:44:25', '2025-01-07 10:14:25', NULL, '2025-01-07 07:59:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (720, 'DD20260508102859565b27f4', 157, 185, 49, 2, '舒适型', 2, '深圳市西城区街道', 118.769279, 40.801457, '成都市东城区街道', 118.901216, 40.925771, 11.65, 29.34, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-05-24 22:02:02', '2025-05-24 22:31:02', NULL, NULL, NULL, '2025-05-24 21:54:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (721, 'DD202605081028590ea59277', 205, 62, 16, 1, '舒适型', 2, '武汉市南山区街道', 117.966279, 41.466418, '杭州市南山区街道', 118.131637, 41.542677, 24.13, 60.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-04-25 19:48:27', '2026-04-25 20:01:27', NULL, NULL, NULL, '2026-04-25 19:46:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (722, 'DD20260508102859cd07a2f8', 490, 94, 21, 2, '商务型', 2, '西安市海淀区街道', 116.950496, 39.071045, '重庆市海淀区街道', 117.188801, 39.205129, 27.39, 96.54, 30.18, 76.12, 76.12, 15.03, 61.09, 4, 1, 2, '', '2025-09-17 22:29:10', '2025-09-17 22:55:10', '2025-09-18 00:38:10', '2025-09-18 00:48:10', NULL, '2025-09-17 22:23:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (723, 'DD20260508102859f6104f51', 4, 98, 23, 1, '舒适型', 1, '南京市海淀区街道', 116.863208, 39.325809, '成都市东城区街道', 116.491827, 39.514063, 17.08, 54.14, 15.97, 42.92, 42.92, 10.59, 32.33, 4, 1, 2, '', '2024-04-01 11:54:10', '2024-04-01 12:16:10', '2024-04-01 13:48:10', '2024-04-01 14:16:10', NULL, '2024-04-01 11:51:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (724, 'DD2026050810285952fbec38', 446, 106, 27, 2, '舒适型', 3, '北京市南山区街道', 117.368256, 40.096962, '深圳市海淀区街道', 117.004411, 39.895639, 13.57, 33.18, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-07-20 09:17:14', '2024-07-20 09:42:14', NULL, NULL, NULL, '2024-07-20 09:12:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (725, 'DD20260508102859bed95089', 323, 194, 51, 1, '商务型', 1, '成都市朝阳区街道', 118.063888, 40.197882, '北京市福田区街道', 117.693376, 39.956457, 18.72, 41.45, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-04-26 18:43:16', NULL, NULL, NULL, NULL, '2026-04-26 18:31:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (726, 'DD202605081028594fd17a06', 20, NULL, NULL, 1, '商务型', 3, '成都市海淀区街道', 118.859189, 41.366021, '深圳市西城区街道', 118.765113, 41.554971, 11.42, 32.43, 10.35, 31.34, 31.34, 4.08, 27.26, 5, 2, 0, '用户取消', '2026-03-23 01:19:00', '2026-03-23 01:41:00', '2026-03-23 02:48:00', NULL, '2026-03-23 01:15:00', '2026-03-23 01:12:00', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (727, 'DD20260508102859948f88f5', 278, 108, 28, 1, '商务型', 2, '上海市南山区街道', 116.205776, 40.065561, '南京市南山区街道', 116.613307, 39.947218, 10.98, 25.41, 10.33, 27.76, 27.76, 3.18, 24.58, 5, 2, 0, '系统取消', '2026-03-12 19:36:22', '2026-03-12 19:53:22', '2026-03-12 20:40:22', NULL, '2026-03-12 19:54:22', '2026-03-12 19:25:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (728, 'DD2026050810285925f27684', 117, 135, 35, 2, '舒适型', 2, '杭州市福田区街道', 116.311548, 41.411060, '武汉市南山区街道', 116.588863, 41.345377, 9.79, 25.82, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-01-05 13:47:12', '2024-01-05 14:14:12', NULL, NULL, NULL, '2024-01-05 13:37:12', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (729, 'DD2026050810285958772e96', 83, 95, 22, 1, '商务型', 2, '成都市朝阳区街道', 118.020565, 41.464976, '杭州市海淀区街道', 118.188109, 41.648506, 29.59, 60.87, 29.97, 84.60, 84.60, 0.95, 83.65, 4, 1, 2, '', '2025-07-22 18:11:08', '2025-07-22 18:27:08', '2025-07-22 20:07:08', '2025-07-22 20:12:08', NULL, '2025-07-22 18:07:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (730, 'DD20260508102859978fe1f3', 366, 94, 21, 2, '商务型', 2, '上海市海淀区街道', 119.482858, 40.918646, '北京市西城区街道', 119.067642, 40.660882, 15.82, 51.30, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-04-19 15:25:55', NULL, NULL, NULL, NULL, '2026-04-19 15:12:55', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (731, 'DD2026050810285982f6d738', 477, 180, 47, 1, '经济型', 1, '上海市西城区街道', 118.340606, 40.822580, '西安市海淀区街道', 118.424977, 41.045112, 20.64, 53.18, 24.54, 50.83, 50.83, 14.66, 36.17, 5, 2, 0, '用户取消', '2024-01-02 08:01:08', '2024-01-02 08:24:08', '2024-01-02 10:02:08', NULL, '2024-01-02 07:50:08', '2024-01-02 07:47:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (732, 'DD2026050810285908fb7828', 209, 157, 42, 1, '经济型', 3, '北京市东城区街道', 117.799369, 39.035594, '深圳市南山区街道', 117.938199, 39.230082, 4.90, 14.15, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-04-23 07:11:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (733, 'DD2026050810285934096617', 331, 185, 49, 2, '经济型', 3, '重庆市南山区街道', 118.125812, 39.906453, '北京市南山区街道', 118.159114, 40.029343, 28.25, 86.76, 32.18, 76.40, 76.40, 12.33, 64.07, 4, 1, 2, '', '2024-07-16 00:21:02', '2024-07-16 00:37:02', '2024-07-16 01:14:02', '2024-07-16 01:41:02', NULL, '2024-07-16 00:14:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (734, 'DD20260508102859ec967a0f', 402, 32, 7, 1, '经济型', 2, '北京市朝阳区街道', 117.501643, 41.437926, '广州市南山区街道', 117.320286, 41.195629, 10.62, 37.48, 11.42, 29.20, 29.20, 3.72, 25.48, 5, 2, 0, '司机取消', '2024-03-27 23:31:21', '2024-03-27 23:43:21', '2024-03-28 01:03:21', NULL, '2024-03-27 23:38:21', '2024-03-27 23:18:21', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (735, 'DD20260508102859660113f3', 485, NULL, NULL, 1, '商务型', 2, '成都市福田区街道', 119.077699, 40.001465, '武汉市东城区街道', 119.315201, 40.029846, 21.21, 77.91, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-05-10 05:32:50', NULL, NULL, NULL, NULL, '2024-05-10 05:19:50', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (736, 'DD20260508102859758fdea1', 223, 11, 3, 2, '商务型', 2, '深圳市朝阳区街道', 117.195855, 41.637513, '上海市东城区街道', 116.741243, 41.415208, 3.16, 8.12, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-10-09 17:47:27', '2024-10-09 18:16:27', NULL, NULL, NULL, '2024-10-09 17:39:27', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (737, 'DD202605081028591e784147', 327, 116, 31, 1, '舒适型', 1, '西安市东城区街道', 118.491191, 41.167278, '成都市西城区街道', 118.885160, 41.421141, 24.91, 56.00, 29.10, 75.87, 75.87, 8.53, 67.34, 5, 2, 0, '系统取消', '2024-06-02 05:56:13', '2024-06-02 06:11:13', '2024-06-02 07:27:13', NULL, '2024-06-02 06:13:13', '2024-06-02 05:55:13', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (738, 'DD2026050810285912590d53', 237, 95, 22, 1, '商务型', 3, '成都市南山区街道', 117.739165, 41.077373, '南京市海淀区街道', 117.769646, 41.254438, 5.96, 15.93, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-11-01 21:32:48', NULL, NULL, NULL, NULL, '2024-11-01 21:23:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (739, 'DD2026050810285970b50ab7', 56, 116, 31, 1, '商务型', 1, '杭州市朝阳区街道', 116.171999, 39.900735, '广州市朝阳区街道', 116.635086, 39.862276, 23.26, 68.09, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-04-03 01:11:59', '2026-04-03 01:22:59', NULL, NULL, NULL, '2026-04-03 01:01:59', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (740, 'DD2026050810285972c90fbe', 48, 157, 42, 1, '经济型', 1, '西安市南山区街道', 119.976352, 40.451342, '广州市福田区街道', 119.501416, 40.523195, 16.35, 45.56, 18.84, 72.21, 72.21, 3.09, 69.12, 4, 1, 1, '', '2026-03-27 21:46:17', '2026-03-27 22:01:17', '2026-03-27 22:31:17', '2026-03-27 23:01:17', NULL, '2026-03-27 21:42:17', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (741, 'DD202605081028599cd23049', 309, 94, 21, 1, '舒适型', 2, '深圳市南山区街道', 116.513100, 39.624412, '重庆市朝阳区街道', 116.287533, 39.424631, 26.24, 75.39, 28.60, 114.23, 114.23, 23.89, 90.34, 4, 1, 1, '', '2025-06-05 20:41:08', '2025-06-05 21:01:08', '2025-06-05 21:29:08', '2025-06-05 21:48:08', NULL, '2025-06-05 20:29:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (742, 'DD20260508102859be960bd4', 340, 62, 16, 2, '商务型', 2, '上海市东城区街道', 116.631113, 40.752837, '重庆市海淀区街道', 116.348989, 41.026558, 11.43, 41.45, 13.04, 44.79, 44.79, 10.05, 34.74, 4, 1, 2, '', '2025-10-27 08:24:16', '2025-10-27 08:34:16', '2025-10-27 08:45:16', '2025-10-27 09:04:16', NULL, '2025-10-27 08:12:16', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (743, 'DD20260508102859361da0a4', 210, 94, 21, 1, '商务型', 3, '重庆市朝阳区街道', 119.583128, 41.972916, '北京市福田区街道', 119.090398, 41.745848, 9.00, 34.58, 9.34, 32.68, 32.68, 2.64, 30.04, 5, 2, 0, '系统取消', '2024-01-07 13:08:25', '2024-01-07 13:23:25', '2024-01-07 14:59:25', NULL, '2024-01-07 13:38:25', '2024-01-07 13:00:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (744, 'DD20260508102859e3484674', 419, 98, 23, 1, '经济型', 1, '杭州市南山区街道', 117.193209, 40.885766, '深圳市南山区街道', 117.588690, 40.791928, 11.05, 27.28, 13.23, 29.04, 29.04, 0.17, 28.87, 4, 1, 2, '', '2025-10-17 11:21:15', '2025-10-17 11:46:15', '2025-10-17 12:25:15', '2025-10-17 12:41:15', NULL, '2025-10-17 11:06:15', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (745, 'DD20260508102859e4b38988', 88, 49, 12, 2, '商务型', 3, '武汉市朝阳区街道', 119.978750, 39.741291, '重庆市东城区街道', 119.939559, 39.514464, 15.01, 38.68, 15.54, 57.94, 57.94, 8.14, 49.80, 4, 1, 2, '', '2025-12-07 00:45:33', '2025-12-07 00:53:33', '2025-12-07 02:32:33', '2025-12-07 02:58:33', NULL, '2025-12-07 00:30:33', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (746, 'DD2026050810285918afa3ee', 168, NULL, NULL, 1, '舒适型', 3, '深圳市海淀区街道', 116.360717, 39.536041, '杭州市东城区街道', 116.306898, 39.556988, 13.28, 46.02, 13.21, 46.73, 46.73, 3.06, 43.67, 4, 1, 1, '', '2025-05-26 06:30:25', '2025-05-26 06:41:25', '2025-05-26 07:52:25', '2025-05-26 08:22:25', NULL, '2025-05-26 06:21:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (747, 'DD202605081028591ba13ee8', 299, 62, 16, 1, '商务型', 2, '上海市南山区街道', 116.743617, 40.809662, '上海市朝阳区街道', 116.330532, 40.994027, 28.12, 85.84, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2025-02-03 02:21:40', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (748, 'DD20260508102859c65348a8', 67, 110, 29, 2, '经济型', 2, '北京市朝阳区街道', 119.210635, 41.472512, '成都市南山区街道', 119.287581, 41.446969, 3.57, 9.88, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2025-03-07 02:35:03', NULL, NULL, NULL, NULL, '2025-03-07 02:21:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (749, 'DD202605081028593373821d', 144, 99, 24, 2, '经济型', 2, '西安市福田区街道', 117.944587, 39.063495, '西安市西城区街道', 118.360110, 39.015491, 9.03, 28.19, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-01-14 01:49:47', NULL, NULL, NULL, NULL, '2026-01-14 01:43:47', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (750, 'DD2026050810285973b19375', 326, 64, 17, 1, '经济型', 2, '上海市朝阳区街道', 118.340366, 40.604498, '西安市朝阳区街道', 118.454336, 40.348701, 2.38, 6.48, 2.15, 5.28, 5.28, 1.47, 3.81, 4, 1, 2, '', '2026-05-02 12:07:32', '2026-05-02 12:26:32', '2026-05-02 13:44:32', '2026-05-02 14:12:32', NULL, '2026-05-02 11:55:32', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (751, 'DD2026050810285951c58163', 27, 37, 9, 1, '经济型', 1, '成都市福田区街道', 116.189538, 41.415301, '西安市南山区街道', 116.020759, 41.374951, 12.99, 42.22, 14.23, 29.83, 29.83, 0.85, 28.98, 4, 1, 1, '', '2025-02-08 04:50:14', '2025-02-08 05:20:14', '2025-02-08 06:39:14', '2025-02-08 07:05:14', NULL, '2025-02-08 04:46:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (752, 'DD20260508102859b985d585', 283, 45, 11, 2, '经济型', 1, '深圳市福田区街道', 118.049425, 40.156327, '成都市西城区街道', 118.124820, 40.418222, 21.34, 75.14, 21.87, 53.51, 53.51, 11.09, 42.42, 4, 1, 1, '', '2025-04-29 13:50:51', '2025-04-29 14:14:51', '2025-04-29 16:06:51', '2025-04-29 16:11:51', NULL, '2025-04-29 13:42:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (753, 'DD202605081028590a5adad3', 200, 23, 4, 1, '商务型', 1, '南京市福田区街道', 117.097209, 39.107666, '武汉市福田区街道', 117.139430, 38.866134, 19.52, 73.88, 22.96, 56.36, 56.36, 11.15, 45.21, 4, 1, 2, '', '2024-08-22 21:42:53', '2024-08-22 22:05:53', '2024-08-22 23:30:53', '2024-08-22 23:59:53', NULL, '2024-08-22 21:36:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (754, 'DD20260508102859264922eb', 105, 180, 47, 1, '舒适型', 1, '重庆市东城区街道', 116.583393, 40.588115, '南京市西城区街道', 116.800806, 40.297465, 10.74, 36.75, 10.76, 30.64, 30.64, 3.93, 26.71, 4, 1, 2, '', '2024-03-08 15:01:36', '2024-03-08 15:09:36', '2024-03-08 15:31:36', '2024-03-08 15:50:36', NULL, '2024-03-08 14:56:36', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (755, 'DD2026050810285972de5995', 130, 140, 37, 2, '商务型', 2, '重庆市福田区街道', 118.088072, 41.271948, '北京市福田区街道', 117.817910, 41.277315, 18.87, 54.74, 18.11, 37.32, 37.32, 3.27, 34.05, 4, 1, 2, '', '2024-12-07 16:17:24', '2024-12-07 16:36:24', '2024-12-07 18:27:24', '2024-12-07 18:57:24', NULL, '2024-12-07 16:10:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (756, 'DD20260508102859ad43ca85', 481, 110, 29, 2, '舒适型', 3, '杭州市福田区街道', 118.041812, 41.829843, '北京市朝阳区街道', 118.137789, 41.917874, 25.75, 81.90, 24.00, 68.77, 68.77, 7.79, 60.98, 4, 1, 1, '', '2024-08-15 13:17:18', '2024-08-15 13:31:18', '2024-08-15 14:09:18', '2024-08-15 14:31:18', NULL, '2024-08-15 13:07:18', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (757, 'DD202605081028599c9729ac', 166, 141, 38, 2, '经济型', 1, '北京市南山区街道', 116.547903, 40.579133, '南京市南山区街道', 116.250031, 40.279288, 16.41, 35.23, 15.17, 54.84, 54.84, 11.03, 43.81, 4, 1, 1, '', '2024-05-02 13:51:24', '2024-05-02 14:18:24', '2024-05-02 15:06:24', '2024-05-02 15:34:24', NULL, '2024-05-02 13:49:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (758, 'DD202605081028590ef19ea3', 41, 11, 3, 2, '商务型', 3, '上海市南山区街道', 117.539817, 40.912303, '西安市南山区街道', 117.304235, 41.195544, 25.14, 69.96, 27.32, 107.20, 107.20, 31.63, 75.57, 4, 1, 1, '', '2025-11-24 19:13:10', '2025-11-24 19:22:10', '2025-11-24 21:22:10', '2025-11-24 21:48:10', NULL, '2025-11-24 19:10:10', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (759, 'DD202605081028599d5d2a9d', 230, 180, 47, 2, '商务型', 2, '重庆市朝阳区街道', 117.556257, 40.817293, '广州市福田区街道', 117.214002, 40.931310, 19.31, 64.64, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2024-06-18 02:10:04', NULL, NULL, NULL, NULL, '2024-06-18 02:05:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (760, 'DD2026050810285960aa4254', 93, 177, 46, 1, '舒适型', 3, '广州市海淀区街道', 116.475361, 41.765194, '成都市福田区街道', 116.714566, 41.726461, 9.90, 37.73, 10.62, 32.46, 32.46, 4.01, 28.45, 4, 1, 1, '', '2026-03-23 12:54:54', '2026-03-23 13:12:54', '2026-03-23 15:04:54', '2026-03-23 15:22:54', NULL, '2026-03-23 12:46:54', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (761, 'DD20260508102859873ddffe', 85, 1, 1, 1, '经济型', 1, '成都市福田区街道', 117.379259, 39.130498, '重庆市西城区街道', 117.488368, 38.868401, 8.84, 25.93, 8.89, 18.12, 18.12, 2.56, 15.56, 5, 2, 0, '司机取消', '2024-09-27 00:53:58', '2024-09-27 01:04:58', '2024-09-27 02:36:58', NULL, '2024-09-27 01:06:58', '2024-09-27 00:41:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (762, 'DD20260508102859a7b29daa', 108, 185, 49, 1, '经济型', 2, '成都市南山区街道', 117.842161, 39.874188, '成都市南山区街道', 117.649517, 39.715007, 3.25, 6.80, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-02-19 14:10:44', NULL, NULL, NULL, NULL, '2026-02-19 14:04:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (763, 'DD20260508102859aed926c1', 336, 1, 1, 1, '舒适型', 3, '武汉市西城区街道', 118.623291, 40.429747, '上海市东城区街道', 118.372154, 40.642656, 19.32, 66.26, 19.89, 52.09, 52.09, 1.62, 50.47, 5, 2, 0, '用户取消', '2025-01-07 17:46:06', '2025-01-07 18:07:06', '2025-01-07 19:27:06', NULL, '2025-01-07 17:57:06', '2025-01-07 17:33:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (764, 'DD20260508102859d8126e2c', 73, NULL, NULL, 2, '经济型', 2, '成都市南山区街道', 119.289421, 39.780719, '重庆市朝阳区街道', 119.429971, 39.905656, 3.17, 7.70, 3.33, 10.76, 10.76, 1.91, 8.85, 6, 0, 0, '', '2025-07-31 12:41:51', '2025-07-31 13:00:51', '2025-07-31 14:24:51', NULL, NULL, '2025-07-31 12:39:51', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (765, 'DD2026050810285970df278b', 82, 137, 36, 1, '舒适型', 1, '重庆市东城区街道', 119.716349, 39.526165, '广州市东城区街道', 119.644728, 39.244681, 15.87, 36.51, 14.43, 33.26, 33.26, 4.07, 29.19, 5, 2, 0, '司机取消', '2024-09-26 13:25:22', '2024-09-26 13:36:22', '2024-09-26 15:20:22', NULL, '2024-09-26 14:10:22', '2024-09-26 13:21:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (766, 'DD202605081028599c255b9e', 121, 157, 42, 1, '商务型', 3, '北京市海淀区街道', 117.562431, 40.982002, '北京市南山区街道', 117.790538, 41.040134, 2.59, 6.07, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-08-10 01:59:44', '2024-08-10 02:12:44', NULL, NULL, NULL, '2024-08-10 01:45:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (767, 'DD202605081028599adb48cc', 339, 37, 9, 2, '舒适型', 2, '杭州市东城区街道', 116.489295, 39.184183, '武汉市南山区街道', 116.346430, 38.916364, 28.49, 113.22, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2024-05-26 20:26:08', '2024-05-26 20:44:08', NULL, NULL, NULL, '2024-05-26 20:18:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (768, 'DD202605081028596f782522', 116, 11, 3, 1, '商务型', 3, '广州市福田区街道', 116.803784, 40.938936, '北京市福田区街道', 116.304083, 40.665416, 15.25, 51.07, 15.03, 43.87, 43.87, 10.81, 33.06, 5, 2, 0, '系统取消', '2024-05-30 06:48:29', '2024-05-30 07:01:29', '2024-05-30 07:23:29', NULL, '2024-05-30 07:00:29', '2024-05-30 06:38:29', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (769, 'DD20260508102859f60f05f2', 239, NULL, NULL, 2, '舒适型', 1, '西安市福田区街道', 118.025718, 40.276283, '重庆市西城区街道', 118.259039, 40.261932, 4.26, 14.56, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-10-26 09:41:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (770, 'DD2026050810285904dfb6b1', 133, 108, 28, 2, '商务型', 1, '杭州市福田区街道', 116.848052, 41.573996, '杭州市东城区街道', 116.959024, 41.514768, 23.58, 53.37, 22.39, 53.35, 53.35, 6.50, 46.85, 5, 2, 0, '司机取消', '2024-10-23 16:03:28', '2024-10-23 16:31:28', '2024-10-23 16:49:28', NULL, '2024-10-23 15:57:28', '2024-10-23 15:50:28', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (771, 'DD20260508102859335bd257', 330, 72, 18, 1, '商务型', 1, '深圳市东城区街道', 117.434584, 39.626980, '重庆市南山区街道', 117.432644, 39.820859, 21.43, 69.04, 25.37, 88.64, 88.64, 7.53, 81.11, 4, 1, 2, '', '2025-04-13 05:14:26', '2025-04-13 05:21:26', '2025-04-13 06:17:26', '2025-04-13 06:22:26', NULL, '2025-04-13 05:12:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (772, 'DD202605081028594807cb3a', 49, 185, 49, 1, '经济型', 1, '重庆市朝阳区街道', 117.327715, 40.046795, '成都市福田区街道', 117.005472, 40.016924, 9.10, 20.50, 10.09, 38.40, 38.40, 1.71, 36.69, 5, 2, 0, '用户取消', '2024-07-29 23:14:56', '2024-07-29 23:31:56', '2024-07-29 23:57:56', NULL, '2024-07-29 23:37:56', '2024-07-29 23:05:56', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (773, 'DD202605081028595bac5da4', 279, 98, 23, 2, '舒适型', 1, '上海市朝阳区街道', 118.804244, 40.231185, '西安市海淀区街道', 118.812804, 40.268760, 21.28, 51.68, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-01-31 12:12:05', '2026-01-31 12:25:05', NULL, NULL, NULL, '2026-01-31 12:04:05', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (774, 'DD2026050810285939e8075b', 407, 180, 47, 1, '商务型', 2, '上海市朝阳区街道', 117.023236, 39.879684, '南京市福田区街道', 116.806096, 39.658095, 24.06, 83.40, 23.29, 57.39, 57.39, 13.92, 43.47, 4, 1, 1, '', '2026-03-20 10:09:19', '2026-03-20 10:23:19', '2026-03-20 10:54:19', '2026-03-20 11:24:19', NULL, '2026-03-20 10:05:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (775, 'DD2026050810285909c8afc1', 493, 1, 1, 1, '商务型', 3, '广州市朝阳区街道', 117.022155, 39.232684, '武汉市朝阳区街道', 117.272479, 39.089135, 2.26, 8.27, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-11-11 12:03:35', '2025-11-11 12:30:35', NULL, NULL, NULL, '2025-11-11 11:55:35', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (776, 'DD202605081028590379776b', 317, 62, 16, 2, '商务型', 2, '重庆市福田区街道', 117.620943, 40.494886, '上海市西城区街道', 117.275750, 40.626205, 14.86, 32.89, 13.97, 41.76, 41.76, 8.54, 33.22, 4, 1, 2, '', '2025-05-28 00:17:08', '2025-05-28 00:33:08', '2025-05-28 01:10:08', '2025-05-28 01:36:08', NULL, '2025-05-28 00:13:08', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (777, 'DD20260508102859d6365147', 163, 180, 47, 2, '舒适型', 2, '重庆市福田区街道', 116.948122, 40.917264, '重庆市朝阳区街道', 117.074617, 40.753773, 19.55, 43.57, 19.27, 57.80, 57.80, 7.90, 49.90, 6, 0, 0, '', '2026-01-31 00:20:07', '2026-01-31 00:30:07', '2026-01-31 02:21:07', NULL, NULL, '2026-01-31 00:06:07', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (778, 'DD202605081028595fdf16e1', 190, 185, 49, 1, '舒适型', 2, '上海市朝阳区街道', 118.262059, 40.689571, '西安市朝阳区街道', 118.658729, 40.591113, 29.27, 72.47, 31.62, 122.31, 122.31, 3.91, 118.40, 4, 1, 1, '', '2024-09-03 23:37:41', '2024-09-03 23:57:41', '2024-09-04 00:26:41', '2024-09-04 00:43:41', NULL, '2024-09-03 23:27:41', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (779, 'DD20260508102859b88d375f', 239, 49, 12, 1, '商务型', 3, '重庆市朝阳区街道', 118.022891, 40.294896, '重庆市南山区街道', 117.757550, 40.064258, 23.91, 48.68, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-04-23 04:44:24', '2025-04-23 05:00:24', NULL, NULL, NULL, '2025-04-23 04:41:24', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (780, 'DD202605081028594bb4f4a4', 32, 49, 12, 2, '舒适型', 1, '广州市海淀区街道', 117.101626, 39.339031, '北京市福田区街道', 116.707276, 39.601469, 2.04, 6.07, 2.38, 4.91, 4.91, 1.45, 3.46, 5, 2, 0, '司机取消', '2025-05-01 07:05:03', '2025-05-01 07:16:03', '2025-05-01 08:54:03', NULL, '2025-05-01 07:31:03', '2025-05-01 06:55:03', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (781, 'DD202605081028592e81b60e', 285, 100, 25, 2, '经济型', 2, '广州市南山区街道', 116.150241, 41.055693, '广州市海淀区街道', 116.633725, 41.163309, 10.97, 39.73, 10.97, 41.67, 41.67, 7.90, 33.77, 4, 1, 2, '', '2024-03-19 12:46:49', '2024-03-19 12:53:49', '2024-03-19 14:49:49', '2024-03-19 15:07:49', NULL, '2024-03-19 12:32:49', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (782, 'DD20260508102859aae5c3c5', 471, NULL, NULL, 2, '经济型', 1, '深圳市西城区街道', 116.078486, 40.156374, '深圳市东城区街道', 116.439288, 40.012417, 19.78, 55.72, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-08-20 05:25:57', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (783, 'DD2026050810285993174ace', 476, 140, 37, 1, '商务型', 1, '深圳市海淀区街道', 119.836930, 40.187619, '武汉市福田区街道', 120.123658, 40.324319, 2.10, 8.05, 1.94, 7.68, 7.68, 1.32, 6.36, 4, 1, 2, '', '2024-12-14 16:23:44', '2024-12-14 16:34:44', '2024-12-14 17:01:44', '2024-12-14 17:17:44', NULL, '2024-12-14 16:21:44', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (784, 'DD2026050810285901ed866e', 391, NULL, NULL, 2, '商务型', 2, '杭州市东城区街道', 119.527989, 41.460256, '广州市东城区街道', 119.704816, 41.480540, 26.66, 79.75, 28.73, 80.78, 80.78, 5.99, 74.79, 4, 1, 2, '', '2024-04-26 21:01:58', '2024-04-26 21:21:58', '2024-04-26 22:14:58', '2024-04-26 22:36:58', NULL, '2024-04-26 20:56:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (785, 'DD20260508102859f3db392b', 150, 122, 32, 1, '舒适型', 3, '重庆市东城区街道', 117.179946, 39.079870, '武汉市福田区街道', 117.611597, 38.930872, 14.53, 56.76, 14.60, 46.40, 46.40, 8.69, 37.71, 4, 1, 1, '', '2026-03-23 21:20:02', '2026-03-23 21:27:02', '2026-03-23 23:06:02', '2026-03-23 23:18:02', NULL, '2026-03-23 21:11:02', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (786, 'DD2026050810285917a1bf75', 113, NULL, NULL, 2, '商务型', 1, '北京市西城区街道', 116.591580, 39.532808, '南京市海淀区街道', 116.767150, 39.809883, 25.25, 64.32, 28.45, 84.31, 84.31, 8.15, 76.16, 5, 2, 0, '系统取消', '2024-02-02 07:01:48', '2024-02-02 07:08:48', '2024-02-02 08:51:48', NULL, '2024-02-02 07:39:48', '2024-02-02 06:54:48', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (787, 'DD20260508102859dc736e78', 445, 23, 4, 2, '经济型', 3, '上海市西城区街道', 117.332423, 41.492972, '北京市海淀区街道', 117.489780, 41.477215, 26.45, 96.63, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2025-05-03 06:29:09', '2025-05-03 06:34:09', NULL, NULL, NULL, '2025-05-03 06:17:09', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (788, 'DD20260508102859426eddd8', 216, 43, 10, 1, '舒适型', 3, '上海市东城区街道', 116.274138, 41.975494, '武汉市南山区街道', 115.818637, 41.759577, 29.17, 104.75, 29.70, 100.40, 100.40, 12.84, 87.56, 4, 1, 2, '', '2026-04-26 14:30:04', '2026-04-26 14:47:04', '2026-04-26 15:20:04', '2026-04-26 15:29:04', NULL, '2026-04-26 14:24:04', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (789, 'DD20260508102859a492da97', 98, 99, 24, 2, '商务型', 1, '杭州市西城区街道', 118.035750, 41.514568, '南京市海淀区街道', 117.697684, 41.260264, 7.26, 16.54, 6.59, 17.39, 17.39, 3.45, 13.94, 6, 0, 0, '', '2026-02-25 08:01:25', '2026-02-25 08:20:25', '2026-02-25 09:45:25', NULL, NULL, '2026-02-25 07:50:25', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (790, 'DD20260508102859d07416b3', 364, 1, 1, 1, '舒适型', 2, '上海市朝阳区街道', 118.161841, 41.761106, '深圳市朝阳区街道', 118.594980, 42.019449, 15.50, 37.51, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-01-08 22:47:22', '2026-01-08 23:11:22', NULL, NULL, NULL, '2026-01-08 22:35:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (791, 'DD20260508102859e7ce43a3', 63, 157, 42, 1, '商务型', 2, '杭州市南山区街道', 119.628566, 41.254120, '上海市朝阳区街道', 119.327934, 41.294881, 9.47, 34.15, 10.72, 22.40, 22.40, 0.39, 22.01, 4, 1, 1, '', '2025-02-26 08:32:19', '2025-02-26 08:51:19', '2025-02-26 10:38:19', '2025-02-26 10:58:19', NULL, '2025-02-26 08:24:19', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (792, 'DD202605081028594972b734', 486, 185, 49, 1, '舒适型', 1, '杭州市南山区街道', 117.066425, 41.157596, '杭州市东城区街道', 117.001752, 41.066842, 13.72, 35.31, 13.36, 45.93, 45.93, 5.39, 40.54, 4, 1, 1, '', '2024-10-28 17:06:26', '2024-10-28 17:18:26', '2024-10-28 17:58:26', '2024-10-28 18:16:26', NULL, '2024-10-28 16:55:26', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (793, 'DD202605081028590bb0cb7c', 305, 150, 40, 1, '舒适型', 2, '杭州市朝阳区街道', 116.862995, 41.581643, '重庆市海淀区街道', 116.896327, 41.491908, 15.41, 41.04, 14.29, 51.94, 51.94, 15.57, 36.37, 4, 1, 1, '', '2024-01-13 16:29:14', '2024-01-13 16:48:14', '2024-01-13 18:44:14', '2024-01-13 18:51:14', NULL, '2024-01-13 16:26:14', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (794, 'DD202605081028590d779939', 440, 56, 15, 1, '商务型', 1, '广州市朝阳区街道', 117.519397, 40.871617, '南京市福田区街道', 117.267274, 41.151919, 26.26, 54.46, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-02-11 20:08:06', '2026-02-11 20:17:06', NULL, NULL, NULL, '2026-02-11 19:53:06', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (795, 'DD20260508102859939c5bc5', 125, 100, 25, 1, '商务型', 3, '重庆市朝阳区街道', 117.106910, 41.091502, '上海市东城区街道', 117.307824, 41.068701, 5.98, 20.63, 6.28, 20.87, 20.87, 0.12, 20.75, 6, 0, 0, '', '2026-03-19 16:34:39', '2026-03-19 16:43:39', '2026-03-19 17:26:39', NULL, NULL, '2026-03-19 16:32:39', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (796, 'DD20260508102859a5dfb58c', 477, NULL, NULL, 2, '商务型', 3, '上海市东城区街道', 116.813829, 40.586866, '南京市朝阳区街道', 116.922216, 40.322043, 5.61, 21.66, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2024-10-10 16:11:53', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (797, 'DD20260508102859a8967fa6', 227, 171, 45, 1, '商务型', 1, '北京市西城区街道', 118.487149, 41.549826, '重庆市海淀区街道', 118.556331, 41.752630, 9.48, 21.63, 9.19, 24.81, 24.81, 0.04, 24.77, 4, 1, 2, '', '2025-06-13 16:34:22', '2025-06-13 17:04:22', '2025-06-13 18:02:22', '2025-06-13 18:07:22', NULL, '2025-06-13 16:22:22', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (798, 'DD2026050810285984f124d2', 446, 129, 34, 1, '经济型', 2, '南京市朝阳区街道', 116.610263, 39.809342, '南京市南山区街道', 116.481242, 39.648679, 2.64, 10.17, 2.49, 7.22, 7.22, 1.37, 5.85, 4, 1, 2, '', '2024-07-14 01:36:38', '2024-07-14 01:54:38', '2024-07-14 03:06:38', '2024-07-14 03:17:38', NULL, '2024-07-14 01:27:38', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (799, 'DD20260508102859475125ca', 178, 150, 40, 2, '商务型', 2, '南京市西城区街道', 118.154454, 41.305210, '成都市福田区街道', 118.534086, 41.244718, 19.68, 54.50, 19.50, 76.99, 76.99, 22.89, 54.10, 4, 1, 1, '', '2024-05-18 01:40:42', '2024-05-18 01:50:42', '2024-05-18 03:09:42', '2024-05-18 03:33:42', NULL, '2024-05-18 01:36:42', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (800, 'DD2026050810285970ddd752', 205, 99, 24, 2, '商务型', 1, '北京市南山区街道', 118.388023, 41.929520, '北京市海淀区街道', 118.396708, 41.742844, 9.10, 25.01, 10.48, 31.42, 31.42, 8.89, 22.53, 5, 2, 0, '用户取消', '2024-07-10 12:10:58', '2024-07-10 12:36:58', '2024-07-10 13:21:58', NULL, '2024-07-10 12:58:58', '2024-07-10 12:08:58', '2026-05-08 10:29:46');
INSERT INTO `order` VALUES (801, 'DD202605081032321bd62167', 439, 2, 9, 1, '经济型', 1, '广州市海淀区街道', 117.890115, 39.155728, '武汉市福田区街道', 117.681658, 38.974161, 19.11, 48.09, 18.64, 47.81, 47.81, 5.92, 41.89, 5, 2, 0, '司机取消', '2026-05-08 10:18:07', '2026-05-08 10:40:07', '2026-05-08 11:56:07', NULL, '2026-05-08 11:07:07', '2026-05-08 10:13:07', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (802, 'DD20260508103232ea178d71', 364, 160, 32, 1, '舒适型', 1, '杭州市南山区街道', 116.539618, 40.966931, '上海市海淀区街道', 117.011663, 41.196483, 10.02, 27.40, 11.81, 25.25, 25.25, 6.51, 18.74, 4, 1, 2, '', '2026-05-08 04:31:22', '2026-05-08 05:00:22', '2026-05-08 06:47:22', '2026-05-08 06:48:22', NULL, '2026-05-08 04:27:22', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (803, 'DD2026050810323266e55a6c', 337, 114, 34, 1, '商务型', 2, '西安市海淀区街道', 118.133204, 39.908122, '南京市东城区街道', 117.835571, 40.158235, 25.20, 77.36, 25.46, 81.24, 81.24, 22.14, 59.10, 4, 1, 1, '', '2026-05-08 23:18:24', '2026-05-08 23:30:24', '2026-05-09 00:06:24', '2026-05-09 00:13:24', NULL, '2026-05-08 23:09:24', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (804, 'DD20260508103232f10de464', 435, NULL, NULL, 2, '经济型', 3, '上海市福田区街道', 118.079421, 39.043109, '西安市西城区街道', 117.691875, 39.300543, 2.62, 6.72, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 11:10:46', '2026-05-08 11:37:46', NULL, NULL, NULL, '2026-05-08 11:00:46', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (805, 'DD20260508103232a997c4b0', 340, 134, 9, 1, '商务型', 2, '广州市东城区街道', 116.849905, 39.537448, '西安市南山区街道', 117.040092, 39.523741, 29.84, 81.09, 29.79, 66.47, 66.47, 18.78, 47.69, 4, 1, 2, '', '2026-05-08 04:35:56', '2026-05-08 05:02:56', '2026-05-08 05:25:56', '2026-05-08 05:37:56', NULL, '2026-05-08 04:29:56', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (806, 'DD20260508103232cb653802', 349, 134, 44, 1, '商务型', 1, '成都市西城区街道', 116.710471, 40.271182, '重庆市朝阳区街道', 116.547114, 40.273326, 11.14, 40.03, 13.08, 35.45, 35.45, 9.06, 26.39, 4, 1, 1, '', '2026-05-08 04:02:58', '2026-05-08 04:08:58', '2026-05-08 05:53:58', '2026-05-08 06:19:58', NULL, '2026-05-08 04:01:58', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (807, 'DD20260508103232517fff3c', 413, 101, 41, 2, '商务型', 3, '重庆市福田区街道', 116.791597, 41.256833, '深圳市东城区街道', 116.620013, 40.971308, 22.27, 52.25, 24.85, 71.94, 71.94, 18.60, 53.34, 5, 2, 0, '系统取消', '2026-05-08 08:19:26', '2026-05-08 08:42:26', '2026-05-08 10:31:26', NULL, '2026-05-08 08:31:26', '2026-05-08 08:11:26', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (808, 'DD202605081032320e4a220b', 6, 52, 26, 2, '商务型', 3, '杭州市南山区街道', 119.105142, 41.808753, '上海市西城区街道', 118.943294, 42.062378, 28.49, 89.78, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-05-08 07:13:09', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (809, 'DD202605081032323b17504b', 202, 36, 20, 1, '经济型', 1, '深圳市海淀区街道', 118.025336, 39.957358, '南京市东城区街道', 117.827072, 39.834859, 10.62, 31.49, 10.56, 33.80, 33.80, 4.29, 29.51, 4, 1, 2, '', '2026-05-08 22:17:09', '2026-05-08 22:28:09', '2026-05-09 00:23:09', '2026-05-09 00:52:09', NULL, '2026-05-08 22:12:09', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (810, 'DD20260508103232b5c88b8e', 11, 63, 52, 2, '舒适型', 2, '上海市南山区街道', 116.589975, 39.040695, '南京市海淀区街道', 116.258145, 38.790648, 5.51, 14.01, 6.55, 13.17, 13.17, 1.09, 12.08, 5, 2, 0, '司机取消', '2026-05-08 13:17:57', '2026-05-08 13:42:57', '2026-05-08 14:53:57', NULL, '2026-05-08 13:41:57', '2026-05-08 13:15:57', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (811, 'DD20260508103232c149cf0f', 270, 84, 33, 1, '舒适型', 1, '武汉市南山区街道', 119.150832, 41.904201, '广州市朝阳区街道', 119.272283, 41.813622, 7.03, 18.55, 6.68, 20.61, 20.61, 2.75, 17.86, 4, 1, 2, '', '2026-05-08 03:46:03', '2026-05-08 04:15:03', '2026-05-08 05:07:03', '2026-05-08 05:12:03', NULL, '2026-05-08 03:38:03', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (812, 'DD202605081032320f9c3578', 389, 113, 8, 1, '商务型', 1, '北京市福田区街道', 116.905310, 41.075429, '西安市西城区街道', 117.000207, 41.255600, 3.78, 14.41, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 17:55:56', NULL, NULL, NULL, NULL, '2026-05-08 17:47:56', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (813, 'DD20260508103232a1a8a0e5', 276, 42, 23, 2, '商务型', 2, '杭州市朝阳区街道', 116.994179, 39.597656, '武汉市西城区街道', 116.948351, 39.481357, 24.48, 73.68, 27.19, 70.87, 70.87, 10.09, 60.78, 5, 2, 0, '系统取消', '2026-05-08 14:49:37', '2026-05-08 15:17:37', '2026-05-08 16:53:37', NULL, '2026-05-08 14:53:37', '2026-05-08 14:35:37', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (814, 'DD202605081032328074b877', 43, 141, 36, 2, '经济型', 3, '深圳市福田区街道', 119.437413, 39.148952, '西安市海淀区街道', 119.456170, 39.242987, 2.40, 4.90, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 18:17:06', '2026-05-08 18:33:06', NULL, NULL, NULL, '2026-05-08 18:11:06', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (815, 'DD20260508103232c1eb9df4', 418, 137, 18, 1, '舒适型', 1, '深圳市福田区街道', 119.976054, 39.442344, '杭州市福田区街道', 120.132487, 39.626414, 3.38, 9.83, 3.48, 10.50, 10.50, 1.94, 8.56, 4, 1, 2, '', '2026-05-08 21:53:17', '2026-05-08 22:06:17', '2026-05-08 22:36:17', '2026-05-08 22:43:17', NULL, '2026-05-08 21:42:17', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (816, 'DD20260508103232d47a559e', 214, 77, 52, 1, '经济型', 3, '广州市西城区街道', 117.436266, 39.240349, '成都市东城区街道', 117.267301, 39.329611, 25.64, 66.11, 26.94, 68.46, 68.46, 4.31, 64.15, 4, 1, 2, '', '2026-05-08 20:13:29', '2026-05-08 20:20:29', '2026-05-08 21:52:29', '2026-05-08 22:06:29', NULL, '2026-05-08 20:00:29', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (817, 'DD20260508103232fc01c5e0', 117, 136, 8, 1, '经济型', 3, '西安市东城区街道', 117.680055, 40.363464, '杭州市西城区街道', 118.099453, 40.580288, 2.88, 11.40, 3.43, 12.37, 12.37, 3.62, 8.75, 4, 1, 1, '', '2026-05-08 18:32:44', '2026-05-08 19:02:44', '2026-05-08 20:10:44', '2026-05-08 20:13:44', NULL, '2026-05-08 18:17:44', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (818, 'DD202605081032325f3469ae', 113, 198, 27, 1, '经济型', 3, '南京市东城区街道', 118.493976, 40.285839, '成都市福田区街道', 118.342469, 40.331262, 15.74, 35.82, 14.42, 30.50, 30.50, 8.66, 21.84, 5, 2, 0, '用户取消', '2026-05-08 11:08:23', '2026-05-08 11:24:23', '2026-05-08 12:59:23', NULL, '2026-05-08 11:47:23', '2026-05-08 10:57:23', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (819, 'DD2026050810323231e9036d', 333, NULL, NULL, 1, '商务型', 2, '北京市南山区街道', 117.811849, 39.659571, '武汉市南山区街道', 118.265129, 39.657137, 18.82, 41.94, 19.63, 54.93, 54.93, 7.12, 47.81, 4, 1, 1, '', '2026-05-08 11:50:37', '2026-05-08 12:00:37', '2026-05-08 12:38:37', '2026-05-08 12:47:37', NULL, '2026-05-08 11:37:37', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (820, 'DD20260508103232d9a7e321', 29, 117, 15, 2, '经济型', 1, '杭州市福田区街道', 117.943170, 41.670217, '广州市福田区街道', 118.222368, 41.535368, 15.82, 33.60, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 21:14:10', '2026-05-08 21:19:10', NULL, NULL, NULL, '2026-05-08 21:00:10', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (821, 'DD202605081032323c0df215', 23, 191, 7, 1, '经济型', 2, '北京市朝阳区街道', 116.963389, 41.232976, '重庆市西城区街道', 117.174294, 41.288026, 15.88, 56.23, 18.32, 64.63, 64.63, 10.48, 54.15, 4, 1, 1, '', '2026-05-08 00:22:40', '2026-05-08 00:40:40', '2026-05-08 01:31:40', '2026-05-08 01:51:40', NULL, '2026-05-08 00:15:40', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (822, 'DD202605081032324c8884da', 299, 75, 41, 1, '经济型', 3, '杭州市福田区街道', 118.474214, 40.480036, '西安市海淀区街道', 118.539420, 40.638644, 21.61, 66.48, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-05-08 18:13:04', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (823, 'DD202605081032326a8ffa2f', 9, 125, 7, 2, '商务型', 1, '南京市海淀区街道', 118.180483, 40.806414, '武汉市海淀区街道', 118.222187, 40.984661, 11.82, 29.17, 10.72, 42.10, 42.10, 2.46, 39.64, 5, 2, 0, '用户取消', '2026-05-08 06:14:37', '2026-05-08 06:32:37', '2026-05-08 07:00:37', NULL, '2026-05-08 06:13:37', '2026-05-08 06:04:37', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (824, 'DD2026050810323295dd1c3d', 382, 188, 46, 2, '经济型', 2, '南京市福田区街道', 118.161465, 39.348893, '西安市东城区街道', 117.889214, 39.539231, 14.63, 38.21, 16.75, 57.00, 57.00, 5.45, 51.55, 4, 1, 1, '', '2026-05-08 11:12:23', '2026-05-08 11:31:23', '2026-05-08 13:05:23', '2026-05-08 13:08:23', NULL, '2026-05-08 11:11:23', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (825, 'DD20260508103232d0f50168', 381, 9, 3, 1, '商务型', 2, '深圳市东城区街道', 118.385641, 40.869433, '上海市南山区街道', 118.620192, 40.737427, 4.69, 15.36, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 04:59:39', '2026-05-08 05:06:39', NULL, NULL, NULL, '2026-05-08 04:49:39', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (826, 'DD2026050810323260f9daa7', 367, 142, 45, 2, '商务型', 1, '广州市南山区街道', 119.599193, 41.400461, '杭州市南山区街道', 120.084999, 41.248755, 22.09, 58.48, 22.81, 81.55, 81.55, 23.01, 58.54, 4, 1, 1, '', '2026-05-08 22:17:44', '2026-05-08 22:27:44', '2026-05-08 23:24:44', '2026-05-08 23:27:44', NULL, '2026-05-08 22:07:44', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (827, 'DD20260508103232f481cada', 223, 102, 37, 2, '商务型', 1, '南京市海淀区街道', 119.917981, 41.512347, '广州市海淀区街道', 119.680281, 41.315939, 11.78, 27.81, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 23:34:27', '2026-05-08 23:46:27', NULL, NULL, NULL, '2026-05-08 23:19:27', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (828, 'DD20260508103232d8efa90d', 456, 93, 41, 1, '舒适型', 1, '深圳市海淀区街道', 116.510217, 41.840035, '重庆市朝阳区街道', 116.131879, 41.706727, 13.45, 27.30, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 07:04:06', '2026-05-08 07:24:06', NULL, NULL, NULL, '2026-05-08 06:59:06', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (829, 'DD202605081032328756f09f', 278, 163, 25, 1, '经济型', 3, '西安市福田区街道', 119.528249, 41.984310, '重庆市福田区街道', 119.097759, 42.117715, 23.05, 73.71, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 07:27:34', '2026-05-08 07:42:34', NULL, NULL, NULL, '2026-05-08 07:22:34', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (830, 'DD20260508103232a3ef403d', 11, 27, 15, 1, '经济型', 2, '西安市南山区街道', 118.749238, 41.503313, '西安市福田区街道', 118.833268, 41.636473, 5.31, 11.73, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 22:34:15', NULL, NULL, NULL, NULL, '2026-05-08 22:32:15', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (831, 'DD202605081032321be3244e', 290, 89, 9, 1, '舒适型', 1, '重庆市海淀区街道', 116.143369, 40.386981, '重庆市海淀区街道', 115.697733, 40.248592, 8.78, 19.48, 9.70, 25.86, 25.86, 1.15, 24.71, 4, 1, 1, '', '2026-05-08 04:38:55', '2026-05-08 05:07:55', '2026-05-08 06:48:55', '2026-05-08 07:04:55', NULL, '2026-05-08 04:33:55', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (832, 'DD202605081032320902f896', 322, 5, 50, 2, '经济型', 1, '重庆市东城区街道', 117.553811, 39.350644, '南京市东城区街道', 117.903965, 39.473693, 16.22, 56.47, 19.08, 59.66, 59.66, 17.41, 42.25, 4, 1, 1, '', '2026-05-08 08:25:17', '2026-05-08 08:47:17', '2026-05-08 09:33:17', '2026-05-08 09:43:17', NULL, '2026-05-08 08:18:17', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (833, 'DD202605081032327647dd0a', 222, 85, 4, 2, '商务型', 1, '广州市西城区街道', 119.979683, 40.513867, '广州市福田区街道', 120.330637, 40.688255, 4.39, 14.94, 4.49, 16.08, 16.08, 4.40, 11.68, 4, 1, 2, '', '2026-05-08 05:24:39', '2026-05-08 05:37:39', '2026-05-08 07:27:39', '2026-05-08 07:50:39', NULL, '2026-05-08 05:13:39', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (834, 'DD202605081032324f49b41e', 5, 134, 40, 2, '经济型', 2, '北京市朝阳区街道', 116.736965, 40.081789, '深圳市西城区街道', 116.575195, 39.849644, 6.43, 19.87, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 09:39:25', NULL, NULL, NULL, NULL, '2026-05-08 09:38:25', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (835, 'DD202605081032327c237b80', 46, 38, 17, 1, '经济型', 3, '成都市西城区街道', 119.380137, 41.148163, '北京市南山区街道', 119.186737, 41.217973, 29.78, 95.23, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 11:36:25', '2026-05-08 11:46:25', NULL, NULL, NULL, '2026-05-08 11:31:25', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (836, 'DD20260508103232d7c5b39e', 153, 68, 4, 1, '商务型', 3, '上海市福田区街道', 117.868039, 41.333977, '广州市西城区街道', 118.108868, 41.557437, 23.03, 91.87, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 11:37:27', '2026-05-08 11:54:27', NULL, NULL, NULL, '2026-05-08 11:22:27', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (837, 'DD20260508103232482a5a0c', 450, 18, 46, 1, '舒适型', 3, '南京市西城区街道', 118.668130, 40.715462, '杭州市南山区街道', 118.296357, 40.742835, 11.22, 36.88, 12.43, 48.08, 48.08, 4.17, 43.91, 5, 2, 0, '用户取消', '2026-05-08 15:42:19', '2026-05-08 16:01:19', '2026-05-08 16:38:19', NULL, '2026-05-08 15:53:19', '2026-05-08 15:27:19', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (838, 'DD20260508103232d5e72173', 140, NULL, NULL, 2, '商务型', 1, '北京市东城区街道', 117.538787, 41.623962, '上海市福田区街道', 117.639706, 41.793319, 16.05, 37.83, 18.13, 49.07, 49.07, 7.69, 41.38, 5, 2, 0, '系统取消', '2026-05-08 12:20:51', '2026-05-08 12:38:51', '2026-05-08 13:23:51', NULL, '2026-05-08 12:48:51', '2026-05-08 12:05:51', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (839, 'DD20260508103232c23f1e82', 447, NULL, NULL, 2, '经济型', 2, '上海市朝阳区街道', 118.300386, 40.496670, '武汉市东城区街道', 117.999449, 40.277018, 18.67, 73.45, 18.59, 71.15, 71.15, 6.20, 64.95, 4, 1, 2, '', '2026-05-08 06:54:00', '2026-05-08 07:22:00', '2026-05-08 08:18:00', '2026-05-08 08:22:00', NULL, '2026-05-08 06:40:00', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (840, 'DD20260508103232a1564a3d', 390, 11, 23, 2, '舒适型', 3, '南京市海淀区街道', 118.701064, 40.174755, '西安市西城区街道', 119.149265, 40.293063, 1.67, 3.87, 1.61, 4.31, 4.31, 0.34, 3.97, 4, 1, 1, '', '2026-05-08 11:25:44', '2026-05-08 11:43:44', '2026-05-08 13:26:44', '2026-05-08 13:48:44', NULL, '2026-05-08 11:17:44', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (841, 'DD202605081032329f3ee24a', 157, 29, 42, 2, '商务型', 2, '武汉市南山区街道', 119.827556, 41.479293, '南京市福田区街道', 120.236137, 41.235042, 21.81, 67.50, 25.17, 100.33, 100.33, 28.14, 72.19, 4, 1, 2, '', '2026-05-08 05:55:23', '2026-05-08 06:25:23', '2026-05-08 07:49:23', '2026-05-08 07:51:23', NULL, '2026-05-08 05:45:23', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (842, 'DD2026050810323268558417', 400, 123, 51, 1, '经济型', 3, '上海市南山区街道', 117.013792, 40.969012, '上海市朝阳区街道', 116.647593, 40.689451, 6.39, 13.34, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 12:55:33', '2026-05-08 13:12:33', NULL, NULL, NULL, '2026-05-08 12:49:33', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (843, 'DD20260508103232189449a6', 41, 41, 52, 2, '经济型', 3, '南京市福田区街道', 117.220009, 39.826854, '西安市东城区街道', 117.271775, 39.679367, 24.11, 66.21, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 20:28:53', '2026-05-08 20:36:53', NULL, NULL, NULL, '2026-05-08 20:16:53', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (844, 'DD202605081032327138818d', 350, 113, 7, 1, '经济型', 3, '成都市福田区街道', 117.912606, 41.174806, '武汉市福田区街道', 117.513382, 41.173936, 12.81, 30.72, 11.60, 35.56, 35.56, 6.55, 29.01, 4, 1, 2, '', '2026-05-08 07:44:52', '2026-05-08 07:52:52', '2026-05-08 09:45:52', '2026-05-08 09:49:52', NULL, '2026-05-08 07:41:52', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (845, 'DD202605081032327c60daac', 13, 157, 44, 2, '舒适型', 2, '西安市东城区街道', 117.793093, 39.732444, '上海市南山区街道', 118.095317, 39.513025, 13.27, 31.77, 12.80, 30.17, 30.17, 1.11, 29.06, 6, 0, 0, '', '2026-05-08 16:53:43', '2026-05-08 17:07:43', '2026-05-08 18:07:43', NULL, NULL, '2026-05-08 16:41:43', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (846, 'DD202605081032322c9b7e22', 406, 27, 18, 2, '舒适型', 2, '武汉市福田区街道', 119.305958, 41.861860, '上海市福田区街道', 119.380472, 41.753002, 15.74, 49.33, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 04:43:47', '2026-05-08 05:11:47', NULL, NULL, NULL, '2026-05-08 04:40:47', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (847, 'DD2026050810323209d4a422', 256, 34, 15, 1, '经济型', 1, '西安市海淀区街道', 116.333771, 41.721687, '南京市东城区街道', 116.594703, 41.916216, 17.32, 68.56, 16.32, 41.95, 41.95, 6.55, 35.40, 4, 1, 1, '', '2026-05-08 06:05:39', '2026-05-08 06:34:39', '2026-05-08 07:46:39', '2026-05-08 08:10:39', NULL, '2026-05-08 05:50:39', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (848, 'DD20260508103232673580c1', 206, 159, 10, 1, '舒适型', 3, '西安市西城区街道', 118.037880, 40.058825, '西安市东城区街道', 118.104479, 39.993556, 4.58, 13.44, 4.52, 15.67, 15.67, 2.21, 13.46, 4, 1, 2, '', '2026-05-08 06:05:27', '2026-05-08 06:24:27', '2026-05-08 06:49:27', '2026-05-08 07:15:27', NULL, '2026-05-08 05:58:27', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (849, 'DD202605081032320fd7d2f7', 149, 73, 16, 2, '舒适型', 3, '北京市福田区街道', 116.097662, 40.925425, '广州市朝阳区街道', 116.054998, 40.851832, 27.37, 94.87, 31.25, 98.51, 98.51, 27.83, 70.68, 4, 1, 2, '', '2026-05-08 23:24:37', '2026-05-08 23:47:37', '2026-05-09 00:37:37', '2026-05-09 00:44:37', NULL, '2026-05-08 23:23:37', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (850, 'DD20260508103232e8896fa6', 237, NULL, NULL, 2, '商务型', 3, '上海市朝阳区街道', 117.683080, 40.302825, '广州市朝阳区街道', 117.628362, 40.327014, 11.09, 27.23, 11.93, 35.22, 35.22, 2.20, 33.02, 4, 1, 1, '', '2026-05-08 18:31:11', '2026-05-08 18:41:11', '2026-05-08 19:24:11', '2026-05-08 19:46:11', NULL, '2026-05-08 18:18:11', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (851, 'DD202605081032320ff17cc7', 445, 197, 24, 2, '舒适型', 3, '广州市东城区街道', 119.392175, 39.133148, '上海市海淀区街道', 119.830589, 38.999208, 3.90, 13.46, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 00:56:02', '2026-05-08 01:12:02', NULL, NULL, NULL, '2026-05-08 00:49:02', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (852, 'DD2026050810323278957325', 336, 174, 4, 1, '舒适型', 3, '上海市海淀区街道', 117.031809, 39.864044, '深圳市福田区街道', 117.139574, 40.023767, 28.72, 108.26, 26.51, 53.90, 53.90, 0.97, 52.93, 4, 1, 2, '', '2026-05-08 13:01:41', '2026-05-08 13:17:41', '2026-05-08 14:54:41', '2026-05-08 15:12:41', NULL, '2026-05-08 13:00:41', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (853, 'DD20260508103232cd57d79e', 246, 59, 50, 2, '商务型', 1, '西安市南山区街道', 118.438517, 41.064258, '广州市东城区街道', 117.943005, 41.228022, 6.13, 14.24, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 00:19:29', '2026-05-08 00:36:29', NULL, NULL, NULL, '2026-05-08 00:14:29', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (854, 'DD202605081032328aa8bb0c', 453, 69, 28, 1, '舒适型', 2, '北京市福田区街道', 117.980919, 39.760479, '武汉市海淀区街道', 117.653598, 39.676679, 11.99, 44.33, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 03:02:31', '2026-05-08 03:31:31', NULL, NULL, NULL, '2026-05-08 02:53:31', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (855, 'DD20260508103232126c57ea', 362, 67, 43, 1, '商务型', 1, '南京市海淀区街道', 119.590500, 39.766376, '武汉市海淀区街道', 119.930484, 39.549676, 26.17, 53.13, 26.45, 90.48, 90.48, 20.10, 70.38, 4, 1, 2, '', '2026-05-08 05:03:56', '2026-05-08 05:33:56', '2026-05-08 07:30:56', '2026-05-08 07:42:56', NULL, '2026-05-08 04:48:56', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (856, 'DD2026050810323224087ae4', 276, 143, 34, 2, '舒适型', 2, '武汉市福田区街道', 118.192046, 41.717568, '广州市南山区街道', 118.577386, 41.574680, 4.97, 13.45, 5.65, 15.24, 15.24, 2.65, 12.59, 4, 1, 1, '', '2026-05-08 11:27:05', '2026-05-08 11:37:05', '2026-05-08 12:00:05', '2026-05-08 12:10:05', NULL, '2026-05-08 11:21:05', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (857, 'DD20260508103232354e2e42', 419, 181, 37, 1, '经济型', 1, '西安市福田区街道', 119.629592, 40.427893, '南京市福田区街道', 119.638121, 40.542650, 3.97, 12.78, 4.68, 11.55, 11.55, 2.91, 8.64, 4, 1, 1, '', '2026-05-08 17:30:03', '2026-05-08 17:55:03', '2026-05-08 19:46:03', '2026-05-08 20:10:03', NULL, '2026-05-08 17:16:03', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (858, 'DD2026050810323250454585', 42, 28, 29, 2, '舒适型', 3, '武汉市朝阳区街道', 119.557472, 40.646771, '广州市福田区街道', 119.731814, 40.562162, 25.33, 83.82, 28.08, 96.68, 96.68, 26.07, 70.61, 4, 1, 1, '', '2026-05-08 02:06:46', '2026-05-08 02:27:46', '2026-05-08 04:21:46', '2026-05-08 04:34:46', NULL, '2026-05-08 01:53:46', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (859, 'DD2026050810323206a675cf', 464, 58, 52, 2, '商务型', 2, '重庆市西城区街道', 118.405328, 41.722449, '武汉市朝阳区街道', 118.360582, 41.824003, 10.16, 40.31, 9.15, 36.16, 36.16, 5.55, 30.61, 4, 1, 2, '', '2026-05-08 15:13:50', '2026-05-08 15:42:50', '2026-05-08 17:13:50', '2026-05-08 17:33:50', NULL, '2026-05-08 15:08:50', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (860, 'DD202605081032329c02a457', 4, 184, 33, 2, '经济型', 3, '成都市南山区街道', 119.728150, 39.173753, '成都市福田区街道', 120.037708, 38.904857, 8.30, 20.75, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-05-08 00:25:42', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (861, 'DD202605081032329645dd2b', 384, NULL, NULL, 1, '舒适型', 1, '重庆市海淀区街道', 118.714083, 39.426466, '北京市东城区街道', 118.381079, 39.491587, 21.76, 75.04, 21.71, 45.56, 45.56, 11.00, 34.56, 4, 1, 2, '', '2026-05-08 01:18:11', '2026-05-08 01:48:11', '2026-05-08 02:23:11', '2026-05-08 02:34:11', NULL, '2026-05-08 01:05:11', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (862, 'DD2026050810323258172050', 459, 169, 10, 1, '舒适型', 2, '深圳市东城区街道', 116.605370, 39.869106, '西安市南山区街道', 116.749774, 39.989413, 18.93, 44.85, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 14:58:14', '2026-05-08 15:13:14', NULL, NULL, NULL, '2026-05-08 14:54:14', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (863, 'DD2026050810323268856e68', 396, NULL, NULL, 1, '商务型', 1, '北京市南山区街道', 118.894901, 39.712024, '武汉市南山区街道', 119.366370, 39.760510, 13.20, 31.62, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 05:09:52', '2026-05-08 05:23:52', NULL, NULL, NULL, '2026-05-08 05:06:52', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (864, 'DD20260508103232b58d2dd5', 221, NULL, NULL, 2, '舒适型', 3, '广州市海淀区街道', 117.185333, 41.829324, '武汉市南山区街道', 117.435320, 41.588300, 22.60, 78.84, 26.43, 82.55, 82.55, 8.06, 74.49, 4, 1, 1, '', '2026-05-08 01:47:39', '2026-05-08 01:54:39', '2026-05-08 02:23:39', '2026-05-08 02:32:39', NULL, '2026-05-08 01:36:39', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (865, 'DD20260508103232fbdc29ba', 429, 52, 42, 2, '舒适型', 2, '南京市海淀区街道', 118.912949, 40.308109, '广州市海淀区街道', 118.754967, 40.448861, 12.73, 33.98, 14.58, 47.65, 47.65, 1.10, 46.55, 4, 1, 1, '', '2026-05-08 04:15:39', '2026-05-08 04:25:39', '2026-05-08 04:45:39', '2026-05-08 04:55:39', NULL, '2026-05-08 04:14:39', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (866, 'DD202605081032321a22ff36', 200, 117, 48, 2, '经济型', 1, '重庆市福田区街道', 118.886464, 39.796836, '深圳市西城区街道', 118.540248, 39.592183, 19.42, 50.76, 19.46, 43.13, 43.13, 9.48, 33.65, 4, 1, 2, '', '2026-05-08 05:01:10', '2026-05-08 05:31:10', '2026-05-08 07:27:10', '2026-05-08 07:32:10', NULL, '2026-05-08 04:46:10', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (867, 'DD20260508103232d62c1bb5', 244, 82, 19, 1, '经济型', 3, '重庆市东城区街道', 118.710915, 40.957607, '北京市南山区街道', 119.202667, 41.007342, 8.50, 29.70, 7.65, 16.72, 16.72, 2.20, 14.52, 4, 1, 2, '', '2026-05-08 15:00:35', '2026-05-08 15:08:35', '2026-05-08 16:14:35', '2026-05-08 16:37:35', NULL, '2026-05-08 14:52:35', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (868, 'DD2026050810323249e26ac6', 336, 61, 50, 2, '舒适型', 1, '西安市海淀区街道', 116.880947, 41.418276, '深圳市朝阳区街道', 116.670508, 41.681135, 14.36, 29.69, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 04:44:32', NULL, NULL, NULL, NULL, '2026-05-08 04:31:32', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (869, 'DD202605081032327547d2a6', 429, 183, 41, 2, '舒适型', 2, '深圳市西城区街道', 116.509835, 39.311623, '深圳市朝阳区街道', 117.008013, 39.545603, 26.92, 92.59, 30.21, 83.28, 83.28, 3.20, 80.08, 4, 1, 1, '', '2026-05-08 14:06:40', '2026-05-08 14:35:40', '2026-05-08 15:43:40', '2026-05-08 16:10:40', NULL, '2026-05-08 14:04:40', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (870, 'DD202605081032320f15afe2', 247, 147, 22, 2, '经济型', 3, '南京市东城区街道', 117.933397, 41.896412, '武汉市海淀区街道', 118.320444, 42.021345, 10.98, 43.03, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 08:07:51', NULL, NULL, NULL, NULL, '2026-05-08 08:02:51', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (871, 'DD20260508103232ca3a8c15', 32, 61, 23, 1, '经济型', 3, '武汉市西城区街道', 116.841293, 40.594070, '武汉市朝阳区街道', 117.167917, 40.716705, 11.39, 29.20, 12.00, 38.89, 38.89, 1.45, 37.44, 5, 2, 0, '用户取消', '2026-05-08 09:07:50', '2026-05-08 09:19:50', '2026-05-08 10:17:50', NULL, '2026-05-08 09:50:50', '2026-05-08 08:54:50', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (872, 'DD20260508103232702f3436', 343, 2, 33, 1, '舒适型', 2, '广州市福田区街道', 116.053740, 41.292823, '西安市朝阳区街道', 116.198646, 41.449386, 10.31, 32.28, 10.45, 30.49, 30.49, 4.64, 25.85, 4, 1, 2, '', '2026-05-08 23:35:31', '2026-05-08 23:52:31', '2026-05-09 01:45:31', '2026-05-09 02:10:31', NULL, '2026-05-08 23:23:31', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (873, 'DD20260508103232223fd04e', 190, 130, 52, 2, '舒适型', 3, '重庆市南山区街道', 118.103353, 41.063157, '上海市东城区街道', 118.526014, 41.032087, 19.68, 59.49, 23.53, 53.77, 53.77, 5.81, 47.96, 4, 1, 2, '', '2026-05-08 11:24:09', '2026-05-08 11:31:09', '2026-05-08 11:41:09', '2026-05-08 11:54:09', NULL, '2026-05-08 11:13:09', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (874, 'DD202605081032328f125b21', 478, 55, 47, 2, '商务型', 3, '南京市东城区街道', 117.186070, 40.374675, '西安市海淀区街道', 117.167105, 40.460361, 8.89, 28.66, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 07:02:01', NULL, NULL, NULL, NULL, '2026-05-08 06:51:01', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (875, 'DD2026050810323259d23fb7', 314, 46, 33, 1, '舒适型', 2, '杭州市西城区街道', 116.179191, 40.383363, '上海市朝阳区街道', 116.102552, 40.118968, 10.18, 27.22, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 23:16:18', '2026-05-08 23:24:18', NULL, NULL, NULL, '2026-05-08 23:04:18', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (876, 'DD20260508103232df30b788', 203, 100, 39, 1, '商务型', 1, '南京市海淀区街道', 117.684351, 39.806207, '北京市西城区街道', 117.527106, 39.764738, 17.56, 67.66, 20.70, 56.71, 56.71, 10.44, 46.27, 4, 1, 1, '', '2026-05-08 21:49:09', '2026-05-08 22:16:09', '2026-05-08 23:08:09', '2026-05-08 23:15:09', NULL, '2026-05-08 21:34:09', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (877, 'DD20260508103232237ff6f0', 153, 70, 32, 2, '舒适型', 1, '深圳市西城区街道', 119.217151, 41.366328, '南京市海淀区街道', 119.084232, 41.451300, 18.08, 53.90, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 07:52:12', '2026-05-08 08:10:12', NULL, NULL, NULL, '2026-05-08 07:42:12', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (878, 'DD20260508103232e1c7ecea', 355, 196, 47, 2, '经济型', 3, '上海市海淀区街道', 117.544826, 41.220617, '西安市西城区街道', 117.526373, 41.165188, 9.69, 23.85, 11.25, 23.06, 23.06, 6.86, 16.20, 4, 1, 2, '', '2026-05-08 18:56:34', '2026-05-08 19:12:34', '2026-05-08 21:03:34', '2026-05-08 21:19:34', NULL, '2026-05-08 18:41:34', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (879, 'DD202605081032322380f9e5', 59, 23, 22, 1, '经济型', 2, '上海市朝阳区街道', 116.045379, 40.336900, '武汉市南山区街道', 116.293300, 40.327281, 2.70, 10.44, 3.13, 7.47, 7.47, 0.84, 6.63, 5, 2, 0, '司机取消', '2026-05-08 20:54:26', '2026-05-08 21:12:26', '2026-05-08 21:46:26', NULL, '2026-05-08 20:55:26', '2026-05-08 20:52:26', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (880, 'DD20260508103232cb34206d', 122, 132, 15, 2, '舒适型', 2, '重庆市海淀区街道', 119.971724, 39.973927, '成都市南山区街道', 119.921401, 39.830768, 10.58, 26.73, 9.85, 33.96, 33.96, 4.51, 29.45, 4, 1, 1, '', '2026-05-08 09:37:32', '2026-05-08 09:50:32', '2026-05-08 10:21:32', '2026-05-08 10:27:32', NULL, '2026-05-08 09:35:32', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (881, 'DD202605081032329209f144', 111, NULL, NULL, 1, '商务型', 2, '成都市海淀区街道', 117.627298, 39.327164, '重庆市福田区街道', 117.900685, 39.458041, 23.84, 65.34, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 12:34:48', NULL, NULL, NULL, NULL, '2026-05-08 12:25:48', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (882, 'DD202605081032329cde95ee', 140, 42, 1, 2, '商务型', 2, '成都市福田区街道', 118.886889, 40.314979, '西安市福田区街道', 119.381772, 40.394465, 5.15, 16.38, 4.68, 14.72, 14.72, 3.75, 10.97, 6, 0, 0, '', '2026-05-08 21:24:38', '2026-05-08 21:40:38', '2026-05-08 22:38:38', NULL, NULL, '2026-05-08 21:11:38', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (883, 'DD20260508103232ef85b064', 159, 19, 11, 2, '商务型', 2, '上海市东城区街道', 116.055255, 40.104972, '北京市朝阳区街道', 115.957162, 40.123089, 5.01, 16.02, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 16:25:31', NULL, NULL, NULL, NULL, '2026-05-08 16:22:31', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (884, 'DD20260508103232b946a18d', 166, 156, 28, 1, '商务型', 1, '西安市东城区街道', 116.140944, 41.459612, '武汉市西城区街道', 115.911936, 41.289691, 25.97, 63.85, 30.76, 67.28, 67.28, 18.13, 49.15, 4, 1, 1, '', '2026-05-08 13:06:12', '2026-05-08 13:31:12', '2026-05-08 13:55:12', '2026-05-08 13:59:12', NULL, '2026-05-08 12:59:12', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (885, 'DD202605081032326f7724a5', 341, 84, 15, 1, '商务型', 1, '广州市海淀区街道', 118.725755, 39.592862, '上海市海淀区街道', 118.643395, 39.747269, 13.67, 47.65, 14.45, 32.07, 32.07, 9.34, 22.73, 4, 1, 2, '', '2026-05-08 23:39:28', '2026-05-09 00:05:28', '2026-05-09 01:30:28', '2026-05-09 01:39:28', NULL, '2026-05-08 23:31:28', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (886, 'DD202605081032328ade96d8', 227, 184, 6, 2, '经济型', 2, '上海市海淀区街道', 118.164544, 40.164116, '杭州市东城区街道', 117.972410, 40.461357, 10.66, 30.48, 12.55, 40.60, 40.60, 3.42, 37.18, 5, 2, 0, '用户取消', '2026-05-08 04:32:42', '2026-05-08 04:42:42', '2026-05-08 05:12:42', NULL, '2026-05-08 04:52:42', '2026-05-08 04:25:42', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (887, 'DD20260508103232ab600526', 83, 136, 27, 1, '经济型', 2, '成都市朝阳区街道', 118.950278, 40.035950, '北京市朝阳区街道', 118.511169, 39.837671, 19.51, 50.61, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 11:25:28', NULL, NULL, NULL, NULL, '2026-05-08 11:11:28', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (888, 'DD202605081032322a1048e9', 355, 151, 46, 2, '商务型', 1, '北京市西城区街道', 119.885171, 41.008228, '杭州市南山区街道', 119.998235, 41.139220, 19.79, 75.18, 0.00, 0.00, 0.00, 0.00, 0.00, 1, 0, 0, '', NULL, NULL, NULL, NULL, NULL, '2026-05-08 20:41:44', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (889, 'DD2026050810323225c0bc10', 166, 24, 15, 1, '舒适型', 3, '西安市南山区街道', 116.820062, 40.323480, '重庆市朝阳区街道', 116.374232, 40.542710, 17.74, 38.04, 18.74, 59.86, 59.86, 9.82, 50.04, 5, 2, 0, '系统取消', '2026-05-08 02:18:37', '2026-05-08 02:28:37', '2026-05-08 04:07:37', NULL, '2026-05-08 03:06:37', '2026-05-08 02:07:37', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (890, 'DD20260508103232b01c64fd', 465, 78, 31, 1, '商务型', 3, '上海市福田区街道', 119.837538, 41.653778, '武汉市海淀区街道', 119.750595, 41.824231, 7.51, 26.91, 7.26, 26.83, 26.83, 7.90, 18.93, 4, 1, 2, '', '2026-05-08 09:28:01', '2026-05-08 09:48:01', '2026-05-08 11:19:01', '2026-05-08 11:38:01', NULL, '2026-05-08 09:15:01', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (891, 'DD202605081032326fdbbfbd', 280, 157, 10, 1, '经济型', 1, '杭州市东城区街道', 116.455963, 41.614377, '西安市海淀区街道', 116.793024, 41.440284, 11.78, 44.30, 13.08, 31.89, 31.89, 8.36, 23.53, 4, 1, 1, '', '2026-05-08 04:24:39', '2026-05-08 04:45:39', '2026-05-08 05:39:39', '2026-05-08 05:55:39', NULL, '2026-05-08 04:10:39', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (892, 'DD2026050810323209201382', 22, 139, 1, 2, '舒适型', 1, '西安市南山区街道', 118.032590, 41.715005, '重庆市福田区街道', 117.774281, 41.592451, 2.18, 7.01, 2.03, 5.87, 5.87, 1.52, 4.35, 4, 1, 1, '', '2026-05-08 01:24:09', '2026-05-08 01:53:09', '2026-05-08 03:05:09', '2026-05-08 03:27:09', NULL, '2026-05-08 01:13:09', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (893, 'DD202605081032329e3b66e9', 380, 171, 35, 1, '舒适型', 1, '杭州市海淀区街道', 118.227710, 41.198021, '上海市朝阳区街道', 118.553819, 41.127850, 25.69, 75.66, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 07:40:52', '2026-05-08 07:51:52', NULL, NULL, NULL, '2026-05-08 07:28:52', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (894, 'DD20260508103232a7125895', 151, 23, 28, 1, '舒适型', 2, '南京市朝阳区街道', 118.896742, 41.980844, '上海市西城区街道', 118.762448, 41.846822, 8.71, 25.51, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 12:02:16', NULL, NULL, NULL, NULL, '2026-05-08 11:50:16', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (895, 'DD202605081032324ef497d1', 148, 64, 35, 2, '商务型', 1, '广州市福田区街道', 118.885729, 41.045482, '武汉市朝阳区街道', 119.005563, 40.916210, 24.48, 54.95, 22.72, 82.13, 82.13, 14.57, 67.56, 6, 0, 0, '', '2026-05-08 02:19:05', '2026-05-08 02:29:05', '2026-05-08 02:56:05', NULL, NULL, '2026-05-08 02:07:05', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (896, 'DD2026050810323205fbc4f2', 166, 119, 21, 1, '舒适型', 1, '上海市朝阳区街道', 118.714899, 41.383734, '上海市东城区街道', 118.596449, 41.088162, 24.18, 48.58, 24.47, 86.15, 86.15, 19.65, 66.50, 6, 0, 0, '', '2026-05-08 05:01:03', '2026-05-08 05:29:03', '2026-05-08 07:14:03', NULL, NULL, '2026-05-08 04:56:03', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (897, 'DD20260508103232874fb6b2', 105, 38, 45, 1, '经济型', 3, '南京市南山区街道', 119.805702, 40.146331, '成都市南山区街道', 120.273592, 40.298597, 19.68, 40.95, 18.35, 61.76, 61.76, 15.20, 46.56, 4, 1, 2, '', '2026-05-08 22:29:50', '2026-05-08 22:40:50', '2026-05-09 00:32:50', '2026-05-09 00:54:50', NULL, '2026-05-08 22:28:50', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (898, 'DD20260508103232281eda86', 294, NULL, NULL, 1, '经济型', 3, '广州市南山区街道', 117.865266, 39.252598, '上海市东城区街道', 117.810014, 39.337770, 8.70, 31.40, 8.87, 27.01, 27.01, 4.09, 22.92, 4, 1, 2, '', '2026-05-08 22:09:21', '2026-05-08 22:33:21', '2026-05-09 00:16:21', '2026-05-09 00:29:21', NULL, '2026-05-08 21:59:21', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (899, 'DD202605081032326ca1cb46', 314, 196, 40, 1, '舒适型', 1, '上海市西城区街道', 116.452571, 40.329282, '成都市东城区街道', 116.109569, 40.615593, 29.87, 118.16, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 09:45:00', '2026-05-08 09:50:00', NULL, NULL, NULL, '2026-05-08 09:32:00', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (900, 'DD20260508103232ed9ba57d', 205, 76, 1, 2, '商务型', 2, '南京市西城区街道', 118.838737, 39.498939, '上海市福田区街道', 118.449407, 39.369190, 4.22, 11.98, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-09 00:08:56', '2026-05-09 00:27:56', NULL, NULL, NULL, '2026-05-08 23:55:56', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (901, 'DD202605081032328c3070c9', 336, 150, 32, 2, '舒适型', 3, '重庆市西城区街道', 118.707566, 39.992584, '重庆市朝阳区街道', 118.376237, 39.952886, 3.11, 6.44, 3.19, 6.58, 6.58, 1.81, 4.77, 4, 1, 1, '', '2026-05-08 11:55:23', '2026-05-08 12:02:23', '2026-05-08 13:32:23', '2026-05-08 13:43:23', NULL, '2026-05-08 11:44:23', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (902, 'DD20260508103232541f66ca', 184, 65, 31, 2, '舒适型', 2, '上海市西城区街道', 119.558656, 40.880411, '西安市福田区街道', 119.573938, 40.912506, 22.38, 57.36, 20.62, 79.53, 79.53, 12.79, 66.74, 4, 1, 2, '', '2026-05-08 03:09:41', '2026-05-08 03:21:41', '2026-05-08 04:43:41', '2026-05-08 05:01:41', NULL, '2026-05-08 02:54:41', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (903, 'DD202605081032325a428fb5', 301, 152, 28, 2, '商务型', 2, '深圳市东城区街道', 117.150255, 39.440984, '深圳市福田区街道', 117.229717, 39.251621, 24.13, 50.46, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 17:02:28', NULL, NULL, NULL, NULL, '2026-05-08 16:58:28', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (904, 'DD202605081032325597f11a', 41, 112, 33, 2, '舒适型', 3, '上海市朝阳区街道', 118.149863, 41.138511, '深圳市海淀区街道', 117.983313, 40.904734, 5.70, 18.24, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 06:59:23', NULL, NULL, NULL, NULL, '2026-05-08 06:50:23', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (905, 'DD2026050810323234013213', 280, 24, 30, 1, '经济型', 1, '西安市朝阳区街道', 118.414360, 39.720514, '西安市海淀区街道', 118.615666, 39.889627, 25.78, 63.19, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 13:43:07', '2026-05-08 13:51:07', NULL, NULL, NULL, '2026-05-08 13:38:07', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (906, 'DD2026050810323214301fac', 42, 56, 3, 1, '舒适型', 1, '西安市西城区街道', 116.472497, 41.827930, '西安市东城区街道', 116.021768, 41.694069, 16.28, 34.00, 17.74, 63.21, 63.21, 1.60, 61.61, 5, 2, 0, '用户取消', '2026-05-08 15:10:14', '2026-05-08 15:38:14', '2026-05-08 17:16:14', NULL, '2026-05-08 15:35:14', '2026-05-08 15:07:14', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (907, 'DD2026050810323208c02a43', 207, 85, 48, 2, '舒适型', 3, '南京市海淀区街道', 116.944496, 39.087292, '上海市南山区街道', 116.961299, 39.170437, 21.18, 77.43, 24.29, 83.04, 83.04, 19.37, 63.67, 4, 1, 2, '', '2026-05-08 21:41:00', '2026-05-08 22:05:00', '2026-05-08 22:20:00', '2026-05-08 22:42:00', NULL, '2026-05-08 21:40:00', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (908, 'DD20260508103232cd125da1', 17, 142, 7, 1, '舒适型', 2, '深圳市朝阳区街道', 117.076589, 40.557216, '上海市东城区街道', 117.059629, 40.768715, 7.84, 16.73, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 11:15:27', '2026-05-08 11:35:27', NULL, NULL, NULL, '2026-05-08 11:11:27', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (909, 'DD202605081032323b84c856', 142, 200, 11, 2, '经济型', 2, '重庆市西城区街道', 117.597378, 39.521504, '成都市福田区街道', 117.969794, 39.240076, 27.08, 56.88, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 13:15:06', NULL, NULL, NULL, NULL, '2026-05-08 13:11:06', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (910, 'DD202605081032323eadaffe', 196, 51, 3, 1, '舒适型', 3, '北京市福田区街道', 119.294442, 41.328859, '西安市东城区街道', 119.212574, 41.146410, 11.28, 40.62, 12.68, 48.90, 48.90, 10.37, 38.53, 4, 1, 2, '', '2026-05-08 10:03:45', '2026-05-08 10:15:45', '2026-05-08 10:29:45', '2026-05-08 10:46:45', NULL, '2026-05-08 09:52:45', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (911, 'DD202605081032321af85dd7', 173, 144, 13, 1, '经济型', 1, '重庆市海淀区街道', 116.086257, 41.351431, '上海市东城区街道', 116.162146, 41.409762, 8.96, 21.69, 10.17, 37.79, 37.79, 0.28, 37.51, 6, 0, 0, '', '2026-05-08 17:20:59', '2026-05-08 17:34:59', '2026-05-08 18:18:59', NULL, NULL, '2026-05-08 17:12:59', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (912, 'DD20260508103232de3c8d48', 12, 155, 3, 1, '舒适型', 1, '广州市东城区街道', 116.389275, 40.856096, '杭州市福田区街道', 116.506415, 40.914999, 22.07, 47.14, 24.72, 68.12, 68.12, 14.28, 53.84, 5, 2, 0, '司机取消', '2026-05-08 01:34:48', '2026-05-08 01:41:48', '2026-05-08 03:11:48', NULL, '2026-05-08 02:13:48', '2026-05-08 01:31:48', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (913, 'DD2026050810323299e86151', 102, 11, 19, 1, '舒适型', 3, '广州市福田区街道', 116.208335, 41.120814, '成都市海淀区街道', 116.052731, 40.939934, 4.08, 13.35, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 08:18:24', '2026-05-08 08:42:24', NULL, NULL, NULL, '2026-05-08 08:10:24', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (914, 'DD202605081032327bc965a6', 178, 11, 15, 2, '舒适型', 1, '重庆市西城区街道', 116.163712, 41.815952, '北京市西城区街道', 116.195517, 42.045373, 2.46, 9.66, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 05:30:40', NULL, NULL, NULL, NULL, '2026-05-08 05:21:40', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (915, 'DD20260508103232b7f2df8b', 409, 41, 2, 1, '经济型', 1, '上海市西城区街道', 118.472866, 41.980492, '西安市东城区街道', 118.819840, 41.930163, 7.26, 27.65, 7.03, 22.30, 22.30, 3.92, 18.38, 4, 1, 1, '', '2026-05-08 07:33:18', '2026-05-08 07:44:18', '2026-05-08 08:55:18', '2026-05-08 09:10:18', NULL, '2026-05-08 07:24:18', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (916, 'DD20260508103232c673b902', 239, 152, 10, 1, '商务型', 2, '上海市西城区街道', 116.274244, 41.100016, '杭州市朝阳区街道', 116.664565, 41.038614, 13.87, 40.30, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 06:20:47', '2026-05-08 06:25:47', NULL, NULL, NULL, '2026-05-08 06:06:47', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (917, 'DD202605081032325bda2b7b', 163, 22, 29, 1, '舒适型', 3, '广州市南山区街道', 116.944385, 40.479471, '西安市朝阳区街道', 116.637979, 40.299095, 14.16, 56.14, 16.43, 64.11, 64.11, 2.15, 61.96, 5, 2, 0, '司机取消', '2026-05-08 20:54:00', '2026-05-08 21:22:00', '2026-05-08 23:09:00', NULL, '2026-05-08 20:53:00', '2026-05-08 20:49:00', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (918, 'DD20260508103232e611c4ad', 343, 30, 6, 2, '商务型', 2, '南京市福田区街道', 116.183395, 40.458683, '北京市东城区街道', 115.704470, 40.561448, 8.19, 32.15, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 10:51:13', '2026-05-08 11:21:13', NULL, NULL, NULL, '2026-05-08 10:46:13', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (919, 'DD20260508103232143d9e88', 289, 72, 2, 2, '商务型', 2, '西安市福田区街道', 116.993899, 41.706374, '上海市东城区街道', 116.535884, 41.485508, 3.60, 12.16, 4.30, 11.56, 11.56, 2.52, 9.04, 6, 0, 0, '', '2026-05-08 20:48:11', '2026-05-08 21:07:11', '2026-05-08 21:39:11', NULL, NULL, '2026-05-08 20:47:11', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (920, 'DD202605081032321c234890', 393, 47, 10, 2, '舒适型', 3, '杭州市东城区街道', 119.050345, 39.223039, '上海市西城区街道', 118.809502, 39.485167, 18.56, 60.90, 21.22, 55.52, 55.52, 7.00, 48.52, 4, 1, 2, '', '2026-05-08 10:55:32', '2026-05-08 11:13:32', '2026-05-08 12:59:32', '2026-05-08 13:08:32', NULL, '2026-05-08 10:54:32', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (921, 'DD20260508103232a78487ce', 226, 24, 5, 2, '商务型', 1, '深圳市福田区街道', 116.753217, 41.185762, '成都市西城区街道', 116.921902, 41.388078, 20.43, 50.13, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 0, 0, '', '2026-05-08 11:05:59', NULL, NULL, NULL, NULL, '2026-05-08 10:51:59', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (922, 'DD20260508103232a4c79f9d', 17, 93, 9, 1, '经济型', 2, '上海市朝阳区街道', 118.395679, 39.199951, '南京市西城区街道', 118.311285, 39.234944, 3.64, 7.65, 4.02, 12.69, 12.69, 0.85, 11.84, 4, 1, 1, '', '2026-05-08 12:32:52', '2026-05-08 12:42:52', '2026-05-08 14:29:52', '2026-05-08 14:56:52', NULL, '2026-05-08 12:29:52', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (923, 'DD20260508103232b3861072', 105, 95, 31, 1, '经济型', 1, '重庆市东城区街道', 116.031636, 39.913947, '深圳市海淀区街道', 116.102791, 39.993578, 17.93, 65.90, 17.81, 69.00, 69.00, 4.67, 64.33, 4, 1, 2, '', '2026-05-08 10:44:45', '2026-05-08 10:51:45', '2026-05-08 12:09:45', '2026-05-08 12:24:45', NULL, '2026-05-08 10:42:45', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (924, 'DD202605081032329b7f8729', 259, 78, 25, 1, '商务型', 3, '深圳市东城区街道', 117.675462, 39.666564, '杭州市西城区街道', 117.560667, 39.662088, 22.62, 61.25, 0.00, 0.00, 0.00, 0.00, 0.00, 3, 0, 0, '', '2026-05-08 14:47:49', '2026-05-08 14:52:49', NULL, NULL, NULL, '2026-05-08 14:32:49', '2026-05-08 10:32:49');
INSERT INTO `order` VALUES (925, 'DD202605081032320899b7b9', 443, 165, 42, 1, '舒适型', 1, '西安市朝阳区街道', 119.600504, 41.301639, '深圳市西城区街道', 119.703781, 41.155652, 13.43, 40.81, 13.21, 30.50, 30.50, 1.85, 28.65, 4, 1, 1, '', '2026-05-08 05:03:39', '2026-05-08 05:26:39', '2026-05-08 05:53:39', '2026-05-08 06:16:39', NULL, '2026-05-08 04:52:39', '2026-05-08 10:32:49');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '订单派单日志' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 423 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '支付记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pay
-- ----------------------------
INSERT INTO `pay` VALUES (1, 'DD202605081028595f7ef89c', 13, 59.67, 2, 1, '2025-10-21 07:06:01', '85488B287F3C9DBABCC67B89814E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (2, 'DD202605081028593f1f90de', 3, 51.04, 1, 1, '2024-02-23 06:56:35', '4B54FA8FA0B598C0D08E78936556', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (3, 'DD20260508102859a94edb56', 300, 85.03, 1, 1, '2026-04-02 11:41:28', '9EA748C93E74A2AAC397CB45531B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (4, 'DD20260508102859f4483938', 389, 72.44, 2, 1, '2024-09-17 03:12:23', '878226F03D338FEA79AC8304979C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (5, 'DD2026050810285948f48059', 489, 37.02, 2, 1, '2025-12-20 14:50:59', '4DD4FDE5B5A299FBAA204BA75590', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (6, 'DD202605081028594e045414', 8, 36.73, 1, 1, '2024-11-01 02:35:28', 'A8010D18DEFDAEAD312A7E0BAC47', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (7, 'DD202605081028594b192b4d', 18, 14.24, 1, 1, '2025-01-08 02:43:57', '276A58703D34CA963D9C17DAFC6C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (8, 'DD2026050810285908b7d1b5', 335, 10.60, 1, 1, '2024-03-12 07:24:58', 'AE83EFFACD6FD545A742E6842BFE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (9, 'DD20260508102859e8326800', 292, 27.13, 1, 1, '2024-03-24 00:39:25', '90E5FCA49AE077129BDC5E3E4391', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (10, 'DD2026050810285975bfb13e', 362, 59.03, 2, 1, '2026-01-22 12:49:12', '43D9AE7521E56973F7DB188DD6AA', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (11, 'DD202605081028595cf43c07', 209, 121.53, 2, 1, '2024-12-11 04:15:36', '8AF1E7A9D108233148882DE2CD76', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (12, 'DD20260508102859e6261ef4', 209, 55.18, 2, 1, '2025-08-07 04:52:58', 'DC4AC4A50EE2744C387A02648FDF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (13, 'DD20260508102859c2586d38', 28, 48.48, 2, 1, '2024-04-26 09:31:09', '3AAA40075C0D2F0E2C463D40ECD3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (14, 'DD202605081028591016724e', 480, 18.92, 1, 1, '2025-06-24 05:20:02', 'DC09AC2E322108F77DBC04D7E575', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (15, 'DD20260508102859f49cb415', 272, 48.28, 2, 1, '2025-01-05 02:32:48', 'F87743A5874D3932AECCB2235DEE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (16, 'DD2026050810285925222549', 128, 96.94, 1, 1, '2024-08-25 02:35:24', '6035AFF1A7002C3614219C370E31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (17, 'DD202605081028593760e9f7', 80, 70.71, 1, 1, '2024-11-12 01:03:40', '32907A69182E3E18C0381958A988', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (18, 'DD202605081028597c4b1df9', 350, 35.17, 1, 1, '2025-02-18 20:53:48', '5364DD2E5965A17A0EC2CD3338D7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (19, 'DD20260508102859d6029213', 19, 10.20, 2, 1, '2025-07-10 19:42:33', '22026AB1116816A03E8140058ACB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (20, 'DD20260508102859620ec87a', 211, 45.14, 1, 1, '2025-02-15 09:28:17', '95CF3A52493D0F8B4BF5A8270E66', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (21, 'DD2026050810285928a3a1ab', 423, 67.71, 1, 1, '2025-06-26 15:42:07', 'F60BF4C2ED91D239059CFB3BB887', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (22, 'DD20260508102859c07f957c', 216, 21.98, 1, 1, '2026-04-30 01:23:01', '927075418D36306219060F737DBF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (23, 'DD202605081028595e1bad88', 155, 62.56, 2, 1, '2025-09-28 04:25:00', 'E42EF95B1E9FE427B22AE7175454', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (24, 'DD2026050810285946d359f1', 231, 32.66, 1, 1, '2025-09-24 05:33:17', '9F1F2A278EF376D848C2F8ED69D6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (25, 'DD2026050810285913620611', 326, 17.37, 1, 1, '2025-05-14 00:16:28', 'F487C5E214BCD0FCA2F9CE3CC4BD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (26, 'DD20260508102859b60fccae', 453, 35.62, 2, 1, '2025-12-18 23:12:44', 'BD3DEEEECB9860CA11DBA6E0616A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (27, 'DD2026050810285915a9e436', 139, 16.35, 1, 1, '2025-04-23 22:27:48', '71D99FC0D6E454E78AB7F92ECC22', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (28, 'DD20260508102859bf05188c', 417, 15.55, 2, 1, '2025-12-15 10:57:53', 'C2A24727961AAC0F1D5176E29077', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (29, 'DD20260508102859ada643b3', 260, 13.29, 2, 1, '2024-09-28 01:52:38', 'B4DBBFA0950CA3B9AFA465EEB225', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (30, 'DD2026050810285936ef3024', 274, 17.55, 2, 1, '2025-08-11 10:26:24', 'C057437EDA0854A95A83A43485CE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (31, 'DD20260508102859b395ac8e', 151, 45.28, 2, 1, '2024-04-19 18:49:33', '2C96D89725404CB6514D9387BE1C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (32, 'DD202605081028592a906cc4', 438, 9.26, 2, 1, '2024-12-30 02:43:16', 'FEC18A73504DB88B6FCED46070BD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (33, 'DD202605081028599bd5a850', 481, 105.28, 1, 1, '2024-12-24 01:40:21', '4DC5F90287B208F3EFFC4C788355', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (34, 'DD202605081028598017b646', 490, 47.27, 2, 1, '2024-09-15 20:21:43', 'C2A526DD494F89DE897151A2CC2A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (35, 'DD20260508102859a8d4082a', 105, 69.37, 1, 1, '2024-05-09 10:59:23', '98C208058F22652AA2526EC4EA1E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (36, 'DD20260508102859a0831634', 419, 28.34, 1, 1, '2025-02-13 14:11:09', 'AE79875AEFDB1BD17B5CD42CADBF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (37, 'DD202605081028590655d733', 89, 17.60, 2, 1, '2025-01-06 13:04:16', '7BDCB7E7398DCD94C5B9FE7D39C5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (38, 'DD20260508102859afa49f61', 436, 59.03, 2, 1, '2025-12-19 13:29:17', '8D90EB7A597CAB4123A18A45AF42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (39, 'DD202605081028599eee68e1', 49, 39.20, 1, 1, '2024-06-08 07:56:09', 'CA23DDF43F08EC49421FA9A96F15', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (40, 'DD2026050810285976c4ced5', 319, 51.23, 2, 1, '2025-12-08 11:33:23', '54B2016D0F89515F2072B80694FE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (41, 'DD20260508102859b2c53491', 220, 3.73, 1, 1, '2025-12-08 09:29:53', '16891EE1E3D3DC5D968108120C07', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (42, 'DD20260508102859ff82fa0d', 84, 51.02, 1, 1, '2024-03-22 08:31:10', 'FE6D6D0E013C8A6DA56784D92199', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (43, 'DD20260508102859284985c6', 16, 7.37, 2, 1, '2024-11-14 18:37:13', 'B38DABAEDA897973968A4E18572E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (44, 'DD2026050810285978ae05ff', 34, 97.91, 2, 1, '2024-02-19 19:02:22', '1C4119630AB1E859BC2E5DBCC626', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (45, 'DD202605081028596ab99929', 311, 52.60, 1, 1, '2025-10-16 17:38:57', 'BD797C572C4E5E0602E6B0FE4D98', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (46, 'DD20260508102859d5289831', 435, 31.41, 1, 1, '2024-11-22 01:31:34', '4B68EB9C52EAC0D7A162372F1989', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (47, 'DD20260508102859054cf605', 174, 18.32, 1, 1, '2025-08-31 03:12:06', '4EC5F2F928F0D81224AA9ACDA7A0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (48, 'DD20260508102859bc12a999', 361, 22.12, 2, 1, '2024-08-30 07:20:25', '00B6B391A27F71442837FC1E8719', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (49, 'DD202605081028597d464823', 385, 65.60, 1, 1, '2024-04-01 02:48:08', 'EF76FABB94C00FD85F7687FF31E2', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (50, 'DD20260508102859548b32fe', 93, 3.02, 1, 1, '2024-03-21 06:42:04', '3D4A80E9A2954A02306F54D8A6B9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (51, 'DD20260508102859925e0ef0', 286, 44.33, 1, 1, '2025-01-26 08:52:14', 'BB3C62E14702B891A4D1F965BBB0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (52, 'DD20260508102859df097321', 394, 18.87, 2, 1, '2024-06-28 17:41:48', '06282EDF166F91BCD538E3227E6D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (53, 'DD2026050810285903591d48', 187, 10.72, 2, 1, '2024-04-22 17:01:57', '7591A4FCBE2B21135888D9F3A54C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (54, 'DD202605081028592f5201ed', 281, 31.61, 2, 1, '2026-03-02 03:02:17', '271915CD03FB33C89EA5657D1AEF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (55, 'DD202605081028591107153c', 302, 19.52, 2, 1, '2024-06-15 01:58:10', '1F550A028AA0A9D5B9A47999737C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (56, 'DD20260508102859c66d587e', 103, 50.06, 1, 1, '2025-11-07 19:22:21', 'C245931EFD23F92413F1D460274D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (57, 'DD2026050810285963d12da8', 257, 14.71, 1, 1, '2024-05-07 03:30:39', '5CFC553C679B3EE9AB3681CEEF15', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (58, 'DD20260508102859dc3c3ea1', 190, 35.48, 1, 1, '2025-02-04 05:56:47', '4FD357F447C8E46F5C3C5AE5983B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (59, 'DD202605081028599c7a6881', 157, 43.92, 1, 1, '2024-04-21 23:23:20', '562C8E2945F3F8CDAF701ED6AA43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (60, 'DD20260508102859d7195a28', 470, 42.15, 1, 1, '2025-07-06 03:32:25', 'F40C68E73F064BF432AEA5B1695C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (61, 'DD202605081028593f9d3a99', 79, 44.83, 2, 1, '2024-09-02 10:54:22', 'B936B8D28A90E2C8A8ACB3CD7636', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (62, 'DD202605081028594374a09c', 338, 33.17, 1, 1, '2024-05-09 21:29:46', 'EA4F6594A9E37038B6671B7AF389', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (63, 'DD2026050810285967320500', 225, 48.18, 2, 1, '2024-04-21 21:55:31', 'F8D72BF234B2D81901456B933ACD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (64, 'DD202605081028593c41ef5f', 215, 18.30, 1, 1, '2024-09-13 03:01:19', '6F73C30F316CE6D6B017C328F7B1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (65, 'DD2026050810285964ebd064', 430, 32.50, 2, 1, '2024-09-05 18:19:56', 'D44EFC30404CF8F40C523ACF69E4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (66, 'DD20260508102859a26f40bb', 223, 64.75, 2, 1, '2024-09-05 23:28:04', '1713AC25762CEDDFBCF143BAE0EE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (67, 'DD20260508102859624dac48', 477, 38.15, 1, 1, '2024-02-10 08:44:34', 'F9E943101978C72A9489A39D8478', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (68, 'DD202605081028595ad31861', 260, 37.41, 2, 1, '2025-08-06 07:57:47', '7634A26F6EED602C956D7A560DD4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (69, 'DD202605081028599ce7d7d7', 76, 79.41, 1, 1, '2025-09-04 15:04:58', '71AF2D0E051C2491575FBB2B8AE1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (70, 'DD2026050810285994596abb', 224, 63.96, 2, 1, '2024-12-26 01:59:51', '5E9E9DA0CDC7B7791F6386068D74', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (71, 'DD2026050810285997415484', 474, 9.47, 2, 1, '2024-07-21 02:36:29', 'F034B72B25F15451A16BDBBBA1F9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (72, 'DD2026050810285943db9026', 430, 29.20, 2, 1, '2025-03-23 09:56:26', 'D14CAF5252BADB55A8588C751CCE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (73, 'DD20260508102859d6538a6c', 205, 56.54, 1, 1, '2025-10-30 09:35:20', '93C9AE9F6855B5D4D710F3C6A5D3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (74, 'DD20260508102859887d76ec', 74, 17.85, 1, 1, '2026-01-15 17:02:08', 'E23378D54C5E568AEBAAEC06EC3A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (75, 'DD202605081028594acd1ce3', 21, 89.65, 2, 1, '2024-05-22 10:00:21', '1A8C0B3B8E4419E700A48508F872', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (76, 'DD20260508102859f452d6b1', 77, 31.01, 2, 1, '2024-07-27 03:11:38', 'F8912F93BE318DF43CD139041B81', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (77, 'DD20260508102859e08a42e8', 254, 16.91, 1, 1, '2025-07-03 03:15:15', 'AD938D941EC03BA1153FC030293F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (78, 'DD202605081028591636a24e', 60, 62.08, 1, 1, '2024-02-03 04:01:44', 'A08E3BF801E8DE80995B53D17778', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (79, 'DD20260508102859cdb36688', 34, 36.02, 1, 1, '2026-01-22 13:02:51', '2B26AB2E8F9C52594628BEF5C59E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (80, 'DD2026050810285960636703', 7, 54.59, 1, 1, '2025-07-01 08:05:54', '5F5F42F2174FA91D2C498EB1AC18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (81, 'DD20260508102859ff1e83a8', 329, 21.26, 1, 1, '2024-04-04 10:07:05', '72DC19AA9B5BBF8E131D78652D91', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (82, 'DD20260508102859ea1ab86f', 237, 49.28, 1, 1, '2025-04-08 23:46:25', 'C72701D7327F4A7371860FF12CC1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (83, 'DD20260508102859b42731da', 488, 3.93, 1, 1, '2025-02-18 21:34:20', '3C5B2D37B8253989708EAC0E23B9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (84, 'DD2026050810285901255697', 234, 7.27, 2, 1, '2026-04-07 07:23:07', 'F5044B6D6411E8FE3B612CBD81DD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (85, 'DD202605081028597f82d9ec', 73, 24.53, 2, 1, '2024-10-19 20:35:32', '733C999E3C071001D1A7AC27B6BE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (86, 'DD202605081028596cc507a8', 94, 26.89, 1, 1, '2026-03-18 06:23:50', 'DEFE927D5C3DC0FC6E5E0EF26C7F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (87, 'DD2026050810285951152123', 125, 39.47, 2, 1, '2025-02-23 10:11:00', '0CB27182E1008197D8F7D1D64A2A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (88, 'DD202605081028591cdcf3b0', 262, 65.32, 1, 1, '2025-03-20 18:01:01', '6B9DC99A64A16DE7CD3DC9C77EB9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (89, 'DD20260508102859016b9097', 152, 91.42, 2, 1, '2024-09-17 01:38:23', '88502A02E2B500F2B8C164E28A8C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (90, 'DD20260508102859896a2511', 114, 48.37, 1, 1, '2025-10-27 09:07:56', '93F203A7AACDC0308F4880E00513', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (91, 'DD20260508102859db95803c', 142, 64.64, 1, 1, '2024-05-25 20:48:52', '96946F33BB5CC11BF1C9FAF574CD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (92, 'DD2026050810285941ca7801', 5, 36.90, 2, 1, '2025-04-15 08:57:53', '8928648C7256C65CC7E9F5306BBD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (93, 'DD2026050810285920894742', 49, 27.08, 2, 1, '2025-08-15 16:08:40', '9AA0F56F007E09EFD291FB4BB6C3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (94, 'DD2026050810285983dbdfb2', 375, 47.69, 2, 1, '2025-03-15 05:25:29', '38A9F31E169B51978B0CF2DC8C45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (95, 'DD20260508102859cd2b5fb0', 485, 17.57, 2, 1, '2024-10-11 22:26:33', 'FD177DFE4F271B29A436BC2E93BA', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (96, 'DD20260508102859a859b460', 253, 61.16, 1, 1, '2024-09-08 08:38:09', 'AF9C5E9B783C25FAEF541168B7C7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (97, 'DD2026050810285917b26a9d', 395, 92.83, 2, 1, '2025-04-29 08:27:04', '6B17CBB86ACB0371D83BA26C341F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (98, 'DD20260508102859d48025b4', 234, 13.36, 2, 1, '2025-10-28 07:03:45', 'CE363C18DB63B52CAFA3FE6B7C00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (99, 'DD2026050810285931292c1b', 266, 37.62, 1, 1, '2024-03-05 02:48:03', 'DE3DDB8ED0555C866B019187A704', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (100, 'DD2026050810285971818696', 138, 4.36, 1, 1, '2025-10-08 17:54:33', '6990ADE554E39F04F644DAA7B8EE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (101, 'DD202605081028595ad4541d', 85, 73.28, 2, 1, '2024-02-16 17:17:00', 'EDF797D0527DB3747B7CD6925195', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (102, 'DD202605081028599f829af0', 290, 62.92, 1, 1, '2024-01-19 15:33:16', '549BA84C3FDEE1BC15F9DBC55F80', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (103, 'DD20260508102859491b28ca', 233, 42.04, 2, 1, '2024-05-25 21:52:47', '73277AD73BF16BCEA7DD37A69192', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (104, 'DD2026050810285972d1a5b4', 179, 49.12, 1, 1, '2025-06-15 07:13:32', '2E1041E81C338930EDFFE5BD006A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (105, 'DD202605081028595bc92d6f', 329, 102.22, 1, 1, '2025-06-01 14:59:11', '070363E56B4EB97E87218C7595F7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (106, 'DD20260508102859b7d581e9', 120, 44.61, 2, 1, '2024-11-24 15:24:41', '806DD9EF99F00CF9B6E554E1F1F4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (107, 'DD2026050810285930d4945c', 306, 23.53, 1, 1, '2024-10-16 22:23:14', 'BA89DFFB33D248E8D796A7186C2A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (108, 'DD202605081028598ff61b29', 458, 74.95, 1, 1, '2024-10-24 18:45:37', '044EB6A665727AF31BA93B63E665', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (109, 'DD202605081028591e7665aa', 254, 47.09, 1, 1, '2025-04-27 05:14:44', 'E846C3CAF379BE82A225BCBED418', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (110, 'DD202605081028595318aff0', 166, 95.42, 1, 1, '2025-01-28 22:44:39', '439A9A20BCF120E975DAD2E22B43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (111, 'DD20260508102859ce35513b', 13, 33.68, 2, 1, '2025-02-18 12:44:50', '5DF4C95B59501B321DED3E15831B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (112, 'DD202605081028593d21d131', 344, 35.19, 1, 1, '2025-06-23 17:38:01', 'FAD1A4CEC4C43A9DB39B672F7932', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (113, 'DD202605081028592a13072f', 426, 16.19, 2, 1, '2024-07-12 21:18:33', '42C87DC68D5C19891D1FB6F0A276', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (114, 'DD20260508102859b40b154d', 230, 8.29, 1, 1, '2024-03-18 05:41:45', '4CBD0BF40DD69B77A5D9B3558C76', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (115, 'DD202605081028593ab1cf3a', 366, 57.48, 1, 1, '2026-03-05 08:08:13', 'C250326857C47CA25C5826B06BF2', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (116, 'DD202605081028591a55e0bf', 146, 9.55, 1, 1, '2024-03-01 14:38:15', '313E5285D287E943566CB49420CE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (117, 'DD202605081028591ad84fe3', 237, 67.30, 1, 1, '2026-04-13 08:38:35', '0869736DB3366772699C5D705569', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (118, 'DD20260508102859f8cf19d5', 243, 40.07, 2, 1, '2025-03-29 19:42:18', '8CA30EBD44086E75F3E1DB8C6F0C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (119, 'DD20260508102859a56e2088', 301, 64.09, 1, 1, '2024-10-12 05:15:36', '50737FE96F5EFB767BFA5C5DBB51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (120, 'DD20260508102859b9d9bdb8', 11, 61.74, 2, 1, '2024-07-11 17:01:16', 'B6C32208FF650719981BF816A7C1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (121, 'DD20260508102859f1bc2a9f', 352, 30.26, 1, 1, '2026-03-22 20:25:39', 'D216BB5575B4F12F47C73CC1F49E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (122, 'DD20260508102859e03f6078', 332, 79.17, 1, 1, '2024-10-04 18:06:51', '84F7C6FCC6CD977EA52A1797521C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (123, 'DD202605081028590c6ce7d5', 309, 63.44, 1, 1, '2025-10-29 00:55:06', '519774742FA24E4467595D2C258B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (124, 'DD20260508102859a8100d0c', 454, 58.29, 1, 1, '2025-08-06 15:10:15', 'DBF9ABE67E0E20281A9461F48687', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (125, 'DD2026050810285917971f33', 296, 27.92, 2, 1, '2024-02-11 22:42:28', '2824CD9E13E764AD5805F74C716D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (126, 'DD202605081028595d17f947', 231, 15.01, 1, 1, '2026-03-11 22:43:10', 'EF76748D23637F2C8726A1042384', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (127, 'DD20260508102859549d3c89', 420, 16.89, 1, 1, '2026-02-13 12:38:12', '974B02D301B2FBC9B4CAE178980F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (128, 'DD2026050810285997647e53', 164, 8.89, 1, 1, '2024-02-01 09:06:49', '33EA23AE57DAD8C9381699ADBF9A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (129, 'DD202605081028594511499c', 309, 7.28, 1, 1, '2026-04-25 16:59:03', '1752AEC1BBBA0BB5E2CCBAC257AD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (130, 'DD202605081028596b81db5c', 373, 87.92, 1, 1, '2024-06-30 02:25:05', '75FE0AAF5938608F4008908A0C53', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (131, 'DD20260508102859dabf731e', 461, 16.95, 1, 1, '2026-05-03 11:26:38', '31C7C7864B048A6EF69871EE6672', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (132, 'DD202605081028597ff2d3ba', 131, 15.81, 1, 1, '2025-02-14 11:56:26', 'F989A14792A2210D8776B058C1E8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (133, 'DD20260508102859b53c3cfb', 458, 96.24, 1, 1, '2025-12-10 03:20:31', 'FD64FE21720AE757118FBC9FC30E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (134, 'DD20260508102859278330d5', 231, 52.36, 1, 1, '2025-02-19 19:43:15', '22607A96960704375D65D4953404', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (135, 'DD20260508102859a73e07f3', 410, 9.92, 2, 1, '2024-05-22 12:39:48', 'F66874C9AF2248F92038F3A9857B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (136, 'DD20260508102859284de71b', 427, 51.78, 2, 1, '2024-10-31 17:42:54', '6E75AC559B8956920774D3758A32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (137, 'DD20260508102859ddd60ca2', 235, 15.56, 2, 1, '2025-07-14 18:13:48', 'EED9991E32A82929BDD881E61DC4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (138, 'DD202605081028594b00452b', 200, 26.26, 1, 1, '2024-06-28 04:15:51', 'D3DB8E5BB7BA3076F1D2F28B56B5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (139, 'DD20260508102859e6517f0b', 65, 7.66, 2, 1, '2024-01-19 06:04:41', '2D24B4B02184414E017F580DA289', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (140, 'DD20260508102859b2bcc3bd', 182, 31.35, 1, 1, '2025-08-29 21:34:49', '4DF6AC2455D36D77A26142A9B132', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (141, 'DD2026050810285993916b73', 307, 47.14, 2, 1, '2025-11-25 23:56:36', '6EA9597643FCE58558C2B749F1CB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (142, 'DD202605081028590b5a905b', 261, 41.55, 2, 1, '2024-06-26 08:23:16', 'C4C9CBAC630B335C7192A385E620', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (143, 'DD202605081028594e62f187', 15, 10.89, 2, 1, '2024-06-14 02:47:46', '8D6ABE49A6BCE3E06412358A2BD9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (144, 'DD202605081028599863f812', 282, 36.55, 2, 1, '2024-03-06 03:13:39', 'A18A9447015B21E81FD02A049999', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (145, 'DD2026050810285959324ff3', 402, 58.15, 1, 1, '2026-03-27 13:10:33', '0E698F0B9867DA8B3AC8BECD524E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (146, 'DD20260508102859d1bc0b19', 275, 61.12, 2, 1, '2025-04-24 19:37:14', '781A4D6BC58ACE76B870A0181136', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (147, 'DD2026050810285993411e4e', 123, 32.88, 2, 1, '2025-02-28 20:35:22', '6ECB55B5728D4D6DAE1C7E628D75', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (148, 'DD202605081028599d9eac5f', 72, 42.93, 2, 1, '2025-04-13 07:45:24', 'A450CF75576264101B4CEE08DF42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (149, 'DD202605081028596ce62750', 178, 75.92, 1, 1, '2025-12-01 23:49:53', 'BB4EB48C548C442B910B68B5A2A4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (150, 'DD2026050810285951290163', 111, 42.14, 2, 1, '2024-11-19 07:06:15', 'F5E24DF15C6730C09FAB6DB32B0F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (151, 'DD202605081028595c4297da', 398, 51.30, 2, 1, '2026-02-25 15:42:20', '703742324CA60EC9973975A436FE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (152, 'DD20260508102859f7ff5b2b', 277, 6.94, 1, 1, '2026-04-13 18:33:17', 'CB656C39E9EC3B41DB78292AC7D1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (153, 'DD202605081028597466ee2c', 181, 46.83, 2, 1, '2024-12-21 16:32:47', '749F97CF3F38ED6E7FE568B1AF89', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (154, 'DD20260508102859f92052d8', 147, 24.59, 2, 1, '2024-01-23 20:43:30', '7AAD373D5EE1B19301E1FD1CAA25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (155, 'DD2026050810285986d01dfb', 37, 8.54, 2, 1, '2025-01-18 23:18:47', '2BB146C0A2F4D5A89BA4D0083152', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (156, 'DD202605081028590ec36a37', 289, 78.72, 1, 1, '2026-04-04 00:24:23', '4D40AF76420F9D9A2585AFC769F8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (157, 'DD20260508102859b257950b', 324, 35.43, 2, 1, '2024-08-09 07:27:56', '7EF23B9717BBE275CADBE8EBF795', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (158, 'DD20260508102859721bb95b', 148, 31.88, 1, 1, '2026-02-05 02:51:23', 'E752943850126F8D20C67A214901', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (159, 'DD20260508102859f0523064', 80, 40.66, 1, 1, '2024-05-16 16:27:20', 'D2F06B953B7E6C81FC8992552027', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (160, 'DD20260508102859f83b9880', 458, 62.78, 2, 1, '2024-09-24 09:46:43', '41F4814134AF744D33320B95EC6D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (161, 'DD20260508102859fb19eac1', 205, 8.46, 1, 1, '2025-04-22 08:53:25', '3D8D93A7609036A3BB01DB130F28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (162, 'DD202605081028590ef76991', 469, 45.18, 1, 1, '2026-04-13 00:48:22', '18B7E2C8F1B82A77DEDF65375F0A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (163, 'DD2026050810285972dfa9ae', 105, 40.47, 1, 1, '2025-12-22 15:59:57', '1D5FD3975E4A760B05D271B7299B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (164, 'DD2026050810285936b17a05', 38, 51.65, 1, 1, '2025-12-30 12:40:14', 'D55815E536BBCA278F7CAAC1B567', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (165, 'DD20260508102859dbf1b09a', 110, 45.43, 2, 1, '2024-02-10 12:56:18', 'D5F99A33239F4CA0F81C688D4B0B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (166, 'DD20260508102859a47ddd95', 375, 32.13, 2, 1, '2025-12-30 12:03:24', '57BD36C7DDEEB50DC2169DCB1C40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (167, 'DD2026050810285908d60dfd', 475, 21.07, 1, 1, '2025-05-19 14:24:20', 'BEB0BBE2F8B1929E961DB7619E39', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (168, 'DD202605081028592180ecec', 51, 30.75, 2, 1, '2024-03-15 07:56:17', 'F2E5CAB2CACEF58FA0F5176320D2', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (169, 'DD2026050810285940684dc5', 370, 76.04, 2, 1, '2025-04-10 12:25:19', 'A4C7611570246F20CB721EE231BB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (170, 'DD202605081028597427bee0', 70, 28.94, 1, 1, '2024-05-22 22:13:11', 'C2ACF6314F71051AB21F6041D611', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (171, 'DD20260508102859706b1409', 55, 31.69, 1, 1, '2024-02-02 10:19:39', 'F69A702BB5B7FBBD3BE7418DDBDC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (172, 'DD20260508102859b3542b5a', 434, 51.80, 1, 1, '2025-12-17 09:47:40', '0E6126C522755D772C44668C8DE4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (173, 'DD20260508102859a2d09b80', 336, 28.13, 2, 1, '2025-12-09 14:39:15', '7BAC438F86B0C8580399E27E6C32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (174, 'DD202605081028597478c3e0', 55, 13.17, 1, 1, '2025-04-22 21:11:51', 'CE33C7AB1213E2F6C446C5D41E1D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (175, 'DD202605081028593fd2574c', 35, 41.22, 2, 1, '2024-10-08 21:18:02', '51B27A84AA61807283793DC751BB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (176, 'DD20260508102859daa907f2', 406, 9.99, 2, 1, '2025-03-27 20:22:14', '8FAB1CB6F65AA9E3E3423A41F889', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (177, 'DD20260508102859ad622ffa', 356, 11.81, 1, 1, '2024-10-16 11:29:40', '7BF79A89000C6540695C254A5D58', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (178, 'DD2026050810285938427cf2', 268, 104.97, 2, 1, '2024-03-15 06:56:20', '27F3D37F8F7FC36E8CC9A16C4859', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (179, 'DD202605081028594ab2f99a', 78, 5.70, 2, 1, '2024-10-07 15:20:42', 'A4CAC30EABFB44B706AD42DC3B74', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (180, 'DD20260508102859e5802476', 7, 50.35, 1, 1, '2026-02-21 21:59:15', '13684259E5AB1B7E6E2FACA2CC59', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (181, 'DD202605081028592e63a50d', 117, 11.19, 1, 1, '2024-09-11 19:10:47', 'AC695FF8036D9A3F9187DB5B8487', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (182, 'DD202605081028593f5cf760', 167, 60.01, 2, 1, '2025-09-21 02:17:56', '28E4B6CFEC7BC2856C9E5C2993CB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (183, 'DD20260508102859282fc5b1', 173, 13.16, 1, 1, '2024-02-17 11:06:55', '10B48A1ADC6D063F0BA37E62B74B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (184, 'DD20260508102859d6e6dc11', 382, 74.08, 2, 1, '2024-01-09 11:09:56', '1BBB2E9D0D3FA5E4F9F71643DDA4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (185, 'DD202605081028595d5feef5', 263, 13.18, 1, 1, '2025-05-16 04:54:25', 'E6395BAF989BF2A569E99AD6E3DC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (186, 'DD20260508102859a96f33a9', 55, 29.84, 1, 1, '2024-03-05 07:12:48', 'B1E6511EB423ABD955CAB6D805EB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (187, 'DD202605081028599dbdbf87', 10, 17.86, 2, 1, '2024-12-11 07:42:47', '840C6CCF5AEF6839AADF4449A92D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (188, 'DD20260508102859618719cb', 339, 6.38, 2, 1, '2024-07-21 18:48:31', '900A5B8D6E182551071831CC0110', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (189, 'DD20260508102859db2372ad', 404, 37.86, 1, 1, '2024-02-17 03:36:01', 'E88BCEBC0DBDF44F0EE6FFAFD0C5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (190, 'DD20260508102859ec8e670c', 238, 50.49, 1, 1, '2024-06-07 08:08:54', 'A2D953A41D683BDC34475C6F946E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (191, 'DD20260508102859e0a8b309', 196, 21.91, 1, 1, '2024-09-20 18:09:47', '3239F6AB677278871F3F14AED885', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (192, 'DD20260508102859e9455f75', 19, 79.25, 2, 1, '2025-10-21 17:36:46', '7B01B24F450CA29217516D5BBE22', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (193, 'DD20260508102859e1d277da', 25, 89.30, 1, 1, '2024-08-29 23:01:34', '01A27645D8551981F93F0E8C418A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (194, 'DD20260508102859a5bfc63b', 450, 60.15, 2, 1, '2024-01-13 18:45:14', '9FC22AD832424807F37A65007B9E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (195, 'DD20260508102859aa8545dd', 109, 31.02, 2, 1, '2024-06-19 15:31:33', '91C43885698A7C8C52EA8F06B628', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (196, 'DD2026050810285965ddfe46', 399, 36.74, 1, 1, '2024-02-20 14:20:12', 'DCE710B3B0ED9A6EA8AAC3B06DD8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (197, 'DD2026050810285969325d94', 305, 3.80, 2, 1, '2024-09-12 00:40:23', '704C0839607B43E64A57DE1CF629', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (198, 'DD20260508102859ceef4449', 80, 3.24, 2, 1, '2025-09-25 11:49:57', '666B401D7FD6D1F11B3DFC40E28B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (199, 'DD20260508102859bdd4b8ac', 170, 18.80, 2, 1, '2025-05-30 03:53:46', 'ABEAA31989CB59BC5B499002319E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (200, 'DD202605081028593d00a8fb', 244, 67.11, 2, 1, '2025-12-17 23:25:22', '5036F2657153F08A4477A7D8584B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (201, 'DD20260508102859c0bf8a34', 449, 28.27, 2, 1, '2025-07-06 19:13:04', 'ADBE083580D046C99609742CC0BD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (202, 'DD202605081028599a316f72', 92, 26.50, 2, 1, '2025-01-09 06:32:34', '2C10FA549251B4CDDD3F4B2075AD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (203, 'DD20260508102859e53e574d', 463, 15.56, 1, 1, '2026-01-29 06:22:05', 'CCEA873B3EADA1BEA3BECDC04391', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (204, 'DD20260508102859d781ce52', 171, 102.55, 1, 1, '2024-06-24 18:07:49', '51499B87261CE3879CD614B59F49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (205, 'DD20260508102859744e771b', 172, 15.54, 1, 1, '2026-04-11 18:06:14', '27D015FBC018774DBD5112461891', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (206, 'DD20260508102859aca9080a', 424, 55.54, 1, 1, '2026-01-30 23:46:39', 'BB9473C7C31F23F27CF8C1906D42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (207, 'DD20260508102859be80e27b', 499, 6.90, 1, 1, '2026-03-16 11:58:13', '8A8FB1F3C1733D2E123E5DBDE703', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (208, 'DD202605081028599dd28836', 282, 19.72, 1, 1, '2024-04-08 22:20:15', 'D4BAB362FC76ED003FDE1E46F847', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (209, 'DD2026050810285932059fb0', 73, 58.64, 2, 1, '2025-08-21 01:31:49', '5C58DC8AD8375415E6E8745FB154', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (210, 'DD202605081028597a658cee', 145, 49.00, 1, 1, '2024-08-02 01:17:36', '8503ABAA29F5D5B23122C19E785A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (211, 'DD20260508102859a84e1bad', 380, 53.87, 2, 1, '2025-05-22 19:42:47', '6D199F9F11F16D1DA43F3D4B38E6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (212, 'DD20260508102859f1c81b0b', 163, 11.59, 2, 1, '2024-12-28 05:33:07', '08AEBB1263199ED6E68AFE94BDB9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (213, 'DD202605081028591091a95e', 135, 48.93, 2, 1, '2024-01-12 16:47:06', 'C53283BAF8E447B6016F0F99B423', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (214, 'DD202605081028594d2d5077', 50, 17.53, 1, 1, '2024-07-20 05:23:10', 'A6741F12AB155B052BDF1564B88C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (215, 'DD2026050810285966d9406a', 250, 72.35, 1, 1, '2024-04-08 15:29:59', '8913A3316F4D03A8FDA9A8797A85', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (216, 'DD202605081028596e8e7c40', 85, 40.43, 1, 1, '2024-09-13 05:44:09', 'DED40200DB56028EA76258A1FCAB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (217, 'DD20260508102859edbc410c', 348, 32.64, 2, 1, '2025-10-13 20:59:55', 'B49E291398BEE2920657A92B8439', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (218, 'DD202605081028594b8ead72', 341, 67.48, 1, 1, '2024-05-28 11:35:48', '448C2C182EDE05097A39540B0BCE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (219, 'DD2026050810285972f26d04', 375, 6.03, 1, 1, '2024-03-18 06:55:02', '57289E2E71C74C8198DF21933C7A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (220, 'DD20260508102859db244f79', 169, 46.34, 1, 1, '2025-11-10 19:29:35', '0B6F0ADD44F3E55B8B4D75B768D0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (221, 'DD20260508102859411febb3', 72, 27.53, 2, 1, '2024-01-23 06:27:26', 'E18F203F28DB7B335D98832BC632', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (222, 'DD2026050810285978595982', 387, 3.75, 2, 1, '2024-04-19 13:56:56', 'FB0DE83E0354D2267CED92C19DB7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (223, 'DD202605081028595ca08777', 436, 34.74, 2, 1, '2025-11-09 02:19:42', '5AC586337B8DEEA59FF0CE3C276C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (224, 'DD20260508102859ad234b9e', 268, 55.74, 2, 1, '2026-01-19 11:57:28', '817B44E3676961A0E2D4735788B7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (225, 'DD20260508102859146f229e', 245, 83.88, 1, 1, '2024-08-16 10:35:21', '6AAC37F1B56967A3AD434F5B74F7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (226, 'DD2026050810285924ffe145', 402, 95.03, 1, 1, '2025-10-21 03:06:16', '443AD2C8B46BD6E6C4E938B82283', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (227, 'DD202605081028594f2aadc8', 499, 41.70, 1, 1, '2025-05-29 02:54:25', '29E3BD72B9988B49F6699FB9602F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (228, 'DD20260508102859b4aa0437', 208, 59.43, 2, 1, '2025-02-14 10:37:56', '6DC354A372ED7DAB5219909A709B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (229, 'DD2026050810285976b2f006', 482, 18.51, 1, 1, '2026-02-20 13:37:35', '9C7896A9028DE4F24138444724CF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (230, 'DD20260508102859b4765445', 341, 57.32, 2, 1, '2024-03-29 04:18:03', 'A2A063E20DAFEFAF8FD78D78D2AC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (231, 'DD20260508102859878cd77f', 208, 86.80, 1, 1, '2026-04-20 14:57:11', '369B825FE85B1941831C919AB60C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (232, 'DD20260508102859fd4b6ffd', 278, 27.97, 1, 1, '2024-11-27 07:21:23', 'D19C6F975C489B5FA4EF44FC55CE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (233, 'DD2026050810285922a4211f', 60, 52.13, 2, 1, '2025-02-15 06:08:05', 'BCDF932F9C3EB48C2980EEDEE2DB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (234, 'DD20260508102859ab9ae122', 163, 33.12, 2, 1, '2025-07-17 09:54:44', 'A72ED30962B119316B8C248843F5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (235, 'DD202605081028597d16fb4a', 300, 10.92, 1, 1, '2026-03-03 21:42:32', 'D48FD36FF7C56B8096A14C0747C8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (236, 'DD202605081028594db7a259', 205, 23.07, 2, 1, '2024-01-30 18:34:05', 'D980105D10D3463C9EB198D04219', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (237, 'DD20260508102859b6d4857c', 73, 31.03, 1, 1, '2024-03-15 13:26:46', 'E4FD3A33FA25869C99270BE5F3C3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (238, 'DD20260508102859ac9903f0', 25, 7.51, 2, 1, '2026-01-20 12:23:26', '132D684A8BEE8A93B2C0CDE3C800', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (239, 'DD202605081028595e3b8b7e', 206, 29.76, 2, 1, '2024-05-05 12:33:08', '198FAEF912970B7FB586E92DAC2E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (240, 'DD202605081028591191f0b2', 61, 88.96, 1, 1, '2024-06-05 23:36:27', 'DE62F8D0B4114C29271C579ADC6C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (241, 'DD20260508102859ca530a54', 111, 28.16, 1, 1, '2025-07-15 07:33:43', '54B5971716AB12FACC20C5090E01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (242, 'DD202605081028597a35c84f', 360, 53.54, 2, 1, '2025-12-30 11:49:56', 'E03F33E4803721A0F7B802A04D5B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (243, 'DD2026050810285947684611', 284, 62.48, 1, 1, '2024-03-18 01:51:19', '68E70BD12620A08C1619BAE8E0F6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (244, 'DD20260508102859e247ea99', 314, 64.08, 1, 1, '2024-08-05 07:44:22', 'F2F730E19EB9157EA63AF6D61474', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (245, 'DD202605081028594deb9ca5', 282, 68.71, 2, 1, '2025-12-13 19:12:29', 'FB8CF062217AF8A592F931E8BE9D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (246, 'DD202605081028596bb9cc61', 451, 20.86, 2, 1, '2024-01-26 05:34:43', '6430DB5C89AD03C29C63DADF68BD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (247, 'DD2026050810285969ab99f2', 15, 77.24, 1, 1, '2025-07-29 01:29:53', '0D4763F5C06E25B49D0C0E9739A5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (248, 'DD20260508102859ebc21cc8', 393, 20.51, 2, 1, '2025-06-12 01:19:52', 'D6BFCC8D61A7362F201B5DFFE316', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (249, 'DD20260508102859d04178c4', 241, 67.96, 2, 1, '2025-07-07 11:50:43', '3437DDF39EE429042C5E2CCA3B32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (250, 'DD20260508102859b7771070', 183, 33.43, 2, 1, '2025-11-21 19:52:26', 'BAC02383418ECDA1441B97F274BA', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (251, 'DD20260508102859e3251661', 497, 3.18, 2, 1, '2024-08-28 01:02:31', 'E21A5174B63F5B7C2389F6063B0E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (252, 'DD2026050810285909684f73', 386, 49.54, 1, 1, '2024-05-02 12:10:21', 'AF843FF9E926EB24E80929F52ED4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (253, 'DD20260508102859f84da0b7', 409, 42.67, 2, 1, '2024-02-25 07:51:19', 'B727A536D1A125E9E3F57DA392EB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (254, 'DD202605081028599ed4fb3c', 246, 30.74, 1, 1, '2024-11-16 00:39:02', '73CD6F9B2BA2A03DBCE8EBEAFD95', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (255, 'DD202605081028594dc8e3a5', 299, 21.00, 1, 1, '2026-01-20 23:35:45', '18FF706557E783C6CD50B94103E8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (256, 'DD202605081028590ee26462', 344, 51.93, 1, 1, '2025-11-25 08:37:06', '431978FFF656C7F670A50BA77BCA', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (257, 'DD2026050810285940e17eca', 403, 10.56, 2, 1, '2026-04-25 06:47:01', '65B8CB5B8BFA0CFD6E616EF26E1E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (258, 'DD2026050810285965c19657', 27, 45.50, 1, 1, '2025-07-20 20:59:34', '0D63BD12F684D4085C80816C3B35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (259, 'DD2026050810285970fbc93c', 407, 33.69, 2, 1, '2024-05-08 21:07:13', 'F2F6A2F311866A1607CC824162BC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (260, 'DD2026050810285954cc57f6', 277, 70.45, 1, 1, '2024-09-23 23:00:23', '1981A78FCB7C7164B7C20E8A1E8A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (261, 'DD202605081028590e026f7c', 311, 54.98, 1, 1, '2026-01-06 06:09:38', '4821A422B9B32E0E58C5BE4520E1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (262, 'DD2026050810285964644d8c', 270, 52.32, 2, 1, '2025-06-05 07:46:11', '362C6A165A5B65D7EFBE975F1F86', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (263, 'DD20260508102859cc0d3ed7', 232, 46.58, 1, 1, '2024-07-10 04:31:36', '8CC7A76AEB36906BD0708C64B2E6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (264, 'DD202605081028596412f1d4', 199, 18.48, 2, 1, '2024-11-29 19:43:24', '2BE573AAC9C057F134B4BDBF37E5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (265, 'DD202605081028590cb2c73c', 110, 57.18, 2, 1, '2025-01-24 02:55:57', '19BCB8D0149887AC410C6EB8D130', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (266, 'DD20260508102859e8f677b8', 244, 41.62, 1, 1, '2024-12-26 05:36:59', 'F69EF847746B311B66033E78CA1C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (267, 'DD20260508102859eb114c65', 287, 25.82, 2, 1, '2025-05-05 19:54:34', 'B82CBD4CE701D521FE5E1BCBBB74', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (268, 'DD20260508102859e30530f7', 176, 74.96, 1, 1, '2025-05-06 02:07:53', 'D4F7EB636AC1A7F1FC2FA5E0152A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (269, 'DD2026050810285975761773', 8, 72.15, 2, 1, '2025-01-27 00:43:36', 'E69BEDCF1954AB3C14AA7EF57BA8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (270, 'DD2026050810285962bb0327', 228, 32.18, 2, 1, '2026-02-10 09:08:54', '94DCF60FC56A5A5C647FF513805B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (271, 'DD202605081028593e80c578', 94, 17.82, 2, 1, '2024-08-06 13:12:22', '7D52EAF2DFF9EDD770F757CBA701', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (272, 'DD202605081028598f341bcb', 169, 86.83, 2, 1, '2025-03-31 12:41:08', 'BDFA407CBDF1D93D212B99CF75DD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (273, 'DD20260508102859a3b02e78', 268, 55.02, 1, 1, '2024-02-23 04:05:09', 'E151226130714FCEED261E5E6B1E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (274, 'DD202605081028591c11ab40', 341, 101.51, 2, 1, '2024-12-16 04:20:16', '07864F55DF5A515EDE4C13A11925', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (275, 'DD20260508102859b891061b', 339, 6.79, 1, 1, '2025-02-25 12:33:16', 'E932FDBE104C6C01091408C9DCFB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (276, 'DD20260508102859454c5f71', 487, 98.47, 2, 1, '2024-12-06 16:36:06', 'F272E0C168510EDABA55C8D5F869', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (277, 'DD20260508102859d179e2ed', 21, 73.78, 1, 1, '2025-04-30 16:46:41', 'EDBB4073C5B7A2E12376D9CE36FC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (278, 'DD2026050810285901179bc1', 219, 24.84, 1, 1, '2025-02-21 15:28:19', 'FE60979DD3E2546D6ED0A8A9A8A6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (279, 'DD2026050810285969e85b26', 358, 12.51, 1, 1, '2024-10-13 18:58:26', 'B11056B35E0B58093A8F3F4E112F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (280, 'DD2026050810285966b0213c', 143, 3.04, 2, 1, '2025-02-02 11:44:39', 'E76615631E8F20EC36BD1AF49199', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (281, 'DD20260508102859960422fb', 455, 33.36, 2, 1, '2025-07-03 13:42:49', '5FAC6FBEDC881F8DED80C34CBBD7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (282, 'DD20260508102859069a1c87', 294, 2.38, 1, 1, '2025-01-01 20:48:27', '0311175E24C0B4D7D757C61C4518', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (283, 'DD20260508102859c78ecd1f', 409, 62.49, 2, 1, '2025-10-04 05:49:16', '1A68CB67C3A00A446AACDA2B944E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (284, 'DD2026050810285929f7f6cb', 455, 94.14, 2, 1, '2025-03-22 05:42:20', 'F7A497E18FB4BE68DF7A3A8798C2', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (285, 'DD20260508102859e40a2efe', 353, 5.06, 2, 1, '2024-04-25 00:00:57', '4E1D91E129506E9912901A3708FC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (286, 'DD20260508102859e0e023c1', 43, 46.91, 1, 1, '2026-01-28 23:54:56', 'D1D0278D5D53600DB615A629BBA9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (287, 'DD2026050810285924a0c1ca', 79, 59.83, 1, 1, '2024-10-28 16:24:20', 'A3CCFB74057CC1E7ED0B0DB66C86', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (288, 'DD202605081028592d1d8179', 122, 31.13, 2, 1, '2025-04-28 22:30:35', '10C2443A57014270F626A780E654', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (289, 'DD2026050810285912c9227f', 262, 36.34, 1, 1, '2025-03-24 15:51:35', '8FC67C59E51A88EA109C4190BCE0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (290, 'DD202605081028598c166447', 446, 93.73, 2, 1, '2024-12-07 15:21:03', '040C586AA0CF5F2C26D806C63918', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (291, 'DD20260508102859b3bf60fa', 111, 9.53, 2, 1, '2025-05-03 20:35:35', '123D58254DFB85490409AF27A591', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (292, 'DD20260508102859413627c3', 277, 5.88, 2, 1, '2024-12-13 07:11:37', 'D461C60DE270729AD7115188DAF6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (293, 'DD20260508102859695be5ef', 424, 53.94, 1, 1, '2024-03-14 12:13:50', '950229BE97E3D60586A276A0E8B3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (294, 'DD20260508102859888571aa', 168, 60.36, 1, 1, '2024-09-06 20:43:25', 'FF8BA4725BA24C46466A78693DC6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (295, 'DD202605081028597ec32995', 203, 93.76, 1, 1, '2025-11-11 02:20:50', '0C1B8B045147791E89A7C9A72A92', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (296, 'DD20260508102859a6b77e88', 8, 55.52, 1, 1, '2025-07-31 07:55:45', '74844E053EA87A0516F2C4591EAC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (297, 'DD20260508102859bc3af106', 374, 71.72, 2, 1, '2024-04-24 03:44:45', '4D8B98953C523618038524C22A1F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (298, 'DD20260508102859f6001a7c', 248, 70.33, 2, 1, '2025-08-29 16:19:14', '057B00ADE5FE7742E0291AB320B3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (299, 'DD2026050810285929369320', 416, 46.40, 1, 1, '2025-07-18 17:23:24', '080D38AB965B5C4CB798D2459300', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (300, 'DD20260508102859c2a3a541', 366, 62.13, 1, 1, '2025-05-14 03:57:21', 'CE7BA29D8EC320B73A819250BB77', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (301, 'DD20260508102859511a5597', 365, 60.42, 2, 1, '2026-03-20 17:26:55', '569E482B5767EC21BE5F8424A208', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (302, 'DD202605081028590a411666', 11, 4.87, 2, 1, '2026-02-22 03:21:17', '6BB609A92D1A757EEA4B34305C94', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (303, 'DD20260508102859658590b5', 436, 58.15, 1, 1, '2025-08-13 09:14:19', '28AEB8E09C7B393E47CD1F464BC8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (304, 'DD202605081028592ca10768', 45, 55.92, 1, 1, '2025-09-04 23:43:34', '6F1DCD0DC1AB16576C234831D7E4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (305, 'DD202605081028597d7865db', 149, 92.98, 1, 1, '2026-05-04 07:38:57', '2CE596A6B7ABE3CB02AAD429A452', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (306, 'DD20260508102859c1bbad45', 427, 11.02, 2, 1, '2025-06-18 15:54:23', '4D5E5A2A10BF70BFC288C78FDF32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (307, 'DD202605081028592289eb91', 245, 28.51, 1, 1, '2025-07-06 20:50:01', '6CF024CE05FF1E720EC5298808F0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (308, 'DD202605081028594c750514', 175, 26.62, 1, 1, '2025-04-30 19:45:03', 'D6EF04E4B56686554879E04C8390', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (309, 'DD2026050810285948c7d10c', 96, 62.05, 1, 1, '2025-10-25 19:33:57', 'D132670F23533B2B4C649623C0A0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (310, 'DD20260508102859d13ca376', 335, 15.32, 1, 1, '2024-10-04 21:43:40', '7903ED724E7AE477DCFFD8FEE190', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (311, 'DD20260508102859553dee3e', 276, 13.69, 1, 1, '2025-07-17 07:29:17', '2CF787F306775B17D97C45F57727', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (312, 'DD2026050810285983d4b62a', 430, 47.25, 1, 1, '2026-03-19 16:45:06', 'F01246C2AC09E400DB7E16DFF7AB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (313, 'DD20260508102859b3249d8e', 150, 79.13, 1, 1, '2024-09-24 11:38:31', 'E2E8DDD8DEE2B56503853817F3E9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (314, 'DD202605081028599d192868', 73, 70.54, 1, 1, '2025-05-22 14:33:42', '44D40FAE279742540FF4E3209374', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (315, 'DD2026050810285972fab1f7', 332, 29.36, 1, 1, '2025-04-03 19:15:21', 'FF793E14B2E532C4C26BB8BC19AB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (316, 'DD2026050810285919d68d93', 11, 9.78, 1, 1, '2026-02-24 17:23:46', '5CD7B0B88B005E4F9DA8A318AE2E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (317, 'DD20260508102859c6d60549', 276, 12.66, 2, 1, '2025-01-04 00:09:30', '085E265D7D29EA12D0E85C970FB4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (318, 'DD202605081028595e23d63e', 210, 14.95, 2, 1, '2024-12-25 02:42:50', 'BC95559E2C50973F0111EE25FDF7', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (319, 'DD2026050810285966275668', 399, 21.81, 2, 1, '2025-11-21 03:48:06', '9A298C43068458D5A31006DAF708', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (320, 'DD20260508102859dbb84d5d', 419, 36.37, 2, 1, '2025-01-07 22:01:41', '31D1AC75AF3BA1E1C9BD509F9CDB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (321, 'DD202605081028599f79f708', 187, 43.95, 2, 1, '2025-09-05 12:35:26', 'B62B942FAEA94BD701D2E48962C4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (322, 'DD202605081028597547b865', 379, 67.18, 2, 1, '2025-05-03 08:57:10', 'FC4E1589DB549BB4AA9B2E1C607A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (323, 'DD2026050810285990530236', 177, 3.94, 2, 1, '2025-01-17 13:15:52', '90F480D9383BEE1FF62534627737', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (324, 'DD20260508102859c82ae9e9', 163, 71.25, 1, 1, '2024-08-09 05:31:42', 'BE02E107A153ECE83E95688D0C6D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (325, 'DD202605081028590b856d19', 353, 13.42, 2, 1, '2025-06-14 20:05:21', '340356D51B81F7ACA37EF9BB3A94', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (326, 'DD202605081028596f3ebf35', 372, 9.88, 2, 1, '2025-10-20 01:55:53', '07DE9229F32540A4079956C5DA9A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (327, 'DD20260508102859f3d606fb', 35, 57.68, 1, 1, '2024-04-29 18:39:37', '0CEF2ECC233485F2B57C2F3A012C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (328, 'DD20260508102859929cf897', 429, 65.33, 2, 1, '2024-06-07 05:26:24', '3AAF55A9AC4CFF3E53F01F705050', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (329, 'DD2026050810285938b9897e', 125, 65.20, 1, 1, '2024-12-22 16:52:04', '09862481AD54F2F40FD25F3CF0F8', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (330, 'DD20260508102859723ba2f0', 440, 14.32, 1, 1, '2025-01-29 02:52:44', 'D20721B11A80F09B5E0F3A3BD573', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (331, 'DD2026050810285938f73edc', 191, 66.12, 2, 1, '2026-02-28 02:29:20', '70BC2D026E534910EBC65CD61274', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (332, 'DD202605081028594adfa0e2', 326, 12.21, 2, 1, '2025-12-13 06:42:27', 'BAD41EDE77D4ED9016C3363F4CA6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (333, 'DD202605081028597346781d', 20, 108.09, 2, 1, '2024-12-15 12:44:46', '020883771B3EA2E7FCAB18745650', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (334, 'DD202605081028590605121e', 466, 41.36, 2, 1, '2025-12-11 15:36:56', '56412EA86E4D8F4DCA833638FE94', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (335, 'DD20260508102859dcf55595', 323, 14.77, 2, 1, '2025-04-04 14:59:59', 'EBCC1DE4BAFEE20EBC0D4B8FF56F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (336, 'DD202605081028594032014d', 76, 11.27, 2, 1, '2024-01-12 21:47:45', '955516CA34CE626A1AD0456BEB8F', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (337, 'DD2026050810285994540e75', 121, 43.23, 2, 1, '2024-10-22 22:53:49', '3FE532D25B4751A091D962FA6C7D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (338, 'DD2026050810285978bd814f', 445, 10.54, 2, 1, '2024-06-06 13:16:06', 'C25B7EA16EDA40B553D2DB417DBB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (339, 'DD20260508102859fc74e592', 289, 48.14, 2, 1, '2024-09-15 06:23:34', '0BD24C8B70F3DFDC612574B65EA2', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (340, 'DD2026050810285964146937', 351, 89.63, 2, 1, '2025-12-12 01:42:29', '386B54BCFBD78E1743ED6024EEEC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (341, 'DD20260508102859e432c96c', 480, 17.63, 2, 1, '2025-06-03 08:26:45', '4EC6565A301C0607BDEE6017D417', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (342, 'DD20260508102859188c9089', 467, 32.95, 1, 1, '2026-02-20 16:27:16', '601CC0B091A43CD3635EB02C4968', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (343, 'DD20260508102859b96f8e79', 79, 12.80, 1, 1, '2024-10-18 23:23:28', '1625AB2E8221A4718AF620D1FF08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (344, 'DD20260508102859c1545709', 474, 40.82, 1, 1, '2025-12-01 13:30:40', 'CF5D2351E0F7362126991DA7B644', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (345, 'DD20260508102859283d5054', 139, 28.79, 1, 1, '2024-11-06 08:05:39', 'EEB151AB27C26D4F65D5A4CF9408', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (346, 'DD20260508102859f5a32811', 332, 55.58, 2, 1, '2024-10-15 19:35:17', 'BCE63A0CC7199BF9F23E7AF30126', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (347, 'DD20260508102859c38e64e0', 109, 84.17, 1, 1, '2024-04-24 21:00:08', '5D10004D5EE474CD3A036CD25FFF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (348, 'DD2026050810285916cb29da', 117, 25.92, 2, 1, '2026-04-28 10:23:37', '004462421B57067DF8551555C5BE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (349, 'DD202605081028593fa12688', 404, 113.07, 2, 1, '2026-03-03 20:21:34', 'BE0462BD38FF5E415B28CC2F6E76', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (350, 'DD2026050810285984df619e', 453, 34.40, 2, 1, '2025-12-17 07:49:16', '2C17200D02BC271D92FB22095DF0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (351, 'DD202605081028594bcdeb37', 186, 75.03, 1, 1, '2024-01-16 09:49:57', '60A70BB1788817BBC901D102A969', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (352, 'DD20260508102859d5dfc773', 318, 64.80, 1, 1, '2024-08-13 06:36:06', '8E0E09A43B84699AAD8CB27B2687', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (353, 'DD20260508102859bc94b766', 217, 23.13, 1, 1, '2025-03-06 04:04:39', '94D233812DEB55F0D908144AB1DE', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (354, 'DD20260508102859615aeb26', 395, 76.43, 2, 1, '2025-04-06 04:21:51', '75CDB7F5EBDEFC8BD403D434E5A9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (355, 'DD202605081028598fd75747', 2, 6.26, 1, 1, '2025-02-20 05:53:42', '18472C494ABDB761A897D2A11AE4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (356, 'DD202605081028592d8d53b2', 446, 38.63, 1, 1, '2026-05-07 02:49:04', 'B5C11306429D1098F35CA8725550', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (357, 'DD20260508102859e79f9e65', 223, 52.90, 2, 1, '2025-05-29 21:31:23', 'EBE85536B456D7386D6BD55E53F5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (358, 'DD20260508102859e8dd472d', 473, 79.91, 2, 1, '2024-06-26 18:16:28', 'F8BF9DEFDDCB707B0913798CF959', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (359, 'DD202605081028596424ee52', 250, 61.20, 1, 1, '2025-09-06 14:29:16', '764002FE17E1BD3852812F12FD8A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (360, 'DD20260508102859a030b712', 234, 69.09, 2, 1, '2025-06-18 10:23:55', 'C70C04C70D16DF3FDFCF21B65A9D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (361, 'DD20260508102859d9db800b', 69, 34.92, 1, 1, '2026-02-25 02:57:56', '779F7B668F8B2BA8333227608D6A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (362, 'DD20260508102859885700b3', 446, 79.74, 1, 1, '2026-01-18 01:35:53', 'CFAD4B1ECD984B5A53723C9CC942', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (363, 'DD2026050810285984b6035b', 423, 31.56, 1, 1, '2024-03-30 18:45:43', 'A77B678ED55EF8ECB4BB603B9C3B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (364, 'DD20260508102859dad6e0bc', 264, 70.16, 1, 1, '2025-11-09 22:40:24', 'E1C9BC74C62793193ED01937F383', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (365, 'DD2026050810285903d15223', 486, 46.76, 1, 1, '2026-04-15 15:13:44', 'ED49D440B2B1D4C2B1043FA21F1D', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (366, 'DD20260508102859263951cb', 19, 35.95, 1, 1, '2025-08-29 09:54:49', '77B5EA2AB56C3C73A03B5786BF02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (367, 'DD20260508102859602e86f9', 31, 8.45, 2, 1, '2026-01-07 19:05:41', 'B2C9C87DE6DDE2C94901651621CF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (368, 'DD20260508102859bac4c59b', 60, 9.72, 2, 1, '2025-03-22 18:40:22', '8E849A37030E9404D3A38C33B88B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (369, 'DD202605081028597187049a', 265, 38.36, 1, 1, '2024-11-29 21:44:57', '10FA0185AEEE74E6A6D3E47C7EC3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (370, 'DD202605081028593919fd43', 285, 8.18, 1, 1, '2024-07-04 17:16:32', '767F792C041842CDC5051B9660E0', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (371, 'DD20260508102859ad7c31a3', 100, 53.40, 2, 1, '2025-12-07 02:53:59', '1E09993E2504DD41926544D24CF3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (372, 'DD20260508102859a312c848', 81, 32.12, 2, 1, '2026-01-21 11:12:36', '87358F419DACA6B19EB9D6798E5A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (373, 'DD20260508102859f9ff293e', 293, 53.73, 2, 1, '2026-03-01 17:44:36', '48851BE603CB658D8E32B13B6493', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (374, 'DD20260508102859bd75a468', 183, 31.69, 1, 1, '2024-02-21 05:36:20', 'CB5C1056E672F40A077AE930E8D2', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (375, 'DD20260508102859d19db743', 263, 39.44, 1, 1, '2025-11-26 03:43:51', '5013B8FD039E848C92B63F7ECE2C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (376, 'DD20260508102859f4a36c45', 98, 83.56, 2, 1, '2025-01-19 18:01:36', 'E216BD44B7E9CADD0B2AB9CE5DCF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (377, 'DD2026050810285902b4217b', 368, 61.84, 1, 1, '2025-04-20 11:24:44', 'F824FA149EB6B7D5693C6887C860', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (378, 'DD2026050810285919485ff6', 276, 57.60, 2, 1, '2024-08-09 09:52:21', '50698051C80ACA7CAE89102A1B4C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (379, 'DD202605081028597adbe5cc', 41, 4.71, 1, 1, '2025-08-09 02:50:48', '0A76829EDEAE717106365C4F81B9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (380, 'DD2026050810285971f6ab74', 499, 73.58, 2, 1, '2025-12-19 15:18:41', 'F97E4480A63B9761FBD0807392AC', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (381, 'DD20260508102859ca8d194e', 35, 25.01, 1, 1, '2024-08-03 20:40:52', '44B1B0452A2EFF7BD4FF199BAA14', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (382, 'DD20260508102859b11e0552', 337, 41.86, 1, 1, '2025-02-12 05:04:46', '9B6C576E1E251175C3F14763B2C6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (383, 'DD2026050810285952cf8f8a', 245, 40.57, 1, 1, '2025-10-29 18:27:55', 'A6E7E7B475BF01AF99D9DE301C64', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (384, 'DD2026050810285910981d4e', 281, 22.34, 2, 1, '2024-01-14 00:19:46', '8E117F4A26FC28A7EE1E0A7E3040', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (385, 'DD2026050810285960fbd9da', 442, 18.11, 2, 1, '2024-11-27 10:40:20', 'F49D354CA46180736733F9E82D3A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (386, 'DD20260508102859c62ce147', 175, 75.46, 1, 1, '2024-08-16 13:39:09', '0EF691ECB4A17E7C1252B3857935', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (387, 'DD20260508102859cdfb29fd', 103, 81.22, 2, 1, '2025-01-07 10:14:25', 'CA32080D030FB69704FB2A6FDD0B', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (388, 'DD20260508102859cd07a2f8', 490, 61.09, 2, 1, '2025-09-18 00:48:10', '7D6795A19B460F6E853B3CA843A1', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (389, 'DD20260508102859f6104f51', 4, 32.33, 2, 1, '2024-04-01 14:16:10', '09333C05EF9E05696B9C1EEA798C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (390, 'DD2026050810285958772e96', 83, 83.65, 2, 1, '2025-07-22 20:12:08', '37457A80F0B3106F94B8C247ABAF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (391, 'DD2026050810285934096617', 331, 64.07, 2, 1, '2024-07-16 01:41:02', '1C9FB78BE08BC47C43B85AC4DBB3', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (392, 'DD2026050810285972c90fbe', 48, 69.12, 1, 1, '2026-03-27 23:01:17', '4111B3F8EDF9FE5E87378ED337EF', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (393, 'DD202605081028599cd23049', 309, 90.34, 1, 1, '2025-06-05 21:48:08', '81CA0D85973284EB74DB115BF675', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (394, 'DD20260508102859be960bd4', 340, 34.74, 2, 1, '2025-10-27 09:04:16', 'F3BD64E8455B2B6128EA3A436CA9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (395, 'DD20260508102859e3484674', 419, 28.87, 2, 1, '2025-10-17 12:41:15', '3FE96F15C019D45F6E83AA5F0B40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (396, 'DD20260508102859e4b38988', 88, 49.80, 2, 1, '2025-12-07 02:58:33', 'E1EF5E365C670D966592B5789F49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (397, 'DD2026050810285918afa3ee', 168, 43.67, 1, 1, '2025-05-26 08:22:25', 'C20C80DF6B16A257DC9A8BAB91A9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (398, 'DD2026050810285973b19375', 326, 3.81, 2, 1, '2026-05-02 14:12:32', 'BF4295B71FEBEAB0969E59573574', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (399, 'DD2026050810285951c58163', 27, 28.98, 1, 1, '2025-02-08 07:05:14', '19FD97DEAAC31302ECA47686FF06', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (400, 'DD20260508102859b985d585', 283, 42.42, 1, 1, '2025-04-29 16:11:51', '9EE0C0C376C7ECD8A4592D10DEC5', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (401, 'DD202605081028590a5adad3', 200, 45.21, 2, 1, '2024-08-22 23:59:53', 'F026066DC86508EC6E207A954508', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (402, 'DD20260508102859264922eb', 105, 26.71, 2, 1, '2024-03-08 15:50:36', '7CCAA96B900164BEF15086BDDD12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (403, 'DD2026050810285972de5995', 130, 34.05, 2, 1, '2024-12-07 18:57:24', '921EEDC81B4C2ECAD984865E7918', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (404, 'DD20260508102859ad43ca85', 481, 60.98, 1, 1, '2024-08-15 14:31:18', 'B06E5D85280FB9F2C55551BBFAB4', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (405, 'DD202605081028599c9729ac', 166, 43.81, 1, 1, '2024-05-02 15:34:24', 'F14AC5EF68A781F457695CBC5C9E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (406, 'DD202605081028590ef19ea3', 41, 75.57, 1, 1, '2025-11-24 21:48:10', '5982BDAF53880D70D97786047B9E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (407, 'DD2026050810285960aa4254', 93, 28.45, 1, 1, '2026-03-23 15:22:54', 'DDDE79E2CCAEE68D7AABE5643609', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (408, 'DD20260508102859335bd257', 330, 81.11, 2, 1, '2025-04-13 06:22:26', '531DA7248CADC24F4552B17136FB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (409, 'DD2026050810285939e8075b', 407, 43.47, 1, 1, '2026-03-20 11:24:19', '392B1F99A009CC7C8DC2792BF084', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (410, 'DD202605081028590379776b', 317, 33.22, 2, 1, '2025-05-28 01:36:08', '6E1B0433710FD755B39711FAFFDB', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (411, 'DD202605081028595fdf16e1', 190, 118.40, 1, 1, '2024-09-04 00:43:41', '9D56049027983859794A7147556E', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (412, 'DD202605081028592e81b60e', 285, 33.77, 2, 1, '2024-03-19 15:07:49', '678AC2047AE12422E9AC96DE1FAD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (413, 'DD2026050810285993174ace', 476, 6.36, 2, 1, '2024-12-14 17:17:44', 'ABD77CB81E9C3B2E26B9A2F62D6A', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (414, 'DD2026050810285901ed866e', 391, 74.79, 2, 1, '2024-04-26 22:36:58', '0B4237112FAE47CD7DBF7C2701F6', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (415, 'DD20260508102859f3db392b', 150, 37.71, 1, 1, '2026-03-23 23:18:02', 'B7CCEC0FC8185304CC53D63F6884', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (416, 'DD20260508102859426eddd8', 216, 87.56, 2, 1, '2026-04-26 15:29:04', '459E92768331AAD63E4FD6A2A6CD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (417, 'DD20260508102859e7ce43a3', 63, 22.01, 1, 1, '2025-02-26 10:58:19', '543DA87FCF5624A27F8B00213122', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (418, 'DD202605081028594972b734', 486, 40.54, 1, 1, '2024-10-28 18:16:26', '9F2251F7D66526B6F28916BA0CC9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (419, 'DD202605081028590bb0cb7c', 305, 36.37, 1, 1, '2024-01-13 18:51:14', '9E7BE4BF92C7EC1ED188EDBCC71C', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (420, 'DD20260508102859a8967fa6', 227, 24.77, 2, 1, '2025-06-13 18:07:22', 'CA285C837FD92219EBAF932896C9', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (421, 'DD2026050810285984f124d2', 446, 5.85, 2, 1, '2024-07-14 03:17:38', '87E4F06C752678C3B1FE51F1FAAD', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `pay` VALUES (422, 'DD20260508102859475125ca', 178, 54.10, 1, 1, '2024-05-18 03:33:42', 'C2C1749977B0C01833AFABF83931', '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限菜单表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 0, '系统管理', 'sys', 1, '/system', 'setting', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (2, 1, '用户管理', 'sys:user', 2, '/system/user', 'user', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (3, 2, '用户列表', 'sys:user:list', 3, '', '', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (4, 2, '用户新增', 'sys:user:add', 3, '', '', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (5, 2, '用户编辑', 'sys:user:edit', 3, '', '', 3, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (6, 2, '用户删除', 'sys:user:delete', 3, '', '', 4, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (7, 1, '角色管理', 'sys:role', 2, '/system/role', 'team', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (8, 7, '角色列表', 'sys:role:list', 3, '', '', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (9, 7, '角色新增', 'sys:role:add', 3, '', '', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (10, 7, '角色编辑', 'sys:role:edit', 3, '', '', 3, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (11, 0, '订单管理', 'order', 1, '/order', 'file-text', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (12, 11, '订单列表', 'order:list', 2, '/order/list', 'list', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (13, 12, '查看订单', 'order:list:view', 3, '', '', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (14, 12, '取消订单', 'order:list:cancel', 3, '', '', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (15, 11, '异常订单', 'order:abnormal', 2, '/order/abnormal', 'alert-circle', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (16, 0, '司机管理', 'driver', 1, '/driver', 'user', 3, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (17, 16, '司机列表', 'driver:list', 2, '/driver/list', 'list', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (18, 17, '审核司机', 'driver:list:audit', 3, '', '', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (19, 17, '禁用司机', 'driver:list:disable', 3, '', '', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (20, 0, '财务管理', 'finance', 1, '/finance', 'wallet', 4, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (21, 20, '支付记录', 'finance:pay', 2, '/finance/pay', 'credit-card', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (22, 20, '账单统计', 'finance:stat', 2, '/finance/stat', 'bar-chart', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (23, 0, '营销管理', 'marketing', 1, '/marketing', 'gift', 5, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (24, 23, '优惠券管理', 'marketing:coupon', 2, '/marketing/coupon', 'ticket', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (25, 23, '活动管理', 'marketing:activity', 2, '/marketing/activity', 'calendar', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (26, 0, '数据中心', 'data', 1, '/data', 'database', 6, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (27, 26, '日报统计', 'data:daily', 2, '/data/daily', 'trending-up', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (28, 26, '报表中心', 'data:report', 2, '/data/report', 'file-excel', 2, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (29, 0, '日志管理', 'log', 1, '/log', 'file-text', 7, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `permission` VALUES (30, 29, '操作日志', 'log:operation', 2, '/log/operation', 'list', 1, 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '区域热力供需' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', 'super_admin', '系统最高权限', 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `role` VALUES (2, '管理员', 'admin', '日常管理权限', 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `role` VALUES (3, '运营人员', 'operator', '订单管理权限', 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `role` VALUES (4, '财务人员', 'finance', '财务相关权限', 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `role` VALUES (5, '审核人员', 'auditor', '审核相关权限', 1, '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限关联' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1, 1, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (2, 1, 2, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (3, 1, 3, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (4, 1, 4, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (5, 1, 5, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (6, 1, 6, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (7, 1, 7, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (8, 1, 8, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (9, 1, 9, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (10, 1, 10, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (11, 1, 11, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (12, 1, 12, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (13, 1, 13, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (14, 1, 14, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (15, 1, 15, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (16, 1, 16, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (17, 1, 17, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (18, 1, 18, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (19, 1, 19, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (20, 1, 20, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (21, 1, 21, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (22, 1, 22, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (23, 1, 23, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (24, 1, 24, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (25, 1, 25, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (26, 1, 26, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (27, 1, 27, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (28, 1, 28, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (29, 1, 29, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (30, 1, 30, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (31, 2, 1, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (32, 2, 2, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (33, 2, 3, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (34, 2, 4, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (35, 2, 5, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (36, 2, 6, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (37, 2, 7, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (38, 2, 8, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (39, 2, 11, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (40, 2, 12, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (41, 2, 13, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (42, 2, 14, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (43, 2, 15, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (44, 2, 16, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (45, 2, 17, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (46, 2, 18, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (47, 2, 19, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (48, 2, 20, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (49, 2, 21, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (50, 2, 22, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (51, 2, 23, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (52, 2, 24, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (53, 2, 25, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (54, 2, 26, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (55, 2, 27, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (56, 2, 28, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (57, 2, 29, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (58, 2, 30, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (59, 3, 11, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (60, 3, 12, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (61, 3, 13, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (62, 3, 14, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (63, 3, 15, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (64, 3, 16, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (65, 3, 17, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (66, 3, 18, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (67, 3, 19, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (68, 4, 20, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (69, 4, 21, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (70, 4, 22, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (71, 5, 13, '2026-05-08 10:29:46');
INSERT INTO `role_permission` VALUES (72, 5, 18, '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 501 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '13995832020', '吴平1046', 'https://example.com/avatar/1.png', 2, 30, '上海', 1, '2025-08-16 01:51:55', '2025-08-29 22:38:34', '47.194.162.12', 0, 9, 547.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (2, '18698662739', '马静6639', 'https://example.com/avatar/2.png', 0, 39, '西安', 2, '2023-09-26 23:26:14', '2024-09-08 03:58:24', '61.96.153.208', 1, 0, 1624.48, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (3, '15950380092', '刘涛4391', 'https://example.com/avatar/3.png', 0, 46, '深圳', 3, '2023-02-25 02:13:58', '2026-03-08 03:15:40', '239.18.225.165', 1, 39, 3483.36, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (4, '13822445461', '孙涛5761', 'https://example.com/avatar/4.png', 0, 44, '重庆', 1, '2024-12-03 17:46:32', '2025-05-13 21:13:09', '87.27.234.48', 0, 27, 3995.39, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (5, '15822293077', '徐艳7093', 'https://example.com/avatar/5.png', 1, 20, '重庆', 2, '2024-11-15 00:08:34', '2025-12-09 23:50:25', '234.183.12.229', 0, 16, 1050.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (6, '13827005827', '刘娜6330', 'https://example.com/avatar/6.png', 0, 58, '北京', 3, '2023-07-18 18:42:03', '2023-09-04 03:33:57', '247.95.14.103', 1, 18, 2945.73, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (7, '18677285233', '吴刚4775', 'https://example.com/avatar/7.png', 2, 39, '上海', 2, '2025-01-23 18:28:57', '2026-05-03 08:56:38', '90.92.181.205', 0, 5, 44.28, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (8, '15888479734', '赵娜5826', 'https://example.com/avatar/8.png', 1, 40, '广州', 3, '2024-09-27 12:30:01', '2025-12-03 18:59:10', '213.50.116.111', 1, 8, 1100.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (9, '13774639722', '孙涛2090', 'https://example.com/avatar/9.png', 0, 20, '成都', 2, '2026-02-05 03:26:36', NULL, '167.64.86.126', 1, 30, 3005.89, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (10, '15893277676', '周军5952', 'https://example.com/avatar/10.png', 1, 58, '广州', 2, '2025-10-09 23:22:04', '2025-10-27 09:52:26', '188.172.185.119', 0, 24, 4596.32, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (11, '13916369487', '刘军9645', 'https://example.com/avatar/11.png', 0, 21, '上海', 2, '2023-07-20 17:19:30', '2025-08-12 17:54:34', '112.69.154.192', 1, 10, 51.18, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (12, '13862009608', '吴涛4374', 'https://example.com/avatar/12.png', 2, 38, '广州', 3, '2025-03-02 06:10:21', '2025-10-15 04:38:11', '26.188.28.8', 0, 25, 85.19, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (13, '18699235451', '李涛1736', 'https://example.com/avatar/13.png', 2, 35, '南京', 1, '2025-05-11 11:24:45', NULL, '226.208.31.144', 0, 19, 3394.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (14, '15831967698', '周敏3332', 'https://example.com/avatar/14.png', 1, 46, '南京', 2, '2025-12-01 09:44:00', '2026-01-18 02:01:35', '72.189.75.72', 0, 22, 1961.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (15, '13965186600', '李杰5385', 'https://example.com/avatar/15.png', 1, 27, '深圳', 1, '2023-01-08 21:40:02', NULL, '165.87.184.217', 0, 48, 2252.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (16, '13793009873', '徐涛2197', 'https://example.com/avatar/16.png', 2, 52, '西安', 2, '2023-05-20 15:43:44', '2025-02-26 23:09:31', '141.225.246.45', 0, 11, 962.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (17, '15202987796', '李丽4315', 'https://example.com/avatar/17.png', 2, 23, '杭州', 2, '2026-05-01 05:16:23', NULL, '212.162.54.50', 0, 6, 2063.05, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (18, '15231543058', '吴涛7890', 'https://example.com/avatar/18.png', 0, 21, '上海', 3, '2024-05-10 21:11:22', '2026-01-07 12:01:17', '233.105.214.76', 1, 3, 1508.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (19, '18263501933', '陈艳5855', 'https://example.com/avatar/19.png', 0, 39, '广州', 2, '2025-05-26 06:22:04', '2025-12-08 12:06:20', '222.63.51.31', 0, 44, 2637.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (20, '15212315085', '朱平4830', 'https://example.com/avatar/20.png', 0, 54, '广州', 3, '2023-09-09 17:52:23', '2025-11-07 00:33:32', '218.217.38.76', 0, 49, 3478.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (21, '15893464824', '胡敏9867', 'https://example.com/avatar/21.png', 0, 60, '北京', 1, '2024-03-21 09:03:35', NULL, '253.195.54.229', 0, 6, 4759.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (22, '18201245423', '赵艳5381', 'https://example.com/avatar/22.png', 0, 42, '广州', 3, '2023-08-18 12:23:43', '2025-03-29 09:04:34', '6.73.83.250', 0, 32, 3008.31, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (23, '13835675737', '吴丽8019', 'https://example.com/avatar/23.png', 2, 47, '杭州', 3, '2023-05-20 18:12:02', '2024-04-20 22:12:09', '177.32.50.140', 1, 26, 3218.18, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (24, '18296728472', '徐平4888', 'https://example.com/avatar/24.png', 2, 30, '成都', 3, '2024-10-08 06:10:11', '2025-09-18 16:12:56', '220.14.185.180', 1, 35, 632.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (25, '18695031068', '徐军8866', 'https://example.com/avatar/25.png', 0, 23, '重庆', 1, '2024-10-02 20:43:22', NULL, '30.192.151.51', 1, 6, 1012.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (26, '15251419309', '朱磊2220', 'https://example.com/avatar/26.png', 0, 48, '杭州', 2, '2025-02-01 17:11:31', '2025-08-17 02:09:35', '53.205.220.226', 1, 46, 1571.27, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (27, '15975270089', '刘杰2341', 'https://example.com/avatar/27.png', 0, 58, '西安', 2, '2026-01-22 01:15:25', '2026-03-29 06:06:55', '253.1.190.25', 0, 6, 1384.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (28, '18603427695', '赵涛1170', 'https://example.com/avatar/28.png', 1, 33, '成都', 2, '2025-12-14 15:10:49', NULL, '217.154.248.184', 0, 27, 557.73, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (29, '13828798766', '徐静3543', 'https://example.com/avatar/29.png', 1, 46, '南京', 2, '2024-05-20 02:43:16', '2025-09-04 10:02:03', '188.14.41.130', 1, 47, 1535.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (30, '13765657266', '陈敏3237', 'https://example.com/avatar/30.png', 1, 44, '北京', 3, '2025-01-16 09:30:12', '2025-06-21 19:41:06', '122.51.210.142', 0, 13, 2994.34, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (31, '13750448423', '李娜4842', 'https://example.com/avatar/31.png', 1, 36, '成都', 2, '2025-08-22 22:59:26', '2025-12-26 09:54:54', '251.251.38.120', 0, 31, 2680.94, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (32, '13934277695', '周娜9910', 'https://example.com/avatar/32.png', 1, 43, '北京', 1, '2024-01-30 08:29:38', '2025-10-04 23:25:09', '93.171.57.133', 0, 23, 4087.13, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (33, '15876764099', '孙艳7955', 'https://example.com/avatar/33.png', 2, 43, '南京', 3, '2023-11-06 14:25:25', '2025-01-23 12:46:19', '70.132.249.95', 0, 33, 698.74, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (34, '15881514978', '马丽1776', 'https://example.com/avatar/34.png', 0, 22, '北京', 3, '2023-11-16 04:46:36', NULL, '176.132.24.155', 1, 20, 3571.60, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (35, '18843296571', '赵刚4399', 'https://example.com/avatar/35.png', 0, 22, '南京', 3, '2025-08-04 14:36:19', '2026-04-12 21:42:54', '249.232.182.218', 0, 45, 3766.77, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (36, '15241551660', '黄静5569', 'https://example.com/avatar/36.png', 0, 53, '成都', 1, '2023-08-09 08:28:17', '2025-03-10 14:34:03', '220.26.37.200', 0, 30, 3700.26, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (37, '15064976216', '周艳3476', 'https://example.com/avatar/37.png', 0, 45, '南京', 2, '2024-09-03 11:16:30', '2026-04-05 18:18:15', '167.14.17.106', 1, 16, 3926.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (38, '13735511541', '黄丽9067', 'https://example.com/avatar/38.png', 2, 59, '杭州', 1, '2024-04-27 23:56:13', NULL, '164.153.247.37', 1, 30, 2387.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (39, '18624752625', '胡平6733', 'https://example.com/avatar/39.png', 1, 20, '武汉', 1, '2024-08-23 23:12:16', '2025-03-13 21:39:09', '225.185.112.234', 0, 44, 3594.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (40, '15853796357', '杨涛2453', 'https://example.com/avatar/40.png', 2, 22, '北京', 3, '2024-06-06 15:10:42', '2025-10-03 11:41:33', '76.238.213.114', 1, 2, 3192.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (41, '18249718989', '胡涛6113', 'https://example.com/avatar/41.png', 1, 54, '武汉', 1, '2023-05-24 06:20:12', '2023-09-28 15:16:22', '173.235.161.17', 1, 47, 4220.32, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (42, '13920901649', '胡杰9234', 'https://example.com/avatar/42.png', 0, 40, '北京', 3, '2024-03-28 12:03:06', '2026-04-24 21:12:04', '162.102.191.47', 1, 8, 1929.24, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (43, '15223709824', '黄杰6779', 'https://example.com/avatar/43.png', 0, 28, '上海', 1, '2024-05-22 05:49:51', NULL, '116.28.60.249', 0, 22, 4039.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (44, '13990811278', '孙娜3041', 'https://example.com/avatar/44.png', 1, 56, '南京', 1, '2025-06-17 00:29:54', '2025-10-12 11:04:49', '63.91.234.219', 1, 42, 4134.34, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (45, '18696627330', '胡艳5016', 'https://example.com/avatar/45.png', 0, 27, '上海', 2, '2023-10-22 18:29:04', '2023-10-29 21:36:50', '92.134.18.177', 0, 8, 1664.66, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (46, '15957964776', '朱伟2769', 'https://example.com/avatar/46.png', 0, 60, '西安', 1, '2024-09-19 15:33:32', '2026-01-29 02:53:34', '54.114.71.118', 0, 41, 3513.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (47, '18200558345', '刘涛8337', 'https://example.com/avatar/47.png', 2, 19, '北京', 3, '2024-07-11 06:30:36', '2025-04-24 10:33:43', '247.74.39.23', 1, 27, 2785.39, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (48, '18809350787', '吴娜9513', 'https://example.com/avatar/48.png', 1, 31, '上海', 3, '2023-10-08 17:37:28', '2024-02-10 13:52:50', '39.220.197.3', 1, 43, 3340.77, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (49, '13909756884', '朱磊8331', 'https://example.com/avatar/49.png', 1, 26, '武汉', 3, '2023-09-10 23:41:32', '2026-03-05 21:16:37', '181.173.170.171', 0, 32, 3898.91, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (50, '15936570918', '张娜9487', 'https://example.com/avatar/50.png', 0, 47, '深圳', 3, '2024-09-07 18:23:47', '2026-05-06 21:46:18', '246.235.97.10', 0, 15, 3939.29, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (51, '15238584711', '胡敏9650', 'https://example.com/avatar/51.png', 0, 58, '重庆', 1, '2024-01-30 13:25:57', '2025-12-19 22:44:49', '66.51.223.140', 1, 17, 4241.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (52, '15291406078', '胡涛6543', 'https://example.com/avatar/52.png', 1, 59, '广州', 2, '2026-03-17 04:02:33', NULL, '19.210.6.62', 1, 45, 3172.27, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (53, '18282048602', '王军4221', 'https://example.com/avatar/53.png', 0, 41, '武汉', 1, '2026-02-13 09:39:47', '2026-04-12 06:34:54', '166.248.77.249', 0, 19, 388.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (54, '18204654999', '周娜2614', 'https://example.com/avatar/54.png', 1, 34, '重庆', 1, '2023-09-30 10:45:08', NULL, '58.172.154.243', 0, 43, 4326.76, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (55, '13906042616', '张杰2291', 'https://example.com/avatar/55.png', 1, 24, '成都', 3, '2023-06-02 05:14:11', '2023-08-18 19:38:22', '109.110.172.22', 0, 39, 4753.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (56, '18690194835', '朱芳2901', 'https://example.com/avatar/56.png', 1, 51, '重庆', 3, '2026-04-23 06:06:03', '2026-05-04 22:19:54', '70.6.140.44', 1, 8, 1079.81, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (57, '15029712932', '王涛7034', 'https://example.com/avatar/57.png', 0, 42, '广州', 1, '2023-12-03 16:22:58', '2026-01-30 16:32:55', '156.160.75.183', 0, 23, 620.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (58, '13935866057', '周芳7831', 'https://example.com/avatar/58.png', 0, 47, '上海', 3, '2025-01-11 02:48:03', '2026-01-14 09:56:52', '155.121.83.101', 1, 25, 4293.76, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (59, '18818778424', '李伟3050', 'https://example.com/avatar/59.png', 2, 19, '成都', 3, '2024-12-08 07:30:32', '2025-05-31 08:38:19', '98.22.51.224', 1, 12, 1943.19, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (60, '13780249280', '徐芳9262', 'https://example.com/avatar/60.png', 0, 33, '南京', 2, '2024-12-12 11:26:24', '2025-06-09 13:01:57', '215.20.153.210', 0, 18, 205.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (61, '15050410971', '吴杰9277', 'https://example.com/avatar/61.png', 1, 43, '武汉', 2, '2026-01-11 13:14:26', '2026-03-08 22:07:55', '104.227.76.65', 1, 36, 4414.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (62, '15253224836', '徐娜4475', 'https://example.com/avatar/62.png', 1, 60, '西安', 3, '2025-09-05 02:24:30', '2025-09-29 22:59:20', '171.80.57.46', 1, 48, 1323.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (63, '13792891984', '杨艳5191', 'https://example.com/avatar/63.png', 1, 44, '重庆', 1, '2025-04-16 19:29:43', '2025-07-13 08:08:52', '156.222.242.185', 0, 44, 3777.08, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (64, '15279155251', '赵磊5699', 'https://example.com/avatar/64.png', 0, 53, '重庆', 3, '2023-07-11 22:58:11', NULL, '143.230.192.175', 1, 34, 2945.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (65, '18675838246', '徐平4044', 'https://example.com/avatar/65.png', 1, 29, '深圳', 2, '2024-11-25 14:36:10', NULL, '90.181.71.15', 0, 49, 2528.10, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (66, '18229347318', '黄娜4774', 'https://example.com/avatar/66.png', 2, 39, '重庆', 3, '2024-09-19 02:24:33', '2026-04-09 19:54:32', '171.209.179.157', 1, 40, 3982.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (67, '18863793026', '黄静4708', 'https://example.com/avatar/67.png', 0, 26, '西安', 2, '2024-03-24 04:40:54', '2025-01-18 20:10:30', '237.96.110.84', 1, 32, 3263.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (68, '18292821713', '张强7031', 'https://example.com/avatar/68.png', 1, 33, '重庆', 1, '2026-04-29 18:58:25', '2026-05-03 10:33:12', '33.117.117.71', 1, 1, 3019.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (69, '15860045817', '孙丽6059', 'https://example.com/avatar/69.png', 1, 27, '南京', 2, '2023-05-04 22:16:13', '2025-02-08 00:28:35', '184.50.172.11', 1, 18, 2947.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (70, '18819625632', '黄丽8204', 'https://example.com/avatar/70.png', 0, 47, '西安', 3, '2025-04-27 19:56:31', '2025-05-17 19:10:58', '248.76.242.242', 0, 36, 3397.48, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (71, '13844668449', '周涛5431', 'https://example.com/avatar/71.png', 0, 50, '北京', 1, '2023-04-04 02:41:30', '2026-03-06 12:26:38', '235.45.79.59', 1, 42, 2165.63, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (72, '15239224186', '张杰4580', 'https://example.com/avatar/72.png', 1, 40, '武汉', 1, '2024-05-15 01:26:40', NULL, '214.241.59.218', 1, 19, 3352.00, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (73, '15262547467', '孙艳1600', 'https://example.com/avatar/73.png', 2, 19, '西安', 1, '2024-09-08 10:08:04', '2025-10-01 00:38:15', '160.172.211.89', 1, 45, 2475.05, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (74, '15037639391', '黄杰2737', 'https://example.com/avatar/74.png', 2, 60, '成都', 2, '2023-12-17 08:26:23', '2025-03-02 17:04:04', '137.168.25.64', 0, 28, 814.50, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (75, '18896181385', '吴涛7936', 'https://example.com/avatar/75.png', 2, 20, '重庆', 3, '2024-08-07 08:00:38', NULL, '124.242.21.218', 0, 48, 3670.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (76, '15224434803', '黄艳8100', 'https://example.com/avatar/76.png', 2, 29, '南京', 3, '2024-09-10 07:04:50', '2026-04-25 22:36:51', '214.193.155.66', 0, 38, 2778.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (77, '13943011490', '张杰5754', 'https://example.com/avatar/77.png', 2, 30, '深圳', 1, '2025-03-21 12:51:44', '2026-04-13 01:15:06', '224.251.170.242', 0, 26, 1743.56, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (78, '13901461862', '陈伟7635', 'https://example.com/avatar/78.png', 0, 35, '深圳', 3, '2024-04-02 10:18:42', '2025-01-02 03:26:18', '80.225.205.50', 1, 28, 444.18, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (79, '15933146024', '黄静3013', 'https://example.com/avatar/79.png', 1, 29, '广州', 3, '2025-04-19 20:19:57', '2026-01-11 21:26:05', '168.59.147.47', 0, 41, 1857.53, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (80, '18697731585', '马丽6379', 'https://example.com/avatar/80.png', 0, 39, '西安', 2, '2024-01-24 08:53:38', '2024-08-21 07:12:00', '61.150.202.121', 1, 48, 3144.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (81, '15048043063', '刘涛7979', 'https://example.com/avatar/81.png', 2, 42, '北京', 1, '2023-09-25 14:28:11', NULL, '170.255.152.177', 0, 27, 1187.44, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (82, '13728224284', '黄涛8021', 'https://example.com/avatar/82.png', 2, 31, '武汉', 2, '2025-11-04 08:10:46', '2026-04-15 19:54:38', '203.163.49.160', 1, 30, 2558.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (83, '15893155441', '吴刚8571', 'https://example.com/avatar/83.png', 0, 47, '广州', 3, '2025-12-01 22:03:00', '2025-12-06 04:04:46', '238.110.253.254', 0, 4, 852.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (84, '15890342279', '吴磊5485', 'https://example.com/avatar/84.png', 2, 48, '杭州', 3, '2023-04-11 15:52:07', '2024-11-02 14:27:00', '104.120.195.127', 1, 14, 2535.44, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (85, '18283187586', '黄涛3949', 'https://example.com/avatar/85.png', 2, 21, '南京', 1, '2023-01-11 15:48:29', '2025-03-12 01:05:11', '244.141.207.47', 1, 22, 1672.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (86, '15097396622', '刘强2011', 'https://example.com/avatar/86.png', 1, 29, '南京', 2, '2024-12-05 22:21:48', NULL, '166.182.146.35', 0, 13, 3233.38, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (87, '18667220843', '朱丽2637', 'https://example.com/avatar/87.png', 0, 43, '北京', 2, '2025-06-06 17:42:54', '2025-06-08 12:13:11', '235.60.103.251', 1, 45, 4535.29, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (88, '18661461761', '黄丽1811', 'https://example.com/avatar/88.png', 2, 19, '广州', 1, '2023-04-12 01:34:46', '2024-01-20 09:47:10', '125.226.36.22', 1, 44, 3302.79, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (89, '13796967802', '赵艳2940', 'https://example.com/avatar/89.png', 2, 57, '重庆', 2, '2025-08-22 03:48:26', '2026-05-09 00:27:35', '170.110.216.197', 0, 29, 4200.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (90, '15094945607', '孙静8585', 'https://example.com/avatar/90.png', 1, 59, '成都', 2, '2025-03-12 21:08:24', '2025-05-21 19:28:02', '159.162.121.94', 1, 24, 19.75, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (91, '15888088680', '陈磊2106', 'https://example.com/avatar/91.png', 2, 33, '西安', 2, '2025-06-10 07:07:45', '2025-07-17 16:12:58', '89.123.146.68', 0, 28, 4020.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (92, '15028467348', '刘娜9497', 'https://example.com/avatar/92.png', 2, 34, '南京', 1, '2024-01-30 05:33:27', '2024-06-06 14:26:54', '70.216.5.218', 1, 50, 1050.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (93, '13869031290', '胡平1418', 'https://example.com/avatar/93.png', 2, 57, '西安', 2, '2023-10-18 13:16:19', '2025-03-01 17:55:02', '210.140.86.11', 0, 1, 2898.97, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (94, '13720044628', '李芳2986', 'https://example.com/avatar/94.png', 2, 22, '深圳', 1, '2023-10-27 06:23:18', '2024-04-15 21:39:53', '219.42.18.219', 0, 49, 4050.74, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (95, '18670960684', '马磊8060', 'https://example.com/avatar/95.png', 2, 18, '上海', 3, '2024-04-17 21:04:49', '2026-01-16 04:14:47', '253.123.210.188', 0, 31, 4626.72, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (96, '15292161597', '赵艳4360', 'https://example.com/avatar/96.png', 1, 29, '上海', 1, '2023-01-08 20:00:08', '2023-04-18 08:29:10', '247.154.16.79', 1, 11, 2090.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (97, '18234589200', '朱刚4251', 'https://example.com/avatar/97.png', 0, 56, '北京', 1, '2025-11-04 16:38:27', '2026-04-16 14:36:05', '146.49.173.42', 0, 16, 326.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (98, '18224140274', '赵艳7352', 'https://example.com/avatar/98.png', 0, 22, '重庆', 3, '2025-11-22 09:46:06', '2025-12-11 21:05:30', '227.194.48.123', 0, 43, 4871.37, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (99, '18612749100', '张军5913', 'https://example.com/avatar/99.png', 1, 45, '武汉', 1, '2023-05-03 16:35:02', '2024-01-09 15:00:26', '2.78.205.31', 0, 20, 84.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (100, '15946683984', '刘平2471', 'https://example.com/avatar/100.png', 2, 28, '杭州', 2, '2025-08-01 18:56:29', '2025-08-21 14:16:06', '168.185.246.16', 1, 39, 3123.95, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (101, '15932781867', '陈军7065', 'https://example.com/avatar/101.png', 0, 29, '广州', 1, '2024-09-30 12:59:14', '2025-10-20 00:52:14', '218.0.209.54', 1, 12, 4787.47, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (102, '15962208432', '孙磊5272', 'https://example.com/avatar/102.png', 0, 26, '武汉', 1, '2024-10-03 07:28:47', '2025-08-14 08:00:18', '3.63.73.151', 0, 39, 815.61, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (103, '18673359031', '刘丽5587', 'https://example.com/avatar/103.png', 1, 28, '广州', 1, '2025-11-27 16:14:03', NULL, '109.77.95.39', 0, 5, 1417.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (104, '18859312130', '马刚4424', 'https://example.com/avatar/104.png', 1, 48, '广州', 3, '2024-03-15 04:22:45', '2025-04-10 09:42:51', '117.137.93.65', 1, 37, 3914.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (105, '15059882655', '李刚3821', 'https://example.com/avatar/105.png', 0, 60, '广州', 3, '2024-08-28 19:03:52', '2025-03-19 05:20:46', '217.131.65.199', 1, 33, 4542.00, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (106, '15013041741', '杨强3537', 'https://example.com/avatar/106.png', 1, 59, '西安', 2, '2024-09-09 14:15:56', '2026-02-21 13:25:26', '237.253.74.23', 0, 29, 1719.55, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (107, '13893992886', '刘伟5673', 'https://example.com/avatar/107.png', 2, 18, '重庆', 2, '2024-09-01 04:09:21', '2026-01-22 04:07:22', '81.81.209.83', 1, 30, 2263.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (108, '13922688314', '朱磊1141', 'https://example.com/avatar/108.png', 1, 32, '南京', 3, '2024-02-28 04:14:05', '2026-03-04 10:12:18', '252.11.17.145', 1, 11, 3033.11, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (109, '18259750344', '王涛5557', 'https://example.com/avatar/109.png', 2, 50, '深圳', 2, '2023-07-10 00:17:05', NULL, '51.254.46.106', 1, 23, 4744.12, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (110, '13774491027', '徐敏2968', 'https://example.com/avatar/110.png', 2, 32, '杭州', 1, '2023-01-04 02:57:58', '2023-03-31 07:27:26', '123.17.68.192', 1, 23, 1480.60, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (111, '18262392227', '赵芳2741', 'https://example.com/avatar/111.png', 2, 28, '西安', 2, '2024-06-02 05:53:36', '2025-08-04 20:36:44', '110.118.145.214', 0, 33, 4218.13, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (112, '15297097331', '周静7975', 'https://example.com/avatar/112.png', 1, 30, '西安', 1, '2024-08-22 04:02:11', '2025-10-17 10:30:09', '173.162.220.120', 1, 21, 1856.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (113, '13967792646', '李涛4476', 'https://example.com/avatar/113.png', 2, 44, '广州', 1, '2024-06-14 10:32:35', '2025-12-28 03:12:35', '22.113.40.79', 0, 47, 2209.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (114, '15801156592', '周艳3724', 'https://example.com/avatar/114.png', 1, 60, '深圳', 2, '2025-10-31 05:57:29', '2025-12-09 17:17:50', '174.229.118.220', 0, 8, 497.38, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (115, '13808359596', '胡娜8886', 'https://example.com/avatar/115.png', 0, 56, '南京', 1, '2026-04-01 17:16:54', NULL, '58.167.174.212', 0, 28, 614.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (116, '13803413091', '徐磊3734', 'https://example.com/avatar/116.png', 0, 36, '上海', 3, '2025-03-22 01:30:57', '2025-11-16 12:41:45', '249.63.179.35', 1, 48, 3933.35, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (117, '18805873919', '周芳2899', 'https://example.com/avatar/117.png', 2, 35, '西安', 2, '2023-10-15 20:48:55', '2025-05-25 01:18:34', '36.255.207.30', 0, 41, 3717.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (118, '18811592918', '徐丽3153', 'https://example.com/avatar/118.png', 1, 21, '西安', 2, '2024-07-28 00:15:28', '2024-09-12 14:56:56', '46.200.247.171', 0, 10, 1419.42, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (119, '15016730754', '赵敏5421', 'https://example.com/avatar/119.png', 0, 46, '西安', 3, '2026-03-30 16:47:05', '2026-04-10 17:55:21', '192.51.211.123', 0, 43, 849.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (120, '15924881210', '杨磊2791', 'https://example.com/avatar/120.png', 2, 52, '北京', 3, '2023-11-20 16:23:20', '2024-09-20 07:44:15', '222.209.255.29', 1, 38, 3790.10, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (121, '13922003063', '杨芳1906', 'https://example.com/avatar/121.png', 0, 59, '北京', 3, '2024-11-20 08:54:34', '2026-04-10 01:18:22', '188.220.121.69', 1, 41, 2029.67, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (122, '13945629967', '马平6593', 'https://example.com/avatar/122.png', 0, 46, '杭州', 3, '2025-05-22 08:03:33', '2026-01-22 08:30:06', '54.212.60.243', 0, 28, 2689.94, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (123, '18280027653', '马伟1898', 'https://example.com/avatar/123.png', 2, 25, '武汉', 2, '2025-12-14 14:16:42', '2025-12-19 11:24:53', '120.255.48.247', 0, 16, 3844.26, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (124, '18256315239', '李娜6496', 'https://example.com/avatar/124.png', 1, 50, '北京', 3, '2025-06-06 20:01:52', '2025-06-18 15:42:24', '183.109.71.241', 1, 2, 950.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (125, '15033124767', '孙磊4031', 'https://example.com/avatar/125.png', 2, 33, '广州', 1, '2023-11-15 15:40:04', '2024-08-16 20:46:26', '15.3.72.26', 1, 25, 1573.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (126, '15234516809', '王磊4722', 'https://example.com/avatar/126.png', 1, 42, '南京', 3, '2024-02-17 21:18:36', NULL, '131.138.254.6', 1, 13, 507.36, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (127, '15018559306', '周强6922', 'https://example.com/avatar/127.png', 2, 58, '北京', 3, '2025-09-27 06:23:31', '2026-03-05 14:47:34', '128.254.36.100', 1, 4, 3122.64, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (128, '15825361416', '黄磊5243', 'https://example.com/avatar/128.png', 2, 27, '广州', 2, '2024-02-24 07:27:56', '2025-12-10 16:40:38', '48.160.151.121', 0, 40, 157.08, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (129, '18821697303', '杨艳7816', 'https://example.com/avatar/129.png', 1, 23, '重庆', 1, '2023-03-26 01:38:56', '2025-10-13 18:00:29', '116.164.37.172', 0, 10, 1449.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (130, '18831451611', '孙静8701', 'https://example.com/avatar/130.png', 1, 56, '深圳', 2, '2023-10-01 16:42:43', '2025-06-07 00:19:48', '56.153.33.180', 0, 15, 2230.46, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (131, '13925383330', '王艳3338', 'https://example.com/avatar/131.png', 0, 51, '重庆', 1, '2025-11-11 15:58:16', '2026-03-16 03:52:36', '200.197.53.243', 1, 5, 1942.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (132, '18617730713', '陈敏5001', 'https://example.com/avatar/132.png', 2, 21, '南京', 3, '2025-05-15 20:10:20', '2025-06-07 20:02:33', '11.40.162.143', 0, 6, 1607.92, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (133, '18817204733', '孙平5919', 'https://example.com/avatar/133.png', 1, 50, '深圳', 2, '2023-10-12 18:30:56', '2023-12-02 04:44:13', '53.21.202.73', 0, 5, 1129.73, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (134, '18229669627', '刘刚1036', 'https://example.com/avatar/134.png', 1, 53, '北京', 1, '2024-04-03 01:41:16', '2024-06-07 23:58:17', '33.116.93.11', 0, 1, 66.73, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (135, '13819630776', '赵平4080', 'https://example.com/avatar/135.png', 2, 18, '杭州', 1, '2025-06-28 17:38:44', '2025-08-29 08:25:09', '163.138.96.213', 0, 38, 1619.86, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (136, '15935896748', '陈娜7456', 'https://example.com/avatar/136.png', 1, 31, '北京', 3, '2026-02-11 10:56:50', NULL, '29.211.144.23', 1, 50, 3081.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (137, '13931752700', '王强3675', 'https://example.com/avatar/137.png', 2, 34, '重庆', 1, '2025-09-19 16:28:03', '2025-11-25 03:07:32', '47.44.89.157', 1, 36, 3212.76, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (138, '13971592538', '赵丽9520', 'https://example.com/avatar/138.png', 0, 50, '杭州', 1, '2023-01-14 13:56:46', NULL, '249.92.227.197', 1, 16, 3657.56, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (139, '18894917237', '张强3487', 'https://example.com/avatar/139.png', 1, 50, '南京', 1, '2023-12-10 11:56:56', '2024-09-27 08:47:08', '93.178.192.34', 1, 24, 4571.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (140, '18886321582', '周丽6382', 'https://example.com/avatar/140.png', 1, 51, '南京', 3, '2023-08-08 15:15:04', '2024-06-29 15:28:12', '54.247.134.234', 0, 2, 1431.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (141, '13750548500', '黄磊3507', 'https://example.com/avatar/141.png', 1, 35, '重庆', 3, '2023-06-26 12:41:18', '2025-11-15 03:50:26', '180.206.25.242', 0, 6, 1989.06, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (142, '18670512413', '胡平4507', 'https://example.com/avatar/142.png', 1, 20, '广州', 2, '2025-03-19 14:43:07', '2026-02-16 18:52:15', '79.163.2.101', 1, 19, 2389.78, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (143, '18255636199', '孙丽3404', 'https://example.com/avatar/143.png', 2, 33, '深圳', 2, '2025-12-29 14:11:05', NULL, '143.10.143.10', 0, 31, 3749.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (144, '15817602137', '周艳4408', 'https://example.com/avatar/144.png', 2, 20, '上海', 3, '2023-08-02 09:52:32', NULL, '215.248.64.124', 0, 10, 706.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (145, '13911586843', '黄娜7836', 'https://example.com/avatar/145.png', 0, 38, '南京', 1, '2024-11-07 11:51:14', NULL, '172.73.11.64', 0, 30, 1950.95, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (146, '15051236976', '赵丽6916', 'https://example.com/avatar/146.png', 2, 48, '重庆', 3, '2024-07-16 05:52:18', NULL, '219.7.203.24', 1, 30, 4227.60, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (147, '15250775263', '刘刚2152', 'https://example.com/avatar/147.png', 1, 29, '成都', 3, '2025-02-20 20:39:31', '2026-04-11 02:07:36', '175.121.60.144', 1, 13, 3625.39, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (148, '15039515731', '徐娜9842', 'https://example.com/avatar/148.png', 0, 33, '广州', 2, '2025-09-08 10:02:29', '2026-04-24 15:37:15', '126.4.151.170', 1, 46, 3504.17, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (149, '18676741811', '吴杰3186', 'https://example.com/avatar/149.png', 0, 60, '北京', 2, '2025-01-21 17:15:18', '2025-10-12 11:36:15', '39.76.123.119', 0, 10, 2192.26, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (150, '13763046868', '周涛2276', 'https://example.com/avatar/150.png', 1, 27, '杭州', 1, '2024-06-22 06:57:12', '2025-08-15 16:28:42', '5.251.168.217', 1, 17, 4993.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (151, '18648232572', '李敏1935', 'https://example.com/avatar/151.png', 0, 29, '成都', 1, '2023-05-12 13:12:30', '2025-11-17 13:00:27', '135.102.3.79', 0, 42, 1860.74, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (152, '18884317956', '刘磊6475', 'https://example.com/avatar/152.png', 0, 20, '成都', 3, '2023-03-21 21:56:11', '2025-09-06 17:51:27', '130.162.16.242', 0, 30, 4362.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (153, '15014131364', '陈丽2432', 'https://example.com/avatar/153.png', 1, 55, '成都', 1, '2023-08-22 11:18:59', '2025-11-17 02:21:12', '94.227.76.179', 0, 11, 2873.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (154, '13791475742', '胡芳6175', 'https://example.com/avatar/154.png', 1, 40, '南京', 2, '2023-11-23 22:02:06', '2026-03-21 10:00:01', '116.141.84.133', 1, 10, 2601.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (155, '13919800441', '朱磊6199', 'https://example.com/avatar/155.png', 1, 56, '上海', 2, '2023-07-13 00:15:44', '2025-03-10 12:39:51', '101.167.250.5', 1, 17, 2942.84, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (156, '15861820900', '刘敏4210', 'https://example.com/avatar/156.png', 2, 36, '北京', 3, '2024-09-07 01:34:55', '2025-10-18 21:27:01', '156.219.45.97', 0, 4, 3918.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (157, '15098247900', '王刚4840', 'https://example.com/avatar/157.png', 0, 32, '北京', 3, '2025-03-20 12:39:10', '2025-11-14 17:19:42', '171.250.152.155', 0, 12, 1857.77, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (158, '13724625426', '赵娜3387', 'https://example.com/avatar/158.png', 1, 32, '武汉', 1, '2024-11-26 04:21:22', '2025-04-09 10:28:28', '130.241.147.27', 1, 15, 4489.88, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (159, '15984200501', '张平3525', 'https://example.com/avatar/159.png', 0, 24, '北京', 2, '2024-09-13 02:13:23', NULL, '93.137.48.230', 1, 44, 665.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (160, '15270600158', '黄涛9224', 'https://example.com/avatar/160.png', 1, 34, '重庆', 3, '2024-10-23 10:53:37', '2026-04-19 13:47:24', '126.240.165.89', 0, 24, 696.14, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (161, '15049642759', '张磊7639', 'https://example.com/avatar/161.png', 0, 52, '武汉', 2, '2025-03-19 07:29:14', '2026-04-15 19:55:21', '226.220.211.105', 1, 37, 290.17, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (162, '18613692192', '周涛8407', 'https://example.com/avatar/162.png', 0, 43, '重庆', 2, '2024-07-08 08:53:20', '2025-01-18 07:04:11', '139.143.41.72', 0, 0, 2267.47, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (163, '15813611071', '杨芳9941', 'https://example.com/avatar/163.png', 2, 48, '重庆', 1, '2023-06-08 10:03:16', '2024-04-01 00:14:22', '74.132.159.98', 0, 43, 3874.89, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (164, '15836761913', '陈平9620', 'https://example.com/avatar/164.png', 1, 34, '成都', 1, '2023-07-16 01:17:22', '2023-08-07 03:15:36', '133.74.139.179', 1, 31, 2685.06, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (165, '18228147379', '孙磊8415', 'https://example.com/avatar/165.png', 1, 48, '广州', 2, '2024-11-29 03:50:05', '2025-09-21 06:56:46', '41.229.202.80', 1, 34, 1058.44, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (166, '15851801344', '胡芳8399', 'https://example.com/avatar/166.png', 1, 28, '北京', 1, '2024-11-02 11:49:07', '2025-07-13 05:24:29', '201.39.149.49', 0, 10, 3006.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (167, '15942508027', '朱平9890', 'https://example.com/avatar/167.png', 0, 26, '武汉', 3, '2023-08-18 15:54:12', '2023-08-24 07:07:37', '238.90.164.99', 1, 33, 2092.32, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (168, '15956909593', '王伟7117', 'https://example.com/avatar/168.png', 2, 38, '上海', 1, '2023-08-15 11:18:19', '2023-10-19 16:13:48', '146.153.243.124', 0, 35, 3078.99, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (169, '18877502314', '徐涛6519', 'https://example.com/avatar/169.png', 0, 37, '成都', 2, '2023-01-17 06:12:21', '2023-09-02 23:23:15', '155.184.219.25', 1, 33, 4408.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (170, '15864558307', '黄杰7073', 'https://example.com/avatar/170.png', 2, 32, '杭州', 2, '2024-05-17 09:08:42', '2024-10-11 01:27:09', '109.32.145.98', 0, 1, 2632.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (171, '13712711042', '王丽1120', 'https://example.com/avatar/171.png', 1, 18, '深圳', 2, '2023-04-12 12:38:29', '2024-10-24 13:57:17', '101.7.212.5', 1, 33, 2885.39, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (172, '18227991834', '杨平3082', 'https://example.com/avatar/172.png', 0, 59, '南京', 2, '2024-05-21 08:57:33', '2025-12-26 11:10:31', '161.14.45.158', 0, 32, 3137.66, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (173, '15283139374', '朱伟9181', 'https://example.com/avatar/173.png', 1, 26, '杭州', 3, '2023-06-23 11:36:15', '2026-04-19 04:41:07', '108.167.103.216', 1, 6, 1915.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (174, '13861238877', '陈敏7366', 'https://example.com/avatar/174.png', 1, 44, '重庆', 1, '2025-11-22 18:59:55', '2026-03-16 06:29:15', '97.12.245.167', 1, 19, 2094.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (175, '15803148120', '张芳7514', 'https://example.com/avatar/175.png', 1, 23, '南京', 2, '2024-09-17 03:27:23', '2025-01-18 07:36:15', '136.21.125.246', 1, 19, 2032.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (176, '15030207504', '徐涛2796', 'https://example.com/avatar/176.png', 2, 25, '上海', 2, '2024-06-07 01:06:17', '2024-11-26 14:11:21', '78.112.131.75', 0, 44, 4274.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (177, '13926428889', '陈伟1763', 'https://example.com/avatar/177.png', 1, 35, '西安', 1, '2024-02-22 19:03:37', '2024-11-20 16:05:00', '112.43.69.128', 0, 14, 185.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (178, '15809873905', '徐军4262', 'https://example.com/avatar/178.png', 2, 50, '上海', 1, '2024-03-03 00:28:28', '2024-05-17 23:40:09', '185.74.124.31', 0, 18, 4373.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (179, '15936351366', '徐静8743', 'https://example.com/avatar/179.png', 2, 27, '武汉', 3, '2025-06-28 03:22:36', '2026-04-25 05:13:51', '11.120.133.102', 0, 37, 2545.95, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (180, '13918420573', '朱静7638', 'https://example.com/avatar/180.png', 1, 35, '广州', 2, '2026-04-02 15:45:44', '2026-04-29 02:48:14', '144.119.100.197', 1, 46, 808.98, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (181, '15286337945', '徐杰9282', 'https://example.com/avatar/181.png', 1, 54, '成都', 2, '2024-10-19 04:05:08', '2024-11-18 03:51:24', '213.136.54.85', 1, 0, 1537.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (182, '18601833081', '刘磊2907', 'https://example.com/avatar/182.png', 1, 23, '武汉', 1, '2024-05-10 09:23:17', '2024-12-01 18:44:03', '57.137.23.109', 1, 34, 3877.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (183, '15962021954', '王敏9100', 'https://example.com/avatar/183.png', 0, 26, '成都', 3, '2023-09-03 02:03:30', NULL, '170.28.55.217', 1, 46, 3141.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (184, '18860729667', '马芳7665', 'https://example.com/avatar/184.png', 2, 59, '重庆', 3, '2023-11-04 12:00:23', '2026-02-08 23:46:14', '135.157.214.165', 1, 35, 291.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (185, '18215998929', '黄刚5431', 'https://example.com/avatar/185.png', 2, 55, '上海', 2, '2023-02-21 01:32:21', '2025-03-29 04:07:33', '167.230.104.24', 1, 37, 2414.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (186, '13870736449', '张静2008', 'https://example.com/avatar/186.png', 0, 33, '深圳', 3, '2024-08-22 16:57:21', NULL, '130.88.99.3', 1, 34, 2230.65, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (187, '13991736320', '吴芳4878', 'https://example.com/avatar/187.png', 0, 52, '深圳', 1, '2024-04-14 12:44:56', '2026-04-29 12:36:30', '224.34.214.168', 0, 8, 4589.81, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (188, '18825904298', '吴平6005', 'https://example.com/avatar/188.png', 0, 52, '西安', 3, '2026-02-15 16:08:06', '2026-03-10 13:15:17', '151.169.49.156', 1, 18, 4681.50, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (189, '18618171507', '李强2259', 'https://example.com/avatar/189.png', 1, 32, '上海', 2, '2023-08-19 06:33:53', '2024-04-20 01:25:53', '56.40.27.248', 0, 34, 2039.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (190, '13730550230', '陈娜4525', 'https://example.com/avatar/190.png', 1, 50, '广州', 1, '2024-01-28 21:54:42', '2024-08-30 15:21:56', '175.193.162.106', 0, 42, 2133.98, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (191, '13910236785', '张艳3578', 'https://example.com/avatar/191.png', 2, 33, '武汉', 1, '2025-10-05 22:58:40', '2026-02-15 23:51:55', '161.155.254.19', 1, 7, 728.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (192, '18291871977', '杨静7826', 'https://example.com/avatar/192.png', 2, 38, '重庆', 1, '2025-06-08 17:11:02', '2025-10-22 01:54:29', '235.227.5.103', 1, 4, 666.06, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (193, '15820978444', '徐涛2647', 'https://example.com/avatar/193.png', 1, 58, '南京', 1, '2023-07-11 02:56:32', '2025-11-15 17:29:07', '151.174.238.60', 0, 18, 203.72, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (194, '15881188527', '杨艳1621', 'https://example.com/avatar/194.png', 1, 56, '广州', 3, '2025-09-22 21:31:22', '2026-01-20 01:57:45', '35.135.42.15', 0, 29, 267.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (195, '15920557596', '徐芳6145', 'https://example.com/avatar/195.png', 1, 48, '南京', 1, '2025-05-16 06:38:05', '2025-07-17 12:24:15', '183.102.157.243', 1, 13, 2483.63, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (196, '13869054004', '刘娜6606', 'https://example.com/avatar/196.png', 2, 47, '重庆', 3, '2023-08-18 17:17:00', '2025-07-20 07:01:23', '75.122.193.98', 0, 38, 241.44, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (197, '13744465995', '黄涛6330', 'https://example.com/avatar/197.png', 0, 40, '深圳', 3, '2025-05-28 03:52:49', '2025-06-25 08:28:06', '64.28.176.216', 0, 23, 933.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (198, '15862922986', '胡伟5021', 'https://example.com/avatar/198.png', 1, 54, '杭州', 3, '2023-07-06 12:35:50', '2025-06-16 13:42:21', '116.75.229.149', 1, 50, 2249.05, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (199, '13822722818', '徐刚1731', 'https://example.com/avatar/199.png', 1, 28, '广州', 2, '2025-10-13 15:21:21', NULL, '224.71.196.51', 1, 1, 454.50, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (200, '15272963801', '刘娜4075', 'https://example.com/avatar/200.png', 1, 22, '北京', 1, '2024-06-30 20:08:14', '2026-05-03 02:36:21', '5.162.182.81', 0, 14, 2676.96, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (201, '15039222767', '王涛9112', 'https://example.com/avatar/201.png', 2, 20, '北京', 2, '2024-12-18 14:06:27', '2026-02-25 06:10:20', '3.235.129.113', 0, 7, 3436.78, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (202, '15027137623', '李涛1243', 'https://example.com/avatar/202.png', 0, 58, '南京', 1, '2025-02-07 09:54:12', '2025-03-09 02:17:10', '211.153.245.142', 0, 42, 2266.88, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (203, '18805153533', '马涛2757', 'https://example.com/avatar/203.png', 1, 27, '南京', 3, '2024-01-05 08:30:08', '2024-03-13 18:36:08', '221.225.35.27', 1, 8, 322.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (204, '15018773402', '王芳6680', 'https://example.com/avatar/204.png', 2, 41, '上海', 3, '2026-03-03 01:07:07', '2026-04-18 15:15:01', '159.32.131.172', 0, 28, 4475.63, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (205, '13773760166', '李刚3745', 'https://example.com/avatar/205.png', 2, 43, '西安', 2, '2025-09-16 00:22:36', '2026-03-08 15:47:13', '22.61.32.238', 0, 18, 2434.58, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (206, '15852714464', '徐艳5396', 'https://example.com/avatar/206.png', 2, 47, '广州', 2, '2025-11-08 23:05:39', '2026-03-16 19:00:09', '36.152.161.41', 1, 49, 183.47, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (207, '15942579840', '李丽7201', 'https://example.com/avatar/207.png', 2, 55, '上海', 3, '2025-08-04 00:46:02', '2026-02-11 06:57:56', '135.102.22.10', 1, 15, 3077.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (208, '13768997060', '陈伟1765', 'https://example.com/avatar/208.png', 2, 40, '北京', 1, '2023-08-18 00:14:59', NULL, '26.237.60.194', 1, 30, 233.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (209, '15247915081', '孙艳9114', 'https://example.com/avatar/209.png', 0, 21, '北京', 2, '2023-07-27 13:13:35', '2025-06-27 09:50:45', '88.253.20.166', 0, 43, 1921.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (210, '18246926760', '张丽6443', 'https://example.com/avatar/210.png', 0, 58, '深圳', 2, '2023-01-25 18:46:56', '2025-12-06 20:54:45', '200.95.165.173', 1, 43, 4333.46, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (211, '18878707846', '马敏7594', 'https://example.com/avatar/211.png', 0, 49, '上海', 3, '2025-11-27 13:30:55', NULL, '139.193.211.67', 0, 28, 3684.64, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (212, '13724792982', '赵敏7105', 'https://example.com/avatar/212.png', 1, 53, '南京', 2, '2023-10-20 07:17:59', '2026-04-22 21:36:24', '148.16.192.84', 0, 31, 3802.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (213, '13803826753', '孙刚5738', 'https://example.com/avatar/213.png', 1, 39, '西安', 2, '2024-12-17 14:12:03', '2025-01-26 05:10:25', '20.171.89.76', 1, 18, 3637.74, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (214, '15868738598', '孙强9794', 'https://example.com/avatar/214.png', 2, 37, '重庆', 1, '2023-01-25 03:19:22', NULL, '19.84.170.83', 1, 48, 3977.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (215, '15286034866', '周平1409', 'https://example.com/avatar/215.png', 1, 26, '成都', 3, '2023-06-14 10:57:07', '2025-04-29 07:59:13', '20.50.223.98', 0, 29, 3000.28, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (216, '15028718489', '李静4545', 'https://example.com/avatar/216.png', 0, 19, '南京', 3, '2025-06-10 03:05:26', NULL, '92.144.54.222', 1, 4, 4816.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (217, '15036987471', '黄敏2496', 'https://example.com/avatar/217.png', 2, 47, '重庆', 3, '2025-08-25 21:37:50', '2026-03-21 17:17:19', '20.198.179.41', 0, 36, 1728.67, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (218, '15068543562', '赵杰5740', 'https://example.com/avatar/218.png', 0, 46, '武汉', 1, '2024-04-12 23:04:17', NULL, '107.26.129.84', 0, 48, 3258.27, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (219, '18671227859', '吴静4410', 'https://example.com/avatar/219.png', 0, 52, '杭州', 1, '2024-07-07 08:51:47', '2024-10-08 09:26:43', '211.24.136.187', 0, 26, 2862.50, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (220, '15946159359', '周艳7534', 'https://example.com/avatar/220.png', 2, 32, '成都', 2, '2026-02-18 01:51:28', '2026-03-06 06:59:13', '224.243.160.22', 1, 11, 593.77, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (221, '18649525358', '张强1379', 'https://example.com/avatar/221.png', 1, 40, '武汉', 2, '2025-05-14 15:19:13', NULL, '145.161.228.26', 0, 47, 38.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (222, '15290965871', '黄娜4796', 'https://example.com/avatar/222.png', 0, 59, '武汉', 3, '2025-05-20 02:02:45', '2025-06-22 01:33:37', '223.18.32.120', 0, 4, 4715.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (223, '13779273430', '朱平9257', 'https://example.com/avatar/223.png', 0, 20, '广州', 3, '2024-10-28 22:24:49', '2025-10-15 23:41:02', '99.67.210.147', 0, 13, 1368.36, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (224, '15926060934', '马军2225', 'https://example.com/avatar/224.png', 2, 55, '成都', 1, '2024-11-05 12:46:40', '2026-02-19 22:03:31', '222.241.94.254', 1, 25, 3122.97, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (225, '13717989946', '朱芳7018', 'https://example.com/avatar/225.png', 1, 31, '成都', 1, '2025-10-06 11:05:30', '2026-01-11 17:30:31', '22.114.63.166', 1, 40, 785.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (226, '18667233406', '刘涛2752', 'https://example.com/avatar/226.png', 2, 30, '南京', 3, '2025-05-24 19:07:06', '2025-07-08 19:00:15', '213.64.215.125', 1, 4, 1893.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (227, '15944576905', '徐丽1412', 'https://example.com/avatar/227.png', 1, 60, '广州', 1, '2025-09-06 15:53:59', NULL, '233.39.102.54', 1, 17, 4654.84, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (228, '15865635907', '陈芳8678', 'https://example.com/avatar/228.png', 1, 38, '成都', 1, '2023-09-20 01:56:35', '2023-11-15 07:09:11', '226.77.113.147', 0, 47, 4609.72, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (229, '13821393990', '吴娜3976', 'https://example.com/avatar/229.png', 2, 25, '北京', 2, '2024-10-19 08:29:06', NULL, '77.195.16.20', 0, 1, 3879.65, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (230, '15889985015', '王娜6922', 'https://example.com/avatar/230.png', 0, 45, '重庆', 2, '2023-09-02 07:17:40', '2025-03-29 13:21:14', '226.55.42.60', 1, 11, 2185.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (231, '13887583317', '刘涛9049', 'https://example.com/avatar/231.png', 2, 31, '武汉', 1, '2025-07-03 18:01:19', '2026-03-08 11:28:29', '199.236.90.75', 0, 30, 3693.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (232, '15947327727', '马平9449', 'https://example.com/avatar/232.png', 0, 35, '武汉', 2, '2024-04-08 11:20:21', '2024-06-09 10:58:02', '133.250.117.26', 0, 50, 3327.99, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (233, '13999591034', '朱芳6848', 'https://example.com/avatar/233.png', 1, 26, '武汉', 2, '2023-06-26 14:38:38', '2025-05-13 16:54:44', '140.226.25.78', 0, 4, 1173.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (234, '18213682429', '陈刚6209', 'https://example.com/avatar/234.png', 2, 24, '武汉', 2, '2023-03-18 09:16:23', '2023-06-16 05:48:02', '215.40.253.118', 1, 28, 2789.86, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (235, '15836874451', '马静9883', 'https://example.com/avatar/235.png', 0, 48, '上海', 1, '2023-01-20 10:15:01', '2024-05-16 09:48:24', '161.0.222.105', 1, 28, 3840.50, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (236, '13759875026', '陈艳8494', 'https://example.com/avatar/236.png', 1, 37, '重庆', 3, '2024-10-17 23:15:31', '2025-02-02 07:02:19', '219.212.158.94', 0, 40, 1030.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (237, '13878944217', '朱涛3171', 'https://example.com/avatar/237.png', 1, 27, '重庆', 3, '2023-11-21 22:28:08', '2025-06-15 09:35:06', '99.114.236.190', 0, 43, 2164.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (238, '15856730447', '胡军6844', 'https://example.com/avatar/238.png', 0, 52, '杭州', 1, '2026-04-08 02:04:17', '2026-04-20 09:45:31', '128.28.216.167', 0, 47, 4452.60, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (239, '15844538048', '李娜9714', 'https://example.com/avatar/239.png', 0, 48, '广州', 3, '2024-08-26 04:21:16', NULL, '190.54.51.17', 0, 24, 4306.44, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (240, '18897478264', '陈伟5624', 'https://example.com/avatar/240.png', 0, 29, '南京', 1, '2024-02-27 02:30:59', '2024-09-23 20:05:50', '207.156.66.1', 1, 9, 3995.84, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (241, '13827722236', '孙芳5929', 'https://example.com/avatar/241.png', 0, 51, '广州', 2, '2026-01-31 04:06:45', '2026-05-01 18:18:32', '188.164.62.214', 1, 33, 316.11, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (242, '15803478132', '陈丽3201', 'https://example.com/avatar/242.png', 0, 36, '成都', 1, '2024-11-18 07:19:41', '2026-05-02 04:23:20', '139.220.64.244', 0, 19, 4896.63, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (243, '13749218874', '徐芳5459', 'https://example.com/avatar/243.png', 1, 52, '杭州', 2, '2023-03-30 06:53:01', '2023-12-04 02:03:53', '33.171.224.181', 0, 29, 2132.55, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (244, '18693642361', '孙敏7188', 'https://example.com/avatar/244.png', 2, 59, '成都', 3, '2026-04-08 19:49:09', '2026-05-03 10:00:51', '231.174.175.224', 0, 3, 1182.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (245, '13752859950', '赵艳7557', 'https://example.com/avatar/245.png', 1, 43, '上海', 1, '2023-02-24 06:34:45', '2025-04-19 17:46:07', '43.136.105.11', 1, 45, 838.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (246, '13941318696', '张静1772', 'https://example.com/avatar/246.png', 1, 19, '成都', 3, '2025-12-23 15:23:47', '2026-02-15 16:15:01', '65.38.54.70', 1, 1, 4822.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (247, '13811631929', '徐艳9184', 'https://example.com/avatar/247.png', 1, 53, '武汉', 3, '2023-05-12 21:28:38', '2024-08-22 22:38:37', '71.246.81.251', 0, 35, 4357.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (248, '13724469136', '徐芳9743', 'https://example.com/avatar/248.png', 1, 50, '南京', 2, '2026-03-22 19:11:20', '2026-04-12 15:50:36', '153.148.54.37', 1, 8, 1693.14, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (249, '15924823229', '王强6515', 'https://example.com/avatar/249.png', 1, 38, '深圳', 1, '2023-04-24 09:19:34', NULL, '38.230.55.5', 1, 4, 4092.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (250, '13890891521', '杨强4997', 'https://example.com/avatar/250.png', 1, 42, '杭州', 1, '2024-09-01 15:58:04', '2025-07-24 06:37:30', '91.132.197.252', 1, 50, 4581.65, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (251, '18842970786', '朱强8878', 'https://example.com/avatar/251.png', 1, 49, '南京', 2, '2026-04-08 09:55:32', '2026-04-27 10:41:54', '181.131.180.27', 0, 37, 4063.61, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (252, '15818687715', '孙刚7373', 'https://example.com/avatar/252.png', 1, 53, '西安', 3, '2023-06-20 07:01:42', '2024-09-17 07:32:53', '187.12.87.247', 0, 48, 3940.77, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (253, '15904856545', '胡娜7325', 'https://example.com/avatar/253.png', 1, 35, '深圳', 2, '2023-10-08 04:23:47', NULL, '193.118.229.140', 0, 13, 239.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (254, '13995524237', '李军8556', 'https://example.com/avatar/254.png', 1, 22, '西安', 2, '2026-02-08 04:24:28', '2026-04-17 09:13:43', '252.31.63.33', 1, 47, 3731.36, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (255, '15823351879', '张平7636', 'https://example.com/avatar/255.png', 2, 30, '成都', 3, '2023-07-09 16:51:45', '2026-04-21 23:16:01', '254.77.250.124', 0, 4, 4454.71, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (256, '15806462647', '杨磊2585', 'https://example.com/avatar/256.png', 2, 59, '上海', 2, '2025-07-12 07:29:18', '2025-09-06 21:17:55', '169.191.164.124', 1, 28, 4631.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (257, '13800258643', '李伟7475', 'https://example.com/avatar/257.png', 1, 60, '南京', 3, '2025-02-27 08:55:40', '2025-03-03 21:20:32', '66.75.44.204', 0, 50, 3690.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (258, '15831428485', '张军2311', 'https://example.com/avatar/258.png', 1, 37, '成都', 1, '2025-11-09 11:15:10', '2025-12-24 06:32:02', '65.109.207.16', 1, 10, 1567.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (259, '18628673618', '孙静9554', 'https://example.com/avatar/259.png', 2, 40, '重庆', 3, '2025-11-25 17:26:14', '2026-01-26 05:46:00', '82.95.124.116', 0, 29, 3460.96, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (260, '15261531757', '刘静2379', 'https://example.com/avatar/260.png', 2, 55, '南京', 3, '2026-03-15 11:01:38', NULL, '115.236.85.19', 0, 9, 1344.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (261, '18602651988', '王刚1221', 'https://example.com/avatar/261.png', 0, 27, '深圳', 3, '2023-05-25 04:13:05', '2024-11-29 19:18:37', '1.172.128.22', 0, 46, 8.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (262, '15895566373', '吴艳7406', 'https://example.com/avatar/262.png', 0, 21, '上海', 1, '2025-07-17 20:02:43', '2025-10-17 21:19:35', '7.248.80.216', 1, 19, 3759.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (263, '13830604473', '李艳6231', 'https://example.com/avatar/263.png', 0, 36, '杭州', 3, '2026-04-12 23:08:50', '2026-04-28 02:21:50', '9.110.213.65', 0, 36, 2917.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (264, '18676749859', '吴芳3830', 'https://example.com/avatar/264.png', 2, 27, '成都', 3, '2025-04-01 20:33:25', '2026-01-04 15:14:18', '129.157.125.73', 1, 49, 2573.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (265, '15902911083', '赵艳9909', 'https://example.com/avatar/265.png', 2, 50, '广州', 1, '2026-03-01 12:02:11', '2026-04-14 20:09:19', '38.153.72.204', 1, 7, 2432.91, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (266, '15965495390', '杨涛7999', 'https://example.com/avatar/266.png', 0, 45, '杭州', 3, '2025-11-11 21:57:52', NULL, '201.163.164.140', 0, 9, 246.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (267, '15843776184', '王伟5966', 'https://example.com/avatar/267.png', 1, 32, '西安', 1, '2024-06-09 18:06:52', '2024-08-28 00:58:19', '73.39.167.58', 1, 17, 4126.90, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (268, '18206551758', '周敏7200', 'https://example.com/avatar/268.png', 1, 46, '南京', 2, '2023-11-21 20:17:24', '2024-10-03 16:46:22', '106.68.192.8', 1, 31, 4030.94, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (269, '13821841260', '陈刚6410', 'https://example.com/avatar/269.png', 0, 58, '西安', 1, '2023-09-17 11:45:03', '2024-12-27 00:54:17', '183.20.137.236', 1, 46, 1949.61, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (270, '15275375630', '李丽1025', 'https://example.com/avatar/270.png', 0, 52, '深圳', 1, '2024-05-28 08:59:20', '2025-05-15 20:16:29', '122.116.229.171', 1, 39, 2338.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (271, '13830610606', '朱丽8032', 'https://example.com/avatar/271.png', 2, 39, '北京', 3, '2026-04-11 07:15:33', '2026-05-07 05:23:45', '143.146.255.107', 0, 45, 3141.71, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (272, '13778479475', '陈平7530', 'https://example.com/avatar/272.png', 2, 22, '武汉', 3, '2023-11-17 16:43:03', '2025-03-28 11:14:26', '149.232.105.175', 1, 4, 4322.87, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (273, '13725819103', '杨艳5177', 'https://example.com/avatar/273.png', 0, 46, '杭州', 3, '2025-04-13 12:11:14', '2025-09-28 16:37:10', '83.197.134.254', 0, 35, 1459.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (274, '18672926135', '李敏2033', 'https://example.com/avatar/274.png', 2, 56, '深圳', 2, '2023-05-18 19:03:40', NULL, '150.65.40.8', 0, 38, 3201.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (275, '18299247571', '王强2335', 'https://example.com/avatar/275.png', 0, 46, '北京', 3, '2023-10-23 22:39:00', '2025-01-20 19:22:59', '219.34.38.82', 0, 33, 844.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (276, '15088754998', '刘平2342', 'https://example.com/avatar/276.png', 0, 43, '武汉', 2, '2023-01-01 21:01:07', '2023-05-09 09:45:27', '236.53.135.207', 0, 46, 1638.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (277, '13916333990', '周涛8212', 'https://example.com/avatar/277.png', 1, 45, '上海', 1, '2023-11-10 11:15:54', NULL, '120.93.3.141', 1, 0, 2647.86, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (278, '15263703686', '徐丽3191', 'https://example.com/avatar/278.png', 0, 46, '深圳', 2, '2024-12-07 14:59:44', '2025-12-10 09:21:43', '115.25.127.86', 0, 13, 2843.97, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (279, '15982132906', '胡丽1809', 'https://example.com/avatar/279.png', 1, 58, '武汉', 2, '2025-01-23 09:08:11', NULL, '248.205.102.102', 0, 27, 1706.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (280, '18219647363', '胡涛5436', 'https://example.com/avatar/280.png', 1, 57, '重庆', 1, '2026-04-11 03:03:28', '2026-04-13 03:52:41', '79.67.17.162', 1, 35, 950.34, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (281, '13755414596', '李敏6561', 'https://example.com/avatar/281.png', 0, 44, '北京', 3, '2025-11-21 10:26:40', '2026-04-10 09:57:55', '3.189.146.41', 0, 35, 1350.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (282, '15823583786', '杨涛5934', 'https://example.com/avatar/282.png', 0, 31, '武汉', 3, '2025-03-18 01:07:37', '2025-08-22 03:17:43', '23.228.171.224', 0, 28, 709.82, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (283, '13941083407', '胡强9573', 'https://example.com/avatar/283.png', 0, 19, '深圳', 3, '2024-01-11 08:18:47', '2024-07-06 02:12:41', '233.106.22.182', 1, 38, 3808.78, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (284, '15890112646', '胡军4503', 'https://example.com/avatar/284.png', 0, 27, '西安', 2, '2024-05-27 03:03:14', '2026-01-24 06:40:56', '121.133.5.207', 1, 33, 2098.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (285, '13858275392', '杨平5990', 'https://example.com/avatar/285.png', 0, 21, '武汉', 1, '2025-08-25 13:02:21', '2026-05-06 06:31:19', '59.101.86.177', 0, 40, 2643.76, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (286, '15077373208', '徐涛6872', 'https://example.com/avatar/286.png', 2, 56, '北京', 1, '2025-03-30 22:35:40', '2026-02-08 23:51:15', '246.23.73.243', 0, 34, 1091.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (287, '13899792500', '赵军7283', 'https://example.com/avatar/287.png', 1, 30, '杭州', 1, '2026-03-27 23:57:31', '2026-04-30 23:37:56', '215.112.82.54', 1, 27, 3247.32, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (288, '13799805359', '孙刚1574', 'https://example.com/avatar/288.png', 1, 52, '深圳', 1, '2026-04-13 03:13:57', '2026-04-29 20:06:26', '178.92.35.122', 1, 21, 3784.91, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (289, '15895961532', '陈芳3149', 'https://example.com/avatar/289.png', 2, 49, '广州', 2, '2024-01-14 00:33:29', '2025-10-30 08:49:45', '166.206.100.101', 1, 35, 4269.12, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (290, '15061776922', '吴刚7229', 'https://example.com/avatar/290.png', 0, 36, '西安', 1, '2024-12-05 01:53:37', '2026-02-07 06:56:15', '221.173.243.78', 1, 5, 1528.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (291, '15272125500', '马芳7982', 'https://example.com/avatar/291.png', 1, 58, '北京', 1, '2025-12-21 20:03:02', '2026-01-22 11:39:10', '22.141.205.124', 0, 1, 101.82, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (292, '18235217272', '黄强7220', 'https://example.com/avatar/292.png', 2, 53, '深圳', 2, '2023-09-02 09:20:15', '2024-02-20 10:53:11', '58.0.158.7', 1, 24, 2748.10, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (293, '13931967722', '李杰9719', 'https://example.com/avatar/293.png', 1, 18, '重庆', 1, '2025-10-05 09:19:16', '2025-11-10 01:10:33', '230.104.111.19', 1, 19, 3502.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (294, '18678095404', '陈敏9975', 'https://example.com/avatar/294.png', 1, 39, '上海', 3, '2024-11-08 05:52:57', '2025-03-14 14:25:20', '162.248.46.21', 0, 15, 1818.99, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (295, '18627900394', '张静9751', 'https://example.com/avatar/295.png', 2, 41, '成都', 3, '2025-11-04 22:53:19', '2026-01-29 07:44:08', '150.88.165.196', 1, 10, 23.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (296, '13837067900', '陈丽7762', 'https://example.com/avatar/296.png', 2, 22, '成都', 1, '2023-08-29 19:56:41', NULL, '99.87.153.167', 1, 48, 2348.28, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (297, '15836127215', '徐敏4783', 'https://example.com/avatar/297.png', 0, 20, '西安', 2, '2023-01-27 07:03:13', '2023-03-31 04:42:56', '65.110.96.14', 1, 23, 326.63, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (298, '18864815087', '王伟2779', 'https://example.com/avatar/298.png', 0, 40, '北京', 3, '2024-12-12 09:49:15', '2025-09-16 22:25:44', '79.101.38.29', 0, 8, 4194.26, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (299, '13945289707', '刘杰3063', 'https://example.com/avatar/299.png', 0, 41, '广州', 2, '2025-02-17 14:32:40', '2025-08-10 07:53:53', '156.78.106.140', 0, 4, 2948.66, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (300, '18689400967', '徐娜8949', 'https://example.com/avatar/300.png', 0, 37, '西安', 1, '2026-01-28 13:44:34', '2026-03-12 09:15:54', '81.237.44.206', 0, 10, 2374.46, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (301, '13784504943', '周涛4632', 'https://example.com/avatar/301.png', 2, 52, '成都', 3, '2025-04-07 19:11:46', '2026-05-05 16:05:37', '252.15.115.149', 1, 43, 515.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (302, '15882142701', '赵娜3730', 'https://example.com/avatar/302.png', 2, 50, '武汉', 2, '2023-08-06 18:28:59', '2025-01-22 15:01:28', '22.248.151.162', 1, 47, 3142.56, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (303, '13994615563', '赵伟8023', 'https://example.com/avatar/303.png', 0, 25, '西安', 2, '2025-03-26 11:34:23', '2025-04-03 21:20:02', '28.254.221.97', 1, 9, 1723.17, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (304, '13920069168', '杨伟5838', 'https://example.com/avatar/304.png', 0, 31, '南京', 2, '2023-02-03 20:42:03', '2023-09-15 22:25:40', '128.123.155.59', 0, 40, 101.28, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (305, '15869859737', '吴磊5382', 'https://example.com/avatar/305.png', 2, 25, '杭州', 3, '2023-08-06 03:04:37', '2024-07-05 17:12:54', '37.25.123.136', 1, 29, 1775.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (306, '15078478111', '李娜5390', 'https://example.com/avatar/306.png', 0, 26, '北京', 1, '2025-12-03 13:52:05', '2026-01-21 01:24:52', '125.242.141.157', 0, 40, 2527.28, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (307, '15281288945', '吴丽1139', 'https://example.com/avatar/307.png', 2, 38, '广州', 3, '2024-06-11 15:02:48', '2026-03-26 10:41:10', '112.126.231.21', 0, 20, 165.71, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (308, '15073326653', '胡刚6209', 'https://example.com/avatar/308.png', 1, 42, '成都', 1, '2023-04-23 06:44:16', NULL, '74.59.51.88', 0, 46, 4669.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (309, '15068724375', '李静7424', 'https://example.com/avatar/309.png', 0, 57, '武汉', 1, '2026-04-29 19:25:30', NULL, '80.71.192.200', 1, 42, 442.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (310, '18287695614', '杨磊6521', 'https://example.com/avatar/310.png', 0, 43, '北京', 1, '2023-02-27 08:32:22', '2023-05-19 03:42:22', '33.206.147.105', 0, 16, 1897.37, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (311, '13969017385', '张杰6291', 'https://example.com/avatar/311.png', 0, 20, '深圳', 3, '2025-01-28 21:36:02', '2025-02-10 16:13:45', '79.132.158.226', 0, 44, 4572.59, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (312, '15052089355', '胡敏1373', 'https://example.com/avatar/312.png', 0, 51, '杭州', 1, '2023-04-23 17:38:49', '2024-10-28 23:55:45', '41.233.13.119', 1, 40, 3848.64, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (313, '18238986898', '黄伟9344', 'https://example.com/avatar/313.png', 2, 49, '上海', 3, '2024-08-31 11:10:52', '2025-06-08 09:34:31', '122.152.71.80', 0, 39, 4936.78, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (314, '13707495398', '刘平8306', 'https://example.com/avatar/314.png', 1, 45, '上海', 2, '2024-11-07 02:37:26', '2025-09-01 04:10:37', '65.215.8.169', 0, 5, 3055.42, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (315, '18235228271', '刘刚8614', 'https://example.com/avatar/315.png', 1, 30, '成都', 2, '2023-03-30 01:55:06', '2025-06-28 04:46:20', '171.129.202.109', 1, 11, 1769.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (316, '15220627458', '赵涛8631', 'https://example.com/avatar/316.png', 1, 60, '重庆', 3, '2025-11-11 02:17:05', NULL, '137.185.112.34', 0, 49, 3464.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (317, '13711648510', '杨伟5806', 'https://example.com/avatar/317.png', 1, 19, '北京', 2, '2024-01-22 10:22:21', '2024-10-03 05:01:26', '226.202.11.44', 1, 20, 1841.84, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (318, '15970821362', '杨涛1272', 'https://example.com/avatar/318.png', 2, 51, '南京', 3, '2025-07-29 01:33:11', '2026-04-28 15:31:27', '30.219.70.160', 0, 5, 3991.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (319, '15883680264', '马芳6038', 'https://example.com/avatar/319.png', 2, 20, '上海', 2, '2025-03-15 11:37:33', '2025-07-24 12:54:33', '33.171.162.183', 1, 46, 3505.51, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (320, '15054997200', '王芳4697', 'https://example.com/avatar/320.png', 2, 21, '广州', 2, '2023-02-02 14:51:30', '2024-10-01 23:26:14', '240.34.77.245', 1, 10, 2670.00, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (321, '13722884903', '陈杰7728', 'https://example.com/avatar/321.png', 2, 22, '上海', 1, '2025-07-10 15:31:01', '2026-03-16 12:59:22', '204.143.47.220', 1, 39, 419.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (322, '18288148631', '杨刚3779', 'https://example.com/avatar/322.png', 0, 49, '北京', 2, '2024-09-20 08:21:32', NULL, '202.205.144.82', 1, 29, 3245.37, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (323, '13862831478', '李强1082', 'https://example.com/avatar/323.png', 0, 28, '重庆', 2, '2024-01-14 05:54:05', '2025-10-21 12:11:25', '90.77.12.44', 0, 22, 464.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (324, '15273457137', '孙涛4535', 'https://example.com/avatar/324.png', 1, 41, '西安', 2, '2023-01-26 03:40:41', NULL, '190.165.85.157', 1, 44, 2411.60, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (325, '15072985146', '杨强1259', 'https://example.com/avatar/325.png', 0, 19, '西安', 2, '2023-08-05 11:38:16', NULL, '42.219.213.148', 1, 16, 827.07, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (326, '13836097945', '吴敏7465', 'https://example.com/avatar/326.png', 1, 36, '成都', 1, '2025-10-15 04:51:11', '2026-04-13 11:57:10', '155.116.160.66', 0, 46, 4930.28, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (327, '13715545401', '张丽6275', 'https://example.com/avatar/327.png', 0, 32, '成都', 3, '2025-03-03 12:41:19', NULL, '90.224.203.180', 1, 42, 922.40, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (328, '15802964205', '朱娜5986', 'https://example.com/avatar/328.png', 0, 22, '西安', 2, '2025-09-05 22:59:34', '2026-02-28 12:34:14', '138.161.101.94', 0, 35, 2089.51, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (329, '18258517311', '杨涛7653', 'https://example.com/avatar/329.png', 0, 44, '成都', 2, '2024-11-26 22:59:33', NULL, '133.200.187.56', 0, 20, 2747.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (330, '13755336071', '吴磊5350', 'https://example.com/avatar/330.png', 2, 18, '广州', 2, '2023-07-20 04:08:21', '2024-08-17 14:09:08', '220.72.39.247', 0, 17, 1788.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (331, '18209203477', '赵娜6284', 'https://example.com/avatar/331.png', 0, 58, '成都', 1, '2024-01-30 06:51:45', '2024-07-23 14:30:30', '84.167.214.47', 0, 27, 2428.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (332, '18899634390', '刘静4783', 'https://example.com/avatar/332.png', 0, 51, '南京', 1, '2024-07-25 15:49:12', NULL, '79.107.245.201', 1, 26, 4717.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (333, '15993039105', '徐磊2773', 'https://example.com/avatar/333.png', 2, 26, '重庆', 2, '2024-01-23 18:41:23', '2024-06-01 00:13:38', '101.226.187.240', 1, 25, 2095.09, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (334, '18234300546', '徐军9019', 'https://example.com/avatar/334.png', 1, 54, '上海', 2, '2024-07-02 21:26:28', '2024-12-15 18:30:55', '130.77.223.233', 0, 40, 2715.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (335, '15997042930', '李涛9567', 'https://example.com/avatar/335.png', 2, 35, '武汉', 1, '2025-05-02 14:39:17', '2025-05-06 01:12:05', '225.66.146.201', 1, 32, 2879.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (336, '13815732309', '孙伟7217', 'https://example.com/avatar/336.png', 0, 25, '南京', 3, '2024-09-11 16:58:08', '2025-12-27 15:27:58', '219.1.88.142', 1, 18, 4044.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (337, '15056661079', '周艳9132', 'https://example.com/avatar/337.png', 1, 48, '北京', 3, '2025-11-19 01:45:49', '2026-01-02 18:11:36', '81.109.238.58', 1, 49, 3273.74, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (338, '13919117206', '李丽3409', 'https://example.com/avatar/338.png', 2, 34, '杭州', 2, '2023-12-28 22:08:16', '2024-06-17 16:42:41', '219.213.83.93', 1, 50, 1970.05, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (339, '15225294002', '周涛5486', 'https://example.com/avatar/339.png', 1, 32, '重庆', 2, '2023-12-19 01:05:37', '2024-05-28 10:06:36', '56.123.3.89', 0, 47, 3124.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (340, '15896439459', '李伟2382', 'https://example.com/avatar/340.png', 2, 40, '南京', 3, '2024-04-02 17:50:39', NULL, '211.7.237.150', 0, 9, 4646.75, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (341, '18279451270', '王军4391', 'https://example.com/avatar/341.png', 0, 18, '南京', 3, '2025-03-26 09:25:29', '2026-03-09 14:16:02', '158.25.53.33', 1, 22, 4761.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (342, '18849194815', '周磊6824', 'https://example.com/avatar/342.png', 1, 40, '武汉', 1, '2024-01-06 12:48:28', '2024-06-30 00:57:38', '170.85.53.190', 0, 23, 212.26, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (343, '13805721547', '张娜8717', 'https://example.com/avatar/343.png', 1, 52, '广州', 3, '2025-06-20 12:12:45', '2025-11-03 03:39:58', '104.128.95.23', 0, 31, 3463.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (344, '18859992459', '周伟4957', 'https://example.com/avatar/344.png', 1, 43, '武汉', 2, '2026-03-16 11:52:52', '2026-04-24 09:14:21', '173.60.135.133', 0, 12, 4686.46, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (345, '13749088137', '徐磊3867', 'https://example.com/avatar/345.png', 2, 27, '北京', 1, '2025-11-04 07:11:31', '2025-12-31 23:42:14', '132.163.12.30', 0, 15, 3259.11, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (346, '18601204989', '李丽9013', 'https://example.com/avatar/346.png', 2, 41, '武汉', 1, '2025-03-18 04:36:39', '2026-02-16 03:49:32', '241.49.167.109', 0, 48, 1263.55, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (347, '13924188591', '王杰3477', 'https://example.com/avatar/347.png', 2, 55, '上海', 1, '2025-01-13 01:44:45', '2025-03-13 09:22:43', '159.47.181.123', 0, 12, 3724.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (348, '18863855159', '吴军3448', 'https://example.com/avatar/348.png', 0, 29, '北京', 2, '2025-10-10 00:06:54', '2026-03-08 13:45:17', '131.240.85.218', 0, 46, 829.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (349, '13773333251', '周伟7364', 'https://example.com/avatar/349.png', 0, 45, '南京', 2, '2025-06-05 21:17:41', '2025-09-09 00:04:56', '94.179.61.98', 1, 35, 4748.40, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (350, '18284666647', '杨丽9605', 'https://example.com/avatar/350.png', 2, 49, '南京', 3, '2025-04-09 09:59:19', '2025-07-02 05:46:57', '239.210.172.104', 1, 43, 4619.17, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (351, '13711835365', '孙磊3788', 'https://example.com/avatar/351.png', 0, 42, '武汉', 2, '2023-09-14 10:27:23', '2024-06-23 19:55:12', '103.242.160.98', 0, 25, 3628.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (352, '15029200360', '朱磊5203', 'https://example.com/avatar/352.png', 0, 34, '西安', 2, '2024-09-21 12:24:43', '2025-12-01 07:03:34', '37.223.79.218', 0, 47, 1377.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (353, '13955535052', '孙强2459', 'https://example.com/avatar/353.png', 1, 23, '南京', 3, '2026-04-01 18:46:26', '2026-04-26 07:06:32', '149.35.23.106', 0, 26, 1556.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (354, '13925699923', '王强6706', 'https://example.com/avatar/354.png', 0, 51, '武汉', 1, '2026-03-20 14:22:18', '2026-04-22 17:58:58', '158.218.60.252', 1, 47, 1914.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (355, '13888690114', '马军9094', 'https://example.com/avatar/355.png', 0, 26, '西安', 1, '2025-12-23 19:51:38', '2026-02-28 03:51:56', '183.121.86.89', 0, 12, 4.73, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (356, '18878023106', '马杰7409', 'https://example.com/avatar/356.png', 1, 32, '南京', 1, '2023-01-03 10:20:02', '2024-06-07 00:43:58', '47.44.209.160', 0, 6, 4639.17, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (357, '18664232515', '黄强6092', 'https://example.com/avatar/357.png', 2, 48, '武汉', 1, '2026-03-10 04:53:24', '2026-04-30 09:25:24', '246.103.118.182', 1, 32, 2795.42, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (358, '13928271950', '孙平9824', 'https://example.com/avatar/358.png', 0, 45, '西安', 1, '2023-05-04 01:09:03', '2025-06-25 16:10:15', '65.177.54.11', 0, 1, 491.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (359, '15063147913', '张军6313', 'https://example.com/avatar/359.png', 2, 28, '深圳', 2, '2023-06-01 00:33:06', '2023-09-05 21:18:14', '200.6.75.110', 1, 17, 3962.64, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (360, '13882356382', '孙涛4429', 'https://example.com/avatar/360.png', 2, 23, '重庆', 3, '2025-04-20 08:47:12', '2025-06-05 09:36:37', '50.64.132.77', 1, 42, 1918.18, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (361, '13932790115', '杨涛1235', 'https://example.com/avatar/361.png', 1, 35, '西安', 1, '2023-01-11 17:57:29', '2026-02-18 13:14:24', '189.104.72.50', 0, 37, 3524.62, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (362, '18886335044', '周艳9838', 'https://example.com/avatar/362.png', 0, 38, '重庆', 2, '2025-01-23 22:31:44', '2026-01-15 05:06:30', '207.60.119.49', 1, 47, 3430.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (363, '18244647890', '赵强7030', 'https://example.com/avatar/363.png', 1, 43, '杭州', 1, '2025-09-09 18:11:29', '2026-04-16 11:15:37', '247.214.192.204', 0, 7, 3297.17, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (364, '18820600961', '陈平3655', 'https://example.com/avatar/364.png', 0, 42, '西安', 1, '2025-03-21 08:01:28', '2025-04-07 06:31:16', '142.35.216.237', 1, 14, 2675.78, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (365, '18803624026', '赵涛6693', 'https://example.com/avatar/365.png', 0, 48, '上海', 2, '2026-03-28 03:11:25', '2026-04-07 02:21:23', '145.151.255.29', 1, 36, 375.98, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (366, '13735080163', '王军2087', 'https://example.com/avatar/366.png', 1, 39, '杭州', 2, '2026-03-20 00:32:57', NULL, '97.154.89.254', 0, 1, 629.00, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (367, '13793344130', '陈艳6430', 'https://example.com/avatar/367.png', 2, 24, '上海', 2, '2025-07-26 17:19:57', '2025-11-14 13:54:32', '72.4.58.117', 1, 12, 4809.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (368, '18800035718', '胡伟1255', 'https://example.com/avatar/368.png', 1, 26, '成都', 1, '2023-06-12 03:57:07', '2026-03-16 19:02:17', '166.187.28.140', 1, 35, 252.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (369, '18698390130', '李涛8501', 'https://example.com/avatar/369.png', 1, 41, '武汉', 2, '2026-01-22 21:27:50', '2026-04-12 09:10:48', '166.215.100.188', 0, 11, 1576.87, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (370, '13858388421', '王磊1139', 'https://example.com/avatar/370.png', 1, 25, '成都', 1, '2024-04-10 14:03:21', '2025-05-08 04:32:27', '143.234.242.39', 1, 49, 4719.14, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (371, '13889015361', '赵涛9213', 'https://example.com/avatar/371.png', 1, 40, '广州', 2, '2023-06-13 17:11:28', '2025-08-10 04:12:59', '93.253.74.117', 1, 31, 3025.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (372, '15922680735', '胡静3382', 'https://example.com/avatar/372.png', 0, 44, '广州', 3, '2025-07-08 17:40:19', '2026-02-07 13:48:18', '10.128.190.125', 1, 47, 2340.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (373, '18692152992', '徐强8825', 'https://example.com/avatar/373.png', 0, 21, '南京', 2, '2023-12-08 17:31:40', '2025-07-19 12:39:49', '88.50.118.24', 0, 0, 4239.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (374, '18607223299', '杨杰3181', 'https://example.com/avatar/374.png', 0, 52, '深圳', 1, '2024-10-13 15:18:07', '2025-07-09 03:16:28', '89.12.89.51', 1, 48, 4078.05, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (375, '15227509642', '马涛8255', 'https://example.com/avatar/375.png', 2, 23, '北京', 1, '2025-08-13 04:03:35', '2026-04-22 13:44:52', '251.162.74.82', 0, 39, 4359.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (376, '15911004409', '孙刚7273', 'https://example.com/avatar/376.png', 2, 34, '重庆', 2, '2025-01-25 20:05:31', '2025-05-09 18:34:46', '157.179.131.68', 0, 11, 2961.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (377, '18234559330', '李磊1821', 'https://example.com/avatar/377.png', 1, 53, '南京', 2, '2023-12-15 13:14:37', NULL, '29.219.149.252', 1, 29, 3054.27, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (378, '18656881081', '孙磊7113', 'https://example.com/avatar/378.png', 1, 39, '武汉', 2, '2023-07-21 16:19:04', NULL, '195.160.196.200', 0, 15, 2449.71, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (379, '15951335372', '陈娜7089', 'https://example.com/avatar/379.png', 0, 24, '西安', 1, '2025-09-01 02:50:34', '2026-04-22 07:52:15', '130.147.2.22', 0, 23, 1359.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (380, '15994203585', '黄艳3088', 'https://example.com/avatar/380.png', 1, 20, '西安', 3, '2023-07-09 03:39:41', '2024-12-02 09:36:59', '152.212.130.50', 1, 10, 967.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (381, '18854528132', '吴芳8931', 'https://example.com/avatar/381.png', 1, 22, '重庆', 2, '2023-05-17 03:10:46', NULL, '168.5.176.156', 1, 35, 4514.56, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (382, '18840572205', '孙艳9569', 'https://example.com/avatar/382.png', 1, 24, '武汉', 3, '2023-03-09 04:57:43', NULL, '224.53.239.142', 1, 14, 1670.95, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (383, '18688387990', '吴丽3023', 'https://example.com/avatar/383.png', 0, 25, '上海', 1, '2024-09-25 07:14:01', NULL, '228.96.119.82', 0, 9, 2488.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (384, '18685693594', '周涛4358', 'https://example.com/avatar/384.png', 0, 21, '深圳', 2, '2023-02-07 18:28:10', NULL, '225.73.45.2', 1, 4, 3209.22, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (385, '13731579853', '孙敏2172', 'https://example.com/avatar/385.png', 1, 55, '深圳', 3, '2024-07-20 10:59:13', NULL, '31.113.255.211', 1, 15, 621.03, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (386, '15977013185', '马磊4856', 'https://example.com/avatar/386.png', 0, 31, '武汉', 2, '2024-12-08 06:36:46', '2026-03-30 13:59:39', '248.83.116.228', 0, 17, 451.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (387, '15278899560', '吴平8018', 'https://example.com/avatar/387.png', 1, 54, '西安', 3, '2023-05-06 08:33:56', NULL, '61.34.63.164', 1, 16, 4171.48, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (388, '13893093880', '赵军5634', 'https://example.com/avatar/388.png', 0, 43, '重庆', 1, '2023-06-24 03:25:37', '2025-08-27 04:54:04', '171.249.113.57', 0, 40, 497.25, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (389, '15080470564', '朱静1992', 'https://example.com/avatar/389.png', 0, 26, '上海', 2, '2024-04-13 23:38:49', NULL, '99.9.105.187', 1, 22, 375.31, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (390, '18845483670', '赵丽5072', 'https://example.com/avatar/390.png', 1, 36, '成都', 1, '2025-09-01 03:09:55', '2026-02-03 18:26:03', '211.89.40.12', 0, 23, 669.99, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (391, '15060587944', '张涛3993', 'https://example.com/avatar/391.png', 0, 47, '重庆', 2, '2024-04-11 09:01:05', '2025-03-08 05:47:24', '36.45.165.38', 1, 25, 3245.81, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (392, '13709012110', '李平9116', 'https://example.com/avatar/392.png', 1, 32, '重庆', 1, '2024-01-21 13:34:42', '2025-08-28 21:30:19', '52.245.164.221', 1, 2, 4874.85, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (393, '18881844935', '赵娜1792', 'https://example.com/avatar/393.png', 1, 25, '成都', 2, '2025-03-16 01:20:07', '2026-05-01 02:25:07', '125.40.213.124', 0, 21, 1670.84, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (394, '13719390985', '吴丽8508', 'https://example.com/avatar/394.png', 2, 38, '北京', 1, '2026-02-14 13:48:58', NULL, '99.229.170.79', 0, 18, 3546.16, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (395, '18633966028', '刘涛6093', 'https://example.com/avatar/395.png', 0, 47, '重庆', 3, '2025-08-17 21:05:09', NULL, '18.93.131.50', 1, 39, 2944.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (396, '15072316078', '陈伟1428', 'https://example.com/avatar/396.png', 2, 34, '深圳', 2, '2026-01-21 08:00:49', '2026-04-10 15:33:36', '6.203.138.75', 1, 48, 2147.98, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (397, '18215120522', '李军4886', 'https://example.com/avatar/397.png', 0, 22, '南京', 1, '2026-05-05 01:31:54', '2026-05-08 12:25:26', '33.57.64.60', 0, 3, 943.86, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (398, '18613578935', '马敏7262', 'https://example.com/avatar/398.png', 1, 29, '深圳', 1, '2025-09-20 05:59:55', '2026-04-18 03:35:23', '233.234.125.148', 1, 33, 2530.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (399, '18675227918', '陈艳2635', 'https://example.com/avatar/399.png', 1, 29, '西安', 3, '2024-12-09 18:33:59', '2025-09-03 07:24:42', '51.31.128.255', 0, 5, 1403.79, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (400, '13742982254', '李强4363', 'https://example.com/avatar/400.png', 1, 34, '武汉', 2, '2026-01-28 04:39:38', '2026-01-29 18:13:05', '49.87.237.191', 0, 37, 640.97, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (401, '13748093953', '陈平6438', 'https://example.com/avatar/401.png', 2, 25, '广州', 2, '2026-04-03 07:26:07', NULL, '10.82.190.143', 1, 11, 786.24, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (402, '18229181157', '孙丽6377', 'https://example.com/avatar/402.png', 1, 37, '重庆', 2, '2023-03-19 05:12:08', '2025-08-17 02:15:33', '238.206.180.24', 0, 19, 1960.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (403, '13986158401', '周敏4399', 'https://example.com/avatar/403.png', 2, 48, '深圳', 2, '2023-02-11 06:43:59', '2023-11-19 03:15:04', '80.134.220.170', 1, 35, 2662.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (404, '18693604574', '杨涛9425', 'https://example.com/avatar/404.png', 0, 37, '武汉', 3, '2023-07-16 03:03:56', '2025-03-29 07:49:21', '212.21.237.55', 1, 50, 1709.06, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (405, '18839556532', '刘刚4432', 'https://example.com/avatar/405.png', 1, 48, '武汉', 2, '2023-04-05 17:18:33', '2025-11-12 15:30:43', '31.146.164.176', 1, 9, 4532.38, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (406, '15046825141', '孙娜3916', 'https://example.com/avatar/406.png', 1, 35, '重庆', 2, '2025-08-31 04:08:28', '2026-01-27 21:22:58', '86.186.248.95', 1, 34, 3333.71, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (407, '18659013103', '刘敏9011', 'https://example.com/avatar/407.png', 1, 35, '杭州', 2, '2024-04-05 17:22:00', '2024-07-04 06:53:32', '185.160.194.166', 1, 32, 4858.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (408, '15953558097', '杨涛6487', 'https://example.com/avatar/408.png', 2, 21, '上海', 2, '2025-07-18 23:42:21', '2025-08-22 15:17:55', '179.45.84.170', 0, 6, 3438.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (409, '13980583154', '周敏9167', 'https://example.com/avatar/409.png', 2, 45, '重庆', 2, '2024-04-29 04:38:21', '2025-12-21 14:46:09', '245.29.10.143', 0, 27, 476.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (410, '15839798513', '陈艳8462', 'https://example.com/avatar/410.png', 1, 50, '深圳', 3, '2025-12-03 08:18:10', '2025-12-25 10:34:41', '233.202.55.147', 1, 23, 4798.69, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (411, '15801536933', '马刚7106', 'https://example.com/avatar/411.png', 0, 52, '武汉', 3, '2024-05-10 22:09:49', '2025-07-23 12:30:05', '10.23.143.175', 0, 32, 147.06, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (412, '13708294615', '张杰1327', 'https://example.com/avatar/412.png', 2, 47, '上海', 1, '2023-04-22 08:40:12', '2024-12-13 02:07:07', '95.59.18.123', 1, 7, 3769.42, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (413, '18630809769', '陈伟3516', 'https://example.com/avatar/413.png', 0, 22, '杭州', 3, '2025-06-26 12:28:21', '2025-08-13 00:35:56', '6.185.253.147', 0, 45, 3361.46, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (414, '18206941385', '黄静2395', 'https://example.com/avatar/414.png', 2, 19, '北京', 1, '2025-01-07 20:50:35', '2025-10-08 23:05:31', '142.105.11.7', 1, 48, 46.51, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (415, '15987363431', '赵艳2504', 'https://example.com/avatar/415.png', 0, 43, '南京', 2, '2023-04-24 22:05:09', '2024-04-24 06:44:27', '101.66.247.232', 0, 44, 1596.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (416, '18628087225', '朱娜1303', 'https://example.com/avatar/416.png', 1, 21, '西安', 1, '2023-02-07 08:22:44', '2025-06-03 04:48:08', '95.97.166.84', 1, 34, 4259.34, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (417, '15835101842', '吴艳3009', 'https://example.com/avatar/417.png', 0, 31, '广州', 1, '2023-05-05 10:43:52', '2025-09-02 07:49:39', '18.15.207.33', 1, 28, 3829.86, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (418, '15081713923', '王敏3660', 'https://example.com/avatar/418.png', 0, 37, '深圳', 1, '2026-03-10 02:34:11', '2026-05-04 05:58:51', '94.132.150.10', 1, 0, 3278.66, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (419, '13746185435', '朱芳5423', 'https://example.com/avatar/419.png', 2, 34, '上海', 2, '2024-05-25 04:07:08', '2024-08-26 19:33:35', '91.100.64.52', 0, 49, 2905.38, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (420, '13901537212', '王杰1998', 'https://example.com/avatar/420.png', 0, 22, '成都', 1, '2026-04-09 08:27:33', '2026-04-15 15:01:10', '255.253.157.232', 0, 18, 3398.90, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (421, '13874785645', '杨娜4106', 'https://example.com/avatar/421.png', 2, 55, '深圳', 2, '2023-12-21 03:23:48', '2025-09-13 12:53:10', '62.230.34.121', 1, 24, 849.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (422, '15990682015', '赵杰5521', 'https://example.com/avatar/422.png', 1, 44, '西安', 1, '2025-08-14 12:30:36', '2025-11-02 22:40:33', '141.208.90.186', 1, 5, 3965.65, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (423, '13834816804', '徐芳3969', 'https://example.com/avatar/423.png', 2, 46, '深圳', 1, '2023-10-19 10:40:28', '2024-07-25 00:36:50', '184.188.194.83', 0, 2, 3238.39, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (424, '18236796796', '胡静9750', 'https://example.com/avatar/424.png', 0, 24, '上海', 3, '2023-04-17 13:59:06', NULL, '143.12.193.62', 0, 31, 673.88, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (425, '15819659832', '赵伟1609', 'https://example.com/avatar/425.png', 2, 26, '武汉', 1, '2025-01-17 07:01:29', '2025-08-07 15:18:14', '61.176.53.41', 0, 42, 2497.18, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (426, '18893850189', '黄磊8697', 'https://example.com/avatar/426.png', 0, 25, '南京', 3, '2025-05-09 13:24:46', NULL, '192.63.136.67', 0, 9, 1347.99, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (427, '18846146685', '张娜9131', 'https://example.com/avatar/427.png', 0, 34, '深圳', 3, '2026-05-04 21:59:35', '2026-05-08 11:05:38', '132.152.35.118', 0, 48, 3501.11, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (428, '18625138133', '王军1794', 'https://example.com/avatar/428.png', 2, 29, '西安', 1, '2025-12-08 00:11:19', '2026-01-27 22:44:25', '96.26.227.90', 1, 12, 1079.50, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (429, '15822063696', '赵强4829', 'https://example.com/avatar/429.png', 2, 52, '深圳', 3, '2023-08-21 08:18:06', '2025-08-14 23:21:02', '97.226.55.83', 0, 18, 1160.34, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (430, '13730012161', '张芳5724', 'https://example.com/avatar/430.png', 2, 40, '北京', 3, '2024-07-28 17:13:20', '2025-08-27 07:51:43', '127.249.47.215', 1, 15, 2713.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (431, '15222107518', '李芳1744', 'https://example.com/avatar/431.png', 0, 54, '南京', 3, '2025-09-10 15:51:14', NULL, '155.95.207.56', 1, 12, 39.65, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (432, '15935471139', '张涛9190', 'https://example.com/avatar/432.png', 2, 21, '重庆', 1, '2025-05-25 08:52:22', '2026-02-07 02:39:00', '166.248.124.33', 1, 48, 505.39, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (433, '15209087923', '赵强8968', 'https://example.com/avatar/433.png', 1, 46, '深圳', 3, '2023-07-05 11:03:22', '2025-05-26 18:21:08', '184.54.241.58', 1, 40, 4509.12, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (434, '18836165202', '黄涛7366', 'https://example.com/avatar/434.png', 0, 50, '广州', 3, '2024-03-12 07:08:51', '2024-03-23 02:42:45', '216.15.250.116', 0, 19, 370.66, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (435, '15838002441', '李艳7288', 'https://example.com/avatar/435.png', 0, 45, '武汉', 3, '2023-05-22 04:00:10', '2025-03-22 03:18:38', '64.63.22.99', 1, 6, 1937.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (436, '13981603431', '赵刚5275', 'https://example.com/avatar/436.png', 0, 25, '广州', 3, '2025-12-05 05:36:24', '2026-04-10 07:44:42', '230.193.35.138', 1, 9, 2675.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (437, '13738160085', '赵强4852', 'https://example.com/avatar/437.png', 2, 44, '杭州', 3, '2024-03-01 18:54:37', '2025-12-27 00:50:51', '120.57.134.91', 1, 1, 4385.00, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (438, '18291924722', '周涛8317', 'https://example.com/avatar/438.png', 1, 20, '上海', 2, '2025-07-10 00:24:39', '2025-08-07 18:52:47', '216.212.218.144', 0, 5, 1850.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (439, '18652416453', '吴刚1667', 'https://example.com/avatar/439.png', 1, 54, '深圳', 1, '2025-02-02 18:16:05', NULL, '46.67.39.28', 0, 24, 3199.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (440, '18676336546', '赵强9059', 'https://example.com/avatar/440.png', 2, 21, '南京', 3, '2024-12-31 04:18:00', '2026-01-05 21:49:34', '37.210.36.5', 1, 6, 181.41, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (441, '15090416797', '徐伟3652', 'https://example.com/avatar/441.png', 0, 38, '南京', 3, '2026-01-02 00:57:40', '2026-04-20 00:01:57', '3.77.206.109', 1, 44, 3920.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (442, '15994756667', '陈刚8590', 'https://example.com/avatar/442.png', 1, 42, '成都', 1, '2025-09-06 22:51:05', '2026-05-01 21:02:17', '15.57.146.8', 1, 32, 2149.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (443, '18695499404', '王丽9485', 'https://example.com/avatar/443.png', 0, 19, '深圳', 2, '2026-05-07 11:38:26', NULL, '37.221.112.129', 0, 31, 3150.47, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (444, '15951142842', '赵杰6283', 'https://example.com/avatar/444.png', 2, 42, '成都', 2, '2025-06-27 08:14:30', '2025-11-16 11:20:14', '127.210.182.26', 0, 33, 4574.98, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (445, '13983322388', '胡杰3781', 'https://example.com/avatar/445.png', 2, 56, '重庆', 3, '2023-01-05 23:22:56', NULL, '32.121.214.196', 1, 3, 2471.10, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (446, '15963733251', '周涛5722', 'https://example.com/avatar/446.png', 0, 35, '深圳', 2, '2023-11-18 14:50:50', '2026-01-29 15:41:29', '6.162.117.234', 0, 11, 2454.32, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (447, '15819414742', '张平5754', 'https://example.com/avatar/447.png', 1, 19, '深圳', 1, '2024-02-18 09:36:30', '2025-09-16 09:08:10', '107.85.250.250', 1, 7, 4931.47, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (448, '18211189766', '孙丽8991', 'https://example.com/avatar/448.png', 2, 55, '杭州', 3, '2023-05-09 04:21:33', '2023-10-21 13:38:17', '164.23.15.117', 1, 9, 904.98, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (449, '13837616036', '王磊2245', 'https://example.com/avatar/449.png', 0, 34, '北京', 1, '2023-01-25 05:13:24', '2024-04-09 08:19:00', '27.54.6.239', 1, 21, 2553.64, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (450, '18824354727', '刘娜3902', 'https://example.com/avatar/450.png', 1, 55, '杭州', 2, '2023-05-09 16:12:41', NULL, '205.208.149.202', 0, 13, 4072.84, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (451, '15808803921', '杨军7228', 'https://example.com/avatar/451.png', 2, 58, '深圳', 2, '2024-06-09 19:58:51', '2025-01-14 10:12:36', '82.213.79.6', 0, 24, 170.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (452, '18602251819', '刘刚7621', 'https://example.com/avatar/452.png', 0, 55, '西安', 2, '2025-02-01 12:57:35', NULL, '127.177.116.159', 0, 30, 4972.21, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (453, '15287662921', '朱伟6234', 'https://example.com/avatar/453.png', 2, 46, '武汉', 3, '2025-05-18 01:02:40', NULL, '92.50.200.34', 0, 25, 1512.60, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (454, '15037351662', '朱伟7970', 'https://example.com/avatar/454.png', 1, 34, '杭州', 2, '2025-12-10 18:35:13', '2025-12-25 08:23:28', '64.61.156.24', 0, 42, 1373.33, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (455, '18208151322', '刘刚2126', 'https://example.com/avatar/455.png', 1, 40, '北京', 3, '2024-03-10 00:27:02', '2026-01-04 19:38:18', '50.235.63.169', 0, 47, 4696.44, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (456, '18634476637', '孙平5857', 'https://example.com/avatar/456.png', 1, 28, '西安', 2, '2024-10-23 16:33:33', '2025-10-24 16:10:33', '188.173.34.4', 1, 4, 4500.83, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (457, '15991474816', '杨强8506', 'https://example.com/avatar/457.png', 2, 27, '武汉', 1, '2024-05-12 18:05:52', '2025-01-27 23:02:19', '135.196.125.44', 1, 46, 3051.90, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (458, '18619921140', '王静2448', 'https://example.com/avatar/458.png', 2, 24, '上海', 1, '2026-02-06 09:35:27', '2026-02-15 03:46:14', '186.234.9.1', 1, 3, 3817.70, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (459, '15857181152', '刘军3061', 'https://example.com/avatar/459.png', 1, 60, '北京', 2, '2024-02-19 17:42:11', '2025-02-11 04:02:36', '178.4.253.46', 0, 29, 319.23, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (460, '13997113347', '李艳5606', 'https://example.com/avatar/460.png', 2, 24, '北京', 1, '2023-07-13 14:42:48', NULL, '29.177.114.43', 0, 36, 4550.05, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (461, '13736321129', '徐敏1609', 'https://example.com/avatar/461.png', 2, 26, '重庆', 1, '2024-11-21 21:59:37', '2025-04-03 17:04:54', '241.237.109.181', 1, 43, 1115.96, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (462, '13969403762', '王强2897', 'https://example.com/avatar/462.png', 0, 48, '西安', 2, '2023-10-30 22:19:13', '2024-03-29 12:42:01', '208.16.94.237', 0, 26, 2231.49, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (463, '18657314537', '徐平6657', 'https://example.com/avatar/463.png', 0, 21, '杭州', 3, '2025-10-21 00:53:15', '2025-11-16 13:13:21', '130.109.32.73', 1, 11, 1654.12, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (464, '13886923453', '黄平7981', 'https://example.com/avatar/464.png', 1, 42, '西安', 1, '2025-03-22 16:09:25', '2025-10-07 20:36:15', '65.41.181.154', 1, 48, 3777.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (465, '13873505386', '李强6864', 'https://example.com/avatar/465.png', 2, 32, '南京', 3, '2025-06-28 17:02:00', '2026-01-30 02:55:53', '18.211.45.24', 0, 38, 1987.72, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (466, '13849595497', '周杰3702', 'https://example.com/avatar/466.png', 2, 23, '北京', 1, '2023-06-06 00:45:18', '2026-04-13 23:41:26', '122.109.22.25', 0, 24, 259.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (467, '13968806159', '张杰6038', 'https://example.com/avatar/467.png', 0, 19, '武汉', 1, '2024-01-21 14:20:47', NULL, '251.210.157.73', 0, 10, 4567.56, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (468, '15894089379', '徐杰7573', 'https://example.com/avatar/468.png', 2, 29, '广州', 2, '2025-12-09 04:08:07', NULL, '205.172.11.194', 1, 20, 3182.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (469, '13951590958', '王伟5411', 'https://example.com/avatar/469.png', 2, 31, '西安', 2, '2026-02-08 08:36:42', '2026-03-23 10:38:23', '171.10.94.94', 0, 41, 252.24, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (470, '13788041505', '张敏4414', 'https://example.com/avatar/470.png', 2, 30, '成都', 2, '2025-04-11 05:07:24', '2025-08-29 22:25:34', '80.160.97.93', 1, 6, 4170.74, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (471, '13862079101', '徐军5815', 'https://example.com/avatar/471.png', 0, 29, '成都', 1, '2024-05-22 21:14:56', '2025-12-11 13:01:27', '99.202.199.186', 0, 32, 180.61, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (472, '13864291019', '马丽5322', 'https://example.com/avatar/472.png', 0, 50, '武汉', 2, '2025-01-02 02:09:16', '2025-07-23 02:05:09', '98.223.26.148', 0, 35, 740.91, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (473, '13737748259', '张强8096', 'https://example.com/avatar/473.png', 2, 26, '成都', 3, '2024-04-16 13:36:00', '2024-05-16 23:05:07', '7.35.90.188', 1, 46, 2643.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (474, '13828911610', '陈平3434', 'https://example.com/avatar/474.png', 0, 28, '杭州', 3, '2024-10-31 03:47:11', '2025-07-22 02:41:06', '208.198.205.61', 1, 42, 834.73, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (475, '13914991430', '黄丽5131', 'https://example.com/avatar/475.png', 1, 38, '广州', 1, '2024-08-20 20:30:08', '2025-07-24 07:25:33', '30.203.72.109', 0, 43, 1435.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (476, '13988709142', '赵强1849', 'https://example.com/avatar/476.png', 2, 33, '杭州', 2, '2024-07-09 13:02:32', '2026-01-10 03:22:05', '76.42.160.173', 1, 11, 446.80, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (477, '15981454206', '王军3483', 'https://example.com/avatar/477.png', 2, 43, '成都', 1, '2025-12-28 10:12:16', '2026-02-19 09:04:25', '134.200.173.47', 0, 42, 908.93, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (478, '15911822147', '刘艳2732', 'https://example.com/avatar/478.png', 1, 38, '北京', 3, '2025-05-27 06:40:21', '2025-07-05 20:43:52', '131.140.254.199', 0, 12, 1513.15, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (479, '18840214782', '吴芳1589', 'https://example.com/avatar/479.png', 1, 44, '重庆', 2, '2025-06-18 04:30:05', '2025-10-03 19:10:24', '171.112.97.46', 0, 33, 4831.20, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (480, '13723148996', '杨丽9885', 'https://example.com/avatar/480.png', 2, 36, '西安', 1, '2025-01-10 11:59:30', '2026-01-03 15:45:33', '179.59.251.149', 0, 34, 1125.45, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (481, '13984376205', '周静6917', 'https://example.com/avatar/481.png', 2, 59, '成都', 3, '2024-06-18 16:11:13', NULL, '49.159.67.149', 0, 33, 3488.95, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (482, '15884988830', '徐杰2688', 'https://example.com/avatar/482.png', 1, 59, '杭州', 3, '2025-12-01 09:15:33', '2026-02-17 08:27:56', '197.184.27.155', 1, 44, 1633.97, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (483, '18886312525', '黄丽9399', 'https://example.com/avatar/483.png', 2, 47, '广州', 2, '2023-07-08 07:55:55', '2024-11-16 14:32:12', '130.148.65.71', 1, 49, 4543.43, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (484, '18253846847', '杨丽9486', 'https://example.com/avatar/484.png', 1, 30, '广州', 1, '2024-01-30 01:43:17', '2024-05-25 04:28:02', '39.117.148.44', 0, 9, 4345.86, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (485, '15297341023', '李敏9481', 'https://example.com/avatar/485.png', 0, 52, '杭州', 2, '2023-07-28 11:14:43', '2024-09-30 21:56:05', '91.4.133.63', 0, 18, 3487.29, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (486, '18876464663', '胡平7466', 'https://example.com/avatar/486.png', 0, 20, '南京', 2, '2023-11-20 18:13:42', '2024-12-01 20:42:13', '59.146.79.225', 1, 1, 785.63, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (487, '13772846730', '陈刚7505', 'https://example.com/avatar/487.png', 0, 27, '重庆', 2, '2025-11-19 12:30:47', '2025-11-20 07:42:55', '255.82.110.255', 0, 22, 1207.95, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (488, '13744127631', '周平8755', 'https://example.com/avatar/488.png', 2, 20, '深圳', 3, '2023-10-12 19:01:52', NULL, '186.122.32.222', 1, 21, 11.14, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (489, '15256989208', '朱平2096', 'https://example.com/avatar/489.png', 1, 34, '北京', 2, '2023-01-03 06:10:28', '2023-10-03 13:21:25', '18.56.71.214', 0, 45, 2173.32, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (490, '13723680720', '陈艳1011', 'https://example.com/avatar/490.png', 1, 55, '杭州', 2, '2023-05-06 22:11:51', '2025-04-09 07:57:43', '195.249.123.234', 0, 15, 306.01, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (491, '18851420242', '周涛6220', 'https://example.com/avatar/491.png', 2, 38, '杭州', 1, '2024-11-09 21:16:54', '2025-10-29 02:47:02', '162.150.231.171', 0, 3, 208.30, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (492, '18245992376', '张娜9439', 'https://example.com/avatar/492.png', 0, 35, '北京', 3, '2026-05-05 09:42:46', '2026-05-07 07:02:22', '213.189.244.85', 1, 44, 3699.68, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (493, '18810956890', '吴杰4125', 'https://example.com/avatar/493.png', 1, 44, '广州', 2, '2026-01-26 18:27:06', '2026-05-08 12:44:22', '174.9.122.204', 1, 7, 2333.96, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (494, '18863085469', '王杰9524', 'https://example.com/avatar/494.png', 0, 46, '杭州', 2, '2024-06-05 10:25:59', '2025-03-01 04:21:08', '134.169.74.243', 1, 45, 4767.04, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (495, '13936509697', '刘刚8570', 'https://example.com/avatar/495.png', 2, 41, '成都', 1, '2023-10-10 23:28:42', '2024-11-07 05:33:50', '45.181.243.66', 0, 15, 1064.55, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (496, '13714499590', '杨杰8110', 'https://example.com/avatar/496.png', 1, 58, '武汉', 3, '2025-12-04 15:18:44', '2025-12-26 14:34:24', '57.196.120.96', 0, 21, 2472.58, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (497, '13808480848', '王军6134', 'https://example.com/avatar/497.png', 2, 50, '成都', 1, '2023-08-15 18:17:29', NULL, '67.184.159.31', 0, 29, 908.52, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (498, '18204923767', '孙静2434', 'https://example.com/avatar/498.png', 2, 52, '深圳', 2, '2024-01-18 02:31:04', NULL, '86.115.130.82', 0, 25, 2698.57, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (499, '18249881964', '孙强4629', 'https://example.com/avatar/499.png', 1, 58, '北京', 1, '2024-04-27 08:28:52', '2025-07-25 09:46:47', '54.66.119.213', 0, 11, 3194.54, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user` VALUES (500, '15025552331', '赵涛4464', 'https://example.com/avatar/500.png', 1, 57, '深圳', 2, '2025-02-15 22:19:36', '2025-10-15 00:56:23', '199.82.139.114', 1, 5, 3918.12, '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户行为' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_behavior
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 493 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户优惠券' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_coupon
-- ----------------------------
INSERT INTO `user_coupon` VALUES (1, 2, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (2, 2, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (3, 2, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 427, '2026-05-03 00:03:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (4, 2, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (5, 2, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (6, 4, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (7, 4, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 57, '2026-05-08 13:42:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (8, 4, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (9, 4, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (10, 4, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (11, 5, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (12, 6, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 1, 572, '2026-05-08 22:59:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (13, 6, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (14, 6, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (15, 6, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (16, 7, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (17, 7, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (18, 8, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (19, 8, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (20, 8, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (21, 8, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (22, 9, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (23, 9, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (24, 9, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (25, 9, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 724, '2026-05-04 02:31:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (26, 9, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (27, 11, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (28, 11, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (29, 11, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (30, 11, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (31, 13, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (32, 13, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (33, 13, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (34, 14, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (35, 15, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (36, 15, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (37, 15, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (38, 15, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (39, 15, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (40, 16, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (41, 16, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 1, 215, '2026-05-06 18:34:49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (42, 17, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (43, 17, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 1, 669, '2026-05-08 10:34:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (44, 18, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 160, '2026-05-01 18:17:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (45, 19, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (46, 19, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 405, '2026-05-03 15:45:54', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (47, 19, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 134, '2026-05-01 19:26:29', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (48, 21, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (49, 21, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (50, 22, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 336, '2026-05-03 07:05:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (51, 22, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 1, 38, '2026-05-09 06:02:28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (52, 22, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 1, 180, '2026-05-07 23:21:10', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (53, 22, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (54, 23, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (55, 23, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (56, 23, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (57, 23, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (58, 26, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 1, 79, '2026-05-02 20:35:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (59, 27, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 588, '2026-05-07 23:24:27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (60, 28, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 297, '2026-05-02 23:19:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (61, 28, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (62, 29, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 310, '2026-05-05 12:18:33', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (63, 29, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (64, 29, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 327, '2026-05-01 17:24:02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (65, 29, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 218, '2026-05-09 10:09:03', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (66, 29, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (67, 30, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (68, 30, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (69, 30, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 65, '2026-05-03 23:58:22', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (70, 31, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (71, 31, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (72, 31, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (73, 32, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (74, 32, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 327, '2026-05-02 17:14:21', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (75, 33, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (76, 34, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (77, 35, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (78, 35, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (79, 35, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (80, 35, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (81, 36, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (82, 37, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (83, 37, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (84, 38, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 1, 477, '2026-05-02 20:17:28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (85, 38, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 325, '2026-05-07 17:26:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (86, 38, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (87, 38, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (88, 39, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (89, 39, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (90, 39, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 33, '2026-05-06 04:15:45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (91, 40, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 134, '2026-05-05 05:46:02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (92, 41, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (93, 41, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (94, 43, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (95, 43, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (96, 43, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 1, 364, '2026-05-06 19:57:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (97, 43, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (98, 44, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (99, 44, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 691, '2026-05-04 06:49:36', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (100, 45, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 1, 753, '2026-05-03 09:06:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (101, 45, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 421, '2026-05-05 16:25:34', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (102, 45, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 47, '2026-05-03 07:34:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (103, 45, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 1, 450, '2026-05-04 13:28:40', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (104, 47, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (105, 47, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 247, '2026-05-04 08:07:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (106, 47, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (107, 49, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (108, 50, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (109, 50, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 96, '2026-05-04 05:31:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (110, 50, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (111, 50, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (112, 50, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (113, 51, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 178, '2026-05-04 11:23:31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (114, 51, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 384, '2026-05-01 22:35:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (115, 51, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (116, 51, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (117, 52, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 306, '2026-05-05 13:34:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (118, 53, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (119, 53, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (120, 53, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (121, 53, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 559, '2026-05-03 16:13:14', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (122, 55, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (123, 55, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 42, '2026-05-06 19:55:34', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (124, 56, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 1, 652, '2026-05-04 23:14:26', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (125, 58, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (126, 58, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (127, 58, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (128, 59, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 17, '2026-05-05 20:44:26', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (129, 59, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (130, 59, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (131, 59, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (132, 59, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (133, 60, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (134, 60, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 547, '2026-05-02 06:53:36', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (135, 60, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (136, 60, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (137, 60, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (138, 62, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (139, 62, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (140, 62, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (141, 62, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 1, '2026-05-02 10:00:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (142, 62, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 584, '2026-05-02 04:10:24', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (143, 63, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 566, '2026-05-02 14:37:51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (144, 63, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 537, '2026-05-06 11:17:19', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (145, 63, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (146, 63, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (147, 64, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (148, 65, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (149, 65, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (150, 65, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 117, '2026-05-03 01:31:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (151, 66, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 103, '2026-05-07 11:52:14', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (152, 66, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 1, 602, '2026-05-04 12:32:49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (153, 66, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (154, 66, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 796, '2026-05-06 09:43:31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (155, 67, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (156, 67, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (157, 67, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (158, 67, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (159, 68, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (160, 68, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (161, 68, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 685, '2026-05-06 21:13:51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (162, 68, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 608, '2026-05-02 23:07:46', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (163, 68, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (164, 69, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (165, 69, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (166, 69, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 78, '2026-05-02 02:39:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (167, 69, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (168, 71, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 750, '2026-05-08 12:51:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (169, 71, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (170, 71, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (171, 72, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (172, 72, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (173, 72, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (174, 74, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 555, '2026-05-09 03:41:50', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (175, 74, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 131, '2026-05-03 11:37:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (176, 74, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (177, 74, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 1, 415, '2026-05-08 08:33:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (178, 75, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (179, 75, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 454, '2026-05-04 15:53:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (180, 75, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (181, 78, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (182, 78, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (183, 78, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 276, '2026-05-01 14:38:15', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (184, 79, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 429, '2026-05-08 18:37:24', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (185, 80, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 575, '2026-05-03 05:44:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (186, 81, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (187, 81, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (188, 82, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 14, '2026-05-07 09:39:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (189, 82, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (190, 84, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (191, 84, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 308, '2026-05-04 16:02:21', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (192, 84, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (193, 85, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (194, 85, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (195, 85, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (196, 86, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 700, '2026-05-06 18:07:21', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (197, 86, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (198, 86, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 1, 730, '2026-05-08 06:51:48', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (199, 88, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (200, 88, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (201, 88, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (202, 88, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 403, '2026-05-05 00:25:53', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (203, 89, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (204, 90, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (205, 91, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (206, 91, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (207, 91, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 1, 283, '2026-05-09 08:38:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (208, 91, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 6, '2026-05-08 03:22:31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (209, 91, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 265, '2026-05-03 08:01:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (210, 92, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (211, 92, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (212, 93, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 531, '2026-05-05 09:46:21', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (213, 93, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (214, 93, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (215, 94, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (216, 94, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (217, 94, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 1, 736, '2026-05-04 11:16:06', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (218, 94, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 782, '2026-05-05 17:35:31', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (219, 95, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (220, 95, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (221, 95, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 442, '2026-05-04 03:52:32', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (222, 95, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (223, 96, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (224, 96, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (225, 96, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (226, 96, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (227, 97, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (228, 97, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 655, '2026-05-06 02:46:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (229, 97, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (230, 97, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (231, 97, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (232, 98, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (233, 98, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (234, 98, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 758, '2026-05-06 16:16:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (235, 98, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (236, 99, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (237, 100, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (238, 100, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (239, 101, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (240, 101, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (241, 102, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 1, 179, '2026-05-06 23:01:39', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (242, 102, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (243, 102, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 570, '2026-05-06 10:32:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (244, 102, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 631, '2026-05-06 19:35:14', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (245, 103, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (246, 103, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, 410, '2026-05-06 20:20:49', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (247, 103, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 567, '2026-05-03 03:00:28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (248, 103, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (249, 104, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (250, 104, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 528, '2026-05-02 08:15:11', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (251, 104, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (252, 104, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 142, '2026-05-05 19:16:28', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (253, 104, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (254, 105, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (255, 105, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 438, '2026-05-06 19:55:11', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (256, 105, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (257, 106, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (258, 107, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (259, 108, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 539, '2026-05-07 20:47:36', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (260, 108, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 349, '2026-05-03 14:40:53', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (261, 108, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 311, '2026-05-07 09:45:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (262, 108, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (263, 111, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (264, 112, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (265, 112, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (266, 113, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 250, '2026-05-07 04:45:02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (267, 113, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (268, 113, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 1, 493, '2026-05-03 08:12:51', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (269, 113, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (270, 114, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (271, 114, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (272, 115, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 398, '2026-05-07 04:27:41', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (273, 115, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 1, 177, '2026-05-03 17:16:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (274, 115, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (275, 116, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (276, 116, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (277, 117, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 309, '2026-05-07 00:33:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (278, 117, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 549, '2026-05-02 04:05:45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (279, 117, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (280, 117, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 674, '2026-05-04 12:21:04', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (281, 117, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 1, 464, '2026-05-09 08:56:15', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (282, 118, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 1, 363, '2026-05-08 16:30:18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (283, 118, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (284, 119, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (285, 119, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (286, 120, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 1, 95, '2026-05-05 16:19:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (287, 121, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 17, '2026-05-04 14:14:20', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (288, 121, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 267, '2026-05-09 05:36:20', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (289, 121, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (290, 122, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (291, 122, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 414, '2026-05-08 04:06:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (292, 122, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (293, 122, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (294, 123, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (295, 123, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (296, 124, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 158, '2026-05-01 19:17:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (297, 126, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (298, 126, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 617, '2026-05-02 05:10:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (299, 126, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 358, '2026-05-08 22:39:47', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (300, 127, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (301, 127, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (302, 127, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (303, 128, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (304, 129, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (305, 130, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (306, 130, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (307, 133, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (308, 133, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (309, 133, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (310, 133, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (311, 134, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (312, 134, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 240, '2026-05-04 01:47:45', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (313, 135, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (314, 135, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (315, 135, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (316, 136, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (317, 136, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (318, 136, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (319, 136, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 200, '2026-05-03 09:44:35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (320, 136, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (321, 138, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (322, 138, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (323, 138, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 537, '2026-05-07 15:48:54', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (324, 139, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (325, 142, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (326, 142, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (327, 142, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 739, '2026-05-08 08:25:02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (328, 144, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (329, 144, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (330, 144, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 204, '2026-05-09 04:30:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (331, 144, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (332, 145, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (333, 145, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 165, '2026-05-01 20:10:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (334, 145, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (335, 145, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 23, '2026-05-09 00:59:05', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (336, 146, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (337, 146, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (338, 146, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 699, '2026-05-02 15:57:13', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (339, 146, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (340, 147, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 515, '2026-05-08 15:58:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (341, 147, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (342, 147, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (343, 147, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (344, 148, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (345, 148, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (346, 148, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 60, '2026-05-06 11:58:59', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (347, 151, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (348, 151, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 439, '2026-05-09 01:21:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (349, 151, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (350, 152, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (351, 154, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (352, 154, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (353, 154, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 756, '2026-05-01 21:51:19', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (354, 154, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (355, 155, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (356, 155, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 624, '2026-05-05 07:17:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (357, 155, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (358, 155, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, 249, '2026-05-04 12:02:29', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (359, 155, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (360, 156, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (361, 156, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 1, 352, '2026-05-07 08:05:16', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (362, 157, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (363, 157, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 643, '2026-05-03 14:11:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (364, 157, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (365, 157, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 133, '2026-05-09 01:14:42', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (366, 157, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (367, 158, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (368, 158, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (369, 158, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (370, 158, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 122, '2026-05-01 13:47:29', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (371, 159, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (372, 159, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (373, 159, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 1, 38, '2026-05-01 12:30:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (374, 160, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 1, 101, '2026-05-01 19:59:27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (375, 160, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (376, 160, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (377, 161, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, 73, '2026-05-04 00:05:57', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (378, 161, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (379, 162, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (380, 162, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 375, '2026-05-07 18:12:54', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (381, 162, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 1, 772, '2026-05-09 02:22:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (382, 163, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (383, 164, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 295, '2026-05-05 23:11:12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (384, 164, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 1, 408, '2026-05-03 21:48:08', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (385, 165, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (386, 165, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (387, 165, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (388, 165, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 493, '2026-05-04 19:45:12', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (389, 166, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (390, 166, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (391, 166, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (392, 166, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 1, 347, '2026-05-02 23:32:25', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (393, 166, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (394, 167, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (395, 168, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (396, 168, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (397, 168, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 281, '2026-05-09 01:48:55', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (398, 169, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, 241, '2026-05-03 09:15:21', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (399, 169, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 1, 238, '2026-05-02 08:12:30', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (400, 169, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 321, '2026-05-01 21:51:02', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (401, 169, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (402, 169, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (403, 170, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (404, 173, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 698, '2026-05-09 01:15:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (405, 173, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (406, 173, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (407, 175, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 1, 538, '2026-05-05 08:40:23', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (408, 175, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (409, 175, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (410, 175, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (411, 175, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (412, 176, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (413, 176, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (414, 176, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 322, '2026-05-09 08:11:06', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (415, 176, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 1, 731, '2026-05-06 22:22:15', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (416, 177, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (417, 177, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (418, 177, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (419, 177, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 20, '2026-05-05 14:14:22', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (420, 177, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 414, '2026-05-05 02:37:37', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (421, 178, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 1, 213, '2026-05-05 09:01:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (422, 178, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (423, 178, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (424, 178, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (425, 178, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (426, 180, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (427, 180, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (428, 181, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (429, 181, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 260, '2026-05-02 10:54:27', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (430, 181, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 1, 285, '2026-05-05 05:20:15', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (431, 181, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (432, 181, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (433, 182, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (434, 184, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (435, 184, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 1, 334, '2026-05-08 19:33:18', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (436, 184, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 1, 323, '2026-05-04 18:46:34', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (437, 184, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 1, 252, '2026-05-06 18:05:17', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (438, 184, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 729, '2026-05-02 13:06:43', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (439, 185, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 1, 769, '2026-05-03 00:21:36', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (440, 185, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (441, 185, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (442, 185, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 702, '2026-05-05 20:11:19', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (443, 185, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (444, 186, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (445, 186, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (446, 186, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (447, 187, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (448, 187, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 689, '2026-05-01 18:05:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (449, 188, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (450, 188, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (451, 188, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (452, 188, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (453, 188, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (454, 189, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (455, 189, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 1, 338, '2026-05-04 18:32:00', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (456, 189, 13, '折扣优惠券', 3, 32.40, 87.03, '2026-05-08 10:28:59', '2026-06-08 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (457, 189, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (458, 190, 11, '满减优惠券', 3, 86.67, 193.32, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (459, 190, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (460, 190, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 245, '2026-05-05 16:46:34', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (461, 190, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (462, 191, 9, '专属优惠券', 3, 58.21, 129.05, '2026-05-08 10:28:59', '2026-06-28 10:28:59', 1, 53, '2026-05-05 07:55:01', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (463, 191, 3, '满减优惠券', 2, 13.15, 48.81, '2026-05-08 10:28:59', '2026-07-01 10:28:59', 1, 286, '2026-05-08 19:13:38', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (464, 191, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (465, 191, 14, '专属优惠券', 2, 42.97, 76.80, '2026-05-08 10:28:59', '2026-06-06 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (466, 191, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (467, 192, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (468, 192, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (469, 192, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (470, 192, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (471, 192, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 1, 513, '2026-05-05 06:58:20', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (472, 193, 1, '限时优惠券', 2, 38.44, 157.66, '2026-05-08 10:28:59', '2026-06-05 10:28:59', 1, 141, '2026-05-04 02:04:35', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (473, 193, 8, '专属优惠券', 2, 35.35, 189.99, '2026-05-08 10:28:59', '2026-06-26 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (474, 193, 2, '限时优惠券', 2, 77.47, 179.87, '2026-05-08 10:28:59', '2026-07-14 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (475, 195, 4, '专属优惠券', 2, 12.61, 27.18, '2026-05-08 10:28:59', '2026-06-21 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (476, 196, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (477, 196, 18, '专属优惠券', 2, 20.34, 172.52, '2026-05-08 10:28:59', '2026-06-16 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (478, 196, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (479, 196, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (480, 196, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (481, 197, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 1, 624, '2026-05-01 14:52:44', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (482, 197, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (483, 198, 5, '限时优惠券', 3, 52.12, 125.14, '2026-05-08 10:28:59', '2026-06-13 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (484, 198, 15, '新人优惠券', 2, 74.34, 191.83, '2026-05-08 10:28:59', '2026-07-19 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (485, 199, 20, '限时优惠券', 2, 15.47, 142.22, '2026-05-08 10:28:59', '2026-07-24 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (486, 199, 6, '折扣优惠券', 3, 66.59, 110.53, '2026-05-08 10:28:59', '2026-07-09 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (487, 199, 12, '限时优惠券', 1, 46.10, 167.56, '2026-05-08 10:28:59', '2026-05-25 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (488, 200, 16, '限时优惠券', 3, 22.28, 191.25, '2026-05-08 10:28:59', '2026-08-01 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (489, 200, 19, '专属优惠券', 3, 29.72, 124.02, '2026-05-08 10:28:59', '2026-05-17 10:28:59', 1, 336, '2026-05-03 03:54:58', '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (490, 200, 10, '折扣优惠券', 1, 16.63, 69.41, '2026-05-08 10:28:59', '2026-06-17 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (491, 200, 17, '折扣优惠券', 2, 75.84, 123.10, '2026-05-08 10:28:59', '2026-07-04 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');
INSERT INTO `user_coupon` VALUES (492, 200, 7, '折扣优惠券', 2, 11.90, 32.93, '2026-05-08 10:28:59', '2026-05-20 10:28:59', 0, NULL, NULL, '2026-05-08 10:29:46', '2026-05-08 10:29:46');

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

SET FOREIGN_KEY_CHECKS = 1;
