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

 Date: 24/05/2024 01:43:48
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
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (2, 1, 'Iphone 14 Promax 256 GB', 'Hàng chính hãng 100% new', 24000000, '[\"https:\\/\\/hoanghamobile.com\\/Uploads\\/2023\\/09\\/13\\/iphone-15-pro-finish-select-202309-6-7inch-naturaltitanium-removebg-preview-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/09\\/13\\/iphone-15-blue-pure-back-iphone-15-blue-pure-front-2up-screen-usen.png\"]', 1, '2024-05-22 19:04:29', '2024-05-23 15:41:34');
INSERT INTO `product` VALUES (12, 2, 'MacBook Air M2 15\" (8GB/256GB)', 'Chính hãng Apple Việt Nam', 26990000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/06\\/06\\/mba15-grey-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/06\\/06\\/mba15-midnight-6.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2023\\/06\\/06\\/mba15-grey-2.png\"]', 1, '2024-05-23 16:45:22', '2024-05-23 16:45:22');
INSERT INTO `product` VALUES (13, 4, 'Camera IP Wi-Fi TP-Link Tapo C212 3M', 'Chính hãng', 490000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/12\\/14\\/c212-2.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/12\\/14\\/c212-2.png\"]', 1, '2024-05-23 16:47:28', '2024-05-23 16:47:28');
INSERT INTO `product` VALUES (14, 3, 'Google Tivi TCL 4K 65 inch 65P635', NULL, 9999000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/1942\\/281937\\/google-tcl-4k-65-inch-65p635-1-1.jpg\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/1942\\/281937\\/google-tcl-4k-65-inch-65p635-2-1.jpg\"]', 1, '2024-05-23 16:49:00', '2024-05-23 16:49:00');
INSERT INTO `product` VALUES (15, 2, 'Laptop Lenovo Ideapad 3 15IAU7 i3 1215U/8GB/256GB/Win11 (82RK00RWVN)', 'Chính hãng', 8999000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/313615\\/Slider\\/lenovo-ideapad-3-15iau7-i3-82rk00rwvn-slider-new-1-1020x570.jpg\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/44\\/313615\\/Slider\\/lenovo-ideapad-3-15iau7-i3-82rk00rwvn-slider-fix-6-1020x570.jpg\"]', 1, '2024-05-23 17:06:58', '2024-05-23 17:06:58');
INSERT INTO `product` VALUES (16, 3, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q65D', 'Mới 2024', 21000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/1942\\/322673\\/qaq65d.jpg\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/1942\\/322673\\/qaq65d-1.jpg\"]', 1, '2024-05-23 17:07:55', '2024-05-23 17:07:55');
INSERT INTO `product` VALUES (17, 3, 'Smart Tivi Samsung 4K Crystal UHD 55 inch UA55BU8000', 'Mới 2024', 15000000, '[\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/1942\\/273391\\/Slider\\/smart-samsung-4k-55-inch-ua55bu8000637890761530420342.jpg\",\"https:\\/\\/cdn.tgdd.vn\\/Products\\/Images\\/1942\\/273391\\/Slider\\/2-1020x570.jpg\"]', 1, '2024-05-23 17:09:06', '2024-05-23 17:09:06');
INSERT INTO `product` VALUES (18, 2, 'Laptop Lenovo LOQ 15IRH8 (82XV00QXVN)', '(i7-13620H/16GB/512GB/RTX 4050/15.6\" FHD144Hz/Windows 11) - Chính hãng', 32000000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/04\\/05\\/loq-15irh8-ct1-02.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/04\\/05\\/loq-15irh8-ct1-01.png\"]', 1, '2024-05-23 17:10:16', '2024-05-23 17:10:16');
INSERT INTO `product` VALUES (19, 2, 'Laptop Lenovo IdeaPad Slim 5 16IMH9 83DC001RVN', 'Ultra 5 125H/16GB/512GB/Intel Arc/16 inch 2K OLED/Win 11/Xám', 23000000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/04\\/22\\/83dc001rvn-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/04\\/22\\/83dc001rvn-5.png\"]', 1, '2024-05-23 17:11:09', '2024-05-23 17:11:09');
INSERT INTO `product` VALUES (20, 4, 'Củ sạc Baseus Compact Charger 2U 10.5W EU', NULL, 160000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/02\\/21\\/charger-2u-10-5w-eu-1.png\"]', 1, '2024-05-23 17:11:50', '2024-05-23 17:11:50');
INSERT INTO `product` VALUES (21, 4, 'Bộ chuyển đổi USB-C sang HDMI (4K30Hz) Lention CU207A', 'Chính hãng', 230000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/02\\/21\\/bo-chuyen-doi-usb-c-sang-hdmi-4k30hz-lention-cu207a-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/02\\/21\\/bo-chuyen-doi-usb-c-sang-hdmi-4k30hz-lention-cu207a-4.png\"]', 1, '2024-05-23 17:12:37', '2024-05-23 17:12:37');
INSERT INTO `product` VALUES (22, 4, 'Tay cầm Backbone One Lightning - PlayStation Edition', 'Chính hãng', 2450000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/12\\/22\\/backbone-one-lightning-playstation-edition-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/12\\/22\\/backbone-one-lightning-playstation-edition-2.png\"]', 1, '2024-05-23 17:13:22', '2024-05-23 17:13:22');
INSERT INTO `product` VALUES (23, 1, 'Điện Thoại AI - Samsung Galaxy S24 - 8GB/512GB', 'Chính hãng', 25490000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/01\\/30\\/samsung-galaxy-s24-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/01\\/30\\/samsung-galaxy-s24-4.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/01\\/30\\/samsung-galaxy-s24-3.png\"]', 1, '2024-05-23 18:38:22', '2024-05-23 18:38:22');
INSERT INTO `product` VALUES (24, 1, 'Điện thoại HONOR X7b - 8GB/256GB', 'Chính hãng', 4950000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/03\\/01\\/x7b.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/03\\/07\\/x7b.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/preview\\/Uploads\\/2024\\/02\\/29\\/honor-x7b-6.jpg\"]', 1, '2024-05-23 18:39:19', '2024-05-23 18:39:19');
INSERT INTO `product` VALUES (25, 1, 'Điện Thoại Di Động Mobell F309 4G', 'Chính hãng', 650000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/04\\/26\\/f309-2.jpg\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/04\\/26\\/f309-3.jpg\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2024\\/04\\/26\\/f309.png\"]', 1, '2024-05-23 18:40:01', '2024-05-23 18:40:01');
INSERT INTO `product` VALUES (26, 1, 'Điện thoại OPPO Find N3 Flip (12GB/256GB)', 'Chính hãng', 1999000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/10\\/27\\/oppo-find.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/10\\/12\\/oppo-find-n3-flip-black-1.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/10\\/12\\/oppo-find-n3-flip-black-6.png\"]', 1, '2024-05-23 18:40:59', '2024-05-23 18:40:59');
INSERT INTO `product` VALUES (27, 1, 'Điện thoại Xiaomi 13T (12GB/256GB)', 'Chính hãng', 10500000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/09\\/20\\/m12-m12a-blue-back.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/09\\/20\\/m12-m12a-blue-back.png\"]', 1, '2024-05-23 18:42:02', '2024-05-23 18:42:02');
INSERT INTO `product` VALUES (28, 1, 'Điện thoại Samsung Galaxy S23 Ultra 8GB/256GB', 'Chính hãng', 22490000, '[\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/02\\/02\\/image-removebg-preview_638109032737367137.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/02\\/02\\/image-removebg-preview-3_638109032737347141.png\",\"https:\\/\\/cdn.hoanghamobile.com\\/i\\/productlist\\/dsp\\/Uploads\\/2023\\/02\\/02\\/image-removebg-preview-4.png\"]', 1, '2024-05-23 18:42:51', '2024-05-23 18:42:51');

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
