/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengdanganguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengdanganguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengdanganguanli`;

/*Table structure for table `banjinianji` */

DROP TABLE IF EXISTS `banjinianji`;

CREATE TABLE `banjinianji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banjinianji_bianhao` varchar(200) DEFAULT NULL COMMENT '记录编号 Search111',
  `banjinianji_dizhi` varchar(200) DEFAULT NULL COMMENT '年级',
  `banjinianji_fuzeren` varchar(200) DEFAULT NULL COMMENT '班级',
  `banjinianji_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='班级/年级';

/*Data for the table `banjinianji` */

insert  into `banjinianji`(`id`,`banjinianji_bianhao`,`banjinianji_dizhi`,`banjinianji_fuzeren`,`banjinianji_content`,`insert_time`,`create_time`) values (1,'001','年级1','班级1','详情信息1\r\n','2021-05-11 19:19:28','2021-05-11 19:19:28'),(2,'002','年级2','班级2','详情信息2\r\n','2021-05-11 19:19:44','2021-05-11 19:19:44'),(3,'003','年级3','班级3','详情信息3\r\n\r\n','2021-05-11 20:05:34','2021-05-11 20:05:34');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dangan` */

DROP TABLE IF EXISTS `dangan`;

CREATE TABLE `dangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `dangan_types` int(200) DEFAULT NULL COMMENT '档案类型 Search111',
  `dangan_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='档案信息';

/*Data for the table `dangan` */

insert  into `dangan`(`id`,`yonghu_id`,`dangan_types`,`dangan_content`,`insert_time`,`create_time`) values (1,1,1,'详情信息1\r\n','2021-05-11 19:20:49','2021-05-11 19:20:49'),(2,2,2,'详情信息2\r\n','2021-05-11 19:20:57','2021-05-11 19:20:57'),(3,3,3,'详情信息3\r\n\r\n','2021-05-11 20:06:10','2021-05-11 20:06:10');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-11 17:28:55'),(2,'sex_types','性别',2,'女',NULL,'2021-05-11 17:28:55'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-11 17:28:55'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-11 17:28:55'),(5,'jiaoyujingli_types','职务类型名称',1,'职务1',NULL,'2021-05-11 17:28:55'),(6,'jiaoyujingli_types','职务类型名称',2,'职务2',NULL,'2021-05-11 17:28:55'),(7,'jiaoyujingli_types','职务类型名称',3,'职务3',NULL,'2021-05-11 17:28:55'),(8,'dangan_types','档案类型名称',1,'档案1',NULL,'2021-05-11 17:28:55'),(9,'dangan_types','档案类型名称',2,'档案2',NULL,'2021-05-11 17:28:55'),(10,'dangan_types','档案类型名称',3,'档案3',NULL,'2021-05-11 17:28:55');

/*Table structure for table `jiaoyujingli` */

DROP TABLE IF EXISTS `jiaoyujingli`;

CREATE TABLE `jiaoyujingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoyujingli_bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '开始日期',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '终止日期',
  `jiaoyujingli_types` int(200) DEFAULT NULL COMMENT '职务 Search111',
  `jiaoyujingli_content` text COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教育经历';

/*Data for the table `jiaoyujingli` */

insert  into `jiaoyujingli`(`id`,`jiaoyujingli_bianhao`,`yonghu_id`,`kaishi_time`,`jieshu_time`,`jiaoyujingli_types`,`jiaoyujingli_content`,`insert_time`,`create_time`) values (1,'001',1,'2021-05-28 19:20:01','2021-07-08 00:00:00',1,'详情信息1\r\n','2021-05-11 19:20:13','2021-05-11 19:20:13'),(2,'002',2,'2021-06-05 00:00:00','2021-06-03 00:00:00',2,'详情信息2\r\n','2021-05-11 19:20:37','2021-05-11 19:20:37'),(3,'003',3,'2021-05-31 19:20:01','2021-05-19 00:00:00',3,' 详情信息3\r\n\r\n','2021-05-11 20:05:57','2021-05-11 20:05:57');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言信息';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-03 17:15:28','只有管理员可以回复','admin','2021-02-03 17:15:29'),(7,'123','admin','2021-05-11 20:06:24','333333333','admin','2021-05-11 20:06:31'),(8,'1323123123','111','2021-05-11 20:07:51',NULL,NULL,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/xueshengdanganguanli/file/download?fileName=1620731937725.jpg','2021-05-11 19:19:04','公告详情1\r\n','2021-05-11 19:19:04'),(4,'公告2',2,'http://localhost:8080/xueshengdanganguanli/file/download?fileName=1620731950238.jpg','2021-05-11 19:19:13','公告详情2\r\n','2021-05-11 19:19:13');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','b9rd7bgzfbegsij70kuc0tcvzgtc7swc','2021-05-11 18:44:57','2021-05-11 21:03:07'),(2,1,'111','yonghu','学生','29b9tqr7osczb47svp7v8bfi6vrlhg1v','2021-05-11 20:06:41','2021-05-11 21:06:41'),(3,2,'222','yonghu','学生','v74x01h997tnj2lyapoi41iiw46k66k5','2021-05-11 20:07:59','2021-05-11 21:08:00');

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
  `yonghu_xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `chusheng_time` timestamp NULL DEFAULT NULL COMMENT '出生日期 ',
  `ruxiao_time` timestamp NULL DEFAULT NULL COMMENT '入校日期 ',
  `yonghu_minzhu` varchar(200) DEFAULT NULL COMMENT '民族',
  `yonghu_jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `yonghu_yuanxi` varchar(200) DEFAULT NULL COMMENT '所在院系',
  `yonghu_zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_xuehao`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`chusheng_time`,`ruxiao_time`,`yonghu_minzhu`,`yonghu_jiguan`,`yonghu_yuanxi`,`yonghu_zhiwu`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','学号1','学生1',2,'410882188912114141','13515544611','2021-05-20 00:00:00','2021-05-20 00:00:00','民族1','籍贯1','院系1','职务1','11111@qq.com','http://localhost:8080/xueshengdanganguanli/file/download?fileName=1620731790357.jpg','2021-05-11 19:16:31'),(2,'222','123456','学号2','学生2',1,'410882188912114142','13515544612','2021-05-25 00:00:00','2021-05-25 00:00:00','民族2','籍贯2','院系2','职务2','22222@qq.com','http://localhost:8080/xueshengdanganguanli/file/download?fileName=1620731832431.jpg','2021-05-11 19:17:13'),(3,'333','123456','学号3','学生3',2,'410882188912114143','13515544613','2014-05-11 00:00:00','2021-05-28 00:00:00','民族3','籍贯3','院系3','职务3','33333@qq.com','http://localhost:8080/xueshengdanganguanli/file/download?fileName=1620734671663.jpg','2021-05-11 20:04:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
