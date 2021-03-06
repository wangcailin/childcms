-- MySQL dump 10.13  Distrib 5.6.37, for osx10.13 (x86_64)
--
-- Host: localhost    Database: fastadmin
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `fa_admin`
--

DROP TABLE IF EXISTS `fa_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin`
--

LOCK TABLES `fa_admin` WRITE;
/*!40000 ALTER TABLE `fa_admin` DISABLE KEYS */;
INSERT INTO `fa_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',0,1508251516,1492186163,1508251516,'e4016f3b-a3f2-4840-906a-e09c4591cc0b','normal');
/*!40000 ALTER TABLE `fa_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_admin_log`
--

DROP TABLE IF EXISTS `fa_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1367 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin_log`
--

LOCK TABLES `fa_admin_log` WRITE;
/*!40000 ALTER TABLE `fa_admin_log` DISABLE KEYS */;
INSERT INTO `fa_admin_log` VALUES (1317,1,'admin','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"fb0ebc847165720293856e4c9297166b\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1507972500),(1318,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"57ed926c467c750676cdaa8dbf1a3c76\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1507977224),(1319,0,'Unknown','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"5f19568fad596e48a879ee7b19ceffe1\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508060000),(1320,1,'admin','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"efe0cd672fe330ca73f196f086d1ae86\",\"username\":\"admin\",\"keeplogin\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508060006),(1321,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508062674),(1322,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"570217f7708dd2b934601d2eaca9bbe9\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508119289),(1323,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"557986177072c953a3de4f55ea953159\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148374),(1324,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,4,5,12,11,10,9,3,2,8,7,6\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148542),(1325,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,5,12,11,10,9,3,2,8,7,6,4\",\"changeid\":\"4\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148548),(1326,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"2db39689fb19372d45829a3b1c125559\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203069),(1327,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"\\u680f\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"13\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203107),(1328,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"content\\/list\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203842),(1329,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203924),(1330,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204029),(1331,1,'admin','/admin/auth/rule/edit/ids/67?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"\\u6a21\\u5757\\u7ba1\\u7406\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"67\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204080),(1332,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204095),(1333,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204119),(1334,1,'admin','/admin/auth/rule/edit/ids/66?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"content\\/list\",\"title\":\"Content\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"66\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206389),(1335,1,'admin','/admin/auth/rule/edit/ids/67?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"Module\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"67\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206414),(1336,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"Model\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206430),(1337,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"Category\",\"icon\":\"fa fa-list\",\"weigh\":\"13\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206545),(1338,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508208993),(1339,1,'admin','/admin/auth/rule/edit/ids/4?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"addon\",\"title\":\"Addon\",\"icon\":\"fa fa-rocket\",\"weigh\":\"1\",\"condition\":\"\",\"remark\":\"Addon tips\",\"status\":\"hidden\"},\"ids\":\"4\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508209012),(1340,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220434),(1341,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220445),(1342,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220456),(1343,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220469),(1344,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220885),(1345,1,'admin','/admin/category/add','栏目管理 添加','{\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220940),(1346,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221499),(1347,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221507),(1348,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221527),(1349,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221533),(1350,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221580),(1351,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221611),(1352,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221625),(1353,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221637),(1354,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221708),(1355,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221863),(1356,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"1\",\"description\":\"1\",\"listorder\":\"1\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508228960),(1357,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd51\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508230076),(1358,1,'admin','/admin/auth/rule/multi/ids/35','','{\"action\":\"\",\"ids\":\"35\",\"params\":\"ismenu=1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508232576),(1359,1,'admin','/admin/auth/rule/multi/ids/35','','{\"action\":\"\",\"ids\":\"35\",\"params\":\"ismenu=0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508232589),(1360,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"16\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234212),(1361,1,'admin','/admin/category/del/ids/18','栏目管理 删除','{\"action\":\"del\",\"ids\":\"18\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234308),(1362,1,'admin','/admin/category/del/ids/16,17','栏目管理 删除','{\"action\":\"del\",\"ids\":\"16,17\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234316),(1363,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','[]','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508235896),(1364,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508236279),(1365,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"0164db3b92f1985bb440b5d3814bfdaa\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508251518),(1366,1,'admin','/admin/index/login.html','','{\"__token__\":\"0164db3b92f1985bb440b5d3814bfdaa\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508251523);
/*!40000 ALTER TABLE `fa_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_attachment`
--

DROP TABLE IF EXISTS `fa_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_attachment`
--

LOCK TABLES `fa_attachment` WRITE;
/*!40000 ALTER TABLE `fa_attachment` DISABLE KEYS */;
INSERT INTO `fa_attachment` VALUES (1,'/assets/img/qrcode.png','150','150','png',0,21859,'image/png','',1499681848,1499681848,1499681848,'local','17163603d0263e4838b9387ff2cd4877e8b018f6');
/*!40000 ALTER TABLE `fa_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group`
--

DROP TABLE IF EXISTS `fa_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group`
--

LOCK TABLES `fa_auth_group` WRITE;
/*!40000 ALTER TABLE `fa_auth_group` DISABLE KEYS */;
INSERT INTO `fa_auth_group` VALUES (1,0,'Admin group','*',1490883540,149088354,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1490883540,1505465692,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1490883540,1502205322,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1490883540,1502205350,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1490883540,1502205344,'normal');
/*!40000 ALTER TABLE `fa_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group_access`
--

DROP TABLE IF EXISTS `fa_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group_access`
--

LOCK TABLES `fa_auth_group_access` WRITE;
/*!40000 ALTER TABLE `fa_auth_group_access` DISABLE KEYS */;
INSERT INTO `fa_auth_group_access` VALUES (1,1),(2,2),(3,3),(4,5),(5,5);
/*!40000 ALTER TABLE `fa_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_rule`
--

DROP TABLE IF EXISTS `fa_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_rule`
--

LOCK TABLES `fa_auth_rule` WRITE;
/*!40000 ALTER TABLE `fa_auth_rule` DISABLE KEYS */;
INSERT INTO `fa_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard\r','','Dashboard tips',1,1497429920,1497429920,65,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,7,'normal'),(3,'file',0,'category','Category','fa fa-list','','Category tips',1,1497429920,1508206545,13,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','Addon tips',1,1502035509,1508209012,1,'hidden'),(5,'file',0,'auth','Auth','fa fa-group','','',1,1497429920,1497430092,33,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,34,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,41,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user\r','','',1,1497429920,1497429920,47,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','Admin tips',1,1497429920,1497430320,14,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','Admin log tips',1,1497429920,1497430307,19,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','Group tips',1,1497429920,1497429920,23,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','Rule tips',1,1497429920,1497430581,28,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,8,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,9,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,11,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,10,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,12,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,42,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,43,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,44,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,45,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,46,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','',0,1497429920,1497429920,35,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,36,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,37,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,38,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,39,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,40,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,53,'normal'),(35,'file',3,'category/index','View','fa fa-circle-o','','',0,1497429920,1497429920,2,'normal'),(36,'file',3,'category/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,3,'normal'),(37,'file',3,'category/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,4,'normal'),(38,'file',3,'category/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,5,'normal'),(39,'file',3,'category/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,6,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','',0,1497429920,1497429920,15,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,16,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,17,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,18,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','',0,1497429920,1497429920,20,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,21,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,22,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','',0,1497429920,1497429920,24,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,25,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,26,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,27,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','',0,1502035509,1502035509,64,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','',0,1502035509,1502035509,63,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','',0,1502035509,1502035509,62,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','',0,1502035509,1502035509,61,'normal'),(59,'file',4,'addon/local','Local install','fa fa-circle-o','','',0,1502035509,1502035509,60,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','',0,1502035509,1502035509,59,'normal'),(61,'file',4,'addon/install','Install','fa fa-circle-o','','',0,1502035509,1502035509,58,'normal'),(62,'file',4,'addon/uninstall','Uninstall','fa fa-circle-o','','',0,1502035509,1502035509,57,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','',0,1502035509,1502035509,56,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','',0,1502035509,1502035509,55,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','',0,1502035509,1502035509,54,'normal'),(66,'file',0,'content/list','Content','fa fa-bank','','',1,1508203842,1508206389,0,'normal'),(67,'file',0,'module/list','Module','fa fa-eraser','','',1,1508203924,1508206414,0,'normal'),(68,'file',0,'model/list','Model','fa fa-align-center','','',1,1508204029,1508206430,0,'normal');
/*!40000 ALTER TABLE `fa_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_category`
--

DROP TABLE IF EXISTS `fa_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `arrparentid` varchar(255) DEFAULT NULL COMMENT '所有父id',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `modelid` tinyint(5) unsigned NOT NULL COMMENT '模型id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `url` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数量\n',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `listorder` smallint(5) unsigned NOT NULL COMMENT '排序',
  `setting` mediumtext COMMENT '相关配置信息\n相关配置信息\n相关配置信息\n相关配置信息\n相关配置信息相关配置信息',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `ismenu` tinyint(1) unsigned NOT NULL COMMENT '是否显示，1 显示',
  `updatetime` int(11) unsigned NOT NULL COMMENT '修改时间',
  `createtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_category`
--

LOCK TABLES `fa_category` WRITE;
/*!40000 ALTER TABLE `fa_category` DISABLE KEYS */;
INSERT INTO `fa_category` VALUES (19,0,NULL,0,'default',1,'测试',NULL,0,'/assets/img/qrcode.png','','',0,NULL,'',1,1508236279,1508236279);
/*!40000 ALTER TABLE `fa_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_config`
--

DROP TABLE IF EXISTS `fa_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_config`
--

LOCK TABLES `fa_config` WRITE;
/*!40000 ALTER TABLE `fa_config` DISABLE KEYS */;
INSERT INTO `fa_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','FastAdmin','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果使用CDN云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Cateogry type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','10000','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','password','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','10000@qq.com','','','');
/*!40000 ALTER TABLE `fa_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_model`
--

DROP TABLE IF EXISTS `fa_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `name` char(30) NOT NULL COMMENT '名称',
  `tablename` char(20) NOT NULL COMMENT '表名',
  `setting` text NOT NULL COMMENT '配置信息',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用 1 禁用',
  `sort` tinyint(3) NOT NULL COMMENT '排序',
  `type` tinyint(1) NOT NULL COMMENT '模块标识',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_model`
--

LOCK TABLES `fa_model` WRITE;
/*!40000 ALTER TABLE `fa_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_model_field`
--

DROP TABLE IF EXISTS `fa_model_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段id\n字段id\n字段id',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `field` varchar(20) NOT NULL COMMENT '字段英文',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `tips` text NOT NULL COMMENT '表单提示',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最小值',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大值',
  `pattern` varchar(255) NOT NULL COMMENT '正则',
  `errortips` varchar(255) NOT NULL COMMENT '错误提示',
  `formtype` varchar(20) NOT NULL COMMENT '表单类别',
  `setting` mediumtext NOT NULL COMMENT '配置',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否入库到推荐位 1 是',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '作为万能字段的附属字段 1 是',
  PRIMARY KEY (`fieldid`) USING BTREE,
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=609 DEFAULT CHARSET=utf8 COMMENT='模型字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_model_field`
--

LOCK TABLES `fa_model_field` WRITE;
/*!40000 ALTER TABLE `fa_model_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_model_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_test`
--

DROP TABLE IF EXISTS `fa_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_test`
--

LOCK TABLES `fa_test` WRITE;
/*!40000 ALTER TABLE `fa_test` DISABLE KEYS */;
INSERT INTO `fa_test` VALUES (1,0,12,'12,13','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县',0.00,0,'2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1499682285,1499682526,1499682526,0,1,'normal','1');
/*!40000 ALTER TABLE `fa_test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 23:20:30
-- MySQL dump 10.13  Distrib 5.6.37, for osx10.13 (x86_64)
--
-- Host: localhost    Database: fastadmin
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `fa_admin`
--

DROP TABLE IF EXISTS `fa_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin`
--

LOCK TABLES `fa_admin` WRITE;
/*!40000 ALTER TABLE `fa_admin` DISABLE KEYS */;
INSERT INTO `fa_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',0,1508490171,1492186163,1508490171,'34e1e5bc-53c3-4c15-b722-f1590690c095','normal');
/*!40000 ALTER TABLE `fa_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_admin_log`
--

DROP TABLE IF EXISTS `fa_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1385 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin_log`
--

LOCK TABLES `fa_admin_log` WRITE;
/*!40000 ALTER TABLE `fa_admin_log` DISABLE KEYS */;
INSERT INTO `fa_admin_log` VALUES (1317,1,'admin','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"fb0ebc847165720293856e4c9297166b\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1507972500),(1318,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"57ed926c467c750676cdaa8dbf1a3c76\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1507977224),(1319,0,'Unknown','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"5f19568fad596e48a879ee7b19ceffe1\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508060000),(1320,1,'admin','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"efe0cd672fe330ca73f196f086d1ae86\",\"username\":\"admin\",\"keeplogin\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508060006),(1321,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508062674),(1322,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"570217f7708dd2b934601d2eaca9bbe9\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508119289),(1323,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"557986177072c953a3de4f55ea953159\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148374),(1324,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,4,5,12,11,10,9,3,2,8,7,6\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148542),(1325,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,5,12,11,10,9,3,2,8,7,6,4\",\"changeid\":\"4\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148548),(1326,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"2db39689fb19372d45829a3b1c125559\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203069),(1327,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"\\u680f\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"13\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203107),(1328,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"content\\/list\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203842),(1329,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203924),(1330,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204029),(1331,1,'admin','/admin/auth/rule/edit/ids/67?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"\\u6a21\\u5757\\u7ba1\\u7406\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"67\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204080),(1332,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204095),(1333,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204119),(1334,1,'admin','/admin/auth/rule/edit/ids/66?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"content\\/list\",\"title\":\"Content\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"66\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206389),(1335,1,'admin','/admin/auth/rule/edit/ids/67?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"Module\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"67\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206414),(1336,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"Model\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206430),(1337,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"Category\",\"icon\":\"fa fa-list\",\"weigh\":\"13\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206545),(1338,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508208993),(1339,1,'admin','/admin/auth/rule/edit/ids/4?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"addon\",\"title\":\"Addon\",\"icon\":\"fa fa-rocket\",\"weigh\":\"1\",\"condition\":\"\",\"remark\":\"Addon tips\",\"status\":\"hidden\"},\"ids\":\"4\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508209012),(1340,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220434),(1341,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220445),(1342,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220456),(1343,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220469),(1344,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220885),(1345,1,'admin','/admin/category/add','栏目管理 添加','{\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220940),(1346,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221499),(1347,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221507),(1348,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221527),(1349,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221533),(1350,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221580),(1351,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221611),(1352,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221625),(1353,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221637),(1354,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221708),(1355,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221863),(1356,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"1\",\"description\":\"1\",\"listorder\":\"1\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508228960),(1357,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd51\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508230076),(1358,1,'admin','/admin/auth/rule/multi/ids/35','','{\"action\":\"\",\"ids\":\"35\",\"params\":\"ismenu=1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508232576),(1359,1,'admin','/admin/auth/rule/multi/ids/35','','{\"action\":\"\",\"ids\":\"35\",\"params\":\"ismenu=0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508232589),(1360,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"16\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234212),(1361,1,'admin','/admin/category/del/ids/18','栏目管理 删除','{\"action\":\"del\",\"ids\":\"18\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234308),(1362,1,'admin','/admin/category/del/ids/16,17','栏目管理 删除','{\"action\":\"del\",\"ids\":\"16,17\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234316),(1363,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','[]','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508235896),(1364,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508236279),(1365,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"0164db3b92f1985bb440b5d3814bfdaa\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508251518),(1366,1,'admin','/admin/index/login.html','','{\"__token__\":\"0164db3b92f1985bb440b5d3814bfdaa\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508251523),(1367,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"d211ebe36385792f15ab508e226831c6\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508290010),(1368,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"models\\/list\",\"title\":\"Models\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508290498),(1369,1,'admin','/admin/auth/rule/del/ids/68','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"68\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508291471),(1370,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"572e5184b3e28b92dfc3f7b4931f9484\",\"username\":\"admin\",\"keeplogin\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508305614),(1371,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508338052),(1372,1,'admin','/admin/models/del/ids/34','模型管理 删除','{\"action\":\"del\",\"ids\":\"34\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508338830),(1373,1,'admin','/admin/models/del/ids/35','模型管理 删除','{\"action\":\"del\",\"ids\":\"35\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508338859),(1374,1,'admin','/admin/models/del/ids/36','模型管理 删除','{\"action\":\"del\",\"ids\":\"36\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339005),(1375,1,'admin','/admin/models/del/ids/37','模型管理 删除','{\"action\":\"del\",\"ids\":\"37\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339044),(1376,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339050),(1377,1,'admin','/admin/models/del/ids/38','模型管理 删除','{\"action\":\"del\",\"ids\":\"38\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339640),(1378,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339783),(1379,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"wang\",\"tablename\":\"wang\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339846),(1380,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"cai\",\"tablename\":\"cai\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339910),(1381,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"a2b586907420d0dd5b92ba62ee831518\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508462541),(1382,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"810aebcdb59e66f66f22f70723852b64\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508490171),(1383,1,'admin','/admin/models/edit/ids/40?dialog=1','模型管理 编辑','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b11111111\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"},\"ids\":\"40\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508512877),(1384,1,'admin','/admin/category/edit/ids/19?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"modelid\":\"1\",\"type\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"19\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508515860);
/*!40000 ALTER TABLE `fa_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_attachment`
--

DROP TABLE IF EXISTS `fa_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_attachment`
--

LOCK TABLES `fa_attachment` WRITE;
/*!40000 ALTER TABLE `fa_attachment` DISABLE KEYS */;
INSERT INTO `fa_attachment` VALUES (1,'/assets/img/qrcode.png','150','150','png',0,21859,'image/png','',1499681848,1499681848,1499681848,'local','17163603d0263e4838b9387ff2cd4877e8b018f6');
/*!40000 ALTER TABLE `fa_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group`
--

DROP TABLE IF EXISTS `fa_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group`
--

LOCK TABLES `fa_auth_group` WRITE;
/*!40000 ALTER TABLE `fa_auth_group` DISABLE KEYS */;
INSERT INTO `fa_auth_group` VALUES (1,0,'Admin group','*',1490883540,149088354,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1490883540,1505465692,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1490883540,1502205322,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1490883540,1502205350,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1490883540,1502205344,'normal');
/*!40000 ALTER TABLE `fa_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group_access`
--

DROP TABLE IF EXISTS `fa_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group_access`
--

LOCK TABLES `fa_auth_group_access` WRITE;
/*!40000 ALTER TABLE `fa_auth_group_access` DISABLE KEYS */;
INSERT INTO `fa_auth_group_access` VALUES (1,1),(2,2),(3,3),(4,5),(5,5);
/*!40000 ALTER TABLE `fa_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_rule`
--

DROP TABLE IF EXISTS `fa_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_rule`
--

LOCK TABLES `fa_auth_rule` WRITE;
/*!40000 ALTER TABLE `fa_auth_rule` DISABLE KEYS */;
INSERT INTO `fa_auth_rule` VALUES (1,'file',0,'dashboard','Dashboard','fa fa-dashboard\r','','Dashboard tips',1,1497429920,1497429920,65,'normal'),(2,'file',0,'general','General','fa fa-cogs','','',1,1497429920,1497430169,7,'normal'),(3,'file',0,'category','Category','fa fa-list','','Category tips',1,1497429920,1508206545,13,'normal'),(4,'file',0,'addon','Addon','fa fa-rocket','','Addon tips',1,1502035509,1508209012,1,'hidden'),(5,'file',0,'auth','Auth','fa fa-group','','',1,1497429920,1497430092,33,'normal'),(6,'file',2,'general/config','Config','fa fa-cog','','Config tips',1,1497429920,1497430683,34,'normal'),(7,'file',2,'general/attachment','Attachment','fa fa-file-image-o','','Attachment tips',1,1497429920,1497430699,41,'normal'),(8,'file',2,'general/profile','Profile','fa fa-user\r','','',1,1497429920,1497429920,47,'normal'),(9,'file',5,'auth/admin','Admin','fa fa-user','','Admin tips',1,1497429920,1497430320,14,'normal'),(10,'file',5,'auth/adminlog','Admin log','fa fa-list-alt','','Admin log tips',1,1497429920,1497430307,19,'normal'),(11,'file',5,'auth/group','Group','fa fa-group','','Group tips',1,1497429920,1497429920,23,'normal'),(12,'file',5,'auth/rule','Rule','fa fa-bars','','Rule tips',1,1497429920,1497430581,28,'normal'),(13,'file',1,'dashboard/index','View','fa fa-circle-o','','',0,1497429920,1497429920,8,'normal'),(14,'file',1,'dashboard/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,9,'normal'),(15,'file',1,'dashboard/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,11,'normal'),(16,'file',1,'dashboard/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,10,'normal'),(17,'file',1,'dashboard/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,12,'normal'),(18,'file',6,'general/config/index','View','fa fa-circle-o','','',0,1497429920,1497429920,42,'normal'),(19,'file',6,'general/config/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,43,'normal'),(20,'file',6,'general/config/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,44,'normal'),(21,'file',6,'general/config/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,45,'normal'),(22,'file',6,'general/config/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,46,'normal'),(23,'file',7,'general/attachment/index','View','fa fa-circle-o','','',0,1497429920,1497429920,35,'normal'),(24,'file',7,'general/attachment/select','Select attachment','fa fa-circle-o','','',0,1497429920,1497429920,36,'normal'),(25,'file',7,'general/attachment/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,37,'normal'),(26,'file',7,'general/attachment/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,38,'normal'),(27,'file',7,'general/attachment/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,39,'normal'),(28,'file',7,'general/attachment/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,40,'normal'),(29,'file',8,'general/profile/index','View','fa fa-circle-o','','',0,1497429920,1497429920,48,'normal'),(30,'file',8,'general/profile/update','Update profile','fa fa-circle-o','','',0,1497429920,1497429920,49,'normal'),(31,'file',8,'general/profile/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,50,'normal'),(32,'file',8,'general/profile/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,51,'normal'),(33,'file',8,'general/profile/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,52,'normal'),(34,'file',8,'general/profile/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,53,'normal'),(35,'file',3,'category/index','View','fa fa-circle-o','','',0,1497429920,1497429920,2,'normal'),(36,'file',3,'category/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,3,'normal'),(37,'file',3,'category/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,4,'normal'),(38,'file',3,'category/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,5,'normal'),(39,'file',3,'category/multi','Multi','fa fa-circle-o','','',0,1497429920,1497429920,6,'normal'),(40,'file',9,'auth/admin/index','View','fa fa-circle-o','','',0,1497429920,1497429920,15,'normal'),(41,'file',9,'auth/admin/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,16,'normal'),(42,'file',9,'auth/admin/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,17,'normal'),(43,'file',9,'auth/admin/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,18,'normal'),(44,'file',10,'auth/adminlog/index','View','fa fa-circle-o','','',0,1497429920,1497429920,20,'normal'),(45,'file',10,'auth/adminlog/detail','Detail','fa fa-circle-o','','',0,1497429920,1497429920,21,'normal'),(46,'file',10,'auth/adminlog/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,22,'normal'),(47,'file',11,'auth/group/index','View','fa fa-circle-o','','',0,1497429920,1497429920,24,'normal'),(48,'file',11,'auth/group/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,25,'normal'),(49,'file',11,'auth/group/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,26,'normal'),(50,'file',11,'auth/group/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,27,'normal'),(51,'file',12,'auth/rule/index','View','fa fa-circle-o','','',0,1497429920,1497429920,29,'normal'),(52,'file',12,'auth/rule/add','Add','fa fa-circle-o','','',0,1497429920,1497429920,30,'normal'),(53,'file',12,'auth/rule/edit','Edit','fa fa-circle-o','','',0,1497429920,1497429920,31,'normal'),(54,'file',12,'auth/rule/del','Delete','fa fa-circle-o','','',0,1497429920,1497429920,32,'normal'),(55,'file',4,'addon/index','View','fa fa-circle-o','','',0,1502035509,1502035509,64,'normal'),(56,'file',4,'addon/add','Add','fa fa-circle-o','','',0,1502035509,1502035509,63,'normal'),(57,'file',4,'addon/edit','Edit','fa fa-circle-o','','',0,1502035509,1502035509,62,'normal'),(58,'file',4,'addon/del','Delete','fa fa-circle-o','','',0,1502035509,1502035509,61,'normal'),(59,'file',4,'addon/local','Local install','fa fa-circle-o','','',0,1502035509,1502035509,60,'normal'),(60,'file',4,'addon/state','Update state','fa fa-circle-o','','',0,1502035509,1502035509,59,'normal'),(61,'file',4,'addon/install','Install','fa fa-circle-o','','',0,1502035509,1502035509,58,'normal'),(62,'file',4,'addon/uninstall','Uninstall','fa fa-circle-o','','',0,1502035509,1502035509,57,'normal'),(63,'file',4,'addon/config','Setting','fa fa-circle-o','','',0,1502035509,1502035509,56,'normal'),(64,'file',4,'addon/refresh','Refresh','fa fa-circle-o','','',0,1502035509,1502035509,55,'normal'),(65,'file',4,'addon/multi','Multi','fa fa-circle-o','','',0,1502035509,1502035509,54,'normal'),(66,'file',0,'content/list','Content','fa fa-bank','','',1,1508203842,1508206389,0,'normal'),(67,'file',0,'module/list','Module','fa fa-eraser','','',1,1508203924,1508206414,0,'normal'),(69,'file',0,'models','模型管理','fa fa-circle-o\r','','',1,1508291447,1508291447,0,'normal'),(70,'file',69,'models/index','查看','fa fa-circle-o','','',0,1508291447,1508291447,0,'normal'),(71,'file',69,'models/add','添加','fa fa-circle-o','','',0,1508291447,1508291447,0,'normal'),(72,'file',69,'models/edit','编辑','fa fa-circle-o','','',0,1508291447,1508291447,0,'normal'),(73,'file',69,'models/del','删除','fa fa-circle-o','','',0,1508291447,1508291447,0,'normal'),(74,'file',69,'models/multi','批量更新','fa fa-circle-o','','',0,1508291447,1508291447,0,'normal');
/*!40000 ALTER TABLE `fa_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_cai`
--

DROP TABLE IF EXISTS `fa_cai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_cai` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_cai`
--

LOCK TABLES `fa_cai` WRITE;
/*!40000 ALTER TABLE `fa_cai` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_cai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_category`
--

DROP TABLE IF EXISTS `fa_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `arrparentid` varchar(255) DEFAULT NULL COMMENT '所有父id',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `modelid` tinyint(5) unsigned NOT NULL COMMENT '模型id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `url` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `items` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数量\n',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `listorder` smallint(5) unsigned NOT NULL COMMENT '排序',
  `setting` mediumtext COMMENT '相关配置信息\n相关配置信息\n相关配置信息\n相关配置信息\n相关配置信息相关配置信息',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `ismenu` tinyint(1) unsigned NOT NULL COMMENT '是否显示，1 显示',
  `updatetime` int(11) unsigned NOT NULL COMMENT '修改时间',
  `createtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_category`
--

LOCK TABLES `fa_category` WRITE;
/*!40000 ALTER TABLE `fa_category` DISABLE KEYS */;
INSERT INTO `fa_category` VALUES (19,0,NULL,0,'default',1,'测试',NULL,0,0,'/assets/img/qrcode.png','','',0,NULL,'',1,1508236279,1508236279);
/*!40000 ALTER TABLE `fa_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_config`
--

DROP TABLE IF EXISTS `fa_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_config`
--

LOCK TABLES `fa_config` WRITE;
/*!40000 ALTER TABLE `fa_config` DISABLE KEYS */;
INSERT INTO `fa_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','FastAdmin','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果使用CDN云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Cateogry type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','10000','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','password','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','10000@qq.com','','','');
/*!40000 ALTER TABLE `fa_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_models`
--

DROP TABLE IF EXISTS `fa_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_models` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `name` char(30) NOT NULL COMMENT '名称',
  `tablename` char(20) NOT NULL COMMENT '表名',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否禁用',
  `sort` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`modelid`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_models`
--

LOCK TABLES `fa_models` WRITE;
/*!40000 ALTER TABLE `fa_models` DISABLE KEYS */;
INSERT INTO `fa_models` VALUES (40,'测试模型11111111','test',1508339783,0,1,0),(41,'wang','wang',1508339846,0,1,0),(42,'cai','cai',1508339910,0,1,0);
/*!40000 ALTER TABLE `fa_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_models_field`
--

DROP TABLE IF EXISTS `fa_models_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_models_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段id\n字段id\n字段id',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `field` varchar(20) NOT NULL COMMENT '字段英文',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `tips` text COMMENT '表单提示',
  `formtype` varchar(20) NOT NULL COMMENT '表单类别',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  PRIMARY KEY (`fieldid`,`disabled`) USING BTREE,
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=634 DEFAULT CHARSET=utf8 COMMENT='模型字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_models_field`
--

LOCK TABLES `fa_models_field` WRITE;
/*!40000 ALTER TABLE `fa_models_field` DISABLE KEYS */;
INSERT INTO `fa_models_field` VALUES (623,40,'posids','推荐位',NULL,'posid',0,0),(622,40,'content','内容',NULL,'edit',0,0),(621,40,'image','图片',NULL,'image',0,0),(620,40,'description','摘要',NULL,'textarea',0,0),(619,40,'title','标题',NULL,'text',0,0),(624,41,'title','标题',NULL,'text',0,0),(625,41,'description','摘要',NULL,'textarea',0,0),(626,41,'image','图片',NULL,'image',0,0),(627,41,'content','内容',NULL,'edit',0,0),(628,41,'posids','推荐位',NULL,'posid',0,0),(629,42,'title','标题',NULL,'text',0,0),(630,42,'description','摘要',NULL,'textarea',0,0),(631,42,'image','图片',NULL,'image',0,0),(632,42,'content','内容',NULL,'edit',0,0),(633,42,'posids','推荐位',NULL,'posid',0,0);
/*!40000 ALTER TABLE `fa_models_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_test`
--

DROP TABLE IF EXISTS `fa_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_test`
--

LOCK TABLES `fa_test` WRITE;
/*!40000 ALTER TABLE `fa_test` DISABLE KEYS */;
INSERT INTO `fa_test` VALUES (1,0,12,'12,13','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县',0.00,0,'2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1499682285,1499682526,1499682526,0,1,'normal','1');
/*!40000 ALTER TABLE `fa_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wang`
--

DROP TABLE IF EXISTS `wang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wang`
--

LOCK TABLES `wang` WRITE;
/*!40000 ALTER TABLE `wang` DISABLE KEYS */;
/*!40000 ALTER TABLE `wang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-21  0:16:38
-- MySQL dump 10.13  Distrib 5.6.37, for osx10.13 (x86_64)
--
-- Host: localhost    Database: fastadmin
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `fa_admin`
--

DROP TABLE IF EXISTS `fa_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin`
--

LOCK TABLES `fa_admin` WRITE;
/*!40000 ALTER TABLE `fa_admin` DISABLE KEYS */;
INSERT INTO `fa_admin` VALUES (1,'admin','Admin','075eaec83636846f51c152f29b98a2fd','s4f3','/assets/img/avatar.png','admin@fastadmin.net',0,1508638608,1492186163,1508638608,'c05380c7-8bbe-4fff-b0b1-abe92f2de640','normal');
/*!40000 ALTER TABLE `fa_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_admin_log`
--

DROP TABLE IF EXISTS `fa_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1406 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_admin_log`
--

LOCK TABLES `fa_admin_log` WRITE;
/*!40000 ALTER TABLE `fa_admin_log` DISABLE KEYS */;
INSERT INTO `fa_admin_log` VALUES (1317,1,'admin','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"fb0ebc847165720293856e4c9297166b\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1507972500),(1318,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"57ed926c467c750676cdaa8dbf1a3c76\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1507977224),(1319,0,'Unknown','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"5f19568fad596e48a879ee7b19ceffe1\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508060000),(1320,1,'admin','/admin/index/login?url=/admin','登录','{\"url\":\"\\/admin\",\"__token__\":\"efe0cd672fe330ca73f196f086d1ae86\",\"username\":\"admin\",\"keeplogin\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508060006),(1321,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,2,6,7,8,3,5,9,10,11,12,4\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508062674),(1322,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"570217f7708dd2b934601d2eaca9bbe9\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508119289),(1323,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"557986177072c953a3de4f55ea953159\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148374),(1324,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,4,5,12,11,10,9,3,2,8,7,6\",\"changeid\":\"1\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148542),(1325,1,'admin','/admin/ajax/weigh','','{\"ids\":\"1,5,12,11,10,9,3,2,8,7,6,4\",\"changeid\":\"4\",\"pid\":\"0\",\"field\":\"weigh\",\"orderway\":\"desc\",\"table\":\"auth_rule\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508148548),(1326,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"2db39689fb19372d45829a3b1c125559\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203069),(1327,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"\\u680f\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"13\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203107),(1328,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"content\\/list\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203842),(1329,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508203924),(1330,1,'admin','/admin/auth/rule/add?dialog=1','权限管理 规则管理 添加','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204029),(1331,1,'admin','/admin/auth/rule/edit/ids/67?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"\\u6a21\\u5757\\u7ba1\\u7406\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"67\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204080),(1332,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-dot\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204095),(1333,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508204119),(1334,1,'admin','/admin/auth/rule/edit/ids/66?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"content\\/list\",\"title\":\"Content\",\"icon\":\"fa fa-bank\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"66\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206389),(1335,1,'admin','/admin/auth/rule/edit/ids/67?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"module\\/list\",\"title\":\"Module\",\"icon\":\"fa fa-eraser\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"67\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206414),(1336,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"model\\/list\",\"title\":\"Model\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206430),(1337,1,'admin','/admin/auth/rule/edit/ids/3?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"category\",\"title\":\"Category\",\"icon\":\"fa fa-list\",\"weigh\":\"13\",\"condition\":\"\",\"remark\":\"Category tips\",\"status\":\"normal\"},\"ids\":\"3\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508206545),(1338,1,'admin','/admin/auth/rule/multi/ids/4','','{\"action\":\"\",\"ids\":\"4\",\"params\":\"ismenu=0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508208993),(1339,1,'admin','/admin/auth/rule/edit/ids/4?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"addon\",\"title\":\"Addon\",\"icon\":\"fa fa-rocket\",\"weigh\":\"1\",\"condition\":\"\",\"remark\":\"Addon tips\",\"status\":\"hidden\"},\"ids\":\"4\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508209012),(1340,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220434),(1341,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220445),(1342,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220456),(1343,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220469),(1344,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220885),(1345,1,'admin','/admin/category/add','栏目管理 添加','{\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508220940),(1346,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221499),(1347,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221507),(1348,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221527),(1349,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221533),(1350,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221580),(1351,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221611),(1352,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221625),(1353,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221637),(1354,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221708),(1355,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508221863),(1356,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"1\",\"description\":\"1\",\"listorder\":\"1\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508228960),(1357,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd51\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508230076),(1358,1,'admin','/admin/auth/rule/multi/ids/35','','{\"action\":\"\",\"ids\":\"35\",\"params\":\"ismenu=1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508232576),(1359,1,'admin','/admin/auth/rule/multi/ids/35','','{\"action\":\"\",\"ids\":\"35\",\"params\":\"ismenu=0\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508232589),(1360,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"16\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234212),(1361,1,'admin','/admin/category/del/ids/18','栏目管理 删除','{\"action\":\"del\",\"ids\":\"18\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234308),(1362,1,'admin','/admin/category/del/ids/16,17','栏目管理 删除','{\"action\":\"del\",\"ids\":\"16,17\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508234316),(1363,1,'admin','/admin/general.config/edit','常规管理 系统配置 编辑','[]','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508235896),(1364,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"1\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508236279),(1365,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"0164db3b92f1985bb440b5d3814bfdaa\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508251518),(1366,1,'admin','/admin/index/login.html','','{\"__token__\":\"0164db3b92f1985bb440b5d3814bfdaa\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508251523),(1367,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"d211ebe36385792f15ab508e226831c6\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508290010),(1368,1,'admin','/admin/auth/rule/edit/ids/68?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"models\\/list\",\"title\":\"Models\",\"icon\":\"fa fa-align-center\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"68\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508290498),(1369,1,'admin','/admin/auth/rule/del/ids/68','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"68\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508291471),(1370,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"572e5184b3e28b92dfc3f7b4931f9484\",\"username\":\"admin\",\"keeplogin\":\"1\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508305614),(1371,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508338052),(1372,1,'admin','/admin/models/del/ids/34','模型管理 删除','{\"action\":\"del\",\"ids\":\"34\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508338830),(1373,1,'admin','/admin/models/del/ids/35','模型管理 删除','{\"action\":\"del\",\"ids\":\"35\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508338859),(1374,1,'admin','/admin/models/del/ids/36','模型管理 删除','{\"action\":\"del\",\"ids\":\"36\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339005),(1375,1,'admin','/admin/models/del/ids/37','模型管理 删除','{\"action\":\"del\",\"ids\":\"37\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339044),(1376,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339050),(1377,1,'admin','/admin/models/del/ids/38','模型管理 删除','{\"action\":\"del\",\"ids\":\"38\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339640),(1378,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339783),(1379,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"wang\",\"tablename\":\"wang\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339846),(1380,1,'admin','/admin/models/add?dialog=1','模型管理 添加','{\"dialog\":\"1\",\"row\":{\"name\":\"cai\",\"tablename\":\"cai\",\"disabled\":\"1\",\"sort\":\"0\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508339910),(1381,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"a2b586907420d0dd5b92ba62ee831518\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508462541),(1382,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"810aebcdb59e66f66f22f70723852b64\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508490171),(1383,1,'admin','/admin/models/edit/ids/40?dialog=1','模型管理 编辑','{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\\u6a21\\u578b11111111\",\"tablename\":\"test\",\"disabled\":\"1\",\"sort\":\"0\"},\"ids\":\"40\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508512877),(1384,1,'admin','/admin/category/edit/ids/19?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"modelid\":\"1\",\"type\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"19\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508515860),(1385,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"18a1dff5af2ce3a5ab253d909ebcf35b\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508597759),(1386,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"type\":\"default\",\"modelid\":\"0\",\"pid\":\"19\",\"name\":\"\\u6d4b\\u8bd51\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508598294),(1387,1,'admin','/admin/category/edit/ids/19?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"pid\":\"0\",\"type\":\"default\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"19\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508598659),(1388,1,'admin','/admin/category/edit/ids/19?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"modelid\":\"42\",\"type\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"19\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599254),(1389,1,'admin','/admin/category/edit/ids/19?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"modelid\":\"41\",\"type\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"19\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599260),(1390,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"modelid\":\"41\",\"type\":\"default\",\"pid\":\"19\",\"name\":\"1\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599381),(1391,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"modelid\":\"41\",\"type\":\"default\",\"pid\":\"19\",\"name\":\"1\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599389),(1392,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"modelid\":\"41\",\"type\":\"default\",\"pid\":\"19\",\"name\":\"1\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599697),(1393,1,'admin','/admin/category/add?dialog=1','栏目管理 添加','{\"dialog\":\"1\",\"row\":{\"modelid\":\"41\",\"type\":\"default\",\"pid\":\"19\",\"name\":\"1\",\"image\":\"\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"}}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599895),(1394,1,'admin','/admin/category/edit/ids/20?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"modelid\":\"40\",\"type\":\"default\",\"pid\":\"19\",\"name\":\"\\u6d4b\\u8bd5\\u5b50\\u680f\\u76ee\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"20\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508599915),(1395,1,'admin','/admin/category/edit/ids/20?dialog=1','栏目管理 编辑','{\"dialog\":\"1\",\"row\":{\"modelid\":\"42\",\"type\":\"default\",\"pid\":\"0\",\"name\":\"\\u6d4b\\u8bd5\\u5b50\\u680f\\u76ee\",\"image\":\"\\/assets\\/img\\/qrcode.png\",\"keywords\":\"\",\"description\":\"\",\"listorder\":\"0\",\"ismenu\":\"1\"},\"ids\":\"20\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508600053),(1396,1,'admin','/admin/index/login.html','登录','{\"__token__\":\"22f8e848ae96a52e88f0d4eb6e41ddb2\",\"username\":\"admin\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508638608),(1397,1,'admin','/admin/auth/rule/edit/ids/69?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"models\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-cube\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"69\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508643989),(1398,1,'admin','/admin/auth/rule/del/ids/149','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"149\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644481),(1399,1,'admin','/admin/auth/rule/del/ids/75','权限管理 规则管理 删除','{\"action\":\"del\",\"ids\":\"75\",\"params\":\"\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644512),(1400,1,'admin','/admin/auth/rule/edit/ids/100?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"models\\/models\",\"title\":\"\\u6a21\\u578b\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"100\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644850),(1401,1,'admin','/admin/auth/rule/edit/ids/101?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"100\",\"name\":\"models\\/models\\/index\",\"title\":\"\\u67e5\\u770b\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"101\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644879),(1402,1,'admin','/admin/auth/rule/edit/ids/102?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"100\",\"name\":\"models\\/models\\/add\",\"title\":\"Add\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"102\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644895),(1403,1,'admin','/admin/auth/rule/edit/ids/103?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"100\",\"name\":\"models\\/models\\/edit\",\"title\":\"\\u7f16\\u8f91\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"103\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644904),(1404,1,'admin','/admin/auth/rule/edit/ids/104?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"100\",\"name\":\"models\\/models\\/del\",\"title\":\"\\u5220\\u9664\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"104\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644913),(1405,1,'admin','/admin/auth/rule/edit/ids/105?dialog=1','权限管理 规则管理 编辑','{\"dialog\":\"1\",\"row\":{\"ismenu\":\"0\",\"pid\":\"100\",\"name\":\"models\\/models\\/multi\",\"title\":\"\\u6279\\u91cf\\u66f4\\u65b0\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"105\"}','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36',1508644927);
/*!40000 ALTER TABLE `fa_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_attachment`
--

DROP TABLE IF EXISTS `fa_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(30) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_attachment`
--

LOCK TABLES `fa_attachment` WRITE;
/*!40000 ALTER TABLE `fa_attachment` DISABLE KEYS */;
INSERT INTO `fa_attachment` VALUES (1,'/assets/img/qrcode.png','150','150','png',0,21859,'image/png','',1499681848,1499681848,1499681848,'local','17163603d0263e4838b9387ff2cd4877e8b018f6');
/*!40000 ALTER TABLE `fa_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group`
--

DROP TABLE IF EXISTS `fa_auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group`
--

LOCK TABLES `fa_auth_group` WRITE;
/*!40000 ALTER TABLE `fa_auth_group` DISABLE KEYS */;
INSERT INTO `fa_auth_group` VALUES (1,0,'Admin group','*',1490883540,149088354,'normal'),(2,1,'Second group','13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5',1490883540,1505465692,'normal'),(3,2,'Third group','1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5',1490883540,1502205322,'normal'),(4,1,'Second group 2','1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65',1490883540,1502205350,'normal'),(5,2,'Third group 2','1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34',1490883540,1502205344,'normal');
/*!40000 ALTER TABLE `fa_auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_group_access`
--

DROP TABLE IF EXISTS `fa_auth_group_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_group_access`
--

LOCK TABLES `fa_auth_group_access` WRITE;
/*!40000 ALTER TABLE `fa_auth_group_access` DISABLE KEYS */;
INSERT INTO `fa_auth_group_access` VALUES (1,1),(2,2),(3,3),(4,5),(5,5);
/*!40000 ALTER TABLE `fa_auth_group_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_auth_rule`
--

DROP TABLE IF EXISTS `fa_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_auth_rule`
--

LOCK TABLES `fa_auth_rule` WRITE;
/*!40000 ALTER TABLE `fa_auth_rule` DISABLE KEYS */;
INSERT INTO `fa_auth_rule` VALUES (88,'file',0,'category','分类管理','fa fa-list\r','','用于统一管理网站的所有分类,分类可进行无限级分类\r',1,1508644294,1508644294,0,'normal'),(89,'file',88,'category/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(90,'file',88,'category/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(91,'file',88,'category/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(92,'file',88,'category/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(93,'file',88,'category/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(94,'file',0,'dashboard','控制台','fa fa-dashboard\r','','用于展示当前系统中的统计数据、统计报表及重要实时数据\r',1,1508644295,1508644295,0,'normal'),(95,'file',94,'dashboard/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(96,'file',94,'dashboard/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(97,'file',94,'dashboard/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(98,'file',94,'dashboard/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(99,'file',94,'dashboard/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(100,'file',0,'models/models','模型管理','fa fa-circle-o','','',1,1508644295,1508644850,0,'normal'),(101,'file',100,'models/models/index','查看','fa fa-circle-o','','',0,1508644295,1508644879,0,'normal'),(102,'file',100,'models/models/add','Add','fa fa-circle-o','','',0,1508644295,1508644895,0,'normal'),(103,'file',100,'models/models/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644904,0,'normal'),(104,'file',100,'models/models/del','删除','fa fa-circle-o','','',0,1508644295,1508644913,0,'normal'),(105,'file',100,'models/models/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644927,0,'normal'),(106,'file',0,'auth','auth','fa fa-list','','',1,1508644295,1508644295,0,'normal'),(107,'file',106,'auth/admin','管理员管理','fa fa-users','','一个管理员可以有多个角色组,左侧的菜单根据管理员所拥有的权限进行生成',1,1508644295,1508644295,0,'normal'),(108,'file',107,'auth/admin/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(109,'file',107,'auth/admin/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(110,'file',107,'auth/admin/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(111,'file',107,'auth/admin/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(112,'file',106,'auth/adminlog','管理员日志','fa fa-users','','管理员可以查看自己所拥有的权限的管理员日志',1,1508644295,1508644295,0,'normal'),(113,'file',112,'auth/adminlog/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(114,'file',112,'auth/adminlog/detail','详情','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(115,'file',112,'auth/adminlog/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(116,'file',112,'auth/adminlog/selectpage','Selectpage','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(117,'file',106,'auth/group','角色组','fa fa-group','','角色组可以有多个,角色有上下级层级关系,如果子角色有角色组和管理员的权限则可以派生属于自己组别下级的角色组或管理员',1,1508644295,1508644295,0,'normal'),(118,'file',117,'auth/group/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(119,'file',117,'auth/group/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(120,'file',117,'auth/group/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(121,'file',117,'auth/group/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(122,'file',106,'auth/rule','规则管理','fa fa-list','','规则通常对应一个控制器的方法,同时左侧的菜单栏数据也从规则中体现,通常建议通过控制台进行生成规则节点',1,1508644295,1508644295,0,'normal'),(123,'file',122,'auth/rule/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(124,'file',122,'auth/rule/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(125,'file',122,'auth/rule/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(126,'file',122,'auth/rule/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(127,'file',122,'auth/rule/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(128,'file',0,'general','general','fa fa-list','','',1,1508644295,1508644295,0,'normal'),(129,'file',128,'general/attachment','附件管理','fa fa-circle-o\r','','主要用于管理上传到又拍云的数据或上传至本服务的上传数据\r',1,1508644295,1508644295,0,'normal'),(130,'file',129,'general/attachment/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(131,'file',129,'general/attachment/select','选择附件','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(132,'file',129,'general/attachment/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(133,'file',129,'general/attachment/del','Del','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(134,'file',129,'general/attachment/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(135,'file',129,'general/attachment/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(136,'file',128,'general/config','系统配置','fa fa-circle-o\r','','',1,1508644295,1508644295,0,'normal'),(137,'file',136,'general/config/index','Index','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(138,'file',136,'general/config/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(139,'file',136,'general/config/edit','Edit','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(140,'file',136,'general/config/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(141,'file',136,'general/config/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(142,'file',128,'general/profile','个人配置','fa fa-user\r','','',1,1508644295,1508644295,0,'normal'),(143,'file',142,'general/profile/index','查看','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(144,'file',142,'general/profile/update','更新个人信息','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(145,'file',142,'general/profile/add','添加','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(146,'file',142,'general/profile/edit','编辑','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(147,'file',142,'general/profile/del','删除','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal'),(148,'file',142,'general/profile/multi','批量更新','fa fa-circle-o','','',0,1508644295,1508644295,0,'normal');
/*!40000 ALTER TABLE `fa_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_cai`
--

DROP TABLE IF EXISTS `fa_cai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_cai` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_cai`
--

LOCK TABLES `fa_cai` WRITE;
/*!40000 ALTER TABLE `fa_cai` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_cai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_category`
--

DROP TABLE IF EXISTS `fa_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `arrparentid` varchar(255) DEFAULT NULL COMMENT '所有父id',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `modelid` tinyint(5) unsigned NOT NULL COMMENT '模型id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `url` varchar(100) DEFAULT NULL COMMENT '链接地址',
  `items` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数量\n',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `listorder` smallint(5) unsigned NOT NULL COMMENT '排序',
  `setting` mediumtext COMMENT '相关配置信息\n相关配置信息\n相关配置信息\n相关配置信息\n相关配置信息相关配置信息',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `ismenu` tinyint(1) unsigned NOT NULL COMMENT '是否显示，1 显示',
  `updatetime` int(11) unsigned NOT NULL COMMENT '修改时间',
  `createtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `weigh` (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_category`
--

LOCK TABLES `fa_category` WRITE;
/*!40000 ALTER TABLE `fa_category` DISABLE KEYS */;
INSERT INTO `fa_category` VALUES (19,0,NULL,0,'default',41,'测试',NULL,0,0,'/assets/img/qrcode.png','','',0,NULL,'',1,1508236279,1508236279),(20,0,NULL,0,'default',42,'测试子栏目',NULL,0,0,'/assets/img/qrcode.png','','',0,NULL,'',1,1508600053,1508599895);
/*!40000 ALTER TABLE `fa_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_config`
--

DROP TABLE IF EXISTS `fa_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_config`
--

LOCK TABLES `fa_config` WRITE;
/*!40000 ALTER TABLE `fa_config` DISABLE KEYS */;
INSERT INTO `fa_config` VALUES (1,'name','basic','Site name','请填写站点名称','string','FastAdmin','','required',''),(2,'beian','basic','Beian','粤ICP备15054802号-4','string','','','',''),(3,'cdnurl','basic','Cdn url','如果使用CDN云储存请配置该值','string','','','',''),(4,'version','basic','Version','如果静态资源有变动请重新配置该值','string','1.0.1','','required',''),(5,'timezone','basic','Timezone','','string','Asia/Shanghai','','required',''),(6,'forbiddenip','basic','Forbidden ip','一行一条记录','text','','','',''),(7,'languages','basic','Languages','','array','{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}','','required',''),(8,'fixedpage','basic','Fixed page','请尽量输入左侧菜单栏存在的链接','string','dashboard','','required',''),(9,'categorytype','dictionary','Cateogry type','','array','{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}','','',''),(10,'configgroup','dictionary','Config group','','array','{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}','','',''),(11,'mail_type','email','Mail type','选择邮件发送方式','select','1','[\"Please select\",\"SMTP\",\"Mail\"]','',''),(12,'mail_smtp_host','email','Mail smtp host','错误的配置发送邮件会导致服务器超时','string','smtp.qq.com','','',''),(13,'mail_smtp_port','email','Mail smtp port','(不加密默认25,SSL默认465,TLS默认587)','string','465','','',''),(14,'mail_smtp_user','email','Mail smtp user','（填写完整用户名）','string','10000','','',''),(15,'mail_smtp_pass','email','Mail smtp password','（填写您的密码）','string','password','','',''),(16,'mail_verify_type','email','Mail vertify type','（SMTP验证方式[推荐SSL]）','select','2','[\"None\",\"TLS\",\"SSL\"]','',''),(17,'mail_from','email','Mail from','','string','10000@qq.com','','','');
/*!40000 ALTER TABLE `fa_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_models`
--

DROP TABLE IF EXISTS `fa_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_models` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型id',
  `name` char(30) NOT NULL COMMENT '名称',
  `tablename` char(20) NOT NULL COMMENT '表名',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '信息数',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否禁用',
  `sort` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`modelid`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='模型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_models`
--

LOCK TABLES `fa_models` WRITE;
/*!40000 ALTER TABLE `fa_models` DISABLE KEYS */;
INSERT INTO `fa_models` VALUES (40,'测试模型11111111','test',1508339783,0,1,0),(41,'wang','wang',1508339846,0,1,0),(42,'cai','cai',1508339910,0,1,0);
/*!40000 ALTER TABLE `fa_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_models_field`
--

DROP TABLE IF EXISTS `fa_models_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_models_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段id\n字段id\n字段id',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `field` varchar(20) NOT NULL COMMENT '字段英文',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `tips` text COMMENT '表单提示',
  `formtype` varchar(20) NOT NULL COMMENT '表单类别',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 禁用 0启用',
  PRIMARY KEY (`fieldid`,`disabled`) USING BTREE,
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=634 DEFAULT CHARSET=utf8 COMMENT='模型字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_models_field`
--

LOCK TABLES `fa_models_field` WRITE;
/*!40000 ALTER TABLE `fa_models_field` DISABLE KEYS */;
INSERT INTO `fa_models_field` VALUES (623,40,'posids','推荐位',NULL,'posid',0,0),(622,40,'content','内容',NULL,'edit',0,0),(621,40,'image','图片',NULL,'image',0,0),(620,40,'description','摘要',NULL,'textarea',0,0),(619,40,'title','标题',NULL,'text',0,0),(624,41,'title','标题',NULL,'text',0,0),(625,41,'description','摘要',NULL,'textarea',0,0),(626,41,'image','图片',NULL,'image',0,0),(627,41,'content','内容',NULL,'edit',0,0),(628,41,'posids','推荐位',NULL,'posid',0,0),(629,42,'title','标题',NULL,'text',0,0),(630,42,'description','摘要',NULL,'textarea',0,0),(631,42,'image','图片',NULL,'image',0,0),(632,42,'content','内容',NULL,'edit',0,0),(633,42,'posids','推荐位',NULL,'posid',0,0);
/*!40000 ALTER TABLE `fa_models_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_test`
--

DROP TABLE IF EXISTS `fa_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_test`
--

LOCK TABLES `fa_test` WRITE;
/*!40000 ALTER TABLE `fa_test` DISABLE KEYS */;
INSERT INTO `fa_test` VALUES (1,0,12,'12,13','monday','hot,index','male','music,reading','我是一篇测试文章','<p>我是测试内容</p>','/assets/img/avatar.png','/assets/img/avatar.png,/assets/img/qrcode.png','/assets/img/avatar.png','关键字','描述','广西壮族自治区/百色市/平果县',0.00,0,'2017-07-10','2017-07-10 18:24:45',2017,'18:24:45',1499682285,1499682526,1499682526,0,1,'normal','1');
/*!40000 ALTER TABLE `fa_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wang`
--

DROP TABLE IF EXISTS `wang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wang`
--

LOCK TABLES `wang` WRITE;
/*!40000 ALTER TABLE `wang` DISABLE KEYS */;
/*!40000 ALTER TABLE `wang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-22 12:04:35
