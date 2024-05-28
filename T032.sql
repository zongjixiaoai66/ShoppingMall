/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t032`;
CREATE DATABASE IF NOT EXISTS `t032` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t032`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616084200728 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-03-18 16:10:41', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-03-18 16:10:41', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-03-18 16:10:41', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-03-18 16:10:41', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-03-18 16:10:41', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-03-18 16:10:41', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1616084200727, '2021-03-18 16:16:40', 1616083977401, '广东省揭阳市榕城区中山街道慧之源寄餐辅导园北门小学', '11', '11112222222', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704694807166 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1704694163817, '2024-01-08 06:09:23', 'shangpinxinxi', 11, 34, '商品名称4', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian4.jpg', 1, 99.9, 0),
	(1704694807165, '2024-01-08 06:20:07', 'shangpinxinxi', 11, 31, '商品名称1', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian1.jpg', 2, 99.9, 0);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot1a8gh/upload/1616084118007.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot1a8gh/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot1a8gh/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

DELETE FROM `discussshangpinxinxi`;
INSERT INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-03-18 16:10:41', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-03-18 16:10:41', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-03-18 16:10:41', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-03-18 16:10:41', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-03-18 16:10:41', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-03-18 16:10:41', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusszaixiankefu`;
CREATE TABLE IF NOT EXISTS `discusszaixiankefu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服评论表';

DELETE FROM `discusszaixiankefu`;
INSERT INTO `discusszaixiankefu` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-03-18 16:10:41', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-03-18 16:10:41', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-03-18 16:10:41', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-03-18 16:10:41', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-03-18 16:10:41', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-03-18 16:10:41', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616084108466 DEFAULT CHARSET=utf8mb3 COMMENT='商城快讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(101, '2021-03-18 16:10:41', '标题1', '简介1', 'http://localhost:8080/springboot1a8gh/upload/news_picture1.jpg', '内容1'),
	(102, '2021-03-18 16:10:41', '标题2', '简介2', 'http://localhost:8080/springboot1a8gh/upload/news_picture2.jpg', '内容2'),
	(103, '2021-03-18 16:10:41', '标题3', '简介3', 'http://localhost:8080/springboot1a8gh/upload/news_picture3.jpg', '内容3'),
	(104, '2021-03-18 16:10:41', '标题4', '简介4', 'http://localhost:8080/springboot1a8gh/upload/news_picture4.jpg', '内容4'),
	(105, '2021-03-18 16:10:41', '标题5', '简介5', 'http://localhost:8080/springboot1a8gh/upload/news_picture5.jpg', '内容5'),
	(106, '2021-03-18 16:10:41', '标题6', '简介6', 'http://localhost:8080/springboot1a8gh/upload/news_picture6.jpg', '内容6'),
	(1616084108465, '2021-03-18 16:15:07', '阿萨德萨达', '萨达萨达', 'http://localhost:8080/springboot1a8gh/upload/1616084095889.png', '<p>萨达阿萨德<img src="http://localhost:8080/springboot1a8gh/upload/1616084103064.jpg"><img src="http://localhost:8080/springboot1a8gh/upload/1616084106253.JPEG"></p>');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616084234410 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`) VALUES
	(1616084224382, '2021-03-18 16:17:04', '20213190164055018612', 'shangpinxinxi', 1616083977401, 32, '商品名称2', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian2.jpg', 1, 99.9, 99.9, 149.9, 99.9, 1, '已退款', '广东省揭阳市榕城区中山街道慧之源寄餐辅导园北门小学'),
	(1616084224873, '2021-03-18 16:17:04', '20213190164055340995', 'shangpinxinxi', 1616083977401, 1616083962350, '是萨', 'http://localhost:8080/springboot1a8gh/upload/1616083951019.jpg', 1, 50, 50, 149.9, 50, 1, '已完成', '广东省揭阳市榕城区中山街道慧之源寄餐辅导园北门小学'),
	(1616084234409, '2021-03-18 16:17:13', '2021319016509535172', 'shangpinxinxi', 1616083977401, 32, '商品名称2', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian2.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已完成', '广东省揭阳市榕城区中山街道慧之源寄餐辅导园北门小学');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616083920770 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `addtime`, `shangjiazhanghao`, `mima`, `shangjiaxingming`, `dianpuming`, `dianpudizhi`, `lianxiren`, `lianxifangshi`, `shangjiatupian`, `jingyingfanwei`, `shangjiajieshao`, `sfsh`, `shhf`, `money`) VALUES
	(21, '2021-03-18 16:10:41', '商家1', '123456', '商家姓名1', '店铺名1', '店铺地址1', '联系人1', '联系方式1', 'http://localhost:8080/springboot1a8gh/upload/shangjia_shangjiatupian1.jpg', '经营范围1', '商家介绍1', '是', '', 100),
	(22, '2021-03-18 16:10:41', '商家2', '123456', '商家姓名2', '店铺名2', '店铺地址2', '联系人2', '联系方式2', 'http://localhost:8080/springboot1a8gh/upload/shangjia_shangjiatupian2.jpg', '经营范围2', '商家介绍2', '是', '', 100),
	(23, '2021-03-18 16:10:41', '商家3', '123456', '商家姓名3', '店铺名3', '店铺地址3', '联系人3', '联系方式3', 'http://localhost:8080/springboot1a8gh/upload/shangjia_shangjiatupian3.jpg', '经营范围3', '商家介绍3', '是', '', 100),
	(24, '2021-03-18 16:10:41', '商家4', '123456', '商家姓名4', '店铺名4', '店铺地址4', '联系人4', '联系方式4', 'http://localhost:8080/springboot1a8gh/upload/shangjia_shangjiatupian4.jpg', '经营范围4', '商家介绍4', '是', '', 100),
	(25, '2021-03-18 16:10:41', '商家5', '123456', '商家姓名5', '店铺名5', '店铺地址5', '联系人5', '联系方式5', 'http://localhost:8080/springboot1a8gh/upload/shangjia_shangjiatupian5.jpg', '经营范围5', '商家介绍5', '是', '', 100),
	(26, '2021-03-18 16:10:41', '商家6', '123456', '商家姓名6', '店铺名6', '店铺地址6', '联系人6', '联系方式6', 'http://localhost:8080/springboot1a8gh/upload/shangjia_shangjiatupian6.jpg', '经营范围6', '商家介绍6', '是', '', 100),
	(1616083920769, '2021-03-18 16:12:00', '22', '22', '阿达萨达', '实打实的撒', NULL, NULL, NULL, NULL, NULL, NULL, '是', NULL, 0);

DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

DELETE FROM `shangpinfenlei`;
INSERT INTO `shangpinfenlei` (`id`, `addtime`, `fenlei`) VALUES
	(41, '2021-03-18 16:10:41', '分类1'),
	(42, '2021-03-18 16:10:41', '分类2'),
	(43, '2021-03-18 16:10:41', '分类3'),
	(44, '2021-03-18 16:10:41', '分类4'),
	(45, '2021-03-18 16:10:41', '分类5'),
	(46, '2021-03-18 16:10:41', '萨达');

DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) DEFAULT NULL COMMENT '商品类型',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616083962351 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpinxinxi`;
INSERT INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinleixing`, `guige`, `tupian`, `shangpinjieshao`, `shangjiazhanghao`, `shangjiaxingming`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`, `price`) VALUES
	(31, '2021-03-18 16:10:41', '商品名称1', '商品类型1', '规格1', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian1.jpg', '商品介绍1', '商家账号1', '商家姓名1', 3, 1, '2024-01-08 14:20:03', 5, 99.9),
	(32, '2021-03-18 16:10:41', '商品名称2', '商品类型2', '规格2', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian2.jpg', '商品介绍2', '商家账号2', '商家姓名2', 2, 2, '2021-03-19 00:17:22', 9, 99.9),
	(33, '2021-03-18 16:10:41', '商品名称3', '商品类型3', '规格3', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian3.jpg', '商品介绍3', '商家账号3', '商家姓名3', 3, 3, '2021-03-19 00:16:23', 5, 99.9),
	(34, '2021-03-18 16:10:41', '商品名称4', '商品类型4', '规格4', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian4.jpg', '商品介绍4', '商家账号4', '商家姓名4', 4, 4, '2024-01-08 14:09:23', 6, 99.9),
	(35, '2021-03-18 16:10:41', '商品名称5', '商品类型5', '规格5', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian5.jpg', '商品介绍5', '商家账号5', '商家姓名5', 5, 5, '2024-01-08 14:18:47', 6, 99.9),
	(36, '2021-03-18 16:10:41', '商品名称6', '商品类型6', '规格6', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian6.jpg', '商品介绍6', '商家账号6', '商家姓名6', 6, 6, '2021-03-19 00:10:41', 6, 99.9),
	(1616083962350, '2021-03-18 16:12:41', '是萨', '萨达', '是否', 'http://localhost:8080/springboot1a8gh/upload/1616083951019.jpg', '<p>发过的<img src="http://localhost:8080/springboot1a8gh/upload/1616083957149.png"><img src="http://localhost:8080/springboot1a8gh/upload/1616083959857.png"></p>', '22', '阿达萨达', 0, 0, '2021-03-19 00:17:04', 5, 50);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704694156762 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1704694156761, '2024-01-08 06:09:16', 11, 31, 'shangpinxinxi', '商品名称1', 'http://localhost:8080/springboot1a8gh/upload/shangpinxinxi_tupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'rk6jksrues7cvu7klgjey6g37c8zmh5e', '2021-03-18 16:12:04', '2024-01-08 07:18:25'),
	(2, 1616083920769, '22', 'shangjia', '商家', 'av1usa08dsevbhw1fqluckaja4yta4bp', '2021-03-18 16:12:17', '2021-03-18 17:13:39'),
	(3, 1616083977401, '11', 'yonghu', '用户', '6yteyrbbjlokzrgvxbiuxbaynezcrmgh', '2021-03-18 16:13:02', '2021-03-18 17:19:21'),
	(4, 11, '用户1', 'yonghu', '用户', '4cirg321ufbmm3zec3co5kwv0uuwtzw1', '2024-01-08 06:08:56', '2024-01-08 07:19:51'),
	(5, 21, '商家1', 'shangjia', '商家', '5btxyoicusuroyd77jppfrsp1t3xpq0l', '2024-01-08 06:19:38', '2024-01-08 07:19:38');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-18 16:10:41');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616083977402 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `zhaopian`, `dizhi`, `money`) VALUES
	(11, '2021-03-18 16:10:41', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springboot1a8gh/upload/yonghu_zhaopian1.jpg', '地址1', 100),
	(12, '2021-03-18 16:10:41', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springboot1a8gh/upload/yonghu_zhaopian2.jpg', '地址2', 100),
	(13, '2021-03-18 16:10:41', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springboot1a8gh/upload/yonghu_zhaopian3.jpg', '地址3', 100),
	(14, '2021-03-18 16:10:41', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springboot1a8gh/upload/yonghu_zhaopian4.jpg', '地址4', 100),
	(15, '2021-03-18 16:10:41', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springboot1a8gh/upload/yonghu_zhaopian5.jpg', '地址5', 100),
	(16, '2021-03-18 16:10:41', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springboot1a8gh/upload/yonghu_zhaopian6.jpg', '地址6', 100),
	(1616083977401, '2021-03-18 16:12:57', '11', '11', '萨达', '男', '11112222221', '12@qq.com', 'http://localhost:8080/springboot1a8gh/upload/1616084145402.jpg', ' 第三方水电费', 4900.1);

DROP TABLE IF EXISTS `zaixiankefu`;
CREATE TABLE IF NOT EXISTS `zaixiankefu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefubianhao` varchar(200) DEFAULT NULL COMMENT '客服编号',
  `neirong` varchar(200) DEFAULT NULL COMMENT '内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `kefuhuifu` varchar(200) DEFAULT NULL COMMENT '客服回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kefubianhao` (`kefubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616084007002 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `zaixiankefu`;
INSERT INTO `zaixiankefu` (`id`, `addtime`, `kefubianhao`, `neirong`, `zhanghao`, `xingming`, `shangjiazhanghao`, `shangjiaxingming`, `kefuhuifu`) VALUES
	(51, '2021-03-18 16:10:41', '客服编号1', '内容1', '账号1', '姓名1', '商家账号1', '商家姓名1', '客服回复1'),
	(52, '2021-03-18 16:10:41', '客服编号2', '内容2', '账号2', '姓名2', '商家账号2', '商家姓名2', '客服回复2'),
	(53, '2021-03-18 16:10:41', '客服编号3', '内容3', '账号3', '姓名3', '商家账号3', '商家姓名3', '客服回复3'),
	(54, '2021-03-18 16:10:41', '客服编号4', '内容4', '账号4', '姓名4', '商家账号4', '商家姓名4', '客服回复4'),
	(55, '2021-03-18 16:10:41', '客服编号5', '内容5', '账号5', '姓名5', '商家账号5', '商家姓名5', '客服回复5'),
	(56, '2021-03-18 16:10:41', '客服编号6', '内容6', '账号6', '姓名6', '商家账号6', '商家姓名6', '客服回复6'),
	(1616084007001, '2021-03-18 16:13:26', '20213190125035851430', '买错东西了', '11', '萨达', '22', '阿达萨达', '地方师傅师傅东方闪电99999999999999999999999');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
