-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm67m8n
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm67m8n`
--

/*!40000 DROP DATABASE IF EXISTS `ssm67m8n`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm67m8n` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm67m8n`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-03-10 09:21:13',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-03-10 09:21:13',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-03-10 09:21:13',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-03-10 09:21:13',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-03-10 09:21:13',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-03-10 09:21:13',16,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xianhuaxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangpubianhao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2022-03-10 09:21:13',1,1,'提问1','回复1',1),(62,'2022-03-10 09:21:13',2,2,'提问2','回复2',2),(63,'2022-03-10 09:21:13',3,3,'提问3','回复3',3),(64,'2022-03-10 09:21:13',4,4,'提问4','回复4',4),(65,'2022-03-10 09:21:13',5,5,'提问5','回复5',5),(66,'2022-03-10 09:21:13',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxianhuaxinxi`
--

DROP TABLE IF EXISTS `discussxianhuaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxianhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='鲜花信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxianhuaxinxi`
--

LOCK TABLES `discussxianhuaxinxi` WRITE;
/*!40000 ALTER TABLE `discussxianhuaxinxi` DISABLE KEYS */;
INSERT INTO `discussxianhuaxinxi` VALUES (111,'2022-03-10 09:21:13',1,1,'用户名1','评论内容1','回复内容1'),(112,'2022-03-10 09:21:13',2,2,'用户名2','评论内容2','回复内容2'),(113,'2022-03-10 09:21:13',3,3,'用户名3','评论内容3','回复内容3'),(114,'2022-03-10 09:21:13',4,4,'用户名4','评论内容4','回复内容4'),(115,'2022-03-10 09:21:13',5,5,'用户名5','评论内容5','回复内容5'),(116,'2022-03-10 09:21:13',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussxianhuaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpubianhao` varchar(200) DEFAULT NULL COMMENT '商铺编号',
  `shangpumingcheng` varchar(200) DEFAULT NULL COMMENT '商铺名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (51,'2022-03-10 09:21:13','标题1','公告内容1','2022-03-10 17:21:13','upload/gonggaoxinxi_tupian1.jpg','商铺编号1','商铺名称1'),(52,'2022-03-10 09:21:13','标题2','公告内容2','2022-03-10 17:21:13','upload/gonggaoxinxi_tupian2.jpg','商铺编号2','商铺名称2'),(53,'2022-03-10 09:21:13','标题3','公告内容3','2022-03-10 17:21:13','upload/gonggaoxinxi_tupian3.jpg','商铺编号3','商铺名称3'),(54,'2022-03-10 09:21:13','标题4','公告内容4','2022-03-10 17:21:13','upload/gonggaoxinxi_tupian4.jpg','商铺编号4','商铺名称4'),(55,'2022-03-10 09:21:13','标题5','公告内容5','2022-03-10 17:21:13','upload/gonggaoxinxi_tupian5.jpg','商铺编号5','商铺名称5'),(56,'2022-03-10 09:21:13','标题6','公告内容6','2022-03-10 17:21:13','upload/gonggaoxinxi_tupian6.jpg','商铺编号6','商铺名称6');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xianhuaxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `shangpubianhao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangjia`
--

DROP TABLE IF EXISTS `shangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpubianhao` varchar(200) NOT NULL COMMENT '商铺编号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangpumingcheng` varchar(200) NOT NULL COMMENT '商铺名称',
  `shangpudizhi` varchar(200) DEFAULT NULL COMMENT '商铺地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangputupian` varchar(200) DEFAULT NULL COMMENT '商铺图片',
  `money` float DEFAULT '0' COMMENT '余额',
  `vip` varchar(200) DEFAULT '否' COMMENT '是否会员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpubianhao` (`shangpubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangjia`
--

LOCK TABLES `shangjia` WRITE;
/*!40000 ALTER TABLE `shangjia` DISABLE KEYS */;
INSERT INTO `shangjia` VALUES (21,'2022-03-10 09:21:13','商铺编号1','123456','商铺名称1','商铺地址1','13823888881','upload/shangjia_shangputupian1.jpg',100,'否'),(22,'2022-03-10 09:21:13','商铺编号2','123456','商铺名称2','商铺地址2','13823888882','upload/shangjia_shangputupian2.jpg',100,'否'),(23,'2022-03-10 09:21:13','商铺编号3','123456','商铺名称3','商铺地址3','13823888883','upload/shangjia_shangputupian3.jpg',100,'否'),(24,'2022-03-10 09:21:13','商铺编号4','123456','商铺名称4','商铺地址4','13823888884','upload/shangjia_shangputupian4.jpg',100,'否'),(25,'2022-03-10 09:21:13','商铺编号5','123456','商铺名称5','商铺地址5','13823888885','upload/shangjia_shangputupian5.jpg',100,'否'),(26,'2022-03-10 09:21:13','商铺编号6','123456','商铺名称6','商铺地址6','13823888886','upload/shangjia_shangputupian6.jpg',100,'否');
/*!40000 ALTER TABLE `shangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-10 09:21:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianhuafenlei`
--

DROP TABLE IF EXISTS `xianhuafenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianhuafenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='鲜花分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianhuafenlei`
--

LOCK TABLES `xianhuafenlei` WRITE;
/*!40000 ALTER TABLE `xianhuafenlei` DISABLE KEYS */;
INSERT INTO `xianhuafenlei` VALUES (41,'2022-03-10 09:21:13','类型1'),(42,'2022-03-10 09:21:13','类型2'),(43,'2022-03-10 09:21:13','类型3'),(44,'2022-03-10 09:21:13','类型4'),(45,'2022-03-10 09:21:13','类型5'),(46,'2022-03-10 09:21:13','类型6');
/*!40000 ALTER TABLE `xianhuafenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xianhuaxinxi`
--

DROP TABLE IF EXISTS `xianhuaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xianhuaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuamingcheng` varchar(200) DEFAULT NULL COMMENT '鲜花名称',
  `xianhualeixing` varchar(200) DEFAULT NULL COMMENT '鲜花类型',
  `chandi` varchar(200) DEFAULT NULL COMMENT '产地',
  `xiangguanhuayu` varchar(200) DEFAULT NULL COMMENT '相关花语',
  `zengsongduixiang` varchar(200) DEFAULT NULL COMMENT '赠送对象',
  `shipinxinxi` varchar(200) DEFAULT NULL COMMENT '视频信息',
  `xianhuajieshao` longtext COMMENT '鲜花介绍',
  `xianhuatupian` varchar(200) DEFAULT NULL COMMENT '鲜花图片',
  `shangpubianhao` varchar(200) DEFAULT NULL COMMENT '商铺编号',
  `shangpumingcheng` varchar(200) DEFAULT NULL COMMENT '商铺名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  `vipprice` float DEFAULT '-1' COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='鲜花信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xianhuaxinxi`
--

LOCK TABLES `xianhuaxinxi` WRITE;
/*!40000 ALTER TABLE `xianhuaxinxi` DISABLE KEYS */;
INSERT INTO `xianhuaxinxi` VALUES (31,'2022-03-10 09:21:13','鲜花名称1','鲜花类型1','产地1','相关花语1','朋友','','鲜花介绍1','upload/xianhuaxinxi_xianhuatupian1.jpg','商铺编号1','商铺名称1','13823888881',1,1,'2022-03-10 17:21:13',1,99.9,1),(32,'2022-03-10 09:21:13','鲜花名称2','鲜花类型2','产地2','相关花语2','朋友','','鲜花介绍2','upload/xianhuaxinxi_xianhuatupian2.jpg','商铺编号2','商铺名称2','13823888882',2,2,'2022-03-10 17:21:13',2,99.9,2),(33,'2022-03-10 09:21:13','鲜花名称3','鲜花类型3','产地3','相关花语3','朋友','','鲜花介绍3','upload/xianhuaxinxi_xianhuatupian3.jpg','商铺编号3','商铺名称3','13823888883',3,3,'2022-03-10 17:21:13',3,99.9,3),(34,'2022-03-10 09:21:13','鲜花名称4','鲜花类型4','产地4','相关花语4','朋友','','鲜花介绍4','upload/xianhuaxinxi_xianhuatupian4.jpg','商铺编号4','商铺名称4','13823888884',4,4,'2022-03-10 17:21:13',4,99.9,4),(35,'2022-03-10 09:21:13','鲜花名称5','鲜花类型5','产地5','相关花语5','朋友','','鲜花介绍5','upload/xianhuaxinxi_xianhuatupian5.jpg','商铺编号5','商铺名称5','13823888885',5,5,'2022-03-10 17:21:13',5,99.9,5),(36,'2022-03-10 09:21:13','鲜花名称6','鲜花类型6','产地6','相关花语6','朋友','','鲜花介绍6','upload/xianhuaxinxi_xianhuatupian6.jpg','商铺编号6','商铺名称6','13823888886',6,6,'2022-03-10 17:21:13',6,99.9,6);
/*!40000 ALTER TABLE `xianhuaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  `vip` varchar(200) DEFAULT '否' COMMENT '是否会员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-10 09:21:13','账号1','123456','姓名1','男','13823888881','住址1','upload/yonghu_touxiang1.jpg',100,'否'),(12,'2022-03-10 09:21:13','账号2','123456','姓名2','男','13823888882','住址2','upload/yonghu_touxiang2.jpg',100,'否'),(13,'2022-03-10 09:21:13','账号3','123456','姓名3','男','13823888883','住址3','upload/yonghu_touxiang3.jpg',100,'否'),(14,'2022-03-10 09:21:13','账号4','123456','姓名4','男','13823888884','住址4','upload/yonghu_touxiang4.jpg',100,'否'),(15,'2022-03-10 09:21:13','账号5','123456','姓名5','男','13823888885','住址5','upload/yonghu_touxiang5.jpg',100,'否'),(16,'2022-03-10 09:21:13','账号6','123456','姓名6','男','13823888886','住址6','upload/yonghu_touxiang6.jpg',100,'否');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-15 18:59:29
