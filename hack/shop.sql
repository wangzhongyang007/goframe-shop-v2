/*
 Navicat MySQL Data Transfer

 Source Server         : Mac本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 25/11/2022 18:01:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_info
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pid` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='全国城市信息表';

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `role_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色ids',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_salt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加密盐',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否超级管理员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name_unique` (`name`) USING BTREE COMMENT '名字唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of admin_info
-- ----------------------------
BEGIN;
INSERT INTO `admin_info` VALUES (1, 'zhangsan', 'e91474a50e96e9e3b0c7df489b1c0a21', '2', '2022-09-25 16:40:43', '2022-11-20 11:06:01', '2022-11-20 11:06:29', 'e3oHjweGEc', 0);
INSERT INTO `admin_info` VALUES (3, 'wangzhongyang', '7382e435a4eb141adeabc3792d383e1c', '2', '2022-07-19 10:50:20', '2022-11-23 14:25:10', NULL, '4f8WG1bjne', 0);
INSERT INTO `admin_info` VALUES (13, '李四', '9076805c0efa82a164f0c4f2a2818851', '1', '2022-11-20 11:03:35', '2022-11-20 11:03:35', NULL, 'Io45dMSb4e', 1);
INSERT INTO `admin_info` VALUES (15, 'zhaoliu', 'd82abc6395e1c89e7837f96407cf6d5d', '2', '2022-11-20 13:45:09', '2022-11-20 13:45:49', '2022-11-20 13:46:10', 'aHzOD3zI7L', 0);
COMMIT;

-- ----------------------------
-- Table structure for article_info
-- ----------------------------
DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0' COMMENT '作者id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '摘要',
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '封面图',
  `is_admin` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1后台管理员发布 2前台用户发布',
  `praise` int NOT NULL DEFAULT '0' COMMENT '点赞数',
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文章详情',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章（种草）表';

-- ----------------------------
-- Records of article_info
-- ----------------------------
BEGIN;
INSERT INTO `article_info` VALUES (1, 0, '华凌空调真不错!', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-19 11:47:59', '2022-07-19 11:48:52', '2022-07-19 11:49:13');
INSERT INTO `article_info` VALUES (2, 2, '华凌空调真不错!', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 0, 0, '这里是文章正文', '2022-07-19 11:49:36', '2022-07-31 15:51:06', '2022-07-31 16:08:59');
INSERT INTO `article_info` VALUES (3, 2, '华凌空调真不错a', '京东买的，真的种草了a', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 0, 0, '这里是文章正文a', '2022-07-31 15:42:45', '2022-07-31 15:42:45', NULL);
INSERT INTO `article_info` VALUES (4, 1, '华凌空调真不错a', '京东买的，真的种草了a', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 0, 0, '这里是文章正文a', '2022-07-31 15:44:25', '2022-07-31 15:44:25', NULL);
INSERT INTO `article_info` VALUES (5, 1, '华凌空调真不错', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-31 19:06:59', '2022-07-31 19:06:59', NULL);
INSERT INTO `article_info` VALUES (6, 2, '华凌空调真不错', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-31 19:07:08', '2022-07-31 19:07:08', NULL);
INSERT INTO `article_info` VALUES (7, 1, '华凌空调真不错', '京东买的，真的种草了', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT108VWB4W_1RCvBVdK_800.jpg%3Fv%3D1&refer=http%3A%2F%2Fgfs17.gomein.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1660794257&t=795ee536d5af33788a249b08d0b28b6f', 1, 0, '这里是文章正文', '2022-07-31 19:08:03', '2022-07-31 19:08:03', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `user_id` int NOT NULL DEFAULT '0',
  `goods_id` int NOT NULL DEFAULT '0',
  `count` int NOT NULL COMMENT '商品数量',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of cart_info
-- ----------------------------
BEGIN;
INSERT INTO `cart_info` VALUES (1, 1, 1, 1, '2022-07-29 13:59:10', NULL, NULL);
INSERT INTO `cart_info` VALUES (2, 1, 2, 3, '2022-07-29 14:23:31', '2022-07-29 14:32:10', '2022-08-27 19:08:41');
INSERT INTO `cart_info` VALUES (3, 1, 2, 3, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for category_info
-- ----------------------------
DROP TABLE IF EXISTS `category_info`;
CREATE TABLE `category_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'icon',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '等级 默认1级分类',
  `sort` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图表\n';

-- ----------------------------
-- Records of category_info
-- ----------------------------
BEGIN;
INSERT INTO `category_info` VALUES (1, 0, '家用电器', '', NULL, NULL, NULL, 1, 1);
INSERT INTO `category_info` VALUES (2, 1, '电视', '', NULL, NULL, NULL, 2, 1);
INSERT INTO `category_info` VALUES (3, 2, '全面屏电视', '', NULL, NULL, NULL, 3, 1);
INSERT INTO `category_info` VALUES (4, 2, '教育电视', '', NULL, NULL, NULL, 3, 1);
INSERT INTO `category_info` VALUES (5, 1, '智慧屏电视', '', NULL, NULL, NULL, 3, 1);
INSERT INTO `category_info` VALUES (6, 0, '手机/数码', '', NULL, '2022-07-27 15:07:31', '2022-07-27 15:08:57', 1, 2);
INSERT INTO `category_info` VALUES (7, 6, '手机通讯', '', NULL, '2022-07-27 15:08:41', '2022-07-27 15:09:34', 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for collection_info
-- ----------------------------
DROP TABLE IF EXISTS `collection_info`;
CREATE TABLE `collection_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `object_id` int NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收藏类型：1商品 2文章',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_index` (`user_id`,`object_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of collection_info
-- ----------------------------
BEGIN;
INSERT INTO `collection_info` VALUES (3, 1, 1, 1, '2022-07-31 15:21:38', '2022-07-31 15:21:38');
COMMIT;

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级评论id',
  `user_id` int NOT NULL DEFAULT '0',
  `object_id` int NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论类型：1商品 2文章',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_index` (`user_id`,`object_id`,`type`,`content`,`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of comment_info
-- ----------------------------
BEGIN;
INSERT INTO `comment_info` VALUES (4, 0, 1, 1, 2, '好评 下次还会买', '2022-07-31 17:23:48', '2022-07-31 17:23:48', NULL);
INSERT INTO `comment_info` VALUES (5, 0, 1, 1, 2, '来个评论', '2022-07-31 17:24:10', '2022-07-31 17:24:10', NULL);
INSERT INTO `comment_info` VALUES (7, 5, 1, 1, 2, '来个评论', '2022-07-31 17:24:59', '2022-07-31 17:24:59', NULL);
COMMIT;

-- ----------------------------
-- Table structure for consignee_info
-- ----------------------------
DROP TABLE IF EXISTS `consignee_info`;
CREATE TABLE `consignee_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '收货地址表',
  `user_id` int NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认地址1  非默认0\n',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `province` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `town` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '县区',
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '街道乡镇',
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地址详情',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of consignee_info
-- ----------------------------
BEGIN;
INSERT INTO `consignee_info` VALUES (1, 1, 1, '王先生1', '13269477632', '北京', '北京市', '房山区', '拱辰街道', '大学城西', '2022-07-31 14:42:33', '2022-07-31 14:44:50', NULL);
COMMIT;

-- ----------------------------
-- Table structure for coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `coupon_info`;
CREATE TABLE `coupon_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `price` int NOT NULL DEFAULT '0' COMMENT '优惠前面值 单位分\n',
  `goods_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '关联使用的goods_ids  逗号分隔',
  `category_id` int NOT NULL DEFAULT '0' COMMENT '关联使用的分类id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图表\n';

-- ----------------------------
-- Records of coupon_info
-- ----------------------------
BEGIN;
INSERT INTO `coupon_info` VALUES (1, '满2千减5百优惠券', 50000, '1,2,3', 1, '2022-07-19 14:30:48', '2022-09-25 15:35:56', NULL);
INSERT INTO `coupon_info` VALUES (2, '满2千减5百优惠券', 50000, '0', 1, '2022-07-19 14:39:51', '2022-07-19 14:39:51', NULL);
INSERT INTO `coupon_info` VALUES (3, '满2千减5百优惠券', 50000, '1', 1, '2022-07-29 15:58:15', '2022-08-01 13:53:11', '2022-08-01 13:53:27');
INSERT INTO `coupon_info` VALUES (4, '满2千减5百优惠券', 50000, '0', 1, '2022-08-01 13:52:51', '2022-08-01 13:52:51', NULL);
INSERT INTO `coupon_info` VALUES (5, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:31:33', '2022-09-23 06:31:33', NULL);
INSERT INTO `coupon_info` VALUES (6, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:33:21', '2022-09-23 06:33:21', NULL);
INSERT INTO `coupon_info` VALUES (7, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:34:56', '2022-09-23 06:34:56', NULL);
INSERT INTO `coupon_info` VALUES (8, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:36:17', '2022-09-23 06:36:17', NULL);
INSERT INTO `coupon_info` VALUES (9, '满2千减5百优惠券', 50000, '', 1, '2022-09-23 06:38:41', '2022-09-23 06:38:41', NULL);
INSERT INTO `coupon_info` VALUES (10, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:32:34', '2022-09-25 15:32:34', NULL);
INSERT INTO `coupon_info` VALUES (11, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:32:40', '2022-09-25 15:32:40', NULL);
INSERT INTO `coupon_info` VALUES (12, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:33:23', '2022-09-25 15:33:23', NULL);
INSERT INTO `coupon_info` VALUES (13, '满2千减5百优惠券', 50000, '0', 1, '2022-09-25 15:33:54', '2022-09-25 15:33:54', NULL);
INSERT INTO `coupon_info` VALUES (14, '满2千减5百优惠券', 50000, '1,2,3', 1, '2022-09-25 15:36:12', '2022-09-25 15:36:12', NULL);
COMMIT;

-- ----------------------------
-- Table structure for goods_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_info`;
CREATE TABLE `goods_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` int NOT NULL DEFAULT '1' COMMENT '价格 单位分',
  `level1_category_id` int NOT NULL COMMENT '1级分类id',
  `level2_category_id` int NOT NULL DEFAULT '0' COMMENT '2级分类id',
  `level3_category_id` int NOT NULL DEFAULT '0' COMMENT '3级分类id',
  `brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '品牌',
  `coupon_id` int NOT NULL DEFAULT '0' COMMENT '优惠券id',
  `stock` int NOT NULL DEFAULT '0' COMMENT '库存',
  `sale` int NOT NULL DEFAULT '0' COMMENT '销量',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标签',
  `detail_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '商品详情',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品表';

-- ----------------------------
-- Records of goods_info
-- ----------------------------
BEGIN;
INSERT INTO `goods_info` VALUES (1, 'https://assasda.png', '东鹏特饮1', 50000, 1, 2, 3, '东鹏2', 0, 100, 10, '饮料，功能饮料', '东鹏 详情富文本', '2022-07-27 18:42:31', '2022-08-07 11:40:59', NULL);
INSERT INTO `goods_info` VALUES (2, 'https://assasda.png', '东鹏特饮2', 50000, 1, 2, 4, '东鹏2', 0, 100, 0, '饮料，功能饮料', '东鹏 详情富文本', '2022-07-27 18:43:03', '2022-07-27 18:43:03', NULL);
COMMIT;

-- ----------------------------
-- Table structure for goods_options_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_options_info`;
CREATE TABLE `goods_options_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NOT NULL COMMENT '商品id',
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` int NOT NULL DEFAULT '1' COMMENT '价格 单位分',
  `stock` int NOT NULL DEFAULT '0' COMMENT '库存',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品规格表\n';

-- ----------------------------
-- Records of goods_options_info
-- ----------------------------
BEGIN;
INSERT INTO `goods_options_info` VALUES (5, 1, 'https://assasda.png', '东鹏特饮', 50000, 100, '2022-07-21 16:38:54', '2022-07-21 16:38:54', '2022-07-21 16:39:05');
INSERT INTO `goods_options_info` VALUES (6, 1, 'https://assasda.png', '东鹏特饮', 50000, 100, '2022-07-21 16:49:51', '2022-07-21 16:49:51', NULL);
COMMIT;

-- ----------------------------
-- Table structure for order_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `order_goods_info`;
CREATE TABLE `order_goods_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品维度的订单表',
  `order_id` int NOT NULL DEFAULT '0' COMMENT '关联的主订单表',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '商品id',
  `count` int NOT NULL COMMENT '商品数量',
  `pay_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式 1微信 2支付宝 3云闪付',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态 0待支付 1已支付 3已确认收货',
  `price` int NOT NULL DEFAULT '0' COMMENT '订单金额 单位分',
  `coupon_price` int NOT NULL DEFAULT '0' COMMENT '优惠券金额 单位分',
  `actual_price` int NOT NULL DEFAULT '0' COMMENT '实际支付金额 单位分',
  `pay_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章（种草）表';

-- ----------------------------
-- Records of order_goods_info
-- ----------------------------
BEGIN;
INSERT INTO `order_goods_info` VALUES (1, 1, 1, 1, 0, '', 1, 100, 10, 90, NULL, NULL, NULL);
INSERT INTO `order_goods_info` VALUES (2, 8, 1, 1, 0, '', 0, 0, 0, 0, NULL, '2022-08-27 20:50:50', '2022-08-27 20:50:50');
INSERT INTO `order_goods_info` VALUES (3, 8, 2, 3, 0, '', 0, 0, 0, 0, NULL, '2022-08-27 20:50:50', '2022-08-27 20:50:50');
COMMIT;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单编号',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户id',
  `pay_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付方式 1微信 2支付宝 3云闪付',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `pay_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '支付时间',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单状态： 1待支付 2已支付待发货 3已发货 4已收货待评价',
  `consignee_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `consignee_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `consignee_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `price` int NOT NULL DEFAULT '0' COMMENT '订单金额 单位分',
  `coupon_price` int NOT NULL DEFAULT '0' COMMENT '优惠券金额 单位分',
  `actual_price` int NOT NULL DEFAULT '0' COMMENT '实际支付金额 单位分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章（种草）表';

-- ----------------------------
-- Records of order_info
-- ----------------------------
BEGIN;
INSERT INTO `order_info` VALUES (1, '1659231316407832000111', 1, 1, '2022-08-27 09:35:16', '2022-07-31 09:35:16', '0', NULL, 1, '王先生', '13269477432', '北京丰台汽车博物馆', 10000, 100, 9900);
INSERT INTO `order_info` VALUES (2, '1659231554317361000757', 1, 1, '2022-07-31 09:39:14', '2022-07-31 09:39:14', '0', NULL, 1, '王先生', '13269477432', '北京丰台汽车博物馆', 10000, 200, 9800);
INSERT INTO `order_info` VALUES (3, '1661603467832912000516', 1, 0, '2022-08-27 20:31:07', '2022-08-27 20:31:07', '', NULL, 0, '', '', '', 0, 0, 0);
INSERT INTO `order_info` VALUES (4, '1661603562656619000513', 1, 1, '2022-08-27 20:32:42', '2022-08-27 20:32:42', '放到快递柜就可以，不用打电话。', NULL, 0, '王先生', '13269477432', '北京丰台汽车博物馆', 0, 0, 0);
INSERT INTO `order_info` VALUES (5, '1661604424031843000546', 1, 0, '2022-08-27 20:47:04', '2022-08-27 20:47:04', '', NULL, 0, '', '', '', 0, 0, 0);
INSERT INTO `order_info` VALUES (6, '1661604530142913000770', 1, 1, '2022-08-27 20:48:50', '2022-08-27 20:48:50', '这是备注', NULL, 1, '', '', '', 100, 0, 0);
INSERT INTO `order_info` VALUES (7, '166160461284091500027', 1, 1, '2022-09-08 20:50:12', '2022-08-27 20:50:12', '这是备注', '2022-09-09 11:51:21', 1, '', '', '', 100, 0, 9800);
INSERT INTO `order_info` VALUES (8, '166160465089079000090', 1, 1, '2022-09-09 20:50:50', '2022-08-27 20:50:50', '这是备注', '2022-09-09 11:51:17', 1, '', '', '', 100, 0, 9800);
COMMIT;

-- ----------------------------
-- Table structure for permission_info
-- ----------------------------
DROP TABLE IF EXISTS `permission_info`;
CREATE TABLE `permission_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路径',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of permission_info
-- ----------------------------
BEGIN;
INSERT INTO `permission_info` VALUES (1, '文章1', 'admin.article.index', '2022-09-25 15:03:01', '2022-09-25 15:03:43', NULL);
INSERT INTO `permission_info` VALUES (2, '测试2', 'admin.test.index', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for position_info
-- ----------------------------
DROP TABLE IF EXISTS `position_info`;
CREATE TABLE `position_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片链接',
  `goods_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转链接',
  `sort` tinyint NOT NULL DEFAULT '0' COMMENT '排序',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '商品id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of position_info
-- ----------------------------
BEGIN;
INSERT INTO `position_info` VALUES (2, 'https://images.zsxq.com/FgdL08hVmh-40_e12vh-ifbXpGxB?e=2000966400', '测试', 'https://articles.zsxq.com/id_wd15wsegvow1.html', 0, 1, '2022-11-18 17:44:07', '2022-11-18 17:44:07', '2022-11-18 17:44:59');
COMMIT;

-- ----------------------------
-- Table structure for praise_info
-- ----------------------------
DROP TABLE IF EXISTS `praise_info`;
CREATE TABLE `praise_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '点赞表',
  `user_id` int NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '点赞类型 1商品 2文章',
  `object_id` int NOT NULL DEFAULT '0' COMMENT '点赞对象id 方便后期扩展',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`user_id`,`type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of praise_info
-- ----------------------------
BEGIN;
INSERT INTO `praise_info` VALUES (6, 1, 1, 1, '2022-07-31 16:58:40', '2022-07-31 16:58:40');
COMMIT;

-- ----------------------------
-- Table structure for refund_info
-- ----------------------------
DROP TABLE IF EXISTS `refund_info`;
CREATE TABLE `refund_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '售后退款表',
  `number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '售后订单号',
  `order_id` int NOT NULL COMMENT '订单id',
  `goods_id` int NOT NULL DEFAULT '0' COMMENT '要售后的商品id\n',
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款原因',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1待处理 2同意退款 3拒绝退款\n',
  `user_id` int NOT NULL COMMENT '用户id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of refund_info
-- ----------------------------
BEGIN;
INSERT INTO `refund_info` VALUES (1, 'refund1659247832739250000428', 1, 1, '不想要了', 1, 1, '2022-07-31 14:10:32', '2022-07-31 14:10:32', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of role_info
-- ----------------------------
BEGIN;
INSERT INTO `role_info` VALUES (1, '运营', '运营权限', '2022-09-25 10:35:52', '2022-09-25 10:35:52', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role_permission_info
-- ----------------------------
DROP TABLE IF EXISTS `role_permission_info`;
CREATE TABLE `role_permission_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL DEFAULT '0' COMMENT '角色id',
  `permission_id` int NOT NULL COMMENT '权限id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`role_id`,`permission_id`) USING BTREE COMMENT '唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for rotation_info
-- ----------------------------
DROP TABLE IF EXISTS `rotation_info`;
CREATE TABLE `rotation_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '轮播图片',
  `link` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转链接',
  `sort` tinyint(1) NOT NULL DEFAULT '0' COMMENT '排序字段',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='轮播图表\n';

-- ----------------------------
-- Records of rotation_info
-- ----------------------------
BEGIN;
INSERT INTO `rotation_info` VALUES (1, '111', '11', 10, '2022-07-19 04:53:01', '2022-07-19 04:59:24', NULL);
INSERT INTO `rotation_info` VALUES (2, '2', 'https://wx.zsxq.com/dweb2/index/group/15528828844882', 0, '2022-07-19 05:15:20', '2022-11-13 09:53:27', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `user_coupon_info`;
CREATE TABLE `user_coupon_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户优惠券表',
  `user_id` int NOT NULL DEFAULT '0',
  `coupon_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1可用 2已用 3过期',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user_coupon_info
-- ----------------------------
BEGIN;
INSERT INTO `user_coupon_info` VALUES (1, 1, 1, 1, '2022-07-29 16:01:13', '2022-07-29 16:01:13', NULL);
INSERT INTO `user_coupon_info` VALUES (2, 1, 1, 1, '2022-07-29 16:16:18', '2022-07-29 16:16:18', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `user_salt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '加密盐 生成密码用',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1男 2女',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1正常 2拉黑冻结',
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `secret_answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密保问题的答案',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES (1, 'lida', 'https://img1.baidu.com/it/u=2029513305,2137933177&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=472', '26bebfe4cf87cc2bd7b89c237fe42df3', 'QLAFRsKG2N', 1, 1, '个性签名', '银河中学', '2022-07-28 17:19:42', '2022-07-31 19:25:01', NULL);
INSERT INTO `user_info` VALUES (2, 'wang', '', '', '', 1, 1, '', '', NULL, NULL, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
