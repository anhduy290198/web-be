/*
 Navicat Premium Data Transfer

 Source Server         : web-be
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 18/05/2024 10:15:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Điện thoại');
INSERT INTO `category` VALUES (2, 'Laptop');
INSERT INTO `category` VALUES (3, 'Tivi');
INSERT INTO `category` VALUES (4, 'Phụ kiện');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 1, 'Iphone 14 ProMax', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (2, 1, 'Iphone 14 Pro', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (3, 1, 'Iphone 14', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (4, 1, 'Iphone 13 ProMax', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (5, 1, 'Iphone 13 Pro', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (6, 1, 'Iphone 13', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (7, 1, 'Iphone 12ProMax', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (8, 1, 'Iphone 12Pro', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (9, 1, 'Iphone 12', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (10, 1, 'Iphone 11 ProMax', NULL, 30000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', 10, '2024-05-18 09:48:51', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES (11, 1, 'Iphone 10', NULL, 10000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', NULL, '2024-05-18 03:11:18', '2024-05-18 03:11:18');
INSERT INTO `product` VALUES (12, 1, 'Iphone 10', NULL, 10000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', NULL, '2024-05-18 03:12:19', '2024-05-18 03:12:19');
INSERT INTO `product` VALUES (13, 1, 'Iphone 10', NULL, 10000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/42\\/114115\\/iphone-x-64gb-bac-org.png\"]', NULL, '2024-05-18 03:12:48', '2024-05-18 03:12:48');

SET FOREIGN_KEY_CHECKS = 1;
