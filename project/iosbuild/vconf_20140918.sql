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
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_adv`
--

LOCK TABLES `v_adv` WRITE;
/*!40000 ALTER TABLE `v_adv` DISABLE KEYS */;
INSERT INTO `v_adv` VALUES (1,'wangda group',3,'html',0),(2,'beijing group',3,'html',0),(3,'http://m.baidu.com',3,'url',0),(4,'http://www.baidu.com/img/baidu_sylogo1.gif',3,'image',0),(5,'http://pic4.nipic.com/20091105/1000367_150022029375_2.jpg',3,'image',0),(6,'http://img5.imgtn.bdimg.com/it/u=968971353,4169295948&fm=21&gp=0.jpg',3,'image',0),(7,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/booksale.png',3,'image',0),(8,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/status.png',3,'image',0),(9,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/booksale.png',3,'image',0),(10,'http://tour.oss-cn-hangzhou.aliyuncs.com/imgs/status.png',3,'image',0),(11,'http://tour.oss-cn-hangzhou.aliyuncs.com/videos/movie.mp4',3,'video',0),(12,'Hello,im text',3,'text',0);
/*!40000 ALTER TABLE `v_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_adv_ibeacon`
--

DROP TABLE IF EXISTS `v_adv_ibeacon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_adv_ibeacon` (
  `adv_id` int(11) unsigned NOT NULL,
  `ib_id` int(11) unsigned NOT NULL,
  `isdefault` bit(1) NOT NULL DEFAULT b'0',
  `dateline` int(11) NOT NULL,
  `uid` bigint(11) unsigned NOT NULL,
  `ctime` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`ib_id`,`adv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_adv_ibeacon`
--

LOCK TABLES `v_adv_ibeacon` WRITE;
/*!40000 ALTER TABLE `v_adv_ibeacon` DISABLE KEYS */;
INSERT INTO `v_adv_ibeacon` VALUES (9,1,'\0',1403764299,0,NULL),(10,2,'\0',1403764288,0,NULL),(10,3,'\0',1403764399,0,NULL),(9,4,'\0',1403764488,0,NULL),(9,5,'\0',1403764499,0,NULL),(10,6,'\0',1403767488,0,NULL),(9,7,'\0',1403767499,0,NULL),(10,8,'\0',1403767599,0,NULL),(9,9,'\0',1403767599,0,NULL),(10,10,'\0',1403764255,0,NULL),(9,11,'\0',1403764255,0,NULL),(11,11,'\0',1403764299,0,NULL),(12,11,'\0',1403764299,0,NULL),(10,12,'\0',1403764255,0,NULL),(11,12,'\0',1403764299,0,NULL),(12,12,'\0',1403764299,0,NULL),(9,13,'\0',1403764255,0,NULL),(10,14,'\0',1403764255,0,NULL),(9,15,'\0',1403764255,0,NULL),(10,16,'\0',1403764255,0,NULL),(9,17,'\0',1403764255,0,NULL),(10,18,'\0',1403764255,0,NULL),(9,19,'\0',1403764255,0,NULL),(10,20,'\0',1403764255,0,NULL);
/*!40000 ALTER TABLE `v_adv_ibeacon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_adv_temp`
--

DROP TABLE IF EXISTS `v_adv_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_adv_temp` (
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `desc` varchar(2000) COLLATE utf8_bin NOT NULL,
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
  `app_id` varchar(20) COLLATE utf8_bin NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_calendar`
--

LOCK TABLES `v_calendar` WRITE;
/*!40000 ALTER TABLE `v_calendar` DISABLE KEYS */;
INSERT INTO `v_calendar` VALUES (1,'','',0,NULL,0,''),(2,'default calendar','calendar desc',1410347365,0,3,''),(3,'default calendar','calendar desc',1410762167,0,5,''),(4,'default calendar','calendar desc',1410762182,0,7,''),(5,'default calendar','calendar desc',1410920949,0,4,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_chat`
--

LOCK TABLES `v_chat` WRITE;
/*!40000 ALTER TABLE `v_chat` DISABLE KEYS */;
INSERT INTO `v_chat` VALUES (11,3,'g',1410506324,91),(12,7,'u',1410763348,3),(13,3,'u',1410781293,7);
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
  `username` char(15) COLLATE utf8_bin NOT NULL DEFAULT '',
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
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `conisbind` (`conisbind`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_common_user`
--

LOCK TABLES `v_common_user` WRITE;
/*!40000 ALTER TABLE `v_common_user` DISABLE KEYS */;
INSERT INTO `v_common_user` VALUES (1,'Kazafei@qq0.com','ab0','1/sha256/joyFJLMQ/38e62735ec08b552f90be63649773d32a17df3d78598ed00157ca860208d130a','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 0','/img/people/bler.png','Kazafei',1,0,''),(2,'Blair@qq1.com','ab1','1/sha256/bqwCHPRS/8a44edb8b3a56057b0814d57089e961d6d5ed083ddd7360d5fe243d8d304afbc','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 1','/img/people/sys/176.png','Blair',1,0,''),(3,'Cameron@qq2.com','ab2','1/sha256/dsDJV349/c652f13a6f5f62c8b2303f7b6856069abe34f999735ccd77df1157d8325f1382','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 2','/img/people/3.png','Cameron',1,0,''),(4,'AndyLiu@qq3.com','ab3','1/sha256/dsDJV349/c652f13a6f5f62c8b2303f7b6856069abe34f999735ccd77df1157d8325f1382','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 3','/img/people/sys/174.png','Andy Liu',1,0,''),(5,'Roosevelt@qq4.com','ab4','1/sha256/cgjtPUW4/7b39f711cbe1e0692537d87e5ae089a48fe1c133d15112bc55268dffbeb431be','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 4','/img/people/lsf.jpg','Roosevelt',1,0,''),(6,'Merkel@qq5.com','ab5','1/sha256/hkxyJKW4/dfe4abf8cfd80e9ad6c124f408cf8d6de37824eeb495dbeb8f193b7e605eb48b','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 5','/img/people/mker.png','Merkel',1,0,''),(7,'MaoZedong@qq6.com','ab6','1/sha256/btuxWXY7/2f9fb32a2138cecfb24cbc93476266be65f48983b68dbec1487b218663fa77b9','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 6','/img/people/mzd.png','Mao Zedong',1,0,''),(8,'Jobs@qq7.com','ab7','1/sha256/afisIJP1/9e1cc6bdeb61044a4527dc0407981d82a1c7ffc6d13f6d5ee95e8cf3b1054a91','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 7','/img/people/qbs.png','Jobs',1,0,''),(9,'Jordon@qq8.com','ab8','1/sha256/bmsyJKQ9/b35dda9c064e051feef9ee4ee3f13d767b8193887aa7991cea1d47e5d74e20a6','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 8','/img/people/qd.png','Jordon',1,0,''),(10,'Saddam@qq9.com','ab9','1/sha256/bilnIU24/d31f0854250c68fc80c56ecbc1bc954d80380be8f3d3e844caf2c53cb5d9221a','\0','\0','\0','\0','\0',0,0,'',1387359745,0,'\0','',0,0,'\0','\0','\0','\0','hello,the world 9','/img/people/sdm.png','Saddam',1,0,''),(11,'ab41@ab.com','ab41','1/sha256/dirxzNR9/bd1e9775438443b538eca4fb2d582beb59d46886c32cacdd2eb5d8e0ae9fec80','\0','\0','\0','\0','\0',0,0,'',1387764632,0,'\0','',0,0,'\0','\0','\0','\0','','','',1,0,''),(12,'ab42@qq.com','ab42','1/sha256/iqryBV03/e1c5cdbf6a3fd27daad277386b27e51b2cbf558c93cd4c5cefeff7520f09990c','\0','\0','\0','\0','\0',0,0,'',1387765417,0,'\0','',0,0,'\0','\0','\0','\0','','','',1,0,''),(13,'ab43@qq.com','ab43','1/sha256/duwEHLR9/112e23f006889507c6fd7cf0b49db38fe04b89bf8ca74afd91cd0596cd92b481','\0','\0','\0','\0','\0',0,0,'',1387765642,0,'\0','',0,0,'\0','\0','\0','\0','','','',1,0,''),(14,'a@163.com','a','1/sha256/iruJQYZ4/bca3477fac3bc1599a75c337b7a091e4929c2176de9a2ce83542ae04d9cf1e91','\0','\0','\0','\0','\0',0,0,'',1387851730,0,'\0','',0,0,'\0','\0','\0','\0','','','',1,0,''),(22,'z1@z1.com','z1','1/sha256/kyBPVW24/7280e49a08a7f219a73afb2748ccc011e631af643dd73fdca4ecf5c93affd30b','\0','\0','\0','\0','\0',0,0,'',1388480881,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z1',1,0,''),(23,'a1@a1.com','a1','1/sha256/afjNWY89/d43da00196734cec4374f85c30e5c689f3daed87e864b31dcc576938006f9499','\0','\0','\0','\0','\0',0,0,'',1388998525,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','a1',1,0,''),(24,'vicky860510@hotmail.com','vicky','1/sha256/oqPQTZ39/2d73cc1152df89d66cda89c86d8bbeb8e4faa9a953eac51ec056adf1787f1f16','\0','\0','\0','\0','\0',0,0,'',1389061901,0,'\0','',0,0,'\0','\0','\0','\0','','/img/people/24.png','vicky',1,0,''),(25,'123@123.com','@@##$$','1/sha256/lxzCEPY8/570d708828c136aeb121142a6f7b8e9fcb36a618700960a8c6ecd68d0575fe4d','\0','\0','\0','\0','\0',0,0,'',1389062570,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','@@##$$',1,0,''),(26,'vicky@a.com',' vicky','1/sha256/dksxyDNZ/6482cfde16560ef4db91cd42d299d415f1c7b8af9b8472ab4bebf0ded3631c5d','\0','\0','\0','\0','\0',0,0,'',1389062943,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png',' vicky',1,0,''),(27,'a9@a.com','a9','1/sha256/afquvHM5/2d3aeae04d1a643bdc9f24b725e35f20bbd1ac6395f1a4b66258a20a143ef704','\0','\0','\0','\0','\0',0,0,'',1389062997,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','a9',1,0,''),(28,'123@123.vkf','123456789123456','1/sha256/chkqJOU4/d5d6344acc78ec10517d084d1d233765b66bb9a5ea1a9be8ed205177b3d3b74a','\0','\0','\0','\0','\0',0,0,'',1389063700,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','123456789123456789',1,0,''),(29,'12345','~!@#$%^&*()','1/sha256/jkvzGH12/efce0dbb9347c4fbc9f4479c24b3da9267cfa477d4a44e885f1ec2e5f5a98ae1','\0','\0','\0','\0','\0',0,0,'',1389063944,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','~!@#$%^&*()',1,0,''),(32,'chjade@163.com','chjade','1/sha256/efhqFHL4/6f395600821ffb9c8bf5a85a52773fa87615e29f8584cedfc76fd3086be53ab4','\0','\0','\0','\0','\0',0,0,'',1389075895,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','chjade',1,0,''),(35,'fdsa@fd.com','111111111111111','1/sha256/ksuFGUY0/e8a705f510eadb89d70b525e70fbca814d5abbbd5af6283662a150474fadaa6c','\0','\0','\0','\0','\0',0,0,'',1389077531,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','1111111111111111',1,0,''),(36,'q@q.com','q','1/sha256/mowyV269/e117ffd8d854652093dfcffd1a333472804d8c387c8530991a0c253d2346f575','\0','\0','\0','\0','\0',0,0,'',1389077664,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','q',1,0,''),(37,'windowswindows@da.com','windowswindows','1/sha256/bcjnJX68/95eb4fec351dbdeb3a2b2c280d6b3249639542776f592b524a76831eeb6edb04','\0','\0','\0','\0','\0',0,0,'',1389159578,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','windowswindows',1,0,''),(38,'121121121121121121@d.com','121121121121121','1/sha256/ghmuvCMP/683a5674c5c2e27db03c1724e8e3c34ddd2a25f2773f90eeaf7458fdba48c91f','\0','\0','\0','\0','\0',0,0,'',1389159607,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','121121121121121121',1,0,''),(39,'safs','fdsafdsadfa','1/sha256/pvCEJWX2/4dbf2661c303e5889961dff05ee396e15223a334df549133dd55afabde03bdcd','\0','\0','\0','\0','\0',0,0,'',1389179206,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsafdsadfa',1,0,''),(40,'wind@fj.com','fdsafdas','1/sha256/hkrCU039/755cc02234b2bbf5ee2f0a33df55758623324a4ebbe83d21e631477590d60c65','\0','\0','\0','\0','\0',0,0,'',1389180467,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fdsafdas',1,0,''),(43,'fsdaf','sadassa','1/sha256/efwyCR28/84a6e551a1781a5913648fe545c38c1b1b8cb36e9ba393d9be6094cfde33b1ca','\0','\0','\0','\0','\0',0,0,'',1389182968,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','sadassa',1,0,''),(44,'fdsa@f.com','chjadee12','1/sha256/hprxCQZ0/ef73b4d40efef0600b9fa28a52f0015043d5fd5e14319bd384ded0621d6d8139','\0','\0','\0','\0','\0',0,0,'',1389187970,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','chjadee12',1,0,''),(45,'fdsaf@fd.cc','zhongguo','1/sha256/krstvQV3/7aa5cc90b46b887009aed2452aa1357d5bc241cb3841e1b716bd2b0256fce4b1','\0','\0','\0','\0','\0',0,0,'',1389188015,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zhongguo',1,0,''),(46,'fdsa@fd.com','gfdsgfds','1/sha256/swGMPUV1/4119e587c86bb9aa89228ca2b020b5549ec2debd29763086483891497e2dd6f8','\0','\0','\0','\0','\0',0,0,'',1389188048,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','gfdsgfds',1,0,''),(47,'da@fd.com','a2','1/sha256/dgtMSW19/06b9189a5e10cc0c8a7a041d0185cd4541a3b7602fc96cd26323e4998c9f06b3','\0','\0','\0','\0','\0',0,0,'',1389325527,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','a2',1,0,''),(48,'z1@z1.com','t1','1/sha256/ehnEPSX5/3718a0a778fd3e50b96795d26d77c3ec3dfe135f2b624041722a46ed0ba2fc53','\0','\0','\0','\0','\0',0,0,'',1389326460,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','t1',1,0,''),(49,'t2@t2.com','t2','1/sha256/aegoru46/b8b98f0958785bb62cb5cee3110e839a099b2092d15a9bb696e36f7a889e2be8','\0','\0','\0','\0','\0',0,0,'',1389326510,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','t2',1,0,''),(50,'z2@z2.com','z2','1/sha256/hlmqzGIJ/0b07392345e4cfd998ca9e0f4af395e540ff7ddd923ddc45d6d030ebb93f4a5f','\0','\0','\0','\0','\0',0,0,'',1389330739,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z2',1,0,''),(51,'z4@z3.com','z4','1/sha256/lsuBR078/88e33a52b6f19177a8bd89411550d234fa9b70bd2499a67465748c2f818c5272','\0','\0','\0','\0','\0',0,0,'',1389331711,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z4',1,0,''),(52,'z5@z5.com','z5','1/sha256/iknzDSU0/b56d2141298be8c58ca263d04277912a929f99da47a79b4018f41fad48352f4a','\0','\0','\0','\0','\0',0,0,'',1389331941,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z5',1,0,''),(53,'z6@z6.com','z6','1/sha256/gmxD3457/5bf44786f9c05c19444e0e2f130bbaa6c69c2af253fc008b8efe08f78336997d','\0','\0','\0','\0','\0',0,0,'',1389331986,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z6',1,0,''),(54,'z7@z7.com','z7','1/sha256/adgmEVX3/2abe1113492eb1e4c3b36df317d0ad75a2ed51fa88176f986b82f27250503a37','\0','\0','\0','\0','\0',0,0,'',1389332806,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z7',1,0,''),(55,'a8@a8.com','a8','1/sha256/aekyDL56/f0c164f7f394837bc2b7660d82aabd90a1f46bbbebf9565a7a6c3d2dac59c1a2','\0','\0','\0','\0','\0',0,0,'',1389332973,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','a8',1,0,''),(56,'z9@z9.com','z9','1/sha256/euyCMSTV/fe1d6b562905e659f497e9d4ede58bbf96503277ab88cb78ddbeff773fffb77e','\0','\0','\0','\0','\0',0,0,'',1389333281,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z9',1,0,''),(57,'z10@ff.cc','z10','1/sha256/fjlvzN57/ce7881227284e8f0c949d700e1187e0be8b909ee77fe769e50932305a35ad738','\0','\0','\0','\0','\0',0,0,'',1389333594,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z10',1,0,''),(58,'123@123.com','vicky1986510','1/sha256/FMOPTVY3/392b167ae236a72942aa164fabaf3b8dd24c6d9dac115bb11e7ef9aad2c7ddb7','\0','\0','\0','\0','\0',0,0,'',1389334203,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','vicky1986510',1,0,''),(59,'fdja@fdajf.com','coco','1/sha256/hjqxAR59/5433bf0c0240fcefb96d4c95f854111365002e745fa4284a526684c729b84658','\0','\0','\0','\0','\0',0,0,'',1389334379,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','coco',1,0,''),(60,'fdjklasjf@jdalfj.com','vicky1','1/sha256/jmnrOPS6/51f04863152ec5402d22e83b638060462771f03584a9cc1239dc42dab6c7ea51','\0','\0','\0','\0','\0',0,0,'',1389334584,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','vicky1',1,0,''),(61,'z11@z11.com','z11','1/sha256/hoquxUY7/54d7b154a271e0738be5f9f4c963fe274e7e837b65b6679ed1c5e327fefe87a2','\0','\0','\0','\0','\0',0,0,'',1389335356,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','z11',1,0,''),(62,'123@fdal.com','zxcvbnma','1/sha256/iHKNY078/0d7b3c05cb3933806a52701e3142b21055af003b8530ef7f37b7f8e43410df06','\0','\0','\0','\0','\0',0,0,'',1389336314,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zxcvbnma',1,0,''),(63,'b1@qq.com','b1','1/sha256/imAEMPTU/af04e0b9583ba837261ae4b0389c3139db06a38c02e050f8d7848d84cb14af31','\0','\0','\0','\0','\0',0,0,'',1389337028,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','b1',1,0,''),(65,'b2@b2.com','b2','1/sha256/bfuxAZ12/654d2ca1b13d77a294b97c1eb87612f67f65e342aaa2acc7fe00980f966c4764','\0','\0','\0','\0','\0',0,0,'',1389338756,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','b2',1,0,''),(66,'r1@r1.com','r1','1/sha256/ivCHIJT1/377c9828288841ebcdb9655664ee820d07aadab17972e43054c45cc8d7b3d02f','\0','\0','\0','\0','\0',0,0,'',1389339924,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','r1',1,0,''),(67,'123@123.com','51','1/sha256/cduOWXZ9/8f3c8f7f7e3b885718e3b49c52e0df2e6c1f27363238a27bcfb4eda4371fc437','\0','\0','\0','\0','\0',0,0,'',1389593647,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','51',1,0,''),(68,'g1@g1.com','g1','1/sha256/adfltW89/ddb352cd12881d17eb1fa591ea582abe97a274abc1b8bb6f3274082eda757844','\0','\0','\0','\0','\0',0,0,'',1389946480,0,'\0','',0,0,'\0','\0','\0','\0','','/img/people/sys/202.png','g1',1,0,''),(69,'g2@g2.com','g2','1/sha256/jkDOWY58/cd69fdd846b22471899693288aa4c972b24547b03d1b061ccf186deed0f8d2b5','\0','\0','\0','\0','\0',0,0,'',1389947770,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','g2',1,0,''),(70,'qqfd@fj.com','qq2','1/sha256/govIJNU3/d66aaf25673e45f9124d3de4459dca56bebdc414ebc43c3868678d3da36aacd7','\0','\0','\0','\0','\0',0,0,'',1390614399,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','qq2',1,0,''),(71,'zb1@zb1.com','zb1','1/sha256/imoMU239/48d197c0df518b3e98cd805c0adc6bc6f13d7e0b2e92885d316a703af8af7502','\0','\0','\0','\0','\0',0,0,'',1393317592,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zb1',1,0,''),(72,'zb2@zb2.com','zb2','1/sha256/bqsxST35/dcee68f376cb0e6537e9710c3f8f430cc2f6a4b7af0a0efbc2d9b9c66aad3239','\0','\0','\0','\0','\0',0,0,'',1393318198,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zb2',1,0,''),(73,'fdsa@fd.com','wweww','1/sha256/bfgxGUZ5/aaa4248984f05ac4c91bc5fcf92f555adb93c66fe9e0ddb9bcba2ee54be5a969','\0','\0','\0','\0','\0',0,0,'',1397556008,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','wweww',1,0,''),(74,'zz1@d.com','zz1','1/sha256/gjyACLQV/9dd9ecd89af0c8eb20a450ff50420b656450a94fae51053d81ef3eac94a545fc','\0','\0','\0','\0','\0',0,0,'',1397626039,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zz1',1,0,''),(75,'song_jiafeng@hotmail.com','pine','1/sha256/louvyCDO/2902b391bfac1af085bfceff1027e07c4f7915744dda848a79088e3c08820238','\0','\0','\0','\0','\0',0,0,'',1398391784,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','pine',1,0,''),(76,'si1@si1.cc','si1','1/sha256/fglANQU6/b1b04afdc56480a1ad3217efaba7735c1421c64c4f21210f4720604cefd7d184','\0','\0','\0','\0','\0',0,0,'',1398663131,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','si1',1,0,''),(77,'zk1@zk1.com','zk1','1/sha256/densuxO9/b6c3e2bd09264d39b9b6cf09b2a28263ffe3f31a6c395c93e0c7e03f8bf59fde','\0','\0','\0','\0','\0',0,0,'',1404188884,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zk1',1,0,''),(78,'zk1@zk1.com','zk2','1/sha256/deFKPX19/ba3fae8d0dbb4cee4229c9d9ac28a646e3f8bb583ec59fbfcbe295dbf25ecd81','\0','\0','\0','\0','\0',0,0,'',1404189475,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zk2',1,0,''),(79,'zk1@zk1.com','zk3','1/sha256/cdlDPT39/fd4f1880dcaecb450c4011e1305c6f1f9039010021f0a47da23cae2a3c2c81a1','\0','\0','\0','\0','\0',0,0,'',1404189577,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zk3',1,0,''),(80,'zk1@zk1.com','zk4','1/sha256/fgstyRS2/270a50678a4eefabcd6a4b134e02564dde32ce780192f1a46b280c802a3baadc','\0','\0','\0','\0','\0',0,0,'',1404193303,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zk4',1,0,''),(81,'zk11@163.com','zk11','1/sha256/hjqJKLOT/b1cb01c8a21d0afc3ec7838dc75808b913989149cf0eb5c9f69718b190c2acee','\0','\0','\0','\0','\0',0,0,'',1404465857,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zk11',1,0,''),(82,'zk1@zk1.com','uk1','1/sha256/egqxBFN8/d4eb54a6936e4ef0ce1e2fd86f3c83ece7dc98d2eb9c800d2ef95ad258d0925b','\0','\0','\0','\0','\0',0,0,'',1405304643,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','uk1',1,0,''),(83,'ak19@k.com','ak19','1/sha256/kqsuLNQR/7513d7ed621995a4cc154ae7228683098af7a7a310ded975dd59a470a9bfe6ab','\0','\0','\0','\0','\0',0,0,'',1405304964,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ak19',1,0,''),(84,'dsf@f.com','fds','1/sha256/emDHMTX1/c54827cfc1d6bb5915e1f350cdc7fc81a96c25d3e5cd11f20ba746fcf053abdc','\0','\0','\0','\0','\0',0,0,'',1405306279,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','fds',1,0,''),(85,'ab1@ab1.com','admin','1/sha256/gjDILO56/b3349e7ee63b489c619011e17964f1c25d2fe89f21825998a45cad44552f262b','\0','\0','\0','\0','\0',0,0,'',1406113054,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','admin',1,0,''),(86,'adm@adm.com','adm','1/sha256/cstLSUZ7/ebc86a1477be983cd1d9830db3417af7367666adf5e5cbd18184d765f6d37951','\0','\0','\0','\0','\0',0,0,'',1406113100,0,'\0','',0,0,'\0','\0','\0','\0','','/img/people/86.png','adm',9,0,''),(87,'ifa6@qq.com','ifa6','1/sha256/hirvIJS6/977a71ef945206a6e5d8118c1f6b33b447651c4929989ea3366df6916274a082','\0','\0','\0','\0','\0',0,0,'',1407202291,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','ifa6',1,0,''),(88,'riben2@yeah.net','riben2','1/sha256/jnuwBGIT/58c0a72998d0dd6c180c060a9481ae161124056a7c5794e3700dd9855f35b609','\0','\0','\0','\0','\0',0,0,'',1407223418,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','riben2',1,0,''),(89,'zk1@zk1.com','za1','1/sha256/glrsKL14/d0640b60cffd729a816f9efaf2e29352a8e75b991326c56ba48775ae5ed9bb32','\0','\0','\0','\0','\0',0,0,'',1409727645,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','za1',1,0,''),(90,'zk1@zk1.com','zq1','1/sha256/afijxKNV/247e395009f71c82b744b6dfc71de9e02ff4c91cd3f6fd483208f9bccdd1c339','\0','\0','\0','\0','\0',0,0,'',1409727985,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zq1',1,0,''),(91,'zk1@zk1.com','zq2','1/sha256/dpCNSVWY/a0c013836edb699fb686c4b2c84ad431cc80fd160a462ae7a7e797d2d2080057','\0','\0','\0','\0','\0',0,0,'',1409728019,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zq2',1,0,''),(92,'zk1@zk1.com','zq3','1/sha256/chyENOX5/18da02b2a277fe755d203783e7c10e8276d6fec6e70dea9515c47b9891275504','\0','\0','\0','\0','\0',0,0,'',1409728166,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zq3',1,0,''),(93,'zk1@zk1.com','zq32','1/sha256/ijowDRTZ/9604285a96a742e73db765da72dfb46054530bcba9572b446f4265b118d2ac4b','\0','\0','\0','\0','\0',0,0,'',1409728263,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zq32',1,0,''),(94,'zk1@zk1.com','zq132','1/sha256/mnowLMW2/513816e18eebbcd1b05a8c737999010e3eb026a8c96d430a17d2276dc4c7f038','\0','\0','\0','\0','\0',0,0,'',1409728303,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','zq132',1,0,''),(96,'qq1@qq.com','qq1','1/sha256/juCIPQU6/fbd92f5774eeb2cfd2e9ac2f2ba9bcb1e4c408a8d1ed96d237080e1991b33ebd','\0','\0','\0','\0','\0',0,0,'',1409822208,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','qq1',1,0,''),(98,'deguo2@yeah.net','deguo2','1/sha256/lmvDORWX/ec8480e81987075430afd89d43d93d7de185ecf522efbd63433a115596026536','\0','\0','\0','\0','\0',0,0,'',1409822703,0,'\0','',0,0,'\0','\0','\0','\0','','/img/unknown_user.png','deguo2',1,0,'');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_company`
--

LOCK TABLES `v_company` WRITE;
/*!40000 ALTER TABLE `v_company` DISABLE KEYS */;
INSERT INTO `v_company` VALUES (1,'百度','ifa6@qq.com','fds',4294967295,0,0,'',2),(2,'百度','ifa6@qq.com','fds',4294967295,0,0,'',2),(3,'百度fdsa','1043942051@qq.com','liyan红',4294967295,0,0,'',2),(4,'百度fdsafdsa','1043942051@qq.com','liyan红',4294967295,0,0,'',2),(5,'百度23','371101178@qq.com','liyan红',4294967295,0,0,'',2),(6,'范德萨看','chjade@163.com','fdsa',4294967295,0,0,'',2),(7,'附近的撒','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(8,'附近的撒','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(9,'附近的撒','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(10,'百度','ifa6@qq.com','fda',4294967295,0,0,'',2),(11,'百度','fdsa@fdsa.com','fds',4294967295,0,0,'',2),(12,'fdsafda','ifa6@qq.com','fda',4294967295,0,0,'',2),(13,'百度','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(14,'百度','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(15,'百度','fdsa@fdsa.com','fda',4294967295,0,0,'',2),(16,'百度','fdsa@fdsa.com','fda',4294967295,0,0,'',2),(17,'百度','cnco.ltd@gmail.com','liyan红',4294967295,0,0,'',2),(18,'百度','1043942051@qq.com','liyan红',4294967295,0,0,'',1),(19,'百度','ifa6@qq.com','fds',4294967295,0,0,'',1),(20,'百度','chjade@163.com','fda',4294967295,0,0,'',1),(21,'百度','fdsa@fdsa.com','fda',4294967295,0,0,'',2),(22,'fw','ifa6@qq.com','few',4294967295,0,0,'',2),(23,'fds','ifa6@qq.com','fdaa',4294967295,0,0,'',2),(24,'百度','ifa6@qq.com','fda',4294967295,0,0,'',2),(25,'附近的撒','ifa6@qq.com','fda',4294967295,0,0,'',1),(26,'fdsafda','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(27,'百度','ifa6@qq.com','liyan红',4294967295,0,0,'',1),(28,'百度','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(29,'wwwfdas','fdas@fdfsfdasf.com','fasf',4294967295,0,0,'',2),(30,'附近的撒','ifa6@qq.com','liyan红',4294967295,0,0,'',2),(31,'fdsa','ifa6@qq.com','fdsa',4294967295,0,0,'',1);
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
  `name` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `istemp` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `place` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `summary` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `added_emails` varchar(12000) COLLATE utf8_bin DEFAULT NULL,
  `added_mobiles` varchar(8000) COLLATE utf8_bin DEFAULT NULL,
  `attend_code` char(48) COLLATE utf8_bin NOT NULL,
  `icon_url` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_discuss_group`
--

LOCK TABLES `v_discuss_group` WRITE;
/*!40000 ALTER TABLE `v_discuss_group` DISABLE KEYS */;
INSERT INTO `v_discuss_group` VALUES (91,3,'3_4_5_7',1402972410,'ww',0,0,0,0,NULL,'','','','be0444e2f40dbe049d31b2b1c169cb38225d2c0afa116626','');
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
  `id` bigint(20) NOT NULL,
  `calendar_id` int(11) NOT NULL,
  `cal_name` varchar(25) COLLATE utf8_bin NOT NULL,
  `name` varchar(25) COLLATE utf8_bin NOT NULL,
  `dates` varchar(1024) COLLATE utf8_bin NOT NULL,
  `uid` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_event`
--

LOCK TABLES `v_event` WRITE;
/*!40000 ALTER TABLE `v_event` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_face`
--

LOCK TABLES `v_face` WRITE;
/*!40000 ALTER TABLE `v_face` DISABLE KEYS */;
INSERT INTO `v_face` VALUES (3,'/upload/face/3_140610172331.png','1d958dd4b04899ff78bb89ba9faa6bfe',1402392214,23,'','ab2','c392adc53492ed7bbe15aab091a48882','b312b96b54b610d73a7f9b13a23a2f1a','group1'),(3,'/upload/face/3_140829114655.png','',1409284015,24,'','ab2','','','');
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
-- Table structure for table `v_feedback`
--

DROP TABLE IF EXISTS `v_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `content` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctime` int(11) unsigned NOT NULL,
  `uid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_feedback`
--

LOCK TABLES `v_feedback` WRITE;
/*!40000 ALTER TABLE `v_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_feedback` ENABLE KEYS */;
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
  `num` int(10) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rel` tinyint(4) NOT NULL,
  `alias` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`uid`,`fuid`),
  KEY `fuid` (`fuid`),
  KEY `uid` (`uid`,`num`,`dateline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_friends`
--

LOCK TABLES `v_friends` WRITE;
/*!40000 ALTER TABLE `v_friends` DISABLE KEYS */;
INSERT INTO `v_friends` VALUES (6,76,'',0,0,1398680529,'',2,''),(7,3,'',0,0,1402046078,'',2,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_ibeacon`
--

LOCK TABLES `v_ibeacon` WRITE;
/*!40000 ALTER TABLE `v_ibeacon` DISABLE KEYS */;
INSERT INTO `v_ibeacon` VALUES (1,'74278BDA-1986-0501-8F0C-720EAF059935',1000,1,'蔡强',1403764255,0,0.5,1.5,2),(2,'74278BDA-1986-0501-8F0C-720EAF059935',1000,2,'willy',1403764255,0,0.5,1.5,2),(3,'74278BDA-1986-0501-8F0C-720EAF059935',2000,1,'willy',1403764255,0,0.5,1.5,2),(4,'74278BDA-1986-0501-8F0C-720EAF059935',2000,2,'蔡强',1403764255,0,0.5,1.5,2),(5,'74278BDA-1986-0501-8F0C-720EAF059935',3000,1,'张玉',1403764255,0,0.5,1.5,2),(6,'74278BDA-1986-0501-8F0C-720EAF059935',3000,2,'张玉',1403764255,0,0.5,1.5,2),(7,'74278BDA-1986-0501-8F0C-720EAF059935',4000,1,'老马',1403764256,0,0.5,1.5,2),(8,'74278BDA-1986-0501-8F0C-720EAF059935',4000,2,'老马',1403764257,0,0.5,1.5,2),(9,'74278BDA-1986-0501-8F0C-720EAF059935',5000,1,'老大',1403764259,0,0.5,1.5,2),(10,'74278BDA-1986-0501-8F0C-720EAF059935',5000,2,'老大',1403764259,0,0.5,1.5,2),(11,'74278BDA-1986-0501-8F0C-720EAF059935',6000,1,'冯长森',1403764259,0,0.5,1.5,2),(12,'74278BDA-1986-0501-8F0C-720EAF059935',6000,2,'冯长森',1403764259,0,0.5,1.5,2),(13,'74278BDA-1986-0501-8F0C-720EAF059935',7000,1,'贾非',1403764259,0,0.5,1.5,2),(14,'74278BDA-1986-0501-8F0C-720EAF059935',7000,2,'贾非',1403764259,0,0.5,1.5,2),(15,'74278BDA-1986-0501-8F0C-720EAF059935',8000,1,'第八客户',1403764259,0,0.5,1.5,2),(16,'74278BDA-1986-0501-8F0C-720EAF059935',8000,2,'第八客户',1403764259,0,0.5,1.5,2),(17,'74278BDA-1986-0501-8F0C-720EAF059935',9000,1,'第九客户',1403764259,0,0.5,1.5,2),(18,'74278BDA-1986-0501-8F0C-720EAF059935',9000,2,'第九客户',1403764259,0,0.5,1.5,2),(19,'74278BDA-1986-0501-8F0C-720EAF059935',10000,1,'第十客户',1403764259,0,0.5,1.5,2),(20,'74278BDA-1986-0501-8F0C-720EAF059935',10000,2,'第十客户',1403764259,0,0.5,1.5,2);
/*!40000 ALTER TABLE `v_ibeacon` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_media`
--

LOCK TABLES `v_media` WRITE;
/*!40000 ALTER TABLE `v_media` DISABLE KEYS */;
INSERT INTO `v_media` VALUES ('/image/140425/3_S23BpO.jpg',3,1398393383,'app/windows',1,'3.jpg',24),('/image/140425/75_iRbLzL.png',75,1398393431,'0',2,'fashion.png',0),('/image/140505/3_nvFDUb.jpg',3,1399258312,'0',3,'5.jpg',0),('/image/140505/4_XPkyVR.jpg',4,1399258328,'0',4,'2.jpg',0),('/image/140505/3_I1Zmwa.jpg',3,1399258366,'0',5,'4.jpg',0),('/image/140505/3_aM5ohb.jpg',3,1399258375,'0',6,'m1.jpg',0),('/image/140505/3_6IWqBg.jpg',3,1399258658,'0',7,'3.jpg',0),('/image/140505/3_Sbmr3N.jpg',3,1399258681,'0',8,'6.jpg',0),('/image/140505/3_2MkRuB.jpg',3,1399258798,'0',9,'2.jpg',0),('/image/140505/3_OtTahb.jpg',3,1399259103,'0',10,'4.jpg',0),('/image/140505/3_Dzbra6.jpg',3,1399259114,'0',11,'5.jpg',0),('/image/140505/3_jxENQa.jpg',3,1399259163,'0',12,'3.jpg',0),('/image/140505/3_c9OiXo.jpg',3,1399259191,'0',13,'m1.jpg',0),('/image/140505/3_Tui7qm.jpg',3,1399259233,'0',14,'4.jpg',0),('/image/140505/3_6b0MzD.jpg',3,1399259245,'0',15,'2.jpg',0),('/image/140505/3_UbbDrK.jpg',3,1399259295,'0',16,'7.jpg',0),('/image/140505/3_GyOqzd.jpg',3,1399259304,'0',17,'4.jpg',0),('/image/140505/3_QTavLw.jpg',3,1399259417,'0',18,'7.jpg',0),('/image/140505/3_pEEf2j.jpg',3,1399259664,'0',19,'6.jpg',0),('/image/140505/3_h9h4TK.jpg',3,1399259724,'0',20,'6.jpg',0),('/image/140505/3_pgKKml.jpg',3,1399259831,'0',21,'7.jpg',0),('/image/140505/3_ykT9TU.jpg',3,1399260067,'0',22,'5.jpg',0),('/image/140505/3_FY5Stl.jpg',3,1399260293,'0',23,'4.jpg',0),('/image/140505/3_WZrxOX.jpg',3,1399260667,'0',24,'7.jpg',0),('/image/140505/4_gKBlii.jpg',4,1399260689,'0',25,'2.jpg',0),('/image/140505/3_PysehQ.jpg',3,1399260743,'0',26,'5.jpg',0),('/image/140505/4_HQpNGx.jpg',4,1399260758,'0',27,'2.jpg',0),('/image/140505/4_IvTnrQ.jpg',4,1399260841,'0',28,'4.jpg',0),('/image/140505/4_X3MBhL.jpg',4,1399260906,'0',29,'5.jpg',0),('/image/140505/4_TtEE8V.jpg',4,1399260944,'0',30,'7.jpg',0),('/image/140505/4_2BVM4g.jpg',4,1399260974,'0',31,'3.jpg',0),('/image/140505/4_DAlaC8.jpg',4,1399260986,'0',32,'3.jpg',0),('/image/140505/4_Dd9xeY.jpg',4,1399261489,'0',33,'4.jpg',0),('/image/140505/4_pfrPtu.jpg',4,1399261511,'0',34,'4.jpg',0),('/image/140505/4_ClOS2B.jpg',4,1399261514,'0',35,'2.jpg',0),('/image/140505/4_LgagJZ.jpg',4,1399261865,'0',36,'5.jpg',0),('/image/140505/3_uYKBlO.jpg',3,1399261911,'0',37,'6.jpg',0),('/image/140505/4_jND81A.jpg',4,1399261920,'0',38,'m1.jpg',0),('/image/140505/4_w5LU9h.jpg',4,1399261929,'0',39,'3.jpg',0),('/image/140505/3_GtJK5u.jpg',3,1399261935,'0',40,'3.jpg',0),('/image/140505/4_ZYzk0b.jpg',4,1399261962,'0',41,'5.jpg',0),('/image/140505/3_JJAsSp.jpg',3,1399261970,'0',42,'7.jpg',0),('/image/140505/3_CI7Rpc.jpg',3,1399261990,'0',43,'2.jpg',0),('/image/140505/4_BDuXwE.jpg',4,1399261997,'0',44,'6.jpg',0),('/image/140505/3_rEfWHK.jpg',3,1399262008,'0',45,'4.jpg',0),('/image/140505/3_skfVPV.jpg',3,1399262032,'0',46,'6.jpg',0),('/image/140505/3_e9Pe3c.jpg',3,1399262241,'0',47,'2.jpg',0),('/image/140505/4_7Ultub.jpg',4,1399262267,'0',48,'3.jpg',0),('/image/140505/4_K6YXct.jpg',4,1399262274,'0',49,'7.jpg',0),('/image/140505/3_uwlrGr.jpg',3,1399262286,'0',50,'7.jpg',0),('/image/140505/4_U7sCaT.jpg',4,1399262296,'0',51,'7.jpg',0),('/image/140505/4_KuqhUg.jpg',4,1399262317,'0',52,'6.jpg',0),('/image/140505/4_LRxIQG.jpg',4,1399262337,'0',53,'7.jpg',0),('/image/140505/3_1vcJjV.jpg',3,1399271650,'0',54,'4.jpg',0),('/image/140505/4_biKq4l.jpg',4,1399271659,'0',55,'4.jpg',0),('/image/140505/3_YxZkIO.jpg',3,1399271671,'0',56,'2.jpg',0),('/image/140505/4_1tvxKX.jpg',4,1399271705,'0',57,'3.jpg',0),('/image/140505/4_zcSQam.jpg',4,1399271714,'0',58,'5.jpg',0),('/image/140505/3_468PH9.jpg',3,1399271722,'0',59,'2.jpg',0),('/image/140505/4_vOhwkh.jpg',4,1399271730,'0',60,'2.jpg',0),('/image/140505/3_Py70Ig.jpg',3,1399271734,'0',61,'m1.jpg',0),('/image/140505/3_t5rTGY.jpg',3,1399271745,'0',62,'6.jpg',0),('/image/140505/4_qoG8Xf.jpg',4,1399271750,'0',63,'2.jpg',0),('/image/140505/4_dvyyOK.jpg',4,1399271769,'0',64,'2.jpg',0),('/image/140505/3_oZbQYY.jpg',3,1399271774,'0',65,'3.jpg',0),('/image/140505/3_RkucBZ.jpg',3,1399271779,'0',66,'2.jpg',0),('/image/140505/4_oHp5nl.jpg',4,1399271796,'0',67,'2.jpg',0),('/image/140505/3_lpGUtr.jpg',3,1399271801,'0',68,'7.jpg',0),('/image/140605/3_e0eY6c.jpg',3,1401961423,'0',69,'7 (5).jpg',0),('/image/140605/3_g2n6FG.jpg',3,1401961446,'0',70,'6 (4).jpg',0),('/image/140605/4_dCkGRq.jpg',4,1401961450,'0',71,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_2SUT6l.jpg',3,1401961461,'0',72,'7-1.jpg',0),('/image/140605/4_WmUBJQ.jpg',4,1401961469,'0',73,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_ewfOq0.jpg',3,1401962880,'0',74,'6 (3).jpg',0),('/image/140605/3_WaptMe.jpg',3,1401962921,'0',75,'7.jpg',0),('/image/140605/4_lYeG9k.jpg',4,1401962939,'0',76,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_C7P7Sq.jpg',3,1401962957,'0',77,'7 (1).jpg',0),('/image/140605/3_7h9Vmw.jpg',3,1401962988,'0',78,'1.jpg',0),('/image/140605/3_LG09xv.jpg',3,1401963001,'0',79,'11.jpg',0),('/image/140605/4_lsrUdd.jpg',4,1401963035,'0',80,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140605/3_vEHs35.jpg',3,1401963053,'0',81,'14.jpg',0),('/image/140605/3_YsX9Gs.jpg',3,1401963062,'0',82,'26.jpg',0),('/image/140605/3_ycX3YQ.jpg',3,1401964317,'0',83,'1.jpg',0),('/image/140605/3_GT0T1Y.jpg',3,1401964338,'0',84,'1.jpg',0),('/image/140605/3_ljZPQ9.jpg',3,1401964347,'0',85,'IMG_4871.jpg',0),('/image/140605/4_iiac6u.jpg',4,1401964359,'0',86,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140616/3_bE4a8m.jpg',3,1402886685,'0',87,'1.jpg',0),('/image/140616/3_b2cYLN.jpg',3,1402886694,'0',88,'IMG_4871.jpg',0),('/image/140616/4_4dlVrp.jpg',4,1402886708,'0',89,'IMG_4871.jpg',0),('/image/140616/3_6At1Hs.jpg',3,1402886720,'0',90,'1.jpg',0),('/image/140617/3_6PIfNB.jpg',3,1402986451,'0',91,'IMG_4871.jpg',0),('/image/140617/3_hXOJNJ.jpg',3,1402986492,'0',92,'IMG_4871.jpg',0),('/image/140617/3_K3xS4a.jpg',3,1402986660,'0',93,'1.jpg',0),('/image/140617/3_R1M3Uk.jpg',3,1402986695,'0',94,'IMG_4871.jpg',0),('/image/140617/3_pqEV2A.jpg',3,1402986817,'0',95,'1.jpg',0),('/image/140617/3_VGHSE8.jpg',3,1402986945,'0',96,'IMG_4871.jpg',0),('/image/140617/3_G9lVT8.jpg',3,1402986994,'0',97,'1.jpg',0),('/image/140617/3_c0FWVL.jpg',3,1402987153,'0',98,'IMG_4871.jpg',0),('/image/140617/3_Qb9IoZ.jpg',3,1402987186,'0',99,'1.jpg',0),('/image/140617/3_voVj0t.jpg',3,1402987621,'0',100,'IMG_4871.jpg',0),('/image/140617/3_s5wlRo.jpg',3,1402987814,'0',101,'1.jpg',0),('/image/140617/3_PhnGSh.jpg',3,1402988691,'0',102,'IMG_4871.jpg',0),('/image/140617/3_8EFDOI.jpg',3,1402988700,'0',103,'1.jpg',0),('/image/140617/3_5M5WmJ.jpg',3,1402988836,'0',104,'1.jpg',0),('/image/140617/3_0Dxut3.jpg',3,1402988843,'0',105,'IMG_4871.jpg',0),('/image/140617/3_MTncmp.jpg',3,1402988880,'0',106,'1.jpg',0),('/image/140617/3_thsQdB.jpg',3,1402988889,'0',107,'IMG_4871.jpg',0),('/image/140617/3_y3pup7.jpg',3,1402988904,'0',108,'IMG_4871.jpg',0),('/image/140617/3_G0TOwc.jpg',3,1402988972,'0',109,'1.jpg',0),('/image/140617/3_OKQ0UD.jpg',3,1402988978,'0',110,'IMG_4871.jpg',0),('/image/140617/3_3uA4ZS.jpg',3,1402989952,'0',111,'1.jpg',0),('/image/140617/3_Wo88Vr.jpg',3,1402990155,'0',112,'IMG_4871.jpg',0),('/image/140617/3_1EojMg.jpg',3,1402990371,'0',113,'1.jpg',0),('/image/140617/3_9ZvK9V.jpg',3,1402990708,'0',114,'1.jpg',0),('/image/140617/3_Jwr7IR.jpg',3,1402990713,'0',115,'IMG_4871.jpg',0),('/image/140617/3_DiZby6.jpg',3,1402990721,'0',116,'1.jpg',0),('/image/140617/3_W5Ftv6.jpg',3,1402990732,'0',117,'IMG_4871.jpg',0),('/image/140617/3_PkDLqu.jpg',3,1402990817,'0',118,'1.jpg',0),('/image/140617/3_Mx4iwS.jpg',3,1402990827,'0',119,'IMG_4871.jpg',0),('/image/140617/3_Vgod3X.jpg',3,1402990847,'0',120,'1.jpg',0),('/image/140617/3_JFWAsD.jpg',3,1402990893,'0',121,'IMG_4871.jpg',0),('/image/140617/3_Mx24IU.jpg',3,1402990908,'0',122,'1.jpg',0),('/image/140617/3_oxeBXD.jpg',3,1402990980,'0',123,'1.jpg',0),('/image/140617/3_NgfBC9.jpg',3,1402991468,'0',124,'1.jpg',0),('/image/140617/3_igsYjD.jpg',3,1402991659,'0',125,'IMG_4871.jpg',0),('/image/140617/3_DVv8Xv.jpg',3,1402992018,'0',126,'1.jpg',0),('/image/140617/3_itTCah.jpg',3,1402992029,'0',127,'IMG_4871.jpg',0),('/image/140617/3_qIi5R9.jpg',3,1402992060,'0',128,'IMG_4871.jpg',0),('/image/140617/3_jYLzhE.jpg',3,1402992335,'0',129,'1.jpg',0),('/image/140617/3_gRfZb0.jpg',3,1402992383,'0',130,'IMG_4871.jpg',0),('/image/140617/3_eqIu0C.jpg',3,1402992490,'0',131,'IMG_4871.jpg',0),('/image/140617/3_H30gjn.jpg',3,1402992502,'0',132,'1.jpg',0),('/image/140617/3_bod37t.jpg',3,1403001214,'0',133,'1.jpg',0),('/image/140617/3_wX9GpF.jpg',3,1403001285,'0',134,'IMG_4871.jpg',0),('/image/140617/3_Cdid2O.jpg',3,1403001801,'0',135,'1.jpg',0),('/image/140617/3_3voQxN.jpg',3,1403001861,'0',136,'IMG_4871.jpg',0),('/image/140617/3_H9A9xz.jpg',3,1403001881,'0',137,'1.jpg',0),('/image/140617/3_Sb9u4K.jpg',3,1403002271,'0',138,'1.jpg',0),('/image/140617/3_QA6hke.jpg',3,1403002290,'0',139,'IMG_4871.jpg',0),('/image/140617/4_Wezo5L.jpg',4,1403002357,'0',140,'1.jpg',0),('/image/140617/3_TZVzMk.jpg',3,1403002409,'0',141,'IMG_4871.jpg',0),('/image/140617/4_6zsXdN.jpg',4,1403002438,'0',142,'1.jpg',0),('/image/140617/4_5Mo2An.jpg',4,1403002468,'0',143,'IMG_4871.jpg',0),('/image/140617/4_FAEbH8.jpg',4,1403002493,'0',144,'1.jpg',0),('/image/140617/3_as3UKr.jpg',3,1403006600,'0',145,'1.jpg',0),('/image/140617/3_Hh6sfp.jpg',3,1403006666,'0',146,'1.jpg',0),('/image/140617/3_LCxRsI.jpg',3,1403009986,'0',147,'1.jpg',0),('/image/140617/4_aqnmwn.jpg',4,1403010074,'0',148,'1.jpg',0),('/image/140617/3_YERkmO.jpg',3,1403010087,'0',149,'IMG_4871.jpg',0),('/image/140618/3_RpzsIY.png',3,1403054756,'0',150,'left_chatter.png',0),('/image/140618/3_ZvxErF.png',3,1403054885,'0',151,'emoji_people.png',0),('/image/140618/3_TAWBBq.png',3,1403056089,'0',152,'left_chatter.png',0),('/image/140618/3_EvQaK4.png',3,1403057103,'0',153,'groups.png',0),('/image/140618/3_kvA4Fz.png',3,1403083353,'0',154,'emoji_people.png',0),('/image/140618/3_EbhDBQ.png',3,1403091391,'0',155,'wechat_96.png',0),('/image/140618/3_uPvOff.png',3,1403091467,'0',156,'wechat_64.png',0),('/image/140618/3_r0ELum.png',3,1403093222,'0',157,'wechat_48.png',0),('/image/140618/4_05DAXd.png',4,1403095628,'0',158,'logo-16x16.png',0),('/image/140618/3_A8baqi.png',3,1403095642,'0',159,'wechat_96.png',0),('/image/140618/4_W5JuS2.png',4,1403095729,'0',160,'logo-32x32.png',0),('/image/140618/4_F6GneW.png',4,1403095976,'0',161,'left_chatter.png',0),('/image/140618/4_1GTzqb.png',4,1403095991,'0',162,'emoji_people.png',0),('/image/140618/4_xsI9Ow.png',4,1403096060,'0',163,'logo-16x16.png',0),('/image/140618/4_uOQdje.png',4,1403096083,'0',164,'groups.png',0),('/image/140618/3_FmXMHE.png',3,1403096096,'0',165,'wechat_96.png',0),('/image/140618/4_YzFGDy.png',4,1403096107,'0',166,'logo-36x36.png',0),('/image/140618/4_K3d41E.png',4,1403096121,'0',167,'left_chatter.png',0),('/image/140618/3_s2vu3H.png',3,1403096134,'0',168,'wechat_96.png',0),('/image/140618/4_ayvYTn.png',4,1403096142,'0',169,'camera.png',0),('/image/140618/4_1ZKVPL.png',4,1403096156,'0',170,'emoji_people.png',0),('/image/140618/3_NcOBZ4.png',3,1403096181,'0',171,'wechat_64.png',0),('/image/140618/3_RBGvo9.png',3,1403096205,'0',172,'wechat_96.png',0),('/image/140618/3_CbC7SI.png',3,1403096234,'0',173,'camera.png',0),('/image/140618/4_hX5ezh.gif',4,1403096253,'0',174,'jcrop.gif',0),('/image/140618/3_gQwuU8.png',3,1403096268,'0',175,'logo-152x152.png',0),('/image/140618/3_BmUbwd.png',3,1403096276,'0',176,'speech_bubble_right_2.png',0),('/image/140618/4_0ZFtid.png',4,1403096283,'0',177,'emoji_people.png',0),('/image/140618/4_ivsmmm.png',4,1403096308,'0',178,'speech_bubble_right_2.png',0),('/image/140618/3_WsOAem.png',3,1403096319,'0',179,'emoji_people.png',0),('/image/140618/4_xTynaG.png',4,1403096332,'0',180,'qrcode.png',0),('/image/140618/4_tgmPCY.png',4,1403096365,'0',181,'logo-144x144.png',0),('/image/140618/4_GVrdyU.png',4,1403096378,'0',182,'logo-144x144.png',0),('/image/140618/3_iWdNt5.png',3,1403096387,'0',183,'notify.png',0),('/image/140618/3_MogLrS.png',3,1403096410,'0',184,'logo-76x76.png',0),('/image/140618/3_0NzUZa.png',3,1403096418,'0',185,'speech_bubble_right_2.png',0),('/image/140618/4_REO1iZ.png',4,1403096422,'0',186,'logo-32x32.png',0),('/image/140618/4_S6NwMk.png',4,1403096433,'0',187,'left_chatter.png',0),('/image/140618/4_GTI1mY.png',4,1403096439,'0',188,'camera.png',0),('/image/140618/4_7HKYvf.png',4,1403096447,'0',189,'logo-32x32.png',0),('/image/140618/3_0KhrY2.png',3,1403096462,'0',190,'logo-36x36.png',0),('/image/140619/3_2NI0jc.png',3,1403140094,'0',191,'emoji_people.png',0),('/image/140619/3_qcN352.png',3,1403140263,'0',192,'groups.png',0),('/image/140619/3_guNvwg.png',3,1403140305,'0',193,'emoji_people.png',0),('/image/140619/3_qFpisD.png',3,1403140584,'0',194,'emoji_people.png',0),('/image/140619/3_qzdd8o.png',3,1403143810,'0',195,'logo-16x16.png',0),('/image/140619/3_AiyX3T.png',3,1403143817,'0',196,'emoji_people.png',0),('/image/140704/3_OIXyy8.png',3,1404475116,'0',197,'clock.png',0),('/image/140704/4_4ex8GF.jpg',4,1404475123,'0',198,'2.jpg',0),('/image/140709/3_h6oZOU.jpg',3,1404907901,'0',200,'2.jpg',0),('/image/140709/3_IgBmPF.jpg',3,1404907919,'0',201,'1.jpg',0),('/image/140709/4_4RZK58.jpg',4,1404907930,'0',202,'1.jpg',0),('/image/140709/4_SRjKg0.jpg',4,1404907941,'0',203,'2.jpg',0),('/image/140715/4_hVEd7a.jpg',4,1405387833,'0',204,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/image/140715/3_vUZZCi.jpg',3,1405388025,'0',205,'2.jpg',0),('/image/140715/3_KQ6lPQ.jpg',3,1405388060,'0',206,'1.jpg',0),('/image/140721/4_XpalUS.jpg',4,1405907205,'0',207,'9c7bdde7d0db3e001375cf5fd63e5094.jpg',0),('/application/140721/4_wWN1nu.JPG',4,1405907240,'0',208,'645921.JPG',0),('/image/140721/3_tB7kbD.png',3,1405907252,'0',209,'childhome.png',0),('/application/140721/4_ovmbSb.JPG',4,1405907276,'0',210,'645921 (1).JPG',0),('/image/140730/3_abE8vl.png',3,1406718472,'0',211,'icon_72x72.png',0),('/image/140801/3_sHmsN4.png',3,1406890354,'0',212,'artwork-source.png',0),('/image/140801/3_Hh43zg.png',3,1406890452,'0',213,'logo.46_46.png',0),('/image/140801/3_GJzG1Z.png',3,1406890490,'0',214,'artwork-source.png',0),('/image/140801/3_uKhvQ3.png',3,1406890648,'0',215,'artwork-source.png',0),('/image/140801/3_wv6pHP.png',3,1406890938,'0',216,'logo.46_46.png',0),('/image/140801/3_N4N6JN.png',3,1406890959,'0',217,'artwork-source.png',0),('/image/140801/3_rLu2Nk.png',3,1406891074,'0',218,'logo.46_46.png',0),('/image/140801/3_j8IL1P.png',3,1406891092,'0',219,'artwork-source.png',0),('/image/140801/3_VqUaUl.png',3,1406891161,'0',220,'logo.46_46.png',0),('/image/140801/3_M1aY0U.png',3,1406891165,'0',221,'artwork-source.png',0),('/image/140801/3_C1xe3T.png',3,1406891209,'0',222,'logo.46_46.png',0),('/image/140801/3_O8hoXB.png',3,1406891386,'0',223,'artwork-source.png',0),('/image/140801/3_ROl5Zw.png',3,1406891546,'0',224,'logo.46_46.png',0),('/image/140801/3_NXxriy.png',3,1406891699,'0',225,'logo.46_46.png',0),('/image/140801/3_G5SUFz.png',3,1406891723,'0',226,'artwork-source.png',0),('/image/140801/3_KgedYN.png',3,1406891822,'0',227,'logo.46_46.png',0),('/image/140801/3_OTP6Kh.png',3,1406891856,'0',228,'artwork-source.png',0),('/image/140801/3_NLQ9OG.png',3,1406891887,'0',229,'logo.46_46.png',0),('/image/140801/3_ujGyX0.png',3,1406892065,'0',230,'logo.46_46.png',0),('/image/140801/3_MlhdKE.png',3,1406892247,'0',231,'logo.46_46.png',0),('/image/140801/3_948H7C.png',3,1406892310,'0',232,'artwork-source.png',0),('/image/140801/3_k6CiMW.png',3,1406892493,'0',233,'artwork-source.png',0),('/image/140801/3_F8Vrem.png',3,1406892523,'0',234,'logo.46_46.png',0),('/image/140801/3_yFut1w.png',3,1406892565,'0',235,'logo.46_46.png',0),('/image/140801/3_c5IfsQ.png',3,1406892601,'0',236,'logo.46_46.png',0),('/image/140801/3_SNqKGB.png',3,1406892650,'0',237,'logo.46_46.png',0),('/image/140801/3_VRI68X.png',3,1406892802,'0',238,'artwork-source.png',0),('/image/140801/3_AoD2bq.png',3,1406892824,'0',239,'logo.46_46.png',0),('/image/140801/4_xglCfK.gif',4,1406892852,'0',240,'245.gif',0),('/image/140801/3_xGna14.png',3,1406892862,'0',241,'logo.46_46.png',0),('/image/140801/3_PverWc.png',3,1406892975,'0',242,'logo.46_46.png',0),('/image/140801/3_rxKG5V.png',3,1406893066,'0',243,'logo.46_46.png',0),('/image/140801/3_8y6wcb.png',3,1406893155,'0',244,'artwork-source.png',0),('/image/140801/3_mvBUmv.png',3,1406893214,'0',245,'logo.46_46.png',0),('/image/140801/3_QUr2w3.png',3,1406893458,'0',246,'logo.46_46.png',0),('/image/140801/3_v9YKKX.png',3,1406893601,'0',247,'logo.46_46.png',0),('/image/140801/3_jsVyNz.png',3,1406893760,'0',248,'logo.46_46.png',0),('/image/140801/3_3TpSTo.png',3,1406893811,'0',249,'logo.46_46.png',0),('/image/140801/3_9MFwm9.png',3,1406894441,'0',250,'artwork-source.png',0),('/image/140801/3_JFEMBo.png',3,1406894492,'0',251,'apple-touch-icon-precomposed.png',0),('/image/140801/3_AH9ejq.png',3,1406894547,'0',252,'Icon-Small-20.png',0),('/image/140801/3_Vl4Vvv.png',3,1406894630,'0',253,'apple-touch-icon-precomposed.png',0),('/image/140801/3_NuT5p4.png',3,1406894703,'0',254,'Icon-72@2x.png',0),('/image/140801/3_sxa8G9.png',3,1406894787,'0',255,'Icon-72@2x.png',0),('/image/140801/3_1zLYG9.png',3,1406894841,'0',256,'Icon-Small-50.png',0),('/application/140801/4_19Z5sT.JPG',4,1406894869,'0',257,'645921.JPG',0),('/image/140801/3_sntVh6.png',3,1406894879,'0',258,'Icon-72@2x.png',0),('/image/140801/3_BokIdB.png',3,1406895709,'0',259,'Icon-Small-30@2x.png',0),('/image/140801/3_g9kHer.png',3,1406895775,'0',260,'Icon-Small-20@2x.png',0),('/image/140801/3_gD0gLW.png',3,1406895790,'0',261,'Icon-Small-30.png',0),('/image/140801/3_kZUz9n.png',3,1406895810,'0',262,'Icon-Small-50@2x.png',0),('/image/140801/3_6NUSZZ.png',3,1406895834,'0',263,'apple-touch-icon-144x144-precomposed.png',0),('/image/140801/3_fpcU3t.png',3,1406895863,'0',264,'Icon@2x.png',0),('/image/140801/3_3HBTLr.png',3,1406895907,'0',265,'Icon-Small@2x.png',0),('/image/140801/3_7svGS7.png',3,1406901478,'0',266,'logo.46_46.png',0),('/image/140801/3_oUcvht.png',3,1406901501,'0',267,'Icon-Small-30@2x.png',0),('/image/140801/3_TaCATe.png',3,1406901535,'0',268,'Icon-Small@2x.png',0),('/application/140801/4_tGNbkB.JPG',4,1406901540,'0',269,'645921 (1).JPG',0),('/image/140801/3_zq5AQX.png',3,1406901553,'0',270,'apple-touch-icon-144x144-precomposed.png',0),('/application/140801/4_xi5OMq.JPG',4,1406901588,'0',271,'645921.JPG',0),('/image/140801/4_OR0AQF.gif',4,1406901596,'0',272,'245.gif',0),('/image/140819/4_juokOo.png',4,1408414102,'image/png',275,'logo.46_46.png',0),('/image/140819/3_LNFw91.png',3,1408414521,'image/png',276,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_8J70MO.png',3,1408414593,'image/png',277,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_yXWTha.png',3,1408414954,'image/png',278,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_4z7fUi.png',3,1408414974,'image/png',279,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_PLtyir.png',3,1408415126,'image/png',280,'Screen Shot 2013-10-25 at 10.24.45 AM.png',0),('/image/140819/3_5rLayj.png',3,1408415764,'image/png',281,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_NuyMPW.png',3,1408415811,'image/png',282,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_IBJ7Hr.png',3,1408415850,'image/png',283,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_Kkgujp.png',3,1408416416,'image/png',284,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_GSh53Z.png',3,1408416448,'image/png',285,'Screen Shot 2013-10-25 at 10.24.45 AM.png',0),('/image/140819/3_eOReNs.png',3,1408416633,'image/png',286,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_TBpxT5.png',3,1408416689,'image/png',287,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/3_UTIi9l.png',3,1408416828,'image/png',288,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/3_Yn4xKL.png',3,1408416913,'image/png',289,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_G5D8Be.png',4,1408416964,'image/png',290,'logo.46_46.png',0),('/image/140819/4_Jb4zgo.png',4,1408416984,'image/png',291,'logo.46_46.png',0),('/image/140819/4_I9Dwjs.png',4,1408417012,'image/png',292,'logo.46_46.png',0),('/image/140819/3_bTPy5a.png',3,1408417052,'image/png',293,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_qjjh5N.png',4,1408417145,'image/png',294,'artwork-source.png',0),('/image/140819/4_EilcEB.png',4,1408428515,'image/png',299,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_sRENMs.png',4,1408429003,'image/png',300,'Screen Shot 2013-10-25 at 10.27.09 AM 1.png',0),('/image/140819/4_yX6e0D.png',4,1408430171,'image/png',301,'Screen Shot 2013-10-25 at 10.25.03 AM.png',0),('/image/140819/4_yzoImb.png',4,1408430294,'image/png',302,'america.png',0),('/image/140819/4_HGoxk5.png',4,1408430555,'image/png',303,'america.png',0),('/image/140819/4_n5mujP.png',4,1408430716,'image/png',304,'china.png',0),('/image/140819/4_rkmMss.png',4,1408430833,'image/png',305,'america.png',0),('/image/140819/4_nAugQy.png',4,1408432124,'image/png',306,'america.png',0),('/image/140819/4_R6CEgT.png',4,1408432558,'image/png',307,'america.png',0),('/image/140819/4_Mz2fYS.png',4,1408432620,'image/png',308,'china.png',0),('/image/140819/3_LE6UED.png',3,1408432636,'image/png',309,'logo.46_46.png',0),('/image/140819/4_mgqPDq.png',4,1408432655,'image/png',310,'china.png',0),('/image/140819/4_f0qWqH.png',4,1408432679,'image/png',311,'america.png',0),('/image/140819/4_7cscOq.png',4,1408432751,'image/png',312,'america.png',0),('/image/140819/4_RZwHKT.png',4,1408432755,'image/png',313,'america.png',0),('/image/140819/4_hGomjj.png',4,1408432765,'image/png',314,'america.png',0),('/image/140819/4_YDuW1a.png',4,1408432785,'image/png',315,'china.png',0),('/image/140819/3_t7AnC9.png',3,1408432794,'image/png',316,'logo.46_46.png',0),('/image/140819/4_uaJEEc.png',4,1408432821,'image/png',317,'america.png',0),('/image/140819/4_t3Jh4L.png',4,1408432853,'image/png',318,'america.png',0),('/image/140819/3_LFhudb.png',3,1408432862,'image/png',319,'logo.46_46.png',0),('/image/140819/3_3hmOuA.png',3,1408432882,'image/png',320,'artwork-source.png',0),('/image/140819/3_6BvXXP.png',3,1408432955,'image/png',321,'artwork-source.png',0),('/image/140819/3_Fwnm4f.png',3,1408432963,'image/png',322,'artwork-source.png',0),('/image/140819/3_Iw8knU.png',3,1408432990,'image/png',323,'artwork-source.png',0),('/image/140819/3_niFP3e.png',3,1408433015,'image/png',324,'logo.46_46.png',0),('/image/140819/3_MMcflM.png',3,1408433030,'image/png',325,'logo.46_46.png',0),('/image/140819/3_u4KGLN.png',3,1408433069,'image/png',326,'logo.46_46.png',0),('/image/140819/3_Yg2Bwa.png',3,1408433151,'image/png',327,'artwork-source.png',0),('/image/140819/3_SsMNTR.png',3,1408433181,'image/png',328,'logo.46_46.png',0),('/image/140819/3_KAyvtW.png',3,1408433210,'image/png',329,'logo.46_46.png',0),('/image/140819/3_RmbXfr.png',3,1408433276,'image/png',330,'artwork-source.png',0),('/image/140819/3_Iq6x8I.png',3,1408433372,'image/png',331,'artwork-source.png',0),('/image/140819/3_OSJX3Q.png',3,1408433400,'image/png',332,'artwork-source.png',0),('/image/140819/3_TXhVRP.png',3,1408433505,'image/png',333,'logo.46_46.png',0),('/image/140819/3_Ra7KPu.png',3,1408433546,'image/png',334,'artwork-source.png',0),('/image/140819/3_8d6Jpt.png',3,1408433611,'image/png',335,'logo.46_46.png',0),('/image/140819/3_5ufh01.png',3,1408433698,'image/png',336,'artwork-source.png',0),('/image/140819/3_4ruXgb.png',3,1408433734,'image/png',337,'logo.46_46.png',0),('/image/140819/4_w6LLdM.png',4,1408433757,'image/png',338,'america.png',0),('/image/140819/3_9pO5cW.png',3,1408433780,'image/png',339,'artwork-source.png',0),('/image/140819/4_9xCItc.png',4,1408433799,'image/png',340,'america.png',0),('/image/140819/4_pnG7BN.png',4,1408433837,'image/png',341,'china.png',0),('/image/140819/3_k4pvdm.png',3,1408433847,'image/png',342,'logo.46_46.png',0),('/image/140819/4_WXix8n.png',4,1408434085,'image/png',343,'china.png',0),('/image/140819/3_SWQL2v.png',3,1408434104,'image/png',344,'logo.46_46.png',0),('/image/140819/3_OoKxlV.png',3,1408434651,'image/png',345,'artwork-source.png',0),('/image/140819/3_0CYMUc.png',3,1408434730,'image/png',346,'artwork-source.png',0),('/image/140819/3_OkBba1.png',3,1408434893,'image/png',347,'artwork-source.png',0),('/image/140819/4_P5NUux.png',4,1408434923,'image/png',348,'america.png',0),('/image/140819/3_HVBSqR.png',3,1408434937,'image/png',349,'logo.46_46.png',0),('/image/140819/3_WLjvne.png',3,1408434996,'image/png',350,'artwork-source.png',0),('/image/140819/3_FVn9o0.png',3,1408435023,'image/png',351,'logo.46_46.png',0),('/image/140819/4_azlh85.png',4,1408435639,'image/png',352,'america.png',0),('/image/140911/3_XgGovI.jpg',3,1410433036,'image/jpeg',353,'haha.jpg',0),('/image/140911/3_cWYGz3.png',3,1410433243,'image/png',354,'w.png',0),('/image/140911/3_O1IHe0.png',3,1410433390,'image/png',355,'w.png',0),('/image/140911/3_7wGy8D.jpg',3,1410433700,'image/jpeg',356,'haha.jpg',0),('/image/140911/7_pVyPpO.jpg',7,1410434349,'image/jpeg',357,'haha.jpg',0),('/image/140911/7_K5JLcg.png',7,1410434389,'image/png',358,'w.png',0),('/image/140911/7_wGoGq6.png',7,1410434560,'image/png',359,'w.png',0),('/image/140911/7_PKv1oF.jpg',7,1410434948,'image/jpeg',360,'haha.jpg',0),('/image/140911/7_ilEJX0.png',7,1410434974,'image/png',361,'w.png',0),('/image/140911/7_HAXC7F.jpg',7,1410434988,'image/jpeg',362,'haha.jpg',0),('/image/140911/7_TpsuQr.jpg',7,1410435020,'image/jpeg',363,'haha.jpg',0),('/image/140911/7_GVeU9j.jpg',7,1410435098,'image/jpeg',364,'haha.jpg',0),('/image/140911/7_BYXOfZ.jpg',7,1410435179,'image/jpeg',365,'haha.jpg',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1188 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_notification`
--

LOCK TABLES `v_notification` WRITE;
/*!40000 ALTER TABLE `v_notification` DISABLE KEYS */;
INSERT INTO `v_notification` VALUES (3,'chat','',3,'Cameron','Screen Shot 2013-10-25 at 10.25.03 AM.png',1408416913,91,'pic','/img/people/3.png','g',1,289,'',''),(4,'chat','',3,'Cameron','Screen Shot 2013-10-25 at 10.25.03 AM.png',1408416913,91,'pic','/img/people/3.png','g',2,289,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409559295,4,'video','/img/people/3.png','u',490,0,'201481__3__u_4_dcyrsbp3p_295412',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409559349,4,'screen','/img/people/3.png','u',491,0,'201481__3__u_4_mxdmxth5b_349385',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409559350,4,'screen','/img/people/3.png','u',492,0,'201481__3__u_4_mxdmxth5b_349385',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409559647,4,'video','/img/people/3.png','u',493,0,'201481__3__u_4_j7v6xtqdl_647265',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409569921,4,'video','/img/people/3.png','u',494,0,'201481__3__u_4_yzezujzrl_921735',''),(4,'chat','\0',3,'Cameron','fdsafdsafdsa',1409572778,3,'text','/img/people/3.png','u',495,0,'',''),(4,'chat','\0',3,'Cameron','wifdsalfas',1409572783,3,'text','/img/people/3.png','u',496,0,'',''),(4,'chat','\0',3,'Cameron','wfwfwfe',1409572826,3,'text','/img/people/3.png','u',497,0,'',''),(4,'chat','\0',3,'Cameron','dfsafad',1409572828,3,'text','/img/people/3.png','u',498,0,'',''),(4,'chat','\0',3,'Cameron',':#em-joy_cat#: :#em-joy_cat#: :#em-kiss#: ',1409572997,3,'text','/img/people/3.png','u',499,0,'',''),(4,'chat','\0',3,'Cameron',':#em-point_up#: :#em-point_up_2#: :#em-poop#: windows apifdsafd:#em-walking#: ',1409573082,3,'text','/img/people/3.png','u',500,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409573225,4,'video','/img/people/3.png','u',501,0,'201481__3__u_4_f0esjubix_225398',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409573362,4,'video','/img/people/3.png','u',502,0,'201481__3__u_4_b11lkwbev_362332',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409573814,4,'video','/img/people/3.png','u',503,0,'201481__3__u_4_m2mknz6v9_814462',''),(4,'chat','\0',3,'Cameron','wwwwww',1409620310,3,'text','/img/people/3.png','u',504,0,'',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409620347,4,'screen','/img/people/3.png','u',505,0,'201482__3__u_4_hfttidpv1_346979',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409620347,4,'screen','/img/people/3.png','u',506,0,'201482__3__u_4_hfttidpv1_346979',''),(4,'chat','\0',3,'Cameron','fdsafdsa',1409640115,3,'text','/img/people/3.png','u',507,0,'',''),(4,'chat','\0',3,'Cameron','fdsafdsa',1409640283,3,'text','/img/people/3.png','u',508,0,'',''),(4,'chat','\0',3,'Cameron','fdsaf',1409640285,3,'text','/img/people/3.png','u',509,0,'',''),(4,'chat','\0',3,'Cameron','fdasfd',1409640286,3,'text','/img/people/3.png','u',510,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409641312,4,'video','/img/people/3.png','u',511,0,'201482__3__u_4_pyn9edctx_312593',''),(4,'chat','\0',3,'Cameron','vdsfa',1409643163,3,'text','/img/people/3.png','u',512,0,'',''),(4,'chat','\0',3,'Cameron',':#em-finnadie#: :#em-fire#: :#em-fist#: ',1409644752,3,'text','/img/people/3.png','u',513,0,'',''),(4,'chat','\0',3,'Cameron',':#em-point_up_2#: ',1409644843,3,'text','/img/people/3.png','u',514,0,'',''),(4,'chat','\0',3,'Cameron','fdsadas',1409644922,3,'text','/img/people/3.png','u',515,0,'',''),(4,'chat','\0',3,'Cameron',':#em-person_frowning#: :#em-person_with_blond_hair#: ',1409644927,3,'text','/img/people/3.png','u',516,0,'',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409649165,4,'video','/img/people/3.png','u',517,0,'201482__3__u_4_5874dxnlv_165038',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409650648,4,'video','/img/people/3.png','u',518,0,'201482__3__u_4_1y5vxj8a5_648431',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651079,4,'screen','/img/people/3.png','u',519,0,'201482__3__u_4_ac18km3pj_079108',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651079,4,'screen','/img/people/3.png','u',520,0,'201482__3__u_4_ac18km3pj_079108',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651082,4,'video','/img/people/3.png','u',521,0,'201482__3__u_4_8v5ay2qzd_082765',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651306,4,'video','/img/people/3.png','u',522,0,'201482__3__u_4_winqdjeqr_306774',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651440,4,'video','/img/people/3.png','u',523,0,'201482__3__u_4_ehn1ot9n4_440258',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651568,4,'video','/img/people/3.png','u',524,0,'201482__3__u_4_fi7x81qkm_568830',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409651593,4,'video','/img/people/3.png','u',525,0,'201482__3__u_4_c1jpjb9vw_593805',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651745,4,'screen','/img/people/3.png','u',526,0,'201482__3__u_4_707uolneh_745778',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409651746,4,'screen','/img/people/3.png','u',527,0,'201482__3__u_4_707uolneh_745778',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409652040,4,'video','/img/people/3.png','u',528,0,'201482__3__u_4_a4jcwcz62_040716',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409653829,4,'screen','/img/people/3.png','u',529,0,'201482__3__u_4_p2ntu4z3j_829891',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409653830,4,'screen','/img/people/3.png','u',530,0,'201482__3__u_4_p2ntu4z3j_829891',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409653859,4,'video','/img/people/3.png','u',531,0,'201482__3__u_4_gu57vam3l_859750',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409653994,4,'video','/img/people/3.png','u',532,0,'201482__3__u_4_jpybl4xxw_994792',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654008,4,'video','/img/people/3.png','u',533,0,'201482__3__u_4_tj3iiihxq_008882',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654626,4,'video','/img/people/3.png','u',534,0,'201482__3__u_4_xhwbelg96_625878',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654716,4,'video','/img/people/3.png','u',535,0,'201482__3__u_4_ttei2t7lx_716907',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409654779,4,'video','/img/people/3.png','u',536,0,'201482__3__u_4_x2gjutm85_779377',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655085,4,'video','/img/people/3.png','u',537,0,'201482__3__u_4_p1xbdwbzg_085792',''),(3,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1409655261,3,'video','/img/people/sys/174.png','u',538,0,'201482__4__u_3_ohjohyye0_261389',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655272,4,'video','/img/people/3.png','u',539,0,'201482__3__u_4_p57999yvv_271978',''),(3,'chat','\0',4,'Andy Liu','Andy Liu is inviting you for video chat',1409655415,3,'video','/img/people/sys/174.png','u',540,0,'201482__4__u_3_ebloum8ds_415602',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655424,4,'video','/img/people/3.png','u',541,0,'201482__3__u_4_o18wgint1_424493',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655791,4,'video','/img/people/3.png','u',542,0,'201482__3__u_4_5h270msfi_791821',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655835,4,'video','/img/people/3.png','u',543,0,'201482__3__u_4_wvwif7l0b_834995',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409655953,4,'video','/img/people/3.png','u',544,0,'201482__3__u_4_bvzff0qtb_953576',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409658273,4,'video','/img/people/3.png','u',545,0,'201482__3__u_4_8c9pk7c6r_273586',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409658886,4,'video','/img/people/3.png','u',546,0,'201482__3__u_4_9j40x046w_886260',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409659223,4,'video','/img/people/3.png','u',547,0,'201482__3__u_4_cqoubidte_223738',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409659304,4,'video','/img/people/3.png','u',548,0,'201482__3__u_4_yt3979wl1_303966',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409659453,4,'video','/img/people/3.png','u',549,0,'201482__3__u_4_109v77fz1_453799',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659603,4,'screen','/img/people/3.png','u',550,0,'201482__3__u_4_zim8kf491_603823',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659604,4,'screen','/img/people/3.png','u',551,0,'201482__3__u_4_zim8kf491_603823',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659756,4,'screen','/img/people/3.png','u',552,0,'201482__3__u_4_qqdbma747_756153',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409659756,4,'screen','/img/people/3.png','u',553,0,'201482__3__u_4_qqdbma747_756153',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409660151,4,'screen','/img/people/3.png','u',554,0,'201482__3__u_4_bs2trw26r_151692',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409660151,4,'screen','/img/people/3.png','u',555,0,'201482__3__u_4_bs2trw26r_151692',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',556,0,'201482__3__g_91_5lk8av8xs_726398',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',557,0,'201482__3__g_91_5lk8av8xs_726398',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',558,0,'201482__3__g_91_5lk8av8xs_726398',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',559,0,'201482__3__g_91_5lk8av8xs_726398',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',560,0,'201482__3__g_91_5lk8av8xs_726398',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',561,0,'201482__3__g_91_5lk8av8xs_726398',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',562,0,'201482__3__g_91_5lk8av8xs_726398',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662726,91,'screen','/img/people/3.png','g',563,0,'201482__3__g_91_5lk8av8xs_726398',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',564,0,'201482__3__g_91_tbq1arz6b_729150',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',565,0,'201482__3__g_91_tbq1arz6b_729150',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',566,0,'201482__3__g_91_tbq1arz6b_729150',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',567,0,'201482__3__g_91_tbq1arz6b_729150',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',568,0,'201482__3__g_91_tbq1arz6b_729150',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',569,0,'201482__3__g_91_tbq1arz6b_729150',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',570,0,'201482__3__g_91_tbq1arz6b_729150',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662729,91,'screen','/img/people/3.png','g',571,0,'201482__3__g_91_tbq1arz6b_729150',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662813,4,'screen','/img/people/3.png','u',572,0,'201482__3__u_4_37y45edlt_813708',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662813,4,'screen','/img/people/3.png','u',573,0,'201482__3__u_4_37y45edlt_813708',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662820,4,'screen','/img/people/3.png','u',574,0,'201482__3__u_4_hcxcox759_820602',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409662820,4,'screen','/img/people/3.png','u',575,0,'201482__3__u_4_hcxcox759_820602',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409662825,4,'video','/img/people/3.png','u',576,0,'201482__3__u_4_j9x3vxyj8_825925',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',577,0,'201482__3__g_91_zdapvkbti_790336',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',578,0,'201482__3__g_91_zdapvkbti_790336',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',579,0,'201482__3__g_91_zdapvkbti_790336',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',580,0,'201482__3__g_91_zdapvkbti_790336',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',581,0,'201482__3__g_91_zdapvkbti_790336',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',582,0,'201482__3__g_91_zdapvkbti_790336',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',583,0,'201482__3__g_91_zdapvkbti_790336',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663790,91,'screen','/img/people/3.png','g',584,0,'201482__3__g_91_zdapvkbti_790336',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',585,0,'201482__3__g_91_nbxtjh9aj_793158',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',586,0,'201482__3__g_91_nbxtjh9aj_793158',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',587,0,'201482__3__g_91_nbxtjh9aj_793158',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',588,0,'201482__3__g_91_nbxtjh9aj_793158',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',589,0,'201482__3__g_91_nbxtjh9aj_793158',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',590,0,'201482__3__g_91_nbxtjh9aj_793158',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',591,0,'201482__3__g_91_nbxtjh9aj_793158',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663793,91,'screen','/img/people/3.png','g',592,0,'201482__3__g_91_nbxtjh9aj_793158',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663795,4,'screen','/img/people/3.png','u',593,0,'201482__3__u_4_h2f4jqi8k_795759',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663795,4,'screen','/img/people/3.png','u',594,0,'201482__3__u_4_h2f4jqi8k_795759',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663859,4,'screen','/img/people/3.png','u',595,0,'201482__3__u_4_2opti037j_859237',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663859,4,'screen','/img/people/3.png','u',596,0,'201482__3__u_4_2opti037j_859237',''),(4,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1409663862,4,'video','/img/people/3.png','u',597,0,'201482__3__u_4_ptqienc8i_862269',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663871,4,'screen','/img/people/3.png','u',598,0,'201482__3__u_4_029a4y411_871661',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1409663871,4,'screen','/img/people/3.png','u',599,0,'201482__3__u_4_029a4y411_871661',''),(3,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',600,0,'201482__4__g_91_1e8xaaiyb_098171',''),(4,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',601,0,'201482__4__g_91_1e8xaaiyb_098171',''),(5,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',602,0,'201482__4__g_91_1e8xaaiyb_098171',''),(7,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664098,91,'screen','/img/people/sys/174.png','g',603,0,'201482__4__g_91_1e8xaaiyb_098171',''),(3,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',604,0,'201482__4__g_91_1e8xaaiyb_098171',''),(4,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',605,0,'201482__4__g_91_1e8xaaiyb_098171',''),(5,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',606,0,'201482__4__g_91_1e8xaaiyb_098171',''),(7,'share','',4,'Andy Liu','Andy Liu is inviting you for desktop sharing',1409664099,91,'screen','/img/people/sys/174.png','g',607,0,'201482__4__g_91_1e8xaaiyb_098171',''),(3,'chat','\0',4,'Andy Liu','fdsaf',1409726814,4,'text','/img/people/sys/174.png','u',608,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdasfdas',1409726823,4,'text','/img/people/sys/174.png','u',609,0,'',''),(3,'chat','\0',4,'Andy Liu','fdasfdas',1409726830,4,'text','/img/people/sys/174.png','u',610,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdas',1409726832,4,'text','/img/people/sys/174.png','u',611,0,'',''),(3,'chat','\0',4,'Andy Liu','dsadfas',1409726837,4,'text','/img/people/sys/174.png','u',612,0,'',''),(3,'chat','\0',4,'Andy Liu','fasdfdsafdsa',1409726905,4,'text','/img/people/sys/174.png','u',613,0,'',''),(3,'chat','\0',4,'Andy Liu','fasdfdsafdsafdsafdsa',1409726906,4,'text','/img/people/sys/174.png','u',614,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdfdsafdas',1409727059,4,'text','/img/people/sys/174.png','u',615,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsafdas',1409727061,4,'text','/img/people/sys/174.png','u',616,0,'',''),(3,'chat','\0',4,'Andy Liu',':#em-person_with_pouting_face#: fdsafdsa',1409727068,4,'text','/img/people/sys/174.png','u',617,0,'',''),(3,'chat','\0',4,'Andy Liu','fdsa',1409727167,4,'text','/img/people/sys/174.png','u',618,0,'',''),(3,'chat','\0',4,'Andy Liu','wfew',1409727210,4,'text','/img/people/sys/174.png','u',619,0,'',''),(4,'chat','\0',3,'Cameron','dsafdsafasafda',1409822778,3,'text','/img/people/3.png','u',620,0,'',''),(4,'chat','\0',3,'Cameron',':#em-two_women_holding_hands#: :#em-unamused#: saf',1409822925,3,'text','/img/people/3.png','u',621,0,'',''),(4,'chat','\0',3,'Cameron','fdsafa',1409823010,3,'text','/img/people/3.png','u',622,0,'',''),(4,'chat','',3,'Cameron','wfwe',1409823259,3,'text','/img/people/3.png','u',623,0,'',''),(4,'chat','',3,'Cameron','fdsa',1409823272,3,'text','/img/people/3.png','u',624,0,'',''),(7,'chat','\0',3,'Cameron','fwewf',1409879843,3,'text','/img/people/3.png','u',625,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409879968,3,'text','/img/people/3.png','u',626,0,'',''),(7,'chat','\0',3,'Cameron','winwdws',1409880035,3,'text','/img/people/3.png','u',627,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409880367,3,'text','/img/people/3.png','u',628,0,'',''),(7,'chat','\0',3,'Cameron','fdsaffdsaf',1409880397,3,'text','/img/people/3.png','u',629,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdas',1409880481,3,'text','/img/people/3.png','u',630,0,'',''),(7,'chat','\0',3,'Cameron','dfasfdsa',1409880521,3,'text','/img/people/3.png','u',631,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409882814,3,'text','/img/people/3.png','u',632,0,'',''),(7,'chat','\0',3,'Cameron','fdsafda',1409887277,3,'text','/img/people/3.png','u',633,0,'',''),(7,'chat','\0',3,'Cameron','fdsa',1409887293,3,'text','/img/people/3.png','u',634,0,'',''),(7,'chat','\0',3,'Cameron','fdsafs',1409887376,3,'text','/img/people/3.png','u',635,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409887501,3,'text','/img/people/3.png','u',636,0,'',''),(7,'chat','\0',3,'Cameron','wwwwwww',1409887701,3,'text','/img/people/3.png','u',637,0,'',''),(7,'chat','\0',3,'Cameron','wefwfwfe',1409888667,3,'text','/img/people/3.png','u',638,0,'',''),(7,'chat','\0',3,'Cameron','fdasfdas',1409888673,3,'text','/img/people/3.png','u',639,0,'',''),(7,'chat','\0',3,'Cameron','dfasfd',1409888748,3,'text','/img/people/3.png','u',640,0,'',''),(7,'chat','\0',3,'Cameron','fdsafsda',1409888756,3,'text','/img/people/3.png','u',641,0,'',''),(7,'chat','\0',3,'Cameron','fsad',1409888757,3,'text','/img/people/3.png','u',642,0,'',''),(7,'chat','\0',3,'Cameron','windows ',1409888889,3,'text','/img/people/3.png','u',643,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdsa',1409889167,3,'text','/img/people/3.png','u',644,0,'',''),(7,'chat','\0',3,'Cameron','fdasfdsa',1409889424,3,'text','/img/people/3.png','u',645,0,'',''),(7,'chat','\0',3,'Cameron','fdsafda',1409889485,3,'text','/img/people/3.png','u',646,0,'',''),(7,'chat','\0',3,'Cameron','fdasfd',1409889529,3,'text','/img/people/3.png','u',647,0,'',''),(7,'chat','\0',3,'Cameron','fdasfdas',1409889628,3,'text','/img/people/3.png','u',648,0,'',''),(7,'chat','\0',3,'Cameron','fdsadfas',1409889629,3,'text','/img/people/3.png','u',649,0,'',''),(3,'chat','',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',650,0,'',''),(4,'chat','',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',651,0,'',''),(5,'chat','',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',652,0,'',''),(7,'chat','\0',3,'Cameron','fdasfda',1409890179,91,'text','/img/people/3.png','g',653,0,'',''),(3,'chat','',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',654,0,'',''),(4,'chat','',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',655,0,'',''),(5,'chat','',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',656,0,'',''),(7,'chat','\0',3,'Cameron','wfew',1409896049,91,'text','/img/people/3.png','g',657,0,'',''),(3,'chat','',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',658,0,'',''),(4,'chat','',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',659,0,'',''),(5,'chat','',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',660,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409896049,91,'text','/img/people/3.png','g',661,0,'',''),(7,'chat','\0',3,'Cameron','windows',1409912831,3,'text','/img/people/3.png','u',662,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409912852,3,'text','/img/people/3.png','u',663,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1409912860,3,'text','/img/people/3.png','u',664,0,'',''),(7,'chat','\0',3,'Cameron','wfewfw',1410232283,3,'text','/img/people/3.png','u',665,0,'',''),(7,'chat','\0',3,'Cameron','windows',1410232289,3,'text','/img/people/3.png','u',666,0,'',''),(7,'chat','\0',3,'Cameron','fsafdsa',1410232291,3,'text','/img/people/3.png','u',667,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdas',1410232294,3,'text','/img/people/3.png','u',668,0,'',''),(7,'chat','\0',3,'Cameron','fsafda',1410232301,3,'text','/img/people/3.png','u',669,0,'',''),(7,'chat','\0',3,'Cameron','wwww',1410232307,3,'text','/img/people/3.png','u',670,0,'',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410233398,7,'video','/img/people/3.png','u',671,0,'201489__3__u_7_mivvpe7ib_398331',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410233424,7,'video','/img/people/3.png','u',672,0,'201489__3__u_7_8aa41wlp6_424138',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410234986,7,'video','/img/people/3.png','u',673,0,'201489__3__u_7_vqwwhy458_986788',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235043,7,'video','/img/people/3.png','u',674,0,'201489__3__u_7_5yee2nrar_043463',''),(3,'chat','\0',7,'Mao Zedong','Mao Zedong is inviting you for video chat',1410235105,3,'video','/img/people/mzd.png','u',675,0,'201489__7__u_3_efxfesy0l_105768',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235522,7,'video','/img/people/3.png','u',676,0,'201489__3__u_7_r9rprncy1_522547',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235535,7,'video','/img/people/3.png','u',677,0,'201489__3__u_7_k17rox9k2_535633',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235560,7,'video','/img/people/3.png','u',678,0,'201489__3__u_7_gn04r4b6i_560138',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235933,7,'video','/img/people/3.png','u',679,0,'201489__3__u_7_pxt2cc35f_932636',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410235988,7,'video','/img/people/3.png','u',680,0,'201489__3__u_7_n2nadl4wo_988819',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410236019,7,'video','/img/people/3.png','u',681,0,'201489__3__u_7_sd1b0zxwj_019224',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410236292,7,'video','/img/people/3.png','u',682,0,'201489__3__u_7_0a5uvklez_292860',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249561,7,'video','/img/people/3.png','u',683,0,'201489__3__u_7_fg6aedlpp_561541',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249748,7,'video','/img/people/3.png','u',684,0,'201489__3__u_7_c7w8gahgs_747873',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249766,7,'video','/img/people/3.png','u',685,0,'201489__3__u_7_diqvhwpv7_765995',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249783,7,'video','/img/people/3.png','u',686,0,'201489__3__u_7_pxv62nm7r_782854',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249854,7,'video','/img/people/3.png','u',687,0,'201489__3__u_7_1503lc6cv_854655',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249912,7,'video','/img/people/3.png','u',688,0,'201489__3__u_7_sy0xs6nuv_912471',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410249932,7,'video','/img/people/3.png','u',689,0,'201489__3__u_7_z4y1ufcx7_932652',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410250207,7,'video','/img/people/3.png','u',690,0,'201489__3__u_7_obc62szt4_207361',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410250501,7,'video','/img/people/3.png','u',691,0,'201489__3__u_7_taiyz9oyj_501227',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410251883,7,'video','/img/people/3.png','u',692,0,'201489__3__u_7_gpwj02i75_883383',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410251968,7,'video','/img/people/3.png','u',693,0,'201489__3__u_7_sg49sw0uq_968219',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410252321,7,'video','/img/people/3.png','u',694,0,'201489__3__u_7_sdit3h5un_321846',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410252545,7,'video','/img/people/3.png','u',695,0,'201489__3__u_7_didtk9br9_545000',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410252566,7,'video','/img/people/3.png','u',696,0,'201489__3__u_7_my974svst_566052',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410253356,7,'video','/img/people/3.png','u',697,0,'201489__3__u_7_9n8w4o0uw_356207',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410253451,7,'video','/img/people/3.png','u',698,0,'201489__3__u_7_d6kb9bp9w_451322',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410253793,7,'video','/img/people/3.png','u',699,0,'201489__3__u_7_r0xzgwtg4_793752',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410254155,7,'video','/img/people/3.png','u',700,0,'201489__3__u_7_n7smzfz4f_155178',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410254329,7,'video','/img/people/3.png','u',701,0,'201489__3__u_7_scpqjecb3_329630',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410254381,7,'video','/img/people/3.png','u',702,0,'201489__3__u_7_pdpst5mwz_381656',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410259386,7,'video','/img/people/3.png','u',703,0,'201489__3__u_7_gtzuhrfbv_386264',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410259527,7,'video','/img/people/3.png','u',704,0,'201489__3__u_7_ltzforw2l_527034',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410259578,7,'video','/img/people/3.png','u',705,0,'201489__3__u_7_sz8qot7qu_578019',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260113,7,'video','/img/people/3.png','u',706,0,'201489__3__u_7_ats3t1fpq_112587',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260149,7,'video','/img/people/3.png','u',707,0,'201489__3__u_7_e26hgs9ac_149643',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260569,7,'video','/img/people/3.png','u',708,0,'201489__3__u_7_ij9a3dk6l_569140',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260620,7,'video','/img/people/3.png','u',709,0,'201489__3__u_7_0ufzrqxl6_620011',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410260645,7,'video','/img/people/3.png','u',710,0,'201489__3__u_7_ekxagx77h_645875',''),(7,'chat','\0',3,'Cameron','dsafdsa',1410263580,3,'text','/img/people/3.png','u',711,0,'',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267191,7,'screen','/img/people/3.png','u',712,0,'201489__3__u_7_2u94n4hpr_191619',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267193,7,'screen','/img/people/3.png','u',713,0,'201489__3__u_7_2u94n4hpr_191619',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267294,7,'screen','/img/people/3.png','u',714,0,'201489__3__u_7_dnc4ogcu1_294623',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267294,7,'screen','/img/people/3.png','u',715,0,'201489__3__u_7_dnc4ogcu1_294623',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267341,7,'screen','/img/people/3.png','u',716,0,'201489__3__u_7_mkrpw7hcy_341149',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267341,7,'screen','/img/people/3.png','u',717,0,'201489__3__u_7_mkrpw7hcy_341149',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267516,7,'screen','/img/people/3.png','u',718,0,'201489__3__u_7_ddgj2m73h_516886',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267517,7,'screen','/img/people/3.png','u',719,0,'201489__3__u_7_ddgj2m73h_516886',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267657,7,'screen','/img/people/3.png','u',720,0,'201489__3__u_7_9gi13w15o_657793',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267658,7,'screen','/img/people/3.png','u',721,0,'201489__3__u_7_9gi13w15o_657793',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267737,7,'screen','/img/people/3.png','u',722,0,'201489__3__u_7_192uiwgx5_737429',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410267737,7,'screen','/img/people/3.png','u',723,0,'201489__3__u_7_192uiwgx5_737429',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269177,7,'screen','/img/people/3.png','u',724,0,'201489__3__u_7_acmqrzl44_177399',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269319,7,'screen','/img/people/3.png','u',725,0,'201489__3__u_7_cqsakrw0i_319609',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269347,7,'screen','/img/people/3.png','u',726,0,'201489__3__u_7_i5cljk0xe_347376',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410269379,7,'video','/img/people/3.png','u',727,0,'201489__3__u_7_vtomad9g0_379881',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269390,7,'screen','/img/people/3.png','u',728,0,'201489__3__u_7_ut3itv2cn_390221',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269411,7,'screen','/img/people/3.png','u',729,0,'201489__3__u_7_2mr2eiuec_411349',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410269446,7,'screen','/img/people/3.png','u',730,0,'201489__3__u_7_nmgyado3p_446404',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',731,0,'2014810__3__g_91_3qcw5os1t_322438',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',732,0,'2014810__3__g_91_3qcw5os1t_322438',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',733,0,'2014810__3__g_91_3qcw5os1t_322438',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',734,0,'2014810__3__g_91_3qcw5os1t_322438',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',735,0,'2014810__3__g_91_3qcw5os1t_322438',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',736,0,'2014810__3__g_91_3qcw5os1t_322438',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',737,0,'2014810__3__g_91_3qcw5os1t_322438',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311322,91,'screen','/img/people/3.png','g',738,0,'2014810__3__g_91_3qcw5os1t_322438',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',739,0,'2014810__3__g_91_50yk3dan7_368108',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',740,0,'2014810__3__g_91_50yk3dan7_368108',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',741,0,'2014810__3__g_91_50yk3dan7_368108',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',742,0,'2014810__3__g_91_50yk3dan7_368108',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',743,0,'2014810__3__g_91_50yk3dan7_368108',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',744,0,'2014810__3__g_91_50yk3dan7_368108',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',745,0,'2014810__3__g_91_50yk3dan7_368108',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311368,91,'screen','/img/people/3.png','g',746,0,'2014810__3__g_91_50yk3dan7_368108',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',747,0,'2014810__3__g_91_svaad6vq8_389860',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',748,0,'2014810__3__g_91_svaad6vq8_389860',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',749,0,'2014810__3__g_91_svaad6vq8_389860',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311389,91,'screen','/img/people/3.png','g',750,0,'2014810__3__g_91_svaad6vq8_389860',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',751,0,'2014810__3__g_91_svaad6vq8_389860',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',752,0,'2014810__3__g_91_svaad6vq8_389860',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',753,0,'2014810__3__g_91_svaad6vq8_389860',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410311390,91,'screen','/img/people/3.png','g',754,0,'2014810__3__g_91_svaad6vq8_389860',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',755,0,'2014810__3__g_91_5kayocktm_506763',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',756,0,'2014810__3__g_91_5kayocktm_506763',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',757,0,'2014810__3__g_91_5kayocktm_506763',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318506,91,'screen','/img/people/3.png','g',758,0,'2014810__3__g_91_5kayocktm_506763',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',759,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',760,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',761,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318531,91,'screen','/img/people/3.png','g',762,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',763,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',764,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',765,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410318532,91,'screen','/img/people/3.png','g',766,0,'2014810__3__g_91_lj1bf8t2t_531764',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',767,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',768,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',769,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',770,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',771,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',772,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',773,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410320776,91,'screen','/img/people/3.png','g',774,0,'2014810__3__g_91_5ijvoy9mx_776702',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',775,0,'2014810__3__g_91_66igtq91b_602504',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',776,0,'2014810__3__g_91_66igtq91b_602504',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',777,0,'2014810__3__g_91_66igtq91b_602504',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333602,91,'screen','/img/people/3.png','g',778,0,'2014810__3__g_91_66igtq91b_602504',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',779,0,'2014810__3__g_91_edeuq0ev2_623376',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',780,0,'2014810__3__g_91_edeuq0ev2_623376',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',781,0,'2014810__3__g_91_edeuq0ev2_623376',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333623,91,'screen','/img/people/3.png','g',782,0,'2014810__3__g_91_edeuq0ev2_623376',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',783,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',784,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',785,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333728,91,'screen','/img/people/3.png','g',786,0,'2014810__3__g_91_r9u4vgt5r_728107',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',787,0,'2014810__3__g_91_singqaden_783039',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',788,0,'2014810__3__g_91_singqaden_783039',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',789,0,'2014810__3__g_91_singqaden_783039',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410333783,91,'screen','/img/people/3.png','g',790,0,'2014810__3__g_91_singqaden_783039',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',791,0,'2014810__3__g_91_4d8tpum07_483991',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',792,0,'2014810__3__g_91_4d8tpum07_483991',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',793,0,'2014810__3__g_91_4d8tpum07_483991',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334484,91,'screen','/img/people/3.png','g',794,0,'2014810__3__g_91_4d8tpum07_483991',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',795,0,'2014810__3__g_91_wu8iofp6z_866176',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',796,0,'2014810__3__g_91_wu8iofp6z_866176',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',797,0,'2014810__3__g_91_wu8iofp6z_866176',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334866,91,'screen','/img/people/3.png','g',798,0,'2014810__3__g_91_wu8iofp6z_866176',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',799,0,'2014810__3__g_91_y8xavw71j_971420',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',800,0,'2014810__3__g_91_y8xavw71j_971420',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',801,0,'2014810__3__g_91_y8xavw71j_971420',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410334971,91,'screen','/img/people/3.png','g',802,0,'2014810__3__g_91_y8xavw71j_971420',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',803,0,'2014810__3__g_91_tmq7upxsa_002819',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',804,0,'2014810__3__g_91_tmq7upxsa_002819',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',805,0,'2014810__3__g_91_tmq7upxsa_002819',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335002,91,'screen','/img/people/3.png','g',806,0,'2014810__3__g_91_tmq7upxsa_002819',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',807,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',808,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',809,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335034,91,'screen','/img/people/3.png','g',810,0,'2014810__3__g_91_fd2y9y6f9_034930',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',811,0,'2014810__3__g_91_inpdllbtq_209170',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',812,0,'2014810__3__g_91_inpdllbtq_209170',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',813,0,'2014810__3__g_91_inpdllbtq_209170',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410335209,91,'screen','/img/people/3.png','g',814,0,'2014810__3__g_91_inpdllbtq_209170',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',815,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',816,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',817,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336215,91,'screen','/img/people/3.png','g',818,0,'2014810__3__g_91_u3gg6wdfu_215269',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',819,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',820,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',821,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336250,91,'screen','/img/people/3.png','g',822,0,'2014810__3__g_91_2dd4l7qwe_250659',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',823,0,'2014810__3__g_91_1clnd6lxj_450738',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',824,0,'2014810__3__g_91_1clnd6lxj_450738',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',825,0,'2014810__3__g_91_1clnd6lxj_450738',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336450,91,'screen','/img/people/3.png','g',826,0,'2014810__3__g_91_1clnd6lxj_450738',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',827,0,'2014810__3__g_91_mqzsydpyb_488281',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',828,0,'2014810__3__g_91_mqzsydpyb_488281',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',829,0,'2014810__3__g_91_mqzsydpyb_488281',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336488,91,'screen','/img/people/3.png','g',830,0,'2014810__3__g_91_mqzsydpyb_488281',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',831,0,'2014810__3__g_91_rmikee4i9_650924',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',832,0,'2014810__3__g_91_rmikee4i9_650924',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',833,0,'2014810__3__g_91_rmikee4i9_650924',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336650,91,'screen','/img/people/3.png','g',834,0,'2014810__3__g_91_rmikee4i9_650924',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',835,0,'2014810__3__g_91_imzukxrme_749226',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',836,0,'2014810__3__g_91_imzukxrme_749226',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',837,0,'2014810__3__g_91_imzukxrme_749226',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336749,91,'screen','/img/people/3.png','g',838,0,'2014810__3__g_91_imzukxrme_749226',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',839,0,'2014810__3__g_91_p10drsv1w_769765',''),(4,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',840,0,'2014810__3__g_91_p10drsv1w_769765',''),(5,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',841,0,'2014810__3__g_91_p10drsv1w_769765',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336769,91,'video','/img/people/3.png','g',842,0,'2014810__3__g_91_p10drsv1w_769765',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',843,0,'2014810__3__g_91_fk108eyp9_830735',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',844,0,'2014810__3__g_91_fk108eyp9_830735',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',845,0,'2014810__3__g_91_fk108eyp9_830735',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336830,91,'screen','/img/people/3.png','g',846,0,'2014810__3__g_91_fk108eyp9_830735',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',847,0,'2014810__3__g_91_16n3y6s8o_846907',''),(4,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',848,0,'2014810__3__g_91_16n3y6s8o_846907',''),(5,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',849,0,'2014810__3__g_91_16n3y6s8o_846907',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410336846,91,'video','/img/people/3.png','g',850,0,'2014810__3__g_91_16n3y6s8o_846907',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',851,0,'2014810__3__g_91_1waj7n765_888299',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',852,0,'2014810__3__g_91_1waj7n765_888299',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',853,0,'2014810__3__g_91_1waj7n765_888299',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',854,0,'2014810__3__g_91_1waj7n765_888299',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',855,0,'2014810__3__g_91_1waj7n765_888299',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',856,0,'2014810__3__g_91_1waj7n765_888299',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',857,0,'2014810__3__g_91_1waj7n765_888299',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410336888,91,'screen','/img/people/3.png','g',858,0,'2014810__3__g_91_1waj7n765_888299',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',859,0,'2014810__3__g_91_jfzuldc1y_281664',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',860,0,'2014810__3__g_91_jfzuldc1y_281664',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',861,0,'2014810__3__g_91_jfzuldc1y_281664',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337281,91,'screen','/img/people/3.png','g',862,0,'2014810__3__g_91_jfzuldc1y_281664',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',863,0,'2014810__3__g_91_jfzuldc1y_281664',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',864,0,'2014810__3__g_91_jfzuldc1y_281664',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',865,0,'2014810__3__g_91_jfzuldc1y_281664',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337286,91,'screen','/img/people/3.png','g',866,0,'2014810__3__g_91_jfzuldc1y_281664',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',867,0,'2014810__3__g_91_gxf3mbr86_384552',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',868,0,'2014810__3__g_91_gxf3mbr86_384552',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',869,0,'2014810__3__g_91_gxf3mbr86_384552',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',870,0,'2014810__3__g_91_gxf3mbr86_384552',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',871,0,'2014810__3__g_91_gxf3mbr86_384552',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',872,0,'2014810__3__g_91_gxf3mbr86_384552',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',873,0,'2014810__3__g_91_gxf3mbr86_384552',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337384,91,'screen','/img/people/3.png','g',874,0,'2014810__3__g_91_gxf3mbr86_384552',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',875,0,'2014810__3__g_91_nrebplgcw_508913',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',876,0,'2014810__3__g_91_nrebplgcw_508913',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',877,0,'2014810__3__g_91_nrebplgcw_508913',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337508,91,'screen','/img/people/3.png','g',878,0,'2014810__3__g_91_nrebplgcw_508913',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',879,0,'2014810__3__g_91_nrebplgcw_508913',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',880,0,'2014810__3__g_91_nrebplgcw_508913',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',881,0,'2014810__3__g_91_nrebplgcw_508913',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337509,91,'screen','/img/people/3.png','g',882,0,'2014810__3__g_91_nrebplgcw_508913',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',883,0,'2014810__3__g_91_1xb0fagix_956931',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',884,0,'2014810__3__g_91_1xb0fagix_956931',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',885,0,'2014810__3__g_91_1xb0fagix_956931',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337956,91,'screen','/img/people/3.png','g',886,0,'2014810__3__g_91_1xb0fagix_956931',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',887,0,'2014810__3__g_91_1xb0fagix_956931',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',888,0,'2014810__3__g_91_1xb0fagix_956931',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',889,0,'2014810__3__g_91_1xb0fagix_956931',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410337957,91,'screen','/img/people/3.png','g',890,0,'2014810__3__g_91_1xb0fagix_956931',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',891,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',892,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',893,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',894,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',895,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',896,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',897,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338162,91,'screen','/img/people/3.png','g',898,0,'2014810__3__g_91_iv8uhpjz8_162453',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',899,0,'2014810__3__g_91_ipx3jlqea_268390',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',900,0,'2014810__3__g_91_ipx3jlqea_268390',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',901,0,'2014810__3__g_91_ipx3jlqea_268390',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',902,0,'2014810__3__g_91_ipx3jlqea_268390',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',903,0,'2014810__3__g_91_ipx3jlqea_268390',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',904,0,'2014810__3__g_91_ipx3jlqea_268390',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',905,0,'2014810__3__g_91_ipx3jlqea_268390',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338268,91,'screen','/img/people/3.png','g',906,0,'2014810__3__g_91_ipx3jlqea_268390',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',907,0,'2014810__3__g_91_t1m831bgs_563691',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',908,0,'2014810__3__g_91_t1m831bgs_563691',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',909,0,'2014810__3__g_91_t1m831bgs_563691',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',910,0,'2014810__3__g_91_t1m831bgs_563691',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',911,0,'2014810__3__g_91_t1m831bgs_563691',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',912,0,'2014810__3__g_91_t1m831bgs_563691',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',913,0,'2014810__3__g_91_t1m831bgs_563691',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338563,91,'screen','/img/people/3.png','g',914,0,'2014810__3__g_91_t1m831bgs_563691',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',915,0,'2014810__3__g_91_rvae2wq9h_578705',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',916,0,'2014810__3__g_91_rvae2wq9h_578705',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',917,0,'2014810__3__g_91_rvae2wq9h_578705',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',918,0,'2014810__3__g_91_rvae2wq9h_578705',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',919,0,'2014810__3__g_91_rvae2wq9h_578705',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',920,0,'2014810__3__g_91_rvae2wq9h_578705',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',921,0,'2014810__3__g_91_rvae2wq9h_578705',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338578,91,'screen','/img/people/3.png','g',922,0,'2014810__3__g_91_rvae2wq9h_578705',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',923,0,'2014810__3__g_91_v5bkm02ls_674966',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',924,0,'2014810__3__g_91_v5bkm02ls_674966',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',925,0,'2014810__3__g_91_v5bkm02ls_674966',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',926,0,'2014810__3__g_91_v5bkm02ls_674966',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',927,0,'2014810__3__g_91_v5bkm02ls_674966',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',928,0,'2014810__3__g_91_v5bkm02ls_674966',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',929,0,'2014810__3__g_91_v5bkm02ls_674966',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338675,91,'screen','/img/people/3.png','g',930,0,'2014810__3__g_91_v5bkm02ls_674966',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',931,0,'2014810__3__g_91_4aj046wsw_775211',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',932,0,'2014810__3__g_91_4aj046wsw_775211',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',933,0,'2014810__3__g_91_4aj046wsw_775211',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',934,0,'2014810__3__g_91_4aj046wsw_775211',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',935,0,'2014810__3__g_91_4aj046wsw_775211',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',936,0,'2014810__3__g_91_4aj046wsw_775211',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',937,0,'2014810__3__g_91_4aj046wsw_775211',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338775,91,'screen','/img/people/3.png','g',938,0,'2014810__3__g_91_4aj046wsw_775211',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',939,0,'2014810__3__g_91_p364aa8p3_822353',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',940,0,'2014810__3__g_91_p364aa8p3_822353',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',941,0,'2014810__3__g_91_p364aa8p3_822353',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',942,0,'2014810__3__g_91_p364aa8p3_822353',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',943,0,'2014810__3__g_91_p364aa8p3_822353',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',944,0,'2014810__3__g_91_p364aa8p3_822353',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',945,0,'2014810__3__g_91_p364aa8p3_822353',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338822,91,'screen','/img/people/3.png','g',946,0,'2014810__3__g_91_p364aa8p3_822353',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',947,0,'2014810__3__g_91_xlupjp8of_892007',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',948,0,'2014810__3__g_91_xlupjp8of_892007',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',949,0,'2014810__3__g_91_xlupjp8of_892007',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',950,0,'2014810__3__g_91_xlupjp8of_892007',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',951,0,'2014810__3__g_91_xlupjp8of_892007',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',952,0,'2014810__3__g_91_xlupjp8of_892007',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',953,0,'2014810__3__g_91_xlupjp8of_892007',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338892,91,'screen','/img/people/3.png','g',954,0,'2014810__3__g_91_xlupjp8of_892007',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',955,0,'2014810__3__g_91_vrreqifew_961880',''),(4,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',956,0,'2014810__3__g_91_vrreqifew_961880',''),(5,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',957,0,'2014810__3__g_91_vrreqifew_961880',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410338961,91,'video','/img/people/3.png','g',958,0,'2014810__3__g_91_vrreqifew_961880',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',959,0,'2014810__3__g_91_7nffaqufv_984891',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',960,0,'2014810__3__g_91_7nffaqufv_984891',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',961,0,'2014810__3__g_91_7nffaqufv_984891',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338984,91,'screen','/img/people/3.png','g',962,0,'2014810__3__g_91_7nffaqufv_984891',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',963,0,'2014810__3__g_91_7nffaqufv_984891',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',964,0,'2014810__3__g_91_7nffaqufv_984891',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',965,0,'2014810__3__g_91_7nffaqufv_984891',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410338985,91,'screen','/img/people/3.png','g',966,0,'2014810__3__g_91_7nffaqufv_984891',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',967,0,'2014810__3__g_91_qnlas2aqs_646889',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',968,0,'2014810__3__g_91_qnlas2aqs_646889',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',969,0,'2014810__3__g_91_qnlas2aqs_646889',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339646,91,'screen','/img/people/3.png','g',970,0,'2014810__3__g_91_qnlas2aqs_646889',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',971,0,'2014810__3__g_91_qnlas2aqs_646889',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',972,0,'2014810__3__g_91_qnlas2aqs_646889',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',973,0,'2014810__3__g_91_qnlas2aqs_646889',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339647,91,'screen','/img/people/3.png','g',974,0,'2014810__3__g_91_qnlas2aqs_646889',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',975,0,'2014810__3__g_91_32cjulsdt_747950',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',976,0,'2014810__3__g_91_32cjulsdt_747950',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',977,0,'2014810__3__g_91_32cjulsdt_747950',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339747,91,'screen','/img/people/3.png','g',978,0,'2014810__3__g_91_32cjulsdt_747950',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',979,0,'2014810__3__g_91_32cjulsdt_747950',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',980,0,'2014810__3__g_91_32cjulsdt_747950',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',981,0,'2014810__3__g_91_32cjulsdt_747950',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410339748,91,'screen','/img/people/3.png','g',982,0,'2014810__3__g_91_32cjulsdt_747950',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',983,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',984,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',985,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',986,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',987,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',988,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',989,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342632,91,'screen','/img/people/3.png','g',990,0,'2014810__3__g_91_m3b5iyx8n_632367',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',991,0,'2014810__3__g_91_1356s86ma_870881',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',992,0,'2014810__3__g_91_1356s86ma_870881',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',993,0,'2014810__3__g_91_1356s86ma_870881',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342871,91,'screen','/img/people/3.png','g',994,0,'2014810__3__g_91_1356s86ma_870881',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',995,0,'2014810__3__g_91_1356s86ma_870881',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',996,0,'2014810__3__g_91_1356s86ma_870881',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',997,0,'2014810__3__g_91_1356s86ma_870881',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342872,91,'screen','/img/people/3.png','g',998,0,'2014810__3__g_91_1356s86ma_870881',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',999,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1000,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1001,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1002,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1003,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1004,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1005,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342926,91,'screen','/img/people/3.png','g',1006,0,'2014810__3__g_91_wuhi9yxz2_926446',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1007,0,'2014810__3__g_91_hth30r562_951428',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1008,0,'2014810__3__g_91_hth30r562_951428',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1009,0,'2014810__3__g_91_hth30r562_951428',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1010,0,'2014810__3__g_91_hth30r562_951428',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1011,0,'2014810__3__g_91_hth30r562_951428',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1012,0,'2014810__3__g_91_hth30r562_951428',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1013,0,'2014810__3__g_91_hth30r562_951428',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410342951,91,'screen','/img/people/3.png','g',1014,0,'2014810__3__g_91_hth30r562_951428',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1015,0,'2014810__3__g_91_myrz9f1rp_326976',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1016,0,'2014810__3__g_91_myrz9f1rp_326976',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1017,0,'2014810__3__g_91_myrz9f1rp_326976',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343327,91,'screen','/img/people/3.png','g',1018,0,'2014810__3__g_91_myrz9f1rp_326976',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1019,0,'2014810__3__g_91_myrz9f1rp_326976',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1020,0,'2014810__3__g_91_myrz9f1rp_326976',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1021,0,'2014810__3__g_91_myrz9f1rp_326976',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343329,91,'screen','/img/people/3.png','g',1022,0,'2014810__3__g_91_myrz9f1rp_326976',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1023,0,'2014810__3__g_91_q5gfe8qga_409803',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1024,0,'2014810__3__g_91_q5gfe8qga_409803',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1025,0,'2014810__3__g_91_q5gfe8qga_409803',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343411,91,'screen','/img/people/3.png','g',1026,0,'2014810__3__g_91_q5gfe8qga_409803',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1027,0,'2014810__3__g_91_q5gfe8qga_409803',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1028,0,'2014810__3__g_91_q5gfe8qga_409803',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1029,0,'2014810__3__g_91_q5gfe8qga_409803',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343412,91,'screen','/img/people/3.png','g',1030,0,'2014810__3__g_91_q5gfe8qga_409803',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1031,0,'2014810__3__g_91_vu54wdz98_920906',''),(4,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1032,0,'2014810__3__g_91_vu54wdz98_920906',''),(5,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1033,0,'2014810__3__g_91_vu54wdz98_920906',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410343920,91,'video','/img/people/3.png','g',1034,0,'2014810__3__g_91_vu54wdz98_920906',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1035,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1036,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1037,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1038,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1039,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1040,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1041,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410343945,91,'screen','/img/people/3.png','g',1042,0,'2014810__3__g_91_ag5ctxu3s_945040',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1043,0,'2014810__3__g_91_bmnzim2s9_615267',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1044,0,'2014810__3__g_91_bmnzim2s9_615267',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1045,0,'2014810__3__g_91_bmnzim2s9_615267',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1046,0,'2014810__3__g_91_bmnzim2s9_615267',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1047,0,'2014810__3__g_91_bmnzim2s9_615267',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1048,0,'2014810__3__g_91_bmnzim2s9_615267',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1049,0,'2014810__3__g_91_bmnzim2s9_615267',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410344615,91,'screen','/img/people/3.png','g',1050,0,'2014810__3__g_91_bmnzim2s9_615267',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1051,0,'2014810__3__g_91_w4cxly7x3_078865',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1052,0,'2014810__3__g_91_w4cxly7x3_078865',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1053,0,'2014810__3__g_91_w4cxly7x3_078865',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345078,91,'screen','/img/people/3.png','g',1054,0,'2014810__3__g_91_w4cxly7x3_078865',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1055,0,'2014810__3__g_91_w4cxly7x3_078865',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1056,0,'2014810__3__g_91_w4cxly7x3_078865',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1057,0,'2014810__3__g_91_w4cxly7x3_078865',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345079,91,'screen','/img/people/3.png','g',1058,0,'2014810__3__g_91_w4cxly7x3_078865',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1059,0,'2014810__3__g_91_4r3fmpou1_189777',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1060,0,'2014810__3__g_91_4r3fmpou1_189777',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1061,0,'2014810__3__g_91_4r3fmpou1_189777',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345189,91,'screen','/img/people/3.png','g',1062,0,'2014810__3__g_91_4r3fmpou1_189777',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1063,0,'2014810__3__g_91_4r3fmpou1_189777',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1064,0,'2014810__3__g_91_4r3fmpou1_189777',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1065,0,'2014810__3__g_91_4r3fmpou1_189777',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345190,91,'screen','/img/people/3.png','g',1066,0,'2014810__3__g_91_4r3fmpou1_189777',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1067,0,'2014810__3__g_91_a8body5ci_365750',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1068,0,'2014810__3__g_91_a8body5ci_365750',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1069,0,'2014810__3__g_91_a8body5ci_365750',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345365,91,'screen','/img/people/3.png','g',1070,0,'2014810__3__g_91_a8body5ci_365750',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1071,0,'2014810__3__g_91_a8body5ci_365750',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1072,0,'2014810__3__g_91_a8body5ci_365750',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1073,0,'2014810__3__g_91_a8body5ci_365750',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345366,91,'screen','/img/people/3.png','g',1074,0,'2014810__3__g_91_a8body5ci_365750',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1075,0,'2014810__3__g_91_jstcwp5v3_468246',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1076,0,'2014810__3__g_91_jstcwp5v3_468246',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1077,0,'2014810__3__g_91_jstcwp5v3_468246',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1078,0,'2014810__3__g_91_jstcwp5v3_468246',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1079,0,'2014810__3__g_91_jstcwp5v3_468246',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1080,0,'2014810__3__g_91_jstcwp5v3_468246',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1081,0,'2014810__3__g_91_jstcwp5v3_468246',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410345468,91,'screen','/img/people/3.png','g',1082,0,'2014810__3__g_91_jstcwp5v3_468246',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1083,0,'2014810__3__g_91_evmneygbo_045616',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1084,0,'2014810__3__g_91_evmneygbo_045616',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1085,0,'2014810__3__g_91_evmneygbo_045616',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1086,0,'2014810__3__g_91_evmneygbo_045616',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1087,0,'2014810__3__g_91_evmneygbo_045616',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1088,0,'2014810__3__g_91_evmneygbo_045616',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1089,0,'2014810__3__g_91_evmneygbo_045616',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346045,91,'screen','/img/people/3.png','g',1090,0,'2014810__3__g_91_evmneygbo_045616',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1091,0,'2014810__3__g_91_6o0q02j6i_127796',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1092,0,'2014810__3__g_91_6o0q02j6i_127796',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1093,0,'2014810__3__g_91_6o0q02j6i_127796',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346127,91,'screen','/img/people/3.png','g',1094,0,'2014810__3__g_91_6o0q02j6i_127796',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1095,0,'2014810__3__g_91_6o0q02j6i_127796',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1096,0,'2014810__3__g_91_6o0q02j6i_127796',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1097,0,'2014810__3__g_91_6o0q02j6i_127796',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346128,91,'screen','/img/people/3.png','g',1098,0,'2014810__3__g_91_6o0q02j6i_127796',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1099,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1100,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1101,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1102,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1103,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1104,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1105,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410346520,91,'screen','/img/people/3.png','g',1106,0,'2014810__3__g_91_0p7kxcnf4_520327',''),(7,'chat','\0',3,'Cameron','windows',1410429881,3,'text','/img/people/3.png','u',1107,0,'',''),(7,'chat','\0',3,'Cameron','wwwwindows',1410430206,3,'text','/img/people/3.png','u',1108,0,'',''),(7,'chat','\0',3,'Cameron','fwefewfew',1410430413,3,'text','/img/people/3.png','u',1109,0,'',''),(7,'chat','\0',3,'Cameron','fdsfads',1410430416,3,'text','/img/people/3.png','u',1110,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdsa',1410430419,3,'text','/img/people/3.png','u',1111,0,'',''),(7,'chat','\0',3,'Cameron','fwefewfw',1410430495,3,'text','/img/people/3.png','u',1112,0,'',''),(7,'chat','\0',3,'Cameron','wfefewfewffew',1410430556,3,'text','/img/people/3.png','u',1113,0,'',''),(7,'chat','\0',3,'Cameron','windows',1410430561,3,'text','/img/people/3.png','u',1114,0,'',''),(7,'chat','\0',3,'Cameron','windows',1410430568,3,'text','/img/people/3.png','u',1115,0,'',''),(7,'chat','\0',3,'Cameron','windowsfdsa',1410430581,3,'text','/img/people/3.png','u',1116,0,'',''),(7,'chat','\0',3,'Cameron','fdsafds',1410430592,3,'text','/img/people/3.png','u',1117,0,'',''),(7,'chat','\0',3,'Cameron','fdsaf',1410430597,3,'text','/img/people/3.png','u',1118,0,'',''),(7,'chat','\0',3,'Cameron','dsafsafdsdf',1410431043,3,'text','/img/people/3.png','u',1119,0,'',''),(7,'chat','\0',3,'Cameron','dfsafdsa',1410431044,3,'text','/img/people/3.png','u',1120,0,'',''),(7,'chat','\0',3,'Cameron','dddddfdsa',1410431048,3,'text','/img/people/3.png','u',1121,0,'',''),(7,'chat','\0',3,'Cameron','dfadf',1410431236,3,'text','/img/people/3.png','u',1122,0,'',''),(7,'chat','\0',3,'Cameron','fdsafdasfdasfadsf',1410431238,3,'text','/img/people/3.png','u',1123,0,'',''),(7,'chat','\0',3,'Cameron','wfew',1410432216,3,'text','/img/people/3.png','u',1124,0,'',''),(7,'chat','\0',3,'Cameron','haha.jpg',1410433031,3,'pic','/img/people/3.png','u',1125,0,'',''),(7,'chat','\0',3,'Cameron','w.png',1410433243,3,'pic','/img/people/3.png','u',1126,0,'',''),(7,'chat','\0',3,'Cameron','w.png',1410433327,3,'pic','/img/people/3.png','u',1127,0,'',''),(7,'chat','\0',3,'Cameron','w.png',1410433491,3,'pic','/img/people/3.png','u',1128,0,'',''),(7,'chat','\0',3,'Cameron','haha.jpg',1410433660,3,'pic','/img/people/3.png','u',1129,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410434349,7,'pic','/img/people/mzd.png','u',1130,0,'',''),(3,'chat','\0',7,'Mao Zedong','w.png',1410434386,7,'pic','/img/people/mzd.png','u',1131,0,'',''),(3,'chat','\0',7,'Mao Zedong','w.png',1410434559,7,'pic','/img/people/mzd.png','u',1132,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410434948,7,'pic','/img/people/mzd.png','u',1133,0,'',''),(3,'chat','\0',7,'Mao Zedong','w.png',1410434974,7,'pic','/img/people/mzd.png','u',1134,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410434983,7,'pic','/img/people/mzd.png','u',1135,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410435018,7,'pic','/img/people/mzd.png','u',1136,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410435097,7,'pic','/img/people/mzd.png','u',1137,0,'',''),(3,'chat','\0',7,'Mao Zedong','haha.jpg',1410435179,7,'pic','/img/people/mzd.png','u',1138,365,'',''),(7,'chat','\0',3,'Cameron','windows app',1410484376,3,'text','/img/people/3.png','u',1139,0,'',''),(7,'chat','\0',3,'Cameron','wwww',1410506023,3,'text','/img/people/3.png','u',1140,0,'',''),(3,'chat','',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1141,0,'',''),(4,'chat','',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1142,0,'',''),(5,'chat','',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1143,0,'',''),(7,'chat','\0',3,'Cameron',':#em-person_with_blond_hair#: ',1410506324,91,'text','/img/people/3.png','g',1144,0,'',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762205,7,'video','/img/people/3.png','u',1145,0,'2014815__3__u_7_xe8jf9y9z_205864',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762218,7,'video','/img/people/3.png','u',1146,0,'2014815__3__u_7_3q96i0amq_218608',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762274,7,'video','/img/people/3.png','u',1147,0,'2014815__3__u_7_rj2u40xvk_274840',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762295,7,'video','/img/people/3.png','u',1148,0,'2014815__3__u_7_yc35t8k8y_295188',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762611,7,'video','/img/people/3.png','u',1149,0,'2014815__3__u_7_crs5odfd2_611247',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762671,7,'video','/img/people/3.png','u',1150,0,'2014815__3__u_7_izvctkqiu_671849',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762722,7,'video','/img/people/3.png','u',1151,0,'2014815__3__u_7_dc7ufnmp9_722485',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762747,7,'screen','/img/people/3.png','u',1152,0,'2014815__3__u_7_iteqjgfqq_747942',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762748,7,'screen','/img/people/3.png','u',1153,0,'2014815__3__u_7_iteqjgfqq_747942',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410762798,7,'video','/img/people/3.png','u',1154,0,'2014815__3__u_7_10v0ymdb1_798849',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762844,7,'screen','/img/people/3.png','u',1155,0,'2014815__3__u_7_vihmuq6lq_844788',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762844,7,'screen','/img/people/3.png','u',1156,0,'2014815__3__u_7_vihmuq6lq_844788',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1157,0,'2014815__3__g_91_qo8gafa62_974852',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1158,0,'2014815__3__g_91_qo8gafa62_974852',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1159,0,'2014815__3__g_91_qo8gafa62_974852',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1160,0,'2014815__3__g_91_qo8gafa62_974852',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1161,0,'2014815__3__g_91_qo8gafa62_974852',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1162,0,'2014815__3__g_91_qo8gafa62_974852',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1163,0,'2014815__3__g_91_qo8gafa62_974852',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410762974,91,'screen','/img/people/3.png','g',1164,0,'2014815__3__g_91_qo8gafa62_974852',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1165,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1166,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1167,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1168,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(3,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1169,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(4,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1170,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(5,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1171,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763087,91,'screen','/img/people/3.png','g',1172,0,'2014815__3__g_91_z9cwnr1ku_087386',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410763304,7,'video','/img/people/3.png','u',1173,0,'2014815__3__u_7_pqu9wrzfp_304648',''),(3,'chat','\0',7,'Mao Zedong','fewfwe',1410763348,7,'text','/img/people/mzd.png','u',1174,0,'',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763645,7,'screen','/img/people/3.png','u',1175,0,'2014815__3__u_7_btxggynr0_645235',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410763645,7,'screen','/img/people/3.png','u',1176,0,'2014815__3__u_7_btxggynr0_645235',''),(7,'chat','\0',3,'Cameron','Cameron is inviting you for video chat',1410764188,7,'video','/img/people/3.png','u',1177,0,'2014815__3__u_7_i5xx2uoh6_188586',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410764260,7,'screen','/img/people/3.png','u',1178,0,'2014815__3__u_7_az6iltrvo_259051',''),(7,'share','',3,'Cameron','Cameron is inviting you for desktop sharing',1410764260,7,'screen','/img/people/3.png','u',1179,0,'2014815__3__u_7_az6iltrvo_259051',''),(7,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410766492,7,'video','/img/people/3.png','u',1180,0,'2014815__3__u_7_x9gwejl0q_492340',''),(7,'chat','',3,'Cameron','wdqdw',1410781282,3,'text','/img/people/3.png','u',1181,0,'',''),(7,'chat','',3,'Cameron','dsdsa',1410781293,3,'text','/img/people/3.png','u',1182,0,'',''),(3,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1183,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(4,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1184,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(5,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1185,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(7,'chat','',3,'Cameron','Cameron is inviting you for video chat',1410917470,91,'video','/img/people/3.png','g',1186,0,'2014817__3__g_91_1f8iw1f5o_470236',''),(7,'chat','',3,'Cameron',':#em-revolving_hearts#: :#em-tired_face#: fds',1410917532,3,'text','/img/people/3.png','u',1187,0,'','');
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_page`
--

LOCK TABLES `v_page` WRITE;
/*!40000 ALTER TABLE `v_page` DISABLE KEYS */;
INSERT INTO `v_page` VALUES (1,NULL,'wf','few',1,0,0,0,'',''),(2,NULL,'wf','few',1,0,0,0,'',''),(3,NULL,'xiaoming','wangjing',1,0,0,0,'',''),(4,NULL,'xiaoming','wangjing',1,0,0,0,'',''),(5,NULL,'xiaoming','wangjing',1,1405047722,1405047722,0,'',''),(6,NULL,'xiaoming','wangjing',1,1405049227,1405049227,0,'',''),(7,NULL,'xiaoming','wangjing',1,1405049364,1405049364,0,'',''),(8,NULL,'xiaoming','wangjing',1,1405049400,1405049400,0,'',''),(9,NULL,'xiaoming','wangjing',1,1405049490,1405049490,0,'',''),(10,NULL,'xiaoming','wangjing',1,1405049618,1405049618,0,'',''),(11,NULL,'xiaoming','wangjing',1,1405049975,1405049975,0,'',''),(12,NULL,'xiaoming','wangjing',1,1405050003,1405050003,0,'',''),(13,NULL,'xiaoming','wangjing',1,1405050019,1405050019,0,'',''),(14,NULL,'xiaoming','wangjing',1,1405050038,1405050038,0,'',''),(15,NULL,'xiaoming','wangjing',1,1405050522,1405050522,0,'',''),(16,NULL,'xiaoming','wangjing',1,1405050640,1405050640,0,'',''),(17,NULL,'xiaoming','wangjing',1,1405050701,1405050701,0,'',''),(18,NULL,'wwef','fwefw',1,1405051745,1405051745,0,'',''),(19,NULL,'fVe','fewfe',1,1405051814,1405051814,0,'',''),(20,NULL,'fdsa','fdsa',1,1405052123,1405052123,0,'',''),(21,NULL,'fdsa','afs',1,1405052310,1405052310,0,'',''),(22,NULL,'xiaoming','wangjing',1,1405053013,1405053013,0,'',''),(23,NULL,'xiaoming','wangjing',1,1405053163,1405053163,0,'',''),(24,NULL,'fdsa','fdsa',1,1405053424,1405053424,0,'',''),(25,NULL,'fdas','fas',1,1405053688,1405053688,0,'',''),(26,NULL,'fdsa','fdsa',1,1405053854,1405053854,0,'',''),(27,NULL,'fds','fdas',1,1405053919,1405053919,0,'',''),(28,NULL,'ww','www',1,1405055792,1405055792,0,'',''),(29,NULL,'3232','rewrw',1,1405056341,1405056341,0,'',''),(30,NULL,'为放大','fwe飞啊',1,1405057066,1405057066,0,'',''),(31,NULL,'fdas','fdsa',1,1405057567,1405057567,0,'',''),(32,NULL,'fdsa','fdas',1,1405057716,1405057716,0,'',''),(33,NULL,'www','www',1,1405057929,1405057929,0,'',''),(34,NULL,'fVas','fdas',1,1405058129,1405058129,0,'',''),(35,NULL,'fdsa','fads',1,1405058198,1405058198,0,'',''),(36,NULL,'fas','fdsaf',1,1405058443,1405058443,0,'',''),(37,NULL,'fdsafd','fdas',1,1405058829,1405058829,0,'',''),(38,NULL,'fda发大水fa','fdas',1,1405059131,1405059131,0,'',''),(39,NULL,'wfe','fdsafd',1,1405065351,1405065351,0,'',''),(40,NULL,'fdsa','fdsa',1,1405065558,1405065558,0,'',''),(41,NULL,'fdsa','fdsa',1,1405065804,1405065804,0,'',''),(42,NULL,'fdas','fdsa',1,1405065867,1405065867,0,'',''),(43,NULL,'fda','fdas',1,1405066027,1405066027,0,'',''),(44,NULL,'fdka','fasd',1,1405066139,1405066139,0,'',''),(45,NULL,'fdsafd','fdsafd',1,1405066483,1405066483,0,'',''),(46,NULL,'fdsa','fdsa',1,1405066521,1405066521,0,'',''),(47,NULL,'fdsa','fdsa',1,1405066724,1405066724,0,'',''),(48,NULL,'fdas','fdsa',1,1405066793,1405066793,0,'',''),(49,NULL,'fa','fdas',1,1405066942,1405066942,0,'',''),(50,NULL,'fdsa','fdsa',1,1405067323,1405067323,0,'',''),(51,NULL,'fdsa','fdsa',1,1405067378,1405067378,0,'',''),(52,NULL,'fda','fads',1,1405067422,1405067422,0,'',''),(53,NULL,'ffdas','fdsa',1,1405067520,1405067520,0,'',''),(54,NULL,'fdks','fdas',1,1405067689,1405067689,0,'',''),(55,NULL,'gfds','gfds',1,1405067991,1405067991,0,'',''),(56,NULL,'fdsa','fas',1,1405068137,1405068137,0,'',''),(57,NULL,'fda','fdas',1,1405068197,1405068197,0,'',''),(58,NULL,'ds','fdsa',1,1405068262,1405068262,0,'',''),(59,NULL,'fdsa','fdsa',1,1405068548,1405068548,0,'',''),(60,NULL,'fsa','fdas',1,1405069424,1405069424,0,'',''),(61,NULL,'fV大s','fdas',1,1405070565,1405070565,0,'',''),(62,NULL,'fdsa','fdsa',1,1405071275,1405071275,0,'',''),(63,NULL,'fVas','fdsa',1,1405071334,1405071334,0,'',''),(64,NULL,'fdsa','fdas',1,1405072394,1405072394,0,'',''),(65,NULL,'fVsa','fdsa',1,1405072510,1405072510,0,'',''),(66,NULL,'fdsaf','dasfdsa',1,1405072666,1405072666,0,'',''),(67,NULL,'fdsa','fdas',1,1405073629,1405073629,0,'',''),(68,NULL,'fdas','fdas',1,1405073727,1405073727,0,'',''),(69,NULL,'fdsaf','fdsaf',1,1405084142,1405084142,0,'',''),(70,NULL,'fdsa','fdsa',1,1405084573,1405084573,0,'',''),(71,NULL,'fda发大水','fdsa',1,1405084619,1405084619,0,'',''),(72,NULL,'fdsa','fdas',1,1405085195,1405085195,0,'',''),(73,NULL,'fdas','fdas',1,1405085268,1405085268,0,'',''),(74,NULL,'dfsa','fdas',1,1405085358,1405085358,0,'',''),(75,NULL,'fds','fdas',1,1405085423,1405085423,0,'',''),(76,NULL,'fdaa','fdsa',1,1405087302,1405087302,0,'',''),(77,NULL,'fda','fdsa',1,1405087354,1405087354,0,'',''),(78,NULL,'fds','fdsa',1,1405087376,1405087376,0,'',''),(79,NULL,'fds','fdsafdsaf',1,1405087401,1405087401,0,'',''),(80,NULL,'dfsa','fdsa',1,1405087484,1405087484,0,'',''),(81,NULL,'fdsa放大sa','fds',1,1405087512,1405087512,0,'',''),(82,NULL,'fdas','fdsa',1,1405087570,1405087570,0,'',''),(83,NULL,'www','wwferew',1,1405301475,1405301475,0,'',''),(84,NULL,'www','www',1,1405308971,1405308971,0,'',''),(85,NULL,'fdss','fdsa',1,1405308982,1405308982,0,'',''),(86,NULL,'ww','fdsaf',1,1405309359,1405309359,0,'',''),(87,NULL,'fdsa','fdsa',1,1405309536,1405309536,0,'',''),(88,NULL,'wfewf','ewefew',1,1405309697,1405309697,0,'',''),(89,NULL,'fdsa','fdsa',1,1405310006,1405310006,0,'',''),(90,NULL,'dfas','dsadfa',1,1405310464,1405310464,0,'',''),(91,NULL,'wwww','ddd',1,1405311692,1405311692,0,'',''),(92,NULL,'wfewf','eafdas',1,1405311742,1405311742,0,'',''),(93,NULL,'fdaa','fdsa',1,1405311786,1405311786,0,'',''),(94,NULL,'fdwfewf','fewffew',1,1405311877,1405311877,0,'',''),(95,NULL,'fwfw','ewfds',1,1405311991,1405311991,0,'',''),(96,NULL,'fdsafdsa','fdsafds',1,1405312080,1405312080,0,'',''),(97,NULL,'fdsf','fdas',1,1405312114,1405312114,0,'',''),(98,NULL,'fdsa','fdsa',1,1405324202,1405324202,0,'',''),(99,NULL,'fdsa','fdsa',1,1405324272,1405324272,0,'',''),(100,NULL,'www','www',1,1405324297,1405324297,0,'',''),(101,NULL,'fd','fdsa',1,1405324740,1405324740,0,'',''),(102,NULL,'fdw','few',1,1405324924,1405324924,0,'',''),(103,NULL,'daf','dfa',1,1405324935,1405324935,0,'',''),(104,NULL,'df','fafd',1,1405324947,1405324947,0,'',''),(105,NULL,'dfasf','dasfdas',1,1405324993,1405324993,0,'',''),(106,NULL,'fdasf','dsafs',1,1405325174,1405325174,0,'',''),(107,NULL,'fdsa','fdas',1,1405325212,1405325212,0,'',''),(108,NULL,'fdsa','fdsa',1,1405325312,1405325312,0,'',''),(109,NULL,'fdsaf','fdsa',1,1405325336,1405325336,0,'',''),(110,NULL,'fdsa','fdsa',1,1405325353,1405325353,0,'',''),(111,NULL,'wfwe','fewf',1,1405325502,1405325502,0,'',''),(112,NULL,'fdsafdsa','fdsafdsa',1,1405325879,1405325879,0,'',''),(113,NULL,'fdsa','fasd',1,1405325907,1405325907,0,'',''),(114,NULL,'fdsa','fdsa',1,1405325939,1405325939,0,'',''),(115,NULL,'fdaafda','fdsa',1,1405325987,1405325987,0,'',''),(116,NULL,'fdasfdas','fdasfds',1,1405326033,1405326033,0,'',''),(117,NULL,'fdsafd','safdsafds',1,1405326056,1405326056,0,'',''),(118,NULL,'fV大af','dsafs',1,1405326074,1405326074,0,'',''),(119,NULL,'fdsafd','sa',1,1405326554,1405326554,0,'',''),(120,NULL,'fdas','fdsa',1,1405326578,1405326578,0,'',''),(121,NULL,'fdsa','fdsa',1,1405326652,1405326652,0,'',''),(122,NULL,'sf','fds',1,1405326790,1405326790,0,'',''),(123,NULL,'fdklas发大水f\'d\'sa\'f\'d\'sa','fdsafdsa ',1,1405327806,1405327806,0,'',''),(124,NULL,'fdsaf','dsaf',1,1405328466,1405328466,0,'',''),(125,NULL,'fdaw','fewfew',1,1405329953,1405329953,0,'',''),(126,NULL,'fdsa','fdsa',1,1405330079,1405330079,0,'',''),(127,NULL,'wfe','fwew',1,1405330661,1405330661,0,'',''),(128,NULL,'fdaafdsa','fdsafdsa',1,1405330837,1405330837,0,'',''),(129,NULL,'fda发fasfdsa','fdsa',1,1405330925,1405330925,0,'',''),(130,NULL,'fasdf','fdsafdas',1,1405331057,1405331057,0,'',''),(131,NULL,'fdsa','fdsafdas',1,1405331127,1405331127,0,'',''),(132,NULL,'dwf','ewfew',1,1405331513,1405331513,0,'',''),(133,NULL,'www','www',1,1405332755,1405332755,0,'',''),(134,NULL,'fwew','fewfw',1,1405332856,1405332856,0,'',''),(135,NULL,'fdsafdsa','dfsafdsa',1,1405332982,1405332982,0,'',''),(136,NULL,'fdsafd','fdsafdas',1,1405333116,1405333116,0,'',''),(137,NULL,'vcx','vcxvz',1,1405333186,1405333186,0,'',''),(138,NULL,'fdaafdsa','fdsafdas',1,1405333332,1405333332,0,'',''),(139,NULL,'fdsaf','dsafds',1,1405334056,1405334056,0,'',''),(140,NULL,'dqq','dwq',1,1405335805,1405335805,0,'',''),(141,NULL,'wew','eww',1,1405404944,1405404944,0,'',''),(142,NULL,'fdsa','fdsa',1,1405680582,1405680582,0,'',''),(143,NULL,'fdsa','fdsa',1,1405681445,1405681445,0,'',''),(144,NULL,'fwew','wfew',1,1405905843,1405905843,0,'',''),(145,NULL,'ww','ww',1,1405906369,1405906369,0,'',''),(146,NULL,'efwq','fewq',1,1405906435,1405906435,0,'',''),(147,NULL,'www','www',1,1405906846,1405906846,0,'',''),(148,NULL,'wwwwww','dsa',1,1405906874,1405906874,0,'',''),(149,NULL,'fdsa','fds',1,1407406130,1407406130,0,'',''),(150,NULL,'fdas','fsa',1,1407409202,1407409202,0,'',''),(151,NULL,'ew','rew',1,1407410186,1407410186,0,'',''),(152,NULL,'fdsa','fdsa',1,1407417376,1407417376,0,'','');
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
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_posts`
--

LOCK TABLES `v_posts` WRITE;
/*!40000 ALTER TABLE `v_posts` DISABLE KEYS */;
INSERT INTO `v_posts` VALUES (1,'',2,'ab1','wsn',1,0,0,0,0,1354099442,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(2,'',2,'ab1','dfas',8,0,0,0,0,1354099873,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(3,'',2,'ab1','cam1',8,0,0,0,0,1354101902,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(4,'',2,'ab1','dddddddddddd',8,0,0,0,0,1354102046,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(5,'',2,'ab1','zzddde',8,0,0,0,0,1354102184,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(6,'',2,'ab1','ak',1,0,0,0,0,1354103758,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(7,'',5,'ab3','Nasform',2,0,0,0,0,1356666072,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(8,'',5,'ab3','NASFORM2',3,0,0,0,0,1356666241,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(9,'',2,'ab1','sub1',1,0,0,0,0,1356667678,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(10,'',5,'ab3','nasrests',0,0,0,0,0,1356678586,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(11,'',5,'ab3','nasrests',0,0,0,0,0,1356678760,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(12,'',5,'ab3','nasrests',0,0,0,0,0,1356678844,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(13,'',5,'ab3','nasrests',0,0,0,0,0,1356678883,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(14,'',5,'ab3','nasrests',0,0,0,0,0,1356678901,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(15,'',5,'ab3','nasrests',0,0,0,0,0,1356679044,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(16,'',5,'ab3','nasrests',0,0,0,0,0,1356679075,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(17,'',5,'ab3','nasrests',0,0,0,0,0,1356679094,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(20,'',1,'admin','SMS',4,0,0,0,0,1357626291,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(21,'',1,'admin','nas2',5,0,0,0,0,1357626362,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(22,'',1,'admin','nas2',5,0,0,0,0,1357626456,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(23,'',1,'admin','nas2',5,0,0,0,0,1357626487,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(24,'',1,'admin','nas2',5,0,0,0,0,1357626501,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(25,'',1,'admin','nas2',5,0,0,0,0,1357626846,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(26,'',1,'admin','nas2',5,0,0,0,0,1357626866,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(27,'',1,'admin','dfas',5,0,0,0,0,1357626885,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(28,'',1,'admin','dfas',5,0,0,0,0,1357626919,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(29,'',1,'admin','dfas',5,0,0,0,0,1357626945,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(30,'',1,'admin','fdas',5,0,0,0,0,1357626980,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(31,'',1,'admin','fda',5,0,0,0,0,1357627062,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(32,'',1,'admin','fda',5,0,0,0,0,1357627094,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(33,'',1,'admin','fda',5,0,0,0,0,1357627137,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(34,'',1,'admin','fdas',4,0,0,0,0,1357627151,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(35,'',1,'admin','fdas',4,0,0,0,0,1357627285,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(36,'',1,'admin','fdsa',5,0,0,0,0,1357627298,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(37,'',1,'admin','dd',5,0,0,0,0,1357627376,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(38,'',1,'admin','dd',5,0,0,0,0,1357627381,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(39,'',1,'admin','qqq',5,0,0,0,0,1357627436,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(40,'',1,'admin','qqq',5,0,0,0,0,1357627482,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(41,'',1,'admin','qqq',5,0,0,0,0,1357627619,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(42,'',1,'admin','qqq',5,0,0,0,0,1357627681,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(43,'',1,'admin','qqq',5,0,0,0,0,1357627701,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(44,'',1,'admin','qqq',5,0,0,0,0,1357627727,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(45,'',1,'admin','qqq',5,0,0,0,0,1357627733,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(46,'',1,'admin','qqq',5,0,0,0,0,1357627756,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(47,'',1,'admin','qqq',5,0,0,0,0,1357627781,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(48,'',1,'admin','qqq',5,0,0,0,0,1357627783,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(49,'',1,'admin','qqq',5,0,0,0,0,1357627864,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(50,'',1,'admin','qqq',5,0,0,0,0,1357627873,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(51,'',1,'admin','qqq',5,0,0,0,0,1357627974,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(52,'',1,'admin','qqq',5,0,0,0,0,1357627988,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(53,'',1,'admin','qqq',5,0,0,0,0,1357628049,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(54,'',1,'admin','qqq',5,0,0,0,0,1357628063,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(55,'',1,'admin','qqq',5,0,0,0,0,1357628072,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(56,'',1,'admin','qqq',5,0,0,0,0,1357628079,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(57,'',1,'admin','qqq',5,0,0,0,0,1357628094,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(58,'',1,'admin','qqq',5,0,0,0,0,1357628102,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(59,'',1,'admin','qqq',5,0,0,0,0,1357628157,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(60,'',1,'admin','qqq',5,0,0,0,0,1357628261,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(61,'',1,'admin','qqq',5,0,0,0,0,1357628280,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(62,'',1,'admin','qqq',5,0,0,0,0,1357628316,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(63,'',1,'admin','qqq',5,0,0,0,0,1357628337,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(64,'',1,'admin','qqq',5,0,0,0,0,1357628388,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(65,'',1,'admin','qqq',5,0,0,0,0,1357628563,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(66,'',1,'admin','qqq',5,0,0,0,0,1357628621,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(67,'',1,'admin','fdas',4,0,0,0,0,1357628672,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(68,'',1,'admin','fdas',4,0,0,0,0,1357628726,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(69,'',1,'admin','fdas',5,0,0,0,0,1357628735,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(70,'',1,'admin','asf',4,0,0,0,0,1357628878,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(71,'',1,'admin','asf',4,0,0,0,0,1357629053,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(72,'',1,'admin','fgad',0,0,0,0,0,1357629073,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(73,'',1,'admin','fgad',0,0,0,0,0,1357629082,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(74,'',2,'ab1','dfas',1,0,0,0,0,1357629252,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(75,'',1,'admin','fdas',4,0,0,0,0,1357629409,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(76,'',1,'admin','fdas',4,0,0,0,0,1357629471,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(77,'',1,'admin','fdas',4,0,0,0,0,1357629529,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(78,'',1,'admin','fdas',4,0,0,0,0,1357629733,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(79,'',1,'admin','fdas',4,0,0,0,0,1357629800,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(80,'',1,'admin','fdas',4,0,0,0,0,1357629864,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(81,'',1,'admin','fdas',4,0,0,0,0,1357629916,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(82,'',1,'admin','fdas',4,0,0,0,0,1357629953,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(83,'',1,'admin','fdas',4,0,0,0,0,1357630011,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(84,'',1,'admin','fdas',4,0,0,0,0,1357630126,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(85,'',1,'admin','fdas',4,0,0,0,0,1357630171,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(86,'',1,'admin','fdas',4,0,0,0,0,1357630271,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(87,'',1,'admin','fdas',4,0,0,0,0,1357630360,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(88,'',1,'admin','fdas',4,0,0,0,0,1357630393,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(89,'',1,'admin','fdas',4,0,0,0,0,1357630395,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(90,'',1,'admin','fdas',4,0,0,0,0,1357630399,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(91,'',1,'admin','fdas',4,0,0,0,0,1357630421,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(92,'',1,'admin','fdas',4,0,0,0,0,1357630472,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(93,'',1,'admin','fdas',4,0,0,0,0,1357630506,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(94,'',1,'admin','fdas',4,0,0,0,0,1357630608,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(95,'',1,'admin','fdas',4,0,0,0,0,1357630631,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(96,'',1,'admin','fdas',4,0,0,0,0,1357630633,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(97,'',1,'admin','fdas',4,0,0,0,0,1357630647,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(98,'',1,'admin','fdas',4,0,0,0,0,1357630702,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(99,'',1,'admin','fdas',4,0,0,0,0,1357630703,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(100,'',1,'admin','fdas',4,0,0,0,0,1357630743,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(101,'',1,'admin','fdas',4,0,0,0,0,1357630762,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(102,'',1,'admin','fdas',4,0,0,0,0,1357630768,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(103,'',1,'admin','fdas',4,0,0,0,0,1357630776,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(104,'',1,'admin','fdas',4,0,0,0,0,1357630863,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(105,'',1,'admin','fdas',4,0,0,0,0,1357630913,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(106,'',1,'admin','fdas',4,0,0,0,0,1357630961,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(107,'',1,'admin','dsaf',4,0,0,0,0,1357630999,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(108,'',1,'admin','dsaf',4,0,0,0,0,1357631066,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(109,'',1,'admin','dsaf',4,0,0,0,0,1357631115,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(110,'',1,'admin','wwww',0,0,0,0,0,1357632808,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(111,'',1,'admin','fdas',0,0,0,0,0,1357633465,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(112,'',1,'admin','fdsa',0,0,0,0,0,1357633479,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(113,'',1,'admin','fdsa',0,0,0,0,0,1357633494,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(114,'',1,'admin','ww',6,0,0,0,0,1357633737,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(115,'',1,'admin','fasdf',0,0,0,0,0,1357635466,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(116,'',1,'admin','fdas',4,0,0,0,0,1357635666,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(117,'',1,'admin','fdas',4,0,0,0,0,1357635693,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(118,'',1,'admin','fdas',4,0,0,0,0,1357635731,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(119,'',1,'admin','fdas',4,0,0,0,0,1357635760,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(120,'',1,'admin','fdas',5,0,0,0,0,1357635794,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(121,'',1,'admin','fdas',4,0,0,0,0,1357635830,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(122,'',1,'admin','fdsa',4,0,0,0,0,1357635973,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(123,'',1,'admin','fdas',6,0,0,0,0,1357636019,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(124,'',1,'admin','wf',7,0,0,0,0,1357636271,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(125,'',1,'admin','fdas',5,0,0,0,0,1357636408,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(126,'',1,'admin','dfas',5,0,0,0,0,1357636446,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(127,'',1,'admin','fdas',5,0,0,0,0,1357636549,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(128,'',1,'admin','fad',5,0,0,0,0,1357636616,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(129,'',1,'admin','fdas',0,0,0,0,0,1357636629,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(130,'',1,'admin','fd',0,0,0,0,0,1357636657,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(131,'',1,'admin','d',4,0,0,0,0,1357636907,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(133,'',1,'admin','nas1',0,0,0,0,0,1359429521,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(134,'',1,'admin','nas1',0,0,0,1,0,1359430348,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(176,'',2,'ab1','ddd',1,0,0,0,0,1369132309,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(178,'',2,'ab1','wsss',8,0,0,0,0,1369133027,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(180,'',2,'ab1','rubin',1,0,0,0,0,1369133262,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(174,'',2,'ab1','lock',1,0,0,0,0,1369129228,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(177,'',2,'ab1','fetch obj',1,0,0,0,0,1369132652,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(140,'',1,'admin','nas1',0,0,3,2,0,1359433477,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(173,'',2,'ab1','light',8,0,0,0,0,1369128989,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(171,'',2,'ab1','nas',8,0,0,0,0,1368088675,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(147,'',5,'ab3','Light1',9,0,3,0,0,1366855695,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(181,'',2,'ab1','shijia',10,0,0,0,0,1369133427,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(172,'',2,'ab1','wsn1',1,0,0,0,0,1368414213,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(175,'',2,'ab1','2lock',8,0,0,0,0,1369131454,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(179,'',2,'ab1','okkk',8,0,0,0,0,1369133209,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(182,'',2,'ab1','golight',10,0,0,0,0,1369133570,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(183,'',2,'ab1','doto',1,0,0,0,0,1369133611,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(184,'',1,'admin','windows light',5,0,0,0,0,1369226095,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(185,'',1,'admin','windows light',5,0,0,0,0,1369226138,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(186,'',1,'admin','windows light',5,0,0,0,0,1369226350,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(187,'',1,'admin','Lock light',6,0,0,0,0,1369226422,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(188,'',1,'admin','WSN again',5,0,0,0,0,1369226622,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(189,'',1,'admin','feixiang lock',5,0,0,0,0,1369226743,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(190,'',2,'ab1','nas10',1,0,0,0,0,1369716010,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(191,'',1,'admin','ww',5,0,0,0,0,1369885714,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(192,'',1,'admin','ww',5,0,0,0,0,1369885794,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(193,'',1,'admin','dfsafsdaf',4,0,0,0,0,1369885809,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(194,'',1,'admin','fwefw',5,0,0,0,0,1369886082,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(195,'',2,'ab1','fdasfdas',1,0,0,0,0,1369886358,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(196,'',2,'ab1','dfas',8,0,0,0,0,1369886632,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(197,'',2,'ab1','fdasf',10,0,0,0,0,1369888017,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(198,'',2,'ab1','fdasf',10,0,0,0,0,1369888212,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(199,'',2,'ab1','fdasfdas',8,0,0,0,0,1369888585,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(200,'',1,'admin','fadsfd',4,0,0,0,0,1369888754,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(201,'',1,'admin','fdas',5,0,0,0,0,1369888798,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(202,'',1,'admin','fdasfdas',6,0,0,0,0,1369888990,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(203,'',1,'admin','fdasf',5,0,0,0,0,1369889040,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(204,'',1,'admin','fdas',5,0,0,0,0,1369889547,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(205,'',1,'admin','fdas',6,0,0,0,0,1369889626,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(206,'',1,'admin','fdas',5,0,0,0,0,1369889746,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(207,'',1,'admin','fdsa',4,0,0,0,0,1369889946,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(208,'',1,'admin','fdsa',4,0,0,0,0,1369889947,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(209,'',1,'admin','fdas',6,0,0,0,0,1369891407,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(210,'',1,'admin','fdas',7,0,0,0,0,1369891473,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(211,'',1,'admin','fddddddd',6,0,0,0,0,1369891715,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(212,'',1,'admin','fdas',5,0,0,0,0,1369891838,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(213,'',1,'admin','dddd',5,0,0,0,0,1369891900,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(214,'',1,'admin','fdasfdas',7,0,0,0,0,1369891931,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(215,'',1,'admin','fasf',5,0,0,0,0,1369891954,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(216,'',1,'admin','fdasf',5,0,0,0,0,1369892336,1,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(217,'',1,'admin','fdasf',6,0,0,0,0,1369892843,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(218,'',1,'admin','fdas',7,0,0,0,0,1369892918,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(219,'',1,'admin','fdsa',4,0,0,0,0,1369893337,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(220,'',1,'admin','fdasf',5,0,0,0,0,1369893488,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(221,'',1,'admin','fdsa',6,0,0,0,0,1369893648,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(222,'',1,'admin','fdas',6,0,0,0,0,1369894009,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(223,'',1,'admin','fdsafd',6,0,0,0,0,1369894235,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(224,'',1,'admin','fdas',5,0,0,0,0,1369894450,0,0,1,'',0,0,0,0,0,0,0,0,0,0,0),(225,'',1,'admin','fdas',4,0,0,0,0,1369894537,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(226,'',1,'admin','dfas',6,0,0,0,0,1369894642,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(227,'',1,'admin','fdasf',4,0,0,0,0,1369894679,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(228,'',1,'admin','fdsa',6,0,0,0,0,1369894782,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(229,'',1,'admin','zzz',5,0,0,0,0,1369894798,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(230,'',1,'admin','fff',4,0,0,0,0,1369894853,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(231,'',1,'admin','fdas',5,0,0,0,0,1369894984,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(232,'',1,'admin','dfzzzzzzzz',6,0,0,0,0,1369895028,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(233,'',1,'admin','www',6,0,0,0,0,1369895300,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(234,'',1,'admin','fasdfd',5,0,0,0,0,1369895431,1,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(235,'',1,'admin','dddddd',4,0,0,0,0,1369895598,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(236,'',1,'admin','asdf',4,0,0,0,0,1369895636,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(237,'',1,'admin','fdfa',4,0,0,0,0,1369896565,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(238,'',1,'admin','ddddddd',6,0,0,0,0,1369896630,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(239,'',1,'admin','fasf',6,0,0,0,0,1369897425,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(240,'',1,'admin','fdasfd',4,0,0,0,0,1369897507,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(241,'',1,'admin','fdasfd',4,0,1,0,0,1369897520,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(242,'',1,'admin','dasf',7,0,0,0,0,1369897764,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(243,'',1,'admin','fdsa',6,0,0,0,0,1369897902,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(245,'',2,'ab1','nas1',1,0,0,0,0,1369966987,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(246,'',2,'ab1','ww',8,0,1,0,0,1369987113,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(247,'',2,'ab1','ddddd',8,0,1,0,0,1369987412,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(248,'',2,'ab1','',8,0,0,0,0,1370775922,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(249,'',1,'admin','',5,0,0,0,0,1371090831,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(250,'',1,'admin','',5,0,0,0,0,1371091064,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(251,'',1,'admin','',5,0,0,0,0,1371091073,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(252,'',1,'admin','',5,0,0,0,0,1371091084,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(253,'',1,'admin','',5,0,0,0,0,1371091271,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(254,'',1,'admin','',4,0,0,0,0,1371093459,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(255,'',2,'ab1','',1,0,0,0,0,1371556865,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(256,'',2,'ab1','',1,0,0,0,0,1371557434,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(257,'',2,'ab1','',1,0,0,0,0,1371701811,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(258,'',2,'ab1','',8,0,0,0,0,1372072035,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(259,'',2,'ab1','',8,0,0,0,0,1372084935,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(260,'',13,'ab2','Cam11111',11,0,1,3,1,1377769565,0,0,1,'',0,0,0,0,0,0,0,0,0,0,0),(261,'',2,'ab1','ifttt',1,0,10,10,1,1377769599,0,0,0,'0',10,10,0,2,2,3,4,5,6,7,8),(262,'',2,'ab1','fddddd',1,0,0,0,0,1380191034,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(263,'',2,'ab1','kkkkkkkkkkkkkk',8,0,0,0,0,1380195444,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(264,'',2,'ab1','IFTTT',8,0,0,0,0,1380195605,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(265,'',2,'ab1','new shanghai',8,0,0,0,0,1380196537,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(266,'',2,'ab1','ddddddddddddddeee',10,0,1,0,0,1380196643,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(267,'',2,'ab1','snow test',8,0,0,0,0,1380249098,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(268,'',1,'admin','ddddddfqvasv',5,0,1,0,0,1380264945,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(269,'',1,'admin','wwwwfwefwefwefw',6,0,0,0,0,1380303508,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(270,'',1,'admin','wps two',5,0,0,0,0,1380303806,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(271,'',1,'admin','wwwwwwwwww',6,0,0,0,0,1381249006,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(272,'',1,'admin','fasfasdfasdfd',6,0,0,0,0,1381250458,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(273,'',1,'admin','fgdg',6,0,0,0,0,1381488176,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(274,'',1,'admin','wwww',5,0,1,0,0,1381505320,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(275,'',2,'ab1','wwwwwwwwwwwwwww',10,0,0,0,0,1381525515,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(276,'',1,'admin','wwwwwwwwwww',6,0,0,0,0,1381601015,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0),(277,'',2,'ab1','dss',1,0,0,0,0,1382459691,0,0,1,'',0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `v_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_resource`
--

DROP TABLE IF EXISTS `v_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_resource` (
  `title` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dateline` int(11) unsigned NOT NULL,
  `uid` bigint(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_resource`
--

LOCK TABLES `v_resource` WRITE;
/*!40000 ALTER TABLE `v_resource` DISABLE KEYS */;
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
  `dateline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_role`
--

LOCK TABLES `v_role` WRITE;
/*!40000 ALTER TABLE `v_role` DISABLE KEYS */;
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
  `resource_name` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rights` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `extra` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_role_resource`
--

LOCK TABLES `v_role_resource` WRITE;
/*!40000 ALTER TABLE `v_role_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_role_resource` ENABLE KEYS */;
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
INSERT INTO `v_user_profile` VALUES (3,'wwwww','\0','','','','','','','','','ASM','','','','','-1','AAN','','','','','','',1,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','2014-09-18','ifa6@qq.com',0),(4,'wwww','\0','','','','','','','','','1','','','','','11','1','','','','23232','','',1,'','','','',3,'','','','','','','','','','','','','','','','','','','','','fdsafdas','2014-01-14','fdsafd@fda.com',0),(6,'wewrewrew','\0','','','','','','','','','1','','','','','11','1','','','','','','',6,'','','','',1,'','','','','','','','','','','','','','','','','','','','','','2014-01-15','fsdafdas@fda.com',0),(71,'zb1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(72,'zb2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(73,'wweww','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(74,'zz1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(75,'pine','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(76,'si1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(77,'zk1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(78,'zk2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(79,'zk3','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(80,'zk4','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(81,'zk11','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(82,'uk1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(83,'ak19','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(84,'fds','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(85,'admin','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(86,'adm','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',1),(87,'ifa6','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(88,'riben2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(89,'za1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(90,'zq1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(91,'zq2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(92,'zq3','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(93,'zq32','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(94,'zq132','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(96,'qq1','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(97,'deguo2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0),(98,'deguo2','\0','','','','','','','','',NULL,'','','','',NULL,NULL,'','','',NULL,'','',6,'','','','',5,'','','','','','','','','','','','','','','','','','','','','','0000-00-00','',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_user_setting`
--

LOCK TABLES `v_user_setting` WRITE;
/*!40000 ALTER TABLE `v_user_setting` DISABLE KEYS */;
INSERT INTO `v_user_setting` VALUES (1,0,'',1,0,1404465857,'','enus','\0',1,'','\0','\0'),(3,2,'',1,1,0,'','','\0',1,'\0','\0',''),(4,0,'\0',1,0,1404263551,'\0','enus','\0',1,'','\0',''),(5,0,'',1,0,1404438154,'','enus','\0',1,'','\0',''),(77,0,'',1,0,1404193282,'','enus','\0',1,'','\0',''),(78,0,'',1,0,1404189475,'\0','enus','\0',0,'','\0',''),(79,0,'',1,0,1404189578,'','enus','\0',1,'','\0','\0'),(80,0,'',1,0,1404193303,'','enus','\0',1,'','\0',''),(81,0,'',1,0,1404465865,'','enus','\0',1,'','\0',''),(82,0,'',1,0,1405304964,'','enus','\0',1,'','\0','\0'),(83,0,'',1,0,1405306279,'','enus','\0',1,'','\0','\0'),(84,0,'',1,0,1405306430,'','enus','\0',1,'','\0',''),(85,0,'',1,0,1406113055,'','enus','\0',1,'','\0','\0'),(86,0,'',1,0,1406113100,'','enus','\0',1,'','\0',''),(87,0,'',1,0,1407202291,'','enus','\0',1,'','\0','\0'),(88,0,'',1,0,1407223418,'','enus','\0',1,'','\0','\0'),(89,0,'',1,0,1409727645,'','enus','\0',1,'','\0','\0'),(90,0,'',1,0,1409727985,'','enus','\0',1,'','\0','\0'),(91,0,'',1,0,1409728019,'','enus','\0',1,'','\0','\0'),(92,0,'',1,0,1409728166,'','enus','\0',1,'','\0','\0'),(93,0,'',1,0,1409728263,'','enus','\0',1,'','\0','\0'),(94,0,'',1,0,1409728303,'','enus','\0',1,'','\0','\0'),(95,0,'',1,0,1409822210,'','enus','\0',1,'','\0','\0'),(96,0,'',1,0,1409822600,'','enus','\0',1,'','\0','\0'),(97,0,'',1,0,1409822703,'','enus','\0',1,'','\0','\0');
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
  `language` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `headimgurl` varchar(1000) COLLATE utf8_bin NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `province` varchar(30) COLLATE utf8_bin NOT NULL,
  `subscribe` bit(1) DEFAULT NULL,
  `remark` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`,`openid`),
  UNIQUE KEY `unique_bigint` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_wechat_user`
--

LOCK TABLES `v_wechat_user` WRITE;
/*!40000 ALTER TABLE `v_wechat_user` DISABLE KEYS */;
INSERT INTO `v_wechat_user` VALUES (3,'ovgWqtxE2g0iz_1aGKDEELY1iL_I',1,'朝阳','中国','缔','en','http://wx.qlogo.cn/mmopen/ZXrtboZZHwibQw07xjQqhdBibtI71Nen0tpjneKFyNvwYS5iaecNBBP1WT0YDGYuL7WibP9fFwM1BQWCiayr4BgDk94ibZfZfTVC6d/0',1392947445,'北京','','');
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

-- Dump completed on 2014-09-18 10:15:19
