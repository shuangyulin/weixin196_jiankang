/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yundongjiankang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yundongjiankang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yundongjiankang`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(2,1,'收货人2','17703786902','地址2',1,'2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(3,1,'收货人3','17703786903','地址3',1,'2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(4,1,'收货人4','17703786904','地址4',1,'2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(5,2,'收货人5','17703786905','地址5',1,'2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/yundongjiankang/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/yundongjiankang/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/yundongjiankang/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-03 14:03:31'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-03 14:03:31'),(3,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-03 14:03:31'),(4,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-03 14:03:31'),(5,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-03 14:03:31'),(6,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-03 14:03:31'),(7,'meishi_types','商品类型',1,'商品类型1',NULL,NULL,'2022-03-03 14:03:31'),(8,'meishi_types','商品类型',2,'商品类型2',NULL,NULL,'2022-03-03 14:03:31'),(9,'meishi_types','商品类型',3,'商品类型3',NULL,NULL,'2022-03-03 14:03:31'),(10,'meishi_types','商品类型',4,'商品类型4',NULL,NULL,'2022-03-03 14:03:31'),(11,'meishi_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-03 14:03:31'),(12,'meishi_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-03 14:03:31'),(13,'meishi_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-03 14:03:31'),(14,'meishi_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-03 14:03:31'),(15,'meishi_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-03 14:03:31'),(16,'meishi_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-03 14:03:31'),(17,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-03 14:03:31'),(18,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-03 14:03:31'),(19,'shiwufenxi_types','食物类型',1,'食物类型1',NULL,NULL,'2022-03-03 14:03:31'),(20,'shiwufenxi_types','食物类型',2,'食物类型2',NULL,NULL,'2022-03-03 14:03:31'),(21,'yundongmokuai_types','运动类型',1,'运动类型1',NULL,NULL,'2022-03-03 14:03:31'),(22,'yundongmokuai_types','运动类型',2,'运动类型2',NULL,NULL,'2022-03-03 14:03:31');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `meishi_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `meishi_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `meishi_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `meishi_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `meishi_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`shangjia_id`,`meishi_name`,`meishi_photo`,`meishi_types`,`meishi_kucun_number`,`meishi_old_money`,`meishi_new_money`,`meishi_clicknum`,`shangxia_types`,`meishi_delete`,`meishi_content`,`create_time`) values (1,1,'商品名称1','http://localhost:8080/yundongjiankang/upload/meishi1.jpg',3,100,'939.08','364.85',191,1,1,'商品简介1','2022-03-03 14:03:38'),(2,2,'商品名称2','http://localhost:8080/yundongjiankang/upload/meishi2.jpg',4,102,'557.38','287.96',290,1,1,'商品简介2','2022-03-03 14:03:38'),(3,3,'商品名称3','http://localhost:8080/yundongjiankang/upload/meishi3.jpg',4,102,'586.28','301.89',17,1,1,'商品简介3','2022-03-03 14:03:38'),(4,4,'商品名称4','http://localhost:8080/yundongjiankang/upload/meishi4.jpg',3,100,'589.50','36.11',454,1,1,'商品简介4','2022-03-03 14:03:38'),(5,5,'商品名称5','http://localhost:8080/yundongjiankang/upload/meishi5.jpg',4,105,'647.61','242.31',240,1,1,'商品简介5','2022-03-03 14:03:38');

/*Table structure for table `meishi_commentback` */

DROP TABLE IF EXISTS `meishi_commentback`;

CREATE TABLE `meishi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `meishi_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `meishi_commentback` */

insert  into `meishi_commentback`(`id`,`meishi_id`,`yonghu_id`,`meishi_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'评价内容1','回复信息1','2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(2,2,2,'评价内容2','回复信息2','2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(3,3,3,'评价内容3','回复信息3','2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(4,4,3,'评价内容4','回复信息4','2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(5,5,1,'评价内容5','回复信息5','2022-03-03 14:03:38','2022-03-03 14:03:38','2022-03-03 14:03:38'),(6,1,1,'购买完成后可评论','后台可以回复','2022-03-03 14:37:04','2022-03-03 14:39:01','2022-03-03 14:37:04');

/*Table structure for table `meishi_order` */

DROP TABLE IF EXISTS `meishi_order`;

CREATE TABLE `meishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `meishi_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `meishi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meishi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `meishi_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `meishi_order` */

insert  into `meishi_order`(`id`,`meishi_order_uuid_number`,`address_id`,`meishi_id`,`yonghu_id`,`buy_number`,`meishi_order_true_price`,`meishi_order_types`,`meishi_order_payment_types`,`insert_time`,`create_time`) values (1,'1646289395694',3,3,1,1,'301.89',3,1,'2022-03-03 14:36:36','2022-03-03 14:36:36'),(2,'1646289395694',3,1,1,1,'364.85',1,1,'2022-03-03 14:36:36','2022-03-03 14:36:36'),(3,'1646289395694',3,5,1,1,'242.31',2,1,'2022-03-03 14:36:36','2022-03-03 14:36:36');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int(11) NOT NULL COMMENT '公告类型 Search111',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`news_content`,`create_time`) values (1,'公告标题1','http://localhost:8080/yundongjiankang/upload/news1.jpg',1,'公告详情1','2022-03-03 14:03:38'),(2,'公告标题2','http://localhost:8080/yundongjiankang/upload/news2.jpg',1,'公告详情2','2022-03-03 14:03:38'),(3,'公告标题3','http://localhost:8080/yundongjiankang/upload/news3.jpg',2,'公告详情3','2022-03-03 14:03:38'),(4,'公告标题4','http://localhost:8080/yundongjiankang/upload/news4.jpg',1,'公告详情4','2022-03-03 14:03:38'),(5,'公告标题5','http://localhost:8080/yundongjiankang/upload/news5.jpg',2,'公告详情5','2022-03-03 14:03:38');

/*Table structure for table `shiwufenxi` */

DROP TABLE IF EXISTS `shiwufenxi`;

CREATE TABLE `shiwufenxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shiwufenxi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111  ',
  `shiwufenxi_photo` varchar(200) DEFAULT NULL COMMENT '食物图片 ',
  `shiwufenxi_age` varchar(200) DEFAULT NULL COMMENT '适宜年龄',
  `shiwufenxi_kaululi` int(11) DEFAULT NULL COMMENT '增加卡路里',
  `shiwufenxi_types` int(11) NOT NULL COMMENT '食物类型 Search111',
  `shiwufenxi_content` text COMMENT '食物分析详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='食物营养分析';

/*Data for the table `shiwufenxi` */

insert  into `shiwufenxi`(`id`,`shiwufenxi_name`,`shiwufenxi_photo`,`shiwufenxi_age`,`shiwufenxi_kaululi`,`shiwufenxi_types`,`shiwufenxi_content`,`create_time`) values (1,'标题1','http://localhost:8080/yundongjiankang/upload/1646288583936.webp','适宜年龄1',313,1,'<p>食物分析详情1</p>','2022-03-03 14:03:38'),(2,'标题2','http://localhost:8080/yundongjiankang/upload/1646288570108.webp','适宜年龄2',251,1,'<p>食物分析详情2</p>','2022-03-03 14:03:38'),(3,'标题3','http://localhost:8080/yundongjiankang/upload/1646288562109.webp','适宜年龄3',199,2,'<p>食物分析详情3</p>','2022-03-03 14:03:38'),(4,'标题4','http://localhost:8080/yundongjiankang/upload/1646288549237.webp','适宜年龄4',379,1,'<p>食物分析详情4</p>','2022-03-03 14:03:38'),(5,'标题5','http://localhost:8080/yundongjiankang/upload/1646288542145.webp','适宜年龄5',361,1,'<p>食物分析详情5</p>','2022-03-03 14:03:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','o7eco3pqun7zow6rkehe5m416on3krbn','2022-03-03 14:17:51','2022-03-03 15:51:02'),(2,1,'admin','users','管理员','lep9nop0z0qo95viv4nmseqscd16cjq1','2022-03-03 14:21:19','2022-03-03 15:48:54');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/yundongjiankang/upload/yonghu1.jpg',1,'1@qq.com','8790.88','2022-03-03 14:03:38'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/yundongjiankang/upload/yonghu2.jpg',1,'2@qq.com','614.45','2022-03-03 14:03:38'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/yundongjiankang/upload/yonghu3.jpg',2,'3@qq.com','470.42','2022-03-03 14:03:38');

/*Table structure for table `yundongmokuai` */

DROP TABLE IF EXISTS `yundongmokuai`;

CREATE TABLE `yundongmokuai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yundongmokuai_name` varchar(200) DEFAULT NULL COMMENT '运动名称 Search111  ',
  `yundongmokuai_photo` varchar(200) DEFAULT NULL COMMENT '封面 ',
  `yundongmokuai_age` varchar(200) DEFAULT NULL COMMENT '适宜年龄',
  `yundongmokuai_kaululi` int(11) DEFAULT NULL COMMENT '消耗卡路里',
  `yundongmokuai_types` int(11) NOT NULL COMMENT '运动运动类型 Search111',
  `yundongmokuai_content` text COMMENT '运动详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='运动模块';

/*Data for the table `yundongmokuai` */

insert  into `yundongmokuai`(`id`,`yundongmokuai_name`,`yundongmokuai_photo`,`yundongmokuai_age`,`yundongmokuai_kaululi`,`yundongmokuai_types`,`yundongmokuai_content`,`create_time`) values (1,'运动名称1','http://localhost:8080/yundongjiankang/upload/1646288690688.jpg','适宜年龄1',382,1,'<p>运动详情1</p>','2022-03-03 14:03:38'),(2,'运动名称2','http://localhost:8080/yundongjiankang/upload/1646288646214.webp','适宜年龄2',70,2,'<p>运动详情2</p>','2022-03-03 14:03:38'),(3,'运动名称3','http://localhost:8080/yundongjiankang/upload/1646288631776.webp','适宜年龄3',205,1,'<p>运动详情3</p>','2022-03-03 14:03:38'),(4,'运动名称4','http://localhost:8080/yundongjiankang/upload/1646288620456.webp','适宜年龄4',245,1,'<p>运动详情4</p>','2022-03-03 14:03:38'),(5,'运动名称5','http://localhost:8080/yundongjiankang/upload/1646288613785.jpg','适宜年龄5',448,1,'<p>运动详情5</p>','2022-03-03 14:03:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
