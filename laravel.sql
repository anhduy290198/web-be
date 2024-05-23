/*
 Navicat Premium Data Transfer

 Source Server         : web
 Source Server Type    : MySQL
 Source Server Version : 50733 (5.7.33-log)
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50733 (5.7.33-log)
 File Encoding         : 65001

 Date: 23/05/2024 08:00:35
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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

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
  `quantity` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 1, 'Iphone 15 Promax 256 GB', 'Hàng chính hãng 100% new', 32000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:03:44', '2024-05-22 19:03:44');
INSERT INTO `product` VALUES (2, 1, 'Iphone 14 Promax 256 GB', 'Hàng chính hãng 100% new', 24000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:04:29', '2024-05-22 19:04:29');
INSERT INTO `product` VALUES (3, 1, 'Iphone 13 Promax 256 GB', 'Hàng chính hãng 100% new', 24000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:04:36', '2024-05-22 19:04:36');
INSERT INTO `product` VALUES (4, 1, 'Iphone 12 Promax 256 GB', 'Hàng chính hãng 100% new', 14000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:04:43', '2024-05-22 19:04:43');
INSERT INTO `product` VALUES (5, 1, 'Iphone 12 Pro 256 GB', 'Hàng chính hãng 100% new', 14000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:04:53', '2024-05-22 19:04:53');
INSERT INTO `product` VALUES (6, 1, 'Iphone 13 Pro 256 GB', 'Hàng chính hãng 100% new', 19000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:04:58', '2024-05-22 19:04:58');
INSERT INTO `product` VALUES (7, 1, 'Iphone 14 Pro 256 GB', 'Hàng chính hãng 100% new', 23000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:05:05', '2024-05-22 19:05:05');
INSERT INTO `product` VALUES (8, 1, 'Iphone 15 Pro 256 GB', 'Hàng chính hãng 100% new', 25000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:05:11', '2024-05-22 19:05:11');
INSERT INTO `product` VALUES (9, 1, 'Iphone 15 256 GB', 'Hàng chính hãng 100% new', 19000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:05:18', '2024-05-22 19:05:18');
INSERT INTO `product` VALUES (10, 1, 'Iphone 14 256 GB', 'Hàng chính hãng 100% new', 14000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:05:24', '2024-05-22 19:05:24');
INSERT INTO `product` VALUES (11, 1, 'Iphone 13 256 GB', 'Hàng chính hãng 100% new', 10000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:05:29', '2024-05-22 19:05:29');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `permission` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'duy', '123', 'Vũ Anh Duy', 1);

SET FOREIGN_KEY_CHECKS = 1;
