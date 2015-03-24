-- MySQL dump 10.13  Distrib 5.5.33, for osx10.8 (i386)
--
-- Host: localhost    Database: vconf
-- ------------------------------------------------------
-- Server version	5.5.33-log

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
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'fdsaf',
  `int1` int(11) DEFAULT NULL COMMENT 'fdsafds21wwfdsa',
  `text1` text COLLATE utf8_bin NOT NULL,
  `tinytext1` tinytext COLLATE utf8_bin NOT NULL,
  `bigint1` bigint(20) DEFAULT NULL,
  `bit1` bit(1) DEFAULT NULL,
  `varchar11` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `longtext` longtext COLLATE utf8_bin NOT NULL,
  `mediumtext` mediumtext COLLATE utf8_bin NOT NULL,
  `datetime1` int(11) DEFAULT NULL,
  `real1` decimal(10,0) NOT NULL,
  `decimal` decimal(10,0) NOT NULL,
  `tinytext` tinytext COLLATE utf8_bin,
  `char` char(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `wefwew` (`int1`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_adv`
--

DROP TABLE IF EXISTS `v_adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_adv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `uid` bigint(20) NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT 'html',
  `ctime` int(11) unsigned NOT NULL,
  `lang` char(4) COLLATE utf8_bin NOT NULL DEFAULT 'zhcn',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_adv`
--

LOCK TABLES `v_adv` WRITE;
/*!40000 ALTER TABLE `v_adv` DISABLE KEYS */;
INSERT INTO `v_adv` VALUES (1,'wangda group',3,'html',0,'zhcn'),(2,'beijing group',3,'html',0,'zhcn'),(3,'http://m.baidu.com',3,'url',0,'zhcn'),(4,'http://www.baidu.com/img/baidu_sylogo1.gif',3,'image',0,'zhcn'),(5,'http://pic4.nipic.com/20091105/1000367_150022029375_2.jpg',3,'image',0,'zhcn'),(6,'http://img5.imgtn.bdimg.com/it/u=968971353,4169295948&fm=21&gp=0.jpg',3,'image',0,'zhcn'),(7,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/booksale.png',3,'image',0,'zhcn'),(8,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/status.png',3,'image',0,'zhcn'),(9,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/booksale.png',3,'image',0,'zhcn'),(10,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/status.png',3,'image',0,'zhcn'),(11,'http://tour.oss-cn-hangzhou.aliyuncs.com/videos/movie.mp4',3,'video',0,'zhcn'),(12,'测试文本',3,'txt',0,'zhcn'),(13,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/science.jpg',3,'image',0,'zhcn'),(14,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/cinema.jpg',3,'image',0,'zhcn'),(15,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/keepsake.jpg',3,'image',0,'zhcn'),(16,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/didongyi.jpg',3,'image',0,'zhcn'),(17,'http://tour.oss-cn-hangzhou.aliyuncs.com/docs/cinema.pdf',3,'pdf',0,'zhcn'),(18,'科技馆概况\n中国科学技术馆是我国唯一的国家级综合性科技馆，是实施科教兴国战略和人才强国战略、提高全民科学素质的大型科普基础设施。一期工程于1988年9月22日建成开放，二期工程于2000年4月29日建成开放，新馆于2009年9月16日建成开放。\n      中国科学技术馆的主要教育形式为展览教育，通过科学性、知识性、趣味性相结合的展览内容和参与互动的形式，反映科学原理及技术应用，鼓励公众动手探索实践，不仅普及科学知识，而且注重培养观众的科学思想、科学方法和科学精神。\n　   在开展展览教育的同时，中国科学技术馆还组织各种科普实践和培训实验活动，让观众通过亲身参与，加深对科学的理解和感悟，在潜移默化中提高自身科学素质。\n',3,'text',0,'zhcn'),(19,'史书《五行志》记载，东汉时期，中国经常发生地震。汉代天文学家张衡在公元132年，发明了世界上第一台测定地震方位的科学仪器――候风地动仪。\n　　根据《后汉书?张衡传》记载，“候风地动仪”制成于东汉阳嘉元年（132年），是用青铜铸造的。仪体形状就像汉代酒樽，仪器内部立一根铜柱，张衡称之为都柱。都柱周围有八条滑道，外部装有八条龙，龙口各含铜丸一个，龙头下方各放置一个张口向上的铜蛙。仪体内部装有机关，与体外龙头相连，一旦发生地震，机关被触发，龙口打开，铜丸落入铜蛙口中，发出声音，使掌管人知晓，并能判明地震来源的方向。\n',3,'txt',0,'zhcn'),(20,'http://tour.oss-cn-hangzhou.aliyuncs.com/videos/science.mp4',3,'video',0,'zhcn'),(21,'测试文本',3,'text',0,'zhcn'),(22,'hello the world',3,'html',0,'enus');
/*!40000 ALTER TABLE `v_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_adv_star`
--

DROP TABLE IF EXISTS `v_adv_star`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_adv_star` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned DEFAULT NULL,
  `adv_id` bigint(11) DEFAULT NULL,
  `star` tinyint(11) unsigned NOT NULL,
  `ctime` int(11) DEFAULT NULL,
  `ip` int(11) unsigned NOT NULL COMMENT 'star ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_adv_star`
--

LOCK TABLES `v_adv_star` WRITE;
/*!40000 ALTER TABLE `v_adv_star` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_adv_star` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_adv_temp`
--

DROP TABLE IF EXISTS `v_adv_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_adv_temp` (
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `desc` varchar(2000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) NOT NULL,
  `mtime` int(11) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `privacy` tinyint(4) NOT NULL,
  `layout` tinyint(4) NOT NULL,
  `issys` bit(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_adv_temp`
--

LOCK TABLES `v_adv_temp` WRITE;
/*!40000 ALTER TABLE `v_adv_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_adv_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_api_authcodes`
--

DROP TABLE IF EXISTS `v_api_authcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_api_authcodes` (
  `code` varchar(40) COLLATE utf8_bin NOT NULL,
  `app_id` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `redirect_uri` varchar(200) COLLATE utf8_bin NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `ctime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_api_authcodes`
--

LOCK TABLES `v_api_authcodes` WRITE;
/*!40000 ALTER TABLE `v_api_authcodes` DISABLE KEYS */;
INSERT INTO `v_api_authcodes` VALUES ('','','',0,NULL,0);
/*!40000 ALTER TABLE `v_api_authcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_api_count`
--

DROP TABLE IF EXISTS `v_api_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_api_count` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) unsigned NOT NULL,
  `timespan` int(11) NOT NULL,
  `count` int(11) unsigned NOT NULL,
  `roleid` int(11) unsigned NOT NULL,
  `dateline` int(11) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_api_count`
--

LOCK TABLES `v_api_count` WRITE;
/*!40000 ALTER TABLE `v_api_count` DISABLE KEYS */;
INSERT INTO `v_api_count` VALUES (1,1,86400,1000,1,1403787492,0);
/*!40000 ALTER TABLE `v_api_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_api_resource`
--

DROP TABLE IF EXISTS `v_api_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_api_resource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` varchar(300) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_api_resource`
--

LOCK TABLES `v_api_resource` WRITE;
/*!40000 ALTER TABLE `v_api_resource` DISABLE KEYS */;
INSERT INTO `v_api_resource` VALUES (1,'adv/ibeacon','get current advertisement for this ibeacon');
/*!40000 ALTER TABLE `v_api_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_api_role`
--

DROP TABLE IF EXISTS `v_api_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_api_role` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `desc` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `atoken_exp_in` mediumint(9) unsigned NOT NULL,
  `can_refresh_token` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_api_role`
--

LOCK TABLES `v_api_role` WRITE;
/*!40000 ALTER TABLE `v_api_role` DISABLE KEYS */;
INSERT INTO `v_api_role` VALUES (1,'normal user','',0,0);
/*!40000 ALTER TABLE `v_api_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_api_role_res`
--

DROP TABLE IF EXISTS `v_api_role_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_api_role_res` (
  `role_id` tinyint(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_api_role_res`
--

LOCK TABLES `v_api_role_res` WRITE;
/*!40000 ALTER TABLE `v_api_role_res` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_api_role_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_apn_notify`
--

DROP TABLE IF EXISTS `v_apn_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_apn_notify` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `body` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `button` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `device_token` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_apn_notify`
--

LOCK TABLES `v_apn_notify` WRITE;
/*!40000 ALTER TABLE `v_apn_notify` DISABLE KEYS */;
INSERT INTO `v_apn_notify` VALUES (1,'from star de you','from star de you body','see you',''),(2,'from star de you','from star de you body','see you',''),(3,'from star de you','from star de you body','see you',''),(4,'from star de you','from star de you body','see you',''),(5,'window','bodyhello','hello',''),(6,'window','bodyhello','hello',''),(7,'window','bodyhello','hello',''),(8,'window','bodyhello','hello',''),(9,'from star de you','from star de you body','see you',''),(10,'from star de you','from star de you body','see you','');
/*!40000 ALTER TABLE `v_apn_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_apn_token`
--

DROP TABLE IF EXISTS `v_apn_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_apn_token` (
  `device_token` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` bigint(11) NOT NULL DEFAULT '0',
  `webpushid` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `auth_token` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`device_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_apn_token`
--

LOCK TABLES `v_apn_token` WRITE;
/*!40000 ALTER TABLE `v_apn_token` DISABLE KEYS */;
INSERT INTO `v_apn_token` VALUES ('9592E58C1673DE1F8513AD7AF046D5DBD23E73717475033E7F16C9D01E0977DC',3,'web.com.niuspace','4282a97db3e44e88_0');
/*!40000 ALTER TABLE `v_apn_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_app`
--

DROP TABLE IF EXISTS `v_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_app` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `icon_url` varchar(1024) COLLATE utf8_bin NOT NULL,
  `url` varchar(1024) COLLATE utf8_bin NOT NULL,
  `atime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_app`
--

LOCK TABLES `v_app` WRITE;
/*!40000 ALTER TABLE `v_app` DISABLE KEYS */;
INSERT INTO `v_app` VALUES (1,14,'apps','/img/apps/apps.png','apps',1393920976,0),(2,3,'calc','/img/apps/calc.png','calc',1393920976,0),(3,6,'calendar','/img/apps/calendar.png','calendar',1393920976,0),(4,6,'camera_2','/img/apps/camera_2.png','camera_2',1393920976,0),(5,12,'camera','/img/apps/camera.png','camera',1393920976,0),(6,11,'clock','/img/apps/clock.png','clock',1393920976,0),(7,7,'contacts_book','/img/apps/contacts_book.png','contacts_book',1393920976,0),(8,4,'cube','/img/apps/cube.png','cube',1393920976,0),(9,3,'facebook','/img/apps/facebook.png','facebook',1393920976,0),(10,9,'log','/img/apps/log.png','log',1393920976,0),(11,10,'mail','/img/apps/mail.png','mail',1393920976,0),(12,13,'maps','/img/apps/maps.png','maps',1393920976,0),(13,11,'market','/img/apps/market.png','market',1393920976,0),(14,6,'media','/img/apps/media.png','media',1393920976,0),(15,4,'motra','/img/apps/motra.png','motra',1393920976,0),(16,12,'music','/img/apps/music.png','music',1393920976,0),(17,8,'pic','/img/apps/pic.png','pic',1393920976,0),(18,15,'twitter','/img/apps/twitter.png','twitter',1393920976,0),(19,3,'pixlr','/img/apps/pixlr.png','http://pixlr.com/editor/?loc=zh-cn',1393921147,1),(20,3,'Book','/img/apps/magazine.png','http://www.dooland.com/magazine/api/q+/flash.php',1393921147,1),(21,3,'DrawIO','/img/apps/office365.png','http://www.draw.io/',1393921147,1),(22,3,'日历365','/img/apps/cal365.png','http://www.365rili.com/account/login.do',1393921147,1),(23,3,'Gliffy','/img/apps/gliffy.gif','https://www.gliffy.com/go/html5/launch',1393921147,1),(24,3,'ThinkFree','/img/apps/thinkfree.gif','http://member.thinkfree.com/member/goLandingPage.action',1393921147,1),(25,3,'百度Map','/img/apps/bdmap.jpg','http://map.baidu.com/',1393921147,1),(26,3,'搜狗Music','/img/apps/sgmusic.png','http://y.qq.com/webplayer/p.html?type=1',1393921147,0),(27,3,'360Music','/img/apps/music.png','http://music.so.com/playbox/index.html',1393921147,1),(28,3,'Kugou','/img/apps/kugou.png','http://web.kugou.com/',1393921147,1),(29,3,'Paint','/img/apps/paint.png','http://mudcu.be/sketchpad/',1393921147,1),(30,3,'美图秀秀','/img/apps/meitu.png','http://xiuxiu.web.meitu.com/',1293921147,1),(31,3,'微信','/img/apps/wechat.png','https://wx.qq.com/',1294931147,1);
/*!40000 ALTER TABLE `v_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_app_comment`
--

DROP TABLE IF EXISTS `v_app_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_app_comment` (
  `id` bigint(20) NOT NULL,
  `appid` int(11) NOT NULL,
  `comment` varchar(6000) COLLATE utf8_bin NOT NULL,
  `ctime` int(11) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `realname` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_app_comment`
--

LOCK TABLES `v_app_comment` WRITE;
/*!40000 ALTER TABLE `v_app_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_app_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_app_remark`
--

DROP TABLE IF EXISTS `v_app_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_app_remark` (
  `ranking` tinyint(4) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `appid` int(11) NOT NULL,
  `atime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_app_remark`
--

LOCK TABLES `v_app_remark` WRITE;
/*!40000 ALTER TABLE `v_app_remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_app_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_calendar`
--

DROP TABLE IF EXISTS `v_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_calendar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` varchar(300) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) NOT NULL,
  `location` int(11) DEFAULT NULL,
  `uid` bigint(20) NOT NULL,
  `tz` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_calendar`
--

LOCK TABLES `v_calendar` WRITE;
/*!40000 ALTER TABLE `v_calendar` DISABLE KEYS */;
INSERT INTO `v_calendar` VALUES (12,'默认日历','默认描述',1415609274,0,4,''),(13,'默认日历','默认描述',1415671627,0,5,''),(14,'默认日历','默认描述',1415694936,0,10,''),(15,'默认日历','默认描述',1416565705,0,275,''),(16,'默认日历','默认描述',1416883505,0,278,''),(17,'默认日历','默认描述',1416970638,0,282,'');
/*!40000 ALTER TABLE `v_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_chat`
--

DROP TABLE IF EXISTS `v_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_chat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `from_idtype` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) unsigned NOT NULL,
  `from_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_chat`
--

LOCK TABLES `v_chat` WRITE;
/*!40000 ALTER TABLE `v_chat` DISABLE KEYS */;
INSERT INTO `v_chat` VALUES (43,189,'u',1414375643,164),(44,193,'u',1414380383,164),(45,199,'u',1414390813,163),(46,6,'u',1414995998,4),(60,5,'u',1415785827,10),(64,10,'u',1415953836,4),(65,4,'u',1415954958,10),(66,281,'u',1416915686,282),(67,285,'u',1416966762,282),(68,0,'u',1416966905,282),(69,286,'u',1416966976,282),(70,288,'u',1416968934,282),(71,0,'u',1416970490,282),(72,297,'u',1416970510,282),(73,298,'u',1416972091,282);
/*!40000 ALTER TABLE `v_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_member_action_log`
--

DROP TABLE IF EXISTS `v_common_member_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_member_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`,`action`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_member_action_log`
--

LOCK TABLES `v_common_member_action_log` WRITE;
/*!40000 ALTER TABLE `v_common_member_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_member_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_member_count`
--

DROP TABLE IF EXISTS `v_common_member_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_member_count` (
  `uid` int(10) unsigned NOT NULL,
  `extcredits1` int(11) NOT NULL DEFAULT '0',
  `extcredits2` int(11) NOT NULL DEFAULT '0',
  `extcredits3` int(11) NOT NULL DEFAULT '0',
  `extcredits4` int(11) NOT NULL DEFAULT '0',
  `extcredits5` int(11) NOT NULL DEFAULT '0',
  `extcredits6` int(11) NOT NULL DEFAULT '0',
  `extcredits7` int(11) NOT NULL DEFAULT '0',
  `extcredits8` int(11) NOT NULL DEFAULT '0',
  `friends` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` int(10) unsigned NOT NULL DEFAULT '0',
  `threads` int(10) unsigned NOT NULL DEFAULT '0',
  `digestposts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `doings` smallint(5) unsigned NOT NULL DEFAULT '0',
  `blogs` smallint(5) unsigned NOT NULL DEFAULT '0',
  `albums` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sharings` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attachsize` int(10) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `oltime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `todayattachs` smallint(5) unsigned NOT NULL DEFAULT '0',
  `todayattachsize` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `posts` (`posts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_member_count`
--

LOCK TABLES `v_common_member_count` WRITE;
/*!40000 ALTER TABLE `v_common_member_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_member_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_member_field_home`
--

DROP TABLE IF EXISTS `v_common_member_field_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_member_field_home` (
  `uid` int(10) unsigned NOT NULL,
  `videophoto` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `spacename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `spacedescription` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `domain` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `addsize` int(10) unsigned NOT NULL DEFAULT '0',
  `addfriend` smallint(5) unsigned NOT NULL DEFAULT '0',
  `menunum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `spacecss` longtext COLLATE utf8_bin NOT NULL,
  `blockposition` longtext COLLATE utf8_bin NOT NULL,
  `recentnote` longtext COLLATE utf8_bin NOT NULL,
  `spacenote` longtext COLLATE utf8_bin NOT NULL,
  `privacy` longtext COLLATE utf8_bin NOT NULL,
  `feedfriend` longtext COLLATE utf8_bin NOT NULL,
  `acceptemail` longtext COLLATE utf8_bin NOT NULL,
  `magicgift` longtext COLLATE utf8_bin NOT NULL,
  `stickblogs` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_member_field_home`
--

LOCK TABLES `v_common_member_field_home` WRITE;
/*!40000 ALTER TABLE `v_common_member_field_home` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_member_field_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_member_log`
--

DROP TABLE IF EXISTS `v_common_member_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_member_log` (
  `uid` int(10) unsigned NOT NULL,
  `action` char(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_member_log`
--

LOCK TABLES `v_common_member_log` WRITE;
/*!40000 ALTER TABLE `v_common_member_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_member_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_member_profile_setting`
--

DROP TABLE IF EXISTS `v_common_member_profile_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_member_profile_setting` (
  `fieldid` varchar(255) COLLATE utf8_bin NOT NULL,
  `available` bit(1) NOT NULL DEFAULT b'0',
  `invisible` bit(1) NOT NULL DEFAULT b'0',
  `needverify` bit(1) NOT NULL DEFAULT b'0',
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `required` bit(1) NOT NULL DEFAULT b'0',
  `unchangeable` bit(1) NOT NULL DEFAULT b'0',
  `showincard` bit(1) NOT NULL DEFAULT b'0',
  `showinthread` bit(1) NOT NULL DEFAULT b'0',
  `showinregister` bit(1) NOT NULL DEFAULT b'0',
  `allowsearch` bit(1) NOT NULL DEFAULT b'0',
  `formtype` varchar(255) COLLATE utf8_bin NOT NULL,
  `size` smallint(5) unsigned NOT NULL DEFAULT '0',
  `choices` longtext COLLATE utf8_bin NOT NULL,
  `validate` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_member_profile_setting`
--

LOCK TABLES `v_common_member_profile_setting` WRITE;
/*!40000 ALTER TABLE `v_common_member_profile_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_member_profile_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_myapp`
--

DROP TABLE IF EXISTS `v_common_myapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_myapp` (
  `appid` int(10) unsigned NOT NULL,
  `appname` varchar(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `narrow` bit(1) NOT NULL DEFAULT b'0',
  `flag` bit(1) NOT NULL DEFAULT b'0',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  `userpanelarea` bit(1) NOT NULL DEFAULT b'0',
  `canvastitle` varchar(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fullscreen` bit(1) NOT NULL DEFAULT b'0',
  `displayuserpanel` bit(1) NOT NULL DEFAULT b'0',
  `displaymethod` bit(1) NOT NULL DEFAULT b'0',
  `displayorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `appstatus` tinyint(4) NOT NULL DEFAULT '0',
  `iconstatus` tinyint(4) NOT NULL DEFAULT '0',
  `icondowntime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`appid`),
  KEY `flag` (`flag`,`displayorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_myapp`
--

LOCK TABLES `v_common_myapp` WRITE;
/*!40000 ALTER TABLE `v_common_myapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_myapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_nav`
--

DROP TABLE IF EXISTS `v_common_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_nav` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  `identifier` varchar(255) COLLATE utf8_bin NOT NULL,
  `target` bit(1) NOT NULL DEFAULT b'0',
  `type` bit(1) NOT NULL DEFAULT b'0',
  `available` bit(1) NOT NULL DEFAULT b'0',
  `displayorder` tinyint(4) NOT NULL,
  `highlight` bit(1) NOT NULL DEFAULT b'0',
  `level` bit(1) NOT NULL DEFAULT b'0',
  `subtype` bit(1) NOT NULL DEFAULT b'0',
  `subcols` bit(1) NOT NULL DEFAULT b'0',
  `icon` varchar(255) COLLATE utf8_bin NOT NULL,
  `subname` varchar(255) COLLATE utf8_bin NOT NULL,
  `suburl` varchar(255) COLLATE utf8_bin NOT NULL,
  `navtype` bit(1) NOT NULL DEFAULT b'0',
  `logo` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `navtype` (`navtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_nav`
--

LOCK TABLES `v_common_nav` WRITE;
/*!40000 ALTER TABLE `v_common_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_session`
--

DROP TABLE IF EXISTS `v_common_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_session` (
  `sid` char(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `invisible` bit(1) NOT NULL DEFAULT b'0',
  `action` bit(1) NOT NULL DEFAULT b'0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastolupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` int(10) unsigned NOT NULL DEFAULT '0',
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_session`
--

LOCK TABLES `v_common_session` WRITE;
/*!40000 ALTER TABLE `v_common_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_setting`
--

DROP TABLE IF EXISTS `v_common_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_setting` (
  `skey` varchar(255) COLLATE utf8_bin NOT NULL,
  `svalue` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_setting`
--

LOCK TABLES `v_common_setting` WRITE;
/*!40000 ALTER TABLE `v_common_setting` DISABLE KEYS */;
INSERT INTO `v_common_setting` VALUES ('','');
/*!40000 ALTER TABLE `v_common_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_stat`
--

DROP TABLE IF EXISTS `v_common_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_stat` (
  `daytime` int(10) unsigned NOT NULL,
  `login` int(10) unsigned NOT NULL DEFAULT '0',
  `mobilelogin` int(10) unsigned NOT NULL DEFAULT '0',
  `connectlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `register` int(10) unsigned NOT NULL DEFAULT '0',
  `invite` int(10) unsigned NOT NULL DEFAULT '0',
  `appinvite` int(10) unsigned NOT NULL DEFAULT '0',
  `doing` int(10) unsigned NOT NULL DEFAULT '0',
  `blog` int(10) unsigned NOT NULL DEFAULT '0',
  `pic` int(10) unsigned NOT NULL DEFAULT '0',
  `poll` int(10) unsigned NOT NULL DEFAULT '0',
  `activity` int(10) unsigned NOT NULL DEFAULT '0',
  `share` int(10) unsigned NOT NULL DEFAULT '0',
  `thread` int(10) unsigned NOT NULL DEFAULT '0',
  `docomment` int(10) unsigned NOT NULL DEFAULT '0',
  `blogcomment` int(10) unsigned NOT NULL DEFAULT '0',
  `piccomment` int(10) unsigned NOT NULL DEFAULT '0',
  `sharecomment` int(10) unsigned NOT NULL DEFAULT '0',
  `reward` int(10) unsigned NOT NULL DEFAULT '0',
  `debate` int(10) unsigned NOT NULL DEFAULT '0',
  `trade` int(10) unsigned NOT NULL DEFAULT '0',
  `group` int(10) unsigned NOT NULL DEFAULT '0',
  `groupjoin` int(10) unsigned NOT NULL DEFAULT '0',
  `groupthread` int(10) unsigned NOT NULL DEFAULT '0',
  `grouppost` int(10) unsigned NOT NULL DEFAULT '0',
  `post` int(10) unsigned NOT NULL DEFAULT '0',
  `wall` int(10) unsigned NOT NULL DEFAULT '0',
  `poke` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `sendpm` int(10) unsigned NOT NULL DEFAULT '0',
  `friend` int(10) unsigned NOT NULL DEFAULT '0',
  `addfriend` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`daytime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_stat`
--

LOCK TABLES `v_common_stat` WRITE;
/*!40000 ALTER TABLE `v_common_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_statuser`
--

DROP TABLE IF EXISTS `v_common_statuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_statuser` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `daytime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` char(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_statuser`
--

LOCK TABLES `v_common_statuser` WRITE;
/*!40000 ALTER TABLE `v_common_statuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_statuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_user`
--

DROP TABLE IF EXISTS `v_common_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_user` (
  `uid` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username` char(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` char(82) COLLATE utf8_bin DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'0',
  `emailstatus` bit(1) NOT NULL DEFAULT b'0',
  `avatarstatus` bit(1) NOT NULL DEFAULT b'0',
  `videophotostatus` bit(1) NOT NULL DEFAULT b'0',
  `adminid` bit(1) NOT NULL DEFAULT b'0',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupexpiry` int(10) unsigned NOT NULL DEFAULT '0',
  `extgroupids` char(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `notifysound` bit(1) NOT NULL DEFAULT b'0',
  `timeoffset` char(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  `newpm` smallint(5) unsigned NOT NULL DEFAULT '0',
  `newprompt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `accessmasks` bit(1) NOT NULL DEFAULT b'0',
  `allowadmincp` bit(1) NOT NULL DEFAULT b'0',
  `onlyacceptfriendpm` bit(1) NOT NULL DEFAULT b'0',
  `conisbind` bit(1) NOT NULL DEFAULT b'0',
  `note` varchar(255) COLLATE utf8_bin NOT NULL,
  `icon_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `realname` varchar(30) COLLATE utf8_bin NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `mobile` int(10) unsigned NOT NULL,
  `country_code` char(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  `creator_uid` bigint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `conisbind` (`conisbind`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_user`
--

LOCK TABLES `v_common_user` WRITE;
/*!40000 ALTER TABLE `v_common_user` DISABLE KEYS */;
INSERT INTO `v_common_user` VALUES (1,'Kazafei@qq0.com','ab0','1/sha256/joyFJLMQ/38e62735ec08b552f90be63649773d32a17df3d78598ed00157ca860208d130a','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 0','/img/people/bler.png','Kazafei',1,0,'',0),(2,'Blair@qq1.com','ab1','1/sha256/bqwCHPRS/8a44edb8b3a56057b0814d57089e961d6d5ed083ddd7360d5fe243d8d304afbc','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 1','/img/people/sys/176.png','Blair',1,0,'',0),(3,'Cameron@qq2.com','ab2','1/sha256/dsDJV349/c652f13a6f5f62c8b2303f7b6856069abe34f999735ccd77df1157d8325f1382','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 2','/img/people/3.png','Cameron',1,0,'',0),(4,'AndyLiu@qq3.com','ab3','1/sha256/dsDJV349/c652f13a6f5f62c8b2303f7b6856069abe34f999735ccd77df1157d8325f1382','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 3','/img/people/4.png','Andy Liu',9,123456789,'',0),(5,'Roosevelt@qq4.com','ab4','1/sha256/cgjtPUW4/7b39f711cbe1e0692537d87e5ae089a48fe1c133d15112bc55268dffbeb431be','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 4','/img/people/lsf.jpg','Roosevelt',9,0,'',0),(6,'Merkel@qq5.com','ab5','1/sha256/hkxyJKW4/dfe4abf8cfd80e9ad6c124f408cf8d6de37824eeb495dbeb8f193b7e605eb48b','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 5','/img/people/mker.png','Merkel',1,0,'',0),(7,'MaoZedong@qq6.com','ab6','1/sha256/btuxWXY7/2f9fb32a2138cecfb24cbc93476266be65f48983b68dbec1487b218663fa77b9','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 6','/img/people/mzd.png','Mao Zedong',1,0,'',0),(8,'Jobs@qq7.com','ab7','1/sha256/afisIJP1/9e1cc6bdeb61044a4527dc0407981d82a1c7ffc6d13f6d5ee95e8cf3b1054a91','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 7','/img/people/qbs.png','Jobs',1,0,'',0),(9,'Jordon@qq8.com','ab8','1/sha256/bmsyJKQ9/b35dda9c064e051feef9ee4ee3f13d767b8193887aa7991cea1d47e5d74e20a6','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 8','/img/people/qd.png','Jordon',1,0,'',0),(10,'Saddam@qq9.com','ab9','1/sha256/bilnIU24/d31f0854250c68fc80c56ecbc1bc954d80380be8f3d3e844caf2c53cb5d9221a','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 9','/img/people/sdm.png','Saddam',1,0,'',0),(11,'ab41@ab.com','ab41','1/sha256/dirxzNR9/bd1e9775438443b538eca4fb2d582beb59d46886c32cacdd2eb5d8e0ae9fec80','\0','\0','\0','\0','\0',0,0,'',1387764632,0,'\0','',0,0,'\0','\0','\0','\0','','','',1,0,'',0),(163,'kefu@kefu.com','kefu1','1/sha256/dsDJV349/c652f13a6f5f62c8b2303f7b6856069abe34f999735ccd77df1157d8325f1382','\0','\0','\0','\0','\0',0,0,'',1414159360,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','kefu1ya',1,0,'',0),(164,'kefu2@kefu.com','kefu2','1/sha256/dsDJV349/c652f13a6f5f62c8b2303f7b6856069abe34f999735ccd77df1157d8325f1382','\0','\0','\0','\0','\0',0,0,'',1414159376,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','kefu222ya',1,0,'',0),(238,'fdafdsas@rf.com','fdsa232','1/sha256/CHLX4679/0dd6c0798a538ca4676889fd39230e7b2b7b92198bdcc82f13109532ecf99cdb','\0','\0','\0','\0','\0',0,0,'',1414408113,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','rewq',2,0,'',0),(239,'rye_db8c95a6867df210@r.rr','rye_db8c95a6867df210','1/sha256/afrsRV18/6305b18968fe08d1fa045257fba0999b05a31401165af1aa16c5ebd74ef29027','\0','\0','\0','\0','\0',0,0,'',1415070526,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','rye_db8c95a6867df210',100,0,'',0),(240,'ryx_0ee30571decd5e39@r.rr','ryx_0ee30571decd5e39','1/sha256/fhqtIUY4/e75df52db77de786474ae0baf47323b190b444853b2cd5477e954a3923cb5cf4','\0','\0','\0','\0','\0',0,0,'',1415070769,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ryx_0ee30571decd5e39',100,0,'',0),(241,'ryz_18e962de5c26054e@r.rr','ryz_18e962de5c26054e','1/sha256/gmsILZ79/ccba1ddb8ce7500bfac91984db119fc3bef7d31fc6bc5c3384a2ace26e85936f','\0','\0','\0','\0','\0',0,0,'',1415073730,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ryz_18e962de5c26054e',100,0,'',0),(242,'ryi_093774dedf0a3018@r.rr','ryi_093774dedf0a3018','1/sha256/iltzXZ18/26f0f166620ef488e934743c9172143d357e6895e8074a7cc891e36a2b4ad183','\0','\0','\0','\0','\0',0,0,'',1415074394,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ryi_093774dedf0a3018',100,0,'',0),(243,'ryt_23bb6d5a5b872501@r.rr','ryt_23bb6d5a5b872501','1/sha256/wBGMRX45/89484ab56dfc627d6c43fe75615bf50a24db187020791c3b0d9744af23ce5e6b','\0','\0','\0','\0','\0',0,0,'',1415074496,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ryt_23bb6d5a5b872501',100,0,'',0),(244,'ryo_1edd9ac776c42c85@r.rr','ryo_1edd9ac776c42c85','1/sha256/fghtDH25/72f9830906ad4aafb5d9afd52348732a9999fd88cccdfa38f018be43672ff704','\0','\0','\0','\0','\0',0,0,'',1415091929,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ryo_1edd9ac776c42c85',100,0,'',0),(245,'ryt_da83639f56ba004a@r.rr','ryt_da83639f56ba004a','1/sha256/axAIJS08/e373d5f26bc6cb9a144416e240ae366ff794ae4d23ddad8e0c5c6f47ac25057d','\0','\0','\0','\0','\0',0,0,'',1415176128,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ryt_da83639f56ba004a',100,0,'',0),(252,'deguo2@yeah.net','ak47','1/sha256/egsCEMO4/94722a0fb7711cb826fdb3104139f4ef4a150ff6d084f4d206af278ec3746767','\0','\0','\0','\0','\0',0,0,'',1415185542,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','wioefjwlkf',1,0,'',0),(254,'icatch@yeah.net','m_o22e0d84315b4e50a','1/sha256/cmovwMX3/7b52ef346dbba2e09e59395d8312455e6db016042000aab2cde1beb40ad1af5d','\0','\0','\0','\0','\0',0,0,'',1416393103,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','icatch@yeah.net',110,0,'',0),(255,'wwwsd@fd.com','m_ea64fd3b9b6340d3e','1/sha256/atzEIT78/a84749b52820a36bfd93972c491425fa9b6c75ae04a4cecc29a6412c3d3a56c9','\0','\0','\0','\0','\0',0,0,'',1416455625,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','wwwsd@fd.com',110,0,'',0),(256,'icatch1@yeah.net','m_d032ab765ef3cea57','1/sha256/alru5678/6505d53cb988ec4ea28205979b7f3969b8c011eea1bb6e0479b9b2fbd756f981','\0','\0','\0','\0','\0',0,0,'',1416456654,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','icatch1@yeah.net',110,0,'',0),(257,'d@fd.com','m_i2642e84fbe32d3fa','1/sha256/mouzJLN1/4a9d6dc0daed5d426183c26256cbfb7f7cada8487ba1489e03a3543a11a09309','\0','\0','\0','\0','\0',0,0,'',1416474763,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','d@fd.com',110,0,'',0),(258,'dsa@fd.com','m_h8cd802251fbe0b6e','1/sha256/qxGIMOT4/345c1724b92154dc3075f73a856f6ff7b476b2d723d2613ed3b827abeaf0730c','\0','\0','\0','\0','\0',0,0,'',1416474953,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','dsa@fd.com',110,0,'',0),(259,'sf@fd.com','m_zfe3a5202e622a321','1/sha256/jnoruZ06/f5a20edc104e4e14974957a5bdba903f2c8b2c8e927d36bef8c556c14f836bde','\0','\0','\0','\0','\0',0,0,'',1416474998,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','sf@fd.com',110,0,'',0),(260,'dfs@fd.com','m_r72d558746ef5c158','1/sha256/dnopEKLW/669eb04f70d898f739b2d5524bcbbb3dbb59e39674a17b8e5589149d47a1a14a','\0','\0','\0','\0','\0',0,0,'',1416475216,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','dfs@fd.com',110,0,'',0),(261,'fdsa@fd.com','m_b9de1ea547d526bdd','1/sha256/EHLPU238/b7c28c320f5453e66123324871f38d45ebb21e75a186b6156327d8f3e7eee945','\0','\0','\0','\0','\0',0,0,'',1416475256,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsa@fd.com',110,0,'',0),(262,'wfe@fd.com','m_09d99b1b559b3814e','1/sha256/hkpuwE07/bf0b1d97c97ec6d01b6cb0880dc0d13a3ad4decd5ba8200a72c6ceb95c5581a1','\0','\0','\0','\0','\0',0,0,'',1416476703,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','wfe@fd.com',110,0,'',0),(263,'fsdaf@fda.com','m_p0e2b062f20ea5942','1/sha256/bghjuGH3/9d90d97e171bc85560a73af914c6c81c856c089e431f410edc1ba36d91fd9263','\0','\0','\0','\0','\0',0,0,'',1416476862,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fsdaf@fda.com',110,0,'',0),(264,'fds@fd.com','m_b5bdadd504756af91','1/sha256/jqxFV237/fde76567cbecbb822e276a8733193cccba4d0094bc144559f7d78e7e2df89b37','\0','\0','\0','\0','\0',0,0,'',1416477036,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fds@fd.com',110,0,'',0),(265,'fd@fd.com','m_c556039bb1f53724a','1/sha256/almuFVW1/a669d787ebc886f0ee1957bb379b568d738de4eca02c68bc3a1b3c106f85207a','\0','\0','\0','\0','\0',0,0,'',1416477089,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fd@fd.com',110,0,'',0),(266,'dfs@fdsa.com','m_y507f8d8eda6aa994','1/sha256/fimszOR3/7e8eebe1edcb15e9058e69cd6be09d32b76bcabb24fa4b8a993296026c55ccce','\0','\0','\0','\0','\0',0,0,'',1416477784,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','dfs@fdsa.com',110,0,'',0),(267,'dd@fd.com','m_o8c39d46fdc904ebf','1/sha256/luCKLR45/92b9c8578d47b175e7c9717ffe6283d88fe854a961dea6f1c668bd948ad8eceb','\0','\0','\0','\0','\0',0,0,'',1416478235,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','dd@fd.com',110,0,'',0),(268,'fdsa@fdlfdsa.com','m_p8b1f2d505f72ab18','1/sha256/cfghUWX4/39a1fe2cfd2aec80e03dc76dccfb48de731bf119d333555c65f10a796563a767','\0','\0','\0','\0','\0',0,0,'',1416479461,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsa@fdlfdsa.com',110,0,'',0),(269,'fdsa@fdfdsa.com','m_w383b9a3b0e3932ba','1/sha256/ivyJOTU6/480221e4edc22f8957a139c9ce375a94e00af08e180c974f437af3ee42166e08','\0','\0','\0','\0','\0',0,0,'',1416479576,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsa@fdfdsa.com',110,0,'',0),(270,'fdsaWfd@fd.com','m_wfb49ec5dced65451','1/sha256/cDHIQUV5/a6cf52812a70dc61c2ca72b3c1b744f88a001379ccfaea4b99507717e53c64e5','\0','\0','\0','\0','\0',0,0,'',1416479629,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsaWfd@fd.com',110,0,'',0),(271,'fdas@fdfdasfdas.com','m_2ec22c9b7c19e237e','1/sha256/hlnsOW25/983eceb92785bbcdcd4ffba709a4ec9fd5352ebf032464700bf76ffcec9ef1ee','\0','\0','\0','\0','\0',0,0,'',1416479862,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdas@fdfdasfdas.com',110,0,'',0),(272,'qqfd@fd.com','m_l85fe9da531f66aa1','1/sha256/gklrsyAT/53976086531da111ddac9913b2319998d22c6c91bc1b5a2da70c99b0008a3d45','\0','\0','\0','\0','\0',0,0,'',1416480100,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','qqfd@fd.com',110,0,'',0),(273,'fdsafds@fd.com','m_5d1fc88fb67bcb601','1/sha256/chiyEGN0/940b086c0782087642bc55e37dceeff5cb1abdc85e87b288605c23de4dff5a9a','\0','\0','\0','\0','\0',0,0,'',1416481158,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsafds@fd.com',110,0,'',0),(274,'fdsa@fds.com','m_u89e61a08aae8f338','1/sha256/nIJW2489/3a3a0bb3ecebb153859009f1c0477fbf7128df4d6ca36d8e0fde19ec8b1fbfa0','\0','\0','\0','\0','\0',0,0,'',1416481211,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsa@fds.com',110,0,'',0),(275,'fdas@fd.com','m_kfdb55954e4eca2bc','1/sha256/hwyFNTU9/0774ecb928550f09d24c254d0c6d148b289431e4f46b9951c5d287ceed30f070','\0','\0','\0','\0','\0',0,0,'',1416481301,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','beihai',111,0,'',0),(276,'fdsa@fdsa.com','m_p698ff46c7926e3f2','1/sha256/lmnoCHO1/ab54b2029d248aefea8bda73c5776318902f54fca2c7787d19e57dfe19bbd775','\0','\0','\0','\0','\0',0,0,'',1416482880,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','weheh',111,0,'',0),(277,'fdsaf@fdsa.com','m_t1375cb5af8008a60','1/sha256/jnyzLQZ2/feee5d52bd51361beb969aa75bab2ebe3f40e4a17c09a1911db03ec868c44f37','\0','\0','\0','\0','\0',0,0,'',1416485179,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsaf@fdsa.com',110,0,'',0),(278,'ry_f_ec5610d1cabffce6@r.rr','ry_f_ec5610d1cabffce','1/sha256/eqwDKRS2/f73780c3f23b06fa74170b3730aa080177741d81830de3ac96ce87ab0f36bfa8','\0','\0','\0','\0','\0',0,0,'',1416880567,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_f_ec5610d1cabffce6',100,0,'',0),(279,'ry_6_e41ce1ccc18f0cbe@r.rr','ry_6_e41ce1ccc18f0cb','1/sha256/jnwGIUW4/0b2fc8789c8b1ba847be73af9415400ab5d2ecc32cf1534c5c1a2d31aee46379','\0','\0','\0','\0','\0',0,0,'',1416908240,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_6_e41ce1ccc18f0cbe',100,0,'',0),(280,'ry_i_9a8bdf0de4f0ecf1@r.rr','ry_i_9a8bdf0de4f0ecf','1/sha256/aquIOWXZ/dcd12567cdd49eeed1615300d3cf5885288ce36c340f447114294bab2ec0a3c5','\0','\0','\0','\0','\0',0,0,'',1416913887,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_i_9a8bdf0de4f0ecf1',100,0,'',0),(281,'ry_w_641f62cf91e8d66f@r.rr','ry_w_641f62cf91e8d66','1/sha256/djlrtBTW/3adf2f9fa63e48742032c987fd5ea3500947bceed3011f45b00a431f3ce04c6f','\0','\0','\0','\0','\0',0,0,'',1416915586,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_w_641f62cf91e8d66f',100,0,'',0),(282,'kf1@kf.com','kf1','1/sha256/duxFIRZ4/60157b0e804da799d94889baf8f4867b1b455ff0ae4936701859079e958f01a8','\0','\0','\0','\0','\0',0,0,'',1416915624,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','kf1ya',2,0,'',0),(283,'kf2@kf2.com','kf2','1/sha256/lmqyFT56/db8989b1e6bcd13f5a6f0c8b207a41d78663faf7a157cb56bd0af80473487fd1','\0','\0','\0','\0','\0',0,0,'',1416915638,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','kf12ya',2,0,'',0),(284,'ry_d_c32ec3f4c622933f@r.rr','ry_d_c32ec3f4c622933','1/sha256/agqEJKU0/5e454cdf9bf185b7b7ce61a41d4ae4470c15c056a244a48ecddfa54f79ced52a','\0','\0','\0','\0','\0',0,0,'',1416965418,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_d_c32ec3f4c622933f',100,0,'',0),(285,'ry_z_87e3fab8c6ccddb8@r.rr','ry_z_87e3fab8c6ccddb','1/sha256/beKTUV45/be73c72aa70596b783bda16abec4a4cd07b1231da05386c80ab85014ceb2d3f6','\0','\0','\0','\0','\0',0,0,'',1416966630,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_z_87e3fab8c6ccddb8',100,0,'',0),(286,'ry_i_a82a62192284e365@r.rr','ry_i_a82a62192284e36','1/sha256/bnyILRS2/755d28f6efc74200149d1c90cc7b16a3293f29995013303ca20eba20dfc1a9e5','\0','\0','\0','\0','\0',0,0,'',1416966888,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_i_a82a62192284e365',100,0,'',0),(287,'ry_0_d334a7400fc7fec1@r.rr','ry_0_d334a7400fc7fec','1/sha256/kquEKS02/d1e96b1c45f882e8671117fc28a1ae5d52fcd9db7060c43b366162b05220046a','\0','\0','\0','\0','\0',0,0,'',1416968865,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_0_d334a7400fc7fec1',100,0,'',0),(288,'ry_u_8086068991a3b887@r.rr','ry_u_8086068991a3b88','1/sha256/efinouPW/bf6aff72293373727142c3ffd8e216e8ce01c951531f68827066a9fe8a349e6b','\0','\0','\0','\0','\0',0,0,'',1416968865,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_u_8086068991a3b887',100,0,'',0),(289,'ry_a_fda4de6057d472bb@r.rr','ry_a_fda4de6057d472b','1/sha256/aeotyDW4/5d80140e898ae0b49920263d1769c39ca0d2b58ef96290320294e505778a04f0','\0','\0','\0','\0','\0',0,0,'',1416969561,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_a_fda4de6057d472bb',100,0,'',0),(290,'ry_z_ccdf47665417534c@r.rr','ry_z_ccdf47665417534','1/sha256/bejwLXY5/4d011adae597fa509804d1a500b46751c703ec4dfb6adef988f991b6feced54c','\0','\0','\0','\0','\0',0,0,'',1416969561,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_z_ccdf47665417534c',100,0,'',0),(291,'ry_2_34de77a552209979@r.rr','ry_2_34de77a55220997','1/sha256/degnBQ36/127d3114610d987db424712b741e980632a75f0c45236879790e690a64183336','\0','\0','\0','\0','\0',0,0,'',1416969940,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_2_34de77a552209979',100,0,'',0),(292,'ry_7_7a2a8a44ac59b374@r.rr','ry_7_7a2a8a44ac59b37','1/sha256/lmwBNPR1/32323728b17f24be4d8afd7099c0eeda47a6b0c9258af86d519dd7929cac59fc','\0','\0','\0','\0','\0',0,0,'',1416969940,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_7_7a2a8a44ac59b374',100,0,'',0),(293,'ry_1_1c4e4392315715e7@r.rr','ry_1_1c4e4392315715e','1/sha256/bowPSU07/bebec56fd92c9858dc6889465b8010a66832f7a79fe52db5571e7e9c2d8931e0','\0','\0','\0','\0','\0',0,0,'',1416970038,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_1_1c4e4392315715e7',100,0,'',0),(294,'ry_v_84476e71fcea8dce@r.rr','ry_v_84476e71fcea8dc','1/sha256/ceflHKLM/24f93148271e19a172935ce88ad57f9b58b433955ecca3ccf275dc09d798308d','\0','\0','\0','\0','\0',0,0,'',1416970338,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_v_84476e71fcea8dce',100,0,'',0),(295,'ry_7_c3b7408d7587bf28@r.rr','ry_7_c3b7408d7587bf2','1/sha256/uCDMNV68/133e74c51bec72548c6ce72dde8082e6ef96f4f56f221238f6c6a2a07a2dfb88','\0','\0','\0','\0','\0',0,0,'',1416970338,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_7_c3b7408d7587bf28',100,0,'',0),(296,'ry_k_4f9e3d7e7eb27998@r.rr','ry_k_4f9e3d7e7eb2799','1/sha256/biwEHJLN/db0cd8b415fb4e6b3ca0ccfee0850eadceb744b05f2167bff001b5effd91a4e5','\0','\0','\0','\0','\0',0,0,'',1416970452,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_k_4f9e3d7e7eb27998',100,0,'',0),(297,'ry_y_1008855e885ffe4b@r.rr','ry_y_1008855e885ffe4','1/sha256/ehvLTZ57/fdc5cff0445ef383606ad67181f5bed317b6e112518d5d47ed6561a498103712','\0','\0','\0','\0','\0',0,0,'',1416970452,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_y_1008855e885ffe4b',100,0,'',0),(298,'ry_7_5a5f677f0037d7be@r.rr','ry_7_5a5f677f0037d7b','1/sha256/gowCUX69/38443c0c0277c7da96aeb70e6361303ca8ae544110c5269de61d5a5e97158c88','\0','\0','\0','\0','\0',0,0,'',1416970601,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ry_7_5a5f677f0037d7be',100,0,'',0);
/*!40000 ALTER TABLE `v_common_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_common_usergroup`
--

DROP TABLE IF EXISTS `v_common_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_common_usergroup` (
  `groupid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `radminid` tinyint(4) NOT NULL DEFAULT '0',
  `type` char(7) COLLATE utf8_bin NOT NULL DEFAULT 'member',
  `system` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'private',
  `grouptitle` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `creditshigher` int(11) NOT NULL DEFAULT '0',
  `creditslower` int(11) NOT NULL DEFAULT '0',
  `stars` tinyint(4) NOT NULL DEFAULT '0',
  `color` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `allowvisit` bit(1) NOT NULL DEFAULT b'0',
  `allowsendpm` bit(1) NOT NULL DEFAULT b'1',
  `allowinvite` bit(1) NOT NULL DEFAULT b'0',
  `allowmailinvite` bit(1) NOT NULL DEFAULT b'0',
  `maxinvitenum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inviteprice` smallint(5) unsigned NOT NULL DEFAULT '0',
  `maxinviteday` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `creditsrange` (`creditshigher`,`creditslower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_usergroup`
--

LOCK TABLES `v_common_usergroup` WRITE;
/*!40000 ALTER TABLE `v_common_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_common_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_company`
--

DROP TABLE IF EXISTS `v_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_company` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `contacts` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mobile` int(11) unsigned NOT NULL,
  `dateline` int(11) unsigned NOT NULL,
  `ip` int(11) unsigned NOT NULL,
  `ua` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pkg_type` tinyint(3) unsigned NOT NULL,
  `profession_id` smallint(11) unsigned NOT NULL,
  `uid` bigint(11) unsigned NOT NULL,
  `domain` varchar(1024) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `status` tinyint(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_company`
--

LOCK TABLES `v_company` WRITE;
/*!40000 ALTER TABLE `v_company` DISABLE KEYS */;
INSERT INTO `v_company` VALUES (1,'百度','ifa6@qq.com','fds',4294967295,0,0,'',2,0,0,'',0),(2,'百度','ifa6@qq.com','fds',4294967295,0,0,'',2,0,4,'w.cc',4),(32,'niuspace user','er@d.com','reww',4294967295,0,0,'',2,0,4,'www.niuspace.com',4),(33,'中国人名','devnow@yeah.net','jfelkfwj',4294967295,0,0,'',2,15,0,'',1),(34,'22few','ifa6@qq.com','afsdsaf',4294967295,0,0,'',2,6,0,'',1),(35,'家庭','fds@fd.com','联系人',4294967295,0,0,'',2,5,225,'',1),(36,'剪短发拉设计费','ifa6@qq.com','范德萨',4294967295,0,0,'',2,5,226,'',1),(37,'发动机撒类库','ifa6@qq.com','fdjsa',4294967295,0,0,'',1,15,227,'',1);
/*!40000 ALTER TABLE `v_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_discuss_group`
--

DROP TABLE IF EXISTS `v_discuss_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_discuss_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL,
  `uids` mediumtext COLLATE utf8_bin NOT NULL,
  `dateline` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `istemp` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `place` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `summary` varchar(300) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `added_emails` varchar(12000) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `added_mobiles` varchar(8000) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `attend_code` char(48) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `icon_url` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `iv` binary(1) NOT NULL DEFAULT '\0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_discuss_group`
--

LOCK TABLES `v_discuss_group` WRITE;
/*!40000 ALTER TABLE `v_discuss_group` DISABLE KEYS */;
INSERT INTO `v_discuss_group` VALUES (67,4,'4_275',1416481306,'Andy Liu',1,1,1416567691,1416654091,'fdasf','fasd','','fdas@fd.com','794f390fd0ec983f3c7cdcbf2632cc1c42d2963b39db4d6d','','\0'),(72,4,'4_10_3_5',1416562506,'Saddam,Cameron,Roosevelt,Andy Liu',1,0,0,0,'','','','','\'\'','\'\'','\0');
/*!40000 ALTER TABLE `v_discuss_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_discuss_right`
--

DROP TABLE IF EXISTS `v_discuss_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_discuss_right` (
  `uid` bigint(20) NOT NULL,
  `en_screen` bit(1) NOT NULL,
  `en_video` bit(1) DEFAULT NULL,
  `en_voice` bit(1) NOT NULL,
  `en_desk` bit(1) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `en_group` bit(1) NOT NULL DEFAULT b'1',
  `en_view_group` bit(1) NOT NULL DEFAULT b'1',
  UNIQUE KEY `groupid_uid_index` (`groupid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_discuss_right`
--

LOCK TABLES `v_discuss_right` WRITE;
/*!40000 ALTER TABLE `v_discuss_right` DISABLE KEYS */;
INSERT INTO `v_discuss_right` VALUES (3,'','','','',78,'',''),(4,'','\0','\0','\0',78,'',''),(5,'','','\0','\0',78,'',''),(3,'','','','',91,'',''),(4,'','\0','\0','\0',91,'','');
/*!40000 ALTER TABLE `v_discuss_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_email_temp`
--

DROP TABLE IF EXISTS `v_email_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_email_temp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_bin NOT NULL,
  `mtime` int(11) unsigned NOT NULL,
  `uid` bigint(11) unsigned NOT NULL,
  `name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_email_temp`
--

LOCK TABLES `v_email_temp` WRITE;
/*!40000 ALTER TABLE `v_email_temp` DISABLE KEYS */;
INSERT INTO `v_email_temp` VALUES (1,'<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" style=\"border-collapse:collapse;width:100%;\">\n  <tbody>\n    <tr>\n      <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding:0;border-left:none;border-right:none;border-top:none;border-bottom:none;\">\n        <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;\">\n          <tbody>\n            <tr>\n              <td style=\"padding:0;width:100%;\"><span style=\"color:#FFFFFF;display:none !important;font-size:1px;\">Somebody recently asked to reset your {{siteName}} password. Click here to change your password. Alternatively, you can enter the following password request code: {{requestCode}} Didn\'t request this change? If you didn\'t request a new password, let us know immediately . &nbsp; &nbsp; Change&nbsp;Password &nbsp; &nbsp;</span>\n              </td>\n            </tr>\n            <tr>\n              <td style=\"padding:0;width:100%;\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#435E9C\" style=\"border-collapse:collapse;width:100%;background:#435E9C;background-image:-webkit-linear-gradient(top, #5c77b5, #435e9c);border-color:#0A1F4F;border-style:solid;border-width:0px 0px 1px 0px;box-shadow:0 1px 1px rgba(0, 0, 0, 0.25);height:47px;\"\n                id=\"header\">\n                  <tbody>\n                    <tr>\n                      <td style=\"\">\n                        <center>\n                          <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" height=\"44\" style=\"border-collapse:collapse;\">\n                            <tbody>\n                              <tr>\n                                <td align=\"left\" id=\"header_title\" style=\"width:100%;line-height:47px;\">\n                                  <table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;\">\n                                    <tbody>\n                                      <tr>\n                                        <td style=\"\"><a href=\"{{siteLink}}\" style=\"color:#FFFFFF;text-decoration:none;font-weight:bold;font-family:lucida grande,tahoma,verdana,arial,sans-serif;vertical-align:baseline;font-size:20px;letter-spacing:-0.03em;text-align:left;text-shadow:0 1px 0 rgba(0, 0, 0, 0.24);\"\n                                          target=\"_blank\"> {{siteName}} </a>\n                                        </td>\n                                        <td width=\"10\" style=\"width:10px;\"></td>\n                                        <td style=\"\"><font color=\"white\" size=\"3\"><a style=\"color:#ffffff;text-decoration:none;font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;font-size:16px;font-weight:bold;text-shadow:0 -1px rgba(34, 59, 115, 0.85);vertical-align:middle;\" href=\"{{actionLink}}\" target=\"_blank\"></a></font>\n                                        </td>\n                                      </tr>\n                                    </tbody>\n                                  </table>\n                                </td>\n                              </tr>\n                            </tbody>\n                          </table>\n                        </center>\n                      </td>\n                    </tr>\n                  </tbody>\n                </table>\n              </td>\n            </tr>\n            <tr>\n              <td style=\"padding:0;width:100%;\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#e0e1e5\" id=\"table_color\" style=\"border-collapse:collapse;\">\n                  <tbody>\n                    <tr>\n                      <td style=\"\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" id=\"email_filler\" style=\"border-collapse:collapse;\">\n                          <tbody>\n                            <tr>\n                              <td height=\"19\" style=\"\">&nbsp;</td>\n                            </tr>\n                          </tbody>\n                        </table>\n                        <center>\n                          <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" style=\"border-collapse:collapse;\">\n                            <tbody>\n                              <tr>\n                                <td align=\"left\" id=\"body_container\" style=\"background-color:#ffffff;border-color:#c1c2c4;border-style:solid;display:block;border-width:1px;border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px;box-shadow:0 1px 1px rgba(0, 0, 0, 0.10);overflow:hidden;\">\n                                  <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;\">\n                                    <tbody>\n                                      <tr>\n                                        <td style=\"padding:15px;\">\n                                          <table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;width:100%;\">\n                                            <tbody>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-bottom:6px;\">\n                                                  <div>Somebody recently asked to reset your {{siteName}} password.</div><a href=\"{{actionLink}}\"\n                                                  style=\"color:#3b5998;text-decoration:none;\" target=\"_blank\">Click here to change your password.</a>\n                                                </td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;padding-bottom:6px;\">Alternatively, you can enter the following password request code:</td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;padding-bottom:6px;\">\n                                                  <center>\n                                                    <table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;\">\n                                                      <tbody>\n                                                        <tr>\n                                                          <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding:10px;background-color:#f2f2f2;border-left:1px solid #ccc;border-right:1px solid #ccc;border-top:1px solid #ccc;border-bottom:1px solid #ccc;\">{{requestCode}}</td>\n                                                        </tr>\n                                                      </tbody>\n                                                    </table>\n                                                  </center>\n                                                </td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;padding-bottom:6px;\">\n                                                  <div><span style=\"color:#333333;font-weight:bold;\">Didn\'t request this change?</span>\n                                                  </div>If you didn\'t request a new password, <a href=\"{{reportLink}}\"\n                                                  style=\"color:#3b5998;text-decoration:none;\" target=\"_blank\">let us know immediately</a>.</td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;\">\n                                                  <a href=\"{{actionLink}}\" style=\"color:#3b5998;text-decoration:none;\"\n                                                  target=\"_blank\">\n                                                    <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#4c649b\" style=\"border-collapse:collapse;border-width:1px;border-style:solid;display:block;font-weight:bold;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;font-size:14px;background:-webkit-gradient(linear, left top, left bottom,color-stop(0%, rgba(99,123,178,1)),color-stop(64%, rgba(76,100,155,1)));border-color:#485a83;box-shadow:inset 0 1px 0 rgba(255, 255, 255, 0.2),0 1px 2px rgba(0, 0, 0, 0.08);text-align:center;\"\n                                                    class=\"btn_confirm\">\n                                                      <tbody>\n                                                        <tr>\n                                                          <td height=\"7\" colspan=\"3\" style=\"line-height:7px;\">&nbsp;</td>\n                                                        </tr>\n                                                        <tr>\n                                                          <td width=\"16\" style=\"display:block;width:16px;\">&nbsp;</td>\n                                                          <td width=\"100%\" style=\"text-align:center;\">\n                                                            <a href=\"{{actionLink}}\" style=\"color:#3b5998;text-decoration:none;display:block;\"\n                                                            target=\"_blank\">\n                                                              <center><font size=\"3\"><span style=\"font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;font-weight:bold;font-size:14px;color:#ffffff;text-shadow:0 1px 0 #415686;\">Change Password</span></font>\n                                                              </center>\n                                                            </a>\n                                                          </td>\n                                                          <td width=\"16\" style=\"display:block;width:16px;\">&nbsp;</td>\n                                                        </tr>\n                                                        <tr>\n                                                          <td height=\"7\" colspan=\"3\" style=\"line-height:7px;\">&nbsp;</td>\n                                                        </tr>\n                                                      </tbody>\n                                                    </table>\n                                                  </a>\n                                                </td>\n                                              </tr>\n                                            </tbody>\n                                          </table>\n                                        </td>\n                                      </tr>\n                                    </tbody>\n                                  </table>\n                                </td>\n                              </tr>\n                            </tbody>\n                          </table>\n                        </center>\n                      </td>\n                    </tr>\n                  </tbody>\n                </table>\n              </td>\n            </tr>\n            <tr>\n              <td style=\"padding:0;width:100%;\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;\" id=\"footer_table\">\n                  <tbody>\n                    <tr>\n                      <td style=\"\">\n                        <center>\n                          <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" style=\"border-collapse:collapse;\">\n                            <tbody>\n                              <tr>\n                                <td style=\"\">\n                                  <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" border=\"0\" id=\"footer\" style=\"border-collapse:collapse;\">\n                                    <tbody>\n                                      <tr>\n                                        <td style=\"font-size:12px;font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;padding:18px 0;border-left:none;border-right:none;border-top:none;border-bottom:none;color:#6a7180;font-weight:300;line-height:16px;text-align:center;border:none;\">This message was sent to <a href=\"mailto:ifa6@qq.com\" style=\"color:#6a7180;text-decoration:none;font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;font-weight:bold;\"\n                                          target=\"_blank\">{{yourEmail}}</a> at your request. {{companyName}}, Inc.</td>\n                                      </tr>\n                                    </tbody>\n                                  </table>\n                                </td>\n                              </tr>\n                            </tbody>\n                          </table>\n                        </center>\n                      </td>\n                    </tr>\n                  </tbody>\n                </table>\n              </td>\n            </tr>\n          </tbody>\n        </table>\n      </td>\n    </tr>\n  </tbody>\n</table>',1403764266,4,'reset_pwd','retrieve your password on {{siteName}}'),(2,'<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" border=\"0\" style=\"border-collapse:collapse;width:100%;\">\n  <tbody>\n    <tr>\n      <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding:0;border-left:none;border-right:none;border-top:none;border-bottom:none;\">\n        <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;\">\n          <tbody>\n            <tr>\n              <td style=\"padding:0;width:100%;\"><span style=\"color:#FFFFFF;display:none !important;font-size:1px;\">Activation pending for using your {{siteName}} account.  Click here to activate your account . Alternatively, you can enter the following activation code: {{requestCode}} Didn\'t request user registration? If you didn\'t request user registration, let us know immediately . &nbsp; &nbsp; Change&nbsp;Password &nbsp; &nbsp;</span>\n              </td>\n            </tr>\n            <tr>\n              <td style=\"padding:0;width:100%;\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#435E9C\" style=\"border-collapse:collapse;width:100%;background:#435E9C;background-image:-webkit-linear-gradient(top, #5c77b5, #435e9c);border-color:#0A1F4F;border-style:solid;border-width:0px 0px 1px 0px;box-shadow:0 1px 1px rgba(0, 0, 0, 0.25);height:47px;\"\n                id=\"header\">\n                  <tbody>\n                    <tr>\n                      <td style=\"\">\n                        <center>\n                          <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" height=\"44\" style=\"border-collapse:collapse;\">\n                            <tbody>\n                              <tr>\n                                <td align=\"left\" id=\"header_title\" style=\"width:100%;line-height:47px;\">\n                                  <table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;\">\n                                    <tbody>\n                                      <tr>\n                                        <td style=\"\"><a href=\"{{siteLink}}\" style=\"color:#FFFFFF;text-decoration:none;font-weight:bold;font-family:lucida grande,tahoma,verdana,arial,sans-serif;vertical-align:baseline;font-size:20px;letter-spacing:-0.03em;text-align:left;text-shadow:0 1px 0 rgba(0, 0, 0, 0.24);\"\n                                          target=\"_blank\"> {{siteName}} </a>\n                                        </td>\n                                        <td width=\"10\" style=\"width:10px;\"></td>\n                                        <td style=\"\"><font color=\"white\" size=\"3\"><a style=\"color:#ffffff;text-decoration:none;font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;font-size:16px;font-weight:bold;text-shadow:0 -1px rgba(34, 59, 115, 0.85);vertical-align:middle;\" href=\"{{actionLink}}\" target=\"_blank\"></a></font>\n                                        </td>\n                                      </tr>\n                                    </tbody>\n                                  </table>\n                                </td>\n                              </tr>\n                            </tbody>\n                          </table>\n                        </center>\n                      </td>\n                    </tr>\n                  </tbody>\n                </table>\n              </td>\n            </tr>\n            <tr>\n              <td style=\"padding:0;width:100%;\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#e0e1e5\" id=\"table_color\" style=\"border-collapse:collapse;\">\n                  <tbody>\n                    <tr>\n                      <td style=\"\">\n                        <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" id=\"email_filler\" style=\"border-collapse:collapse;\">\n                          <tbody>\n                            <tr>\n                              <td height=\"19\" style=\"\">&nbsp;</td>\n                            </tr>\n                          </tbody>\n                        </table>\n                        <center>\n                          <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" style=\"border-collapse:collapse;\">\n                            <tbody>\n                              <tr>\n                                <td align=\"left\" id=\"body_container\" style=\"background-color:#ffffff;border-color:#c1c2c4;border-style:solid;display:block;border-width:1px;border-radius:5px;-webkit-border-radius:5px;-moz-border-radius:5px;box-shadow:0 1px 1px rgba(0, 0, 0, 0.10);overflow:hidden;\">\n                                  <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;\">\n                                    <tbody>\n                                      <tr>\n                                        <td style=\"padding:15px;\">\n                                          <table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;width:100%;\">\n                                            <tbody>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-bottom:6px;\">\n                                                  <div>Activation pending for using your {{siteName}} account.</div><a href=\"{{actionLink}}\"\n                                                  style=\"color:#3b5998;text-decoration:none;\" target=\"_blank\">Click here to activate your account.</a>\n                                                </td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;padding-bottom:6px;\">Alternatively, you can enter the following  request code:</td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;padding-bottom:6px;\">\n                                                  <center>\n                                                    <table cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;\">\n                                                      <tbody>\n                                                        <tr>\n                                                          <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding:10px;background-color:#f2f2f2;border-left:1px solid #ccc;border-right:1px solid #ccc;border-top:1px solid #ccc;border-bottom:1px solid #ccc;\">{{requestCode}}</td>\n                                                        </tr>\n                                                      </tbody>\n                                                    </table>\n                                                  </center>\n                                                </td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;padding-bottom:6px;\">\n                                                  <div><span style=\"color:#333333;font-weight:bold;\">Didn\'t request registration?</span>\n                                                  </div>If you didn\'t request registration, <a href=\"{{reportLink}}\"\n                                                  style=\"color:#3b5998;text-decoration:none;\" target=\"_blank\">let us know immediately</a>.</td>\n                                              </tr>\n                                              <tr>\n                                                <td style=\"font-size:11px;font-family:LucidaGrande,tahoma,verdana,arial,sans-serif;padding-top:6px;\">\n                                                  <a href=\"{{actionLink}}\" style=\"color:#3b5998;text-decoration:none;\"\n                                                  target=\"_blank\">\n                                                    <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#4c649b\" style=\"border-collapse:collapse;border-width:1px;border-style:solid;display:block;font-weight:bold;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;font-size:14px;background:-webkit-gradient(linear, left top, left bottom,color-stop(0%, rgba(99,123,178,1)),color-stop(64%, rgba(76,100,155,1)));border-color:#485a83;box-shadow:inset 0 1px 0 rgba(255, 255, 255, 0.2),0 1px 2px rgba(0, 0, 0, 0.08);text-align:center;\"\n                                                    class=\"btn_confirm\">\n                                                      <tbody>\n                                                        <tr>\n                                                          <td height=\"7\" colspan=\"3\" style=\"line-height:7px;\">&nbsp;</td>\n                                                        </tr>\n                                                        <tr>\n                                                          <td width=\"16\" style=\"display:block;width:16px;\">&nbsp;</td>\n                                                          <td width=\"100%\" style=\"text-align:center;\">\n                                                            <a href=\"{{actionLink}}\" style=\"color:#3b5998;text-decoration:none;display:block;\"\n                                                            target=\"_blank\">\n                                                              <center><font size=\"3\"><span style=\"font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;font-weight:bold;font-size:14px;color:#ffffff;text-shadow:0 1px 0 #415686;\">Activate Account</span></font>\n                                                              </center>\n                                                            </a>\n                                                          </td>\n                                                          <td width=\"16\" style=\"display:block;width:16px;\">&nbsp;</td>\n                                                        </tr>\n                                                        <tr>\n                                                          <td height=\"7\" colspan=\"3\" style=\"line-height:7px;\">&nbsp;</td>\n                                                        </tr>\n                                                      </tbody>\n                                                    </table>\n                                                  </a>\n                                                </td>\n                                              </tr>\n                                            </tbody>\n                                          </table>\n                                        </td>\n                                      </tr>\n                                    </tbody>\n                                  </table>\n                                </td>\n                              </tr>\n                            </tbody>\n                          </table>\n                        </center>\n                      </td>\n                    </tr>\n                  </tbody>\n                </table>\n              </td>\n            </tr>\n            <tr>\n              <td style=\"padding:0;width:100%;\">\n                <table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;\" id=\"footer_table\">\n                  <tbody>\n                    <tr>\n                      <td style=\"\">\n                        <center>\n                          <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" style=\"border-collapse:collapse;\">\n                            <tbody>\n                              <tr>\n                                <td style=\"\">\n                                  <table cellspacing=\"0\" cellpadding=\"0\" width=\"610\" border=\"0\" id=\"footer\" style=\"border-collapse:collapse;\">\n                                    <tbody>\n                                      <tr>\n                                        <td style=\"font-size:12px;font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;padding:18px 0;border-left:none;border-right:none;border-top:none;border-bottom:none;color:#6a7180;font-weight:300;line-height:16px;text-align:center;border:none;\">This message was sent to <a href=\"mailto:ifa6@qq.com\" style=\"color:#6a7180;text-decoration:none;font-family:Helvetica Neue,Helvetica,Lucida Grande,tahoma,verdana,arial,sans-serif;font-weight:bold;\"\n                                          target=\"_blank\">{{yourEmail}}</a> at your request. {{companyName}}, Inc.</td>\n                                      </tr>\n                                    </tbody>\n                                  </table>\n                                </td>\n                              </tr>\n                            </tbody>\n                          </table>\n                        </center>\n                      </td>\n                    </tr>\n                  </tbody>\n                </table>\n              </td>\n            </tr>\n          </tbody>\n        </table>\n      </td>\n    </tr>\n  </tbody>\n</table>',1403764266,4,'new_user','your registration code on {{siteName}}');
/*!40000 ALTER TABLE `v_email_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_event`
--

DROP TABLE IF EXISTS `v_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_event` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `cal_id` int(11) NOT NULL,
  `cal_name` varchar(25) COLLATE utf8_bin NOT NULL,
  `title` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `start` int(10) unsigned NOT NULL,
  `uid` bigint(11) NOT NULL,
  `end` int(11) unsigned NOT NULL,
  `color` varchar(7) COLLATE utf8_bin NOT NULL DEFAULT '#3a87ad',
  `allday` tinyint(11) unsigned NOT NULL DEFAULT '1',
  `ctime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_event`
--

LOCK TABLES `v_event` WRITE;
/*!40000 ALTER TABLE `v_event` DISABLE KEYS */;
INSERT INTO `v_event` VALUES (118,2,'default calendar','wwwdd',1410283800,3,1410508800,'#d9534f',1,1411131187),(119,2,'default calendar','ddddddd',1410719400,3,1410748200,'#d9534f',1,1411131936),(120,2,'default calendar','wwfewfew',1409702400,3,1409788800,'#ff851b',1,1411133023),(121,2,'default calendar','快点过来',1411084800,3,1411171200,'#ff851b',1,1411133041),(122,2,'default calendar','Nav',1409875200,3,1409961600,'#001f3f',1,1411368394),(123,5,'default calendar','test',1409443200,4,1409529600,'#d9534f',1,1411368718),(124,2,'default calendar','w at 10:10',1409529600,3,1409616000,'#00c0ef',1,1411378218),(125,2,'default calendar','w at 10:10',1411344000,3,1411430400,'#ff851b',1,1411378409);
/*!40000 ALTER TABLE `v_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_face`
--

DROP TABLE IF EXISTS `v_face`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_face` (
  `uid` bigint(20) NOT NULL,
  `url` varchar(200) COLLATE utf8_bin NOT NULL,
  `facepp_id` varchar(64) COLLATE utf8_bin NOT NULL,
  `atime` int(11) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(80) COLLATE utf8_bin NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `person_id` varchar(48) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(48) COLLATE utf8_bin NOT NULL,
  `group_name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_face`
--

LOCK TABLES `v_face` WRITE;
/*!40000 ALTER TABLE `v_face` DISABLE KEYS */;
INSERT INTO `v_face` VALUES (3,'/upload/face/3_140610172331.png','1d958dd4b04899ff78bb89ba9faa6bfe',1402392214,23,'','ab2','c392adc53492ed7bbe15aab091a48882','b312b96b54b610d73a7f9b13a23a2f1a','group1'),(3,'/upload/face/3_140829114655.png','',1409284015,24,'','ab2','','',''),(4,'/upload/face/4_140923113308.png','',1411443188,25,'','ab3','','',''),(4,'/upload/face/4_140923113410.png','',1411443250,26,'','ab3','','','');
/*!40000 ALTER TABLE `v_face` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_feature_resource`
--

DROP TABLE IF EXISTS `v_feature_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_feature_resource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `features_id` smallint(11) unsigned NOT NULL,
  `res_id` smallint(6) unsigned NOT NULL,
  `dateline` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_feature_resource`
--

LOCK TABLES `v_feature_resource` WRITE;
/*!40000 ALTER TABLE `v_feature_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_feature_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_features`
--

DROP TABLE IF EXISTS `v_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_features` (
  `id` smallint(11) unsigned NOT NULL AUTO_INCREMENT,
  `role` tinyint(11) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dateline` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_features`
--

LOCK TABLES `v_features` WRITE;
/*!40000 ALTER TABLE `v_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_friends`
--

DROP TABLE IF EXISTS `v_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_friends` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `fuid` int(10) unsigned NOT NULL DEFAULT '0',
  `fusername` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `gid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rel` tinyint(4) NOT NULL,
  `alias` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`uid`,`fuid`),
  KEY `fuid` (`fuid`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_friends`
--

LOCK TABLES `v_friends` WRITE;
/*!40000 ALTER TABLE `v_friends` DISABLE KEYS */;
INSERT INTO `v_friends` VALUES (0,4,'',0,1416966157,'guest',2,'friend'),(3,4,'',0,1398680529,'',5,''),(3,9,'',0,0,'ddddd',5,'wang'),(4,0,'',0,1411727935,'',2,''),(4,3,'',0,1398680529,'',2,''),(4,5,'',0,1411728859,'',2,''),(4,6,'',0,1414984687,'www',2,''),(4,7,'',0,1414996907,'f',2,''),(4,10,'',0,1415863445,'',2,''),(5,4,'',0,1411729799,'',6,''),(5,10,'',0,1415352575,'',5,''),(6,4,'',0,1414985516,'',6,''),(6,76,'',0,1398680529,'22',2,''),(7,4,'',0,1414996916,'',3,''),(10,4,'',0,1415862583,'',6,''),(10,5,'',0,1415672190,'',5,''),(285,4,'',0,1416966630,'guest',2,'friend'),(286,4,'',0,1416966888,'guest',2,'friend'),(287,4,'',0,1416968865,'guest',2,'friend'),(288,4,'',0,1416968865,'guest',2,'friend'),(289,4,'',0,1416969561,'guest',2,'friend'),(290,4,'',0,1416969562,'guest',2,'friend'),(291,4,'',0,1416969940,'guest',2,'friend'),(292,4,'',0,1416969940,'guest',2,'friend'),(293,4,'',0,1416970038,'guest',2,'friend'),(294,4,'',0,1416970338,'guest',2,'friend'),(295,4,'',0,1416970338,'guest',2,'friend'),(296,4,'',0,1416970452,'guest',2,'friend'),(297,4,'',0,1416970452,'guest',2,'friend'),(298,4,'',0,1416970601,'guest',2,'friend');
/*!40000 ALTER TABLE `v_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_home_blogfield`
--

DROP TABLE IF EXISTS `v_home_blogfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_home_blogfield` (
  `blogid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tag` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8_bin NOT NULL,
  `postip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `related` longtext COLLATE utf8_bin NOT NULL,
  `relatedtime` int(10) unsigned NOT NULL DEFAULT '0',
  `target_ids` longtext COLLATE utf8_bin NOT NULL,
  `hotuser` longtext COLLATE utf8_bin NOT NULL,
  `magiccolor` tinyint(4) NOT NULL DEFAULT '0',
  `magicpaper` tinyint(4) NOT NULL DEFAULT '0',
  `pushedaid` mediumint(9) NOT NULL DEFAULT '0',
  `maintype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `subtype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `devurl` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mobile` varchar(11) COLLATE utf8_bin DEFAULT '',
  `form_id` int(11) DEFAULT NULL,
  `definition` varchar(3000) COLLATE utf8_bin DEFAULT NULL,
  `setting` varchar(12000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `sessionid` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`blogid`,`maintype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_home_blogfield`
--

LOCK TABLES `v_home_blogfield` WRITE;
/*!40000 ALTER TABLE `v_home_blogfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_home_blogfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_home_class`
--

DROP TABLE IF EXISTS `v_home_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_home_class` (
  `classid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `classname` char(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_home_class`
--

LOCK TABLES `v_home_class` WRITE;
/*!40000 ALTER TABLE `v_home_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_home_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_home_feed`
--

DROP TABLE IF EXISTS `v_home_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_home_feed` (
  `feedid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `friend` bit(1) NOT NULL DEFAULT b'0',
  `hash_template` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hash_data` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_template` longtext COLLATE utf8_bin NOT NULL,
  `title_data` longtext COLLATE utf8_bin NOT NULL,
  `body_template` longtext COLLATE utf8_bin NOT NULL,
  `body_data` longtext COLLATE utf8_bin NOT NULL,
  `body_general` longtext COLLATE utf8_bin NOT NULL,
  `image_1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_1_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_2` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_2_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_3` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_3_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_4` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_4_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `target_ids` longtext COLLATE utf8_bin NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idtype` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `hot` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedid`),
  KEY `dateline` (`dateline`),
  KEY `hot` (`hot`),
  KEY `id` (`id`,`idtype`),
  KEY `uid` (`uid`,`dateline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_home_feed`
--

LOCK TABLES `v_home_feed` WRITE;
/*!40000 ALTER TABLE `v_home_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_home_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon`
--

DROP TABLE IF EXISTS `v_ibeacon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8_bin NOT NULL DEFAULT '',
  `major` smallint(6) NOT NULL,
  `minor` smallint(6) NOT NULL,
  `alias` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dateline` int(11) NOT NULL,
  `uid` bigint(11) unsigned NOT NULL,
  `enter_min` float unsigned NOT NULL DEFAULT '0.5',
  `enter_max` float unsigned NOT NULL DEFAULT '1.5',
  `exit` float unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon`
--

LOCK TABLES `v_ibeacon` WRITE;
/*!40000 ALTER TABLE `v_ibeacon` DISABLE KEYS */;
INSERT INTO `v_ibeacon` VALUES (1,'74278BDA-1986-0501-8F0C-720EAF059935',1000,1,'蔡强',1403764255,0,0.5,1.5,2),(2,'74278BDA-1986-0501-8F0C-720EAF059935',1000,2,'willy',1403764255,0,0.5,1.5,2),(3,'74278BDA-1986-0501-8F0C-720EAF059935',2000,1,'willy',1403764255,0,0.5,1.5,2),(4,'74278BDA-1986-0501-8F0C-720EAF059935',2000,2,'蔡强',1403764255,0,0.5,1.5,2),(5,'74278BDA-1986-0501-8F0C-720EAF059935',3000,1,'张玉',1403764255,0,0.5,1.5,2),(6,'74278BDA-1986-0501-8F0C-720EAF059935',3000,2,'张玉',1403764255,0,0.5,1.5,2),(7,'74278BDA-1986-0501-8F0C-720EAF059935',4000,1,'老马',1403764256,0,0.5,1.5,2),(8,'74278BDA-1986-0501-8F0C-720EAF059935',4000,2,'老马',1403764257,0,0.5,1.5,2),(9,'74278BDA-1986-0501-8F0C-720EAF059935',5000,1,'老大',1403764259,0,0.5,1.5,2),(10,'74278BDA-1986-0501-8F0C-720EAF059935',5000,2,'老大',1403764259,0,0.5,1.5,2),(11,'74278BDA-1986-0501-8F0C-720EAF059935',6000,1,'冯长森',1403764259,0,0.5,1.5,2),(12,'74278BDA-1986-0501-8F0C-720EAF059935',6000,2,'冯长森',1403764259,0,0.5,1.5,2),(13,'74278BDA-1986-0501-8F0C-720EAF059935',7000,1,'贾非',1403764259,0,0.5,1.5,2),(14,'74278BDA-1986-0501-8F0C-720EAF059935',7000,2,'贾非',1403764259,0,0.5,1.5,2),(15,'74278BDA-1986-0501-8F0C-720EAF059935',8000,1,'第八客户',1403764259,0,0.5,1.5,2),(16,'74278BDA-1986-0501-8F0C-720EAF059935',8000,2,'第八客户',1403764259,0,0.5,1.5,2),(17,'74278BDA-1986-0501-8F0C-720EAF059935',9000,1,'第九客户',1403764259,0,0.5,1.5,2),(18,'74278BDA-1986-0501-8F0C-720EAF059935',9000,2,'第九客户',1403764259,0,0.5,1.5,2),(19,'74278BDA-1986-0501-8F0C-720EAF059935',10000,1,'第十客户',1403764259,0,0.5,1.5,2),(20,'74278BDA-1986-0501-8F0C-720EAF059935',10000,2,'第十客户',1403764259,0,0.5,1.5,2),(21,'74278BDA-1986-0501-8F0C-720EAF059935',11000,1,'科技馆大门',1403764259,0,0.5,1.5,2),(22,'74278BDA-1986-0501-8F0C-720EAF059935',11000,2,'地动仪',1403764259,0,0.5,1.5,2),(23,'74278BDA-1986-0501-8F0C-720EAF059935',11000,3,'电影院',1403764259,0,0.5,1.5,2),(24,'74278BDA-1986-0501-8F0C-720EAF059935',11000,4,'纪念品',1403764259,0,0.5,1.5,2);
/*!40000 ALTER TABLE `v_ibeacon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon_adv`
--

DROP TABLE IF EXISTS `v_ibeacon_adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon_adv` (
  `adv_id` int(11) unsigned NOT NULL,
  `ib_id` int(11) unsigned NOT NULL,
  `isdefault` bit(1) NOT NULL DEFAULT b'0',
  `dateline` int(11) NOT NULL,
  `uid` bigint(11) unsigned NOT NULL,
  `ctime` int(11) unsigned NOT NULL,
  `lang` char(4) COLLATE utf8_bin NOT NULL DEFAULT 'zhcn',
  PRIMARY KEY (`ib_id`,`adv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon_adv`
--

LOCK TABLES `v_ibeacon_adv` WRITE;
/*!40000 ALTER TABLE `v_ibeacon_adv` DISABLE KEYS */;
INSERT INTO `v_ibeacon_adv` VALUES (0,0,'\0',1403764288,0,0,'zhcn'),(9,1,'\0',1403764299,0,0,'zhcn'),(10,2,'\0',1403764288,0,0,'zhcn'),(10,3,'\0',1403764399,0,0,'zhcn'),(9,4,'\0',1403764488,0,0,'zhcn'),(9,5,'\0',1403764499,0,0,'zhcn'),(10,6,'\0',1403767488,0,0,'zhcn'),(9,7,'\0',1403767499,0,0,'zhcn'),(10,8,'\0',1403767599,0,0,'zhcn'),(9,9,'\0',1403767599,0,0,'zhcn'),(10,10,'\0',1403764255,0,0,'zhcn'),(9,11,'\0',1403764255,0,0,'zhcn'),(11,11,'\0',1403764299,0,0,'zhcn'),(12,11,'\0',1403764299,0,0,'zhcn'),(10,12,'\0',1403764255,0,0,'zhcn'),(11,12,'\0',1403764299,0,0,'zhcn'),(12,12,'\0',1403764299,0,0,'zhcn'),(9,13,'\0',1403764255,0,0,'zhcn'),(10,14,'\0',1403764255,0,0,'zhcn'),(9,15,'\0',1403764255,0,0,'zhcn'),(11,15,'\0',1403764255,0,0,'zhcn'),(12,15,'\0',1403764255,0,0,'zhcn'),(9,16,'\0',1403764288,0,0,'zhcn'),(10,16,'\0',1403764255,0,0,'zhcn'),(11,16,'\0',1403764288,0,0,'zhcn'),(12,16,'\0',1403764288,0,0,'zhcn'),(11,17,'\0',1403764255,0,0,'zhcn'),(12,17,'\0',1403764255,0,0,'zhcn'),(11,18,'\0',1403764255,0,0,'zhcn'),(12,18,'\0',1403764255,0,0,'zhcn'),(9,19,'\0',1403764255,0,0,'zhcn'),(11,19,'\0',1403764288,0,0,'zhcn'),(21,19,'\0',1403764288,0,0,'zhcn'),(10,20,'\0',1403764255,0,0,'zhcn'),(12,20,'\0',1403764288,0,0,'zhcn'),(13,21,'\0',1403764288,0,0,'zhcn'),(18,21,'\0',1403764288,0,0,'zhcn'),(20,21,'\0',1403764288,0,0,'zhcn'),(16,22,'\0',1403764288,0,0,'zhcn'),(19,22,'\0',1403764288,0,0,'zhcn'),(14,23,'\0',1403764288,0,0,'zhcn'),(17,23,'\0',1403764288,0,0,'zhcn'),(2,24,'\0',1403764288,0,0,'zhcn'),(15,24,'\0',1403764288,0,0,'zhcn'),(22,24,'\0',1403764288,0,0,'enus');
/*!40000 ALTER TABLE `v_ibeacon_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon_bbs`
--

DROP TABLE IF EXISTS `v_ibeacon_bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon_bbs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) unsigned NOT NULL,
  `major` mediumint(11) unsigned NOT NULL,
  `pic_url_1` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` int(11) unsigned NOT NULL,
  `uid` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='`id`   `content`   `ctime`   `vendor_id`  `pic_url_1`   `ip`';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon_bbs`
--

LOCK TABLES `v_ibeacon_bbs` WRITE;
/*!40000 ALTER TABLE `v_ibeacon_bbs` DISABLE KEYS */;
INSERT INTO `v_ibeacon_bbs` VALUES (0,'wedewfe',0,1000,'',0,0),(2,'hello',1416472244,11000,'http://www.baidu.com/img/bdlogo.png',0,0),(1001,'windows',1416472244,1000,'http://baidu.com/',0,0);
/*!40000 ALTER TABLE `v_ibeacon_bbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon_comment`
--

DROP TABLE IF EXISTS `v_ibeacon_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) unsigned NOT NULL,
  `ibeacon_id` bigint(11) unsigned NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  `pic_url_1` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='`id`   `content`   `ctime` \n  `ibeacon_id`  `ip`  `pic_url_1`';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon_comment`
--

LOCK TABLES `v_ibeacon_comment` WRITE;
/*!40000 ALTER TABLE `v_ibeacon_comment` DISABLE KEYS */;
INSERT INTO `v_ibeacon_comment` VALUES (1,'www',234123432,12,1999,'http',0),(2,'content',1414570257,0,0,'',0),(3,'content',1414570305,0,0,'',0),(4,'content',1414570308,0,0,'',0),(5,'content',1414570309,0,0,'',0),(6,'',1414655775,0,0,'',0);
/*!40000 ALTER TABLE `v_ibeacon_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon_feedback`
--

DROP TABLE IF EXISTS `v_ibeacon_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `email` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `subject` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ibeacon_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon_feedback`
--

LOCK TABLES `v_ibeacon_feedback` WRITE;
/*!40000 ALTER TABLE `v_ibeacon_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_ibeacon_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon_vendor`
--

DROP TABLE IF EXISTS `v_ibeacon_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon_vendor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) NOT NULL,
  `uuid` char(36) COLLATE utf8_bin NOT NULL DEFAULT '',
  `major` int(11) NOT NULL,
  `alias` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon_vendor`
--

LOCK TABLES `v_ibeacon_vendor` WRITE;
/*!40000 ALTER TABLE `v_ibeacon_vendor` DISABLE KEYS */;
INSERT INTO `v_ibeacon_vendor` VALUES (1,4,'74278BDA-1986-0501-8F0C-720EAF059935',1000,'蔡强',1403764255);
/*!40000 ALTER TABLE `v_ibeacon_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_ibeacon_version`
--

DROP TABLE IF EXISTS `v_ibeacon_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_ibeacon_version` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon_version`
--

LOCK TABLES `v_ibeacon_version` WRITE;
/*!40000 ALTER TABLE `v_ibeacon_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_ibeacon_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_lang`
--

DROP TABLE IF EXISTS `v_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_lang` (
  `key` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang` char(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_lang`
--

LOCK TABLES `v_lang` WRITE;
/*!40000 ALTER TABLE `v_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_media`
--

DROP TABLE IF EXISTS `v_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_media` (
  `href` varchar(1024) COLLATE utf8_bin NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  `ctime` int(11) unsigned NOT NULL,
  `mime` varchar(27) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '''''',
  `privacy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_media`
--

LOCK TABLES `v_media` WRITE;
/*!40000 ALTER TABLE `v_media` DISABLE KEYS */;
INSERT INTO `v_media` VALUES ('/image/140425/nabian.jpg',3,1398393383,'ttqqqttttt/windows',1,'3.jpg',24),('/image/140425/75_iRbLzL.png',75,1398393431,'0',2,'fashion.png',0),('/image/140505/3_nvFDUb.jpg',3,1399258312,'0',3,'5.jpg',0),('/image/140505/4_XPkyVR.jpg',4,1399258328,'0',4,'2.jpg',0),('/image/140505/3_I1Zmwa.jpg',3,1399258366,'0',5,'4.jpg',0),('/image/140505/3_aM5ohb.jpg',3,1399258375,'0',6,'m1.jpg',0),('/image/140505/3_6IWqBg.jpg',3,1399258658,'0',7,'3.jpg',0),('/image/140505/3_Sbmr3N.jpg',3,1399258681,'0',8,'6.jpg',0),('/image/140505/3_2MkRuB.jpg',3,1399258798,'0',9,'2.jpg',0),('/image/140505/3_OtTahb.jpg',3,1399259103,'0',10,'4.jpg',0),('/image/140505/3_Dzbra6.jpg',3,1399259114,'0',11,'5.jpg',0),('/image/140505/3_jxENQa.jpg',3,1399259163,'0',12,'3.jpg',0),('/image/140505/3_c9OiXo.jpg',3,1399259191,'0',13,'m1.jpg',0),('/image/140505/3_Tui7qm.jpg',3,1399259233,'0',14,'4.jpg',0),('/image/140505/3_6b0MzD.jpg',3,1399259245,'0',15,'2.jpg',0),('/image/140505/3_UbbDrK.jpg',3,1399259295,'0',16,'7.jpg',0),('/image/140505/3_GyOqzd.jpg',3,1399259304,'0',17,'4.jpg',0),('/image/140505/3_QTavLw.jpg',3,1399259417,'0',18,'7.jpg',0),('/image/140505/3_pEEf2j.jpg',3,1399259664,'0',19,'6.jpg',0),('/image/140505/3_h9h4TK.jpg',3,1399259724,'0',20,'6.jpg',0),('/image/140505/3_pgKKml.jpg',3,1399259831,'0',21,'7.jpg',0),('/image/140505/3_ykT9TU.jpg',3,1399260067,'0',22,'5.jpg',0),('/image/140505/3_FY5Stl.jpg',3,1399260293,'0',23,'4.jpg',0),('/image/140505/3_WZrxOX.jpg',3,1399260667,'0',24,'7.jpg',0),('/image/140505/4_gKBlii.jpg',4,1399260689,'0',25,'2.jpg',0),('/image/140505/3_PysehQ.jpg',3,1399260743,'0',26,'5.jpg',0),('/image/140505/4_HQpNGx.jpg',4,1399260758,'0',27,'2.jpg',0),('/image/140505/4_IvTnrQ.jpg',4,1399260841,'0',28,'4.jpg',0),('/image/140505/4_X3MBhL.jpg',4,1399260906,'0',29,'5.jpg',0),('/image/140505/4_TtEE8V.jpg',4,1399260944,'0',30,'7.jpg',0),('/image/140505/4_2BVM4g.jpg',4,1399260974,'0',31,'3.jpg',0),('/image/140505/4_DAlaC8.jpg',4,1399260986,'0',32,'3.jpg',0),('/image/140505/4_Dd9xeY.jpg',4,1399261489,'0',33,'4.jpg',0),('/image/140505/4_pfrPtu.jpg',4,1399261511,'0',34,'4.jpg',0),('/image/140505/4_ClOS2B.jpg',4,1399261514,'0',35,'2.jpg',0),('/image/140505/4_LgagJZ.jpg',4,1399261865,'0',36,'5.jpg',0),('/image/140505/3_uYKBlO.jpg',3,1399261911,'0',37,'6.jpg',0),('/image/140505/4_jND81A.jpg',4,1399261920,'0',38,'m1.jpg',0),('/image/140505/4_w5LU9h.jpg',4,1399261929,'0',39,'3.jpg',0),('/image/140505/3_GtJK5u.jpg',3,1399261935,'0',40,'3.jpg',0),('/image/140505/4_ZYzk0b.jpg',4,1399261962,'0',41,'5.jpg',0),('/image/140505/3_JJAsSp.jpg',3,1399261970,'0',42,'7.jpg',0),('/image/140505/3_CI7Rpc.jpg',3,1399261990,'0',43,'2.jpg',0),('/image/140505/4_BDuXwE.jpg',4,1399261997,'0',44,'6.jpg',0),('/image/140505/3_rEfWHK.jpg',3,1399262008,'0',45,'4.jpg',0),('/image/140505/3_skfVPV.jpg',3,1399262032,'0',46,'6.jpg',0),('/image/140505/3_e9Pe3c.jpg',3,1399262241,'0',47,'2.jpg',0),('/image/140505/4_7Ultub.jpg',4,1399262267,'0',48,'3.jpg',0),('/image/140505/4_K6YXct.jpg',4,1399262274,'0',49,'7.jpg',0),('/image/140505/3_uwlrGr.jpg',3,1399262286,'0',50,'7.jpg',0),('/image/140505/4_U7sCaT.jpg',4,1399262296,'0',51,'7.jpg',0),('/image/140505/4_KuqhUg.jpg',4,1399262317,'0',52,'6.jpg',0),('/image/140505/4_LRxIQG.jpg',4,1399262337,'0',53,'7.jpg',0),('/image/140505/3_1vcJjV.jpg',3,1399271650,'0',54,'4.jpg',0),('/image/140505/4_biKq4l.jpg',4,1399271659,'0',55,'4.jpg',0),('/image/140505/3_YxZkIO.jpg',3,1399271671,'0',56,'2.jpg',0),('/image/140505/4_1tvxKX.jpg',4,1399271705,'0',57,'3.jpg',0),('/image/140505/4_zcSQam.jpg',4,1399271714,'0',58,'5.jpg',0),('/image/140505/3_468PH9.jpg',3,1399271722,'0',59,'2.jpg',0),('/image/140505/4_vOhwkh.jpg',4,1399271730,'0',60,'2.jpg',0),('/image/140505/3_Py70Ig.jpg',3,1399271734,'0',61,'m1.jpg',0),('/image/140505/3_t5rTGY.jpg',3,1399271745,'0',62,'6.jpg',0),('/image/140505/4_qoG8Xf.jpg',4,1399271750,'0',63,'2.jpg',0),('/image/140505/4_dvyyOK.jpg',4,1399271769,'0',64,'2.jpg',0),('/image/140505/3_oZbQYY.jpg',3,1399271774,'0',65,'3.jpg',0),('/image/140505/3_RkucBZ.jpg',3,1399271779,'0',66,'2.jpg',0),('/image/140505/4_oHp5nl.jpg',4,1399271796,'0',67,'2.jpg',0),('/image/140505/3_lpGUtr.jpg',3,1399271801,'0',68,'7.jpg',0),('/image/140605/3_e0eY6c.jpg',3,1401961423,'0',69,'7 (5).jpg',0),('/image/140605/3_g2n6FG.jpg',3,1401961446,'0',70,'6 (4).jpg',0),('/image/140605/4_dCkGRq.jpg',4,1401961450,'0',71,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_2SUT6l.jpg',3,1401961461,'0',72,'7-1.jpg',0),('/image/140605/4_WmUBJQ.jpg',4,1401961469,'0',73,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_ewfOq0.jpg',3,1401962880,'0',74,'6 (3).jpg',0),('/image/140605/3_WaptMe.jpg',3,1401962921,'0',75,'7.jpg',0),('/image/140605/4_lYeG9k.jpg',4,1401962939,'0',76,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_C7P7Sq.jpg',3,1401962957,'0',77,'7 (1).jpg',0),('/image/140605/3_7h9Vmw.jpg',3,1401962988,'0',78,'1.jpg',0),('/image/140605/3_LG09xv.jpg',3,1401963001,'0',79,'11.jpg',0),('/image/140605/4_lsrUdd.jpg',4,1401963035,'0',80,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_vEHs35.jpg',3,1401963053,'0',81,'14.jpg',0),('/image/140605/3_YsX9Gs.jpg',3,1401963062,'0',82,'26.jpg',0),('/image/140605/3_ycX3YQ.jpg',3,1401964317,'0',83,'1.jpg',0),('/image/140605/3_GT0T1Y.jpg',3,1401964338,'0',84,'1.jpg',0),('/image/140605/3_ljZPQ9.jpg',3,1401964347,'0',85,'IMG_4871.jpg',0),('/image/140605/4_iiac6u.jpg',4,1401964359,'0',86,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140616/3_bE4a8m.jpg',3,1402886685,'0',87,'1.jpg',0),('/image/140616/3_b2cYLN.jpg',3,1402886694,'0',88,'IMG_4871.jpg',0),('/image/140616/4_4dlVrp.jpg',4,1402886708,'0',89,'IMG_4871.jpg',0),('/image/140616/3_6At1Hs.jpg',3,1402886720,'0',90,'1.jpg',0),('/image/140617/3_6PIfNB.jpg',3,1402986451,'0',91,'IMG_4871.jpg',0),('/image/140617/3_hXOJNJ.jpg',3,1402986492,'0',92,'IMG_4871.jpg',0),('/image/140617/3_K3xS4a.jpg',3,1402986660,'0',93,'1.jpg',0),('/image/140617/3_R1M3Uk.jpg',3,1402986695,'0',94,'IMG_4871.jpg',0),('/image/140617/3_pqEV2A.jpg',3,1402986817,'0',95,'1.jpg',0),('/image/140617/3_VGHSE8.jpg',3,1402986945,'0',96,'IMG_4871.jpg',0),('/image/140617/3_G9lVT8.jpg',3,1402986994,'0',97,'1.jpg',0),('/image/140617/3_c0FWVL.jpg',3,1402987153,'0',98,'IMG_4871.jpg',0),('/image/140617/3_Qb9IoZ.jpg',3,1402987186,'0',99,'1.jpg',0),('/image/140617/3_voVj0t.jpg',3,1402987621,'0',100,'IMG_4871.jpg',0),('/image/140617/3_s5wlRo.jpg',3,1402987814,'0',101,'1.jpg',0),('/image/140617/3_PhnGSh.jpg',3,1402988691,'0',102,'IMG_4871.jpg',0),('/image/140617/3_8EFDOI.jpg',3,1402988700,'0',103,'1.jpg',0),('/image/140617/3_5M5WmJ.jpg',3,1402988836,'0',104,'1.jpg',0),('/image/140617/3_0Dxut3.jpg',3,1402988843,'0',105,'IMG_4871.jpg',0),('/image/140617/3_MTncmp.jpg',3,1402988880,'0',106,'1.jpg',0),('/image/140617/3_thsQdB.jpg',3,1402988889,'0',107,'IMG_4871.jpg',0),('/image/140617/3_y3pup7.jpg',3,1402988904,'0',108,'IMG_4871.jpg',0),('/image/140617/3_G0TOwc.jpg',3,1402988972,'0',109,'1.jpg',0),('/image/140617/3_OKQ0UD.jpg',3,1402988978,'0',110,'IMG_4871.jpg',0),('/image/140617/3_3uA4ZS.jpg',3,1402989952,'0',111,'1.jpg',0),('/image/140617/3_Wo88Vr.jpg',3,1402990155,'0',112,'IMG_4871.jpg',0),('/image/140617/3_1EojMg.jpg',3,1402990371,'0',113,'1.jpg',0),('/image/140617/3_9ZvK9V.jpg',3,1402990708,'0',114,'1.jpg',0),('/image/140617/3_Jwr7IR.jpg',3,1402990713,'0',115,'IMG_4871.jpg',0),('/image/140617/3_DiZby6.jpg',3,1402990721,'0',116,'1.jpg',0),('/image/140617/3_W5Ftv6.jpg',3,1402990732,'0',117,'IMG_4871.jpg',0),('/image/140617/3_PkDLqu.jpg',3,1402990817,'0',118,'1.jpg',0),('/image/140617/3_Mx4iwS.jpg',3,1402990827,'0',119,'IMG_4871.jpg',0),('/image/140617/3_Vgod3X.jpg',3,1402990847,'0',120,'1.jpg',0),('/image/140617/3_JFWAsD.jpg',3,1402990893,'0',121,'IMG_4871.jpg',0),('/image/140617/3_Mx24IU.jpg',3,1402990908,'0',122,'1.jpg',0),('/image/140617/3_oxeBXD.jpg',3,1402990980,'0',123,'1.jpg',0),('/image/140617/3_NgfBC9.jpg',3,1402991468,'0',124,'1.jpg',0),('/image/140617/3_igsYjD.jpg',3,1402991659,'0',125,'IMG_4871.jpg',0),('/image/140617/3_DVv8Xv.jpg',3,1402992018,'0',126,'1.jpg',0),('/image/140617/3_itTCah.jpg',3,1402992029,'0',127,'IMG_4871.jpg',0),('/image/140617/3_qIi5R9.jpg',3,1402992060,'0',128,'IMG_4871.jpg',0),('/image/140617/3_jYLzhE.jpg',3,1402992335,'0',129,'1.jpg',0),('/image/140617/3_gRfZb0.jpg',3,1402992383,'0',130,'IMG_4871.jpg',0),('/image/140617/3_eqIu0C.jpg',3,1402992490,'0',131,'IMG_4871.jpg',0),('/image/140617/3_H30gjn.jpg',3,1402992502,'0',132,'1.jpg',0),('/image/140617/3_bod37t.jpg',3,1403001214,'0',133,'1.jpg',0),('/image/140617/3_wX9GpF.jpg',3,1403001285,'0',134,'IMG_4871.jpg',0),('/image/140617/3_Cdid2O.jpg',3,1403001801,'0',135,'1.jpg',0),('/image/140617/3_3voQxN.jpg',3,1403001861,'0',136,'IMG_4871.jpg',0),('/image/140617/3_H9A9xz.jpg',3,1403001881,'0',137,'1.jpg',0),('/image/140617/3_Sb9u4K.jpg',3,1403002271,'0',138,'1.jpg',0),('/image/140617/3_QA6hke.jpg',3,1403002290,'0',139,'IMG_4871.jpg',0),('/image/140617/4_Wezo5L.jpg',4,1403002357,'0',140,'1.jpg',0),('/image/140617/3_TZVzMk.jpg',3,1403002409,'0',141,'IMG_4871.jpg',0),('/image/140617/4_6zsXdN.jpg',4,1403002438,'0',142,'1.jpg',0),('/image/140617/4_5Mo2An.jpg',4,1403002468,'0',143,'IMG_4871.jpg',0),('/image/140617/4_FAEbH8.jpg',4,1403002493,'0',144,'1.jpg',0),('/image/140617/3_as3UKr.jpg',3,1403006600,'0',145,'1.jpg',0),('/image/140617/3_Hh6sfp.jpg',3,1403006666,'0',146,'1.jpg',0),('/image/140617/3_LCxRsI.jpg',3,1403009986,'0',147,'1.jpg',0),('/image/140617/4_aqnmwn.jpg',4,1403010074,'0',148,'1.jpg',0),('/image/140617/3_YERkmO.jpg',3,1403010087,'0',149,'IMG_4871.jpg',0),('/image/140618/3_RpzsIY.png',3,1403054756,'0',150,'left_chatter.png',0),('/image/140618/3_ZvxErF.png',3,1403054885,'0',151,'emoji_people.png',0),('/image/140618/3_TAWBBq.png',3,1403056089,'0',152,'left_chatter.png',0),('/image/140618/3_EvQaK4.png',3,1403057103,'0',153,'groups.png',0),('/image/140618/3_kvA4Fz.png',3,1403083353,'0',154,'emoji_people.png',0),('/image/140618/3_EbhDBQ.png',3,1403091391,'0',155,'wechat_96.png',0),('/image/140618/3_uPvOff.png',3,1403091467,'0',156,'wechat_64.png',0),('/image/140618/3_r0ELum.png',3,1403093222,'0',157,'wechat_48.png',0),('/image/140618/4_05DAXd.png',4,1403095628,'0',158,'logo-16x16.png',0),('/image/140618/3_A8baqi.png',3,1403095642,'0',159,'wechat_96.png',0),('/image/140618/4_W5JuS2.png',4,1403095729,'0',160,'logo-32x32.png',0),('/image/140618/4_F6GneW.png',4,1403095976,'0',161,'left_chatter.png',0),('/image/140618/4_1GTzqb.png',4,1403095991,'0',162,'emoji_people.png',0),('/image/140618/4_xsI9Ow.png',4,1403096060,'0',163,'logo-16x16.png',0),('/image/140618/4_uOQdje.png',4,1403096083,'0',164,'groups.png',0),('/image/140618/3_FmXMHE.png',3,1403096096,'0',165,'wechat_96.png',0),('/image/140618/4_YzFGDy.png',4,1403096107,'0',166,'logo-36x36.png',0),('/image/140618/4_K3d41E.png',4,1403096121,'0',167,'left_chatter.png',0),('/image/140618/3_s2vu3H.png',3,1403096134,'0',168,'wechat_96.png',0),('/image/140618/4_ayvYTn.png',4,1403096142,'0',169,'camera.png',0),('/image/140618/4_1ZKVPL.png',4,1403096156,'0',170,'emoji_people.png',0),('/image/140618/3_NcOBZ4.png',3,1403096181,'0',171,'wechat_64.png',0),('/image/140618/3_RBGvo9.png',3,1403096205,'0',172,'wechat_96.png',0),('/image/140618/3_CbC7SI.png',3,1403096234,'0',173,'camera.png',0),('/image/140618/4_hX5ezh.gif',4,1403096253,'0',174,'jcrop.gif',0),('/image/140618/3_gQwuU8.png',3,1403096268,'0',175,'logo-152x152.png',0),('/image/140618/3_BmUbwd.png',3,1403096276,'0',176,'speech_bubble_right_2.png',0),('/image/140618/4_0ZFtid.png',4,1403096283,'0',177,'emoji_people.png',0),('/image/140618/4_ivsmmm.png',4,1403096308,'0',178,'speech_bubble_right_2.png',0),('/image/140618/3_WsOAem.png',3,1403096319,'0',179,'emoji_people.png',0),('/image/140618/4_xTynaG.png',4,1403096332,'0',180,'qrcode.png',0),('/image/140618/4_tgmPCY.png',4,1403096365,'0',181,'logo-144x144.png',0),('/image/140618/4_GVrdyU.png',4,1403096378,'0',182,'logo-144x144.png',0),('/image/140618/3_iWdNt5.png',3,1403096387,'0',183,'notify.png',0),('/image/140618/3_MogLrS.png',3,1403096410,'0',184,'logo-76x76.png',0),('/image/140618/3_0NzUZa.png',3,1403096418,'0',185,'speech_bubble_right_2.png',0),('/image/140618/4_REO1iZ.png',4,1403096422,'0',186,'logo-32x32.png',0),('/image/140618/4_S6NwMk.png',4,1403096433,'0',187,'left_chatter.png',0),('/image/140618/4_GTI1mY.png',4,1403096439,'0',188,'camera.png',0),('/image/140618/4_7HKYvf.png',4,1403096447,'0',189,'logo-32x32.png',0),('/image/140618/3_0KhrY2.png',3,1403096462,'0',190,'logo-36x36.png',0),('/image/140619/3_2NI0jc.png',3,1403140094,'0',191,'emoji_people.png',0),('/image/140619/3_qcN352.png',3,1403140263,'0',192,'groups.png',0),('/image/140619/3_guNvwg.png',3,1403140305,'0',193,'emoji_people.png',0),('/image/140619/3_qFpisD.png',3,1403140584,'0',194,'emoji_people.png',0),('/image/140619/3_qzdd8o.png',3,1403143810,'0',195,'logo-16x16.png',0),('/image/140619/3_AiyX3T.png',3,1403143817,'0',196,'emoji_people.png',0),('/image/140704/3_OIXyy8.png',3,1404475116,'0',197,'clock.png',0),('/image/140704/4_4ex8GF.jpg',4,1404475123,'0',198,'2.jpg',0),('/image/140709/3_h6oZOU.jpg',3,1404907901,'0',200,'2.jpg',0),('/image/140709/3_IgBmPF.jpg',3,1404907919,'0',201,'1.jpg',0),('/image/140709/4_4RZK58.jpg',4,1404907930,'0',202,'1.jpg',0),('/image/140709/4_SRjKg0.jpg',4,1404907941,'0',203,'2.jpg',0),('/image/140715/4_hVEd7a.jpg',4,1405387833,'0',204,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140715/3_vUZZCi.jpg',3,1405388025,'0',205,'2.jpg',0),('/image/140715/3_KQ6lPQ.jpg',3,1405388060,'0',206,'1.jpg',0),('/image/140721/4_XpalUS.jpg',4,1405907205,'0',207,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/application/140721/4_wWN1nu.JPG',4,1405907240,'0',208,'645921.JPG',0),('/image/140721/3_tB7kbD.png',3,1405907252,'0',209,'childhome.png',0),('/application/140721/4_ovmbSb.JPG',4,1405907276,'0',210,'645921 (1).JPG',0),('/image/140730/3_abE8vl.png',3,1406718472,'0',211,'icon_72x72.png',0),('/image/140801/3_sHmsN4.png',3,1406890354,'0',212,'artwork-source.png',0),('/image/140801/3_Hh43zg.png',3,1406890452,'0',213,'logo.46_46.png',0),('/image/140801/3_GJzG1Z.png',3,1406890490,'0',214,'artwork-source.png',0),('/image/140801/3_uKhvQ3.png',3,1406890648,'0',215,'artwork-source.png',0),('/image/140801/3_wv6pHP.png',3,1406890938,'0',216,'logo.46_46.png',0),('/image/140801/3_N4N6JN.png',3,1406890959,'0',217,'artwork-source.png',0),('/image/140801/3_rLu2Nk.png',3,1406891074,'0',218,'logo.46_46.png',0),('/image/140801/3_j8IL1P.png',3,1406891092,'0',219,'artwork-source.png',0),('/image/140801/3_VqUaUl.png',3,1406891161,'0',220,'logo.46_46.png',0),('/image/140801/3_M1aY0U.png',3,1406891165,'0',221,'artwork-source.png',0),('/image/140801/3_C1xe3T.png',3,1406891209,'0',222,'logo.46_46.png',0),('/image/140801/3_O8hoXB.png',3,1406891386,'0',223,'artwork-source.png',0),('/image/140801/3_ROl5Zw.png',3,1406891546,'0',224,'logo.46_46.png',0),('/image/140801/3_NXxriy.png',3,1406891699,'0',225,'logo.46_46.png',0),('/image/140801/3_G5SUFz.png',3,1406891723,'0',226,'artwork-source.png',0),('/image/140801/3_KgedYN.png',3,1406891822,'0',227,'logo.46_46.png',0),('/image/140801/3_OTP6Kh.png',3,1406891856,'0',228,'artwork-source.png',0),('/image/140801/3_NLQ9OG.png',3,1406891887,'0',229,'logo.46_46.png',0),('/image/140801/3_ujGyX0.png',3,1406892065,'0',230,'logo.46_46.png',0),('/image/140801/3_MlhdKE.png',3,1406892247,'0',231,'logo.46_46.png',0),('/image/140801/3_948H7C.png',3,1406892310,'0',232,'artwork-source.png',0),('/image/140801/3_k6CiMW.png',3,1406892493,'0',233,'artwork-source.png',0),('/image/140801/3_F8Vrem.png',3,1406892523,'0',234,'logo.46_46.png',0),('/image/140801/3_yFut1w.png',3,1406892565,'0',235,'logo.46_46.png',0),('/image/140801/3_c5IfsQ.png',3,1406892601,'0',236,'logo.46_46.png',0),('/image/140801/3_SNqKGB.png',3,1406892650,'0',237,'logo.46_46.png',0),('/image/140801/3_VRI68X.png',3,1406892802,'0',238,'artwork-source.png',0),('/image/140801/3_AoD2bq.png',3,1406892824,'0',239,'logo.46_46.png',0),('/image/140801/4_xglCfK.gif',4,1406892852,'0',240,'245.gif',0),('/image/140801/3_xGna14.png',3,1406892862,'0',241,'logo.46_46.png',0),('/image/140801/3_PverWc.png',3,1406892975,'0',242,'logo.46_46.png',0),('/image/140801/3_rxKG5V.png',3,1406893066,'0',243,'logo.46_46.png',0),('/image/140801/3_8y6wcb.png',3,1406893155,'0',244,'artwork-source.png',0),('/image/140801/3_mvBUmv.png',3,1406893214,'0',245,'logo.46_46.png',0),('/image/140801/3_QUr2w3.png',3,1406893458,'0',246,'logo.46_46.png',0),('/image/140801/3_v9YKKX.png',3,1406893601,'0',247,'logo.46_46.png',0),('/image/140801/3_jsVyNz.png',3,1406893760,'0',248,'logo.46_46.png',0),('/image/140801/3_3TpSTo.png',3,1406893811,'0',249,'logo.46_46.png',0),('/image/140801/3_9MFwm9.png',3,1406894441,'0',250,'artwork-source.png',0),('/image/140801/3_JFEMBo.png',3,1406894492,'0',251,'apple-touch-icon-precomposed.png',0),('/image/140801/3_AH9ejq.png',3,1406894547,'0',252,'Icon-Small-20.png',0),('/image/140801/3_Vl4Vvv.png',3,1406894630,'0',253,'apple-touch-icon-precomposed.png',0),('/image/140801/3_NuT5p4.png',3,1406894703,'0',254,'Icon-72@2x.png',0),('/image/140801/3_sxa8G9.png',3,1406894787,'0',255,'Icon-72@2x.png',0),('/image/140801/3_1zLYG9.png',3,1406894841,'0',256,'Icon-Small-50.png',0),('/application/140801/4_19Z5sT.JPG',4,1406894869,'0',257,'645921.JPG',0),('/image/140801/3_sntVh6.png',3,1406894879,'0',258,'Icon-72@2x.png',0),('/image/140801/3_BokIdB.png',3,1406895709,'0',259,'Icon-Small-30@2x.png',0),('/image/140801/3_g9kHer.png',3,1406895775,'0',260,'Icon-Small-20@2x.png',0),('/image/140801/3_gD0gLW.png',3,1406895790,'0',261,'Icon-Small-30.png',0),('/image/140801/3_kZUz9n.png',3,1406895810,'0',262,'Icon-Small-50@2x.png',0),('/image/140801/3_6NUSZZ.png',3,1406895834,'0',263,'apple-touch-icon-144x144-precomposed.png',0),('/image/140801/3_fpcU3t.png',3,1406895863,'0',264,'Icon@2x.png',0),('/image/140801/3_3HBTLr.png',3,1406895907,'0',265,'Icon-Small@2x.png',0),('/image/140801/3_7svGS7.png',3,1406901478,'0',266,'logo.46_46.png',0),('/image/140801/3_oUcvht.png',3,1406901501,'0',267,'Icon-Small-30@2x.png',0),('/image/140801/3_TaCATe.png',3,1406901535,'0',268,'Icon-Small@2x.png',0),('/application/140801/4_tGNbkB.JPG',4,1406901540,'0',269,'645921 (1).JPG',0),('/image/140801/3_zq5AQX.png',3,1406901553,'0',270,'apple-touch-icon-144x144-precomposed.png',0),('/application/140801/4_xi5OMq.JPG',4,1406901588,'0',271,'645921.JPG',0),('/image/140801/4_OR0AQF.gif',4,1406901596,'0',272,'245.gif',0),('/image/140819/4_juokOo.png',4,1408414102,'image/png',275,'logo.46_46.png',0),('/image/140819/3_LNFw91.png',3,1408414521,'image/png',276,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_8J70MO.png',3,1408414593,'image/png',277,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_yXWTha.png',3,1408414954,'image/png',278,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_4z7fUi.png',3,1408414974,'image/png',279,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_PLtyir.png',3,1408415126,'image/png',280,'Screen Shot 2013-10-25 at 10.24.45 AM.png',0),('/image/140819/3_5rLayj.png',3,1408415764,'image/png',281,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_NuyMPW.png',3,1408415811,'image/png',282,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_IBJ7Hr.png',3,1408415850,'image/png',283,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_Kkgujp.png',3,1408416416,'image/png',284,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_GSh53Z.png',3,1408416448,'image/png',285,'Screen Shot 2013-10-25 at 10.24.45 AM.png',0),('/image/140819/3_eOReNs.png',3,1408416633,'image/png',286,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_TBpxT5.png',3,1408416689,'image/png',287,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_UTIi9l.png',3,1408416828,'image/png',288,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_Yn4xKL.png',3,1408416913,'image/png',289,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_G5D8Be.png',4,1408416964,'image/png',290,'logo.46_46.png',0),('/image/140819/4_Jb4zgo.png',4,1408416984,'image/png',291,'logo.46_46.png',0),('/image/140819/4_I9Dwjs.png',4,1408417012,'image/png',292,'logo.46_46.png',0),('/image/140819/3_bTPy5a.png',3,1408417052,'image/png',293,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_qjjh5N.png',4,1408417145,'image/png',294,'artwork-source.png',0),('/image/140819/4_EilcEB.png',4,1408428515,'image/png',299,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_sRENMs.png',4,1408429003,'image/png',300,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/4_yX6e0D.png',4,1408430171,'image/png',301,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_yzoImb.png',4,1408430294,'image/png',302,'america.png',0),('/image/140819/4_HGoxk5.png',4,1408430555,'image/png',303,'america.png',0),('/image/140819/4_n5mujP.png',4,1408430716,'image/png',304,'china.png',0),('/image/140819/4_rkmMss.png',4,1408430833,'image/png',305,'america.png',0),('/image/140819/4_nAugQy.png',4,1408432124,'image/png',306,'america.png',0),('/image/140819/4_R6CEgT.png',4,1408432558,'image/png',307,'america.png',0),('/image/140819/4_Mz2fYS.png',4,1408432620,'image/png',308,'china.png',0),('/image/140819/3_LE6UED.png',3,1408432636,'image/png',309,'logo.46_46.png',0),('/image/140819/4_mgqPDq.png',4,1408432655,'image/png',310,'china.png',0),('/image/140819/4_f0qWqH.png',4,1408432679,'image/png',311,'america.png',0),('/image/140819/4_7cscOq.png',4,1408432751,'image/png',312,'america.png',0),('/image/140819/4_RZwHKT.png',4,1408432755,'image/png',313,'america.png',0),('/image/140819/4_hGomjj.png',4,1408432765,'image/png',314,'america.png',0),('/image/140819/4_YDuW1a.png',4,1408432785,'image/png',315,'china.png',0),('/image/140819/3_t7AnC9.png',3,1408432794,'image/png',316,'logo.46_46.png',0),('/image/140819/4_uaJEEc.png',4,1408432821,'image/png',317,'america.png',0),('/image/140819/4_t3Jh4L.png',4,1408432853,'image/png',318,'america.png',0),('/image/140819/3_LFhudb.png',3,1408432862,'image/png',319,'logo.46_46.png',0),('/image/140819/3_3hmOuA.png',3,1408432882,'image/png',320,'artwork-source.png',0),('/image/140819/3_6BvXXP.png',3,1408432955,'image/png',321,'artwork-source.png',0),('/image/140819/3_Fwnm4f.png',3,1408432963,'image/png',322,'artwork-source.png',0),('/image/140819/3_Iw8knU.png',3,1408432990,'image/png',323,'artwork-source.png',0),('/image/140819/3_niFP3e.png',3,1408433015,'image/png',324,'logo.46_46.png',0),('/image/140819/3_MMcflM.png',3,1408433030,'image/png',325,'logo.46_46.png',0),('/image/140819/3_u4KGLN.png',3,1408433069,'image/png',326,'logo.46_46.png',0),('/image/140819/3_Yg2Bwa.png',3,1408433151,'image/png',327,'artwork-source.png',0),('/image/140819/3_SsMNTR.png',3,1408433181,'image/png',328,'logo.46_46.png',0),('/image/140819/3_KAyvtW.png',3,1408433210,'image/png',329,'logo.46_46.png',0),('/image/140819/3_RmbXfr.png',3,1408433276,'image/png',330,'artwork-source.png',0),('/image/140819/3_Iq6x8I.png',3,1408433372,'image/png',331,'artwork-source.png',0),('/image/140819/3_OSJX3Q.png',3,1408433400,'image/png',332,'artwork-source.png',0),('/image/140819/3_TXhVRP.png',3,1408433505,'image/png',333,'logo.46_46.png',0),('/image/140819/3_Ra7KPu.png',3,1408433546,'image/png',334,'artwork-source.png',0),('/image/140819/3_8d6Jpt.png',3,1408433611,'image/png',335,'logo.46_46.png',0),('/image/140819/3_5ufh01.png',3,1408433698,'image/png',336,'artwork-source.png',0),('/image/140819/3_4ruXgb.png',3,1408433734,'image/png',337,'logo.46_46.png',0),('/image/140819/4_w6LLdM.png',4,1408433757,'image/png',338,'america.png',0),('/image/140819/3_9pO5cW.png',3,1408433780,'image/png',339,'artwork-source.png',0),('/image/140819/4_9xCItc.png',4,1408433799,'image/png',340,'america.png',0),('/image/140819/4_pnG7BN.png',4,1408433837,'image/png',341,'china.png',0),('/image/140819/3_k4pvdm.png',3,1408433847,'image/png',342,'logo.46_46.png',0),('/image/140819/4_WXix8n.png',4,1408434085,'image/png',343,'china.png',0),('/image/140819/3_SWQL2v.png',3,1408434104,'image/png',344,'logo.46_46.png',0),('/image/140819/3_OoKxlV.png',3,1408434651,'image/png',345,'artwork-source.png',0),('/image/140819/3_0CYMUc.png',3,1408434730,'image/png',346,'artwork-source.png',0),('/image/140819/3_OkBba1.png',3,1408434893,'image/png',347,'artwork-source.png',0),('/image/140819/4_P5NUux.png',4,1408434923,'image/png',348,'america.png',0),('/image/140819/3_HVBSqR.png',3,1408434937,'image/png',349,'logo.46_46.png',0),('/image/140819/3_WLjvne.png',3,1408434996,'image/png',350,'artwork-source.png',0),('/image/140819/3_FVn9o0.png',3,1408435023,'image/png',351,'logo.46_46.png',0),('/image/140819/4_azlh85.png',4,1408435639,'image/png',352,'america.png',0),('/image/140911/3_XgGovI.jpg',3,1410433036,'image/jpeg',353,'haha.jpg',0),('/image/140911/3_cWYGz3.png',3,1410433243,'image/png',354,'w.png',0),('/image/140911/3_O1IHe0.png',3,1410433390,'image/png',355,'w.png',0),('/image/140911/3_7wGy8D.jpg',3,1410433700,'image/jpeg',356,'haha.jpg',0),('/image/140911/7_pVyPpO.jpg',7,1410434349,'image/jpeg',357,'haha.jpg',0),('/image/140911/7_K5JLcg.png',7,1410434389,'image/png',358,'w.png',0),('/image/140911/7_wGoGq6.png',7,1410434560,'image/png',359,'w.png',0),('/image/140911/7_PKv1oF.jpg',7,1410434948,'image/jpeg',360,'haha.jpg',0),('/image/140911/7_ilEJX0.png',7,1410434974,'image/png',361,'w.png',0),('/image/140911/7_HAXC7F.jpg',7,1410434988,'image/jpeg',362,'haha.jpg',0),('/image/140911/7_TpsuQr.jpg',7,1410435020,'image/jpeg',363,'haha.jpg',0),('/image/140911/7_GVeU9j.jpg',7,1410435098,'image/jpeg',364,'haha.jpg',0),('/image/140911/7_BYXOfZ.jpg',7,1410435179,'image/jpeg',365,'haha.jpg',0),('/image/141017/4_dPV8PW.',4,1413538269,'image/png',366,'blob',0),('/image/141017/4_N1DPDS.jpg',4,1413538981,'image/png',367,'a2.jpg',0),('/image/141017/4_xbJF1p.jpg',4,1413539864,'image/png',368,'a2.jpg',0),('/image/141017/4_rFhtYI.jpg',4,1413539879,'image/png',369,'a2.jpg',0),('/image/141017/4_dXShKL.jpg',4,1413539942,'image/png',370,'a2.jpg',0),('/image/141017/4_Ge6b2m.jpg',4,1413540308,'image/png',371,'a2.jpg',0),('/image/141017/4_81CvfO.jpg',4,1413540308,'image/png',372,'a2.jpg',0),('/image/141017/4_3kfIbb.jpg',4,1413540308,'image/png',373,'a2.jpg',0),('/image/141017/4_QAKmaw.jpg',4,1413540316,'image/png',374,'a2.jpg',0),('/image/141017/4_PmhYfz.jpg',4,1413541419,'image/png',375,'a5.jpg',0),('/image/141017/4_DZgvZO.jpg',4,1413541520,'image/png',376,'a2.jpg',0),('/image/141017/4_tHVMZZ.jpg',4,1413541521,'image/png',377,'a2.jpg',0),('/image/141017/4_F5rKTa.jpg',4,1413541522,'image/png',378,'a2.jpg',0),('/image/141017/4_rMAAN2.jpg',4,1413541523,'image/png',379,'a2.jpg',0),('/image/141017/4_laSsaU.jpg',4,1413541524,'image/png',380,'a2.jpg',0),('/image/141017/4_ILW6BZ.jpg',4,1413541524,'image/png',381,'a2.jpg',0),('/image/141017/4_g44ZLO.jpg',4,1413541530,'image/png',382,'a2.jpg',0),('/image/141017/4_UfzdKp.jpg',4,1413541530,'image/png',383,'a2.jpg',0),('/image/141017/4_7rMYpP.jpg',4,1413541530,'image/png',384,'a2.jpg',0),('/image/141017/4_PWFYa7.jpg',4,1413541530,'image/png',385,'a2.jpg',0),('/image/141017/4_7BU7Rp.jpg',4,1413541530,'image/png',386,'a2.jpg',0),('/image/141017/4_SR21Cj.jpg',4,1413541530,'image/png',387,'a2.jpg',0),('/image/141029/4_8kHwrN.jpg',4,1414578049,'image/png',388,'a5.jpg',0),('/image/141029/4_lrUDIF.jpg',4,1414579943,'image/png',389,'a2.jpg',0),('/image/141029/4_5jvi14.jpg',4,1414579976,'image/png',390,'a4.jpg',0),('/image/141029/4_m4CiF5.jpg',4,1414579976,'image/png',391,'a4.jpg',0),('/image/141029/4_2kicSV.jpg',4,1414580086,'image/png',392,'a2.jpg',0),('/image/141029/4_5Q3FRA.jpg',4,1414580247,'image/png',393,'a5.jpg',0),('/image/141029/4_bOPmkw.jpg',4,1414580528,'image/png',394,'a4.jpg',0),('/image/141029/4_XERrxr.jpg',4,1414580619,'image/png',395,'a1.jpg',0),('/image/141029/4_m8Rm3W.jpg',4,1414580705,'image/png',396,'a2.jpg',0),('/image/141029/4_vwNJSO.jpg',4,1414580881,'image/png',397,'a5.jpg',0),('/image/141029/4_VA7dpi.jpg',4,1414580986,'image/png',398,'a5.jpg',0),('/image/141029/4_xy1OX0.jpg',4,1414581286,'image/png',399,'a4.jpg',0),('/image/141029/4_zIOAZi.jpg',4,1414581314,'image/png',400,'2.jpg',0),('/image/141029/4_Fk1QrG.jpg',4,1414582252,'image/png',401,'k5.jpg',0),('/image/141029/4_EqKuLR.jpg',4,1414582252,'image/png',402,'k5.jpg',0),('/image/141029/4_KntrU4.jpg',4,1414582314,'image/png',403,'2.jpg',0),('/image/141029/4_UkkhKI.jpeg',4,1414585005,'image/png',404,'1.jpeg',0),('404',12,1412312340,'do/do',405,'\'\'',12),('/image/141029/4_AaDSat.jpg',4,1414585077,'image/png',406,'2.jpg',0),('406',14,1412266320,'pp/dd',407,'\'\'',1),('/image/141117/4_J4K0n2.jpg',4,1416222475,'image/jpeg',408,'4 (1).jpg',0),('/image/141117/4_ybnSs2.jpg',4,1416222513,'image/jpeg',409,'4 (1).jpg',0),('/image/141117/4_Yab8iG.jpg',4,1416223354,'image/jpeg',410,'3.jpg',0),('/image/141117/4_UsIp5G.jpg',4,1416223399,'image/jpeg',411,'5 (1).jpg',0),('/image/141117/4_efma4L.jpg',4,1416223441,'image/jpeg',412,'4.jpg',0),('/image/141117/4_anYapE.jpg',4,1416223627,'image/jpeg',413,'5 (1).jpg',0),('/image/141117/4_dVYoO6.jpg',4,1416223816,'image/jpeg',414,'5 (1).jpg',0),('/image/141117/4_XweXlV.jpg',4,1416224173,'image/jpeg',415,'3.jpg',0),('/image/141117/4_BorojH.jpg',4,1416224600,'image/jpeg',416,'5 (2).jpg',0),('/image/141117/4_0SyBfj.jpg',4,1416224735,'image/jpeg',417,'7.jpg',0),('/image/141117/4_35e36m.jpg',4,1416224852,'image/jpeg',418,'4 (1).jpg',0),('/image/141117/4_Er669Y.jpg',4,1416224871,'image/jpeg',419,'5 (1).jpg',0),('/image/141117/4_ZYh4gt.jpg',4,1416224881,'image/jpeg',420,'6 (3).jpg',0),('/image/141117/4_6ljwWn.jpg',4,1416224913,'image/jpeg',421,'7.jpg',0),('/image/141117/4_AtRRP9.jpg',4,1416224950,'image/jpeg',422,'5 (2).jpg',0),('/image/141117/10_yJempU.png',10,1416224966,'image/png',423,'en-js-p1.png',0),('/image/141117/4_Trp1fa.jpg',4,1416225009,'image/jpeg',424,'5 (2).jpg',0),('/image/141117/10_OLZrE7.png',10,1416225023,'image/png',425,'en-js-p1.png',0),('/image/141117/4_mLgf98.jpg',4,1416226170,'image/jpeg',426,'5 (1).jpg',0),('/image/141117/4_9iLfFN.jpg',4,1416226202,'image/jpeg',427,'7 (3).jpg',0),('/image/141117/4_rm43iP.jpg',4,1416226639,'image/jpeg',428,'4 (1).jpg',0),('/image/141117/4_Kr01dk.jpg',4,1416226806,'image/jpeg',429,'4.jpg',0),('/image/141117/4_cfNgdD.jpg',4,1416227215,'image/jpeg',430,'6 (4).jpg',0),('/image/141117/4_S5RDPT.jpg',4,1416227573,'image/jpeg',431,'5 (3).jpg',0),('/image/141117/4_UXb3kC.jpg',4,1416227637,'image/jpeg',432,'6 (2).jpg',0),('/image/141117/4_WW7vtl.jpg',4,1416227874,'image/jpeg',433,'5 (2).jpg',0),('/image/141117/4_D4I8ov.jpg',4,1416227904,'image/jpeg',434,'4 (1).jpg',0),('/image/141117/4_Yy5OQ7.jpg',4,1416227958,'image/jpeg',435,'5 (3).jpg',0),('/image/141117/4_jPuSPa.jpg',4,1416227980,'image/jpeg',436,'6 (2).jpg',0),('/image/141117/4_uAvVBh.jpg',4,1416228029,'image/jpeg',437,'5 (1).jpg',0),('/image/141117/4_xJVYfv.jpg',4,1416228134,'image/jpeg',438,'5 (3).jpg',0),('/image/141117/4_2y4ZDx.jpg',4,1416228307,'image/jpeg',439,'7.jpg',0),('/image/141117/4_FxRlUU.jpg',4,1416228527,'image/jpeg',440,'5.jpg',0),('/image/141117/4_ZYWGzW.jpg',4,1416228692,'image/jpeg',441,'7 (2).jpg',0),('/image/141117/4_c2k4q8.jpg',4,1416228775,'image/jpeg',442,'7 (5).jpg',0),('/image/141117/4_IgXtOO.jpg',4,1416228801,'image/jpeg',443,'267-3-1280x800.jpg',0),('/image/141117/4_PcxLXP.jpg',4,1416228828,'image/jpeg',444,'121-1-1280x800.jpg',0),('/image/141117/4_o2XHF9.gif',4,1416228852,'image/gif',445,'ajax-loader (4).gif',0),('/image/141117/10_PG5J7U.png',10,1416229001,'image/png',446,'en-js-p1.png',0),('/image/141117/4_QalDU3.jpg',4,1416232199,'image/jpeg',447,'3.jpg',0),('/image/141117/4_wYJe4e.jpg',4,1416232218,'image/jpeg',448,'5 (1).jpg',0),('/image/141117/4_hlL6q3.jpg',4,1416232252,'image/jpeg',449,'6 (1).jpg',0),('/image/141117/4_OiM0Dp.jpg',4,1416232284,'image/jpeg',450,'6 (3).jpg',0),('/image/141117/4_3mOUzA.jpg',4,1416232300,'image/jpeg',451,'6.jpg',0),('/image/141117/4_lP9J8E.jpg',4,1416232375,'image/jpeg',452,'7 (5).jpg',0),('/image/141117/4_wve7Fm.jpg',4,1416232389,'image/jpeg',453,'5 (3).jpg',0),('/image/141117/4_IWNHAc.jpg',4,1416232403,'image/jpeg',454,'267-3-1280x800.jpg',0);
/*!40000 ALTER TABLE `v_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_members`
--

DROP TABLE IF EXISTS `v_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `myid` char(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `myidkey` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `regip` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastloginip` int(11) NOT NULL DEFAULT '0',
  `lastlogintime` int(10) unsigned NOT NULL DEFAULT '0',
  `salt` char(6) COLLATE utf8_bin NOT NULL,
  `secques` char(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_members`
--

LOCK TABLES `v_members` WRITE;
/*!40000 ALTER TABLE `v_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_menu`
--

DROP TABLE IF EXISTS `v_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icon` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `type` tinyint(11) unsigned NOT NULL,
  `href` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_menu`
--

LOCK TABLES `v_menu` WRITE;
/*!40000 ALTER TABLE `v_menu` DISABLE KEYS */;
INSERT INTO `v_menu` VALUES (1,'mall','glyphicon glyphicon-headphones','客服聊天',1,'/admin/index/if/?url=/index/index&menuid=1',0,1),(2,'mall','glyphicon glyphicon-user','客服管理',1,'/admin/table/view/?ztb=common_user&menuid=2',0,0),(3,'mall','glyphicon glyphicon-cloud','代码部署',1,'/admin/index/deploy/?menuid=3',0,0),(4,'lighthouse','fa fa-rss','ibeacon管理',1,'/admin/index/?ztb=ibeacon&menuid=4',0,1),(5,'lighthouse','fa fa-list','ibeacon列表',1,'/admin/index/?ztb=ibeacon&menuid=4',4,0),(6,'lighthouse','fa fa-plus','ibeacon添加',1,'/admin/index/?ztb=ibeacon&menuid=4',4,0),(7,'lighthouse','fa fa-edit','内容管理',1,'/admin/index/?ztb=ibeacon&menuid=4',0,0),(8,'lighthouse','fa fa-list','内容列表',1,'/admin/index/?ztb=article&menuid=4',7,0),(9,'lighthouse','fa fa-plus','内容添加',1,'/admin/index/?ztb=article&menuid=4',7,0),(10,'lighthouse','fa fa-user','用户管理',1,'/admin/index/?ztb=commonuser&menuid=4',0,1),(11,'lighthouse','fa fa-reply','反馈评论',0,'/admin/index/?ztb=comment',0,1),(12,'lighthouse','fa fa-feedback','用户反馈',0,'/admin/index/?ztb=feedback',11,0),(13,'lighthouse','fa fa-comment','用户评论',0,'/admin/index/?ztb=comment',11,0);
/*!40000 ALTER TABLE `v_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_message`
--

DROP TABLE IF EXISTS `v_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_message` (
  `fromuid` bigint(20) NOT NULL,
  `touid` bigint(20) NOT NULL,
  `fromuser` varchar(30) COLLATE utf8_bin NOT NULL,
  `touser` varchar(30) COLLATE utf8_bin NOT NULL,
  `sendtime` int(11) NOT NULL,
  `message` longtext COLLATE utf8_bin,
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_message`
--

LOCK TABLES `v_message` WRITE;
/*!40000 ALTER TABLE `v_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_multifactor_auth`
--

DROP TABLE IF EXISTS `v_multifactor_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_multifactor_auth` (
  `secret` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_multifactor_auth`
--

LOCK TABLES `v_multifactor_auth` WRITE;
/*!40000 ALTER TABLE `v_multifactor_auth` DISABLE KEYS */;
INSERT INTO `v_multifactor_auth` VALUES ('2TKPONRYISZ3ID7U',3);
/*!40000 ALTER TABLE `v_multifactor_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_my_app`
--

DROP TABLE IF EXISTS `v_my_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_my_app` (
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `atime` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uid`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_my_app`
--

LOCK TABLES `v_my_app` WRITE;
/*!40000 ALTER TABLE `v_my_app` DISABLE KEYS */;
INSERT INTO `v_my_app` VALUES (3,2,'calc',1393920976,0),(3,9,'facebook',1393920976,0),(3,19,'pixlr',1393921624,0),(3,20,'Book',1393920976,0),(3,21,'DrawIo',1393921643,0),(3,22,'日历365',1393921643,0),(3,23,'Gliffy',1393921643,0),(3,24,'Thinkfree',1393921643,0),(4,8,'cube',1393920976,0),(4,15,'motra',1393920976,0),(4,19,'pixlr',1393921626,0),(5,19,'pixlr',1393921635,0),(6,3,'calendar',1393920976,0),(6,4,'camera_2',1393920976,0),(6,14,'media',1393920976,0),(6,19,'pixlr',1393921637,0),(7,7,'contacts_book',1393920976,0),(7,19,'pixlr',1393921638,0),(8,17,'pic',1393920976,0),(8,19,'pixlr',1393921639,0),(9,10,'log',1393920976,0),(9,19,'pixlr',1393921640,0),(10,11,'mail',1393920976,0),(10,19,'pixlr',1393921642,0),(11,6,'clock',1393920976,0),(11,13,'market',1393920976,0),(11,19,'pixlr',1393921643,0),(12,5,'camera',1393920976,0),(12,16,'music',1393920976,0),(12,19,'pixlr',1393921643,0),(13,12,'maps',1393920976,0),(13,19,'pixlr',1393921643,0),(14,1,'apps',1393920976,0),(14,19,'pixlr',1393921643,0),(15,18,'twitter',1393920976,0),(15,19,'pixlr',1393921643,0);
/*!40000 ALTER TABLE `v_my_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_notelist`
--

DROP TABLE IF EXISTS `v_notelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_notelist` (
  `noteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operation` char(32) COLLATE utf8_bin NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `totalnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `succeednum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `getdata` longtext COLLATE utf8_bin NOT NULL,
  `postdata` longtext COLLATE utf8_bin NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(4) NOT NULL DEFAULT '0',
  `app1` tinyint(4) NOT NULL,
  PRIMARY KEY (`noteid`),
  KEY `closed` (`closed`,`pri`,`noteid`),
  KEY `dateline` (`dateline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_notelist`
--

LOCK TABLES `v_notelist` WRITE;
/*!40000 ALTER TABLE `v_notelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_notelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_notification`
--

DROP TABLE IF EXISTS `v_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_notification` (
  `uid` bigint(20) DEFAULT NULL,
  `maintype` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `new` bit(1) NOT NULL DEFAULT b'0',
  `fromuid` bigint(20) DEFAULT NULL,
  `fromuser` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `note` longtext COLLATE utf8_bin NOT NULL,
  `dateline` int(10) unsigned DEFAULT NULL,
  `from_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subtype` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `icon_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `from_idtype` varchar(25) COLLATE utf8_bin NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mid` bigint(20) NOT NULL,
  `roomid` varchar(100) COLLATE utf8_bin NOT NULL,
  `display` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `from_id` (`from_id`,`subtype`),
  KEY `uid` (`uid`,`new`,`dateline`)
) ENGINE=InnoDB AUTO_INCREMENT=2450 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_notification`
--

LOCK TABLES `v_notification` WRITE;
/*!40000 ALTER TABLE `v_notification` DISABLE KEYS */;
INSERT INTO `v_notification` VALUES (3,'chat','',3,'Cameron','Screen Shot 2013-10-25 at 10.25.03 AM.png',1408416913,91,'pic','/img/people/3.png','g',1,289,'',''),(4,'chat','\0',3,'Cameron','Screen Shot 2013-10-25 at 10.25.03 AM.png',1408416913,91,'pic','/img/people/3.png','g',2,289,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409559295,4,'video','/img/people/3.png','u',490,0,'201481__3__u_4_dcyrsbp3p_295412',''),(4,'share','\0',3,'Cameron','Cameron is inviting you for desktop sharing',1409559349,4,'screen','/img/people/3.png','u',491,0,'201481__3__u_4_mxdmxth5b_349385',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409559350,4,'screen','/img/people/3.png','u',492,0,'201481__3__u_4_mxdmxth5b_349385',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409559647,4,'video','/img/people/3.png','u',493,0,'201481__3__u_4_j7v6xtqdl_647265',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409569921,4,'video','/img/people/3.png','u',494,0,'201481__3__u_4_yzezujzrl_921735',''),(4,'chat','\0',3,'Cameron','fdsafdsafdsa',1409572778,3,'text','/img/people/3.png','u',495,0,'',''),(4,'chat','\0',3,'Cameron','wifdsalfas',1409572783,3,'text','/img/people/3.png','u',496,0,'',''),(4,'chat','\0',3,'Cameron','wfwfwfe',1409572826,3,'text','/img/people/3.png','u',497,0,'',''),(4,'chat','\0',3,'Cameron','dfsafad',1409572828,3,'text','/img/people/3.png','u',498,0,'',''),(4,'chat','\0',3,'Cameron',':#em-joy_cat#: :#em-joy_cat#: :#em-kiss#: ',1409572997,3,'text','/img/people/3.png','u',499,0,'',''),(4,'chat','\0',3,'Cameron',':#em-point_up#: :#em-point_up_2#: :#em-poop#: windows apifdsafd:#em-walking#: ',1409573082,3,'text','/img/people/3.png','u',500,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409573225,4,'video','/img/people/3.png','u',501,0,'201481__3__u_4_f0esjubix_225398',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409573362,4,'video','/img/people/3.png','u',502,0,'201481__3__u_4_b11lkwbev_362332',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409573814,4,'video','/img/people/3.png','u',503,0,'201481__3__u_4_m2mknz6v9_814462',''),(4,'chat','\0',3,'Cameron','wwwwww',1409620310,3,'text','/img/people/3.png','u',504,0,'',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409620347,4,'screen','/img/people/3.png','u',505,0,'201482__3__u_4_hfttidpv1_346979',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409620347,4,'screen','/img/people/3.png','u',506,0,'201482__3__u_4_hfttidpv1_346979',''),(4,'chat','\0',3,'Cameron','fdsafdsa',1409640115,3,'text','/img/people/3.png','u',507,0,'',''),(4,'chat','\0',3,'Cameron','fdsafdsa',1409640283,3,'text','/img/people/3.png','u',508,0,'',''),(4,'chat','\0',3,'Cameron','fdsaf',1409640285,3,'text','/img/people/3.png','u',509,0,'',''),(4,'chat','\0',3,'Cameron','fdasfd',1409640286,3,'text','/img/people/3.png','u',510,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409641312,4,'video','/img/people/3.png','u',511,0,'201482__3__u_4_pyn9edctx_312593',''),(4,'chat','\0',3,'Cameron','vdsfa',1409643163,3,'text','/img/people/3.png','u',512,0,'',''),(4,'chat','\0',3,'Cameron',':#em-finnadie#: :#em-fire#: :#em-fist#: ',1409644752,3,'text','/img/people/3.png','u',513,0,'',''),(4,'chat','\0',3,'Cameron',':#em-point_up_2#: ',1409644843,3,'text','/img/people/3.png','u',514,0,'',''),(4,'chat','\0',3,'Cameron','fdsadas',1409644922,3,'text','/img/people/3.png','u',515,0,'',''),(4,'chat','\0',3,'Cameron',':#em-person_frowning#: :#em-person_with_blond_hair#: ',1409644927,3,'text','/img/people/3.png','u',516,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409649165,4,'video','/img/people/3.png','u',517,0,'201482__3__u_4_5874dxnlv_165038',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409650648,4,'video','/img/people/3.png','u',518,0,'201482__3__u_4_1y5vxj8a5_648431',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651079,4,'screen','/img/people/3.png','u',519,0,'201482__3__u_4_ac18km3pj_079108',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651079,4,'screen','/img/people/3.png','u',520,0,'201482__3__u_4_ac18km3pj_079108',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651082,4,'video','/img/people/3.png','u',521,0,'201482__3__u_4_8v5ay2qzd_082765',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651306,4,'video','/img/people/3.png','u',522,0,'201482__3__u_4_winqdjeqr_306774',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651440,4,'video','/img/people/3.png','u',523,0,'201482__3__u_4_ehn1ot9n4_440258',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651568,4,'video','/img/people/3.png','u',524,0,'201482__3__u_4_fi7x81qkm_568830',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651593,4,'video','/img/people/3.png','u',525,0,'201482__3__u_4_c1jpjb9vw_593805',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651745,4,'screen','/img/people/3.png','u',526,0,'201482__3__u_4_707uolneh_745778',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651746,4,'screen','/img/people/3.png','u',527,0,'201482__3__u_4_707uolneh_745778',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409652040,4,'video','/img/people/3.png','u',528,0,'201482__3__u_4_a4jcwcz62_040716',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409653829,4,'screen','/img/people/3.png','u',529,0,'201482__3__u_4_p2ntu4z3j_829891',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409653830,4,'screen','/img/people/3.png','u',530,0,'201482__3__u_4_p2ntu4z3j_829891',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409653859,4,'video','/img/people/3.png','u',531,0,'201482__3__u_4_gu57vam3l_859750',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409653994,4,'video','/img/people/3.png','u',532,0,'201482__3__u_4_jpybl4xxw_994792',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654008,4,'video','/img/people/3.png','u',533,0,'201482__3__u_4_tj3iiihxq_008882',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654626,4,'video','/img/people/3.png','u',534,0,'201482__3__u_4_xhwbelg96_625878',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654716,4,'video','/img/people/3.png','u',535,0,'201482__3__u_4_ttei2t7lx_716907',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654779,4,'video','/img/people/3.png','u',536,0,'201482__3__u_4_x2gjutm85_779377',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655085,4,'video','/img/people/3.png','u',537,0,'201482__3__u_4_p1xbdwbzg_085792',''),(3,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1409655261,3,'video','/img/people/sys/174.png','u',538,0,'201482__4__u_3_ohjohyye0_261389',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655272,4,'video','/img/people/3.png','u',539,0,'201482__3__u_4_p57999yvv_271978',''),(3,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1409655415,3,'video','/img/people/sys/174.png','u',540,0,'201482__4__u_3_ebloum8ds_415602',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655424,4,'video','/img/people/3.png','u',541,0,'201482__3__u_4_o18wgint1_424493',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655791,4,'video','/img/people/3.png','u',542,0,'201482__3__u_4_5h270msfi_791821',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655835,4,'video','/img/people/3.png','u',543,0,'201482__3__u_4_wvwif7l0b_834995',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655953,4,'video','/img/people/3.png','u',544,0,'201482__3__u_4_bvzff0qtb_953576',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409658273,4,'video','/img/people/3.png','u',545,0,'201482__3__u_4_8c9pk7c6r_273586',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409658886,4,'video','/img/people/3.png','u',546,0,'201482__3__u_4_9j40x046w_886260',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409659223,4,'video','/img/people/3.png','u',547,0,'201482__3__u_4_cqoubidte_223738',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409659304,4,'video','/img/people/3.png','u',548,0,'201482__3__u_4_yt3979wl1_303966',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409659453,4,'video','/img/people/3.png','u',549,0,'201482__3__u_4_109v77fz1_453799',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659603,4,'screen','/img/people/3.png','u',550,0,'201482__3__u_4_zim8kf491_603823',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659604,4,'screen','/img/people/3.png','u',551,0,'201482__3__u_4_zim8kf491_603823',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659756,4,'screen','/img/people/3.png','u',552,0,'201482__3__u_4_qqdbma747_756153',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659756,4,'screen','/img/people/3.png','u',553,0,'201482__3__u_4_qqdbma747_756153',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409660151,4,'screen','/img/people/3.png','u',554,0,'201482__3__u_4_bs2trw26r_151692',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409660151,4,'screen','/img/people/3.png','u',555,0,'201482__3__u_4_bs2trw26r_151692',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',556,0,'201482__3__g_91_5lk8av8xs_726398',''),(4,'share','\0',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',557,0,'201482__3__g_91_5lk8av8xs_726398',''),(5,'share','\0',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',558,0,'201482__3__g_91_5lk8av8xs_726398',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',559,0,'201482__3__g_91_5lk8av8xs_726398',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',560,0,'201482__3__g_91_5lk8av8xs_726398',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',561,0,'201482__3__g_91_5lk8av8xs_726398',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',562,0,'201482__3__g_91_5lk8av8xs_726398',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',563,0,'201482__3__g_91_5lk8av8xs_726398',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',564,0,'201482__3__g_91_tbq1arz6b_729150',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',565,0,'201482__3__g_91_tbq1arz6b_729150',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',566,0,'201482__3__g_91_tbq1arz6b_729150',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',567,0,'201482__3__g_91_tbq1arz6b_729150',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',568,0,'201482__3__g_91_tbq1arz6b_729150',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',569,0,'201482__3__g_91_tbq1arz6b_729150',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',570,0,'201482__3__g_91_tbq1arz6b_729150',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',571,0,'201482__3__g_91_tbq1arz6b_729150',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662813,4,'screen','/img/people/3.png','u',572,0,'201482__3__u_4_37y45edlt_813708',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662813,4,'screen','/img/people/3.png','u',573,0,'201482__3__u_4_37y45edlt_813708',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662820,4,'screen','/img/people/3.png','u',574,0,'201482__3__u_4_hcxcox759_820602',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662820,4,'screen','/img/people/3.png','u',575,0,'201482__3__u_4_hcxcox759_820602',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409662825,4,'video','/img/people/3.png','u',576,0,'201482__3__u_4_j9x3vxyj8_825925',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',577,0,'201482__3__g_91_zdapvkbti_790336',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',578,0,'201482__3__g_91_zdapvkbti_790336',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',579,0,'201482__3__g_91_zdapvkbti_790336',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',580,0,'201482__3__g_91_zdapvkbti_790336',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',581,0,'201482__3__g_91_zdapvkbti_790336',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',582,0,'201482__3__g_91_zdapvkbti_790336',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',583,0,'201482__3__g_91_zdapvkbti_790336',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',584,0,'201482__3__g_91_zdapvkbti_790336',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',585,0,'201482__3__g_91_nbxtjh9aj_793158',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',586,0,'201482__3__g_91_nbxtjh9aj_793158',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',587,0,'201482__3__g_91_nbxtjh9aj_793158',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',588,0,'201482__3__g_91_nbxtjh9aj_793158',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',589,0,'201482__3__g_91_nbxtjh9aj_793158',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',590,0,'201482__3__g_91_nbxtjh9aj_793158',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',591,0,'201482__3__g_91_nbxtjh9aj_793158',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',592,0,'201482__3__g_91_nbxtjh9aj_793158',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663795,4,'screen','/img/people/3.png','u',593,0,'201482__3__u_4_h2f4jqi8k_795759',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663795,4,'screen','/img/people/3.png','u',594,0,'201482__3__u_4_h2f4jqi8k_795759',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663859,4,'screen','/img/people/3.png','u',595,0,'201482__3__u_4_2opti037j_859237',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663859,4,'screen','/img/people/3.png','u',596,0,'201482__3__u_4_2opti037j_859237',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409663862,4,'video','/img/people/3.png','u',597,0,'201482__3__u_4_ptqienc8i_862269',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663871,4,'screen','/img/people/3.png','u',598,0,'201482__3__u_4_029a4y411_871661',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663871,4,'screen','/img/people/3.png','u',599,0,'201482__3__u_4_029a4y411_871661',''),(3,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',600,0,'201482__4__g_91_1e8xaaiyb_098171',''),(4,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',601,0,'201482__4__g_91_1e8xaaiyb_098171',''),(5,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',602,0,'201482__4__g_91_1e8xaaiyb_098171',''),(7,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',603,0,'201482__4__g_91_1e8xaaiyb_098171',''),(3,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',604,0,'201482__4__g_91_1e8xaaiyb_098171',''),(4,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',605,0,'201482__4__g_91_1e8xaaiyb_098171',''),(5,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',606,0,'201482__4__g_91_1e8xaaiyb_098171',''),(7,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',607,0,'201482__4__g_91_1e8xaaiyb_098171',''),(3,'chat','\0',4,'Andy Liu','fdsaf',1409726814,4,'text','/img/people/sys/174.png','u',608,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdasfdas',1409726823,4,'text','/img/people/sys/174.png','u',609,0,'',''),(3,'chat','\0',4,'Andy Liu','fdasfdas',1409726830,4,'text','/img/people/sys/174.png','u',610,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdas',1409726832,4,'text','/img/people/sys/174.png','u',611,0,'',''),(3,'chat','\0',4,'Andy Liu','dsadfas',1409726837,4,'text','/img/people/sys/174.png','u',612,0,'',''),(3,'chat','\0',4,'Andy Liu','fasdfdsafdsa',1409726905,4,'text','/img/people/sys/174.png','u',613,0,'',''),(3,'chat','\0',4,'Andy Liu','fasdfdsafdsafdsafdsa',1409726906,4,'text','/img/people/sys/174.png','u',614,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdfdsafdas',1409727059,4,'text','/img/people/sys/174.png','u',615,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdas',1409727061,4,'text','/img/people/sys/174.png','u',616,0,'',''),(3,'chat','\0',4,'Andy Liu',':#em-person_with_pouting_face#: fdsafdsa',1409727068,4,'text','/img/people/sys/174.png','u',617,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsa',1409727167,4,'text','/img/people/sys/174.png','u',618,0,'',''),(3,'chat','\0',4,'Andy Liu','wfew',1409727210,4,'text','/img/people/sys/174.png','u',619,0,'',''),(4,'chat','\0',3,'Cameron','dsafdsafasafda',1409822778,3,'text','/img/people/3.png','u',620,0,'',''),(4,'chat','\0',3,'Cameron',':#em-two_women_holding_hands#: :#em-unamused#: saf',1409822925,3,'text','/img/people/3.png','u',621,0,'',''),(4,'chat','\0',3,'Cameron','fdsafa',1409823010,3,'text','/img/people/3.png','u',622,0,'',''),(4,'chat','\0',3,'Cameron','wfwe',1409823259,3,'text','/img/people/3.png','u',623,0,'',''),(4,'chat','\0',3,'Cameron','fdsa',1409823272,3,'text','/img/people/3.png','u',624,0,'',''),(7,'chat','\0',3,'Cameron','fwewf',1409879843,3,'text','/img/people/3.png','u',625,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409879968,3,'text','/img/people/3.png','u',626,0,'',''),(7,'chat','\0',3,'Cameron','winwdws',1409880035,3,'text','/img/people/3.png','u',627,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409880367,3,'text','/img/people/3.png','u',628,0,'',''),(7,'chat','\0',3,'Cameron','fdsaffdsaf',1409880397,3,'text','/img/people/3.png','u',629,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdas',1409880481,3,'text','/img/people/3.png','u',630,0,'',''),(7,'chat','\0',3,'Cameron','dfasfdsa',1409880521,3,'text','/img/people/3.png','u',631,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409882814,3,'text','/img/people/3.png','u',632,0,'',''),(7,'chat','\0',3,'Cameron','fdsafda',1409887277,3,'text','/img/people/3.png','u',633,0,'',''),(7,'chat','\0',3,'Cameron','fdsa',1409887293,3,'text','/img/people/3.png','u',634,0,'',''),(7,'chat','\0',3,'Cameron','fdsafs',1409887376,3,'text','/img/people/3.png','u',635,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409887501,3,'text','/img/people/3.png','u',636,0,'',''),(7,'chat','\0',3,'Cameron','wwwwwww',1409887701,3,'text','/img/people/3.png','u',637,0,'',''),(7,'chat','\0',3,'Cameron','wefwfwfe',1409888667,3,'text','/img/people/3.png','u',638,0,'',''),(7,'chat','\0',3,'Cameron','fdasfdas',1409888673,3,'text','/img/people/3.png','u',639,0,'',''),(7,'chat','\0',3,'Cameron','dfasfd',1409888748,3,'text','/img/people/3.png','u',640,0,'',''),(7,'chat','\0',3,'Cameron','fdsafsda',1409888756,3,'text','/img/people/3.png','u',641,0,'',''),(7,'chat','\0',3,'Cameron','fsad',1409888757,3,'text','/img/people/3.png','u',642,0,'',''),(7,'chat','\0',3,'Cameron','windows ',1409888889,3,'text','/img/people/3.png','u',643,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdsa',1409889167,3,'text','/img/people/3.png','u',644,0,'',''),(7,'chat','\0',3,'Cameron','fdasfdsa',1409889424,3,'text','/img/people/3.png','u',645,0,'',''),(7,'chat','\0',3,'Cameron','fdsafda',1409889485,3,'text','/img/people/3.png','u',646,0,'',''),(7,'chat','\0',3,'Cameron','fdasfd',1409889529,3,'text','/img/people/3.png','u',647,0,'',''),(7,'chat','\0',3,'Cameron','fdasfdas',1409889628,3,'text','/img/people/3.png','u',648,0,'',''),(7,'chat','\0',3,'Cameron','fdsadfas',1409889629,3,'text','/img/people/3.png','u',649,0,'',''),(3,'chat','',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',650,0,'',''),(4,'chat','\0',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',651,0,'',''),(5,'chat','\0',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',652,0,'',''),(7,'chat','\0',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',653,0,'',''),(3,'chat','',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',654,0,'',''),(4,'chat','\0',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',655,0,'',''),(5,'chat','\0',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',656,0,'',''),(7,'chat','\0',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',657,0,'',''),(3,'chat','',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',658,0,'',''),(4,'chat','\0',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',659,0,'',''),(5,'chat','\0',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',660,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',661,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409912831,3,'text','/img/people/3.png','u',662,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409912852,3,'text','/img/people/3.png','u',663,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409912860,3,'text','/img/people/3.png','u',664,0,'',''),(7,'chat','\0',3,'Cameron','wfewfw',1410232283,3,'text','/img/people/3.png','u',665,0,'',''),(7,'chat','\0',3,'Cameron','windows',1410232289,3,'text','/img/people/3.png','u',666,0,'',''),(7,'chat','\0',3,'Cameron','fsafdsa',1410232291,3,'text','/img/people/3.png','u',667,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdas',1410232294,3,'text','/img/people/3.png','u',668,0,'',''),(7,'chat','\0',3,'Cameron','fsafda',1410232301,3,'text','/img/people/3.png','u',669,0,'',''),(7,'chat','\0',3,'Cameron','wwww',1410232307,3,'text','/img/people/3.png','u',670,0,'',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410233398,7,'video','/img/people/3.png','u',671,0,'201489__3__u_7_mivvpe7ib_398331',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410233424,7,'video','/img/people/3.png','u',672,0,'201489__3__u_7_8aa41wlp6_424138',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410234986,7,'video','/img/people/3.png','u',673,0,'201489__3__u_7_vqwwhy458_986788',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235043,7,'video','/img/people/3.png','u',674,0,'201489__3__u_7_5yee2nrar_043463',''),(3,'chat','\0',7,'Mao Zedong','Mao Zedong is inviting you for video chat',1410235105,3,'video','/img/people/mzd.png','u',675,0,'201489__7__u_3_efxfesy0l_105768',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235522,7,'video','/img/people/3.png','u',676,0,'201489__3__u_7_r9rprncy1_522547',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235535,7,'video','/img/people/3.png','u',677,0,'201489__3__u_7_k17rox9k2_535633',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235560,7,'video','/img/people/3.png','u',678,0,'201489__3__u_7_gn04r4b6i_560138',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235933,7,'video','/img/people/3.png','u',679,0,'201489__3__u_7_pxt2cc35f_932636',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235988,7,'video','/img/people/3.png','u',680,0,'201489__3__u_7_n2nadl4wo_988819',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410236019,7,'video','/img/people/3.png','u',681,0,'201489__3__u_7_sd1b0zxwj_019224',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410236292,7,'video','/img/people/3.png','u',682,0,'201489__3__u_7_0a5uvklez_292860',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249561,7,'video','/img/people/3.png','u',683,0,'201489__3__u_7_fg6aedlpp_561541',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249748,7,'video','/img/people/3.png','u',684,0,'201489__3__u_7_c7w8gahgs_747873',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249766,7,'video','/img/people/3.png','u',685,0,'201489__3__u_7_diqvhwpv7_765995',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249783,7,'video','/img/people/3.png','u',686,0,'201489__3__u_7_pxv62nm7r_782854',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249854,7,'video','/img/people/3.png','u',687,0,'201489__3__u_7_1503lc6cv_854655',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249912,7,'video','/img/people/3.png','u',688,0,'201489__3__u_7_sy0xs6nuv_912471',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249932,7,'video','/img/people/3.png','u',689,0,'201489__3__u_7_z4y1ufcx7_932652',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410250207,7,'video','/img/people/3.png','u',690,0,'201489__3__u_7_obc62szt4_207361',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410250501,7,'video','/img/people/3.png','u',691,0,'201489__3__u_7_taiyz9oyj_501227',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410251883,7,'video','/img/people/3.png','u',692,0,'201489__3__u_7_gpwj02i75_883383',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410251968,7,'video','/img/people/3.png','u',693,0,'201489__3__u_7_sg49sw0uq_968219',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410252321,7,'video','/img/people/3.png','u',694,0,'201489__3__u_7_sdit3h5un_321846',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410252545,7,'video','/img/people/3.png','u',695,0,'201489__3__u_7_didtk9br9_545000',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410252566,7,'video','/img/people/3.png','u',696,0,'201489__3__u_7_my974svst_566052',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410253356,7,'video','/img/people/3.png','u',697,0,'201489__3__u_7_9n8w4o0uw_356207',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410253451,7,'video','/img/people/3.png','u',698,0,'201489__3__u_7_d6kb9bp9w_451322',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410253793,7,'video','/img/people/3.png','u',699,0,'201489__3__u_7_r0xzgwtg4_793752',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410254155,7,'video','/img/people/3.png','u',700,0,'201489__3__u_7_n7smzfz4f_155178',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410254329,7,'video','/img/people/3.png','u',701,0,'201489__3__u_7_scpqjecb3_329630',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410254381,7,'video','/img/people/3.png','u',702,0,'201489__3__u_7_pdpst5mwz_381656',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410259386,7,'video','/img/people/3.png','u',703,0,'201489__3__u_7_gtzuhrfbv_386264',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410259527,7,'video','/img/people/3.png','u',704,0,'201489__3__u_7_ltzforw2l_527034',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410259578,7,'video','/img/people/3.png','u',705,0,'201489__3__u_7_sz8qot7qu_578019',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260113,7,'video','/img/people/3.png','u',706,0,'201489__3__u_7_ats3t1fpq_112587',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260149,7,'video','/img/people/3.png','u',707,0,'201489__3__u_7_e26hgs9ac_149643',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260569,7,'video','/img/people/3.png','u',708,0,'201489__3__u_7_ij9a3dk6l_569140',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260620,7,'video','/img/people/3.png','u',709,0,'201489__3__u_7_0ufzrqxl6_620011',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260645,7,'video','/img/people/3.png','u',710,0,'201489__3__u_7_ekxagx77h_645875',''),(7,'chat','\0',3,'Cameron','dsafdsa',1410263580,3,'text','/img/people/3.png','u',711,0,'',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267191,7,'screen','/img/people/3.png','u',712,0,'201489__3__u_7_2u94n4hpr_191619',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267193,7,'screen','/img/people/3.png','u',713,0,'201489__3__u_7_2u94n4hpr_191619',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267294,7,'screen','/img/people/3.png','u',714,0,'201489__3__u_7_dnc4ogcu1_294623',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267294,7,'screen','/img/people/3.png','u',715,0,'201489__3__u_7_dnc4ogcu1_294623',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267341,7,'screen','/img/people/3.png','u',716,0,'201489__3__u_7_mkrpw7hcy_341149',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267341,7,'screen','/img/people/3.png','u',717,0,'201489__3__u_7_mkrpw7hcy_341149',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267516,7,'screen','/img/people/3.png','u',718,0,'201489__3__u_7_ddgj2m73h_516886',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267517,7,'screen','/img/people/3.png','u',719,0,'201489__3__u_7_ddgj2m73h_516886',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267657,7,'screen','/img/people/3.png','u',720,0,'201489__3__u_7_9gi13w15o_657793',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267658,7,'screen','/img/people/3.png','u',721,0,'201489__3__u_7_9gi13w15o_657793',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267737,7,'screen','/img/people/3.png','u',722,0,'201489__3__u_7_192uiwgx5_737429',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267737,7,'screen','/img/people/3.png','u',723,0,'201489__3__u_7_192uiwgx5_737429',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269177,7,'screen','/img/people/3.png','u',724,0,'201489__3__u_7_acmqrzl44_177399',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269319,7,'screen','/img/people/3.png','u',725,0,'201489__3__u_7_cqsakrw0i_319609',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269347,7,'screen','/img/people/3.png','u',726,0,'201489__3__u_7_i5cljk0xe_347376',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410269379,7,'video','/img/people/3.png','u',727,0,'201489__3__u_7_vtomad9g0_379881',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269390,7,'screen','/img/people/3.png','u',728,0,'201489__3__u_7_ut3itv2cn_390221',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269411,7,'screen','/img/people/3.png','u',729,0,'201489__3__u_7_2mr2eiuec_411349',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269446,7,'screen','/img/people/3.png','u',730,0,'201489__3__u_7_nmgyado3p_446404',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',731,0,'2014810__3__g_91_3qcw5os1t_322438',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',732,0,'2014810__3__g_91_3qcw5os1t_322438',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',733,0,'2014810__3__g_91_3qcw5os1t_322438',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',734,0,'2014810__3__g_91_3qcw5os1t_322438',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',735,0,'2014810__3__g_91_3qcw5os1t_322438',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',736,0,'2014810__3__g_91_3qcw5os1t_322438',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',737,0,'2014810__3__g_91_3qcw5os1t_322438',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',738,0,'2014810__3__g_91_3qcw5os1t_322438',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',739,0,'2014810__3__g_91_50yk3dan7_368108',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',740,0,'2014810__3__g_91_50yk3dan7_368108',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',741,0,'2014810__3__g_91_50yk3dan7_368108',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',742,0,'2014810__3__g_91_50yk3dan7_368108',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',743,0,'2014810__3__g_91_50yk3dan7_368108',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',744,0,'2014810__3__g_91_50yk3dan7_368108',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',745,0,'2014810__3__g_91_50yk3dan7_368108',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',746,0,'2014810__3__g_91_50yk3dan7_368108',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',747,0,'2014810__3__g_91_svaad6vq8_389860',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',748,0,'2014810__3__g_91_svaad6vq8_389860',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',749,0,'2014810__3__g_91_svaad6vq8_389860',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',750,0,'2014810__3__g_91_svaad6vq8_389860',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',751,0,'2014810__3__g_91_svaad6vq8_389860',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',752,0,'2014810__3__g_91_svaad6vq8_389860',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',753,0,'2014810__3__g_91_svaad6vq8_389860',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',754,0,'2014810__3__g_91_svaad6vq8_389860',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',755,0,'2014810__3__g_91_5kayocktm_506763',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',756,0,'2014810__3__g_91_5kayocktm_506763',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',757,0,'2014810__3__g_91_5kayocktm_506763',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',758,0,'2014810__3__g_91_5kayocktm_506763',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',759,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',760,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',761,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',762,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',763,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',764,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',765,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',766,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',767,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',768,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',769,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',770,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',771,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',772,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',773,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',774,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',775,0,'2014810__3__g_91_66igtq91b_602504',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',776,0,'2014810__3__g_91_66igtq91b_602504',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',777,0,'2014810__3__g_91_66igtq91b_602504',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',778,0,'2014810__3__g_91_66igtq91b_602504',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',779,0,'2014810__3__g_91_edeuq0ev2_623376',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',780,0,'2014810__3__g_91_edeuq0ev2_623376',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',781,0,'2014810__3__g_91_edeuq0ev2_623376',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',782,0,'2014810__3__g_91_edeuq0ev2_623376',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',783,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',784,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',785,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',786,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',787,0,'2014810__3__g_91_singqaden_783039',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',788,0,'2014810__3__g_91_singqaden_783039',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',789,0,'2014810__3__g_91_singqaden_783039',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',790,0,'2014810__3__g_91_singqaden_783039',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',791,0,'2014810__3__g_91_4d8tpum07_483991',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',792,0,'2014810__3__g_91_4d8tpum07_483991',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',793,0,'2014810__3__g_91_4d8tpum07_483991',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',794,0,'2014810__3__g_91_4d8tpum07_483991',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',795,0,'2014810__3__g_91_wu8iofp6z_866176',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',796,0,'2014810__3__g_91_wu8iofp6z_866176',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',797,0,'2014810__3__g_91_wu8iofp6z_866176',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',798,0,'2014810__3__g_91_wu8iofp6z_866176',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',799,0,'2014810__3__g_91_y8xavw71j_971420',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',800,0,'2014810__3__g_91_y8xavw71j_971420',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',801,0,'2014810__3__g_91_y8xavw71j_971420',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',802,0,'2014810__3__g_91_y8xavw71j_971420',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',803,0,'2014810__3__g_91_tmq7upxsa_002819',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',804,0,'2014810__3__g_91_tmq7upxsa_002819',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',805,0,'2014810__3__g_91_tmq7upxsa_002819',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',806,0,'2014810__3__g_91_tmq7upxsa_002819',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',807,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',808,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',809,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',810,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',811,0,'2014810__3__g_91_inpdllbtq_209170',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',812,0,'2014810__3__g_91_inpdllbtq_209170',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',813,0,'2014810__3__g_91_inpdllbtq_209170',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',814,0,'2014810__3__g_91_inpdllbtq_209170',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',815,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',816,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',817,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',818,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',819,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',820,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',821,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',822,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',823,0,'2014810__3__g_91_1clnd6lxj_450738',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',824,0,'2014810__3__g_91_1clnd6lxj_450738',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',825,0,'2014810__3__g_91_1clnd6lxj_450738',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',826,0,'2014810__3__g_91_1clnd6lxj_450738',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',827,0,'2014810__3__g_91_mqzsydpyb_488281',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',828,0,'2014810__3__g_91_mqzsydpyb_488281',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',829,0,'2014810__3__g_91_mqzsydpyb_488281',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',830,0,'2014810__3__g_91_mqzsydpyb_488281',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',831,0,'2014810__3__g_91_rmikee4i9_650924',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',832,0,'2014810__3__g_91_rmikee4i9_650924',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',833,0,'2014810__3__g_91_rmikee4i9_650924',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',834,0,'2014810__3__g_91_rmikee4i9_650924',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',835,0,'2014810__3__g_91_imzukxrme_749226',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',836,0,'2014810__3__g_91_imzukxrme_749226',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',837,0,'2014810__3__g_91_imzukxrme_749226',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',838,0,'2014810__3__g_91_imzukxrme_749226',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',839,0,'2014810__3__g_91_p10drsv1w_769765',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',840,0,'2014810__3__g_91_p10drsv1w_769765',''),(5,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',841,0,'2014810__3__g_91_p10drsv1w_769765',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',842,0,'2014810__3__g_91_p10drsv1w_769765',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',843,0,'2014810__3__g_91_fk108eyp9_830735',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',844,0,'2014810__3__g_91_fk108eyp9_830735',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',845,0,'2014810__3__g_91_fk108eyp9_830735',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',846,0,'2014810__3__g_91_fk108eyp9_830735',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',847,0,'2014810__3__g_91_16n3y6s8o_846907',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',848,0,'2014810__3__g_91_16n3y6s8o_846907',''),(5,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',849,0,'2014810__3__g_91_16n3y6s8o_846907',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',850,0,'2014810__3__g_91_16n3y6s8o_846907',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',851,0,'2014810__3__g_91_1waj7n765_888299',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',852,0,'2014810__3__g_91_1waj7n765_888299',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',853,0,'2014810__3__g_91_1waj7n765_888299',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',854,0,'2014810__3__g_91_1waj7n765_888299',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',855,0,'2014810__3__g_91_1waj7n765_888299',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',856,0,'2014810__3__g_91_1waj7n765_888299',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',857,0,'2014810__3__g_91_1waj7n765_888299',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',858,0,'2014810__3__g_91_1waj7n765_888299',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',859,0,'2014810__3__g_91_jfzuldc1y_281664',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',860,0,'2014810__3__g_91_jfzuldc1y_281664',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',861,0,'2014810__3__g_91_jfzuldc1y_281664',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',862,0,'2014810__3__g_91_jfzuldc1y_281664',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',863,0,'2014810__3__g_91_jfzuldc1y_281664',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',864,0,'2014810__3__g_91_jfzuldc1y_281664',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',865,0,'2014810__3__g_91_jfzuldc1y_281664',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',866,0,'2014810__3__g_91_jfzuldc1y_281664',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',867,0,'2014810__3__g_91_gxf3mbr86_384552',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',868,0,'2014810__3__g_91_gxf3mbr86_384552',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',869,0,'2014810__3__g_91_gxf3mbr86_384552',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',870,0,'2014810__3__g_91_gxf3mbr86_384552',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',871,0,'2014810__3__g_91_gxf3mbr86_384552',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',872,0,'2014810__3__g_91_gxf3mbr86_384552',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',873,0,'2014810__3__g_91_gxf3mbr86_384552',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',874,0,'2014810__3__g_91_gxf3mbr86_384552',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',875,0,'2014810__3__g_91_nrebplgcw_508913',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',876,0,'2014810__3__g_91_nrebplgcw_508913',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',877,0,'2014810__3__g_91_nrebplgcw_508913',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',878,0,'2014810__3__g_91_nrebplgcw_508913',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',879,0,'2014810__3__g_91_nrebplgcw_508913',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',880,0,'2014810__3__g_91_nrebplgcw_508913',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',881,0,'2014810__3__g_91_nrebplgcw_508913',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',882,0,'2014810__3__g_91_nrebplgcw_508913',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',883,0,'2014810__3__g_91_1xb0fagix_956931',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',884,0,'2014810__3__g_91_1xb0fagix_956931',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',885,0,'2014810__3__g_91_1xb0fagix_956931',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',886,0,'2014810__3__g_91_1xb0fagix_956931',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',887,0,'2014810__3__g_91_1xb0fagix_956931',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',888,0,'2014810__3__g_91_1xb0fagix_956931',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',889,0,'2014810__3__g_91_1xb0fagix_956931',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',890,0,'2014810__3__g_91_1xb0fagix_956931',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',891,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',892,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',893,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',894,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',895,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',896,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',897,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',898,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',899,0,'2014810__3__g_91_ipx3jlqea_268390',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',900,0,'2014810__3__g_91_ipx3jlqea_268390',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',901,0,'2014810__3__g_91_ipx3jlqea_268390',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',902,0,'2014810__3__g_91_ipx3jlqea_268390',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',903,0,'2014810__3__g_91_ipx3jlqea_268390',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',904,0,'2014810__3__g_91_ipx3jlqea_268390',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',905,0,'2014810__3__g_91_ipx3jlqea_268390',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',906,0,'2014810__3__g_91_ipx3jlqea_268390',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',907,0,'2014810__3__g_91_t1m831bgs_563691',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',908,0,'2014810__3__g_91_t1m831bgs_563691',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',909,0,'2014810__3__g_91_t1m831bgs_563691',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',910,0,'2014810__3__g_91_t1m831bgs_563691',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',911,0,'2014810__3__g_91_t1m831bgs_563691',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',912,0,'2014810__3__g_91_t1m831bgs_563691',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',913,0,'2014810__3__g_91_t1m831bgs_563691',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',914,0,'2014810__3__g_91_t1m831bgs_563691',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',915,0,'2014810__3__g_91_rvae2wq9h_578705',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',916,0,'2014810__3__g_91_rvae2wq9h_578705',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',917,0,'2014810__3__g_91_rvae2wq9h_578705',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',918,0,'2014810__3__g_91_rvae2wq9h_578705',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',919,0,'2014810__3__g_91_rvae2wq9h_578705',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',920,0,'2014810__3__g_91_rvae2wq9h_578705',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',921,0,'2014810__3__g_91_rvae2wq9h_578705',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',922,0,'2014810__3__g_91_rvae2wq9h_578705',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',923,0,'2014810__3__g_91_v5bkm02ls_674966',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',924,0,'2014810__3__g_91_v5bkm02ls_674966',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',925,0,'2014810__3__g_91_v5bkm02ls_674966',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',926,0,'2014810__3__g_91_v5bkm02ls_674966',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',927,0,'2014810__3__g_91_v5bkm02ls_674966',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',928,0,'2014810__3__g_91_v5bkm02ls_674966',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',929,0,'2014810__3__g_91_v5bkm02ls_674966',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',930,0,'2014810__3__g_91_v5bkm02ls_674966',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',931,0,'2014810__3__g_91_4aj046wsw_775211',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',932,0,'2014810__3__g_91_4aj046wsw_775211',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',933,0,'2014810__3__g_91_4aj046wsw_775211',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',934,0,'2014810__3__g_91_4aj046wsw_775211',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',935,0,'2014810__3__g_91_4aj046wsw_775211',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',936,0,'2014810__3__g_91_4aj046wsw_775211',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',937,0,'2014810__3__g_91_4aj046wsw_775211',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',938,0,'2014810__3__g_91_4aj046wsw_775211',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',939,0,'2014810__3__g_91_p364aa8p3_822353',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',940,0,'2014810__3__g_91_p364aa8p3_822353',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',941,0,'2014810__3__g_91_p364aa8p3_822353',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',942,0,'2014810__3__g_91_p364aa8p3_822353',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',943,0,'2014810__3__g_91_p364aa8p3_822353',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',944,0,'2014810__3__g_91_p364aa8p3_822353',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',945,0,'2014810__3__g_91_p364aa8p3_822353',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',946,0,'2014810__3__g_91_p364aa8p3_822353',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',947,0,'2014810__3__g_91_xlupjp8of_892007',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',948,0,'2014810__3__g_91_xlupjp8of_892007',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',949,0,'2014810__3__g_91_xlupjp8of_892007',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',950,0,'2014810__3__g_91_xlupjp8of_892007',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',951,0,'2014810__3__g_91_xlupjp8of_892007',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',952,0,'2014810__3__g_91_xlupjp8of_892007',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',953,0,'2014810__3__g_91_xlupjp8of_892007',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',954,0,'2014810__3__g_91_xlupjp8of_892007',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',955,0,'2014810__3__g_91_vrreqifew_961880',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',956,0,'2014810__3__g_91_vrreqifew_961880',''),(5,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',957,0,'2014810__3__g_91_vrreqifew_961880',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',958,0,'2014810__3__g_91_vrreqifew_961880',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',959,0,'2014810__3__g_91_7nffaqufv_984891',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',960,0,'2014810__3__g_91_7nffaqufv_984891',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',961,0,'2014810__3__g_91_7nffaqufv_984891',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',962,0,'2014810__3__g_91_7nffaqufv_984891',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',963,0,'2014810__3__g_91_7nffaqufv_984891',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',964,0,'2014810__3__g_91_7nffaqufv_984891',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',965,0,'2014810__3__g_91_7nffaqufv_984891',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',966,0,'2014810__3__g_91_7nffaqufv_984891',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',967,0,'2014810__3__g_91_qnlas2aqs_646889',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',968,0,'2014810__3__g_91_qnlas2aqs_646889',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',969,0,'2014810__3__g_91_qnlas2aqs_646889',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',970,0,'2014810__3__g_91_qnlas2aqs_646889',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',971,0,'2014810__3__g_91_qnlas2aqs_646889',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',972,0,'2014810__3__g_91_qnlas2aqs_646889',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',973,0,'2014810__3__g_91_qnlas2aqs_646889',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',974,0,'2014810__3__g_91_qnlas2aqs_646889',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',975,0,'2014810__3__g_91_32cjulsdt_747950',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',976,0,'2014810__3__g_91_32cjulsdt_747950',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',977,0,'2014810__3__g_91_32cjulsdt_747950',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',978,0,'2014810__3__g_91_32cjulsdt_747950',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',979,0,'2014810__3__g_91_32cjulsdt_747950',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',980,0,'2014810__3__g_91_32cjulsdt_747950',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',981,0,'2014810__3__g_91_32cjulsdt_747950',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',982,0,'2014810__3__g_91_32cjulsdt_747950',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',983,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',984,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',985,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',986,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',987,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',988,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',989,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',990,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',991,0,'2014810__3__g_91_1356s86ma_870881',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',992,0,'2014810__3__g_91_1356s86ma_870881',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',993,0,'2014810__3__g_91_1356s86ma_870881',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',994,0,'2014810__3__g_91_1356s86ma_870881',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',995,0,'2014810__3__g_91_1356s86ma_870881',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',996,0,'2014810__3__g_91_1356s86ma_870881',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',997,0,'2014810__3__g_91_1356s86ma_870881',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',998,0,'2014810__3__g_91_1356s86ma_870881',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',999,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1000,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1001,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1002,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1003,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1004,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1005,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1006,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1007,0,'2014810__3__g_91_hth30r562_951428',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1008,0,'2014810__3__g_91_hth30r562_951428',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1009,0,'2014810__3__g_91_hth30r562_951428',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1010,0,'2014810__3__g_91_hth30r562_951428',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1011,0,'2014810__3__g_91_hth30r562_951428',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1012,0,'2014810__3__g_91_hth30r562_951428',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1013,0,'2014810__3__g_91_hth30r562_951428',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1014,0,'2014810__3__g_91_hth30r562_951428',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1015,0,'2014810__3__g_91_myrz9f1rp_326976',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1016,0,'2014810__3__g_91_myrz9f1rp_326976',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1017,0,'2014810__3__g_91_myrz9f1rp_326976',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1018,0,'2014810__3__g_91_myrz9f1rp_326976',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1019,0,'2014810__3__g_91_myrz9f1rp_326976',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1020,0,'2014810__3__g_91_myrz9f1rp_326976',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1021,0,'2014810__3__g_91_myrz9f1rp_326976',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1022,0,'2014810__3__g_91_myrz9f1rp_326976',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1023,0,'2014810__3__g_91_q5gfe8qga_409803',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1024,0,'2014810__3__g_91_q5gfe8qga_409803',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1025,0,'2014810__3__g_91_q5gfe8qga_409803',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1026,0,'2014810__3__g_91_q5gfe8qga_409803',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1027,0,'2014810__3__g_91_q5gfe8qga_409803',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1028,0,'2014810__3__g_91_q5gfe8qga_409803',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1029,0,'2014810__3__g_91_q5gfe8qga_409803',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1030,0,'2014810__3__g_91_q5gfe8qga_409803',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1031,0,'2014810__3__g_91_vu54wdz98_920906',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1032,0,'2014810__3__g_91_vu54wdz98_920906',''),(5,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1033,0,'2014810__3__g_91_vu54wdz98_920906',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1034,0,'2014810__3__g_91_vu54wdz98_920906',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1035,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1036,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1037,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1038,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1039,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1040,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1041,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1042,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1043,0,'2014810__3__g_91_bmnzim2s9_615267',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1044,0,'2014810__3__g_91_bmnzim2s9_615267',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1045,0,'2014810__3__g_91_bmnzim2s9_615267',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1046,0,'2014810__3__g_91_bmnzim2s9_615267',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1047,0,'2014810__3__g_91_bmnzim2s9_615267',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1048,0,'2014810__3__g_91_bmnzim2s9_615267',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1049,0,'2014810__3__g_91_bmnzim2s9_615267',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1050,0,'2014810__3__g_91_bmnzim2s9_615267',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1051,0,'2014810__3__g_91_w4cxly7x3_078865',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1052,0,'2014810__3__g_91_w4cxly7x3_078865',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1053,0,'2014810__3__g_91_w4cxly7x3_078865',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1054,0,'2014810__3__g_91_w4cxly7x3_078865',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1055,0,'2014810__3__g_91_w4cxly7x3_078865',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1056,0,'2014810__3__g_91_w4cxly7x3_078865',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1057,0,'2014810__3__g_91_w4cxly7x3_078865',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1058,0,'2014810__3__g_91_w4cxly7x3_078865',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1059,0,'2014810__3__g_91_4r3fmpou1_189777',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1060,0,'2014810__3__g_91_4r3fmpou1_189777',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1061,0,'2014810__3__g_91_4r3fmpou1_189777',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1062,0,'2014810__3__g_91_4r3fmpou1_189777',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1063,0,'2014810__3__g_91_4r3fmpou1_189777',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1064,0,'2014810__3__g_91_4r3fmpou1_189777',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1065,0,'2014810__3__g_91_4r3fmpou1_189777',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1066,0,'2014810__3__g_91_4r3fmpou1_189777',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1067,0,'2014810__3__g_91_a8body5ci_365750',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1068,0,'2014810__3__g_91_a8body5ci_365750',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1069,0,'2014810__3__g_91_a8body5ci_365750',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1070,0,'2014810__3__g_91_a8body5ci_365750',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1071,0,'2014810__3__g_91_a8body5ci_365750',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1072,0,'2014810__3__g_91_a8body5ci_365750',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1073,0,'2014810__3__g_91_a8body5ci_365750',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1074,0,'2014810__3__g_91_a8body5ci_365750',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1075,0,'2014810__3__g_91_jstcwp5v3_468246',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1076,0,'2014810__3__g_91_jstcwp5v3_468246',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1077,0,'2014810__3__g_91_jstcwp5v3_468246',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1078,0,'2014810__3__g_91_jstcwp5v3_468246',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1079,0,'2014810__3__g_91_jstcwp5v3_468246',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1080,0,'2014810__3__g_91_jstcwp5v3_468246',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1081,0,'2014810__3__g_91_jstcwp5v3_468246',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1082,0,'2014810__3__g_91_jstcwp5v3_468246',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1083,0,'2014810__3__g_91_evmneygbo_045616',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1084,0,'2014810__3__g_91_evmneygbo_045616',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1085,0,'2014810__3__g_91_evmneygbo_045616',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1086,0,'2014810__3__g_91_evmneygbo_045616',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1087,0,'2014810__3__g_91_evmneygbo_045616',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1088,0,'2014810__3__g_91_evmneygbo_045616',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1089,0,'2014810__3__g_91_evmneygbo_045616',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1090,0,'2014810__3__g_91_evmneygbo_045616',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1091,0,'2014810__3__g_91_6o0q02j6i_127796',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1092,0,'2014810__3__g_91_6o0q02j6i_127796',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1093,0,'2014810__3__g_91_6o0q02j6i_127796',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1094,0,'2014810__3__g_91_6o0q02j6i_127796',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1095,0,'2014810__3__g_91_6o0q02j6i_127796',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1096,0,'2014810__3__g_91_6o0q02j6i_127796',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1097,0,'2014810__3__g_91_6o0q02j6i_127796',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1098,0,'2014810__3__g_91_6o0q02j6i_127796',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1099,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1100,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1101,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1102,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1103,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1104,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1105,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1106,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(7,'chat','\0',3,'Cameron','windows',1410429881,3,'text','/img/people/3.png','u',1107,0,'',''),(7,'chat','\0',3,'Cameron','wwwwindows',1410430206,3,'text','/img/people/3.png','u',1108,0,'',''),(7,'chat','\0',3,'Cameron','fwefewfew',1410430413,3,'text','/img/people/3.png','u',1109,0,'',''),(7,'chat','\0',3,'Cameron','fdsfads',1410430416,3,'text','/img/people/3.png','u',1110,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdsa',1410430419,3,'text','/img/people/3.png','u',1111,0,'',''),(7,'chat','\0',3,'Cameron','fwefewfw',1410430495,3,'text','/img/people/3.png','u',1112,0,'',''),(7,'chat','\0',3,'Cameron','wfefewfewffew',1410430556,3,'text','/img/people/3.png','u',1113,0,'',''),(7,'chat','\0',3,'Cameron','windows',1410430561,3,'text','/img/people/3.png','u',1114,0,'',''),(7,'chat','\0',3,'Cameron','windows',1410430568,3,'text','/img/people/3.png','u',1115,0,'',''),(7,'chat','\0',3,'Cameron','windowsfdsa',1410430581,3,'text','/img/people/3.png','u',1116,0,'',''),(7,'chat','\0',3,'Cameron','fdsafds',1410430592,3,'text','/img/people/3.png','u',1117,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1410430597,3,'text','/img/people/3.png','u',1118,0,'',''),(7,'chat','\0',3,'Cameron','dsafsafdsdf',1410431043,3,'text','/img/people/3.png','u',1119,0,'',''),(7,'chat','\0',3,'Cameron','dfsafdsa',1410431044,3,'text','/img/people/3.png','u',1120,0,'',''),(7,'chat','\0',3,'Cameron','dddddfdsa',1410431048,3,'text','/img/people/3.png','u',1121,0,'',''),(7,'chat','\0',3,'Cameron','dfadf',1410431236,3,'text','/img/people/3.png','u',1122,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdasfdasfadsf',1410431238,3,'text','/img/people/3.png','u',1123,0,'',''),(7,'chat','\0',3,'Cameron','wfew',1410432216,3,'text','/img/people/3.png','u',1124,0,'',''),(7,'chat','\0',3,'Cameron','haha.jpg',1410433031,3,'pic','/img/people/3.png','u',1125,0,'',''),(7,'chat','\0',3,'Cameron','w.png',1410433243,3,'pic','/img/people/3.png','u',1126,0,'',''),(7,'chat','\0',3,'Cameron','w.png',1410433327,3,'pic','/img/people/3.png','u',1127,0,'',''),(7,'chat','\0',3,'Cameron','w.png',1410433491,3,'pic','/img/people/3.png','u',1128,0,'',''),(7,'chat','\0',3,'Cameron','haha.jpg',1410433660,3,'pic','/img/people/3.png','u',1129,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410434349,7,'pic','/img/people/mzd.png','u',1130,0,'',''),(3,'chat','\0',7,'Mao Zedong','w.png',1410434386,7,'pic','/img/people/mzd.png','u',1131,0,'',''),(3,'chat','\0',7,'Mao Zedong','w.png',1410434559,7,'pic','/img/people/mzd.png','u',1132,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410434948,7,'pic','/img/people/mzd.png','u',1133,0,'',''),(3,'chat','\0',7,'Mao Zedong','w.png',1410434974,7,'pic','/img/people/mzd.png','u',1134,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410434983,7,'pic','/img/people/mzd.png','u',1135,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410435018,7,'pic','/img/people/mzd.png','u',1136,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410435097,7,'pic','/img/people/mzd.png','u',1137,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410435179,7,'pic','/img/people/mzd.png','u',1138,365,'',''),(7,'chat','\0',3,'Cameron','windows app',1410484376,3,'text','/img/people/3.png','u',1139,0,'',''),(7,'chat','\0',3,'Cameron','wwww',1410506023,3,'text','/img/people/3.png','u',1140,0,'',''),(3,'chat','',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1141,0,'',''),(4,'chat','\0',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1142,0,'',''),(5,'chat','\0',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1143,0,'',''),(7,'chat','\0',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1144,0,'',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762205,7,'video','/img/people/3.png','u',1145,0,'2014815__3__u_7_xe8jf9y9z_205864',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762218,7,'video','/img/people/3.png','u',1146,0,'2014815__3__u_7_3q96i0amq_218608',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762274,7,'video','/img/people/3.png','u',1147,0,'2014815__3__u_7_rj2u40xvk_274840',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762295,7,'video','/img/people/3.png','u',1148,0,'2014815__3__u_7_yc35t8k8y_295188',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762611,7,'video','/img/people/3.png','u',1149,0,'2014815__3__u_7_crs5odfd2_611247',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762671,7,'video','/img/people/3.png','u',1150,0,'2014815__3__u_7_izvctkqiu_671849',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762722,7,'video','/img/people/3.png','u',1151,0,'2014815__3__u_7_dc7ufnmp9_722485',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762747,7,'screen','/img/people/3.png','u',1152,0,'2014815__3__u_7_iteqjgfqq_747942',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762748,7,'screen','/img/people/3.png','u',1153,0,'2014815__3__u_7_iteqjgfqq_747942',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762798,7,'video','/img/people/3.png','u',1154,0,'2014815__3__u_7_10v0ymdb1_798849',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762844,7,'screen','/img/people/3.png','u',1155,0,'2014815__3__u_7_vihmuq6lq_844788',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762844,7,'screen','/img/people/3.png','u',1156,0,'2014815__3__u_7_vihmuq6lq_844788',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1157,0,'2014815__3__g_91_qo8gafa62_974852',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1158,0,'2014815__3__g_91_qo8gafa62_974852',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1159,0,'2014815__3__g_91_qo8gafa62_974852',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1160,0,'2014815__3__g_91_qo8gafa62_974852',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1161,0,'2014815__3__g_91_qo8gafa62_974852',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1162,0,'2014815__3__g_91_qo8gafa62_974852',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1163,0,'2014815__3__g_91_qo8gafa62_974852',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1164,0,'2014815__3__g_91_qo8gafa62_974852',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1165,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1166,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1167,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1168,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1169,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1170,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1171,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1172,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410763304,7,'video','/img/people/3.png','u',1173,0,'2014815__3__u_7_pqu9wrzfp_304648',''),(3,'chat','\0',7,'Mao Zedong','fewfwe',1410763348,7,'text','/img/people/mzd.png','u',1174,0,'',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763645,7,'screen','/img/people/3.png','u',1175,0,'2014815__3__u_7_btxggynr0_645235',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763645,7,'screen','/img/people/3.png','u',1176,0,'2014815__3__u_7_btxggynr0_645235',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410764188,7,'video','/img/people/3.png','u',1177,0,'2014815__3__u_7_i5xx2uoh6_188586',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410764260,7,'screen','/img/people/3.png','u',1178,0,'2014815__3__u_7_az6iltrvo_259051',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410764260,7,'screen','/img/people/3.png','u',1179,0,'2014815__3__u_7_az6iltrvo_259051',''),(7,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410766492,7,'video','/img/people/3.png','u',1180,0,'2014815__3__u_7_x9gwejl0q_492340',''),(7,'chat','',3,'Cameron','wdqdw',1410781282,3,'text','/img/people/3.png','u',1181,0,'',''),(7,'chat','',3,'Cameron','dsdsa',1410781293,3,'text','/img/people/3.png','u',1182,0,'',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1183,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1184,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(5,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1185,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(7,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1186,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(7,'chat','',3,'Cameron',':#em-revolving_hearts#: :#em-tired_face#: fds',1410917532,3,'text','/img/people/3.png','u',1187,0,'',''),(3,'chat','',3,'Cameron','windw',1411094180,95,'text','/img/people/3.png','g',1188,0,'',''),(7,'chat','',3,'Cameron','windw',1411094180,95,'text','/img/people/3.png','g',1189,0,'',''),(3,'chat','',3,'Cameron','whatsp',1411094184,95,'text','/img/people/3.png','g',1190,0,'',''),(7,'chat','',3,'Cameron','whatsp',1411094184,95,'text','/img/people/3.png','g',1191,0,'',''),(7,'chat','',3,'Cameron','wwfewfe',1411094198,3,'text','/img/people/3.png','u',1192,0,'',''),(3,'chat','\0',3,'Cameron','eee',1411094215,96,'text','/img/people/3.png','g',1193,0,'',''),(7,'chat','',3,'Cameron','eee',1411094215,96,'text','/img/people/3.png','g',1194,0,'',''),(3,'chat','\0',3,'Cameron','haha',1411094217,96,'text','/img/people/3.png','g',1195,0,'',''),(7,'chat','',3,'Cameron','haha',1411094217,96,'text','/img/people/3.png','g',1196,0,'',''),(3,'chat','',3,'Cameron','wfewfw',1411095513,96,'text','/img/people/3.png','g',1197,0,'',''),(7,'chat','',3,'Cameron','wfewfw',1411095513,96,'text','/img/people/3.png','g',1198,0,'',''),(7,'chat','',3,'Cameron','wwfew',1411095522,3,'text','/img/people/3.png','u',1199,0,'',''),(3,'chat','',3,'Cameron','dong fang',1411095529,96,'text','/img/people/3.png','g',1200,0,'',''),(7,'chat','',3,'Cameron','dong fang',1411095529,96,'text','/img/people/3.png','g',1201,0,'',''),(7,'chat','',3,'Cameron','ww',1411095561,3,'text','/img/people/3.png','u',1202,0,'',''),(3,'chat','',3,'Cameron','wfewfw',1411095585,97,'text','/img/people/3.png','g',1203,0,'',''),(7,'chat','',3,'Cameron','wfewfw',1411095585,97,'text','/img/people/3.png','g',1204,0,'',''),(3,'chat','',3,'Cameron','www',1411096654,99,'text','/img/people/3.png','g',1205,0,'',''),(7,'chat','',3,'Cameron','www',1411096654,99,'text','/img/people/3.png','g',1206,0,'',''),(3,'chat','',3,'Cameron','fdsafd',1411096841,100,'text','/img/people/3.png','g',1207,0,'',''),(7,'chat','',3,'Cameron','fdsafd',1411096841,100,'text','/img/people/3.png','g',1208,0,'',''),(3,'chat','',3,'Cameron','fdsafs',1411096891,101,'text','/img/people/3.png','g',1209,0,'',''),(7,'chat','',3,'Cameron','fdsafs',1411096891,101,'text','/img/people/3.png','g',1210,0,'',''),(3,'chat','',3,'Cameron','fdasf',1411097047,102,'text','/img/people/3.png','g',1211,0,'',''),(7,'chat','',3,'Cameron','fdasf',1411097047,102,'text','/img/people/3.png','g',1212,0,'',''),(7,'chat','',3,'Cameron','wwwfew',1411097168,3,'text','/img/people/3.png','u',1213,0,'',''),(3,'chat','\0',3,'Cameron','fdasf',1411097338,103,'text','/img/people/3.png','g',1214,0,'',''),(7,'chat','',3,'Cameron','fdasf',1411097338,103,'text','/img/people/3.png','g',1215,0,'',''),(7,'chat','',3,'Cameron','fdsafd',1411097509,3,'text','/img/people/3.png','u',1216,0,'',''),(7,'chat','',3,'Cameron','fdsadf',1411097616,3,'text','/img/people/3.png','u',1217,0,'',''),(7,'chat','',3,'Cameron','fdsa',1411097782,3,'text','/img/people/3.png','u',1218,0,'',''),(7,'chat','',3,'Cameron','fasfd',1411097842,3,'text','/img/people/3.png','u',1219,0,'',''),(7,'chat','',3,'Cameron','fdsa',1411097914,3,'text','/img/people/3.png','u',1220,0,'',''),(7,'chat','',3,'Cameron','dffda',1411097927,3,'text','/img/people/3.png','u',1221,0,'',''),(7,'chat','',3,'Cameron','fdsafd',1411132539,3,'text','/img/people/3.png','u',1222,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1411374530,4,'video','/img/people/3.png','u',1226,0,'2014822__3__u_4_pjtop0be0_530576',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1411375031,4,'video','/img/people/3.png','u',1227,0,'2014822__3__u_4_i3i43snnu_031519',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1411376683,4,'video','/img/people/3.png','u',1228,0,'2014822__3__u_4_mf2ln7gxt_683124',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1411376797,4,'screen','/img/people/3.png','u',1229,0,'2014822__3__u_4_f4go1o8i5_797704',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1411376798,4,'screen','/img/people/3.png','u',1230,0,'2014822__3__u_4_f4go1o8i5_797704',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1411376862,4,'screen','/img/people/3.png','u',1231,0,'2014822__3__u_4_45rzmdgvr_862178',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1411376862,4,'screen','/img/people/3.png','u',1232,0,'2014822__3__u_4_45rzmdgvr_862178',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1411377310,4,'video','/img/people/3.png','u',1233,0,'2014822__3__u_4_ls0diqixd_310038',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1411377434,4,'screen','/img/people/3.png','u',1234,0,'2014822__3__u_4_bm9oxg9r7_434814',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1411377434,4,'screen','/img/people/3.png','u',1235,0,'2014822__3__u_4_bm9oxg9r7_434814',''),(4,'chat','\0',3,'Cameron','windows',1411377538,3,'text','/img/people/3.png','u',1236,0,'',''),(4,'chat','\0',3,'Cameron','hello',1411377550,3,'text','/img/people/3.png','u',1237,0,'',''),(4,'chat','\0',3,'Cameron','fdsafdsa:#em-worried#: ',1411377560,3,'text','/img/people/3.png','u',1238,0,'',''),(4,'chat','\0',3,'Cameron','greger',1411377984,3,'text','/img/people/3.png','u',1239,0,'',''),(3,'chat','',4,'Andy Liu',':#em-triumph#: ',1411378001,4,'text','/img/people/sys/174.png','u',1240,0,'',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1411958212,5,'video','/img/people/sys/174.png','u',1319,0,'2014829__4__u_5_hf3fm9lpf_212132',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1411959357,5,'video','/img/people/sys/174.png','u',1320,0,'2014829__4__u_5_9grvpc3yj_358147',''),(3,'chat','',4,'Andy Liu','dsfs',1413283526,4,'text','/img/people/sys/174.png','u',1321,0,'',''),(3,'chat','',4,'Andy Liu','wfwf',1413283530,4,'text','/img/people/sys/174.png','u',1322,0,'',''),(3,'chat','',4,'Andy Liu','windows',1413283533,4,'text','/img/people/sys/174.png','u',1323,0,'',''),(3,'chat','',4,'Andy Liu','fwe',1413337494,4,'text','/img/people/4.png','u',1324,0,'',''),(3,'chat','',4,'Andy Liu','wfewfw',1413339036,4,'text','/img/people/4.png','u',1325,0,'',''),(3,'chat','',4,'Andy Liu','dsfds',1413343678,4,'text','/img/people/4.png','u',1326,0,'',''),(3,'chat','',4,'Andy Liu','fdsaf',1413343678,4,'text','/img/people/4.png','u',1327,0,'',''),(3,'chat','',4,'Andy Liu','fdsaf',1413343679,4,'text','/img/people/4.png','u',1328,0,'',''),(3,'chat','',4,'Andy Liu','fdsa',1413343679,4,'text','/img/people/4.png','u',1329,0,'',''),(3,'chat','',4,'Andy Liu','fdsa',1413343680,4,'text','/img/people/4.png','u',1330,0,'',''),(3,'chat','',4,'Andy Liu','ww',1413360812,4,'text','/img/people/4.png','u',1331,0,'',''),(3,'chat','',4,'Andy Liu','few',1413360813,4,'text','/img/people/4.png','u',1332,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsfds',1413361812,4,'text','/img/people/4.png','u',1333,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413361814,4,'text','/img/people/4.png','u',1334,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413361814,4,'text','/img/people/4.png','u',1335,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413361815,4,'text','/img/people/4.png','u',1336,0,'',''),(5,'chat','\0',4,'Andy Liu','sdaf',1413361815,4,'text','/img/people/4.png','u',1337,0,'',''),(5,'chat','\0',4,'Andy Liu','dsa',1413361815,4,'text','/img/people/4.png','u',1338,0,'',''),(5,'chat','\0',4,'Andy Liu','f',1413361816,4,'text','/img/people/4.png','u',1339,0,'',''),(5,'chat','\0',4,'Andy Liu','dsaf',1413361816,4,'text','/img/people/4.png','u',1340,0,'',''),(5,'chat','\0',4,'Andy Liu','ds',1413361816,4,'text','/img/people/4.png','u',1341,0,'',''),(5,'chat','\0',4,'Andy Liu','af',1413361816,4,'text','/img/people/4.png','u',1342,0,'',''),(5,'chat','\0',4,'Andy Liu','dsa',1413361816,4,'text','/img/people/4.png','u',1343,0,'',''),(5,'chat','\0',4,'Andy Liu','f',1413361816,4,'text','/img/people/4.png','u',1344,0,'',''),(5,'chat','\0',4,'Andy Liu','dsa',1413361817,4,'text','/img/people/4.png','u',1345,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413361817,4,'text','/img/people/4.png','u',1346,0,'',''),(5,'chat','\0',4,'Andy Liu','dsa',1413361817,4,'text','/img/people/4.png','u',1347,0,'',''),(5,'chat','\0',4,'Andy Liu','fd',1413361818,4,'text','/img/people/4.png','u',1348,0,'',''),(5,'chat','\0',4,'Andy Liu','saf',1413361818,4,'text','/img/people/4.png','u',1349,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413361818,4,'text','/img/people/4.png','u',1350,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsafdas',1413361856,4,'text','/img/people/4.png','u',1351,0,'',''),(5,'chat','\0',4,'Andy Liu','fwe',1413361891,4,'text','/img/people/4.png','u',1352,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413361894,4,'text','/img/people/4.png','u',1353,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413361894,4,'text','/img/people/4.png','u',1354,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413361895,4,'text','/img/people/4.png','u',1355,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsfd',1413361983,4,'text','/img/people/4.png','u',1356,0,'',''),(5,'chat','\0',4,'Andy Liu','sfsafd',1413361985,4,'text','/img/people/4.png','u',1357,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsfdsfds',1413362010,4,'text','/img/people/4.png','u',1358,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413362011,4,'text','/img/people/4.png','u',1359,0,'',''),(5,'chat','\0',4,'Andy Liu','cxczc',1413362876,4,'text','/img/people/4.png','u',1360,0,'',''),(5,'chat','\0',4,'Andy Liu','windows',1413363699,4,'text','/img/people/4.png','u',1361,0,'',''),(5,'chat','\0',4,'Andy Liu','fewfw',1413363723,4,'text','/img/people/4.png','u',1362,0,'',''),(5,'chat','\0',4,'Andy Liu','22',1413363744,4,'text','/img/people/4.png','u',1363,0,'',''),(5,'chat','\0',4,'Andy Liu','222222',1413363748,4,'text','/img/people/4.png','u',1364,0,'',''),(5,'chat','\0',4,'Andy Liu','wew',1413363751,4,'text','/img/people/4.png','u',1365,0,'',''),(5,'chat','\0',4,'Andy Liu','wewdsaf',1413363760,4,'text','/img/people/4.png','u',1366,0,'',''),(5,'chat','\0',4,'Andy Liu','eee',1413363764,4,'text','/img/people/4.png','u',1367,0,'',''),(5,'chat','\0',4,'Andy Liu','ee',1413363767,4,'text','/img/people/4.png','u',1368,0,'',''),(5,'chat','\0',4,'Andy Liu','ee',1413363769,4,'text','/img/people/4.png','u',1369,0,'',''),(5,'chat','\0',4,'Andy Liu','eee',1413363892,4,'text','/img/people/4.png','u',1370,0,'',''),(5,'chat','\0',4,'Andy Liu','dd',1413363897,4,'text','/img/people/4.png','u',1371,0,'',''),(5,'chat','\0',4,'Andy Liu','dd',1413363901,4,'text','/img/people/4.png','u',1372,0,'',''),(5,'chat','\0',4,'Andy Liu','qq',1413363915,4,'text','/img/people/4.png','u',1373,0,'',''),(5,'chat','\0',4,'Andy Liu','qq',1413363916,4,'text','/img/people/4.png','u',1374,0,'',''),(5,'chat','\0',4,'Andy Liu','ddd',1413363926,4,'text','/img/people/4.png','u',1375,0,'',''),(5,'chat','\0',4,'Andy Liu','eee',1413363932,4,'text','/img/people/4.png','u',1376,0,'',''),(5,'chat','\0',4,'Andy Liu','tt',1413364033,4,'text','/img/people/4.png','u',1377,0,'',''),(5,'chat','\0',4,'Andy Liu','fgs',1413364036,4,'text','/img/people/4.png','u',1378,0,'',''),(5,'chat','\0',4,'Andy Liu','gfds',1413364036,4,'text','/img/people/4.png','u',1379,0,'',''),(5,'chat','\0',4,'Andy Liu','gff',1413364038,4,'text','/img/people/4.png','u',1380,0,'',''),(5,'chat','\0',4,'Andy Liu','fgds',1413364038,4,'text','/img/people/4.png','u',1381,0,'',''),(5,'chat','\0',4,'Andy Liu','wind',1413364041,4,'text','/img/people/4.png','u',1382,0,'',''),(5,'chat','\0',4,'Andy Liu','huo',1413364044,4,'text','/img/people/4.png','u',1383,0,'',''),(5,'chat','\0',4,'Andy Liu','huo',1413364059,4,'text','/img/people/4.png','u',1384,0,'',''),(5,'chat','\0',4,'Andy Liu','huo',1413364069,4,'text','/img/people/4.png','u',1385,0,'',''),(5,'chat','\0',4,'Andy Liu','huo',1413364072,4,'text','/img/people/4.png','u',1386,0,'',''),(5,'chat','\0',4,'Andy Liu','huo',1413364075,4,'text','/img/people/4.png','u',1387,0,'',''),(5,'chat','\0',4,'Andy Liu','huo',1413364078,4,'text','/img/people/4.png','u',1388,0,'',''),(5,'chat','\0',4,'Andy Liu','z1',1413364113,4,'text','/img/people/4.png','u',1389,0,'',''),(5,'chat','\0',4,'Andy Liu','z2',1413364114,4,'text','/img/people/4.png','u',1390,0,'',''),(5,'chat','\0',4,'Andy Liu','z3',1413364115,4,'text','/img/people/4.png','u',1391,0,'',''),(5,'chat','\0',4,'Andy Liu','z4',1413364116,4,'text','/img/people/4.png','u',1392,0,'',''),(5,'chat','\0',4,'Andy Liu','z5',1413364118,4,'text','/img/people/4.png','u',1393,0,'',''),(5,'chat','\0',4,'Andy Liu','z6',1413364123,4,'text','/img/people/4.png','u',1394,0,'',''),(5,'chat','\0',4,'Andy Liu','z7',1413364125,4,'text','/img/people/4.png','u',1395,0,'',''),(5,'chat','\0',4,'Andy Liu','z8',1413364126,4,'text','/img/people/4.png','u',1396,0,'',''),(5,'chat','\0',4,'Andy Liu','z9',1413364127,4,'text','/img/people/4.png','u',1397,0,'',''),(5,'chat','\0',4,'Andy Liu','z1',1413364143,4,'text','/img/people/4.png','u',1398,0,'',''),(5,'chat','\0',4,'Andy Liu','z2',1413364144,4,'text','/img/people/4.png','u',1399,0,'',''),(5,'chat','\0',4,'Andy Liu','das',1413364226,4,'text','/img/people/4.png','u',1400,0,'',''),(5,'chat','\0',4,'Andy Liu','z9',1413364229,4,'text','/img/people/4.png','u',1401,0,'',''),(3,'chat','',4,'Andy Liu','ew',1413364311,4,'text','/img/people/4.png','u',1402,0,'',''),(3,'chat','',4,'Andy Liu','ew',1413364312,4,'text','/img/people/4.png','u',1403,0,'',''),(3,'chat','',4,'Andy Liu','eww',1413364313,4,'text','/img/people/4.png','u',1404,0,'',''),(3,'chat','',4,'Andy Liu','qq',1413364317,4,'text','/img/people/4.png','u',1405,0,'',''),(3,'chat','',4,'Andy Liu','pp',1413364612,4,'text','/img/people/4.png','u',1406,0,'',''),(3,'chat','',4,'Andy Liu','d',1413364636,4,'text','/img/people/4.png','u',1407,0,'',''),(3,'chat','',4,'Andy Liu','tt',1413364655,4,'text','/img/people/4.png','u',1408,0,'',''),(3,'chat','',4,'Andy Liu','qq',1413364664,4,'text','/img/people/4.png','u',1409,0,'',''),(5,'chat','\0',4,'Andy Liu','ff\\\\',1413364685,4,'text','/img/people/4.png','u',1410,0,'',''),(5,'chat','\0',4,'Andy Liu','tt',1413364772,4,'text','/img/people/4.png','u',1411,0,'',''),(5,'chat','\0',4,'Andy Liu','qq',1413364775,4,'text','/img/people/4.png','u',1412,0,'',''),(5,'chat','\0',4,'Andy Liu','mailedi',1413364783,4,'text','/img/people/4.png','u',1413,0,'',''),(5,'chat','\0',4,'Andy Liu','domg',1413364798,4,'text','/img/people/4.png','u',1414,0,'',''),(5,'chat','\0',4,'Andy Liu','tt',1413364810,4,'text','/img/people/4.png','u',1415,0,'',''),(5,'chat','\0',4,'Andy Liu','qq',1413364965,4,'text','/img/people/4.png','u',1416,0,'',''),(5,'chat','\0',4,'Andy Liu','duiyla',1413364981,4,'text','/img/people/4.png','u',1417,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413365086,4,'text','/img/people/4.png','u',1418,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413365086,4,'text','/img/people/4.png','u',1419,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413365894,4,'text','/img/people/4.png','u',1420,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413365895,4,'text','/img/people/4.png','u',1421,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413365895,4,'text','/img/people/4.png','u',1422,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1413365927,4,'text','/img/people/4.png','u',1423,0,'',''),(5,'chat','\0',4,'Andy Liu','tt',1413366448,4,'text','/img/people/4.png','u',1424,0,'',''),(3,'chat','',4,'Andy Liu','wwefw',1413792049,4,'text','/img/people/4.png','u',1425,0,'',''),(5,'chat','\0',4,'Andy Liu','wfewfjw',1413792055,4,'text','/img/people/4.png','u',1426,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1413794189,4,'text','/img/people/4.png','u',1427,0,'',''),(3,'chat','',4,'Andy Liu','dfsfdsafs',1413797574,4,'text','/img/people/4.png','u',1428,0,'',''),(3,'chat','',4,'Andy Liu','sdfdfsa',1413797803,4,'text','/img/people/4.png','u',1429,0,'',''),(3,'chat','',4,'Andy Liu','sdaf',1413963829,4,'text','/img/people/4.png','u',1430,0,'',''),(5,'chat','\0',4,'Andy Liu','www',1413964357,4,'text','/img/people/4.png','u',1431,0,'',''),(4,'chat','\0',5,'Roosevelt','wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww',1413964381,5,'text','/img/people/lsf.jpg','u',1432,0,'',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964392,5,'video','/img/people/4.png','u',1433,0,'2014922__4__u_5_y2rp8gl4f_392670',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964431,5,'video','/img/people/4.png','u',1434,0,'2014922__4__u_5_xq3qhevmq_431876',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964478,5,'video','/img/people/4.png','u',1435,0,'2014922__4__u_5_jnd9f88sa_478446',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964488,5,'video','/img/people/4.png','u',1436,0,'2014922__4__u_5_0b8fe5xnv_488871',''),(4,'chat','\0',5,'Roosevelt','Roosevelt is inviting you for video chat',1413964504,4,'video','/img/people/lsf.jpg','u',1437,0,'2014922__5__u_4_whw0msac9_504007',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964633,5,'video','/img/people/4.png','u',1438,0,'2014922__4__u_5_1m43lt045_633219',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964715,5,'video','/img/people/4.png','u',1439,0,'2014922__4__u_5_8zexz07ga_715126',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964823,5,'video','/img/people/4.png','u',1440,0,'2014922__4__u_5_yxg3o6mn4_823011',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413964869,5,'video','/img/people/4.png','u',1441,0,'2014922__4__u_5_gan9097y6_869097',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413965445,5,'video','/img/people/4.png','u',1442,0,'2014922__4__u_5_0slcr4qnf_444369',''),(4,'chat','\0',5,'Roosevelt','和乐乐',1413965522,5,'text','/img/people/lsf.jpg','u',1443,0,'',''),(5,'chat','\0',4,'Andy Liu','hello',1413965540,4,'text','/img/people/4.png','u',1444,0,'',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413966319,5,'video','/img/people/4.png','u',1445,0,'2014922__4__u_5_odac9tmxb_318034',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413967944,5,'video','/img/people/4.png','u',1446,0,'2014922__4__u_5_v4t56377m_875114',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413967978,5,'video','/img/people/4.png','u',1447,0,'2014922__4__u_5_j8r88cwgx_908863',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413968032,5,'video','/img/people/4.png','u',1448,0,'2014922__4__u_5_2emmux7ae_962793',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1413968077,5,'video','/img/people/4.png','u',1449,0,'2014922__4__u_5_eu0ac8ghb_007678',''),(3,'chat','',4,'Andy Liu','dfsa',1414132429,4,'text','/img/people/4.png','u',1450,0,'',''),(3,'chat','',4,'Andy Liu','dfsa ',1414132435,4,'text','/img/people/4.png','u',1451,0,'',''),(3,'chat','',4,'Andy Liu','dfsa',1414132437,4,'text','/img/people/4.png','u',1452,0,'',''),(5,'chat','\0',4,'Andy Liu','www',1414132603,4,'text','/img/people/4.png','u',1453,0,'',''),(3,'chat','',4,'Andy Liu','fdsa',1414136818,4,'text','/img/people/4.png','u',1454,0,'',''),(5,'chat','\0',4,'Andy Liu','cdsacdas',1414136827,4,'text','/img/people/4.png','u',1455,0,'',''),(5,'chat','\0',4,'Andy Liu','sa',1414136842,4,'text','/img/people/4.png','u',1456,0,'',''),(3,'chat','',4,'Andy Liu','fdsaf',1414136912,4,'text','/img/people/4.png','u',1457,0,'',''),(3,'chat','',4,'Andy Liu','vs',1414136923,4,'text','/img/people/4.png','u',1458,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsaf',1414136949,4,'text','/img/people/4.png','u',1459,0,'',''),(5,'chat','\0',4,'Andy Liu','fdasf',1414136957,4,'text','/img/people/4.png','u',1460,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsafd',1414136964,4,'text','/img/people/4.png','u',1461,0,'',''),(3,'chat','',4,'Andy Liu','fdsa',1414136986,4,'text','/img/people/4.png','u',1462,0,'',''),(3,'chat','',4,'Andy Liu','fdsaf',1414137064,4,'text','/img/people/4.png','u',1463,0,'',''),(164,'chat','',189,'ryb_d44b175aaec31b8a','fdsaf',1414375643,188,'text','/img/unknown_user.png','u',1464,0,'',''),(164,'chat','',189,'ryb_d44b175aaec31b8a','fdsafd',1414375644,188,'text','/img/unknown_user.png','u',1465,0,'',''),(164,'chat','',193,'ryo_25328240b7a8b45b','fdsaf',1414380383,192,'text','/img/unknown_user.png','u',1466,0,'',''),(164,'chat','',193,'ryo_25328240b7a8b45b','widows',1414380384,192,'text','/img/unknown_user.png','u',1467,0,'',''),(163,'chat','',199,'ryv_36dee861ffb4c9c0','fdsaf',1414390813,198,'text','/img/unknown_user.png','u',1468,0,'',''),(4,'chat','\0',6,'Merkel','dfsa',1414995998,6,'text','/img/people/mker.png','u',1472,0,'',''),(4,'chat','\0',6,'Merkel','fdsa',1414996004,6,'text','/img/people/mker.png','u',1473,0,'',''),(4,'chat','\0',6,'Merkel','fdsafds',1414996142,6,'text','/img/people/mker.png','u',1474,0,'',''),(7,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1414996924,7,'video','/img/people/4.png','u',1476,0,'2014103__4__u_7_72xqarzkx_924383',''),(7,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1414996954,7,'video','/img/people/4.png','u',1477,0,'2014103__4__u_7_equnntgrz_954063',''),(4,'chat','\0',7,'Mao Zedong','fdsa\\\\]',1414999090,7,'text','/img/people/mzd.png','u',1478,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1414999104,7,'text','/img/people/mzd.png','u',1479,0,'',''),(4,'chat','\0',7,'Mao Zedong','www',1414999137,7,'text','/img/people/mzd.png','u',1480,0,'',''),(3,'chat','',4,'Andy Liu','fdsa',1414999172,4,'text','/img/people/4.png','u',1481,0,'',''),(7,'chat','\0',4,'Andy Liu','ddsds',1414999202,4,'text','/img/people/4.png','u',1482,0,'',''),(4,'chat','\0',7,'Mao Zedong','dfsafds',1414999224,7,'text','/img/people/mzd.png','u',1483,0,'',''),(7,'chat','\0',4,'Andy Liu','dddd',1414999231,4,'text','/img/people/4.png','u',1484,0,'',''),(7,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1414999235,7,'video','/img/people/4.png','u',1485,0,'2014103__4__u_7_prv0rkg9s_235572',''),(7,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1414999256,7,'video','/img/people/4.png','u',1486,0,'2014103__4__u_7_jul9ut5sa_256097',''),(7,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1414999293,7,'video','/img/people/4.png','u',1487,0,'2014103__4__u_7_vgbyarzb4_293233',''),(7,'chat','\0',4,'Andy Liu','dwwfew',1414999335,4,'text','/img/people/4.png','u',1488,0,'',''),(7,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1414999356,7,'video','/img/people/4.png','u',1489,0,'2014103__4__u_7_fsz5fdq1l_356678',''),(7,'friend','',4,'Andy Liu','Andy Liu ',1415009066,4,'request-reply','/img/people/4.png','',1518,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu ',1415010808,4,'request-reply','/img/people/4.png','',1524,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu ',1415010888,4,'request-reply','/img/people/4.png','',1526,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu ',1415011194,4,'request-reply','/img/people/4.png','',1528,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu ',1415011710,4,'request-reply','/img/people/4.png','',1530,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu ',1415011781,4,'request-reply','/img/people/4.png','',1532,0,'',''),(7,'chat','\0',4,'Andy Liu','',1415011793,7,'video','/img/people/4.png','u',1533,0,'2014103__4__u_7_meadfacnr_793201',''),(4,'chat','\0',7,'Mao Zedong','fdsdsfa',1415012747,7,'text','/img/people/mzd.png','u',1534,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012749,7,'text','/img/people/mzd.png','u',1535,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012763,7,'text','/img/people/mzd.png','u',1536,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012774,7,'text','/img/people/mzd.png','u',1537,0,'',''),(4,'chat','\0',7,'Mao Zedong','sd',1415012786,7,'text','/img/people/mzd.png','u',1538,0,'',''),(7,'chat','\0',4,'Andy Liu','dsf',1415012795,4,'text','/img/people/4.png','u',1539,0,'',''),(7,'chat','\0',4,'Andy Liu','www',1415012809,4,'text','/img/people/4.png','u',1540,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012815,7,'text','/img/people/mzd.png','u',1541,0,'',''),(4,'chat','\0',7,'Mao Zedong','ww',1415012820,7,'text','/img/people/mzd.png','u',1542,0,'',''),(4,'chat','\0',7,'Mao Zedong','dfsa',1415012827,7,'text','/img/people/mzd.png','u',1543,0,'',''),(4,'chat','\0',7,'Mao Zedong','fds',1415012835,7,'text','/img/people/mzd.png','u',1544,0,'',''),(4,'chat','\0',7,'Mao Zedong','dfs',1415012856,7,'text','/img/people/mzd.png','u',1545,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012895,7,'text','/img/people/mzd.png','u',1546,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012907,7,'text','/img/people/mzd.png','u',1547,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415012911,7,'text','/img/people/mzd.png','u',1548,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415013086,7,'text','/img/people/mzd.png','u',1549,0,'',''),(4,'chat','\0',7,'Mao Zedong','fdas',1415013125,7,'text','/img/people/mzd.png','u',1550,0,'',''),(4,'chat','\0',7,'Mao Zedong','Mao Zedong is inviting you for video chat',1415013444,4,'video','/img/people/mzd.png','u',1551,0,'2014103__7__u_4_rya7nzu9f_444140',''),(4,'chat','\0',7,'Mao Zedong','Mao Zedong is inviting you for video chat',1415013469,4,'video','/img/people/mzd.png','u',1552,0,'2014103__7__u_4_54eargn29_469637',''),(4,'chat','\0',7,'Mao Zedong','Mao Zedong is inviting you for video chat',1415013757,4,'video','/img/people/mzd.png','u',1553,0,'2014103__7__u_4_npxjxnsuj_757460',''),(4,'chat','\0',7,'Mao Zedong','fdsa',1415016159,7,'text','/img/people/mzd.png','u',1554,0,'',''),(6,'chat','\0',4,'Andy Liu','dfsafdasfdsafsa',1415081045,4,'text','/img/people/4.png','u',1561,0,'',''),(6,'chat','\0',4,'Andy Liu','windows',1415081048,4,'text','/img/people/4.png','u',1562,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415082485,4,'request-reply','/img/people/4.png','',1564,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415087294,4,'request-reply','/img/people/4.png','',1566,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415087447,4,'request-reply','/img/people/4.png','',1568,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415087580,4,'request-reply','/img/people/4.png','',1570,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415087694,4,'request-reply','/img/people/4.png','',1575,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415087835,4,'request-reply','/img/people/4.png','',1578,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415088070,4,'request-reply','/img/people/4.png','',1580,0,'',''),(7,'friend','',4,'Andy Liu','Andy Liu accept your friend request',1415088102,4,'request-reply','/img/people/4.png','',1582,0,'',''),(7,'chat','',4,'Andy Liu','Andy Liu is inviting you for video chat',1415088150,7,'video','/img/people/4.png','u',1583,0,'2014104__4__u_7_csa3ubfby_150212',''),(7,'chat','',4,'Andy Liu','fdsa',1415088197,4,'text','/img/people/4.png','u',1584,0,'',''),(5,'friend','\0',4,'Andy Liu','Andy Liu accept your friend request',1415173406,4,'request-reply','/img/people/4.png','',1589,0,'',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1415173410,5,'video','/img/people/4.png','u',1590,0,'2014105__4__u_5_xz0q7xh63_410257',''),(163,'chat','',4,'Andy Liu','Andy Liu is inviting you for video chat',1415173585,163,'video','/img/people/4.png','u',1591,0,'2014105__4__u_163_y54m68um9_585747',''),(163,'chat','',4,'Andy Liu','Andy Liu is inviting you for video chat',1415173622,163,'video','/img/people/4.png','u',1592,0,'2014105__4__u_163_v20d9ttzb_622561',''),(163,'chat','',4,'Andy Liu','Andy Liu is inviting you for video chat',1415173678,163,'video','/img/people/4.png','u',1593,0,'2014105__4__u_163_nr7r69vso_678191',''),(163,'chat','',4,'Andy Liu','qinsoqa',1415173714,4,'text','/img/people/4.png','u',1594,0,'',''),(163,'chat','',4,'Andy Liu','sdsad',1415173744,4,'text','/img/people/4.png','u',1595,0,'',''),(5,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1415175998,5,'video','/img/people/4.png','u',1596,0,'2014105__4__u_5_43z7urd56_998487',''),(5,'chat','\0',4,'Andy Liu','asaa',1415176063,4,'text','/img/people/4.png','u',1597,0,'',''),(163,'chat','',245,'ryt_da83639f56ba004a','ryt_da83639f56ba004a is inviting you for video chat',1415176244,163,'video','/img/unknown_user.png','u',1598,0,'2014105__245__u_163_8z4znmuxb_244432',''),(163,'share','',245,'ryt_da83639f56ba004a','ryt_da83639f56ba004a is inviting you for desktop sharing',1415176417,163,'screen','/img/unknown_user.png','u',1599,0,'2014105__245__u_163_2o9o3uyg7_417504',''),(163,'share','',245,'ryt_da83639f56ba004a','ryt_da83639f56ba004a is inviting you for desktop sharing',1415176418,163,'screen','/img/unknown_user.png','u',1600,0,'2014105__245__u_163_2o9o3uyg7_417504',''),(5,'chat','\0',4,'Andy Liu','',1415182894,5,'video','/img/people/4.png','u',1601,0,'2014105__4__u_5_elyv9pi96_894917',''),(5,'chat','\0',4,'Andy Liu','',1415182923,5,'video','/img/people/4.png','u',1602,0,'2014105__4__u_5_918jrsowj_923636',''),(5,'chat','\0',4,'Andy Liu','',1415182940,5,'video','/img/people/4.png','u',1603,0,'2014105__4__u_5_kdn57e7x5_940427',''),(7,'chat','',4,'Andy Liu','',1415186235,7,'video','/img/people/4.png','u',1604,0,'2014105__4__u_7_zcylkwpwk_235700',''),(5,'chat','\0',4,'Andy Liu','',1415186422,5,'video','/img/people/4.png','u',1605,0,'2014105__4__u_5_smne649ek_422679',''),(5,'chat','\0',4,'Andy Liu','',1415186435,5,'video','/img/people/4.png','u',1606,0,'2014105__4__u_5_okyemzu1r_435313',''),(5,'chat','\0',4,'Andy Liu','',1415186479,5,'video','/img/people/4.png','u',1607,0,'2014105__4__u_5_ddw8b718q_479340',''),(5,'chat','\0',4,'Andy Liu','',1415186490,5,'video','/img/people/4.png','u',1608,0,'2014105__4__u_5_jf5jxq9kq_490331',''),(5,'chat','\0',4,'Andy Liu','',1415186566,5,'video','/img/people/4.png','u',1609,0,'2014105__4__u_5_yemy559bs_566131',''),(5,'chat','\0',4,'Andy Liu','',1415186578,5,'video','/img/people/4.png','u',1610,0,'2014105__4__u_5_79l7j6jo3_578784',''),(5,'chat','\0',4,'Andy Liu','',1415186817,5,'video','/img/people/4.png','u',1611,0,'2014105__4__u_5_s7ccj6tnz_817346',''),(5,'chat','\0',4,'Andy Liu','',1415186833,5,'video','/img/people/4.png','u',1612,0,'2014105__4__u_5_wswqe94rg_833647',''),(5,'chat','\0',4,'Andy Liu','',1415186849,5,'video','/img/people/4.png','u',1613,0,'2014105__4__u_5_gouhznefs_849843',''),(5,'share','\0',4,'Andy Liu','',1415238965,5,'screen','/img/people/4.png','u',1614,0,'2014106__4__u_5_irmydfbj2_965580',''),(5,'share','',4,'Andy Liu','',1415239012,5,'screen','/img/people/4.png','u',1615,0,'2014106__4__u_5_c9tc2tudk_012930',''),(5,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1415239013,5,'screen','/img/people/4.png','u',1616,0,'2014106__4__u_5_c9tc2tudk_012930',''),(5,'chat','\0',4,'Andy Liu','',1415239021,5,'video','/img/people/4.png','u',1617,0,'2014106__4__u_5_rhjaojimd_021476',''),(5,'share','',4,'Andy Liu','',1415239030,5,'screen','/img/people/4.png','u',1618,0,'2014106__4__u_5_7dzm6qu9v_030440',''),(5,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1415239030,5,'screen','/img/people/4.png','u',1619,0,'2014106__4__u_5_7dzm6qu9v_030440',''),(4,'chat','\0',5,'Roosevelt','dfs',1415240730,5,'text','/img/people/lsf.jpg','u',1620,0,'',''),(5,'friend','\0',4,'Andy Liu','Andy Liu ',1415244126,4,'request-reply','/img/people/4.png','',1622,0,'',''),(4,'friend','\0',5,'Roosevelt','Roosevelt ',1415244446,5,'request-reply','/img/people/lsf.jpg','',1627,0,'',''),(4,'friend','\0',5,'Roosevelt','Roosevelt ',1415245209,5,'request-reply','/img/people/lsf.jpg','',1635,0,'',''),(4,'friend','\0',5,'Roosevelt','Roosevelt ',1415245671,5,'request-reply','/img/people/lsf.jpg','',1642,0,'',''),(4,'friend','\0',5,'Roosevelt','Roosevelt ',1415246326,5,'request-reply','/img/people/lsf.jpg','',1644,0,'',''),(5,'friend','\0',4,'Andy Liu','Andy Liu ',1415247104,4,'request-reply','/img/people/4.png','',1646,0,'',''),(5,'friend','\0',4,'Andy Liu','Andy Liu ',1415247198,4,'request-reply','/img/people/4.png','',1648,0,'',''),(5,'chat','\0',4,'Andy Liu','',1415271890,5,'video','/img/people/4.png','u',1649,0,'2014106__4__u_5_3pzbua8if_890265',''),(5,'chat','\0',4,'Andy Liu','',1415271906,5,'video','/img/people/4.png','u',1650,0,'2014106__4__u_5_twca7ij6j_906119',''),(5,'chat','\0',4,'Andy Liu','',1415271926,5,'video','/img/people/4.png','u',1651,0,'2014106__4__u_5_w2lr2yl1w_926296',''),(5,'chat','\0',4,'Andy Liu','',1415272067,5,'video','/img/people/4.png','u',1652,0,'2014106__4__u_5_dykoqh4j7_067115',''),(6,'chat','\0',4,'Andy Liu','',1415274717,6,'video','/img/people/4.png','u',1653,0,'2014106__4__u_6_ftz17yvam_717408',''),(4,'chat','\0',4,'Andy Liu','',1415274764,8,'video','/img/people/4.png','g',1654,0,'2014106__4__g_8_m4zmfkoa1_764034',''),(5,'chat','\0',4,'Andy Liu','',1415274764,8,'video','/img/people/4.png','g',1655,0,'2014106__4__g_8_m4zmfkoa1_764034',''),(6,'chat','\0',4,'Andy Liu','',1415274764,8,'video','/img/people/4.png','g',1656,0,'2014106__4__g_8_m4zmfkoa1_764034',''),(4,'chat','\0',4,'Andy Liu','',1415274901,8,'video','/img/people/4.png','g',1657,0,'2014106__4__g_8_k1lcyjw3j_901030',''),(5,'chat','\0',4,'Andy Liu','',1415274901,8,'video','/img/people/4.png','g',1658,0,'2014106__4__g_8_k1lcyjw3j_901030',''),(6,'chat','\0',4,'Andy Liu','',1415274901,8,'video','/img/people/4.png','g',1659,0,'2014106__4__g_8_k1lcyjw3j_901030',''),(4,'chat','\0',4,'Andy Liu','',1415275022,8,'video','/img/people/4.png','g',1660,0,'2014106__4__g_8_lfhjg6bil_022119',''),(5,'chat','\0',4,'Andy Liu','',1415275022,8,'video','/img/people/4.png','g',1661,0,'2014106__4__g_8_lfhjg6bil_022119',''),(6,'chat','\0',4,'Andy Liu','',1415275022,8,'video','/img/people/4.png','g',1662,0,'2014106__4__g_8_lfhjg6bil_022119',''),(4,'chat','\0',4,'Andy Liu','',1415275105,8,'video','/img/people/4.png','g',1663,0,'2014106__4__g_8_7467m3t9n_105196',''),(5,'chat','\0',4,'Andy Liu','',1415275105,8,'video','/img/people/4.png','g',1664,0,'2014106__4__g_8_7467m3t9n_105196',''),(6,'chat','\0',4,'Andy Liu','',1415275105,8,'video','/img/people/4.png','g',1665,0,'2014106__4__g_8_7467m3t9n_105196',''),(4,'chat','\0',4,'Andy Liu','',1415275319,8,'video','/img/people/4.png','g',1666,0,'2014106__4__g_8_78bnh3whs_319703',''),(5,'chat','\0',4,'Andy Liu','',1415275319,8,'video','/img/people/4.png','g',1667,0,'2014106__4__g_8_78bnh3whs_319703',''),(6,'chat','\0',4,'Andy Liu','',1415275319,8,'video','/img/people/4.png','g',1668,0,'2014106__4__g_8_78bnh3whs_319703',''),(4,'chat','\0',4,'Andy Liu','',1415275626,8,'video','/img/people/4.png','g',1669,0,'2014106__4__g_8_4io3tp282_626767',''),(5,'chat','\0',4,'Andy Liu','',1415275626,8,'video','/img/people/4.png','g',1670,0,'2014106__4__g_8_4io3tp282_626767',''),(6,'chat','\0',4,'Andy Liu','',1415275626,8,'video','/img/people/4.png','g',1671,0,'2014106__4__g_8_4io3tp282_626767',''),(4,'chat','\0',4,'Andy Liu','',1415275720,8,'video','/img/people/4.png','g',1672,0,'2014106__4__g_8_4dmgt2ip4_720294',''),(5,'chat','\0',4,'Andy Liu','',1415275720,8,'video','/img/people/4.png','g',1673,0,'2014106__4__g_8_4dmgt2ip4_720294',''),(6,'chat','\0',4,'Andy Liu','',1415275720,8,'video','/img/people/4.png','g',1674,0,'2014106__4__g_8_4dmgt2ip4_720294',''),(4,'chat','\0',4,'Andy Liu','',1415275953,8,'video','/img/people/4.png','g',1675,0,'2014106__4__g_8_jj82epzad_952951',''),(5,'chat','\0',4,'Andy Liu','',1415275953,8,'video','/img/people/4.png','g',1676,0,'2014106__4__g_8_jj82epzad_952951',''),(6,'chat','\0',4,'Andy Liu','',1415275953,8,'video','/img/people/4.png','g',1677,0,'2014106__4__g_8_jj82epzad_952951',''),(4,'chat','\0',4,'Andy Liu','',1415276145,8,'video','/img/people/4.png','g',1678,0,'2014106__4__g_8_5osbtjfzy_145442',''),(5,'chat','\0',4,'Andy Liu','',1415276145,8,'video','/img/people/4.png','g',1679,0,'2014106__4__g_8_5osbtjfzy_145442',''),(6,'chat','\0',4,'Andy Liu','',1415276145,8,'video','/img/people/4.png','g',1680,0,'2014106__4__g_8_5osbtjfzy_145442',''),(4,'chat','\0',4,'Andy Liu','',1415276522,8,'video','/img/people/4.png','g',1681,0,'2014106__4__g_8_3qev5uv1t_521997',''),(5,'chat','\0',4,'Andy Liu','',1415276522,8,'video','/img/people/4.png','g',1682,0,'2014106__4__g_8_3qev5uv1t_521997',''),(6,'chat','\0',4,'Andy Liu','',1415276522,8,'video','/img/people/4.png','g',1683,0,'2014106__4__g_8_3qev5uv1t_521997',''),(4,'chat','\0',4,'Andy Liu','',1415276725,8,'video','/img/people/4.png','g',1684,0,'2014106__4__g_8_4zwkr9exy_725209',''),(5,'chat','\0',4,'Andy Liu','',1415276725,8,'video','/img/people/4.png','g',1685,0,'2014106__4__g_8_4zwkr9exy_725209',''),(6,'chat','\0',4,'Andy Liu','',1415276725,8,'video','/img/people/4.png','g',1686,0,'2014106__4__g_8_4zwkr9exy_725209',''),(4,'chat','\0',4,'Andy Liu','',1415276861,8,'video','/img/people/4.png','g',1687,0,'2014106__4__g_8_b01ibmzjc_861698',''),(5,'chat','\0',4,'Andy Liu','',1415276861,8,'video','/img/people/4.png','g',1688,0,'2014106__4__g_8_b01ibmzjc_861698',''),(6,'chat','\0',4,'Andy Liu','',1415276861,8,'video','/img/people/4.png','g',1689,0,'2014106__4__g_8_b01ibmzjc_861698',''),(4,'chat','\0',4,'Andy Liu','',1415277035,8,'video','/img/people/4.png','g',1690,0,'2014106__4__g_8_v28q58nor_035312',''),(5,'chat','\0',4,'Andy Liu','',1415277035,8,'video','/img/people/4.png','g',1691,0,'2014106__4__g_8_v28q58nor_035312',''),(6,'chat','\0',4,'Andy Liu','',1415277035,8,'video','/img/people/4.png','g',1692,0,'2014106__4__g_8_v28q58nor_035312',''),(4,'chat','\0',4,'Andy Liu','',1415277215,8,'video','/img/people/4.png','g',1693,0,'2014106__4__g_8_5nk3kgpcr_215686',''),(5,'chat','\0',4,'Andy Liu','',1415277215,8,'video','/img/people/4.png','g',1694,0,'2014106__4__g_8_5nk3kgpcr_215686',''),(6,'chat','\0',4,'Andy Liu','',1415277215,8,'video','/img/people/4.png','g',1695,0,'2014106__4__g_8_5nk3kgpcr_215686',''),(4,'chat','\0',4,'Andy Liu','',1415277239,8,'video','/img/people/4.png','g',1696,0,'2014106__4__g_8_o7xvggkss_239780',''),(5,'chat','\0',4,'Andy Liu','',1415277239,8,'video','/img/people/4.png','g',1697,0,'2014106__4__g_8_o7xvggkss_239780',''),(6,'chat','\0',4,'Andy Liu','',1415277239,8,'video','/img/people/4.png','g',1698,0,'2014106__4__g_8_o7xvggkss_239780',''),(4,'chat','\0',4,'Andy Liu','',1415277681,8,'video','/img/people/4.png','g',1699,0,'2014106__4__g_8_fvmy22j8c_681157',''),(5,'chat','\0',4,'Andy Liu','',1415277681,8,'video','/img/people/4.png','g',1700,0,'2014106__4__g_8_fvmy22j8c_681157',''),(6,'chat','\0',4,'Andy Liu','',1415277681,8,'video','/img/people/4.png','g',1701,0,'2014106__4__g_8_fvmy22j8c_681157',''),(4,'chat','\0',4,'Andy Liu','',1415277981,8,'video','/img/people/4.png','g',1702,0,'2014106__4__g_8_uvyni7b3d_981084',''),(5,'chat','\0',4,'Andy Liu','',1415277981,8,'video','/img/people/4.png','g',1703,0,'2014106__4__g_8_uvyni7b3d_981084',''),(6,'chat','\0',4,'Andy Liu','',1415277981,8,'video','/img/people/4.png','g',1704,0,'2014106__4__g_8_uvyni7b3d_981084',''),(4,'chat','\0',4,'Andy Liu','',1415278067,8,'video','/img/people/4.png','g',1705,0,'2014106__4__g_8_zui552lwf_067557',''),(5,'chat','\0',4,'Andy Liu','',1415278067,8,'video','/img/people/4.png','g',1706,0,'2014106__4__g_8_zui552lwf_067557',''),(6,'chat','\0',4,'Andy Liu','',1415278067,8,'video','/img/people/4.png','g',1707,0,'2014106__4__g_8_zui552lwf_067557',''),(4,'chat','\0',4,'Andy Liu','',1415278099,8,'video','/img/people/4.png','g',1708,0,'2014106__4__g_8_9de4e6xeq_099269',''),(5,'chat','\0',4,'Andy Liu','',1415278099,8,'video','/img/people/4.png','g',1709,0,'2014106__4__g_8_9de4e6xeq_099269',''),(6,'chat','\0',4,'Andy Liu','',1415278099,8,'video','/img/people/4.png','g',1710,0,'2014106__4__g_8_9de4e6xeq_099269',''),(4,'chat','\0',4,'Andy Liu','',1415278279,8,'video','/img/people/4.png','g',1711,0,'2014106__4__g_8_6osoq92a4_279106',''),(5,'chat','\0',4,'Andy Liu','',1415278279,8,'video','/img/people/4.png','g',1712,0,'2014106__4__g_8_6osoq92a4_279106',''),(6,'chat','\0',4,'Andy Liu','',1415278279,8,'video','/img/people/4.png','g',1713,0,'2014106__4__g_8_6osoq92a4_279106',''),(4,'chat','\0',4,'Andy Liu','',1415278388,8,'video','/img/people/4.png','g',1714,0,'2014106__4__g_8_rkwi0xt67_388036',''),(5,'chat','\0',4,'Andy Liu','',1415278388,8,'video','/img/people/4.png','g',1715,0,'2014106__4__g_8_rkwi0xt67_388036',''),(6,'chat','\0',4,'Andy Liu','',1415278388,8,'video','/img/people/4.png','g',1716,0,'2014106__4__g_8_rkwi0xt67_388036',''),(4,'chat','\0',4,'Andy Liu','',1415278634,8,'video','/img/people/4.png','g',1717,0,'2014106__4__g_8_omyand9k0_634768',''),(5,'chat','\0',4,'Andy Liu','',1415278634,8,'video','/img/people/4.png','g',1718,0,'2014106__4__g_8_omyand9k0_634768',''),(6,'chat','\0',4,'Andy Liu','',1415278634,8,'video','/img/people/4.png','g',1719,0,'2014106__4__g_8_omyand9k0_634768',''),(4,'chat','\0',4,'Andy Liu','',1415278800,8,'video','/img/people/4.png','g',1720,0,'2014106__4__g_8_cb214omld_800271',''),(5,'chat','\0',4,'Andy Liu','',1415278800,8,'video','/img/people/4.png','g',1721,0,'2014106__4__g_8_cb214omld_800271',''),(6,'chat','\0',4,'Andy Liu','',1415278800,8,'video','/img/people/4.png','g',1722,0,'2014106__4__g_8_cb214omld_800271',''),(4,'chat','\0',4,'Andy Liu','',1415279067,8,'video','/img/people/4.png','g',1723,0,'2014106__4__g_8_izsob9rux_067102',''),(5,'chat','\0',4,'Andy Liu','',1415279067,8,'video','/img/people/4.png','g',1724,0,'2014106__4__g_8_izsob9rux_067102',''),(6,'chat','\0',4,'Andy Liu','',1415279067,8,'video','/img/people/4.png','g',1725,0,'2014106__4__g_8_izsob9rux_067102',''),(4,'chat','\0',4,'Andy Liu','',1415279134,8,'video','/img/people/4.png','g',1726,0,'2014106__4__g_8_edbqiyt1v_134867',''),(5,'chat','\0',4,'Andy Liu','',1415279134,8,'video','/img/people/4.png','g',1727,0,'2014106__4__g_8_edbqiyt1v_134867',''),(6,'chat','\0',4,'Andy Liu','',1415279134,8,'video','/img/people/4.png','g',1728,0,'2014106__4__g_8_edbqiyt1v_134867',''),(4,'chat','\0',4,'Andy Liu','',1415279209,8,'video','/img/people/4.png','g',1729,0,'2014106__4__g_8_l64gum8cy_209606',''),(5,'chat','\0',4,'Andy Liu','',1415279209,8,'video','/img/people/4.png','g',1730,0,'2014106__4__g_8_l64gum8cy_209606',''),(6,'chat','\0',4,'Andy Liu','',1415279209,8,'video','/img/people/4.png','g',1731,0,'2014106__4__g_8_l64gum8cy_209606',''),(4,'chat','\0',4,'Andy Liu','',1415279309,8,'video','/img/people/4.png','g',1732,0,'2014106__4__g_8_v3ejo9mal_309897',''),(5,'chat','\0',4,'Andy Liu','',1415279309,8,'video','/img/people/4.png','g',1733,0,'2014106__4__g_8_v3ejo9mal_309897',''),(6,'chat','\0',4,'Andy Liu','',1415279309,8,'video','/img/people/4.png','g',1734,0,'2014106__4__g_8_v3ejo9mal_309897',''),(4,'chat','\0',4,'Andy Liu','',1415279384,8,'video','/img/people/4.png','g',1735,0,'2014106__4__g_8_dfgb0kol1_384372',''),(5,'chat','\0',4,'Andy Liu','',1415279384,8,'video','/img/people/4.png','g',1736,0,'2014106__4__g_8_dfgb0kol1_384372',''),(6,'chat','\0',4,'Andy Liu','',1415279384,8,'video','/img/people/4.png','g',1737,0,'2014106__4__g_8_dfgb0kol1_384372',''),(4,'chat','\0',4,'Andy Liu','',1415279616,8,'video','/img/people/4.png','g',1738,0,'2014106__4__g_8_7p74zsccl_616063',''),(5,'chat','\0',4,'Andy Liu','',1415279616,8,'video','/img/people/4.png','g',1739,0,'2014106__4__g_8_7p74zsccl_616063',''),(6,'chat','\0',4,'Andy Liu','',1415279616,8,'video','/img/people/4.png','g',1740,0,'2014106__4__g_8_7p74zsccl_616063',''),(4,'chat','\0',4,'Andy Liu','',1415279663,8,'video','/img/people/4.png','g',1741,0,'2014106__4__g_8_c2tadjk7v_663705',''),(5,'chat','\0',4,'Andy Liu','',1415279663,8,'video','/img/people/4.png','g',1742,0,'2014106__4__g_8_c2tadjk7v_663705',''),(6,'chat','\0',4,'Andy Liu','',1415279663,8,'video','/img/people/4.png','g',1743,0,'2014106__4__g_8_c2tadjk7v_663705',''),(4,'chat','\0',4,'Andy Liu','',1415279724,8,'video','/img/people/4.png','g',1744,0,'2014106__4__g_8_vqowtcv2n_724615',''),(5,'chat','\0',4,'Andy Liu','',1415279724,8,'video','/img/people/4.png','g',1745,0,'2014106__4__g_8_vqowtcv2n_724615',''),(6,'chat','\0',4,'Andy Liu','',1415279724,8,'video','/img/people/4.png','g',1746,0,'2014106__4__g_8_vqowtcv2n_724615',''),(4,'chat','\0',4,'Andy Liu','',1415279768,8,'video','/img/people/4.png','g',1747,0,'2014106__4__g_8_n6in8ops7_768675',''),(5,'chat','\0',4,'Andy Liu','',1415279768,8,'video','/img/people/4.png','g',1748,0,'2014106__4__g_8_n6in8ops7_768675',''),(6,'chat','\0',4,'Andy Liu','',1415279768,8,'video','/img/people/4.png','g',1749,0,'2014106__4__g_8_n6in8ops7_768675',''),(4,'chat','\0',4,'Andy Liu','',1415279873,8,'video','/img/people/4.png','g',1750,0,'2014106__4__g_8_tojqho9hj_873088',''),(5,'chat','\0',4,'Andy Liu','',1415279873,8,'video','/img/people/4.png','g',1751,0,'2014106__4__g_8_tojqho9hj_873088',''),(6,'chat','\0',4,'Andy Liu','',1415279873,8,'video','/img/people/4.png','g',1752,0,'2014106__4__g_8_tojqho9hj_873088',''),(4,'chat','\0',4,'Andy Liu','',1415279980,8,'video','/img/people/4.png','g',1753,0,'2014106__4__g_8_8gdkfbp1m_980738',''),(5,'chat','\0',4,'Andy Liu','',1415279980,8,'video','/img/people/4.png','g',1754,0,'2014106__4__g_8_8gdkfbp1m_980738',''),(6,'chat','\0',4,'Andy Liu','',1415279980,8,'video','/img/people/4.png','g',1755,0,'2014106__4__g_8_8gdkfbp1m_980738',''),(4,'chat','\0',4,'Andy Liu','',1415280152,8,'video','/img/people/4.png','g',1756,0,'2014106__4__g_8_7m4eotie2_152465',''),(5,'chat','\0',4,'Andy Liu','',1415280152,8,'video','/img/people/4.png','g',1757,0,'2014106__4__g_8_7m4eotie2_152465',''),(6,'chat','\0',4,'Andy Liu','',1415280152,8,'video','/img/people/4.png','g',1758,0,'2014106__4__g_8_7m4eotie2_152465',''),(4,'chat','\0',4,'Andy Liu','',1415280361,8,'video','/img/people/4.png','g',1759,0,'2014106__4__g_8_aec3aalv4_361193',''),(5,'chat','\0',4,'Andy Liu','',1415280361,8,'video','/img/people/4.png','g',1760,0,'2014106__4__g_8_aec3aalv4_361193',''),(6,'chat','\0',4,'Andy Liu','',1415280361,8,'video','/img/people/4.png','g',1761,0,'2014106__4__g_8_aec3aalv4_361193',''),(4,'chat','\0',4,'Andy Liu','',1415280415,8,'video','/img/people/4.png','g',1762,0,'2014106__4__g_8_if5pzxjtt_415399',''),(5,'chat','\0',4,'Andy Liu','',1415280415,8,'video','/img/people/4.png','g',1763,0,'2014106__4__g_8_if5pzxjtt_415399',''),(6,'chat','\0',4,'Andy Liu','',1415280415,8,'video','/img/people/4.png','g',1764,0,'2014106__4__g_8_if5pzxjtt_415399',''),(4,'chat','\0',4,'Andy Liu','',1415280609,8,'video','/img/people/4.png','g',1765,0,'2014106__4__g_8_tl9ey13og_609438',''),(5,'chat','\0',4,'Andy Liu','',1415280609,8,'video','/img/people/4.png','g',1766,0,'2014106__4__g_8_tl9ey13og_609438',''),(6,'chat','\0',4,'Andy Liu','',1415280609,8,'video','/img/people/4.png','g',1767,0,'2014106__4__g_8_tl9ey13og_609438',''),(4,'chat','\0',4,'Andy Liu','',1415280693,8,'video','/img/people/4.png','g',1768,0,'2014106__4__g_8_di17aydx3_693913',''),(5,'chat','\0',4,'Andy Liu','',1415280693,8,'video','/img/people/4.png','g',1769,0,'2014106__4__g_8_di17aydx3_693913',''),(6,'chat','\0',4,'Andy Liu','',1415280693,8,'video','/img/people/4.png','g',1770,0,'2014106__4__g_8_di17aydx3_693913',''),(4,'chat','\0',4,'Andy Liu','',1415280827,8,'video','/img/people/4.png','g',1771,0,'2014106__4__g_8_wrsjervjk_827427',''),(5,'chat','\0',4,'Andy Liu','',1415280827,8,'video','/img/people/4.png','g',1772,0,'2014106__4__g_8_wrsjervjk_827427',''),(6,'chat','\0',4,'Andy Liu','',1415280827,8,'video','/img/people/4.png','g',1773,0,'2014106__4__g_8_wrsjervjk_827427',''),(4,'chat','\0',4,'Andy Liu','',1415280988,8,'video','/img/people/4.png','g',1774,0,'2014106__4__g_8_o4afoz76z_988190',''),(5,'chat','\0',4,'Andy Liu','',1415280988,8,'video','/img/people/4.png','g',1775,0,'2014106__4__g_8_o4afoz76z_988190',''),(6,'chat','\0',4,'Andy Liu','',1415280988,8,'video','/img/people/4.png','g',1776,0,'2014106__4__g_8_o4afoz76z_988190',''),(4,'chat','\0',4,'Andy Liu','',1415281039,8,'video','/img/people/4.png','g',1777,0,'2014106__4__g_8_w6qd5wpp8_039442',''),(5,'chat','\0',4,'Andy Liu','',1415281039,8,'video','/img/people/4.png','g',1778,0,'2014106__4__g_8_w6qd5wpp8_039442',''),(6,'chat','\0',4,'Andy Liu','',1415281039,8,'video','/img/people/4.png','g',1779,0,'2014106__4__g_8_w6qd5wpp8_039442',''),(4,'chat','\0',4,'Andy Liu','',1415281194,8,'video','/img/people/4.png','g',1780,0,'2014106__4__g_8_mh2fckoih_193980',''),(5,'chat','\0',4,'Andy Liu','',1415281194,8,'video','/img/people/4.png','g',1781,0,'2014106__4__g_8_mh2fckoih_193980',''),(6,'chat','\0',4,'Andy Liu','',1415281194,8,'video','/img/people/4.png','g',1782,0,'2014106__4__g_8_mh2fckoih_193980',''),(4,'chat','\0',4,'Andy Liu','',1415281226,8,'video','/img/people/4.png','g',1783,0,'2014106__4__g_8_o3drpf56l_226170',''),(5,'chat','\0',4,'Andy Liu','',1415281226,8,'video','/img/people/4.png','g',1784,0,'2014106__4__g_8_o3drpf56l_226170',''),(6,'chat','\0',4,'Andy Liu','',1415281226,8,'video','/img/people/4.png','g',1785,0,'2014106__4__g_8_o3drpf56l_226170',''),(4,'chat','\0',4,'Andy Liu','',1415281282,8,'video','/img/people/4.png','g',1786,0,'2014106__4__g_8_r767n0oj0_282624',''),(5,'chat','\0',4,'Andy Liu','',1415281282,8,'video','/img/people/4.png','g',1787,0,'2014106__4__g_8_r767n0oj0_282624',''),(6,'chat','\0',4,'Andy Liu','',1415281282,8,'video','/img/people/4.png','g',1788,0,'2014106__4__g_8_r767n0oj0_282624',''),(4,'chat','\0',4,'Andy Liu','',1415281652,8,'video','/img/people/4.png','g',1789,0,'2014106__4__g_8_8aymlkgho_652895',''),(5,'chat','\0',4,'Andy Liu','',1415281652,8,'video','/img/people/4.png','g',1790,0,'2014106__4__g_8_8aymlkgho_652895',''),(6,'chat','\0',4,'Andy Liu','',1415281652,8,'video','/img/people/4.png','g',1791,0,'2014106__4__g_8_8aymlkgho_652895',''),(4,'chat','\0',4,'Andy Liu','',1415281753,8,'video','/img/people/4.png','g',1792,0,'2014106__4__g_8_x83mprfdc_753836',''),(5,'chat','\0',4,'Andy Liu','',1415281753,8,'video','/img/people/4.png','g',1793,0,'2014106__4__g_8_x83mprfdc_753836',''),(6,'chat','\0',4,'Andy Liu','',1415281753,8,'video','/img/people/4.png','g',1794,0,'2014106__4__g_8_x83mprfdc_753836',''),(4,'chat','\0',4,'Andy Liu','',1415281842,8,'video','/img/people/4.png','g',1795,0,'2014106__4__g_8_tnw56q9vf_842711',''),(5,'chat','\0',4,'Andy Liu','',1415281842,8,'video','/img/people/4.png','g',1796,0,'2014106__4__g_8_tnw56q9vf_842711',''),(6,'chat','\0',4,'Andy Liu','',1415281842,8,'video','/img/people/4.png','g',1797,0,'2014106__4__g_8_tnw56q9vf_842711',''),(4,'chat','\0',4,'Andy Liu','',1415282080,8,'video','/img/people/4.png','g',1798,0,'2014106__4__g_8_ma623qflp_080461',''),(5,'chat','\0',4,'Andy Liu','',1415282080,8,'video','/img/people/4.png','g',1799,0,'2014106__4__g_8_ma623qflp_080461',''),(6,'chat','\0',4,'Andy Liu','',1415282080,8,'video','/img/people/4.png','g',1800,0,'2014106__4__g_8_ma623qflp_080461',''),(4,'chat','\0',4,'Andy Liu','',1415282106,8,'video','/img/people/4.png','g',1801,0,'2014106__4__g_8_6eeqv42em_106541',''),(5,'chat','\0',4,'Andy Liu','',1415282106,8,'video','/img/people/4.png','g',1802,0,'2014106__4__g_8_6eeqv42em_106541',''),(6,'chat','\0',4,'Andy Liu','',1415282106,8,'video','/img/people/4.png','g',1803,0,'2014106__4__g_8_6eeqv42em_106541',''),(4,'chat','\0',5,'Roosevelt','windows',1415352273,5,'text','/img/people/lsf.jpg','u',1804,0,'',''),(4,'chat','\0',5,'Roosevelt','',1415352295,9,'video','/img/people/lsf.jpg','g',1805,0,'2014107__5__g_9_psmh23x19_295851',''),(3,'chat','\0',5,'Roosevelt','',1415352295,9,'video','/img/people/lsf.jpg','g',1806,0,'2014107__5__g_9_psmh23x19_295851',''),(5,'chat','\0',5,'Roosevelt','',1415352295,9,'video','/img/people/lsf.jpg','g',1807,0,'2014107__5__g_9_psmh23x19_295851',''),(4,'chat','\0',5,'Roosevelt','www',1415353374,5,'text','/img/people/lsf.jpg','u',1812,0,'',''),(4,'chat','\0',5,'Roosevelt','fdsafds',1415355385,5,'text','/img/people/lsf.jpg','u',1813,0,'',''),(5,'chat','\0',4,'Andy Liu','www',1415355397,4,'text','/img/people/4.png','u',1814,0,'',''),(5,'chat','\0',4,'Andy Liu','呜呜呜',1415355782,4,'text','/img/people/4.png','u',1815,0,'',''),(3,'chat','\0',4,'Andy Liu','www',1415607726,4,'text','/img/people/4.png','u',1816,0,'',''),(4,'chat','\0',4,'Andy Liu','sdsa',1415607739,9,'text','/img/people/4.png','g',1817,0,'',''),(3,'chat','\0',4,'Andy Liu','sdsa',1415607739,9,'text','/img/people/4.png','g',1818,0,'',''),(5,'chat','\0',4,'Andy Liu','sdsa',1415607739,9,'text','/img/people/4.png','g',1819,0,'',''),(4,'chat','\0',4,'Andy Liu','sddas',1415607740,9,'text','/img/people/4.png','g',1820,0,'',''),(3,'chat','\0',4,'Andy Liu','sddas',1415607740,9,'text','/img/people/4.png','g',1821,0,'',''),(5,'chat','\0',4,'Andy Liu','sddas',1415607740,9,'text','/img/people/4.png','g',1822,0,'',''),(5,'chat','\0',4,'Andy Liu','www',1415607860,4,'text','/img/people/4.png','u',1823,0,'',''),(5,'chat','\0',4,'Andy Liu','dddd',1415607868,4,'text','/img/people/4.png','u',1824,0,'',''),(5,'chat','\0',4,'Andy Liu','qqq',1415607892,4,'text','/img/people/4.png','u',1825,0,'',''),(5,'chat','\0',4,'Andy Liu','cccc',1415607905,4,'text','/img/people/4.png','u',1826,0,'',''),(5,'chat','\0',4,'Andy Liu','wwww',1415607912,4,'text','/img/people/4.png','u',1827,0,'',''),(5,'chat','\0',4,'Andy Liu','fff',1415607919,4,'text','/img/people/4.png','u',1828,0,'',''),(4,'chat','\0',4,'Andy Liu','qwq',1415607998,8,'text','/img/people/4.png','g',1829,0,'',''),(5,'chat','\0',4,'Andy Liu','qwq',1415607998,8,'text','/img/people/4.png','g',1830,0,'',''),(6,'chat','\0',4,'Andy Liu','qwq',1415607998,8,'text','/img/people/4.png','g',1831,0,'',''),(4,'chat','\0',5,'Roosevelt','wq',1415608011,5,'text','/img/people/lsf.jpg','u',1832,0,'',''),(4,'chat','\0',5,'Roosevelt','wq',1415608021,5,'text','/img/people/lsf.jpg','u',1833,0,'',''),(4,'chat','\0',5,'Roosevelt','ew',1415608060,5,'text','/img/people/lsf.jpg','u',1834,0,'',''),(4,'chat','\0',4,'Andy Liu','ding dong',1415608078,8,'text','/img/people/4.png','g',1835,0,'',''),(5,'chat','\0',4,'Andy Liu','ding dong',1415608078,8,'text','/img/people/4.png','g',1836,0,'',''),(6,'chat','\0',4,'Andy Liu','ding dong',1415608078,8,'text','/img/people/4.png','g',1837,0,'',''),(5,'chat','\0',4,'Andy Liu','wfew',1415608282,4,'text','/img/people/4.png','u',1838,0,'',''),(5,'chat','\0',4,'Andy Liu','dfsa',1415608286,4,'text','/img/people/4.png','u',1839,0,'',''),(5,'chat','\0',4,'Andy Liu','fdsa',1415608288,4,'text','/img/people/4.png','u',1840,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415672302,5,'request-reply','/img/people/lsf.jpg','',1845,0,'',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415672376,10,'video','/img/people/lsf.jpg','u',1846,0,'20141011__5__u_10_4vq4ber0l_376274',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415673613,10,'video','/img/people/lsf.jpg','u',1847,0,'20141011__5__u_10_xboo9fv7h_613774',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415674602,10,'video','/img/people/lsf.jpg','u',1848,0,'20141011__5__u_10_1davqyndi_602827',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415674715,10,'video','/img/people/lsf.jpg','u',1849,0,'20141011__5__u_10_an25s1zht_715943',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415674768,10,'video','/img/people/lsf.jpg','u',1850,0,'20141011__5__u_10_yh6bwwh9h_768366',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415674791,10,'video','/img/people/lsf.jpg','u',1851,0,'20141011__5__u_10_anicq586m_791591',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675046,10,'video','/img/people/lsf.jpg','u',1852,0,'20141011__5__u_10_6ar9f9frb_046243',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675122,10,'video','/img/people/lsf.jpg','u',1853,0,'20141011__5__u_10_h8ynnlcwb_122690',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675197,10,'video','/img/people/lsf.jpg','u',1854,0,'20141011__5__u_10_ugyj8mpk9_197766',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675218,10,'video','/img/people/lsf.jpg','u',1855,0,'20141011__5__u_10_ol86zm4im_218621',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675266,10,'video','/img/people/lsf.jpg','u',1856,0,'20141011__5__u_10_d2c5hnqy6_266132',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675298,10,'video','/img/people/lsf.jpg','u',1857,0,'20141011__5__u_10_uvys1ulp9_298381',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675383,10,'video','/img/people/lsf.jpg','u',1858,0,'20141011__5__u_10_79emalqje_383624',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415675988,10,'video','/img/people/lsf.jpg','u',1859,0,'20141011__5__u_10_s2oanycrf_988195',''),(10,'share','\0',5,'Roosevelt','',1415675995,10,'screen','/img/people/lsf.jpg','u',1860,0,'20141011__5__u_10_hz3myngfu_995719',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415675996,10,'screen','/img/people/lsf.jpg','u',1861,0,'20141011__5__u_10_hz3myngfu_995719',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415676349,10,'video','/img/people/lsf.jpg','u',1862,0,'20141011__5__u_10_dlxyfqugz_349514',''),(4,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415676389,9,'video','/img/people/lsf.jpg','g',1863,0,'20141011__5__g_9_wg0rh1nps_389436',''),(3,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415676389,9,'video','/img/people/lsf.jpg','g',1864,0,'20141011__5__g_9_wg0rh1nps_389436',''),(5,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415676389,9,'video','/img/people/lsf.jpg','g',1865,0,'20141011__5__g_9_wg0rh1nps_389436',''),(10,'share','',5,'Roosevelt','',1415676633,10,'screen','/img/people/lsf.jpg','u',1866,0,'20141011__5__u_10_0w9o2ghju_633747',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415676637,10,'screen','/img/people/lsf.jpg','u',1867,0,'20141011__5__u_10_0w9o2ghju_633747',''),(10,'share','',5,'Roosevelt','',1415676723,10,'screen','/img/people/lsf.jpg','u',1868,0,'20141011__5__u_10_4lgnme5io_723542',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415676723,10,'screen','/img/people/lsf.jpg','u',1869,0,'20141011__5__u_10_4lgnme5io_723542',''),(10,'share','',5,'Roosevelt','',1415676753,10,'screen','/img/people/lsf.jpg','u',1870,0,'20141011__5__u_10_6zksxxx40_753837',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415676753,10,'screen','/img/people/lsf.jpg','u',1871,0,'20141011__5__u_10_6zksxxx40_753837',''),(10,'share','',5,'Roosevelt','',1415676771,10,'screen','/img/people/lsf.jpg','u',1872,0,'20141011__5__u_10_98d7e5pi1_771468',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415676774,10,'screen','/img/people/lsf.jpg','u',1873,0,'20141011__5__u_10_98d7e5pi1_771468',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415678232,10,'video','/img/people/lsf.jpg','u',1874,0,'20141011__5__u_10_tgcq9s14d_231459',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415678323,10,'video','/img/people/lsf.jpg','u',1875,0,'20141011__5__u_10_4ql2v60fd_323446',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415678847,10,'video','/img/people/lsf.jpg','u',1876,0,'20141011__5__u_10_ohgt15v8s_846694',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415690806,10,'video','/img/people/lsf.jpg','u',1877,0,'20141011__5__u_10_syvvno8lc_806716',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415691104,10,'video','/img/people/lsf.jpg','u',1878,0,'20141011__5__u_10_bylc1dq4v_104073',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415692303,10,'video','/img/people/lsf.jpg','u',1879,0,'20141011__5__u_10_ev9c7w068_303561',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415692336,10,'video','/img/people/lsf.jpg','u',1880,0,'20141011__5__u_10_3opsrzxli_336542',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415692667,10,'video','/img/people/lsf.jpg','u',1881,0,'20141011__5__u_10_2hllijttz_667826',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415692720,10,'video','/img/people/lsf.jpg','u',1882,0,'20141011__5__u_10_zwpfpkb1u_720024',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415692808,10,'video','/img/people/lsf.jpg','u',1883,0,'20141011__5__u_10_oa6du1g6a_808381',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415693124,10,'video','/img/people/lsf.jpg','u',1884,0,'20141011__5__u_10_a4xen0ygw_124729',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415693171,10,'video','/img/people/lsf.jpg','u',1885,0,'20141011__5__u_10_5jjuxs44b_171814',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415693241,10,'video','/img/people/lsf.jpg','u',1886,0,'20141011__5__u_10_ewgvl6p4r_241244',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415696730,5,'request-reply','/img/people/lsf.jpg','',1888,0,'',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415696908,10,'video','/img/people/lsf.jpg','u',1889,0,'20141011__5__u_10_tpoad3tr6_908770',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415698517,10,'video','/img/people/lsf.jpg','u',1890,0,'20141011__5__u_10_lc8l7yxw4_517734',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415698606,10,'video','/img/people/lsf.jpg','u',1891,0,'20141011__5__u_10_pm0wi0b18_606514',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415698669,10,'video','/img/people/lsf.jpg','u',1892,0,'20141011__5__u_10_9m8o3kxoy_669024',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415698681,10,'video','/img/people/lsf.jpg','u',1893,0,'20141011__5__u_10_r7buogyab_681797',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415698756,10,'video','/img/people/lsf.jpg','u',1894,0,'20141011__5__u_10_6q5mn7v10_755845',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415699232,10,'video','/img/people/lsf.jpg','u',1895,0,'20141011__5__u_10_eprs6x2cy_232383',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415699403,10,'video','/img/people/lsf.jpg','u',1896,0,'20141011__5__u_10_ln420hmrd_403123',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415699434,5,'video','/img/people/sdm.png','u',1897,0,'20141011__10__u_5_g1hz6i4t1_434875',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415699473,5,'video','/img/people/sdm.png','u',1898,0,'20141011__10__u_5_pwdhubrji_473611',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415699656,5,'video','/img/people/sdm.png','u',1899,0,'20141011__10__u_5_s81rhzhn5_656421',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415699816,5,'video','/img/people/sdm.png','u',1900,0,'20141011__10__u_5_rbwyxkjqm_816885',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415699868,5,'video','/img/people/sdm.png','u',1901,0,'20141011__10__u_5_tev5mgs2s_868179',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700009,5,'video','/img/people/sdm.png','u',1902,0,'20141011__10__u_5_df69nc3k7_009205',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700153,5,'video','/img/people/sdm.png','u',1903,0,'20141011__10__u_5_98n75j5s9_153783',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700281,5,'video','/img/people/sdm.png','u',1904,0,'20141011__10__u_5_b4lwvii1i_281235',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700369,5,'video','/img/people/sdm.png','u',1905,0,'20141011__10__u_5_ei3gjwqh8_369088',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700412,5,'video','/img/people/sdm.png','u',1906,0,'20141011__10__u_5_0h9hq2zdw_412333',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700676,5,'video','/img/people/sdm.png','u',1907,0,'20141011__10__u_5_6g6voflbw_676331',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700841,5,'video','/img/people/sdm.png','u',1908,0,'20141011__10__u_5_z1a6mxs09_841244',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415700935,5,'video','/img/people/sdm.png','u',1909,0,'20141011__10__u_5_3ufzlaj6f_935037',''),(10,'chat','\0',5,'Roosevelt','fdsafdsafdsafdsaf',1415701692,5,'text','/img/people/lsf.jpg','u',1910,0,'',''),(10,'chat','\0',5,'Roosevelt','dsaf',1415701754,5,'text','/img/people/lsf.jpg','u',1911,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsafdsaf',1415701941,5,'text','/img/people/lsf.jpg','u',1912,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsafdsa',1415701955,5,'text','/img/people/lsf.jpg','u',1913,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsafd',1415701957,5,'text','/img/people/lsf.jpg','u',1914,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsaffdsafd',1415701996,5,'text','/img/people/lsf.jpg','u',1915,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsafsadsafd',1415702017,5,'text','/img/people/lsf.jpg','u',1916,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsafd',1415702121,5,'text','/img/people/lsf.jpg','u',1917,0,'',''),(10,'chat','\0',5,'Roosevelt','windsf',1415702123,5,'text','/img/people/lsf.jpg','u',1918,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsa',1415702198,5,'text','/img/people/lsf.jpg','u',1919,0,'',''),(10,'chat','\0',5,'Roosevelt','da',1415702240,5,'text','/img/people/lsf.jpg','u',1920,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsa',1415702264,5,'text','/img/people/lsf.jpg','u',1921,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsafsafdsa',1415702296,5,'text','/img/people/lsf.jpg','u',1922,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsas',1415702389,5,'text','/img/people/lsf.jpg','u',1923,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsaf',1415702518,5,'text','/img/people/lsf.jpg','u',1924,0,'',''),(10,'chat','\0',5,'Roosevelt','fdsa',1415702520,5,'text','/img/people/lsf.jpg','u',1925,0,'',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415774493,5,'video','/img/people/sdm.png','u',1926,0,'20141012__10__u_5_inoekqdua_493141',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415774509,5,'video','/img/people/sdm.png','u',1927,0,'20141012__10__u_5_nz2z1b8jg_509242',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415774520,5,'video','/img/people/sdm.png','u',1928,0,'20141012__10__u_5_ogk800je9_520196',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415774627,5,'video','/img/people/sdm.png','u',1929,0,'20141012__10__u_5_vve0oy9o8_627255',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415775958,5,'video','/img/people/sdm.png','u',1930,0,'20141012__10__u_5_a5myi63ww_957968',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415775976,5,'video','/img/people/sdm.png','u',1931,0,'20141012__10__u_5_a792oxban_976615',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776114,5,'video','/img/people/sdm.png','u',1932,0,'20141012__10__u_5_snijos2qf_114749',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776195,5,'video','/img/people/sdm.png','u',1933,0,'20141012__10__u_5_uive7jyht_195896',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776567,5,'video','/img/people/sdm.png','u',1934,0,'20141012__10__u_5_52l22xeuh_566974',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776734,5,'video','/img/people/sdm.png','u',1935,0,'20141012__10__u_5_usdx2zjea_734348',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776774,5,'video','/img/people/sdm.png','u',1936,0,'20141012__10__u_5_vcliq8rjr_773970',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776797,5,'video','/img/people/sdm.png','u',1937,0,'20141012__10__u_5_vxlf7p4fi_797185',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776888,5,'video','/img/people/sdm.png','u',1938,0,'20141012__10__u_5_m6mc5gj3s_888130',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415776902,5,'video','/img/people/sdm.png','u',1939,0,'20141012__10__u_5_wmt172hw5_902662',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415780679,5,'video','/img/people/sdm.png','u',1940,0,'20141012__10__u_5_doxzyf9p8_679049',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415780694,10,'video','/img/people/lsf.jpg','u',1941,0,'20141012__5__u_10_plwcc7qgz_694724',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415780722,10,'video','/img/people/lsf.jpg','u',1942,0,'20141012__5__u_10_kn2503dqx_722531',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415780734,10,'video','/img/people/lsf.jpg','u',1943,0,'20141012__5__u_10_i8r5892p5_734584',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415780778,5,'video','/img/people/sdm.png','u',1944,0,'20141012__10__u_5_wpev3781v_778732',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415780818,5,'video','/img/people/sdm.png','u',1945,0,'20141012__10__u_5_bkfdh3wrn_817978',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415780843,10,'video','/img/people/lsf.jpg','u',1946,0,'20141012__5__u_10_83k105k8x_843286',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415780982,10,'video','/img/people/lsf.jpg','u',1947,0,'20141012__5__u_10_pcfc1ly9p_978129',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415781077,5,'video','/img/people/sdm.png','u',1948,0,'20141012__10__u_5_fz1sg17gi_077015',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415781240,5,'video','/img/people/sdm.png','u',1949,0,'20141012__10__u_5_m0l7b0ag3_239952',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415781253,10,'video','/img/people/lsf.jpg','u',1950,0,'20141012__5__u_10_l82dwy3y6_253564',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415781775,10,'video','/img/people/lsf.jpg','u',1951,0,'20141012__5__u_10_jch5wvs02_775821',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415781822,5,'video','/img/people/sdm.png','u',1952,0,'20141012__10__u_5_07xzhuxj0_822412',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415781955,10,'video','/img/people/lsf.jpg','u',1953,0,'20141012__5__u_10_arkl3k9tp_955248',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415781968,5,'video','/img/people/sdm.png','u',1954,0,'20141012__10__u_5_zcz0sulxy_968241',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415781979,10,'video','/img/people/lsf.jpg','u',1955,0,'20141012__5__u_10_nn3oadlml_979427',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782077,5,'video','/img/people/sdm.png','u',1956,0,'20141012__10__u_5_isyxd4s73_077661',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782100,10,'video','/img/people/lsf.jpg','u',1957,0,'20141012__5__u_10_bmethcjs0_100376',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782225,10,'video','/img/people/lsf.jpg','u',1958,0,'20141012__5__u_10_nakks4ana_225937',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782391,5,'video','/img/people/sdm.png','u',1959,0,'20141012__10__u_5_g4rltmaba_391687',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782397,10,'video','/img/people/lsf.jpg','u',1960,0,'20141012__5__u_10_waog5gxq6_397402',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782452,10,'video','/img/people/lsf.jpg','u',1961,0,'20141012__5__u_10_r3iwfmb55_452281',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782536,10,'video','/img/people/lsf.jpg','u',1962,0,'20141012__5__u_10_6lxn9ea0r_536516',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782670,10,'video','/img/people/lsf.jpg','u',1963,0,'20141012__5__u_10_keka9kl5w_670751',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782684,10,'video','/img/people/lsf.jpg','u',1964,0,'20141012__5__u_10_11bz6yk0y_684582',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782734,5,'video','/img/people/sdm.png','u',1965,0,'20141012__10__u_5_nsqlbxumd_734665',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782748,5,'video','/img/people/sdm.png','u',1966,0,'20141012__10__u_5_tlzagnrww_748795',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415782779,10,'video','/img/people/lsf.jpg','u',1967,0,'20141012__5__u_10_j9ctfsqxr_779138',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782793,5,'video','/img/people/sdm.png','u',1968,0,'20141012__10__u_5_5j1l2v6b8_793078',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782928,5,'video','/img/people/sdm.png','u',1969,0,'20141012__10__u_5_fa9j4q32e_928096',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415782937,5,'video','/img/people/sdm.png','u',1970,0,'20141012__10__u_5_eba6dt2fc_937616',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415783018,5,'video','/img/people/sdm.png','u',1971,0,'20141012__10__u_5_ilbiwna8e_018517',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415783052,5,'video','/img/people/sdm.png','u',1972,0,'20141012__10__u_5_esfxh8jnz_052827',''),(10,'share','',5,'Roosevelt','',1415783087,10,'screen','/img/people/lsf.jpg','u',1973,0,'20141012__5__u_10_z9g6b8u72_087578',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415783091,10,'screen','/img/people/lsf.jpg','u',1974,0,'20141012__5__u_10_z9g6b8u72_087578',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415783316,10,'video','/img/people/lsf.jpg','u',1975,0,'20141012__5__u_10_37swd26eh_316899',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415783371,10,'video','/img/people/lsf.jpg','u',1976,0,'20141012__5__u_10_0bzxl5kfi_371048',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415783438,10,'video','/img/people/lsf.jpg','u',1977,0,'20141012__5__u_10_kcmazq6jn_438199',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415783667,5,'video','/img/people/sdm.png','u',1978,0,'20141012__10__u_5_mlogocvcp_667721',''),(5,'friend','\0',10,'Saddam','Saddam ',1415783746,10,'request-reply','/img/people/sdm.png','',1981,0,'',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415783757,10,'video','/img/people/lsf.jpg','u',1982,0,'20141012__5__u_10_0yuue69ws_757231',''),(5,'friend','\0',10,'Saddam','Saddam ',1415785814,10,'request-reply','/img/people/sdm.png','',1994,0,'',''),(10,'chat','\0',5,'Roosevelt','dsafdas',1415785826,5,'text','/img/people/lsf.jpg','u',1995,0,'',''),(5,'chat','\0',10,'Saddam','www',1415785849,10,'text','/img/people/sdm.png','u',1996,0,'',''),(10,'chat','\0',5,'Roosevelt','ddd',1415785853,5,'text','/img/people/lsf.jpg','u',1997,0,'',''),(5,'share','\0',5,'Roosevelt','',1415786419,11,'screen','/img/people/lsf.jpg','g',1998,0,'20141012__5__g_11_2zbmosafz_419679',''),(10,'share','\0',5,'Roosevelt','',1415786419,11,'screen','/img/people/lsf.jpg','g',1999,0,'20141012__5__g_11_2zbmosafz_419679',''),(4,'share','\0',5,'Roosevelt','',1415786419,11,'screen','/img/people/lsf.jpg','g',2000,0,'20141012__5__g_11_2zbmosafz_419679',''),(5,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415786420,11,'screen','/img/people/lsf.jpg','g',2001,0,'20141012__5__g_11_2zbmosafz_419679',''),(10,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415786420,11,'screen','/img/people/lsf.jpg','g',2002,0,'20141012__5__g_11_2zbmosafz_419679',''),(4,'share','',5,'Roosevelt','Roosevelt is inviting you for desktop sharing',1415786420,11,'screen','/img/people/lsf.jpg','g',2003,0,'20141012__5__g_11_2zbmosafz_419679',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415842996,5,'video','/img/people/4.png','u',2004,0,'20141013__4__u_5_39urer91n_996685',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843007,5,'video','/img/people/4.png','u',2005,0,'20141013__4__u_5_ozlb7kkl4_007737',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843117,5,'video','/img/people/4.png','u',2006,0,'20141013__4__u_5_juby2ibap_117227',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843141,5,'video','/img/people/4.png','u',2007,0,'20141013__4__u_5_a0dqlaftm_141219',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843235,5,'video','/img/people/4.png','u',2008,0,'20141013__4__u_5_2yusue4vf_235178',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843425,5,'video','/img/people/4.png','u',2009,0,'20141013__4__u_5_855y6dnmp_425138',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843847,5,'video','/img/people/4.png','u',2010,0,'20141013__4__u_5_wdujgtn36_847786',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415843909,5,'video','/img/people/4.png','u',2011,0,'20141013__4__u_5_hxgvilsk5_909901',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415843977,5,'video','/img/people/sdm.png','u',2012,0,'20141013__10__u_5_7ojdar4sb_977526',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415844016,5,'video','/img/people/sdm.png','u',2013,0,'20141013__10__u_5_5eqpdnnyk_016348',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415844539,5,'video','/img/people/sdm.png','u',2014,0,'20141013__10__u_5_au2ogxnnf_539606',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1415844551,10,'video','/img/people/lsf.jpg','u',2015,0,'20141013__5__u_10_5i9s4odxm_551739',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415844698,5,'video','/img/people/sdm.png','u',2016,0,'20141013__10__u_5_jzeq51do6_698565',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415844746,5,'video','/img/people/sdm.png','u',2017,0,'20141013__10__u_5_s6lz4sc6h_746170',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415844947,5,'video','/img/people/sdm.png','u',2018,0,'20141013__10__u_5_c17ii9jnz_947110',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415845057,5,'video','/img/people/sdm.png','u',2019,0,'20141013__10__u_5_irhxqmdjk_057776',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415845123,5,'video','/img/people/sdm.png','u',2020,0,'20141013__10__u_5_0xvmlkg1w_123477',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415845158,5,'video','/img/people/sdm.png','u',2021,0,'20141013__10__u_5_q3sbfa5u8_158042',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415845178,5,'video','/img/people/sdm.png','u',2022,0,'20141013__10__u_5_4bgc04z8u_178281',''),(5,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1415845301,5,'video','/img/people/sdm.png','u',2023,0,'20141013__10__u_5_vapned15n_301730',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415847160,5,'request-reply','/img/people/lsf.jpg','',2025,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415847430,5,'request-reply','/img/people/lsf.jpg','',2028,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415847490,5,'request-reply','/img/people/lsf.jpg','',2031,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415847505,5,'request-reply','/img/people/lsf.jpg','',2033,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415860480,5,'request-reply','/img/people/lsf.jpg','',2036,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415861306,5,'request-reply','/img/people/lsf.jpg','',2039,0,'',''),(10,'friend','\0',5,'Roosevelt','Roosevelt ',1415861401,5,'request-reply','/img/people/lsf.jpg','',2042,0,'',''),(10,'friend','\0',4,'Andy Liu','Andy Liu ',1415863445,4,'request-reply','/img/people/4.png','',2058,0,'',''),(4,'friend','\0',10,'Saddam','wwwwfdsa',1415868113,4,'request','/img/people/sdm.png','',2075,0,'',''),(4,'friend','\0',10,'Saddam','wwwwfdsa',1415868126,4,'request','/img/people/sdm.png','',2076,0,'',''),(4,'friend','\0',10,'Saddam','wfdddddd',1415868255,4,'request','/img/people/sdm.png','',2077,0,'',''),(4,'friend','\0',10,'Saddam','999999',1415868266,4,'request','/img/people/sdm.png','',2078,0,'',''),(4,'friend','\0',10,'Saddam','',1415868459,4,'request','/img/people/sdm.png','',2079,0,'',''),(4,'friend','\0',10,'Saddam','windows',1415868486,4,'request','/img/people/sdm.png','',2080,0,'',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415869386,8,'video','/img/people/4.png','g',2081,0,'20141013__4__g_8_c0lwkkf5e_386083',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415869386,8,'video','/img/people/4.png','g',2082,0,'20141013__4__g_8_c0lwkkf5e_386083',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415869386,8,'video','/img/people/4.png','g',2083,0,'20141013__4__g_8_c0lwkkf5e_386083',''),(4,'friend','\0',10,'Saddam','',1415869449,4,'request','/img/people/sdm.png','',2084,0,'',''),(10,'friend','\0',4,'Andy Liu','Andy Liu ',1415869453,4,'request-reply','/img/people/4.png','',2085,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415869459,10,'video','/img/people/4.png','u',2086,0,'20141013__4__u_10_htaxeuh32_459671',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415870214,10,'video','/img/people/4.png','u',2087,0,'20141013__4__u_10_gouncrzad_214819',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874628,7,'video','/img/people/4.png','g',2088,0,'20141013__4__g_7_y9ix1n5zh_628832',''),(3,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874628,7,'video','/img/people/4.png','g',2089,0,'20141013__4__g_7_y9ix1n5zh_628832',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874628,7,'video','/img/people/4.png','g',2090,0,'20141013__4__g_7_y9ix1n5zh_628832',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874628,7,'video','/img/people/4.png','g',2091,0,'20141013__4__g_7_y9ix1n5zh_628832',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874638,7,'video','/img/people/4.png','g',2092,0,'20141013__4__g_7_02nr9adg9_638330',''),(3,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874638,7,'video','/img/people/4.png','g',2093,0,'20141013__4__g_7_02nr9adg9_638330',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874638,7,'video','/img/people/4.png','g',2094,0,'20141013__4__g_7_02nr9adg9_638330',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874638,7,'video','/img/people/4.png','g',2095,0,'20141013__4__g_7_02nr9adg9_638330',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415874638,7,'video','/img/people/4.png','g',2096,0,'20141013__4__g_7_02nr9adg9_638330',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2097,0,'20141013__4__g_7_r9cak7052_511217',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2098,0,'20141013__4__g_7_r9cak7052_511217',''),(3,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2099,0,'20141013__4__g_7_r9cak7052_511217',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2100,0,'20141013__4__g_7_r9cak7052_511217',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2101,0,'20141013__4__g_7_r9cak7052_511217',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2102,0,'20141013__4__g_7_r9cak7052_511217',''),(7,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877511,7,'video','/img/people/4.png','g',2103,0,'20141013__4__g_7_r9cak7052_511217',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877646,7,'video','/img/people/4.png','g',2104,0,'20141013__4__g_7_cje3xepat_646093',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877646,7,'video','/img/people/4.png','g',2105,0,'20141013__4__g_7_cje3xepat_646093',''),(3,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877646,7,'video','/img/people/4.png','g',2106,0,'20141013__4__g_7_cje3xepat_646093',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877646,7,'video','/img/people/4.png','g',2107,0,'20141013__4__g_7_cje3xepat_646093',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415877646,7,'video','/img/people/4.png','g',2108,0,'20141013__4__g_7_cje3xepat_646093',''),(7,'chat','\0',4,'Andy Liu','dsdsa',1415934969,4,'text','/img/people/4.png','u',2109,0,'',''),(7,'chat','\0',4,'Andy Liu','daada',1415934972,4,'text','/img/people/4.png','u',2110,0,'',''),(7,'chat','\0',4,'Andy Liu','das',1415934976,4,'text','/img/people/4.png','u',2111,0,'',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415935663,11,'video','/img/people/4.png','g',2112,0,'20141014__4__g_11_x1jdlest7_663738',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415935663,11,'video','/img/people/4.png','g',2113,0,'20141014__4__g_11_x1jdlest7_663738',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415935663,11,'video','/img/people/4.png','g',2114,0,'20141014__4__g_11_x1jdlest7_663738',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415935663,11,'video','/img/people/4.png','g',2115,0,'20141014__4__g_11_x1jdlest7_663738',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415935663,11,'video','/img/people/4.png','g',2116,0,'20141014__4__g_11_x1jdlest7_663738',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936251,11,'video','/img/people/4.png','g',2117,0,'20141014__4__g_11_hu4v5tw8i_251151',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936251,11,'video','/img/people/4.png','g',2118,0,'20141014__4__g_11_hu4v5tw8i_251151',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936251,11,'video','/img/people/4.png','g',2119,0,'20141014__4__g_11_hu4v5tw8i_251151',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936251,11,'video','/img/people/4.png','g',2120,0,'20141014__4__g_11_hu4v5tw8i_251151',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936251,11,'video','/img/people/4.png','g',2121,0,'20141014__4__g_11_hu4v5tw8i_251151',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936279,11,'video','/img/people/4.png','g',2122,0,'20141014__4__g_11_6uelyo9rx_279295',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936279,11,'video','/img/people/4.png','g',2123,0,'20141014__4__g_11_6uelyo9rx_279295',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936279,11,'video','/img/people/4.png','g',2124,0,'20141014__4__g_11_6uelyo9rx_279295',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936279,11,'video','/img/people/4.png','g',2125,0,'20141014__4__g_11_6uelyo9rx_279295',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936279,11,'video','/img/people/4.png','g',2126,0,'20141014__4__g_11_6uelyo9rx_279295',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936428,11,'video','/img/people/4.png','g',2127,0,'20141014__4__g_11_aj05qvxb8_428353',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936428,11,'video','/img/people/4.png','g',2128,0,'20141014__4__g_11_aj05qvxb8_428353',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936428,11,'video','/img/people/4.png','g',2129,0,'20141014__4__g_11_aj05qvxb8_428353',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936428,11,'video','/img/people/4.png','g',2130,0,'20141014__4__g_11_aj05qvxb8_428353',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936428,11,'video','/img/people/4.png','g',2131,0,'20141014__4__g_11_aj05qvxb8_428353',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936473,11,'video','/img/people/4.png','g',2132,0,'20141014__4__g_11_xm6nk066e_473725',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936473,11,'video','/img/people/4.png','g',2133,0,'20141014__4__g_11_xm6nk066e_473725',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936473,11,'video','/img/people/4.png','g',2134,0,'20141014__4__g_11_xm6nk066e_473725',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936473,11,'video','/img/people/4.png','g',2135,0,'20141014__4__g_11_xm6nk066e_473725',''),(6,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415936473,11,'video','/img/people/4.png','g',2136,0,'20141014__4__g_11_xm6nk066e_473725',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415937548,10,'video','/img/people/4.png','u',2137,0,'20141014__4__u_10_4e5ofceac_548139',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415937566,10,'video','/img/people/4.png','u',2138,0,'20141014__4__u_10_1sq14h6ub_566063',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415937641,10,'video','/img/people/4.png','u',2139,0,'20141014__4__u_10_86u1dmuup_641429',''),(10,'friend','\0',4,'Andy Liu','',1415937724,10,'request','/img/people/4.png','',2140,0,'',''),(4,'friend','\0',10,'Saddam','Saddam ',1415937756,10,'request-reply','/img/people/sdm.png','',2141,0,'',''),(10,'friend','\0',4,'Andy Liu','',1415937862,10,'request','/img/people/4.png','',2142,0,'',''),(10,'friend','\0',4,'Andy Liu','',1415938006,10,'request','/img/people/4.png','',2143,0,'',''),(4,'friend','\0',10,'Saddam','',1415938043,4,'request','/img/people/sdm.png','',2144,0,'',''),(4,'friend','\0',10,'Saddam','',1415938256,4,'request','/img/people/sdm.png','',2145,0,'',''),(4,'friend','\0',10,'Saddam','',1415938297,4,'request','/img/people/sdm.png','',2146,0,'',''),(4,'friend','\0',10,'Saddam','',1415938394,4,'request','/img/people/sdm.png','',2147,0,'',''),(10,'friend','\0',4,'Andy Liu','Andy Liu ',1415938702,4,'request-reply','/img/people/4.png','',2148,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415950114,10,'video','/img/people/4.png','u',2149,0,'20141014__4__u_10_l9bxizher_114525',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415950193,10,'video','/img/people/4.png','u',2150,0,'20141014__4__u_10_ymfgwhb3w_186325',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1415950319,10,'video','/img/people/4.png','u',2151,0,'20141014__4__u_10_967g00zsn_319830',''),(10,'chat','\0',4,'Andy Liu','eweqw',1415952233,4,'text','/img/people/4.png','u',2152,0,'',''),(4,'chat','\0',10,'Saddam','fdsadf',1415953836,10,'text','/img/people/sdm.png','u',2153,0,'',''),(4,'chat','\0',10,'Saddam','dsad',1415953873,10,'text','/img/people/sdm.png','u',2154,0,'',''),(4,'chat','\0',10,'Saddam','sdsa',1415954020,10,'text','/img/people/sdm.png','u',2155,0,'',''),(4,'chat','\0',10,'Saddam','dfsa',1415954902,10,'text','/img/people/sdm.png','u',2156,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415954918,10,'text','/img/people/sdm.png','u',2157,0,'',''),(4,'chat','\0',10,'Saddam','fds',1415954923,10,'text','/img/people/sdm.png','u',2158,0,'',''),(4,'chat','\0',10,'Saddam','dfdsa',1415954929,10,'text','/img/people/sdm.png','u',2159,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415954948,10,'text','/img/people/sdm.png','u',2160,0,'',''),(10,'chat','\0',4,'Andy Liu','fdsaf',1415954958,4,'text','/img/people/4.png','u',2161,0,'',''),(4,'chat','\0',10,'Saddam','威锋网发',1415954998,10,'text','/img/people/sdm.png','u',2162,0,'',''),(4,'chat','\0',10,'Saddam','大师',1415955005,10,'text','/img/people/sdm.png','u',2163,0,'',''),(4,'chat','\0',10,'Saddam','呜呜呜',1415955399,10,'text','/img/people/sdm.png','u',2164,0,'',''),(4,'chat','\0',10,'Saddam','发生的',1415955411,10,'text','/img/people/sdm.png','u',2165,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415955697,10,'text','/img/people/sdm.png','u',2166,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415962877,10,'text','/img/people/sdm.png','u',2167,0,'',''),(4,'chat','\0',10,'Saddam','sdads',1415963073,10,'text','/img/people/sdm.png','u',2168,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963097,10,'text','/img/people/sdm.png','u',2169,0,'',''),(4,'chat','\0',10,'Saddam','fdsaf',1415963177,10,'text','/img/people/sdm.png','u',2170,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963190,10,'text','/img/people/sdm.png','u',2171,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963196,10,'text','/img/people/sdm.png','u',2172,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963464,10,'text','/img/people/sdm.png','u',2173,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963532,10,'text','/img/people/sdm.png','u',2174,0,'',''),(4,'chat','\0',10,'Saddam','sd',1415963543,10,'text','/img/people/sdm.png','u',2175,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963580,10,'text','/img/people/sdm.png','u',2176,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963586,10,'text','/img/people/sdm.png','u',2177,0,'',''),(4,'chat','\0',10,'Saddam','fds',1415963595,10,'text','/img/people/sdm.png','u',2178,0,'',''),(4,'chat','\0',10,'Saddam','fdsa',1415963599,10,'text','/img/people/sdm.png','u',2179,0,'',''),(10,'chat','\0',4,'Andy Liu','fdsafda',1415963721,4,'text','/img/people/4.png','u',2180,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416187076,38,'video','/img/people/4.png','g',2181,0,'20141017__4__g_38_ivwxg7i00_076032',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416187076,38,'video','/img/people/4.png','g',2182,0,'20141017__4__g_38_ivwxg7i00_076032',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416193630,10,'video','/img/people/4.png','u',2183,0,'20141017__4__u_10_mz2j8alqv_630628',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416194251,10,'video','/img/people/4.png','u',2184,0,'20141017__4__u_10_2ivdk9uo8_251065',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416194364,10,'video','/img/people/4.png','u',2185,0,'20141017__4__u_10_p3v92mkaf_364186',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416194418,10,'video','/img/people/4.png','u',2186,0,'20141017__4__u_10_td0um00q4_418551',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416194544,10,'video','/img/people/4.png','u',2187,0,'20141017__4__u_10_lxeis3gfz_544648',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416197664,10,'video','/img/people/4.png','u',2188,0,'20141017__4__u_10_f2u931bzm_664617',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416205491,10,'video','/img/people/4.png','u',2189,0,'20141017__4__u_10_96irrujxk_491124',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416216675,10,'video','/img/people/4.png','u',2190,0,'20141017__4__u_10_603y1iwpk_675223',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416217117,10,'video','/img/people/4.png','u',2191,0,'20141017__4__u_10_yg7c8ond0_117779',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416217398,10,'video','/img/people/4.png','u',2192,0,'20141017__4__u_10_vy519xtix_398565',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416217409,10,'video','/img/people/4.png','u',2193,0,'20141017__4__u_10_gajoekxde_409052',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416218401,10,'video','/img/people/4.png','u',2194,0,'20141017__4__u_10_39qidswln_401914',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416218477,10,'video','/img/people/4.png','u',2195,0,'20141017__4__u_10_hjh9eessf_477618',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416218497,10,'video','/img/people/4.png','u',2196,0,'20141017__4__u_10_r59jrr6yu_497564',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416218572,10,'video','/img/people/4.png','u',2197,0,'20141017__4__u_10_a0ioef332_572861',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416218966,10,'video','/img/people/4.png','u',2198,0,'20141017__4__u_10_ql098ynfb_966054',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416219430,10,'video','/img/people/4.png','u',2199,0,'20141017__4__u_10_dri4av5n9_430784',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416219478,4,'pic','/img/people/4.png','u',2200,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416219511,4,'pic','/img/people/4.png','u',2201,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416219669,4,'pic','/img/people/4.png','u',2202,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416219708,4,'pic','/img/people/4.png','u',2203,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416219933,4,'pic','/img/people/4.png','u',2204,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416220103,4,'pic','/img/people/4.png','u',2205,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416222112,4,'pic','/img/people/4.png','u',2206,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416222475,4,'pic','/img/people/4.png','u',2207,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416222476,4,'pic','/img/people/4.png','u',2208,408,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416222513,4,'pic','/img/people/4.png','u',2209,409,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416223354,4,'pic','/img/people/4.png','u',2210,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416223356,4,'pic','/img/people/4.png','u',2211,410,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416223372,4,'pic','/img/people/4.png','u',2212,411,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416223438,4,'pic','/img/people/4.png','u',2213,412,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416223626,4,'pic','/img/people/4.png','u',2214,413,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416223816,4,'pic','/img/people/4.png','u',2215,414,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416224172,4,'pic','/img/people/4.png','u',2216,415,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416224589,4,'pic','/img/people/4.png','u',2217,416,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416224629,4,'pic','/img/people/4.png','u',2218,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416224734,4,'pic','/img/people/4.png','u',2219,417,'',''),(10,'chat','\0',4,'Andy Liu','wfe',1416225001,4,'text','/img/people/4.png','u',2220,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416226121,10,'video','/img/people/4.png','u',2221,0,'20141017__4__u_10_w8fs49wjn_121091',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416226138,10,'video','/img/people/4.png','u',2222,0,'20141017__4__u_10_a48x59gry_138938',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416226170,4,'pic','/img/people/4.png','u',2223,426,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416226202,4,'pic','/img/people/4.png','u',2224,427,'',''),(4,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1416226395,4,'video','/img/people/sdm.png','u',2225,0,'20141017__10__u_4_kdr564ufd_395909',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416226639,4,'pic','/img/people/4.png','u',2226,428,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416226798,4,'pic','/img/people/4.png','u',2227,429,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416227200,10,'video','/img/people/4.png','u',2228,0,'20141017__4__u_10_hvj8ooxir_200812',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227215,4,'pic','/img/people/4.png','u',2229,430,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227485,4,'pic','/img/people/4.png','u',2230,431,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227629,4,'pic','/img/people/4.png','u',2231,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227773,4,'pic','/img/people/4.png','u',2232,433,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227903,4,'pic','/img/people/4.png','u',2233,434,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227958,4,'pic','/img/people/4.png','u',2234,435,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416227979,4,'pic','/img/people/4.png','u',2235,436,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228014,4,'pic','/img/people/4.png','u',2236,437,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228092,4,'pic','/img/people/4.png','u',2237,438,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228301,4,'pic','/img/people/4.png','u',2238,439,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228527,4,'pic','/img/people/4.png','u',2239,440,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228692,4,'pic','/img/people/4.png','u',2240,441,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228775,4,'pic','/img/people/4.png','u',2241,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228775,4,'pic','/img/people/4.png','u',2242,442,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228800,4,'pic','/img/people/4.png','u',2243,443,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228828,4,'pic','/img/people/4.png','u',2244,444,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416228851,4,'pic','/img/people/4.png','u',2245,445,'',''),(4,'chat','\0',10,'Saddam','Saddam 发送您一张图片',1416229000,10,'pic','/img/people/sdm.png','u',2246,446,'',''),(10,'chat','\0',4,'Andy Liu','dsfadsa',1416230652,4,'text','/img/people/4.png','u',2247,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416230815,4,'file','/img/people/4.png','u',2248,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416230824,4,'file','/img/people/4.png','u',2249,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416230859,4,'file','/img/people/4.png','u',2250,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416230928,4,'file','/img/people/4.png','u',2251,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416230998,4,'file','/img/people/4.png','u',2252,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416231208,4,'file','/img/people/4.png','u',2253,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416231317,4,'file','/img/people/4.png','u',2254,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416231488,4,'file','/img/people/4.png','u',2255,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416231752,4,'file','/img/people/4.png','u',2256,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416231962,4,'file','/img/people/4.png','u',2257,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416232035,4,'file','/img/people/4.png','u',2258,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416232099,4,'file','/img/people/4.png','u',2259,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416232131,4,'file','/img/people/4.png','u',2260,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232199,4,'pic','/img/people/4.png','u',2261,447,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232218,4,'pic','/img/people/4.png','u',2262,448,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232252,4,'pic','/img/people/4.png','u',2263,449,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232284,4,'pic','/img/people/4.png','u',2264,450,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232300,4,'pic','/img/people/4.png','u',2265,451,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232375,4,'pic','/img/people/4.png','u',2266,452,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232389,4,'pic','/img/people/4.png','u',2267,453,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送您一张图片',1416232403,4,'pic','/img/people/4.png','u',2268,454,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416232417,4,'file','/img/people/4.png','u',2269,0,'',''),(4,'chat','\0',10,'Saddam','Saddam 发送给您一个文件',1416232483,10,'file','/img/people/sdm.png','u',2270,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您一个文件',1416232526,4,'file','/img/people/4.png','u',2271,0,'',''),(4,'chat','\0',10,'Saddam','Saddam 发送给您一个文件',1416232717,10,'file','/img/people/sdm.png','u',2272,0,'',''),(10,'share','',4,'Andy Liu','',1416274592,10,'screen','/img/people/4.png','u',2273,0,'20141018__4__u_10_ch3wyxl2n_591951',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416274594,10,'screen','/img/people/4.png','u',2274,0,'20141018__4__u_10_ch3wyxl2n_591951',''),(10,'share','',4,'Andy Liu','',1416274632,10,'screen','/img/people/4.png','u',2275,0,'20141018__4__u_10_iaemix62l_632613',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416274632,10,'screen','/img/people/4.png','u',2276,0,'20141018__4__u_10_iaemix62l_632613',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416277034,10,'video','/img/people/4.png','u',2277,0,'20141018__4__u_10_twfojcwfh_034498',''),(10,'share','',4,'Andy Liu','',1416303240,10,'screen','/img/people/4.png','u',2278,0,'20141018__4__u_10_ufzlyxaqq_240508',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416303242,10,'screen','/img/people/4.png','u',2279,0,'20141018__4__u_10_ufzlyxaqq_240508',''),(10,'share','',4,'Andy Liu','',1416303413,10,'screen','/img/people/4.png','u',2280,0,'20141018__4__u_10_6ujjc19zm_413149',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416303415,10,'screen','/img/people/4.png','u',2281,0,'20141018__4__u_10_6ujjc19zm_413149',''),(10,'share','',4,'Andy Liu','',1416304033,10,'screen','/img/people/4.png','u',2282,0,'20141018__4__u_10_sq12ezw46_033888',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304034,10,'screen','/img/people/4.png','u',2283,0,'20141018__4__u_10_sq12ezw46_033888',''),(10,'share','',4,'Andy Liu','',1416304368,10,'screen','/img/people/4.png','u',2284,0,'20141018__4__u_10_zbflwlwb0_368820',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304371,10,'screen','/img/people/4.png','u',2285,0,'20141018__4__u_10_zbflwlwb0_368820',''),(10,'share','',4,'Andy Liu','',1416304545,10,'screen','/img/people/4.png','u',2286,0,'20141018__4__u_10_72rbmmqp8_545647',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304547,10,'screen','/img/people/4.png','u',2287,0,'20141018__4__u_10_72rbmmqp8_545647',''),(10,'share','',4,'Andy Liu','',1416304568,10,'screen','/img/people/4.png','u',2288,0,'20141018__4__u_10_5rnxwfs82_568523',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304568,10,'screen','/img/people/4.png','u',2289,0,'20141018__4__u_10_5rnxwfs82_568523',''),(10,'share','',4,'Andy Liu','',1416304638,10,'screen','/img/people/4.png','u',2290,0,'20141018__4__u_10_3664tsga8_638891',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304639,10,'screen','/img/people/4.png','u',2291,0,'20141018__4__u_10_3664tsga8_638891',''),(10,'share','',4,'Andy Liu','',1416304764,10,'screen','/img/people/4.png','u',2292,0,'20141018__4__u_10_6kxwittuw_764557',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304766,10,'screen','/img/people/4.png','u',2293,0,'20141018__4__u_10_6kxwittuw_764557',''),(10,'share','',4,'Andy Liu','',1416304855,10,'screen','/img/people/4.png','u',2294,0,'20141018__4__u_10_9uuygq8l0_855401',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416304855,10,'screen','/img/people/4.png','u',2295,0,'20141018__4__u_10_9uuygq8l0_855401',''),(10,'share','',4,'Andy Liu','',1416305614,10,'screen','/img/people/4.png','u',2296,0,'20141018__4__u_10_78wzknd6p_614126',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416305616,10,'screen','/img/people/4.png','u',2297,0,'20141018__4__u_10_78wzknd6p_614126',''),(10,'share','',4,'Andy Liu','',1416305647,10,'screen','/img/people/4.png','u',2298,0,'20141018__4__u_10_b6qt7j9mt_647414',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416305647,10,'screen','/img/people/4.png','u',2299,0,'20141018__4__u_10_b6qt7j9mt_647414',''),(10,'share','',4,'Andy Liu','',1416305783,10,'screen','/img/people/4.png','u',2300,0,'20141018__4__u_10_ha6x7ugh6_783447',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416305783,10,'screen','/img/people/4.png','u',2301,0,'20141018__4__u_10_ha6x7ugh6_783447',''),(4,'chat','\0',10,'Saddam','Saddam 发送给您视频请求',1416306178,4,'video','/img/people/sdm.png','u',2302,0,'20141018__10__u_4_sptczxozt_176961',''),(10,'share','',4,'Andy Liu','',1416306259,10,'screen','/img/people/4.png','u',2303,0,'20141018__4__u_10_1tg82j510_259299',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306259,10,'screen','/img/people/4.png','u',2304,0,'20141018__4__u_10_1tg82j510_259299',''),(10,'share','',4,'Andy Liu','',1416306369,10,'screen','/img/people/4.png','u',2305,0,'20141018__4__u_10_qj7b6tsbo_369908',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306370,10,'screen','/img/people/4.png','u',2306,0,'20141018__4__u_10_qj7b6tsbo_369908',''),(10,'share','',4,'Andy Liu','',1416306483,10,'screen','/img/people/4.png','u',2307,0,'20141018__4__u_10_my70hl0xe_483910',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306487,10,'screen','/img/people/4.png','u',2308,0,'20141018__4__u_10_my70hl0xe_483910',''),(10,'share','',4,'Andy Liu','',1416306528,10,'screen','/img/people/4.png','u',2309,0,'20141018__4__u_10_gvclssxsm_528543',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306528,10,'screen','/img/people/4.png','u',2310,0,'20141018__4__u_10_gvclssxsm_528543',''),(10,'share','',4,'Andy Liu','',1416306554,10,'screen','/img/people/4.png','u',2311,0,'20141018__4__u_10_gtjuwkjg8_554268',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306554,10,'screen','/img/people/4.png','u',2312,0,'20141018__4__u_10_gtjuwkjg8_554268',''),(10,'share','',4,'Andy Liu','',1416306632,10,'screen','/img/people/4.png','u',2313,0,'20141018__4__u_10_zumdh7xmv_632771',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306633,10,'screen','/img/people/4.png','u',2314,0,'20141018__4__u_10_zumdh7xmv_632771',''),(10,'share','',4,'Andy Liu','',1416306656,10,'screen','/img/people/4.png','u',2315,0,'20141018__4__u_10_020h6ot3s_656738',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306656,10,'screen','/img/people/4.png','u',2316,0,'20141018__4__u_10_020h6ot3s_656738',''),(10,'share','',4,'Andy Liu','',1416306855,10,'screen','/img/people/4.png','u',2317,0,'20141018__4__u_10_z0r833d2o_855435',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416306855,10,'screen','/img/people/4.png','u',2318,0,'20141018__4__u_10_z0r833d2o_855435',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416360365,10,'video','/img/people/4.png','u',2319,0,'20141019__4__u_10_goiz4srn5_365761',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416360396,10,'video','/img/people/4.png','u',2320,0,'20141019__4__u_10_b72uy49go_396149',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416360414,10,'video','/img/people/4.png','u',2321,0,'20141019__4__u_10_o74qib1sc_414213',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416360438,10,'video','/img/people/4.png','u',2322,0,'20141019__4__u_10_idknq91b3_438046',''),(10,'share','',4,'Andy Liu','',1416360488,10,'screen','/img/people/4.png','u',2323,0,'20141019__4__u_10_p44xmln64_488521',''),(10,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1416360489,10,'screen','/img/people/4.png','u',2324,0,'20141019__4__u_10_p44xmln64_488521',''),(4,'share','',10,'Saddam','',1416360502,4,'screen','/img/people/sdm.png','u',2325,0,'20141019__10__u_4_x0f6j9eg7_502609',''),(4,'share','',10,'Saddam','Saddam is inviting you for desktop sharing',1416360502,4,'screen','/img/people/sdm.png','u',2326,0,'20141019__10__u_4_x0f6j9eg7_502609',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416386172,38,'video','/img/people/4.png','g',2327,0,'20141019__4__g_38_jtbmwgzur_172353',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416386172,38,'video','/img/people/4.png','g',2328,0,'20141019__4__g_38_jtbmwgzur_172353',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416386198,38,'video','/img/people/4.png','g',2329,0,'20141019__4__g_38_nlmvhzcf8_198793',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416386198,38,'video','/img/people/4.png','g',2330,0,'20141019__4__g_38_nlmvhzcf8_198793',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416392385,38,'video','/img/people/4.png','g',2331,0,'20141019__4__g_38_83vwjkxep_383261',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416392385,38,'video','/img/people/4.png','g',2332,0,'20141019__4__g_38_83vwjkxep_383261',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416559057,69,'video','/img/unknown_user.png','g',2333,0,'20141021__276__g_69_2m4fns8ar_057598',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416559057,69,'video','/img/unknown_user.png','g',2334,0,'20141021__276__g_69_2m4fns8ar_057598',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416559580,69,'video','/img/unknown_user.png','g',2335,0,'20141021__276__g_69_z61hl7f4i_579479',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416559580,69,'video','/img/unknown_user.png','g',2336,0,'20141021__276__g_69_z61hl7f4i_579479',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561488,69,'video','/img/unknown_user.png','g',2337,0,'20141021__276__g_69_65e307s2z_487904',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561488,69,'video','/img/unknown_user.png','g',2338,0,'20141021__276__g_69_65e307s2z_487904',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561520,69,'video','/img/unknown_user.png','g',2339,0,'20141021__276__g_69_dkoango6z_520170',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561520,69,'video','/img/unknown_user.png','g',2340,0,'20141021__276__g_69_dkoango6z_520170',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561637,69,'video','/img/unknown_user.png','g',2341,0,'20141021__276__g_69_w4jrqr6zf_637330',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561637,69,'video','/img/unknown_user.png','g',2342,0,'20141021__276__g_69_w4jrqr6zf_637330',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561659,69,'video','/img/unknown_user.png','g',2343,0,'20141021__276__g_69_kariqg2lv_659258',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561659,69,'video','/img/unknown_user.png','g',2344,0,'20141021__276__g_69_kariqg2lv_659258',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561689,69,'video','/img/unknown_user.png','g',2345,0,'20141021__276__g_69_mopa0chr5_689577',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561689,69,'video','/img/unknown_user.png','g',2346,0,'20141021__276__g_69_mopa0chr5_689577',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561717,69,'video','/img/unknown_user.png','g',2347,0,'20141021__276__g_69_85zcgjhvc_717919',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561717,69,'video','/img/unknown_user.png','g',2348,0,'20141021__276__g_69_85zcgjhvc_717919',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561720,69,'video','/img/unknown_user.png','g',2349,0,'20141021__276__g_69_we499tjbv_720441',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416561720,69,'video','/img/unknown_user.png','g',2350,0,'20141021__276__g_69_we499tjbv_720441',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562106,71,'video','/img/people/4.png','g',2351,0,'20141021__4__g_71_2a53kxcg0_106711',''),(277,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562106,71,'video','/img/people/4.png','g',2352,0,'20141021__4__g_71_2a53kxcg0_106711',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562129,71,'video','/img/people/4.png','g',2353,0,'20141021__4__g_71_52vvy63gf_129577',''),(277,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562129,71,'video','/img/people/4.png','g',2354,0,'20141021__4__g_71_52vvy63gf_129577',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562186,71,'video','/img/people/4.png','g',2355,0,'20141021__4__g_71_4ztfo67ae_186430',''),(277,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562186,71,'video','/img/people/4.png','g',2356,0,'20141021__4__g_71_4ztfo67ae_186430',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416562236,69,'video','/img/unknown_user.png','g',2357,0,'20141021__276__g_69_cj9pgs1k1_236522',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416562236,69,'video','/img/unknown_user.png','g',2358,0,'20141021__276__g_69_cj9pgs1k1_236522',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416562250,69,'video','/img/unknown_user.png','g',2359,0,'20141021__276__g_69_n2ioar40y_250238',''),(276,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416562250,69,'video','/img/unknown_user.png','g',2360,0,'20141021__276__g_69_n2ioar40y_250238',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562271,71,'video','/img/people/4.png','g',2361,0,'20141021__4__g_71_dqpl2vn47_271642',''),(277,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416562271,71,'video','/img/people/4.png','g',2362,0,'20141021__4__g_71_dqpl2vn47_271642',''),(4,'chat','\0',276,'weheh','weheh 发送给您视频请求',1416562283,69,'video','/img/unknown_user.png','g',2363,0,'20141021__276__g_69_pvolf2gcb_283438',''),(276,'chat','',276,'weheh','weheh 发送给您视频请求',1416562283,69,'video','/img/unknown_user.png','g',2364,0,'20141021__276__g_69_pvolf2gcb_283438',''),(4,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1416562665,72,'video','/img/people/lsf.jpg','g',2365,0,'20141021__5__g_72_hs444e6ob_665184',''),(10,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1416562665,72,'video','/img/people/lsf.jpg','g',2366,0,'20141021__5__g_72_hs444e6ob_665184',''),(3,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1416562665,72,'video','/img/people/lsf.jpg','g',2367,0,'20141021__5__g_72_hs444e6ob_665184',''),(5,'chat','\0',5,'Roosevelt','Roosevelt 发送给您视频请求',1416562665,72,'video','/img/people/lsf.jpg','g',2368,0,'20141021__5__g_72_hs444e6ob_665184',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416563003,67,'video','/img/people/4.png','g',2369,0,'20141021__4__g_67_ppiwpkdsf_003282',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416563003,67,'video','/img/people/4.png','g',2370,0,'20141021__4__g_67_ppiwpkdsf_003282',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416563909,67,'video','/img/people/4.png','g',2371,0,'20141021__4__g_67_bc83l94go_909295',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416563909,67,'video','/img/people/4.png','g',2372,0,'20141021__4__g_67_bc83l94go_909295',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416563998,67,'video','/img/people/4.png','g',2373,0,'20141021__4__g_67_h34glwyyi_998323',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416563998,67,'video','/img/people/4.png','g',2374,0,'20141021__4__g_67_h34glwyyi_998323',''),(4,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564260,67,'video','/img/unknown_user.png','g',2375,0,'20141021__275__g_67_ums4xvixi_260545',''),(275,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564260,67,'video','/img/unknown_user.png','g',2376,0,'20141021__275__g_67_ums4xvixi_260545',''),(4,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564376,67,'video','/img/unknown_user.png','g',2377,0,'20141021__275__g_67_kaprn1z6a_376259',''),(275,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564376,67,'video','/img/unknown_user.png','g',2378,0,'20141021__275__g_67_kaprn1z6a_376259',''),(4,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564706,67,'video','/img/unknown_user.png','g',2379,0,'20141021__275__g_67_0n5et0eyu_706594',''),(275,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564706,67,'video','/img/unknown_user.png','g',2380,0,'20141021__275__g_67_0n5et0eyu_706594',''),(4,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564819,67,'video','/img/unknown_user.png','g',2381,0,'20141021__275__g_67_7zoyju2xa_819460',''),(275,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564819,67,'video','/img/unknown_user.png','g',2382,0,'20141021__275__g_67_7zoyju2xa_819460',''),(4,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564855,67,'video','/img/unknown_user.png','g',2383,0,'20141021__275__g_67_hmc40s5gg_855769',''),(275,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416564855,67,'video','/img/unknown_user.png','g',2384,0,'20141021__275__g_67_hmc40s5gg_855769',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416565316,67,'video','/img/people/4.png','g',2385,0,'20141021__4__g_67_w5irkt127_958081',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416565316,67,'video','/img/people/4.png','g',2386,0,'20141021__4__g_67_w5irkt127_958081',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416565321,67,'video','/img/people/4.png','g',2387,0,'20141021__4__g_67_dhijo3jpp_321404',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416565321,67,'video','/img/people/4.png','g',2388,0,'20141021__4__g_67_dhijo3jpp_321404',''),(4,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416565337,67,'video','/img/unknown_user.png','g',2389,0,'20141021__275__g_67_yijn2vepj_337639',''),(275,'chat','\0',275,'beihai','beihai 发送给您视频请求',1416565337,67,'video','/img/unknown_user.png','g',2390,0,'20141021__275__g_67_yijn2vepj_337639',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416567494,67,'video','/img/people/4.png','g',2391,0,'20141021__4__g_67_niolptm5u_494471',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416567494,67,'video','/img/people/4.png','g',2392,0,'20141021__4__g_67_niolptm5u_494471',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416567520,67,'video','/img/people/4.png','g',2393,0,'20141021__4__g_67_lal2ogmcm_520881',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416567520,67,'video','/img/people/4.png','g',2394,0,'20141021__4__g_67_lal2ogmcm_520881',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416568433,67,'video','/img/people/4.png','g',2395,0,'20141021__4__g_67_v2nz28scw_433324',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416568433,67,'video','/img/people/4.png','g',2396,0,'20141021__4__g_67_v2nz28scw_433324',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416568442,67,'video','/img/people/4.png','g',2397,0,'20141021__4__g_67_zwmle1z33_442680',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416568442,67,'video','/img/people/4.png','g',2398,0,'20141021__4__g_67_zwmle1z33_442680',''),(4,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416568470,67,'video','/img/people/4.png','g',2399,0,'20141021__4__g_67_ityww46nm_470814',''),(275,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416568470,67,'video','/img/people/4.png','g',2400,0,'20141021__4__g_67_ityww46nm_470814',''),(282,'chat','\0',281,'ry_w_641f62cf91e8d66f','windwos',1416915686,281,'text','/img/unknown_user.png','u',2401,0,'',''),(282,'chat','\0',285,'ry_z_87e3fab8c6ccddb8','www',1416966762,285,'text','/img/unknown_user.png','u',2402,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsafd',1416966905,0,'text','/img/unknown_user.png','u',2403,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsfds',1416966966,0,'text','/img/unknown_user.png','u',2404,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsafd',1416966976,286,'text','/img/unknown_user.png','u',2405,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsfdsa',1416967016,286,'text','/img/unknown_user.png','u',2406,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsafdsa',1416967227,286,'text','/img/unknown_user.png','u',2407,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fadsfa',1416967349,286,'text','/img/unknown_user.png','u',2408,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsa',1416967365,286,'text','/img/unknown_user.png','u',2409,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsaf',1416967565,286,'text','/img/unknown_user.png','u',2410,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsa',1416967656,286,'text','/img/unknown_user.png','u',2411,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','fdsadf',1416967740,286,'text','/img/unknown_user.png','u',2412,0,'',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','ry_i_a82a62192284e365 发送给您视频请求',1416967768,282,'video','/img/unknown_user.png','u',2413,0,'20141026__286__u_282_gd4ren8k2_768905',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','ry_i_a82a62192284e365 发送给您视频请求',1416967799,282,'video','/img/unknown_user.png','u',2414,0,'20141026__286__u_282_gdxvv2odw_799894',''),(282,'chat','\0',286,'ry_i_a82a62192284e365','ry_i_a82a62192284e365 发送给您视频请求',1416967837,282,'video','/img/unknown_user.png','u',2415,0,'20141026__286__u_282_0lujnwg3x_837580',''),(5,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416967892,5,'video','/img/people/4.png','u',2416,0,'20141026__4__u_5_ad71gszzj_892363',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','fdsf',1416968934,288,'text','/img/unknown_user.png','u',2417,0,'',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','fdsa',1416968953,288,'text','/img/unknown_user.png','u',2418,0,'',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','fdsa',1416968963,288,'text','/img/unknown_user.png','u',2419,0,'',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','fdsfa',1416968972,288,'text','/img/unknown_user.png','u',2420,0,'',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','ry_u_8086068991a3b887 发送给您视频请求',1416968979,282,'video','/img/unknown_user.png','u',2421,0,'20141026__288__u_282_kgglvmsj3_978956',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','ry_u_8086068991a3b887 发送给您视频请求',1416969174,282,'video','/img/unknown_user.png','u',2422,0,'20141026__288__u_282_q5na48h42_174249',''),(282,'chat','\0',288,'ry_u_8086068991a3b887','ry_u_8086068991a3b887 发送给您视频请求',1416969543,282,'video','/img/unknown_user.png','u',2423,0,'20141026__288__u_282_wwb6y5iyf_542197',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','fdsa',1416970490,0,'text','/img/unknown_user.png','u',2424,0,'',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','fdsa',1416970510,297,'text','/img/unknown_user.png','u',2425,0,'',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','fdas',1416970511,297,'text','/img/unknown_user.png','u',2426,0,'',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','fdsa',1416970516,297,'text','/img/unknown_user.png','u',2427,0,'',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','fdsafds',1416970526,297,'text','/img/unknown_user.png','u',2428,0,'',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','ry_y_1008855e885ffe4b 发送给您视频请求',1416970533,282,'video','/img/unknown_user.png','u',2429,0,'20141026__297__u_282_f0dpplavz_533702',''),(282,'chat','\0',297,'ry_y_1008855e885ffe4b','ry_y_1008855e885ffe4b 发送给您视频请求',1416970578,282,'video','/img/unknown_user.png','u',2430,0,'20141026__297__u_282_uijbr4k4d_578301',''),(282,'chat','\0',298,'ry_7_5a5f677f0037d7be','ry_7_5a5f677f0037d7be 发送给您视频请求',1416970607,282,'video','/img/unknown_user.png','u',2431,0,'20141026__NaN__u_282_eb7f1ei17_607772',''),(282,'chat','\0',298,'ry_7_5a5f677f0037d7be','ry_7_5a5f677f0037d7be 发送给您视频请求',1416972027,282,'video','/img/unknown_user.png','u',2432,0,'20141026__298__u_282_hlz98mize_027141',''),(282,'chat','\0',298,'ry_7_5a5f677f0037d7be','fdsafda',1416972091,298,'text','/img/unknown_user.png','u',2433,0,'',''),(282,'chat','\0',298,'ry_7_5a5f677f0037d7be','ry_7_5a5f677f0037d7be 发送给您视频请求',1416972109,282,'video','/img/unknown_user.png','u',2434,0,'20141026__298__u_282_n871gyskm_109334',''),(282,'chat','\0',298,'ry_7_5a5f677f0037d7be','ry_7_5a5f677f0037d7be 发送给您视频请求',1416972216,282,'video','/img/unknown_user.png','u',2435,0,'20141026__298__u_282_5du5gh9h3_216395',''),(282,'chat','\0',298,'ry_7_5a5f677f0037d7be','ry_7_5a5f677f0037d7be 发送给您视频请求',1416972236,282,'video','/img/unknown_user.png','u',2436,0,'20141026__298__u_282_xaj7qrc9q_236289',''),(10,'chat','\0',4,'Andy Liu','星光大道',1416989411,4,'text','/img/people/4.png','u',2437,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416989720,10,'video','/img/people/4.png','u',2438,0,'20141026__4__u_10_unab67qgc_720100',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416989729,10,'video','/img/people/4.png','u',2439,0,'20141026__4__u_10_jhpmo2e2f_729094',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416989751,10,'video','/img/people/4.png','u',2440,0,'20141026__4__u_10_hdssxb0bx_751344',''),(10,'chat','\0',4,'Andy Liu','nxnnxn',1416989956,4,'text','/img/people/4.png','u',2441,0,'',''),(10,'chat','\0',4,'Andy Liu','nxnxnxn',1416989967,4,'text','/img/people/4.png','u',2442,0,'',''),(10,'chat','\0',4,'Andy Liu','人一',1416989974,4,'text','/img/people/4.png','u',2443,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416990071,10,'video','/img/people/4.png','u',2444,0,'20141026__4__u_10_qlm76ad3h_071376',''),(10,'chat','\0',4,'Andy Liu','Z7',1416990148,4,'text','/img/people/4.png','u',2445,0,'',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416990164,10,'video','/img/people/4.png','u',2446,0,'20141026__4__u_10_5szp17a5v_163947',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416990230,10,'video','/img/people/4.png','u',2447,0,'20141026__4__u_10_hd24mz2g1_230241',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416990458,10,'video','/img/people/4.png','u',2448,0,'20141026__4__u_10_vu270buwu_458032',''),(10,'chat','\0',4,'Andy Liu','Andy Liu 发送给您视频请求',1416990550,10,'video','/img/people/4.png','u',2449,0,'20141026__4__u_10_0t68cvzkf_550453','');
/*!40000 ALTER TABLE `v_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_open_app`
--

DROP TABLE IF EXISTS `v_open_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_open_app` (
  `app_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `app_secret` varchar(20) COLLATE utf8_bin NOT NULL,
  `redirect_uri` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_open_app`
--

LOCK TABLES `v_open_app` WRITE;
/*!40000 ALTER TABLE `v_open_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_open_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_openid_token`
--

DROP TABLE IF EXISTS `v_openid_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_openid_token` (
  `uid` bigint(20) NOT NULL,
  `atoken` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rtoken` varchar(48) COLLATE utf8_bin NOT NULL,
  `provider` varchar(20) COLLATE utf8_bin NOT NULL,
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `atime` int(11) NOT NULL,
  `isshow` bit(1) NOT NULL DEFAULT b'1',
  `defshow` bit(1) NOT NULL DEFAULT b'0',
  `expires_in` int(11) NOT NULL,
  `dateline` int(11) NOT NULL,
  `screen_name` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `profile_image_url` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sns_id` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `atoken_secret` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `uni` (`provider`,`sns_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_openid_token`
--

LOCK TABLES `v_openid_token` WRITE;
/*!40000 ALTER TABLE `v_openid_token` DISABLE KEYS */;
INSERT INTO `v_openid_token` VALUES (3,'2.005XAEHD0AJyyyd92930e3bc0whINo','','weibo',3,1410771892,'','\0',157679999,0,'animetaste2','http://tp3.sinaimg.cn/2852788230/50/40029353991/1','2852788230','unknown');
/*!40000 ALTER TABLE `v_openid_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_package`
--

DROP TABLE IF EXISTS `v_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_package` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `features_id` smallint(11) unsigned NOT NULL,
  `name` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `month_price` float unsigned NOT NULL,
  `year_price` float unsigned NOT NULL,
  `member_price` float unsigned NOT NULL,
  `member_count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_package`
--

LOCK TABLES `v_package` WRITE;
/*!40000 ALTER TABLE `v_package` DISABLE KEYS */;
INSERT INTO `v_package` VALUES (1,0,'',0,0,0,0);
/*!40000 ALTER TABLE `v_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_page`
--

DROP TABLE IF EXISTS `v_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` mediumtext COLLATE utf8_bin,
  `name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` varchar(1000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `privacy` tinyint(4) NOT NULL DEFAULT '1',
  `ctime` int(11) NOT NULL,
  `mtime` int(11) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `username` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `share_pwd` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_page`
--

LOCK TABLES `v_page` WRITE;
/*!40000 ALTER TABLE `v_page` DISABLE KEYS */;
INSERT INTO `v_page` VALUES (1,NULL,'wf','few',1,0,0,0,'',''),(2,NULL,'wf','few',1,0,0,0,'',''),(3,NULL,'xiaoming','wangjing',1,0,0,0,'',''),(4,NULL,'xiaoming','wangjing',1,0,0,0,'',''),(5,NULL,'xiaoming','wangjing',1,1405047722,1405047722,0,'',''),(6,NULL,'xiaoming','wangjing',1,1405049227,1405049227,0,'',''),(7,NULL,'xiaoming','wangjing',1,1405049364,1405049364,0,'',''),(8,NULL,'xiaoming','wangjing',1,1405049400,1405049400,0,'',''),(9,NULL,'xiaoming','wangjing',1,1405049490,1405049490,0,'',''),(10,NULL,'xiaoming','wangjing',1,1405049618,1405049618,0,'',''),(11,NULL,'xiaoming','wangjing',1,1405049975,1405049975,0,'',''),(12,NULL,'xiaoming','wangjing',1,1405050003,1405050003,0,'',''),(13,NULL,'xiaoming','wangjing',1,1405050019,1405050019,0,'',''),(14,NULL,'xiaoming','wangjing',1,1405050038,1405050038,0,'',''),(15,NULL,'xiaoming','wangjing',1,1405050522,1405050522,0,'',''),(16,NULL,'xiaoming','wangjing',1,1405050640,1405050640,0,'',''),(17,NULL,'xiaoming','wangjing',1,1405050701,1405050701,0,'',''),(18,NULL,'wwef','fwefw',1,1405051745,1405051745,0,'',''),(19,NULL,'fVe','fewfe',1,1405051814,1405051814,0,'',''),(20,NULL,'fdsa','fdsa',1,1405052123,1405052123,0,'',''),(21,NULL,'fdsa','afs',1,1405052310,1405052310,0,'',''),(22,NULL,'xiaoming','wangjing',1,1405053013,1405053013,0,'',''),(23,NULL,'xiaoming','wangjing',1,1405053163,1405053163,0,'',''),(24,NULL,'fdsa','fdsa',1,1405053424,1405053424,0,'',''),(25,NULL,'fdas','fas',1,1405053688,1405053688,0,'',''),(26,NULL,'fdsa','fdsa',1,1405053854,1405053854,0,'',''),(27,NULL,'fds','fdas',1,1405053919,1405053919,0,'',''),(28,NULL,'ww','www',1,1405055792,1405055792,0,'',''),(29,NULL,'3232','rewrw',1,1405056341,1405056341,0,'',''),(30,NULL,'为放大','fwe飞啊',1,1405057066,1405057066,0,'',''),(31,NULL,'fdas','fdsa',1,1405057567,1405057567,0,'',''),(32,NULL,'fdsa','fdas',1,1405057716,1405057716,0,'',''),(33,NULL,'www','www',1,1405057929,1405057929,0,'',''),(34,NULL,'fVas','fdas',1,1405058129,1405058129,0,'',''),(35,NULL,'fdsa','fads',1,1405058198,1405058198,0,'',''),(36,NULL,'fas','fdsaf',1,1405058443,1405058443,0,'',''),(37,NULL,'fdsafd','fdas',1,1405058829,1405058829,0,'',''),(38,NULL,'fda发大水fa','fdas',1,1405059131,1405059131,0,'',''),(39,NULL,'wfe','fdsafd',1,1405065351,1405065351,0,'',''),(40,NULL,'fdsa','fdsa',1,1405065558,1405065558,0,'',''),(41,NULL,'fdsa','fdsa',1,1405065804,1405065804,0,'',''),(42,NULL,'fdas','fdsa',1,1405065867,1405065867,0,'',''),(43,NULL,'fda','fdas',1,1405066027,1405066027,0,'',''),(44,NULL,'fdka','fasd',1,1405066139,1405066139,0,'',''),(45,NULL,'fdsafd','fdsafd',1,1405066483,1405066483,0,'',''),(46,NULL,'fdsa','fdsa',1,1405066521,1405066521,0,'',''),(47,NULL,'fdsa','fdsa',1,1405066724,1405066724,0,'',''),(48,NULL,'fdas','fdsa',1,1405066793,1405066793,0,'',''),(49,NULL,'fa','fdas',1,1405066942,1405066942,0,'',''),(50,NULL,'fdsa','fdsa',1,1405067323,1405067323,0,'',''),(51,NULL,'fdsa','fdsa',1,1405067378,1405067378,0,'',''),(52,NULL,'fda','fads',1,1405067422,1405067422,0,'',''),(53,NULL,'ffdas','fdsa',1,1405067520,1405067520,0,'',''),(54,NULL,'fdks','fdas',1,1405067689,1405067689,0,'',''),(55,NULL,'gfds','gfds',1,1405067991,1405067991,0,'',''),(56,NULL,'fdsa','fas',1,1405068137,1405068137,0,'',''),(57,NULL,'fda','fdas',1,1405068197,1405068197,0,'',''),(58,NULL,'ds','fdsa',1,1405068262,1405068262,0,'',''),(59,NULL,'fdsa','fdsa',1,1405068548,1405068548,0,'',''),(60,NULL,'fsa','fdas',1,1405069424,1405069424,0,'',''),(61,NULL,'fV大s','fdas',1,1405070565,1405070565,0,'',''),(62,NULL,'fdsa','fdsa',1,1405071275,1405071275,0,'',''),(63,NULL,'fVas','fdsa',1,1405071334,1405071334,0,'',''),(64,NULL,'fdsa','fdas',1,1405072394,1405072394,0,'',''),(65,NULL,'fVsa','fdsa',1,1405072510,1405072510,0,'',''),(66,NULL,'fdsaf','dasfdsa',1,1405072666,1405072666,0,'',''),(67,NULL,'fdsa','fdas',1,1405073629,1405073629,0,'',''),(68,NULL,'fdas','fdas',1,1405073727,1405073727,0,'',''),(69,NULL,'fdsaf','fdsaf',1,1405084142,1405084142,0,'',''),(70,NULL,'fdsa','fdsa',1,1405084573,1405084573,0,'',''),(71,NULL,'fda发大水','fdsa',1,1405084619,1405084619,0,'',''),(72,NULL,'fdsa','fdas',1,1405085195,1405085195,0,'',''),(73,NULL,'fdas','fdas',1,1405085268,1405085268,0,'',''),(74,NULL,'dfsa','fdas',1,1405085358,1405085358,0,'',''),(75,NULL,'fds','fdas',1,1405085423,1405085423,0,'',''),(76,NULL,'fdaa','fdsa',1,1405087302,1405087302,0,'',''),(77,NULL,'fda','fdsa',1,1405087354,1405087354,0,'',''),(78,NULL,'fds','fdsa',1,1405087376,1405087376,0,'',''),(79,NULL,'fds','fdsafdsaf',1,1405087401,1405087401,0,'',''),(80,NULL,'dfsa','fdsa',1,1405087484,1405087484,0,'',''),(81,NULL,'fdsa放大sa','fds',1,1405087512,1405087512,0,'',''),(82,NULL,'fdas','fdsa',1,1405087570,1405087570,0,'',''),(83,NULL,'www','wwferew',1,1405301475,1405301475,0,'',''),(84,NULL,'www','www',1,1405308971,1405308971,0,'',''),(85,NULL,'fdss','fdsa',1,1405308982,1405308982,0,'',''),(86,NULL,'ww','fdsaf',1,1405309359,1405309359,0,'',''),(87,NULL,'fdsa','fdsa',1,1405309536,1405309536,0,'',''),(88,NULL,'wfewf','ewefew',1,1405309697,1405309697,0,'',''),(89,NULL,'fdsa','fdsa',1,1405310006,1405310006,0,'',''),(90,NULL,'dfas','dsadfa',1,1405310464,1405310464,0,'',''),(91,NULL,'wwww','ddd',1,1405311692,1405311692,0,'',''),(92,NULL,'wfewf','eafdas',1,1405311742,1405311742,0,'',''),(93,NULL,'fdaa','fdsa',1,1405311786,1405311786,0,'',''),(94,NULL,'fdwfewf','fewffew',1,1405311877,1405311877,0,'',''),(95,NULL,'fwfw','ewfds',1,1405311991,1405311991,0,'',''),(96,NULL,'fdsafdsa','fdsafds',1,1405312080,1405312080,0,'',''),(97,NULL,'fdsf','fdas',1,1405312114,1405312114,0,'',''),(98,NULL,'fdsa','fdsa',1,1405324202,1405324202,0,'',''),(99,NULL,'fdsa','fdsa',1,1405324272,1405324272,0,'',''),(100,NULL,'www','www',1,1405324297,1405324297,0,'',''),(101,NULL,'fd','fdsa',1,1405324740,1405324740,0,'',''),(102,NULL,'fdw','few',1,1405324924,1405324924,0,'',''),(103,NULL,'daf','dfa',1,1405324935,1405324935,0,'',''),(104,NULL,'df','fafd',1,1405324947,1405324947,0,'',''),(105,NULL,'dfasf','dasfdas',1,1405324993,1405324993,0,'',''),(106,NULL,'fdasf','dsafs',1,1405325174,1405325174,0,'',''),(107,NULL,'fdsa','fdas',1,1405325212,1405325212,0,'',''),(108,NULL,'fdsa','fdsa',1,1405325312,1405325312,0,'',''),(109,NULL,'fdsaf','fdsa',1,1405325336,1405325336,0,'',''),(110,NULL,'fdsa','fdsa',1,1405325353,1405325353,0,'',''),(111,NULL,'wfwe','fewf',1,1405325502,1405325502,0,'',''),(112,NULL,'fdsafdsa','fdsafdsa',1,1405325879,1405325879,0,'',''),(113,NULL,'fdsa','fasd',1,1405325907,1405325907,0,'',''),(114,NULL,'fdsa','fdsa',1,1405325939,1405325939,0,'',''),(115,NULL,'fdaafda','fdsa',1,1405325987,1405325987,0,'',''),(116,NULL,'fdasfdas','fdasfds',1,1405326033,1405326033,0,'',''),(117,NULL,'fdsafd','safdsafds',1,1405326056,1405326056,0,'',''),(118,NULL,'fV大af','dsafs',1,1405326074,1405326074,0,'',''),(119,NULL,'fdsafd','sa',1,1405326554,1405326554,0,'',''),(120,NULL,'fdas','fdsa',1,1405326578,1405326578,0,'',''),(121,NULL,'fdsa','fdsa',1,1405326652,1405326652,0,'',''),(122,NULL,'sf','fds',1,1405326790,1405326790,0,'',''),(123,NULL,'fdklas发大水f\'d\'sa\'f\'d\'sa','fdsafdsa ',1,1405327806,1405327806,0,'',''),(124,NULL,'fdsaf','dsaf',1,1405328466,1405328466,0,'',''),(125,NULL,'fdaw','fewfew',1,1405329953,1405329953,0,'',''),(126,NULL,'fdsa','fdsa',1,1405330079,1405330079,0,'',''),(127,NULL,'wfe','fwew',1,1405330661,1405330661,0,'',''),(128,NULL,'fdaafdsa','fdsafdsa',1,1405330837,1405330837,0,'',''),(129,NULL,'fda发fasfdsa','fdsa',1,1405330925,1405330925,0,'',''),(130,NULL,'fasdf','fdsafdas',1,1405331057,1405331057,0,'',''),(131,NULL,'fdsa','fdsafdas',1,1405331127,1405331127,0,'',''),(132,NULL,'dwf','ewfew',1,1405331513,1405331513,0,'',''),(133,NULL,'www','www',1,1405332755,1405332755,0,'',''),(134,NULL,'fwew','fewfw',1,1405332856,1405332856,0,'',''),(135,NULL,'fdsafdsa','dfsafdsa',1,1405332982,1405332982,0,'',''),(136,NULL,'fdsafd','fdsafdas',1,1405333116,1405333116,0,'',''),(137,NULL,'vcx','vcxvz',1,1405333186,1405333186,0,'',''),(138,NULL,'fdaafdsa','fdsafdas',1,1405333332,1405333332,0,'',''),(139,NULL,'fdsaf','dsafds',1,1405334056,1405334056,0,'',''),(140,NULL,'dqq','dwq',1,1405335805,1405335805,0,'',''),(141,NULL,'wew','eww',1,1405404944,1405404944,0,'',''),(142,NULL,'fdsa','fdsa',1,1405680582,1405680582,0,'',''),(143,NULL,'fdsa','fdsa',1,1405681445,1405681445,0,'',''),(144,NULL,'fwew','wfew',1,1405905843,1405905843,0,'',''),(145,NULL,'ww','ww',1,1405906369,1405906369,0,'',''),(146,NULL,'efwq','fewq',1,1405906435,1405906435,0,'',''),(147,NULL,'www','www',1,1405906846,1405906846,0,'',''),(148,NULL,'wwwwww','dsa',1,1405906874,1405906874,0,'',''),(149,NULL,'fdsa','fds',1,1407406130,1407406130,0,'',''),(150,NULL,'fdas','fsa',1,1407409202,1407409202,0,'',''),(151,NULL,'ew','rew',1,1407410186,1407410186,0,'',''),(152,NULL,'fdsa','fdsa',1,1407417376,1407417376,0,'',''),(153,NULL,'www','ffddf',1,1415176718,1415176718,0,'','');
/*!40000 ALTER TABLE `v_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_page_publish`
--

DROP TABLE IF EXISTS `v_page_publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_page_publish` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `cron_str` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) NOT NULL,
  `uid` bigint(11) NOT NULL,
  `username` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `screen_type` smallint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_page_publish`
--

LOCK TABLES `v_page_publish` WRITE;
/*!40000 ALTER TABLE `v_page_publish` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_page_publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_posts`
--

DROP TABLE IF EXISTS `v_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(20000) NOT NULL DEFAULT '',
  `uid` bigint(13) unsigned NOT NULL DEFAULT '0',
  `username` char(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `subject` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `classid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `viewnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `replynum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `picflag` tinyint(1) NOT NULL DEFAULT '0',
  `noreply` tinyint(1) NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `password` char(10) NOT NULL DEFAULT '',
  `favtimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sharetimes` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `click1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click3` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click4` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click5` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click6` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click7` smallint(6) unsigned NOT NULL DEFAULT '0',
  `click8` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`dateline`),
  KEY `hot` (`hot`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_posts`
--

LOCK TABLES `v_posts` WRITE;
/*!40000 ALTER TABLE `v_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_product`
--

DROP TABLE IF EXISTS `v_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` text COLLATE utf8_bin NOT NULL,
  `packages` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '',
  `logo_front` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `logo_backend` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_product`
--

LOCK TABLES `v_product` WRITE;
/*!40000 ALTER TABLE `v_product` DISABLE KEYS */;
INSERT INTO `v_product` VALUES (1,'mall','逛逛','','','商家管理系统'),(2,'lighthouse','智慧星','','','智慧星');
/*!40000 ALTER TABLE `v_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_resource`
--

DROP TABLE IF EXISTS `v_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_resource` (
  `title` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` bigint(11) unsigned NOT NULL,
  `type` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(35) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `extra` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '资源的额外数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_resource`
--

LOCK TABLES `v_resource` WRITE;
/*!40000 ALTER TABLE `v_resource` DISABLE KEYS */;
INSERT INTO `v_resource` VALUES ('admin/table/view',3,'c','View table','',''),('admin/table/edit',3,'c','Edit table record','',''),('admin/table/add',3,'c','add table record','',''),('admin/index/if',3,'c','embed url','',''),('admin/index/deploy',3,'c','deploy code','',''),('admin/table/recordsremove',3,'c','remove records','','');
/*!40000 ALTER TABLE `v_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_role`
--

DROP TABLE IF EXISTS `v_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_role` (
  `id` smallint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `desc` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_role`
--

LOCK TABLES `v_role` WRITE;
/*!40000 ALTER TABLE `v_role` DISABLE KEYS */;
INSERT INTO `v_role` VALUES (1,'admin','admin previledage'),(2,'user','user previledage'),(10,'company_user','company_user');
/*!40000 ALTER TABLE `v_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_role_resource`
--

DROP TABLE IF EXISTS `v_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_role_resource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `res_name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rights` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `extra` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL,
  `role_id` smallint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_role_resource`
--

LOCK TABLES `v_role_resource` WRITE;
/*!40000 ALTER TABLE `v_role_resource` DISABLE KEYS */;
INSERT INTO `v_role_resource` VALUES (1,'admin','*',14,'','2014-10-27 03:42:26',3,9),(2,'company_user','admin/table/view',4,'','2014-10-27 10:27:42',3,10),(3,'company_user','admin/table/edit',4,'','2014-10-27 10:27:44',3,10),(4,'company_user','admin/table/add',4,'','2014-10-27 10:27:45',3,10),(5,'company_user','admin/index/if',4,'','2014-10-27 10:27:46',3,10),(6,'company_user','admin/index/deploy',4,'','2014-10-27 10:27:47',3,10),(7,'company_user','admin/table/recordsremove',1,'','2014-10-27 10:27:48',3,10);
/*!40000 ALTER TABLE `v_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_site_info`
--

DROP TABLE IF EXISTS `v_site_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_site_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_terms` varchar(20000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` bigint(20) unsigned NOT NULL,
  `site_logo` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `admin_email` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_site_info`
--

LOCK TABLES `v_site_info` WRITE;
/*!40000 ALTER TABLE `v_site_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_site_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_tag`
--

DROP TABLE IF EXISTS `v_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(11) unsigned DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_tag`
--

LOCK TABLES `v_tag` WRITE;
/*!40000 ALTER TABLE `v_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_tokens`
--

DROP TABLE IF EXISTS `v_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_tokens` (
  `app_id` char(12) COLLATE utf8_bin NOT NULL DEFAULT '',
  `app_secret` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `redirect_uri` varchar(200) COLLATE utf8_bin NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  `role` tinyint(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_tokens`
--

LOCK TABLES `v_tokens` WRITE;
/*!40000 ALTER TABLE `v_tokens` DISABLE KEYS */;
INSERT INTO `v_tokens` VALUES ('ib4036177123','c4ca4238a0b923820dcc509a6f75849b','http://baidu.com',NULL,1);
/*!40000 ALTER TABLE `v_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_uid_relation`
--

DROP TABLE IF EXISTS `v_uid_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_uid_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mainuid` bigint(11) unsigned NOT NULL,
  `subuid` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_uid_relation`
--

LOCK TABLES `v_uid_relation` WRITE;
/*!40000 ALTER TABLE `v_uid_relation` DISABLE KEYS */;
INSERT INTO `v_uid_relation` VALUES (1,144,146),(2,144,147),(5,4,163),(6,4,164),(7,227,228),(8,227,229),(9,227,230),(10,227,231),(11,227,232),(12,227,233),(13,227,234),(14,227,235),(15,227,236),(16,227,237),(17,227,238),(18,4,282),(19,4,283);
/*!40000 ALTER TABLE `v_uid_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_user_auth`
--

DROP TABLE IF EXISTS `v_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_user_auth` (
  `level` tinyint(4) NOT NULL,
  `createtemp` tinyint(4) NOT NULL,
  `creategroup` tinyint(4) NOT NULL,
  `createvideo` tinyint(4) NOT NULL,
  `createvoice` tinyint(4) NOT NULL,
  `createdesk` tinyint(4) NOT NULL,
  `ptt` tinyint(4) NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`level`),
  UNIQUE KEY `unique_level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_user_auth`
--

LOCK TABLES `v_user_auth` WRITE;
/*!40000 ALTER TABLE `v_user_auth` DISABLE KEYS */;
INSERT INTO `v_user_auth` VALUES (1,1,1,1,1,1,1,1393920976);
/*!40000 ALTER TABLE `v_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_user_profile`
--

DROP TABLE IF EXISTS `v_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_user_profile` (
  `uid` int(10) unsigned NOT NULL,
  `realname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `gender` bit(1) NOT NULL DEFAULT b'0',
  `constellation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `zodiac` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `telephone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mobile` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `idcardtype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `idcard` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `zipcode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `country` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birthprovince` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `birthcity` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `birthdist` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `birthcommunity` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `residedist` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `residecommunity` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `residesuite` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `school` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `education` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `occupation` tinyint(4) DEFAULT '6',
  `position` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `revenue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `affectivestatus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lookingfor` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bloodtype` tinyint(4) DEFAULT '5',
  `height` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `weight` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `alipay` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `qq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `msn` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `taobao` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bio` longtext COLLATE utf8_bin NOT NULL,
  `interest` longtext COLLATE utf8_bin NOT NULL,
  `field1` longtext COLLATE utf8_bin NOT NULL,
  `field2` longtext COLLATE utf8_bin NOT NULL,
  `field3` longtext COLLATE utf8_bin NOT NULL,
  `field4` longtext COLLATE utf8_bin NOT NULL,
  `field5` longtext COLLATE utf8_bin NOT NULL,
  `field6` longtext COLLATE utf8_bin NOT NULL,
  `field7` longtext COLLATE utf8_bin NOT NULL,
  `field8` longtext COLLATE utf8_bin NOT NULL,
  `icon_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `aboutme` varchar(255) COLLATE utf8_bin NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `mfa` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_user_profile`
--

LOCK TABLES `v_user_profile` WRITE;
/*!40000 ALTER TABLE `v_user_profile` DISABLE KEYS */;
INSERT INTO `v_user_profile` VALUES (3,'ab2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(4,'','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','','23232','','',1,'','','','',5,'','','','','','','','','','','','','','','','','','','','','fdsafdas','0000-00-00','baidu@yeah.net',0),(5,'客服一','\0','','','','','','','','',NULL,'','','','','-1','-1','','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(6,'wewrewrew','\0','','','','','','','','','1','','','','','11','1','','','','','','',6,'','','','',1,'','','','','','','','','','','','','','','','','','','','','','2014-01-15','fsdafdas@fda.com',0),(71,'zb1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(72,'zb2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(73,'wweww','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(74,'zz1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(75,'pine','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(76,'si1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(77,'zk1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(78,'zk2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(79,'zk3','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(80,'zk4','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(81,'zk11','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(82,'uk1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(83,'ak19','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(84,'fds','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(85,'admin','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(86,'adm','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',1),(87,'ifa6','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(88,'riben2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(89,'za1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(90,'zq1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(91,'zq2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(92,'zq3','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(93,'zq32','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(94,'zq132','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(96,'qq1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(97,'deguo2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(98,'deguo2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(99,'hi3','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(100,'zk12','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(103,'zk18','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(104,'zk19','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(105,'zk20','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(106,'zk21','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(107,'fdas','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(108,'zk99','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(109,'zk97','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(110,'zk1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(111,'zk2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(112,'zk21','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(113,'zk5','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(114,'zk6','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(115,'zk91','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(116,'zk8','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(117,'zk11','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(118,'zk13','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(119,'zk22','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(120,'zz2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(121,'zzq','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(122,'zzn','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(123,'tt1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(124,'ttk','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(125,'zz99','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(126,'zz81','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(127,'asdf12','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(128,'uu12','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(129,'zz89','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(130,'fdas3r2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(131,'fda232s','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(132,'sfjaflkdaslajs','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(133,'wfjoeqwoj','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(134,'ffneqwknfs','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(135,'fdasffq12eacvx','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(136,'2fjlkwj@fjdl.com','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(137,'12r32','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(138,'opdfsal','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(139,'fdasfdsa','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(140,'fdsafdas233','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(141,'pqeqjkf','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(142,'2pfndsla','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(143,'p1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(144,'ab99','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(145,'xiao','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(146,'web','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(147,'ser1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(148,'kefu1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(149,'kefu2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(150,'_anonymous_1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(151,'ry_1dE9mROFWctXfNeqwdOL9w==','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(152,'ry_hSPm2odGbYW1mRFId3gN8g==','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(153,'ry_CHb0dtsz1Zw5EORQG44NNwkk','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(154,'ry_a4d7b08982aaa0b4','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(155,'ry_d9b1142315a4202f','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(156,'ry5_b5576e80148bebf1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(157,'ryx_ff93e0f2215b3822','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(158,'ryh_cf3ac3d2044fdb0e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(159,'ryn_6a577cf158a3b744','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(160,'ryv_aa0948745cacfc5a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(161,'ry1_4bd380659de3039d','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(162,'ryf_52c6de6496496bb9','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(163,'kefu1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(164,'kefu2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(165,'ryu_7539889eb90951a1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(166,'ryb_5f6d0f65e506de12','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(167,'ryp_2044184f239bb0ca','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(168,'ry0_c71a6da3ed8a64bb','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(169,'ryg_a88ae4aae46a8ba3','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(170,'ryo_e06028ec41dc018a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(171,'ryv_9a7289b96a609026','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(172,'ryx_f4594b8f1d592fc6','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(173,'ry4_e60c0c60265c2fc5','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(174,'ryw_0ba978103555116c','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(175,'rys_31ac29ae66f5c062','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(176,'ry9_31e7f17dbea33d54','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(177,'ryi_a306a9c2ba0e9fd1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(178,'ryo_a8e9b802c9aad2db','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(179,'ryd_cd24aebef96ca633','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(180,'rye_0480d26d75020e2f','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(181,'ryb_649ce9371b6f0067','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(182,'ry4_4e57c798c0de6aa0','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(183,'ryp_3054dfacb122e8c0','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(184,'ryn_326668c1d32d1db5','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(185,'ryu_361ace9c24e84c96','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(186,'ry2_edcf3acf49a9dd3d','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(187,'ryu_f6cf5f0284b00f5c','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(188,'ryf_9d583163c21d284b','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(189,'ryb_d44b175aaec31b8a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(190,'ryq_b2152f4324529280','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(191,'ryb_3f97b4c74f26dfd4','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(192,'ry6_2d5378335eebc746','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(193,'ryo_25328240b7a8b45b','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(194,'ryi_f90e0fd46becfda2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(195,'ry0_7685ed15c20eaab8','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(196,'ryz_a74aa13b5dab57b7','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(197,'test1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(198,'rye_005dd4695821bf9a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(199,'ryv_36dee861ffb4c9c0','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(200,'ry4_268b87e53759e23e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(201,'ryp_cadc649d80646efe','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(202,'ryc_93f45c7d6e705fde','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(203,'rya_fdb01efa2990888d','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(204,'rye_f5efc68ab44f91f8','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(205,'ry9_4e868d7de465de5d','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(206,'ry2_43ac03a65a5f24ac','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(207,'ryu_451a8637ca7de82e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(208,'ryb_31b9104f4b2f9638','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(209,'ry4_1f25c4f52f3d59a2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(210,'ryi_3d8f62fa0386d8a9','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(211,'ry4_5fec11863057f178','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(212,'ryn_c95c3696f8c829e8','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(213,'do1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(214,'deguo','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(215,'deguo','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(216,'wwwwww','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(217,'degd','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(218,'dgdg','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(219,'ding','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(220,'adasf','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(221,'fsafdsa','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(222,'deggee','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(223,'dadfsafd','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(224,'fdsa','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(225,'shangpin','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(226,'wang','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(227,'haoya','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(228,'chun','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(229,'xia','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(230,'xia1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(231,'dong','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(232,'dong23','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(233,'windows','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(234,'fdasf','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(235,'fsdafda','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(236,'fdsaf','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(237,'wfien','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(238,'fdsa232','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(239,'rye_db8c95a6867df210','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(240,'ryx_0ee30571decd5e39','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(241,'ryz_18e962de5c26054e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(242,'ryi_093774dedf0a3018','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(243,'ryt_23bb6d5a5b872501','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(244,'ryo_1edd9ac776c42c85','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(245,'ryt_da83639f56ba004a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(246,'ak47','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(247,'winfeo','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(248,'window','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(250,'fdsajlkdf2enlnc','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(251,'tttttttt','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(252,'wioefjwlkf','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(253,'m_m9dbc2801572c75ed','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(254,'m_o22e0d84315b4e50a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(255,'m_ea64fd3b9b6340d3e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(256,'m_d032ab765ef3cea57','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(257,'m_i2642e84fbe32d3fa','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(258,'m_h8cd802251fbe0b6e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(259,'m_zfe3a5202e622a321','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(260,'m_r72d558746ef5c158','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(261,'m_b9de1ea547d526bdd','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(262,'m_09d99b1b559b3814e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(263,'m_p0e2b062f20ea5942','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(264,'m_b5bdadd504756af91','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(265,'m_c556039bb1f53724a','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(266,'m_y507f8d8eda6aa994','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(267,'m_o8c39d46fdc904ebf','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(268,'m_p8b1f2d505f72ab18','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(269,'m_w383b9a3b0e3932ba','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(270,'m_wfb49ec5dced65451','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(271,'m_2ec22c9b7c19e237e','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(272,'m_l85fe9da531f66aa1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(273,'m_5d1fc88fb67bcb601','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(274,'m_u89e61a08aae8f338','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(275,'m_kfdb55954e4eca2bc','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(276,'m_p698ff46c7926e3f2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(277,'m_t1375cb5af8008a60','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(278,'ry_f_ec5610d1cabffce6','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(279,'ry_6_e41ce1ccc18f0cbe','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(280,'ry_i_9a8bdf0de4f0ecf1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(281,'ry_w_641f62cf91e8d66f','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(282,'kf1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(283,'kf2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(284,'ry_d_c32ec3f4c622933f','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(285,'ry_z_87e3fab8c6ccddb8','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(286,'ry_i_a82a62192284e365','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(287,'ry_0_d334a7400fc7fec1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(288,'ry_u_8086068991a3b887','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(289,'ry_a_fda4de6057d472bb','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(290,'ry_z_ccdf47665417534c','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(291,'ry_2_34de77a552209979','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(292,'ry_7_7a2a8a44ac59b374','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(293,'ry_1_1c4e4392315715e7','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(294,'ry_v_84476e71fcea8dce','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(295,'ry_7_c3b7408d7587bf28','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(296,'ry_k_4f9e3d7e7eb27998','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(297,'ry_y_1008855e885ffe4b','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(298,'ry_7_5a5f677f0037d7be','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0);
/*!40000 ALTER TABLE `v_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_user_setting`
--

DROP TABLE IF EXISTS `v_user_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_user_setting` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `convstyle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enablesound` bit(1) NOT NULL DEFAULT b'1',
  `addmeflag` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `blockmsg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) unsigned NOT NULL,
  `convhistory` bit(1) NOT NULL DEFAULT b'1',
  `lang_prefer` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT 'enus',
  `send_key` bit(1) NOT NULL DEFAULT b'0',
  `levelid` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `en_desknotify` bit(1) NOT NULL DEFAULT b'1',
  `en_camlogin` bit(1) NOT NULL DEFAULT b'0',
  `is_viewed_guide` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `unique_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_user_setting`
--

LOCK TABLES `v_user_setting` WRITE;
/*!40000 ALTER TABLE `v_user_setting` DISABLE KEYS */;
INSERT INTO `v_user_setting` VALUES (1,0,'',1,0,1404465857,'','enus','\0',1,'','\0','\0'),(3,2,'',1,1,0,'','','\0',1,'\0','\0',''),(4,0,'\0',1,0,1404263551,'\0','enus','\0',1,'','\0',''),(5,0,'',1,0,1404438154,'','enus','\0',1,'','\0',''),(77,0,'',1,0,1404193282,'','enus','\0',1,'','\0',''),(78,0,'',1,0,1404189475,'\0','enus','\0',0,'','\0',''),(79,0,'',1,0,1404189578,'','enus','\0',1,'','\0','\0'),(80,0,'',1,0,1404193303,'','enus','\0',1,'','\0',''),(81,0,'',1,0,1404465865,'','enus','\0',1,'','\0',''),(82,0,'',1,0,1405304964,'','enus','\0',1,'','\0','\0'),(83,0,'',1,0,1405306279,'','enus','\0',1,'','\0','\0'),(84,0,'',1,0,1405306430,'','enus','\0',1,'','\0',''),(85,0,'',1,0,1406113055,'','enus','\0',1,'','\0','\0'),(86,0,'',1,0,1406113100,'','enus','\0',1,'','\0',''),(87,0,'',1,0,1407202291,'','enus','\0',1,'','\0','\0'),(88,0,'',1,0,1407223418,'','enus','\0',1,'','\0','\0'),(89,0,'',1,0,1409727645,'','enus','\0',1,'','\0','\0'),(90,0,'',1,0,1409727985,'','enus','\0',1,'','\0','\0'),(91,0,'',1,0,1409728019,'','enus','\0',1,'','\0','\0'),(92,0,'',1,0,1409728166,'','enus','\0',1,'','\0','\0'),(93,0,'',1,0,1409728263,'','enus','\0',1,'','\0','\0'),(94,0,'',1,0,1409728303,'','enus','\0',1,'','\0','\0'),(95,0,'',1,0,1409822210,'','enus','\0',1,'','\0','\0'),(96,0,'',1,0,1409822600,'','enus','\0',1,'','\0','\0'),(97,0,'',1,0,1409822703,'','enus','\0',1,'','\0','\0'),(98,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(99,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(100,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(101,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(102,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(103,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(104,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(105,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(106,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(107,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(108,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(109,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(110,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(111,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(112,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(113,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(114,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(115,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(116,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(117,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(118,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(119,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0'),(120,0,'\0',1,0,0,'\0','enus','\0',1,'\0','\0','\0');
/*!40000 ALTER TABLE `v_user_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_user_status`
--

DROP TABLE IF EXISTS `v_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_user_status` (
  `note` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ctime` int(11) NOT NULL,
  `mtime` int(11) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `statusId` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_user_status`
--

LOCK TABLES `v_user_status` WRITE;
/*!40000 ALTER TABLE `v_user_status` DISABLE KEYS */;
INSERT INTO `v_user_status` VALUES ('hello,the world 0',0,0,1,1),('hello,the world 1',0,0,2,2),('hello,the world 2',0,0,3,3),('hello,the world 3',0,0,4,4),('hello,the world 4',0,0,5,5),('hello,the world 5',0,0,6,6),('hello,the world 6',0,0,7,7),('hello,the world 7',0,0,8,8),('hello,the world 8',0,0,9,9),('hello,the world 9',0,0,10,10);
/*!40000 ALTER TABLE `v_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_wechat_menu`
--

DROP TABLE IF EXISTS `v_wechat_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_wechat_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL,
  `url` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seq` tinyint(3) unsigned NOT NULL,
  `hassub` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_wechat_menu`
--

LOCK TABLES `v_wechat_menu` WRITE;
/*!40000 ALTER TABLE `v_wechat_menu` DISABLE KEYS */;
INSERT INTO `v_wechat_menu` VALUES (1,'Song',1,'',0,'V1001_TODAY_MUSIC',1,NULL),(2,'Singer',1,'',0,'V1001_TODAY_SINGER',2,NULL),(3,'Menus',0,'',0,'',3,NULL),(4,'Search',2,'http://www.niuspace.com/wechattest',3,'',4,NULL),(5,'view',2,'http://www.so.com/',3,'',5,NULL),(6,'Fav',1,'',3,'V1001_GOOD',6,NULL);
/*!40000 ALTER TABLE `v_wechat_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_wechat_place`
--

DROP TABLE IF EXISTS `v_wechat_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_wechat_place` (
  `id` bigint(20) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `precision` double NOT NULL,
  `openid` varchar(50) COLLATE utf8_bin NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_wechat_place`
--

LOCK TABLES `v_wechat_place` WRITE;
/*!40000 ALTER TABLE `v_wechat_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_wechat_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_wechat_user`
--

DROP TABLE IF EXISTS `v_wechat_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_wechat_user` (
  `uid` bigint(20) NOT NULL DEFAULT '0',
  `openid` varchar(50) COLLATE utf8_bin NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `city` varchar(30) COLLATE utf8_bin NOT NULL,
  `country` varchar(30) COLLATE utf8_bin NOT NULL,
  `nickname` varchar(40) COLLATE utf8_bin NOT NULL,
  `language` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `headimgurl` varchar(1000) COLLATE utf8_bin NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `province` varchar(30) COLLATE utf8_bin NOT NULL,
  `subscribe` bit(1) NOT NULL,
  `remark` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  `privilege` varchar(11) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`,`openid`),
  UNIQUE KEY `unique_bigint` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_wechat_user`
--

LOCK TABLES `v_wechat_user` WRITE;
/*!40000 ALTER TABLE `v_wechat_user` DISABLE KEYS */;
INSERT INTO `v_wechat_user` VALUES (3,'ovgWqtxE2g0iz_1aGKDEELY1iL_I',1,'朝阳','中国','缔','en','http://wx.qlogo.cn/mmopen/ZXrtboZZHwibQw07xjQqhdBibtI71Nen0tpjneKFyNvwYS5iaecNBBP1WT0YDGYuL7WibP9fFwM1BQWCiayr4BgDk94ibZfZfTVC6d/0',1392947445,'北京','','','');
/*!40000 ALTER TABLE `v_wechat_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_wechat_user_cfg`
--

DROP TABLE IF EXISTS `v_wechat_user_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_wechat_user_cfg` (
  `openid` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rooms` varchar(1000) COLLATE utf8_bin NOT NULL,
  `blocked_users` varchar(6000) COLLATE utf8_bin NOT NULL,
  `current_room` bigint(20) NOT NULL,
  `dateline` int(11) NOT NULL,
  PRIMARY KEY (`openid`),
  UNIQUE KEY `unique_uid` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_wechat_user_cfg`
--

LOCK TABLES `v_wechat_user_cfg` WRITE;
/*!40000 ALTER TABLE `v_wechat_user_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_wechat_user_cfg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-27 10:48:56
