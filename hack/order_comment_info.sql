DROP TABLE IF EXISTS `order_goods_comments_info`;
CREATE TABLE `order_goods_comments_info` (
                                             `id` int NOT NULL AUTO_INCREMENT,
                                             `order_id` int not null DEFAULT '0' COMMENT '订单id',
                                             `goods_id` int not null DEFAULT '0' COMMENT '商品id',
                                             `goods_options_id` int not null DEFAULT '0' COMMENT '商品规格id',
                                             `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级评论id',
                                             `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论内容',
                                             `created_at` datetime DEFAULT NULL,
                                             `updated_at` datetime DEFAULT NULL,
                                             `deleted_at` datetime DEFAULT NULL,
                                             PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='订单评价表';
