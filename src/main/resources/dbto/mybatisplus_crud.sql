/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : mybatisplus_crud

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 27/03/2020 22:36:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `aId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`aId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, '牛奶', 50.00, '一星');
INSERT INTO `article` VALUES (2, '香蕉', 5.00, '二星');
INSERT INTO `article` VALUES (3, '面包', 4.00, '三星');
INSERT INTO `article` VALUES (4, '香烟', 20.00, '一星');

-- ----------------------------
-- Table structure for article_order
-- ----------------------------
DROP TABLE IF EXISTS `article_order`;
CREATE TABLE `article_order`  (
  `a_id` int(11) DEFAULT NULL,
  `o_id` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_order
-- ----------------------------
INSERT INTO `article_order` VALUES (1, 3);
INSERT INTO `article_order` VALUES (1, 3);
INSERT INTO `article_order` VALUES (1, 3);
INSERT INTO `article_order` VALUES (2, 1);
INSERT INTO `article_order` VALUES (2, 2);

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `cId` int(11) NOT NULL AUTO_INCREMENT,
  `calssName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`cId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES (1, '计算机3班', '143');
INSERT INTO `classes` VALUES (2, '计算机4班', '144');
INSERT INTO `classes` VALUES (3, '应用电子5班', '145');

-- ----------------------------
-- Table structure for img_info
-- ----------------------------
DROP TABLE IF EXISTS `img_info`;
CREATE TABLE `img_info`  (
  `img_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图片信息ID',
  `app_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接入商秘钥',
  `customer_id` bigint(20) DEFAULT NULL COMMENT '接入商ID',
  `customer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接入商名称',
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '存储路径',
  `create_date` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`img_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1866 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of img_info
-- ----------------------------
INSERT INTO `img_info` VALUES (1, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117046591.jpg', '2018-10-21 18:17:26');
INSERT INTO `img_info` VALUES (2, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117099675.jpg', '2018-10-21 18:18:19');
INSERT INTO `img_info` VALUES (3, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117099793.jpg', '2018-10-21 18:18:19');
INSERT INTO `img_info` VALUES (4, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117099873.jpg', '2018-10-21 18:18:19');
INSERT INTO `img_info` VALUES (5, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117099949.jpg', '2018-10-21 18:18:19');
INSERT INTO `img_info` VALUES (6, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117100025.jpg', '2018-10-21 18:18:20');
INSERT INTO `img_info` VALUES (8, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117100167.jpg', '2018-10-21 18:18:20');
INSERT INTO `img_info` VALUES (9, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117100244.jpg', '2018-10-21 18:18:20');
INSERT INTO `img_info` VALUES (10, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117100314.jpg', '2018-10-21 18:18:20');
INSERT INTO `img_info` VALUES (11, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181021/1540117100375.jpg', '2018-10-21 18:18:20');
INSERT INTO `img_info` VALUES (12, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540182684773.jpg', '2018-10-22 12:31:24');
INSERT INTO `img_info` VALUES (13, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212320742.jpg', '2018-10-22 20:45:20');
INSERT INTO `img_info` VALUES (14, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212320897.jpg', '2018-10-22 20:45:20');
INSERT INTO `img_info` VALUES (15, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212320989.jpg', '2018-10-22 20:45:20');
INSERT INTO `img_info` VALUES (16, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321065.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (17, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321145.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (18, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321209.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (19, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321276.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (20, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321363.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (21, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321425.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (22, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212321487.jpg', '2018-10-22 20:45:21');
INSERT INTO `img_info` VALUES (23, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212373518.jpg', '2018-10-22 20:46:13');
INSERT INTO `img_info` VALUES (24, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212373611.jpg', '2018-10-22 20:46:13');
INSERT INTO `img_info` VALUES (25, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212373671.jpg', '2018-10-22 20:46:13');
INSERT INTO `img_info` VALUES (26, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212373738.jpg', '2018-10-22 20:46:13');
INSERT INTO `img_info` VALUES (27, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212374520.jpg', '2018-10-22 20:46:14');
INSERT INTO `img_info` VALUES (28, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212374584.jpg', '2018-10-22 20:46:14');
INSERT INTO `img_info` VALUES (29, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212374648.jpg', '2018-10-22 20:46:14');
INSERT INTO `img_info` VALUES (30, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212374764.jpg', '2018-10-22 20:46:14');
INSERT INTO `img_info` VALUES (31, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212374820.jpg', '2018-10-22 20:46:14');
INSERT INTO `img_info` VALUES (32, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540212374900.jpg', '2018-10-22 20:46:14');
INSERT INTO `img_info` VALUES (34, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540218726166.jpg', '2018-10-22 22:32:06');
INSERT INTO `img_info` VALUES (35, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181022/1540219169010.jpg', '2018-10-22 22:39:29');
INSERT INTO `img_info` VALUES (1846, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201810/20181024/1540366972055.jpg', '2018-10-24 15:42:52');
INSERT INTO `img_info` VALUES (1847, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039936727.jpg', '2018-11-01 10:38:56');
INSERT INTO `img_info` VALUES (1848, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039936838.jpg', '2018-11-01 10:38:56');
INSERT INTO `img_info` VALUES (1849, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039936877.jpg', '2018-11-01 10:38:56');
INSERT INTO `img_info` VALUES (1850, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039936917.jpg', '2018-11-01 10:38:56');
INSERT INTO `img_info` VALUES (1851, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039937243.jpg', '2018-11-01 10:38:57');
INSERT INTO `img_info` VALUES (1852, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039937278.jpg', '2018-11-01 10:38:57');
INSERT INTO `img_info` VALUES (1853, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039937314.jpg', '2018-11-01 10:38:57');
INSERT INTO `img_info` VALUES (1854, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039937359.jpg', '2018-11-01 10:38:57');
INSERT INTO `img_info` VALUES (1855, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039937398.jpg', '2018-11-01 10:38:57');
INSERT INTO `img_info` VALUES (1856, '3b449a533a434eedac186e4df80a1921', 1, '可信认证服务', 'http://122.112.246.136:9090/images/1/201811/20181101/1541039937433.jpg', '2018-11-01 10:38:57');
INSERT INTO `img_info` VALUES (1857, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869027839.jpg', '2018-11-22 14:43:47');
INSERT INTO `img_info` VALUES (1858, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869027929.jpg', '2018-11-22 14:43:47');
INSERT INTO `img_info` VALUES (1859, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869027971.jpg', '2018-11-22 14:43:47');
INSERT INTO `img_info` VALUES (1860, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869028019.jpg', '2018-11-22 14:43:48');
INSERT INTO `img_info` VALUES (1861, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869028060.jpg', '2018-11-22 14:43:48');
INSERT INTO `img_info` VALUES (1862, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869041571.jpg', '2018-11-22 14:44:01');
INSERT INTO `img_info` VALUES (1863, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869041638.jpg', '2018-11-22 14:44:01');
INSERT INTO `img_info` VALUES (1864, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869041687.jpg', '2018-11-22 14:44:01');
INSERT INTO `img_info` VALUES (1865, '9dc4b4dbc7184b4faa892cd6c26cc44b', 4, '智能门锁', 'http://122.112.246.136:9090/images/4/201811/20181122/1542869041731.jpg', '2018-11-22 14:44:01');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oId` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `date` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`oId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '001', '大润发大甩卖', '2019-12-18 10:32:49');
INSERT INTO `order` VALUES (2, '002', '老邻居买一送一', '2019-12-20 10:33:59');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `c_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'lbk', '男', 20, 2);
INSERT INTO `student` VALUES (2, 'lzp', '男', 20, 1);
INSERT INTO `student` VALUES (3, 'mbj', '男', 20, 3);
INSERT INTO `student` VALUES (4, 'tzs', '男', 20, 1);

SET FOREIGN_KEY_CHECKS = 1;
