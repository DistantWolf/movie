/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : db_boot_movie

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 01/06/2024 20:46:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie_account
-- ----------------------------
DROP TABLE IF EXISTS `movie_account`;
CREATE TABLE `movie_account`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `balance` decimal(19, 2) NOT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_6opggmt4oncjopyy57ca38wi0`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_account
-- ----------------------------
INSERT INTO `movie_account` VALUES (1, '2024-05-03 18:19:01', '2024-05-06 21:42:17', 0.00, 'default-head-pic.jpg', '13656564545', NULL, '123456', 1, 0);
INSERT INTO `movie_account` VALUES (2, '2024-05-03 18:50:58', '2024-05-03 18:50:58', 0.00, 'default-head-pic.jpg', '13918666565', NULL, '123456', 1, 1);
INSERT INTO `movie_account` VALUES (3, '2024-05-04 11:55:07', '2024-05-31 10:34:03', 2135.66, '20240504/1601795846759.jpg', '13918661215', '刘明', '123456', 1, 1);
INSERT INTO `movie_account` VALUES (4, '2024-05-24 11:12:05', '2024-05-24 11:12:05', 0.00, 'default-head-pic.jpg', '18888888888', NULL, '123456', 1, 1);
INSERT INTO `movie_account` VALUES (5, '2024-05-24 17:30:15', '2024-05-24 17:36:25', 1049.00, 'default-head-pic.jpg', '19999999999', '李沐', '123456', 1, 1);

-- ----------------------------
-- Table structure for movie_area
-- ----------------------------
DROP TABLE IF EXISTS `movie_area`;
CREATE TABLE `movie_area`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `city_id` bigint(20) NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province_id` bigint(20) NULL DEFAULT NULL,
  `is_show` bit(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_area
-- ----------------------------
INSERT INTO `movie_area` VALUES (1, '2024-05-06 16:10:08', '2024-05-19 13:10:50', NULL, '上海', NULL, b'1');
INSERT INTO `movie_area` VALUES (2, '2024-05-06 16:15:55', '2024-05-06 16:15:55', NULL, '北京', NULL, b'1');
INSERT INTO `movie_area` VALUES (3, '2024-05-06 16:16:08', '2024-05-19 13:12:00', NULL, '江苏', NULL, b'1');
INSERT INTO `movie_area` VALUES (5, '2024-05-06 16:18:10', '2024-05-19 13:11:11', NULL, '上海市', 1, b'1');
INSERT INTO `movie_area` VALUES (6, '2024-05-06 16:28:24', '2024-05-06 18:04:04', 5, '浦东新区', 1, b'1');
INSERT INTO `movie_area` VALUES (7, '2024-05-06 16:29:22', '2024-05-06 17:11:43', NULL, '北京市', 2, b'1');
INSERT INTO `movie_area` VALUES (8, '2024-05-06 16:29:32', '2024-05-06 16:29:32', NULL, '南京', 3, b'1');
INSERT INTO `movie_area` VALUES (11, '2024-05-06 17:20:42', '2024-05-06 17:21:52', 5, '徐汇区', 1, b'1');
INSERT INTO `movie_area` VALUES (12, '2024-05-06 17:22:30', '2024-05-06 17:22:30', 5, '黄浦区', 1, b'1');
INSERT INTO `movie_area` VALUES (13, '2024-05-06 17:22:43', '2024-05-06 17:22:43', 5, '长宁区', 1, b'1');
INSERT INTO `movie_area` VALUES (14, '2024-05-06 17:22:54', '2024-05-06 17:22:54', 5, '静安区', 1, b'1');
INSERT INTO `movie_area` VALUES (15, '2024-05-06 17:23:08', '2024-05-06 17:23:08', 5, '普陀区', 1, b'1');
INSERT INTO `movie_area` VALUES (16, '2024-05-06 17:23:18', '2024-05-06 17:23:18', 5, '虹口区', 1, b'1');
INSERT INTO `movie_area` VALUES (17, '2024-05-06 17:23:31', '2024-05-06 17:23:31', 5, '杨浦区', 1, b'1');
INSERT INTO `movie_area` VALUES (18, '2024-05-06 17:23:44', '2024-05-06 17:23:44', 5, '闵行区', 1, b'1');
INSERT INTO `movie_area` VALUES (19, '2024-05-06 17:23:57', '2024-05-06 17:23:57', 5, '宝山区', 1, b'1');
INSERT INTO `movie_area` VALUES (20, '2024-05-06 17:24:09', '2024-05-06 17:24:09', 5, '嘉定区', 1, b'1');
INSERT INTO `movie_area` VALUES (21, '2024-05-06 17:24:19', '2024-05-06 17:24:19', 5, '金山区', 1, b'1');
INSERT INTO `movie_area` VALUES (22, '2024-05-06 17:24:32', '2024-05-06 17:24:32', 5, '松江区', 1, b'1');
INSERT INTO `movie_area` VALUES (23, '2024-05-06 17:24:46', '2024-05-06 17:24:46', 5, '青浦区', 1, b'1');
INSERT INTO `movie_area` VALUES (24, '2024-05-06 17:25:01', '2024-05-06 17:25:01', 5, '奉贤区', 1, b'1');
INSERT INTO `movie_area` VALUES (25, '2024-05-06 17:25:12', '2024-05-06 17:25:12', 5, '崇明区', 1, b'1');
INSERT INTO `movie_area` VALUES (26, '2024-05-06 17:25:48', '2024-05-06 17:25:48', 7, '朝阳区', 2, b'1');
INSERT INTO `movie_area` VALUES (27, '2024-05-06 18:00:57', '2024-05-06 18:00:57', 7, '宣武区', 2, b'1');
INSERT INTO `movie_area` VALUES (28, '2024-05-06 18:01:15', '2024-05-06 18:01:15', NULL, '苏州', 3, b'1');
INSERT INTO `movie_area` VALUES (29, '2024-05-06 18:01:32', '2024-05-19 13:11:40', NULL, '无锡', 3, b'1');
INSERT INTO `movie_area` VALUES (30, '2024-05-06 18:01:47', '2024-05-06 18:01:47', 8, '鼓楼区', 3, b'1');
INSERT INTO `movie_area` VALUES (31, '2024-05-19 13:00:54', '2024-05-19 13:00:54', NULL, '徐州', 3, b'1');
INSERT INTO `movie_area` VALUES (32, '2024-05-19 13:01:10', '2024-05-19 13:01:10', NULL, '昆山', 3, b'1');
INSERT INTO `movie_area` VALUES (33, '2024-05-19 13:01:50', '2024-05-19 13:01:50', NULL, '常州', 3, b'1');
INSERT INTO `movie_area` VALUES (34, '2024-05-19 13:01:59', '2024-05-19 13:01:59', NULL, '南通', 3, b'1');
INSERT INTO `movie_area` VALUES (35, '2024-05-19 13:02:13', '2024-05-19 13:02:13', NULL, '镇江', 3, b'1');
INSERT INTO `movie_area` VALUES (36, '2024-05-19 13:02:25', '2024-05-19 13:02:25', NULL, '泰州', 3, b'1');
INSERT INTO `movie_area` VALUES (37, '2024-05-19 13:02:41', '2024-05-19 13:02:41', NULL, '连云港', 3, b'1');
INSERT INTO `movie_area` VALUES (38, '2024-05-19 13:02:51', '2024-05-19 13:02:51', NULL, '扬州', 3, b'1');

-- ----------------------------
-- Table structure for movie_cinema
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema`;
CREATE TABLE `movie_cinema`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cinema_service` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info` varchar(1280) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(19, 2) NULL DEFAULT NULL,
  `tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `transport` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area_id` bigint(20) NULL DEFAULT NULL,
  `rate_count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK3rbe1c2ae9xlnyokjqgol32ky`(`area_id`) USING BTREE,
  CONSTRAINT `FK3rbe1c2ae9xlnyokjqgol32ky` FOREIGN KEY (`area_id`) REFERENCES `movie_area` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_cinema
-- ----------------------------
INSERT INTO `movie_cinema` VALUES (1, '2024-05-14 20:37:04', '2024-05-31 16:16:53', '上海市黄浦区人民大道300号', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '上海大剧院按照中国古典建筑亭的外形设计，屋顶采用两边反翘和天空拥抱的白色弧形，寓意天圆地方之说。占地面积约为21000平方米，建筑总面积70000平方米，建筑总高度40米，共有10层，是上海的文化标志性建筑物。在这里上演过歌剧、音乐剧、芭蕾、交响乐、室内乐、话剧、戏曲等各类大型演出和综艺晚会。', '上海大剧院', '20240514/1600088570933.jpg', 7.51, '021-21849857', '地铁2号线2号口出', 12, 4);
INSERT INTO `movie_cinema` VALUES (2, '2024-05-14 21:05:57', '2024-06-01 02:07:32', '江苏南京江苏省南京市人民路123号', '_3D,Card,ChildDiscount,Rest', '江苏大剧院占地面积约20万平方米，建筑总面积27万平方米，包括歌剧厅、戏剧厅、音乐厅、综艺厅、报告厅以及附属配套设施，满足歌剧、舞剧、话剧、戏曲、交响乐、曲艺和大型综艺演出功能需要。', '江苏大剧院', '20240524/1600956313025.jpg', 6.67, '026-88454546', '738路公交下', 30, 3);
INSERT INTO `movie_cinema` VALUES (3, '2024-05-19 22:11:14', '2024-06-01 01:57:16', '北京市西城区西长安街2号', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '中国国家大剧院由法国建筑师保罗·安德鲁主持设计，国家大剧院外观呈半椭球形，东西方向长轴长度为212.20米，南北方向短轴长度为143.64米，建筑物高度为46.285米 ，占地11.89万平方米，总建筑面积约16.5万平方米，其中主体建筑10.5万平方米，地下附属设施6万平方米，总造价30.67亿元 。设有歌剧院、音乐厅、戏剧场以及艺术展厅、餐厅、音像商店等配套设施。', '中国国家大剧院', '20240601/1717202477159.jpg', 9.00, '010-5556623', '地铁1号线2号口出', 26, 1);
INSERT INTO `movie_cinema` VALUES (4, '2024-05-19 22:13:15', '2024-05-31 16:21:08', '上海市青浦区华新镇华志路789号新尚生活广场5楼', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '一米二以下儿童观影免票，需成人陪同，一名成人仅限携带一名儿童。', '茉莉花剧场', '20240519/1600524730476.jpg', 0.00, '021-32583818', '地铁9号线2号口出', 23, 0);
INSERT INTO `movie_cinema` VALUES (5, '2024-05-19 22:14:06', '2024-05-31 16:21:27', '上海市浦东新区陆家嘴世纪大道8号上海国金中心商场LG1-LG2层', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', 'young剧场', 'young剧场', '20240519/1600524805636.jpg', 0.00, '021-31263886', '地铁9号线2号口出', 6, 0);
INSERT INTO `movie_cinema` VALUES (6, '2024-05-19 22:15:48', '2024-05-31 16:21:53', '上海市浦东新区上南路4467号20号中房金谊广场北区1层', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '中国大戏院', '中国大戏院', '20240519/1600524921262.jpg', 0.00, '021-58583586-808', '地铁11号线2号口出', 6, 0);

-- ----------------------------
-- Table structure for movie_cinema_comment
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_comment`;
CREATE TABLE `movie_cinema_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` decimal(19, 2) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `cinema_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK62335x5bldhxxrvxyn2g6hh7l`(`account_id`) USING BTREE,
  INDEX `FKe2arjnvu7p5ckp9vnule741ia`(`cinema_id`) USING BTREE,
  CONSTRAINT `FK62335x5bldhxxrvxyn2g6hh7l` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKe2arjnvu7p5ckp9vnule741ia` FOREIGN KEY (`cinema_id`) REFERENCES `movie_cinema` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_cinema_comment
-- ----------------------------
INSERT INTO `movie_cinema_comment` VALUES (1, '2024-05-06 14:42:41', '2024-05-06 14:42:41', '还不错，就是位置有点偏僻！', 8.00, 3, 1);
INSERT INTO `movie_cinema_comment` VALUES (2, '2024-05-06 14:50:22', '2024-05-06 14:50:22', '竟然没地方停车，这么大个剧院也是醉了！！！', 6.00, 3, 1);
INSERT INTO `movie_cinema_comment` VALUES (4, '2024-05-06 14:56:13', '2024-05-06 14:56:13', '音乐剧很棒。', 9.00, 3, 1);
INSERT INTO `movie_cinema_comment` VALUES (5, '2024-05-06 15:03:55', '2024-05-06 15:03:55', '还好吧。', 7.00, 3, 2);
INSERT INTO `movie_cinema_comment` VALUES (6, '2024-05-06 15:07:22', '2024-05-06 15:07:22', '这次体验不错！', 9.00, 3, 2);
INSERT INTO `movie_cinema_comment` VALUES (7, '2024-05-06 15:08:00', '2024-05-06 15:08:00', '这次体验一般！', 4.00, 3, 2);
INSERT INTO `movie_cinema_comment` VALUES (8, '2024-05-06 15:11:08', '2024-05-06 15:11:08', '完美的一次体验！', 9.00, 3, 3);

-- ----------------------------
-- Table structure for movie_cinema_hall
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_hall`;
CREATE TABLE `movie_cinema_hall`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `max_x` int(11) NOT NULL,
  `max_y` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cinema_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcpgl2ik7d1ilwpjkm3mk9a5kj`(`cinema_id`) USING BTREE,
  CONSTRAINT `FKcpgl2ik7d1ilwpjkm3mk9a5kj` FOREIGN KEY (`cinema_id`) REFERENCES `movie_cinema` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_cinema_hall
-- ----------------------------
INSERT INTO `movie_cinema_hall` VALUES (1, '2024-05-15 20:07:53', '2024-05-16 20:03:02', 8, 9, '2号歌剧厅', 2);
INSERT INTO `movie_cinema_hall` VALUES (3, '2024-05-16 21:47:28', '2024-05-16 21:47:28', 9, 9, '1号歌剧厅', 1);
INSERT INTO `movie_cinema_hall` VALUES (4, '2024-05-24 21:09:43', '2024-05-24 21:09:43', 8, 11, '3号歌剧厅', 3);

-- ----------------------------
-- Table structure for movie_cinema_hall_seat
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_hall_seat`;
CREATE TABLE `movie_cinema_hall_seat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `cinema_hall_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKmdwbvcb0bsjcx8qqpbgi46flo`(`cinema_hall_id`) USING BTREE,
  CONSTRAINT `FKmdwbvcb0bsjcx8qqpbgi46flo` FOREIGN KEY (`cinema_hall_id`) REFERENCES `movie_cinema_hall` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 242 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_cinema_hall_seat
-- ----------------------------
INSERT INTO `movie_cinema_hall_seat` VALUES (1, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 1, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (2, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 2, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (3, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 3, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (4, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 4, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (5, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 5, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (6, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 6, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (7, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 7, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (8, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 8, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (9, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 1, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (10, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 2, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (11, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 3, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (12, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 4, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (13, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 5, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (14, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 6, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (15, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 7, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (16, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 8, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (17, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 1, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (18, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 2, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (19, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 3, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (20, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 4, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (21, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 5, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (22, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 6, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (23, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 7, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (24, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 8, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (25, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 1, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (26, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 2, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (27, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 3, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (28, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 4, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (29, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 5, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (30, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 6, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (31, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 7, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (32, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 8, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (33, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 1, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (34, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 2, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (35, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 3, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (36, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 4, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (37, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 5, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (38, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 6, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (39, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 7, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (40, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 8, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (41, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 1, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (42, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 2, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (43, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 3, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (44, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 4, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (45, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 5, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (46, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 6, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (47, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 7, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (48, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 8, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (49, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 1, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (50, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 2, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (51, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 3, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (52, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 4, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (53, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 5, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (54, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 6, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (55, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 0, 1, 7, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (56, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 8, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (57, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 1, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (58, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 2, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (59, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 3, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (60, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 4, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (61, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 5, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (62, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 6, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (63, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 7, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (64, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 8, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (65, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 1, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (66, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 2, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (67, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 3, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (68, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 4, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (69, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 5, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (70, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 2, 6, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (71, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 7, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (72, '2024-05-16 21:25:09', '2024-05-16 21:53:10', 1, 1, 8, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (73, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 1, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (74, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 2, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (75, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 3, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (76, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 4, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (77, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 5, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (78, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 6, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (79, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 7, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (80, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 8, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (81, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 9, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (82, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 1, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (83, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 2, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (84, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 3, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (85, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (86, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 1, 5, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (87, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (88, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 1, 7, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (89, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 8, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (90, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 9, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (91, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 1, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (92, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 2, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (93, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 3, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (94, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (95, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 5, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (96, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (97, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 7, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (98, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 8, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (99, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 9, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (100, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 1, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (101, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 2, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (102, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 2, 3, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (103, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (104, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 5, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (105, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (106, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 7, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (107, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 1, 8, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (108, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 9, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (109, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 1, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (110, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 2, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (111, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 3, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (112, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (113, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 5, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (114, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (115, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 7, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (116, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 1, 8, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (117, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 9, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (118, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 1, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (119, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 2, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (120, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 3, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (121, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (122, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 5, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (123, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (124, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 7, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (125, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 8, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (126, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 9, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (127, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 1, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (128, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 1, 2, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (129, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 3, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (130, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (131, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 5, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (132, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (133, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 7, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (134, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 0, 1, 8, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (135, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 9, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (136, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 1, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (137, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 2, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (138, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 3, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (139, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 4, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (140, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 5, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (141, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 6, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (142, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 7, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (143, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 8, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (144, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 9, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (145, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 1, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (146, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 2, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (147, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 3, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (148, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 4, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (149, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 5, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (150, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 6, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (151, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 2, 7, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (152, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 8, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (153, '2024-05-16 21:53:59', '2024-05-03 13:42:01', 1, 1, 9, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (154, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (155, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (156, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (157, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (158, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (159, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (160, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (161, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (162, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (163, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (164, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (165, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (166, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (167, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (168, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (169, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (170, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (171, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (172, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (173, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (174, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (175, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (176, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (177, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (178, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (179, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (180, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (181, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (182, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (183, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (184, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (185, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (186, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (187, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (188, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (189, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (190, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (191, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (192, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (193, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (194, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (195, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (196, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (197, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (198, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (199, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (200, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (201, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (202, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (203, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (204, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (205, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (206, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (207, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (208, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (209, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (210, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (211, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (212, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (213, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (214, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (215, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (216, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (217, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (218, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (219, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (220, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (221, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (222, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (223, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (224, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (225, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (226, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (227, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (228, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (229, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (230, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (231, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (232, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (233, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (234, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 1, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (235, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 2, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (236, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 3, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (237, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 4, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (238, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 5, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (239, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 6, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (240, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 7, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (241, '2024-05-24 21:09:53', '2024-05-24 21:09:53', 1, 1, 8, 11, 4);

-- ----------------------------
-- Table structure for movie_cinema_hall_session
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_hall_session`;
CREATE TABLE `movie_cinema_hall_session`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `show_date` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_time` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cinema_id` bigint(20) NULL DEFAULT NULL,
  `cinema_hall_id` bigint(20) NULL DEFAULT NULL,
  `movie_id` bigint(20) NULL DEFAULT NULL,
  `cinema_session_type` int(11) NOT NULL,
  `end_time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `new_price` decimal(19, 2) NOT NULL,
  `old_price` decimal(19, 2) NOT NULL,
  `start_time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcqci2i9g2044uicf07sxwwcoi`(`cinema_id`) USING BTREE,
  INDEX `FK23nq84td4lhlgow750x6w52st`(`cinema_hall_id`) USING BTREE,
  INDEX `FK8yo0mdhaupvsygja3uncoh60s`(`movie_id`) USING BTREE,
  CONSTRAINT `FK23nq84td4lhlgow750x6w52st` FOREIGN KEY (`cinema_hall_id`) REFERENCES `movie_cinema_hall` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8yo0mdhaupvsygja3uncoh60s` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKcqci2i9g2044uicf07sxwwcoi` FOREIGN KEY (`cinema_id`) REFERENCES `movie_cinema` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_cinema_hall_session
-- ----------------------------
INSERT INTO `movie_cinema_hall_session` VALUES (1, '2024-05-15 20:07:53', '2024-05-24 17:33:10', '2024-5-25', '10:30', 1, 3, 2, 1, '2024-5-25 12:25', 45.00, 100.00, '2024-5-25 10:30');
INSERT INTO `movie_cinema_hall_session` VALUES (2, '2024-05-17 20:37:36', '2024-05-06 20:42:47', '2020-11-18', '11:30', 1, 3, 1, 0, '2020-11-18 13:52', 45.00, 80.00, '2020-11-18 11:30');
INSERT INTO `movie_cinema_hall_session` VALUES (3, '2024-05-16 21:47:28', '2024-05-26 20:34:15', '2024-5-18', '13:30', 2, 1, 1, 0, '2024-5-18 15:52', 45.50, 88.00, '2024-5-18 13:30');
INSERT INTO `movie_cinema_hall_session` VALUES (4, '2024-05-17 20:38:12', '2024-05-26 20:34:20', '2024-5-18', '08:00', 2, 1, 1, 0, '2024-5-18 10:22', 55.00, 66.00, '2024-5-18 08:00');
INSERT INTO `movie_cinema_hall_session` VALUES (5, '2024-05-24 21:10:21', '2024-05-26 20:34:26', '2024-5-23', '20:00', 3, 4, 3, 0, '2024-5-23 21:45', 65.00, 100.00, '2024-5-23 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (6, '2024-05-26 12:26:23', '2024-05-26 20:34:30', '2024-5-25', '20:00', 3, 4, 1, 0, '2024-5-25 22:22', 66.00, 98.00, '2024-5-25 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (7, '2024-05-26 12:26:41', '2024-05-26 20:34:51', '2024-5-20', '22:00', 1, 3, 1, 0, '2024-5-21 00:22', 63.00, 100.00, '2024-5-20 22:00');
INSERT INTO `movie_cinema_hall_session` VALUES (8, '2024-05-26 12:26:59', '2024-05-26 20:34:56', '2024-5-19', '09:00', 2, 1, 1, 0, '2024-5-19 11:22', 44.00, 68.00, '2024-5-19 09:00');
INSERT INTO `movie_cinema_hall_session` VALUES (9, '2024-05-26 13:03:13', '2024-05-26 20:35:01', '2024-5-19', '09:00', 3, 4, 1, 0, '2024-5-19 11:22', 56.00, 78.00, '2024-5-19 09:00');
INSERT INTO `movie_cinema_hall_session` VALUES (10, '2024-05-26 15:44:16', '2024-05-26 20:35:07', '2024-5-19', '10:30', 1, 3, 1, 2, '2024-5-19 12:52', 68.00, 55.00, '2024-5-19 10:30');
INSERT INTO `movie_cinema_hall_session` VALUES (11, '2024-05-26 20:09:38', '2024-05-26 20:46:25', '2024-5-18', '14:00', 1, 3, 1, 1, '2024-5-18 16:22', 56.00, 66.00, '2024-5-18 14:00');
INSERT INTO `movie_cinema_hall_session` VALUES (12, '2024-05-26 20:38:20', '2024-05-26 20:46:51', '2024-5-18', '17:00', 1, 3, 1, 1, '2024-5-18 19:22', 40.00, 66.00, '2024-5-18 17:00');
INSERT INTO `movie_cinema_hall_session` VALUES (13, '2024-05-26 20:41:36', '2024-05-26 20:47:10', '2024-5-18', '19:30', 1, 3, 1, 1, '2024-5-18 21:52', 41.00, 88.00, '2024-5-18 19:30');
INSERT INTO `movie_cinema_hall_session` VALUES (14, '2024-05-26 20:48:11', '2024-05-26 20:48:11', '2024-5-18', '08:00', 1, 3, 2, 1, '2024-5-18 09:55', 45.00, 80.00, '2024-5-18 08:00');
INSERT INTO `movie_cinema_hall_session` VALUES (15, '2024-05-26 20:50:07', '2024-05-26 20:50:07', '2024-5-18', '22:00', 1, 3, 10, 1, '2024-5-19 00:27', 55.00, 100.00, '2024-5-18 22:00');
INSERT INTO `movie_cinema_hall_session` VALUES (16, '2024-05-26 20:51:06', '2024-05-24 11:19:18', '2024-5-24', '20:00', 1, 3, 14, 1, '2024-5-24 22:03', 50.00, 66.00, '2024-5-24 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (17, '2024-05-26 20:53:22', '2024-05-26 20:53:22', '2024-5-18', '03:00', 1, 3, 7, 0, '2024-5-18 04:50', 35.00, 50.00, '2024-5-18 03:00');

-- ----------------------------
-- Table structure for movie_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `movie_database_bak`;
CREATE TABLE `movie_database_bak`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_database_bak
-- ----------------------------

-- ----------------------------
-- Table structure for movie_menu
-- ----------------------------
DROP TABLE IF EXISTS `movie_menu`;
CREATE TABLE `movie_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsbtnjocfrq29e8taxdwo21gic`(`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `movie_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_menu
-- ----------------------------
INSERT INTO `movie_menu` VALUES (2, '2024-05-14 14:26:03', '2024-05-14 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (3, '2024-05-14 16:58:55', '2024-05-14 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (5, '2024-05-14 17:04:44', '2024-05-14 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `movie_menu` VALUES (7, '2024-05-14 17:07:43', '2024-05-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (8, '2024-05-14 18:28:48', '2024-05-21 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `movie_menu` VALUES (9, '2024-05-14 18:30:00', '2024-05-21 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `movie_menu` VALUES (10, '2024-05-15 12:12:00', '2024-05-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `movie_menu` VALUES (11, '2024-05-15 12:12:36', '2024-05-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `movie_menu` VALUES (12, '2024-05-15 12:13:19', '2024-05-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `movie_menu` VALUES (13, '2024-05-15 12:14:52', '2024-05-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (14, '2024-05-15 12:15:22', '2024-05-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `movie_menu` VALUES (15, '2024-05-16 17:18:14', '2024-05-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `movie_menu` VALUES (16, '2024-05-16 17:19:01', '2024-05-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `movie_menu` VALUES (19, '2024-05-22 11:24:36', '2024-05-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `movie_menu` VALUES (20, '2024-05-22 14:09:35', '2024-05-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (21, '2024-05-22 14:11:39', '2024-05-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `movie_menu` VALUES (22, '2024-05-22 14:12:57', '2024-05-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `movie_menu` VALUES (27, '2024-05-03 20:31:22', '2024-05-03 20:31:40', '地域管理', '', 'mdi-map', 20, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (28, '2024-05-03 20:32:50', '2024-05-03 20:32:50', '地域列表', '/admin/area/list', 'mdi-map-marker-multiple', 21, 27, b'0', b'1');
INSERT INTO `movie_menu` VALUES (29, '2024-05-03 20:33:34', '2024-05-03 20:33:34', '添加', '/admin/area/add', 'mdi-map-marker-plus', 22, 28, b'0', b'1');
INSERT INTO `movie_menu` VALUES (30, '2024-05-03 20:34:38', '2024-05-03 20:34:38', '编辑', 'edit(\'/admin/area/edit\')', 'mdi-map-marker-radius', 23, 28, b'1', b'1');
INSERT INTO `movie_menu` VALUES (31, '2024-05-03 20:35:22', '2024-05-03 20:35:22', '删除', 'del(\'/admin/area/delete\')', 'mdi-map-marker-minus', 24, 28, b'1', b'1');
INSERT INTO `movie_menu` VALUES (32, '2024-05-06 17:55:12', '2024-05-06 18:10:56', '获取省份下的城市列表', '/admin/area/get_citys', 'mdi-format-list-bulleted', 25, 28, b'0', b'0');
INSERT INTO `movie_menu` VALUES (33, '2024-05-06 18:10:40', '2024-05-06 18:13:10', '影剧管理', '', 'mdi-movie', 26, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (34, '2024-05-06 18:12:51', '2024-05-06 18:12:51', '影剧列表', '/admin/movie/list', 'mdi-microsoft', 28, 33, b'0', b'1');
INSERT INTO `movie_menu` VALUES (35, '2024-05-06 18:16:11', '2024-05-06 18:16:11', '添加', '/admin/movie/add', 'mdi-plus-circle', 29, 34, b'0', b'1');
INSERT INTO `movie_menu` VALUES (36, '2024-05-06 18:16:54', '2024-05-13 18:30:50', '编辑', 'edit(\'/admin/movie/edit\')', 'mdi-border-color', 30, 34, b'1', b'1');
INSERT INTO `movie_menu` VALUES (37, '2024-05-06 18:18:09', '2024-05-06 18:18:09', '删除', 'del(\'/admin/movie/delete\')', 'mdi-minus-circle', 31, 34, b'1', b'1');
INSERT INTO `movie_menu` VALUES (38, '2024-05-13 14:45:57', '2024-05-13 20:58:39', '上传视频', '/upload/upload_video', 'mdi-arrow-expand-up', 32, 34, b'1', b'0');
INSERT INTO `movie_menu` VALUES (39, '2024-05-13 20:58:28', '2024-05-13 20:58:47', '剧院管理', '', 'mdi-store', 33, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (40, '2024-05-13 21:00:02', '2024-05-13 21:00:02', '剧院列表', '/admin/cinema/list', 'mdi-raspberrypi', 34, 39, b'0', b'1');
INSERT INTO `movie_menu` VALUES (41, '2024-05-13 21:02:55', '2024-05-13 21:02:55', '添加', '/admin/cinema/add', 'mdi-loupe', 35, 40, b'0', b'1');
INSERT INTO `movie_menu` VALUES (42, '2024-05-13 21:03:42', '2024-05-13 21:03:51', '编辑', 'edit(\'/admin/cinema/edit\')', 'mdi-pencil', 36, 40, b'1', b'1');
INSERT INTO `movie_menu` VALUES (43, '2024-05-13 21:04:28', '2024-05-13 21:04:28', '删除', 'del(\'/admin/cinema/delete\')', 'mdi-close', 37, 40, b'1', b'1');
INSERT INTO `movie_menu` VALUES (44, '2024-05-14 19:30:50', '2024-05-14 19:31:15', '获取城市下的区列表', '/admin/area/get_districts', 'mdi-circle-outline', 38, 28, b'1', b'0');
INSERT INTO `movie_menu` VALUES (45, '2024-05-15 19:44:19', '2024-05-15 19:44:34', '剧厅管理', '', 'mdi-hospital-building', 39, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (46, '2024-05-15 19:45:06', '2024-05-15 19:45:06', '剧厅列表', '/admin/cinema_hall/list', 'mdi-houzz', 41, 45, b'0', b'1');
INSERT INTO `movie_menu` VALUES (47, '2024-05-15 19:46:22', '2024-05-15 19:46:22', '添加', '/admin/cinema_hall/add', 'mdi-table-row-plus-after', 42, 46, b'0', b'1');
INSERT INTO `movie_menu` VALUES (48, '2024-05-15 19:47:06', '2024-05-15 19:47:06', '编辑', 'edit(\'/admin/cinema_hall/edit\')', 'mdi-eyedropper-variant', 43, 46, b'1', b'1');
INSERT INTO `movie_menu` VALUES (49, '2024-05-15 19:47:37', '2024-05-15 19:47:37', '删除', 'del(\'/admin/cinema_hall/delete\')', 'mdi-close', 44, 46, b'1', b'1');
INSERT INTO `movie_menu` VALUES (50, '2024-05-15 19:48:36', '2024-05-15 19:48:36', '编辑座位', 'editSeat(\'/admin/cinema_hall/edit_seat\')', 'mdi-gate', 45, 46, b'1', b'1');
INSERT INTO `movie_menu` VALUES (51, '2024-05-17 19:53:01', '2024-05-17 19:53:01', '排片管理', '', 'mdi-filmstrip', 46, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (52, '2024-05-17 19:55:38', '2024-05-17 19:55:38', '场次列表', '/admin/cinema_hall_session/list', 'mdi-film', 47, 51, b'0', b'1');
INSERT INTO `movie_menu` VALUES (53, '2024-05-17 19:56:31', '2024-05-17 19:56:31', '添加', '/admin/cinema_hall_session/add', 'mdi-plus-circle', 48, 52, b'0', b'1');
INSERT INTO `movie_menu` VALUES (54, '2024-05-17 19:57:03', '2024-05-17 19:57:03', '编辑', 'edit(\'/admin/cinema_hall_session/edit\')', 'mdi-border-color', 49, 52, b'1', b'1');
INSERT INTO `movie_menu` VALUES (55, '2024-05-17 19:57:33', '2024-05-17 19:57:33', '删除', 'del(\'/admin/cinema_hall_session/delete\')', 'mdi-filmstrip-off', 50, 52, b'1', b'1');
INSERT INTO `movie_menu` VALUES (56, '2024-05-17 20:03:43', '2024-05-17 20:03:43', '根据剧院查找所属影剧', '/admin/cinema_hall/get_cinema_halls', 'mdi-autorenew', 51, 46, b'0', b'0');
INSERT INTO `movie_menu` VALUES (57, '2024-05-21 21:51:27', '2024-05-21 21:51:27', '新闻资讯', '', 'mdi-note-text', 52, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (58, '2024-05-21 21:52:15', '2024-05-21 21:52:15', '分类管理', '/admin/news_category/list', 'mdi-clipboard-text', 53, 57, b'0', b'1');
INSERT INTO `movie_menu` VALUES (59, '2024-05-21 21:53:06', '2024-05-21 21:53:06', '添加', '/admin/news_category/add', 'mdi-library-plus', 54, 58, b'0', b'1');
INSERT INTO `movie_menu` VALUES (60, '2024-05-21 21:53:40', '2024-05-21 21:53:40', '编辑', 'edit(\'/admin/news_category/edit\')', 'mdi-border-color', 55, 58, b'1', b'1');
INSERT INTO `movie_menu` VALUES (61, '2024-05-21 21:54:15', '2024-05-21 21:54:15', '删除', 'del(\'/admin/news_category/delete\')', 'mdi-close', 56, 58, b'1', b'1');
INSERT INTO `movie_menu` VALUES (62, '2024-05-21 21:54:45', '2024-05-21 21:54:45', '资讯管理', '/admin/news/list', 'mdi-angular', 57, 57, b'0', b'1');
INSERT INTO `movie_menu` VALUES (63, '2024-05-21 21:55:20', '2024-05-21 21:55:20', '添加', '/admin/news/add', 'mdi-plus-circle', 58, 62, b'0', b'1');
INSERT INTO `movie_menu` VALUES (64, '2024-05-21 21:55:42', '2024-05-21 21:55:52', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', 59, 62, b'1', b'1');
INSERT INTO `movie_menu` VALUES (65, '2024-05-21 21:56:43', '2024-05-21 21:56:43', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', 60, 62, b'1', b'1');
INSERT INTO `movie_menu` VALUES (66, '2024-05-06 21:11:12', '2024-05-06 21:11:25', '用户管理', '', 'mdi-account-multiple', 61, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (67, '2024-05-06 21:13:24', '2024-05-06 21:13:24', '用户列表', '/admin/account/list', 'mdi-account-settings-variant', 62, 66, b'0', b'1');
INSERT INTO `movie_menu` VALUES (68, '2024-05-06 21:14:30', '2024-05-06 21:14:30', '编辑状态', 'edit(\'/admin/account/edit\')', 'mdi-account-settings-variant', 63, 67, b'1', b'1');
INSERT INTO `movie_menu` VALUES (69, '2024-05-06 21:49:02', '2024-05-06 21:49:02', '订单管理', '', 'mdi-currency-cny', 64, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (70, '2024-05-06 21:49:44', '2024-05-06 21:49:44', '订单列表', '/admin/order/list', 'mdi-currency-usd', 65, 69, b'0', b'1');
INSERT INTO `movie_menu` VALUES (71, '2024-05-06 21:52:28', '2024-05-06 21:52:28', '查看详情', 'view(\'/admin/order/view_detail\')', 'mdi-eye', 66, 70, b'1', b'1');
INSERT INTO `movie_menu` VALUES (72, '2024-05-07 11:55:35', '2024-05-07 11:55:35', '支付管理', '', 'mdi-currency-usd', 67, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (73, '2024-05-07 11:56:20', '2024-05-07 11:56:20', '支付列表', '/admin/pay_log/list', 'mdi-database', 68, 72, b'0', b'1');
INSERT INTO `movie_menu` VALUES (74, '2024-05-07 12:11:27', '2024-05-07 12:11:27', '评价管理', '/admin/movie/comment_list', 'mdi-comment-multiple-outline', 69, 33, b'0', b'1');
INSERT INTO `movie_menu` VALUES (75, '2024-05-07 12:12:59', '2024-05-07 12:12:59', '删除', 'deleteComment(\'/admin/movie/delete_comment\')', 'mdi-message-draw', 70, 74, b'1', b'1');
INSERT INTO `movie_menu` VALUES (76, '2024-05-07 12:46:45', '2024-05-07 12:46:45', '评价管理', '/admin/cinema/comment_list', 'mdi-comment-text', 71, 39, b'0', b'1');
INSERT INTO `movie_menu` VALUES (77, '2024-05-07 12:47:19', '2024-05-07 12:47:19', '删除', 'deleteComment(\'/admin/cinema/delete_comment\')', 'mdi-do-not-disturb', 72, 76, b'1', b'1');

-- ----------------------------
-- Table structure for movie_movie
-- ----------------------------
DROP TABLE IF EXISTS `movie_movie`;
CREATE TABLE `movie_movie`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `abs` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `actor` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` int(11) NULL DEFAULT NULL,
  `directed_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `info` varchar(1280) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` decimal(19, 2) NULL DEFAULT NULL,
  `show_time` datetime NULL DEFAULT NULL,
  `time` int(11) NULL DEFAULT NULL,
  `total_money` decimal(19, 2) NULL DEFAULT NULL,
  `type` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_show` bit(1) NULL DEFAULT NULL,
  `rate_count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_movie
-- ----------------------------
INSERT INTO `movie_movie` VALUES (1, '2024-05-14 21:11:31', '2024-06-01 04:05:56', '月黑高飞(港) / 刺激1995(台) / 地狱诺言 / 铁窗岁月 / 消香克的救赎', '辛柏青领衔主演', 0, '田沁鑫、高蕾蕾', '2023年11月22日，中国国家话剧院受邀第十八届中国戏剧节，原创话剧《苏堤春晓》在杭州大剧院上演，荣获“优秀剧目奖”。在观众的期待下，《苏堤春晓》剧组春节后迅速集结北京，积极修改打磨提高，迎接北京首演。', 1, '中国国家话剧院《苏堤春晓》 ', '20240601/1717214582580.jpg', 9.51, '2024-04-14 23:55:00', 142, 180.00, 'Plot,Other', '20240506/1601998356103.mp4', b'1', 4);
INSERT INTO `movie_movie` VALUES (2, '2024-05-17 21:49:32', '2024-05-06 13:46:32', '花木兰 Mulan (2020)', ' 刘亦菲 / 甄子丹 / 巩俐 / 李连杰 / 李截 / 安柚鑫', 3, '妮琪·卡罗', '迪士尼影业荣誉出品《花木兰》由备受赞誉的影剧导演妮基·卡罗执导，将中国传奇战士的史诗故事全新呈现。影片讲述了一位无所畏惧的年轻女子义无反顾为家国而战，成为中国史上最著名的伟大勇士之一。当皇帝下令境内每个家庭必须有一位男丁应召出征，抵御北方来犯者入侵，出身军戎之家的长女花木兰，挺身而出，替病痛缠身的父亲应征入伍。她女扮男装化名“花军”，一路历经磨练，驾驭自己内心的力量，激发真正的潜能。通过这段传奇历程，她将成为一名光荣的勇士，不仅赢得国家的认可，更博得父亲的骄傲。', 1, '花木兰 Mulan (2020)', '20240517/1600350485608.jpg;20240517/1600350489371.jpg;20240517/1600350492749.jpg', 6.00, '2024-05-11 00:00:00', 115, 0.00, 'Action,Plot,Science', '', b'1', 1);
INSERT INTO `movie_movie` VALUES (3, '2024-05-19 10:37:42', '2024-05-06 13:46:54', '墨西哥亡灵节', '盖尔·加西亚·贝纳尔 / 安东尼·冈萨雷斯 / 本杰明·布拉特 / 芮妮·维克托 / 安娜·奥菲丽亚·莫吉亚', 3, '李·昂克里奇 / 阿德里安·莫利纳', '寻梦环游记', 0, '寻梦环游记', '20240519/1600482941012.jpg', 9.00, '2024-05-19 00:00:00', 105, 0.00, 'Comedy,Action,Science,Cartoon,Horror', '', b'1', 1);
INSERT INTO `movie_movie` VALUES (4, '2024-05-19 10:39:55', '2024-05-06 13:47:13', '', '安娜·肯德里克,贾斯汀·汀布莱克,詹米·多南,山姆·洛克威尔,詹姆斯·柯登', 3, '迈克·米歇尔, 大卫·史密斯', '魔发精灵2', 1, '魔发精灵2', '20240519/1600483140287.jpg', 9.00, '2024-05-17 00:00:00', 90, 0.00, 'Comedy,Plot,Science,Cartoon,Other', '', b'1', 1);
INSERT INTO `movie_movie` VALUES (5, '2024-05-19 10:44:29', '2024-05-06 13:47:36', '', '威尔·史密斯,马丁·劳伦斯', 3, '阿迪尔·埃尔·阿比, 比拉勒·法拉赫', '曾制作《珍珠港》、《壮志凌云》、《加勒比海盗》系列等爆款影剧的好莱坞金牌制片人全新倾力打造的《绝地战警：疾速追击》，讲述了迈阿密警员麦克（威尔·史密斯饰）遭遇神秘黑帮势力的暗杀伏击，为了迎战势力庞大火力惊人的黑帮分子，解决隐藏在暗处的危机，麦克找回曾经的搭档马库斯（马丁·劳伦斯饰），“嘴炮二人组”再度集结开启沙雕模式，不仅时刻上演逗比互怼，更在迈阿密街头与黑帮展开空前绝后的飙车枪战大戏。这对最佳搭档究竟能否在枪林弹雨下突出重围，找出幕后黑手完成绝地反杀？', 1, '绝地战警：疾速追击', '20240519/1600483323364.jpg;20240519/1600483339214.jpg;20240519/1600483346432.jpg;20240519/1600483352829.jpg;20240519/1600483365293.jpg;20240519/1600483378658.jpg;20240519/1600483399059.jpg', 9.00, '2018-09-13 00:00:00', 124, 0.00, 'Love,Comedy,Action,Plot,Science,Horror,Crime', '20240519/1600483423387.mp4', b'1', 1);
INSERT INTO `movie_movie` VALUES (6, '2024-05-19 10:52:20', '2024-05-06 15:10:39', '一生所爱', '周星驰 / 吴孟达 / 朱茵 / 蔡少芬 / 蓝洁瑛', 1, '刘镇伟', '大话西游之大圣娶亲', 2, '大话西游之大圣娶亲', '20240519/1600483728314.jpg', 9.50, '1996-06-12 00:00:00', 95, 0.00, 'Love,Comedy,Action,Science,Fantasy,Adventure', '', b'1', 2);
INSERT INTO `movie_movie` VALUES (7, '2024-05-19 10:56:07', '2024-05-19 10:56:07', '殊死一搏的较量', '肖央,谭卓,陈冲,姜皓文,秦沛', 0, '柯汶利', '误杀——殊死一搏的较量！！！', 0, '误杀', '20240519/1600484100745.jpg', 0.00, '2019-07-19 00:00:00', 110, 0.00, 'Action,Plot,Horror,Crime', '', b'1', 0);
INSERT INTO `movie_movie` VALUES (8, '2024-05-19 11:01:15', '2024-06-01 04:15:08', '生而为魔,那又如何?', '国家大剧院合唱团', 0, '蔡佳涵/董岱', ' 音乐的旅途中尽享美好与欢乐。国家大剧院合唱团已走过十五年的光辉历程，合唱团的艺术家们把人生中最有活力、最有张力的青春时光奉献给歌剧与合唱事业。展望新征程，国家大剧院合唱团将继续不忘初心，踏歌前行！', 0, '“童梦同行”系列之《白雪公主》与《龙的传说》情景音乐会/国家大剧院合唱团六一儿童节音乐会 ', '20240601/1717215305988.jpg', 0.00, '2024-06-01 00:00:00', 110, 0.00, 'Action,Plot,Science,Cartoon,Fantasy,Adventure', '20240519/1600484404952.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (9, '2024-05-19 11:13:02', '2024-06-01 04:12:28', '本片围绕莫里康内与托纳多雷的对话，众多名导悉数登场从旁讲述这位音乐大师带给他们的无限灵感。 ', '恩尼奥·莫里康内、昆汀·塔伦蒂诺、贝纳尔多·贝托鲁奇、克林特·伊斯特伍德、罗曼·波兰斯基、汉斯·季默、王家卫', 8, '朱塞佩·托纳多雷', '本片围绕莫里康内与托纳多雷的对话，众多名导悉数登场从旁讲述这位音乐大师带给他们的无限灵感。 ', 1, '《莫里康内·音魂掠影》', '20240601/1717215145478.jpg', 0.00, '2024-05-10 00:00:00', 112, 0.00, 'Love,Plot', '', b'1', 0);
INSERT INTO `movie_movie` VALUES (10, '2024-05-19 11:16:45', '2024-06-01 04:08:12', '四百人对外号称八百人', '佛罗伦萨五月音乐节管弦乐团', 4, '祖宾·梅塔', '祖宾·梅塔与佛罗伦萨五月音乐节管弦乐团音乐会', 1, '祖宾·梅塔与佛罗伦萨五月音乐节管弦乐团音乐会 ', '20240601/1717214790193.jpg', 0.00, '2024-06-24 00:00:00', 147, 0.00, 'Action,Plot,Horror,Crime,Fantasy,Adventure', '20240519/1600485398822.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (11, '2024-05-19 11:24:38', '2024-06-01 04:01:44', ' 亦彩亦墨，墨中含彩，彩中含墨；大气行云，一墨而五色具。   万象大千，浮空投影；可行、可观、可居、可游的想象空间。', ' 黄焜明、苏于轩、张雅伦、欧桂兰、刘书志、刘品岑   甘柏驹、许瀞方、杨孟儒、萧人豪、陈勇宁、林敬升   姚喻文、陈心缘、林庭安、黄裕庭、周俊宗、陈尚君   欧华咏、钟沂蓁', 0, '刘若瑀', '《墨具五色2.0》源自于黄志群对于书法家董阳孜《老庄说》气势恢宏的艺术大作，领悟出“一墨而五色具，五色又源于墨”的相生关系，将击鼓结合巨型铜锣、瑟、笛等呈现音乐新风貌。以及导演刘若瑀之于恩师葛陀夫斯基《庄周梦蝶》的叩问，结合泼彩画家柯淑玲的画作，与影像设计王奕盛、舞台暨灯光设计林克华等合作共创，服装亦邀请UUIN品牌团队设计制作。呈现出优人前所未有的缤纷与斑斓。', 0, '泱泱国风·舞动经典：优人神鼓《墨具五色2.0》 ', '20240601/1717214400540.jpg', 0.00, '2020-08-25 00:00:00', 120, 0.00, 'Love,Horror,Crime,Fantasy', '20240519/1600485821794.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (12, '2024-05-19 11:28:33', '2024-06-01 03:59:35', '感受过山车般的观剧体验，一起直面最真实的人性', ' 张惠庆  ', 0, '汪洋秭、田水 、喻荣军', '话剧《完美陌生人》根据意大利同名电影改编，首次被搬上中国话剧舞台。原版电影曾获得2016年意大利电影大卫奖最佳影片、最佳电影剧本，2016年纽约翠贝卡电影节——最佳电影剧本，2016年意大利本土电影票房黑马。有媒体评价这部电影触及了“全人类共通的恐惧”。它在法国、德国、西班牙、希腊、韩国、土耳其、瑞典、俄罗斯、韩国等众多国家被翻拍场不同版本，创下被翻拍次数最多的吉尼斯世界纪录，其版权更是卖至三十多个国家。它揭露了人性的复杂和神秘，即使是我们本认为最了解的人，也不一定能真正看清其本质。电影《完美陌生人》的编剧及导演，也是话剧《完美陌生人》的原作者保罗·杰诺维塞曾说道：“这部电影描绘出了我们无法坦白的秘密生活。二十年前，我们的秘密还保存在我们的内心深处。而如今，它们被埋藏在我们的手机里。”   《完美陌生人》的故事情节真实而残酷，充满戏剧性。一部小小的手机，就把成年人的世界搅得天翻地覆。当秘密不再是秘密，我们将如何面对真实的他人和自己？欢迎走进剧场，进入《完美陌生人》的“密室”，来一场悬念重重的手机版“真心话大冒险”，感受过山车般的观剧体验，一起直面最真实的人性……', 1, '上海话剧艺术中心《完美陌生人》', '20240601/1717214233446.jpg', 0.00, '2020-08-19 00:00:00', 102, 0.00, 'Love,Action,Science,Cartoon,Fantasy,Adventure', '20240519/1600486065711.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (13, '2024-05-19 11:32:53', '2024-06-01 03:56:55', '鱼游回来了', '吕绍嘉、朱慧玲与国家大剧院管弦乐团', 2, '指挥：吕绍嘉', '演出《汤豪塞》《西班牙时光》《卡门》等歌剧，以及马勒第二&第三&第八交响曲、《大地之歌》、威尔第《安魂曲》、首演叶小纲的《草原之歌》、《鲁迅》《创世秘符》等作品', 0, '吕绍嘉、朱慧玲与国家大剧院管弦乐团演绎马勒第三交响曲音乐会 ', '20240601/1717214089510.jpg', 0.00, '2024-05-05 00:00:00', 105, 0.00, 'Science,Cartoon,Fantasy', '20240519/1600486348627.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (14, '2024-05-19 11:37:09', '2024-06-01 03:54:29', '新战狼 / 新战死沙场 / Wolf Warriors 2', '俄罗斯亚历山大红旗歌舞团团长/艺术总监   俄罗斯联邦功勋文化工作者   北奥塞梯共和国人民艺术家', 8, '萨切纽克·根纳季', ' 俄罗斯亚历山大红旗歌舞团成立于1928年，由前苏联国歌的曲作者、天才的指挥家亚历山大·瓦西里耶其·亚历山大罗夫创立，是俄罗斯历史最悠久、规模最宏大、最负盛名的军队歌舞艺术团体，以高超的艺术水准、丰富的演出节目、浓郁的民族色彩而成为世界最优秀的军队歌舞团，声名远扬。 时至今日，红旗歌舞团已经走过90余年的辉煌历程，气势磅礴的合唱和热情奔放的舞蹈融合了独特的苏联军旅艺术和俄罗斯民族艺术，他们的歌声不仅在苏联卫国战争中激励了千百万苏联人民，更在世界范围内影响了几代人。', 1, '俄罗斯亚历山大红旗歌舞团“神圣与荣耀”音乐会 ', '20240601/1717213941176.jpg', 9.76, '2017-08-15 00:00:00', 123, 150.00, 'Comedy,Action,Science,Terror,Crime,Fantasy,Adventure,Other', '20240519/1600486614347.mp4', b'1', 4);
INSERT INTO `movie_movie` VALUES (15, '2024-05-19 11:41:53', '2024-06-01 03:51:21', '童心逐梦', '北京爱乐合唱团', 0, ' 杨力，中央音乐学院指挥系教授、天津交响乐团常任指挥、北京爱乐合唱团团长兼艺术总监。', '曲目\r\n\r\n青春舞曲                新疆民歌 王世光 改编\r\n\r\n帕米尔风情               宋延勋 词 章吉华 曲\r\n\r\n牧歌                  东蒙民歌 瞿希贤 编曲 杨鸿年 改编童声合唱\r\n\r\n云南即景：春回大地           云南民歌 谢振南、杨鸿年 编曲\r\n\r\n云南即景：翠谷双回声          杨鸿年、党永庵 词 杨鸿年 曲\r\n\r\n阿哩哩                 西族民歌 官宇 编创 李蕙雯 纳西语填词\r\n\r\n对鸟                  温州民歌 温雨川 词曲\r\n\r\n让我们荡起双桨             乔羽 词 刘炽 曲\r\n\r\n鸭子拌嘴                张军 曲\r\n\r\n引子与托卡塔              杨鸿年 曲\r\n\r\n秋千                  陈小奇 词 晓耕、王育明 曲', 0, '“童心逐梦”北京爱乐合唱团中外名曲童声合唱音乐会 ', '20240601/1717213775067.jpg', 0.00, '2024-05-02 00:00:00', 99, 0.00, 'Love,Fantasy,Adventure,Other', '20240519/1600486864383.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (16, '2024-05-19 11:48:17', '2024-06-01 03:45:36', '星际启示录(港) / 星际效应(台) / 星际空间 / 星际之间 / 星际远航 / 星际 / Flora\'s Letter', '乔伊斯·迪多纳托与黄金苹果古乐团音乐会 ', 3, '“自然乐园”乔伊斯·迪多纳托与黄金苹果古乐团音乐会 ', '“自然乐园”乔伊斯·迪多纳托与黄金苹果古乐团音乐会 ', 1, '“自然乐园”乔伊斯·迪多纳托与黄金苹果古乐团音乐会 ', '20240519/1600487200518.jpg;20240601/1717213484597.jpg', 0.00, '2014-07-18 00:00:00', 169, 0.00, 'Fantasy,Adventure', '20240519/1600487204030.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (17, '2024-05-24 21:20:20', '2024-06-01 03:42:07', '', '张昊辰与巴黎室内乐团音乐会', 0, '张昊辰与巴黎室内乐团音乐会', '“英雄意气”张昊辰与巴黎室内乐团音乐会 ', 0, '“英雄意气”张昊辰与巴黎室内乐团音乐会 【售卖中】', '20240601/1717213207819.jpg', 0.00, '2024-05-01 00:00:00', 110, 0.00, 'Comedy,Plot,Other', '20240524/1600954305605.mp4', b'1', 0);

-- ----------------------------
-- Table structure for movie_movie_comment
-- ----------------------------
DROP TABLE IF EXISTS `movie_movie_comment`;
CREATE TABLE `movie_movie_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rate` decimal(19, 2) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKtdpkp5fleo773wbsiqec0y5er`(`account_id`) USING BTREE,
  INDEX `FK95583yxmyntkckphhs5ktmknr`(`movie_id`) USING BTREE,
  CONSTRAINT `FK95583yxmyntkckphhs5ktmknr` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKtdpkp5fleo773wbsiqec0y5er` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_movie_comment
-- ----------------------------
INSERT INTO `movie_movie_comment` VALUES (1, '2024-05-06 13:26:41', '2024-05-06 13:26:41', '真的很不错！', 9.00, 3, 1);
INSERT INTO `movie_movie_comment` VALUES (2, '2024-05-06 13:27:25', '2024-05-06 13:27:25', '太好了，好久没看过这样的舞蹈剧了！！！', 10.00, 3, 1);
INSERT INTO `movie_movie_comment` VALUES (3, '2024-05-06 13:46:32', '2024-05-06 13:46:32', '感觉一般嘛！！！', 6.00, 3, 2);
INSERT INTO `movie_movie_comment` VALUES (4, '2024-05-06 13:46:54', '2024-05-06 13:46:54', '还没看过，感觉很不错的样子。', 9.00, 3, 3);
INSERT INTO `movie_movie_comment` VALUES (5, '2024-05-06 13:47:13', '2024-05-06 13:47:13', '这个枕边没看过。', 9.00, 3, 4);
INSERT INTO `movie_movie_comment` VALUES (6, '2024-05-06 13:47:36', '2024-05-06 13:47:36', '这个歌舞剧很好看，强烈建议！', 9.00, 3, 5);
INSERT INTO `movie_movie_comment` VALUES (7, '2024-05-06 13:47:59', '2024-05-06 13:47:59', '莫扎特的经典，必须满分！', 10.00, 3, 6);
INSERT INTO `movie_movie_comment` VALUES (8, '2024-05-06 15:09:05', '2024-05-06 15:09:05', '又看了一遍，真的太好了！', 9.00, 3, 1);
INSERT INTO `movie_movie_comment` VALUES (9, '2024-05-06 15:10:39', '2024-05-06 15:10:39', '好好好好好好好好好好好好好好好好好好好好好好好好好好好好！', 9.00, 3, 6);
INSERT INTO `movie_movie_comment` VALUES (10, '2024-05-06 20:15:21', '2024-05-06 20:15:21', '战狼牛逼！！！', 10.00, 3, 14);
INSERT INTO `movie_movie_comment` VALUES (11, '2024-05-06 23:34:16', '2024-05-06 23:34:16', '我好喜欢这位歌唱家！', 9.00, 2, 14);
INSERT INTO `movie_movie_comment` VALUES (12, '2024-05-06 23:34:39', '2024-05-06 23:34:39', '牛！', 10.00, 2, 14);
INSERT INTO `movie_movie_comment` VALUES (14, '2024-05-24 17:37:05', '2024-05-24 17:37:05', '这个影剧不错，很值得看', 10.00, 5, 14);

-- ----------------------------
-- Table structure for movie_news
-- ----------------------------
DROP TABLE IF EXISTS `movie_news`;
CREATE TABLE `movie_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `abs` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(2560) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_num` int(11) NULL DEFAULT NULL,
  `news_category_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKeo3d5beecg1tuom3di7rtlv2b`(`news_category_id`) USING BTREE,
  CONSTRAINT `FKeo3d5beecg1tuom3di7rtlv2b` FOREIGN KEY (`news_category_id`) REFERENCES `movie_news_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_news
-- ----------------------------
INSERT INTO `movie_news` VALUES (1, '2024-05-22 20:24:23', '2024-05-31 15:27:20', '活动期间，中国银行信用卡持卡用户每自然月可计积分消费金额累计满888元（含），次月10日后即可获得2次10元特惠购票权益。删掉后发神经看大黄房顶上即可舒服哈空间房顶上健康和第三方房顶上见客户', '活动一：活动期间，中国银行信用卡持卡用户每自然月可计积分消费金额累计满888元（含），次月10日后即可获得2次10元特惠购票权益，每份权益最多可购买1张特惠影剧票，特惠影剧票每月限量1300张，先到先得。\r\n\r\n二、京银行1元观影\r\n\r\n活动二：活动期间，凡通过中国银行泉州分行核发且在活动期间成功激活名下首张中国银行银联标识信用卡的持卡人，于激活次月即可获1元观影权益两次。每份权益最多可购买1张特惠影剧票，特惠影剧票每月限量1000张，先到先得。\r\n\r\n\r\n\r\n     活动参与流程：\r\n\r\n（1）客户关注、登录“中国银行泉州分行”微信公众号；\r\n\r\n（2）点击菜单-京彩生活-特惠观影，达标客户页面可享受特惠购票权益；\r\n\r\n（3） 点击“立即购票”，选择有“10元抢票”/“1元抢票”标识的影片场次，选座完成后点击“确定”；\r\n\r\n（4） 支付时，选择“中国银行信用卡”或微信中绑定的中国银行信用卡支付，点击“立即支付”；\r\n\r\n（5） 支付完成后，可在“个人中心”中查看订单详情。', '20240522/1600780600459.jpg', '中国银行1元、10元观影', 14, 1);
INSERT INTO `movie_news` VALUES (3, '2024-05-22 21:20:49', '2024-05-31 15:25:56', '活动期间，2019年5月1日至2020年4月30日。白金卡客户无需抢券，每月可至“淘票票银行信用卡”获取一次白金卡6元观影专享权益。', '活动期间，白金卡客户无需抢券，每月可至“中国银行信用卡”官方微信-粉丝福利-惠生活活动入口自动获取一次白金卡6元观影专享权益。获取6元观影权益成功后，即可在活动当月至全省指定影城享6元看2D或3D影剧的劲爆优惠，一次权益最多可购买2张影剧票（55元以上影票不参与该活动） \r\n\r\n\r\n活动时间：2019年5月1日至2020年4月30日\r\n\r\n\r\n 使用流程 ：\r\n\r\n\r\n（1）关注“中国银行信用卡”微信公众账号，点击菜单栏-粉丝福利-惠生活菜单。\r\n\r\n（2）点击影票，进入“白金私享家6元观影通道”入口 \r\n\r\n（3）查看活动详情，点击“立即购票” \r\n\r\n（4）选择影片、剧院、场次、座位等（跳转支付页面时，未登录用户需先进行登录）\r\n\r\n（5）进入支付页面时，选择“中国银行白金信用卡”支付方式，输入中国银行白金信用卡16位卡号进行验证。验证成功后，跳转银联支付（每个白金卡用户每次最多可购买2张6元影剧票，超出票数按正常价结算） \r\n\r\n（6）成功出票后，凭取票码至剧院取票机取票即可。', '20240522/1600780845730.png', '大剧院银行白金卡6元观影', 15, 4);

-- ----------------------------
-- Table structure for movie_news_category
-- ----------------------------
DROP TABLE IF EXISTS `movie_news_category`;
CREATE TABLE `movie_news_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_news_category
-- ----------------------------
INSERT INTO `movie_news_category` VALUES (1, '2024-05-22 20:24:23', '2024-05-22 20:29:46', '影剧资讯', '影剧资讯');
INSERT INTO `movie_news_category` VALUES (3, '2024-05-22 20:30:19', '2024-05-22 20:30:19', '精彩剧评', '');
INSERT INTO `movie_news_category` VALUES (4, '2024-05-22 20:30:24', '2024-05-22 21:10:43', '行业资讯', '');
INSERT INTO `movie_news_category` VALUES (6, '2024-05-22 21:10:50', '2024-05-22 21:10:50', '其他', '');

-- ----------------------------
-- Table structure for movie_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `movie_operater_log`;
CREATE TABLE `movie_operater_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 439 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_operater_log
-- ----------------------------
INSERT INTO `movie_operater_log` VALUES (424, '2024-05-31 11:08:02', '2024-05-31 11:08:02', '用户【admin】于【2024-05-31 19:08:02】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (425, '2024-05-31 15:34:00', '2024-05-31 15:34:00', '用户【admin】于【2024-05-31 23:34:00】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (426, '2024-05-31 15:46:39', '2024-05-31 15:46:39', '用户【admin】于【2024-05-31 23:46:39】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (427, '2024-05-31 16:02:49', '2024-05-31 16:02:49', '用户【admin】于【2024-06-01 00:02:49】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (428, '2024-05-31 16:13:15', '2024-05-31 16:13:15', '用户【admin】于【2024-06-01 00:13:15】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (429, '2024-05-31 16:15:25', '2024-05-31 16:15:25', '用户【admin】于【2024-06-01 00:15:25】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (430, '2024-05-31 16:31:18', '2024-05-31 16:31:18', '用户【admin】于【2024-06-01 00:31:18】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (431, '2024-06-01 00:39:34', '2024-06-01 00:39:34', '用户【admin】于【2024-06-01 08:39:34】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (432, '2024-06-01 00:53:59', '2024-06-01 00:53:59', '用户【admin】于【2024-06-01 08:53:59】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (433, '2024-06-01 01:38:35', '2024-06-01 01:38:35', '用户【admin】于【2024-06-01 09:38:35】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (434, '2024-06-01 01:56:17', '2024-06-01 01:56:17', '用户【admin】于【2024-06-01 09:56:17】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (435, '2024-06-01 02:11:33', '2024-06-01 02:11:33', '用户【admin】于【2024-06-01 10:11:33】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (436, '2024-06-01 03:07:54', '2024-06-01 03:07:54', '用户【admin】于【2024-06-01 11:07:53】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (437, '2024-06-01 03:24:30', '2024-06-01 03:24:30', '用户【admin】于【2024-06-01 11:24:30】登录系统！', 'admin');
INSERT INTO `movie_operater_log` VALUES (438, '2024-06-01 03:37:33', '2024-06-01 03:37:33', '用户【admin】于【2024-06-01 11:37:32】登录系统！', 'admin');

-- ----------------------------
-- Table structure for movie_order
-- ----------------------------
DROP TABLE IF EXISTS `movie_order`;
CREATE TABLE `movie_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `new_money` decimal(19, 2) NOT NULL,
  `num` int(11) NOT NULL,
  `old_money` decimal(19, 2) NOT NULL,
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` bigint(20) NULL DEFAULT NULL,
  `cinema_hall_session_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_cnu3vqqup53vhukxwq1gmeaes`(`sn`) USING BTREE,
  INDEX `FK4nx0uodwjhqllqmakjojxhh5h`(`account_id`) USING BTREE,
  INDEX `FKopxdihwe2006wcpuwumtneaep`(`cinema_hall_session_id`) USING BTREE,
  CONSTRAINT `FK4nx0uodwjhqllqmakjojxhh5h` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKopxdihwe2006wcpuwumtneaep` FOREIGN KEY (`cinema_hall_session_id`) REFERENCES `movie_cinema_hall_session` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_order
-- ----------------------------
INSERT INTO `movie_order` VALUES (5, '2024-05-05 18:40:35', '2024-05-05 18:40:35', 100.00, 2, 132.00, 'B0F14C6961E5432A9A3131901ABCD050', -1, 3, 16);
INSERT INTO `movie_order` VALUES (7, '2024-05-05 20:05:07', '2024-05-05 20:05:07', 90.00, 2, 160.00, '818F04092571481988B9E12018C2D8D0', -1, 3, 2);
INSERT INTO `movie_order` VALUES (8, '2024-05-05 20:09:33', '2024-05-05 20:09:33', 90.00, 2, 160.00, '1556F8B7D2924F639414BED65888B126', -1, 3, 2);
INSERT INTO `movie_order` VALUES (9, '2024-05-05 20:14:02', '2024-05-05 20:14:02', 90.00, 2, 160.00, '1DA77B6B8029493CB1F62B661139FC51', -1, 3, 2);
INSERT INTO `movie_order` VALUES (10, '2024-05-05 21:01:40', '2024-05-05 21:01:40', 90.00, 2, 160.00, 'EC72ED5D0A5B41BC830A15CA30BF4BAF', 1, 3, 2);
INSERT INTO `movie_order` VALUES (11, '2024-05-05 21:08:18', '2024-05-05 21:08:18', 90.00, 2, 160.00, 'E94AB06246B04039B3612BA42F6CD11A', -1, 3, 2);
INSERT INTO `movie_order` VALUES (12, '2024-05-05 22:53:31', '2024-05-05 22:53:31', 180.00, 4, 320.00, '993C436F83DC4BE29E14104CBA9025C9', -1, 3, 2);
INSERT INTO `movie_order` VALUES (13, '2024-05-06 13:48:37', '2024-05-06 13:48:37', 126.00, 2, 200.00, '0438D65D9ABD4D80816457ACD9265B02', -1, 3, 7);
INSERT INTO `movie_order` VALUES (14, '2024-05-07 12:58:58', '2024-05-07 12:58:58', 180.00, 4, 320.00, 'F945D593BF3F48BFAE36107885457064', 1, 3, 2);
INSERT INTO `movie_order` VALUES (16, '2024-05-24 16:07:03', '2024-05-24 16:07:03', 100.00, 2, 132.00, 'E5395E4DE6924CB18D4772D3026F4446', 1, 3, 16);
INSERT INTO `movie_order` VALUES (17, '2024-05-24 17:35:35', '2024-05-24 17:35:35', 50.00, 1, 66.00, '061720C98EBC4B119BDBDF28CBC01B3F', 1, 5, 16);

-- ----------------------------
-- Table structure for movie_order_auth
-- ----------------------------
DROP TABLE IF EXISTS `movie_order_auth`;
CREATE TABLE `movie_order_auth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `mac` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_sn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_order_auth
-- ----------------------------

-- ----------------------------
-- Table structure for movie_order_item
-- ----------------------------
DROP TABLE IF EXISTS `movie_order_item`;
CREATE TABLE `movie_order_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `money` decimal(19, 2) NOT NULL,
  `cinema_hall_seat_id` bigint(20) NULL DEFAULT NULL,
  `order_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK4v4n8mbmsr8kjhp6opof81sqy`(`cinema_hall_seat_id`) USING BTREE,
  INDEX `FKnptvb10fv8g48jsej6qj0d4aw`(`order_id`) USING BTREE,
  CONSTRAINT `FK4v4n8mbmsr8kjhp6opof81sqy` FOREIGN KEY (`cinema_hall_seat_id`) REFERENCES `movie_cinema_hall_seat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKnptvb10fv8g48jsej6qj0d4aw` FOREIGN KEY (`order_id`) REFERENCES `movie_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_order_item
-- ----------------------------
INSERT INTO `movie_order_item` VALUES (4, '2024-05-05 18:40:35', '2024-05-05 18:40:35', 50.00, 104, 5);
INSERT INTO `movie_order_item` VALUES (5, '2024-05-05 18:40:35', '2024-05-05 18:40:35', 50.00, 105, 5);
INSERT INTO `movie_order_item` VALUES (7, '2024-05-05 20:05:07', '2024-05-05 20:05:07', 45.00, 84, 7);
INSERT INTO `movie_order_item` VALUES (8, '2024-05-05 20:05:07', '2024-05-05 20:05:07', 45.00, 85, 7);
INSERT INTO `movie_order_item` VALUES (9, '2024-05-05 20:09:34', '2024-05-05 20:09:34', 45.00, 84, 8);
INSERT INTO `movie_order_item` VALUES (10, '2024-05-05 20:09:34', '2024-05-05 20:09:34', 45.00, 85, 8);
INSERT INTO `movie_order_item` VALUES (11, '2024-05-05 20:14:02', '2024-05-05 20:14:02', 45.00, 84, 9);
INSERT INTO `movie_order_item` VALUES (12, '2024-05-05 20:14:02', '2024-05-05 20:14:02', 45.00, 85, 9);
INSERT INTO `movie_order_item` VALUES (13, '2024-05-05 21:01:40', '2024-05-05 21:01:40', 45.00, 84, 10);
INSERT INTO `movie_order_item` VALUES (14, '2024-05-05 21:01:40', '2024-05-05 21:01:40', 45.00, 85, 10);
INSERT INTO `movie_order_item` VALUES (15, '2024-05-05 21:08:18', '2024-05-05 21:08:18', 45.00, 113, 11);
INSERT INTO `movie_order_item` VALUES (16, '2024-05-05 21:08:18', '2024-05-05 21:08:18', 45.00, 115, 11);
INSERT INTO `movie_order_item` VALUES (17, '2024-05-05 22:53:31', '2024-05-05 22:53:31', 45.00, 94, 12);
INSERT INTO `movie_order_item` VALUES (18, '2024-05-05 22:53:31', '2024-05-05 22:53:31', 45.00, 95, 12);
INSERT INTO `movie_order_item` VALUES (19, '2024-05-05 22:53:31', '2024-05-05 22:53:31', 45.00, 96, 12);
INSERT INTO `movie_order_item` VALUES (20, '2024-05-05 22:53:31', '2024-05-05 22:53:31', 45.00, 97, 12);
INSERT INTO `movie_order_item` VALUES (21, '2024-05-06 13:48:37', '2024-05-06 13:48:37', 63.00, 113, 13);
INSERT INTO `movie_order_item` VALUES (22, '2024-05-06 13:48:37', '2024-05-06 13:48:37', 63.00, 114, 13);
INSERT INTO `movie_order_item` VALUES (23, '2024-05-07 12:58:58', '2024-05-07 12:58:58', 45.00, 95, 14);
INSERT INTO `movie_order_item` VALUES (24, '2024-05-07 12:58:58', '2024-05-07 12:58:58', 45.00, 96, 14);
INSERT INTO `movie_order_item` VALUES (25, '2024-05-07 12:58:58', '2024-05-07 12:58:58', 45.00, 104, 14);
INSERT INTO `movie_order_item` VALUES (26, '2024-05-07 12:58:58', '2024-05-07 12:58:58', 45.00, 105, 14);
INSERT INTO `movie_order_item` VALUES (31, '2024-05-24 16:07:03', '2024-05-24 16:07:03', 50.00, 115, 16);
INSERT INTO `movie_order_item` VALUES (32, '2024-05-24 16:07:03', '2024-05-24 16:07:03', 50.00, 124, 16);
INSERT INTO `movie_order_item` VALUES (33, '2024-05-24 17:35:35', '2024-05-24 17:35:35', 50.00, 104, 17);

-- ----------------------------
-- Table structure for movie_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `movie_pay_log`;
CREATE TABLE `movie_pay_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `money` decimal(19, 2) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `account_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_akwat47xp16622s7uwb44lnfv`(`sn`) USING BTREE,
  INDEX `FK2op86eg6t9v1j7imlk7c1vcur`(`account_id`) USING BTREE,
  CONSTRAINT `FK2op86eg6t9v1j7imlk7c1vcur` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_pay_log
-- ----------------------------
INSERT INTO `movie_pay_log` VALUES (10, '2024-05-07 13:05:30', '2024-05-07 13:05:53', 1688.98, 0, 'CD9A8E0194C6487FB78A5DDF85B79D95', 1, 3);
INSERT INTO `movie_pay_log` VALUES (13, '2024-05-24 17:36:04', '2024-05-24 17:36:04', 999.00, 0, 'F805890662D8494FB8815790A3E62689', 0, 5);
INSERT INTO `movie_pay_log` VALUES (14, '2024-05-24 17:36:14', '2024-05-24 17:36:14', 100.00, 0, '942F3AB491744437B2B174405255D8FE', 0, 5);
INSERT INTO `movie_pay_log` VALUES (15, '2024-05-31 10:34:03', '2024-05-31 10:34:03', 200.00, 0, '4A71235C2D7D420EB7EAF0EB158CC7EA', 0, 3);

-- ----------------------------
-- Table structure for movie_role
-- ----------------------------
DROP TABLE IF EXISTS `movie_role`;
CREATE TABLE `movie_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_role
-- ----------------------------
INSERT INTO `movie_role` VALUES (1, '2024-05-15 13:16:38', '2024-05-24 11:15:53', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `movie_role` VALUES (2, '2024-05-15 13:18:57', '2024-05-21 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);
INSERT INTO `movie_role` VALUES (4, '2024-05-21 20:11:00', '2024-05-23 17:49:00', '测试角色', '测试只有部分权限', 0);

-- ----------------------------
-- Table structure for movie_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `movie_role_authorities`;
CREATE TABLE `movie_role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  INDEX `FKhj7ap1o1cjrl7enr9arf5f2qp`(`authorities_id`) USING BTREE,
  INDEX `FKg3xdaexmr0x1qx8omhvjtk46d`(`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `movie_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `movie_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_role_authorities
-- ----------------------------
INSERT INTO `movie_role_authorities` VALUES (2, 2);
INSERT INTO `movie_role_authorities` VALUES (2, 3);
INSERT INTO `movie_role_authorities` VALUES (2, 5);
INSERT INTO `movie_role_authorities` VALUES (2, 7);
INSERT INTO `movie_role_authorities` VALUES (2, 11);
INSERT INTO `movie_role_authorities` VALUES (2, 13);
INSERT INTO `movie_role_authorities` VALUES (2, 16);
INSERT INTO `movie_role_authorities` VALUES (4, 2);
INSERT INTO `movie_role_authorities` VALUES (4, 13);
INSERT INTO `movie_role_authorities` VALUES (4, 15);
INSERT INTO `movie_role_authorities` VALUES (1, 2);
INSERT INTO `movie_role_authorities` VALUES (1, 3);
INSERT INTO `movie_role_authorities` VALUES (1, 5);
INSERT INTO `movie_role_authorities` VALUES (1, 8);
INSERT INTO `movie_role_authorities` VALUES (1, 9);
INSERT INTO `movie_role_authorities` VALUES (1, 7);
INSERT INTO `movie_role_authorities` VALUES (1, 10);
INSERT INTO `movie_role_authorities` VALUES (1, 11);
INSERT INTO `movie_role_authorities` VALUES (1, 12);
INSERT INTO `movie_role_authorities` VALUES (1, 13);
INSERT INTO `movie_role_authorities` VALUES (1, 14);
INSERT INTO `movie_role_authorities` VALUES (1, 15);
INSERT INTO `movie_role_authorities` VALUES (1, 16);
INSERT INTO `movie_role_authorities` VALUES (1, 19);
INSERT INTO `movie_role_authorities` VALUES (1, 20);
INSERT INTO `movie_role_authorities` VALUES (1, 21);
INSERT INTO `movie_role_authorities` VALUES (1, 22);
INSERT INTO `movie_role_authorities` VALUES (1, 27);
INSERT INTO `movie_role_authorities` VALUES (1, 28);
INSERT INTO `movie_role_authorities` VALUES (1, 29);
INSERT INTO `movie_role_authorities` VALUES (1, 30);
INSERT INTO `movie_role_authorities` VALUES (1, 31);
INSERT INTO `movie_role_authorities` VALUES (1, 32);
INSERT INTO `movie_role_authorities` VALUES (1, 44);
INSERT INTO `movie_role_authorities` VALUES (1, 33);
INSERT INTO `movie_role_authorities` VALUES (1, 34);
INSERT INTO `movie_role_authorities` VALUES (1, 35);
INSERT INTO `movie_role_authorities` VALUES (1, 36);
INSERT INTO `movie_role_authorities` VALUES (1, 37);
INSERT INTO `movie_role_authorities` VALUES (1, 38);
INSERT INTO `movie_role_authorities` VALUES (1, 74);
INSERT INTO `movie_role_authorities` VALUES (1, 75);
INSERT INTO `movie_role_authorities` VALUES (1, 39);
INSERT INTO `movie_role_authorities` VALUES (1, 40);
INSERT INTO `movie_role_authorities` VALUES (1, 41);
INSERT INTO `movie_role_authorities` VALUES (1, 42);
INSERT INTO `movie_role_authorities` VALUES (1, 43);
INSERT INTO `movie_role_authorities` VALUES (1, 76);
INSERT INTO `movie_role_authorities` VALUES (1, 77);
INSERT INTO `movie_role_authorities` VALUES (1, 45);
INSERT INTO `movie_role_authorities` VALUES (1, 46);
INSERT INTO `movie_role_authorities` VALUES (1, 47);
INSERT INTO `movie_role_authorities` VALUES (1, 48);
INSERT INTO `movie_role_authorities` VALUES (1, 49);
INSERT INTO `movie_role_authorities` VALUES (1, 50);
INSERT INTO `movie_role_authorities` VALUES (1, 56);
INSERT INTO `movie_role_authorities` VALUES (1, 51);
INSERT INTO `movie_role_authorities` VALUES (1, 52);
INSERT INTO `movie_role_authorities` VALUES (1, 53);
INSERT INTO `movie_role_authorities` VALUES (1, 54);
INSERT INTO `movie_role_authorities` VALUES (1, 55);
INSERT INTO `movie_role_authorities` VALUES (1, 57);
INSERT INTO `movie_role_authorities` VALUES (1, 58);
INSERT INTO `movie_role_authorities` VALUES (1, 59);
INSERT INTO `movie_role_authorities` VALUES (1, 60);
INSERT INTO `movie_role_authorities` VALUES (1, 61);
INSERT INTO `movie_role_authorities` VALUES (1, 62);
INSERT INTO `movie_role_authorities` VALUES (1, 63);
INSERT INTO `movie_role_authorities` VALUES (1, 64);
INSERT INTO `movie_role_authorities` VALUES (1, 65);
INSERT INTO `movie_role_authorities` VALUES (1, 66);
INSERT INTO `movie_role_authorities` VALUES (1, 67);
INSERT INTO `movie_role_authorities` VALUES (1, 68);
INSERT INTO `movie_role_authorities` VALUES (1, 69);
INSERT INTO `movie_role_authorities` VALUES (1, 70);
INSERT INTO `movie_role_authorities` VALUES (1, 71);
INSERT INTO `movie_role_authorities` VALUES (1, 72);
INSERT INTO `movie_role_authorities` VALUES (1, 73);

-- ----------------------------
-- Table structure for movie_user
-- ----------------------------
DROP TABLE IF EXISTS `movie_user`;
CREATE TABLE `movie_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_btsosjytrl4hu7fnm1intcpo8`(`username`) USING BTREE,
  INDEX `FKg09b8o67eu61st68rv6nk8npj`(`role_id`) USING BTREE,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `movie_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of movie_user
-- ----------------------------
INSERT INTO `movie_user` VALUES (1, '2024-05-18 19:18:53', '2024-05-22 12:43:54', '1@qq.com', '20240422/1584850135123.jpg', '13986876666', '123456', 1, 1, 'admin', 1);
INSERT INTO `movie_user` VALUES (2, '2024-05-18 19:20:36', '2024-05-21 22:18:55', '2@qq.com', '20240418/1584530412075.jpg', '13918655656', '123456', 1, 1, 'test', 2);
INSERT INTO `movie_user` VALUES (5, '2024-05-20 20:42:19', '2024-05-23 17:50:19', '3@qq.com', '20240423/1584956702094.png', '13986876333', '123456', 1, 1, '刘明', 4);

SET FOREIGN_KEY_CHECKS = 1;
