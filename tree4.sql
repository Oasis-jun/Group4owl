/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : tree4

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 24/05/2024 15:40:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for energy
-- ----------------------------
DROP TABLE IF EXISTS `energy`;
CREATE TABLE `energy`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `energy` int NULL DEFAULT 10,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id` ASC) USING BTREE,
  INDEX `usr_name_idx`(`user_name` ASC) USING BTREE,
  CONSTRAINT `usr_name` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of energy
-- ----------------------------
INSERT INTO `energy` VALUES (10, 'Tom', 10, '2024-05-20');
INSERT INTO `energy` VALUES (11, 'Tom', 10, '2024-05-20');
INSERT INTO `energy` VALUES (12, 'Jack', 10, '2024-05-20');
INSERT INTO `energy` VALUES (13, 'Jack', 10, '2024-05-20');
INSERT INTO `energy` VALUES (14, 'Jack', 10, '2024-05-20');
INSERT INTO `energy` VALUES (15, 'Lily', 10, '2024-05-20');
INSERT INTO `energy` VALUES (16, 'Lily', 10, '2024-05-20');
INSERT INTO `energy` VALUES (17, 'Lily', 10, '2024-05-20');
INSERT INTO `energy` VALUES (18, 'Lily', 10, '2024-05-20');
INSERT INTO `energy` VALUES (19, 'Lily', 10, '2024-05-20');
INSERT INTO `energy` VALUES (20, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (21, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (22, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (23, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (24, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (25, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (26, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (27, 'w1', 10, '2024-05-20');
INSERT INTO `energy` VALUES (28, 'w2', 10, '2024-05-20');
INSERT INTO `energy` VALUES (29, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (30, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (31, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (32, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (33, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (34, 'w1', 10, '2024-05-19');
INSERT INTO `energy` VALUES (35, 'w1', 10, '2024-05-18');
INSERT INTO `energy` VALUES (36, 'w1', 10, '2024-05-18');
INSERT INTO `energy` VALUES (37, 'w1', 10, '2024-05-17');
INSERT INTO `energy` VALUES (38, 'Tom', 10, '2024-05-19');
INSERT INTO `energy` VALUES (39, 'Tom', 10, '2024-05-18');
INSERT INTO `energy` VALUES (40, 'Tom', 10, '2024-05-18');
INSERT INTO `energy` VALUES (41, 'Tom', 10, '2024-05-17');
INSERT INTO `energy` VALUES (42, 'Jack', 10, '2024-05-18');
INSERT INTO `energy` VALUES (43, 'Jack', 10, '2024-05-17');
INSERT INTO `energy` VALUES (44, 'Jack', 10, '2024-05-17');
INSERT INTO `energy` VALUES (45, 'Jack', 10, '2024-05-19');
INSERT INTO `energy` VALUES (46, 'Lily', 10, '2024-05-19');
INSERT INTO `energy` VALUES (47, 'Lily', 10, '2024-05-19');
INSERT INTO `energy` VALUES (48, 'Lily', 10, '2024-05-17');
INSERT INTO `energy` VALUES (49, 'Lily', 10, '2024-05-17');
INSERT INTO `energy` VALUES (50, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (52, '222', 10, '2024-05-20');
INSERT INTO `energy` VALUES (53, 'Tom', 10, '2024-05-20');
INSERT INTO `energy` VALUES (55, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (56, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (57, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (58, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (59, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (60, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (61, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (62, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (63, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (64, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (65, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (66, 'zwl11', 10, '2024-05-23');
INSERT INTO `energy` VALUES (67, 'Tom', 10, '2024-05-23');
INSERT INTO `energy` VALUES (68, 'Tom', 10, '2024-05-23');
INSERT INTO `energy` VALUES (69, 'Tom', 10, '2024-05-23');

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` date NULL DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `topic` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `speaker` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id_UNIQUE`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meeting
-- ----------------------------
INSERT INTO `meeting` VALUES ('1', '2024-05-21', '18:16', 'sustainable', 'David');
INSERT INTO `meeting` VALUES ('2', '2024-05-18', '23:19', 'xiaohongshu', 'ljj');
INSERT INTO `meeting` VALUES ('3', '2024-05-31', '22:27', 'assignment', 'lxj');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `receiver_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `send_time` datetime NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 6, '5', '', '2024-04-18 01:07:59', 't1', 'c1');
INSERT INTO `message` VALUES (2, 6, '5', '', '2024-04-18 01:01:55', 't0', 'c0');
INSERT INTO `message` VALUES (3, 5, '4', '', '2024-04-18 02:28:22', '1', '111');
INSERT INTO `message` VALUES (4, 5, '6', '', '2024-04-18 02:31:53', '111', '11111');
INSERT INTO `message` VALUES (5, 5, '6', '', '2024-04-18 02:36:12', '111', '11111322332');
INSERT INTO `message` VALUES (6, 6, '5', '', '2024-04-18 12:18:58', '阿斯顿发山东', '阿斯顿发山东阿斯顿发山东');
INSERT INTO `message` VALUES (7, 5, '6', '', '2024-04-18 12:19:49', '收到了你的消息', '阿斯顿发山东阿斯顿发山东按说阿斯顿发山东阿斯顿发山东\n阿斯顿发山东asdasdf\n阿斯顿发的');
INSERT INTO `message` VALUES (8, 8, '7', '', '2024-04-18 13:57:17', 'ahafbfaj', 'fafabkjafkb');
INSERT INTO `message` VALUES (9, 7, '8', '', '2024-04-18 14:31:39', '1e', '132131');
INSERT INTO `message` VALUES (10, 7, '8', '', '2024-04-18 14:31:41', '1e', '132131');
INSERT INTO `message` VALUES (11, 7, '8', '', '2024-04-18 14:31:43', '1e', '132131');
INSERT INTO `message` VALUES (12, 1, '2', '', '2024-04-18 19:35:41', 'nihao', 'great');
INSERT INTO `message` VALUES (13, 1, '3', '', '2024-04-18 19:41:54', '11', '1111');
INSERT INTO `message` VALUES (14, 1, '7', '', '2024-04-18 19:54:40', '123', '321');
INSERT INTO `message` VALUES (15, 1, '7', '', '2024-04-18 19:57:42', '111', 'sss');
INSERT INTO `message` VALUES (16, 1, '4', '', '2024-04-18 20:23:28', '222', '2222');
INSERT INTO `message` VALUES (17, 1, '2,3', '李四,王五', '2024-05-16 16:11:51', 'hello', '你好');
INSERT INTO `message` VALUES (18, 7, '3', NULL, '2024-05-17 13:22:28', '123', '123');
INSERT INTO `message` VALUES (19, 7, '3', NULL, '2024-05-17 13:23:18', '3233', '3231213');
INSERT INTO `message` VALUES (20, 7, '3', NULL, '2024-05-17 13:25:53', '111', '111111');
INSERT INTO `message` VALUES (21, 7, '9,8', '1111,222', '2024-05-19 18:16:12', '11', '11');
INSERT INTO `message` VALUES (22, 7, '4,9,2', '1111,1111,Jack', '2024-05-19 18:16:23', '11e1e', '11e1e');
INSERT INTO `message` VALUES (23, 1, '9,8', '1111,222', '2024-05-19 18:16:51', 'dqd', 'dqdq');
INSERT INTO `message` VALUES (24, 1, '', '', '2024-05-19 21:48:55', '', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user_number` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `passwords` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `energy` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `user_name`) USING BTREE,
  INDEX `user_name`(`user_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Tom', 'admin', 'admin123', 'Administer', 110);
INSERT INTO `user` VALUES (2, 'Jack', '002', '111111', 'Leader', 70);
INSERT INTO `user` VALUES (3, 'Lily', '003', '111111', 'Employee', 90);
INSERT INTO `user` VALUES (5, 'w1', '1111111', '1111111', 'Employee', 120);
INSERT INTO `user` VALUES (6, 'w2', '2222222', '2222222', 'Employee', 10);
INSERT INTO `user` VALUES (8, '222', '222', '222', 'Employee', 70);
INSERT INTO `user` VALUES (10, 'zwl11', '123456', '123456', 'Employee', 120);

SET FOREIGN_KEY_CHECKS = 1;
