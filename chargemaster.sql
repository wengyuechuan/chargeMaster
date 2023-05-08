/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50736 (5.7.36-log)
 Source Host           : localhost:3306
 Source Schema         : chargemaster

 Target Server Type    : MySQL
 Target Server Version : 50736 (5.7.36-log)
 File Encoding         : 65001

 Date: 08/05/2023 19:38:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for charging_detail
-- ----------------------------
DROP TABLE IF EXISTS `charging_detail`;
CREATE TABLE `charging_detail`  (
  `detail_id` int(11) NOT NULL,
  `generate_time` datetime NULL DEFAULT NULL,
  `charging_pile_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `charging_power` int(11) NULL DEFAULT NULL,
  `charging_duration` decimal(5, 2) NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `charging_fee` decimal(5, 2) NULL DEFAULT NULL,
  `service_fee` decimal(5, 2) NULL DEFAULT NULL,
  `total_fee` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charging_pile_info
-- ----------------------------
DROP TABLE IF EXISTS `charging_pile_info`;
CREATE TABLE `charging_pile_info`  (
  `charging_pile_id` int(11) NOT NULL,
  `charging_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`charging_pile_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charging_pile_status
-- ----------------------------
DROP TABLE IF EXISTS `charging_pile_status`;
CREATE TABLE `charging_pile_status`  (
  `charging_pile_id` int(11) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_charging_times` int(11) NULL DEFAULT NULL,
  `total_charging_duration` decimal(5, 2) NULL DEFAULT NULL,
  `total_charging_power` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`charging_pile_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charging_record
-- ----------------------------
DROP TABLE IF EXISTS `charging_record`;
CREATE TABLE `charging_record`  (
  `record_id` int(11) NOT NULL,
  `request_id` int(11) NULL DEFAULT NULL,
  `charging_pile_id` int(11) NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `actual_power` int(11) NULL DEFAULT NULL,
  `service_fee` decimal(5, 2) NULL DEFAULT NULL,
  `total_fee` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charging_request
-- ----------------------------
DROP TABLE IF EXISTS `charging_request`;
CREATE TABLE `charging_request`  (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `charging_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_power` int(11) NULL DEFAULT NULL,
  `queue_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`request_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `license_plate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `battery_capacity` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
