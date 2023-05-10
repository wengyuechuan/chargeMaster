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

 Date: 10/05/2023 15:53:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES (6, 'admin', 'c7e0855007d9d1fcd80c1fbcb3d485b9');

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
-- Records of charging_detail
-- ----------------------------

-- ----------------------------
-- Table structure for charging_record
-- ----------------------------
DROP TABLE IF EXISTS `charging_record`;
CREATE TABLE `charging_record`  (
  `record_id` int(11) NOT NULL,
  `request_id` int(11) NULL DEFAULT NULL,
  `charging_station_id` int(11) NULL DEFAULT NULL,
  `start_time` datetime NULL DEFAULT NULL,
  `end_time` datetime NULL DEFAULT NULL,
  `actual_power` int(11) NULL DEFAULT NULL,
  `service_fee` decimal(5, 2) NULL DEFAULT NULL,
  `charging_fee` decimal(5, 2) NULL DEFAULT NULL,
  `total_fee` decimal(5, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charging_record
-- ----------------------------

-- ----------------------------
-- Table structure for charging_request
-- ----------------------------
DROP TABLE IF EXISTS `charging_request`;
CREATE TABLE `charging_request`  (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `charging_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_power` decimal(10, 5) NULL DEFAULT NULL,
  `valid` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`request_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charging_request
-- ----------------------------

-- ----------------------------
-- Table structure for charging_station_info
-- ----------------------------
DROP TABLE IF EXISTS `charging_station_info`;
CREATE TABLE `charging_station_info`  (
  `charging_station_id` int(11) NOT NULL,
  `charging_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`charging_station_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charging_station_info
-- ----------------------------

-- ----------------------------
-- Table structure for charging_station_status
-- ----------------------------
DROP TABLE IF EXISTS `charging_station_status`;
CREATE TABLE `charging_station_status`  (
  `charging_station_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_charging_times` int(11) NULL DEFAULT NULL,
  `total_charging_duration` decimal(5, 2) NULL DEFAULT NULL,
  `total_charging_power` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`charging_station_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charging_station_status
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `license_plate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `battery_capacity` int(11) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('a2528e34bd0448a39faa3df7e4d3daf5', 'wyc2002', 'd730b6c01ffde701f4315bea2a9ae3c0', 'wengyuechuan@163.com', '京HGP888', 0, '2023-05-10 06:58:18', '2023-05-10 06:58:18');

SET FOREIGN_KEY_CHECKS = 1;
