-- MySQL dump 10.13  Distrib 5.1.63, for Win32 (ia32)
--
-- Host: localhost    Database: a0226190130
-- ------------------------------------------------------
-- Server version	5.1.63-community

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
-- Table structure for table `tp_access`
--

DROP TABLE IF EXISTS `tp_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_access`
--

LOCK TABLES `tp_access` WRITE;
/*!40000 ALTER TABLE `tp_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_adma`
--

DROP TABLE IF EXISTS `tp_adma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(255) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_adma`
--

LOCK TABLES `tp_adma` WRITE;
/*!40000 ALTER TABLE `tp_adma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_adma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_alipay_config`
--

DROP TABLE IF EXISTS `tp_alipay_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_alipay_config` (
  `token` varchar(60) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(60) NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_alipay_config`
--

LOCK TABLES `tp_alipay_config` WRITE;
/*!40000 ALTER TABLE `tp_alipay_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_alipay_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_alipay_m_config`
--

DROP TABLE IF EXISTS `tp_alipay_m_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_alipay_m_config` (
  `token` varchar(60) NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(60) NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_alipay_m_config`
--

LOCK TABLES `tp_alipay_m_config` WRITE;
/*!40000 ALTER TABLE `tp_alipay_m_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_alipay_m_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_api`
--

DROP TABLE IF EXISTS `tp_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` text NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_api`
--

LOCK TABLES `tp_api` WRITE;
/*!40000 ALTER TABLE `tp_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_areply`
--

DROP TABLE IF EXISTS `tp_areply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_areply`
--

LOCK TABLES `tp_areply` WRITE;
/*!40000 ALTER TABLE `tp_areply` DISABLE KEYS */;
INSERT INTO `tp_areply` VALUES (1,'关注回复','您好 欢迎光临！',1,'','1393415254','1393491937','xnftis1393415057','1');
/*!40000 ALTER TABLE `tp_areply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_article`
--

DROP TABLE IF EXISTS `tp_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `description` char(255) NOT NULL,
  `author` varchar(15) NOT NULL,
  `form` varchar(30) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `content` text NOT NULL,
  `imgs` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_article`
--

LOCK TABLES `tp_article` WRITE;
/*!40000 ALTER TABLE `tp_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_behavior`
--

DROP TABLE IF EXISTS `tp_behavior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_behavior`
--

LOCK TABLES `tp_behavior` WRITE;
/*!40000 ALTER TABLE `tp_behavior` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_behavior` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_call`
--

DROP TABLE IF EXISTS `tp_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_call` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) CHARACTER SET latin1 NOT NULL,
  `phone_account` varchar(50) CHARACTER SET latin1 NOT NULL,
  `phone_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_call`
--

LOCK TABLES `tp_call` WRITE;
/*!40000 ALTER TABLE `tp_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_canyu`
--

DROP TABLE IF EXISTS `tp_canyu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_canyu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xid` int(11) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `token` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_canyu`
--

LOCK TABLES `tp_canyu` WRITE;
/*!40000 ALTER TABLE `tp_canyu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_canyu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_case`
--

DROP TABLE IF EXISTS `tp_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_case`
--

LOCK TABLES `tp_case` WRITE;
/*!40000 ALTER TABLE `tp_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_classify`
--

DROP TABLE IF EXISTS `tp_classify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` varchar(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `fid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_classify`
--

LOCK TABLES `tp_classify` WRITE;
/*!40000 ALTER TABLE `tp_classify` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_classify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_company`
--

DROP TABLE IF EXISTS `tp_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_company`
--

LOCK TABLES `tp_company` WRITE;
/*!40000 ALTER TABLE `tp_company` DISABLE KEYS */;
INSERT INTO `tp_company` VALUES (1,'yvjknk1390111953','1','1','11111111111','1','1',30.641399,103.96025,'1',0,1,0,''),(2,'yvjknk1390111953','测试','测试','13888888888','010111111111','俄方斯蒂芬',31.586689,120.337294,'复反反复复',0,0,1,''),(3,'brcyux1390212100','卡莱特斯','卡莱特斯','13678789090','13678789090','郑州市京广路国际',34.738359,113.664249,'呵呵呵呵呵呵呵呵呵呵呵呵呵呵',0,0,0,'http://qqwx0117.jszmxh.com/tpl/static/attachment/icon/lovely/backpack-2.png');
/*!40000 ALTER TABLE `tp_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_company_staff`
--

DROP TABLE IF EXISTS `tp_company_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_company_staff`
--

LOCK TABLES `tp_company_staff` WRITE;
/*!40000 ALTER TABLE `tp_company_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_company_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_diymen_class`
--

DROP TABLE IF EXISTS `tp_diymen_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_diymen_class`
--

LOCK TABLES `tp_diymen_class` WRITE;
/*!40000 ALTER TABLE `tp_diymen_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_diymen_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_diymen_set`
--

DROP TABLE IF EXISTS `tp_diymen_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_diymen_set`
--

LOCK TABLES `tp_diymen_set` WRITE;
/*!40000 ALTER TABLE `tp_diymen_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_diymen_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_dream`
--

DROP TABLE IF EXISTS `tp_dream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_dream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_dream`
--

LOCK TABLES `tp_dream` WRITE;
/*!40000 ALTER TABLE `tp_dream` DISABLE KEYS */;
INSERT INTO `tp_dream` VALUES (1,'梦见父母','梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的'),(2,'梦见护士',' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。'),(3,'梦见老师',' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式'),(4,'梦见男孩','梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活'),(5,'梦见皇后',' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财'),(6,'梦见朋友',' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间'),(7,'梦见守财奴',' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃'),(8,'梦见尼姑',' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。'),(9,'梦见小孩',' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课'),(10,'梦见人群',' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞'),(11,'梦见疯子',' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条'),(12,'梦见兄弟姊妹',' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子'),(13,'梦见军队','梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。'),(14,'梦见清道夫',' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝'),(15,'梦见祖父母',' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。'),(16,'梦见婴儿',' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。'),(17,'梦见野蛮人','男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快'),(18,'梦见邻居','梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。'),(19,'梦见王子公主',' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架'),(20,'梦见小贩',' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任'),(21,'梦见医生',' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安'),(22,'梦见丈夫',' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.'),(23,'梦见烈士',' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头'),(24,'梦见警察',' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连'),(25,'梦见导师',' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学'),(26,'梦见队伍',' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸'),(27,'梦见名人',' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰'),(28,'梦见同学',' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突'),(29,'梦见英雄',' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救'),(30,'梦见上司','梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。'),(31,'梦见同事','梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难'),(32,'梦见小偷','原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。'),(33,'梦见孤儿','梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。'),(34,'梦见妻子','梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。'),(35,'梦见和尚','梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。'),(36,'梦见军人','梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。'),(37,'梦见病人','梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。'),(38,'梦见婴儿','梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。'),(39,'梦见姐姐','男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。'),(40,'梦见陌生人','梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。'),(41,'梦见舅舅','梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由'),(42,'梦见裁缝','裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。'),(43,'梦见双胞胎','梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。'),(44,'梦见寡妇','梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。'),(45,'梦见警察','警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。'),(46,'梦见哑巴','梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。'),(47,'梦见明星','名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。'),(48,'梦见弓箭手','梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。'),(49,'梦见孕妇','预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。'),(50,'梦见妓女','梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。'),(51,'梦见已故的祖父母','梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。'),(52,'梦见坏人','梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。'),(53,'梦见犯人','梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险'),(54,'梦见帅哥','梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。'),(55,'梦见日本人','梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。'),(56,'梦见处女','梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。'),(57,'梦见老情人','很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。'),(58,'梦见第三者','梦见第三者，吉兆，预示着爱情会很甜蜜。'),(59,'梦见白马王子','女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。'),(60,'梦见仇人','梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。'),(61,'梦见美女','梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。'),(62,'梦见喜欢的人',''),(63,'梦见外星人','梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。'),(64,'梦见毛主席','梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。'),(65,'梦见陆军 ','梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),(66,'梦见风骚女子','梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。'),(67,'梦见久未见面的人','梦见久未见面的人时，寓意着此人将会很快归来。'),(68,'梦见工人','通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),(69,'梦见厨师','梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。'),(70,'梦见陆军','梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),(71,'梦见烧香的人','梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。'),(72,'梦见神秘人','梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。'),(73,'梦见亿万富豪','梦见成为亿万富豪，则近日营业将会损失惨重。'),(74,'梦见跛子','梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。'),(75,'梦见虐待狂','虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。'),(76,'梦见贵人','梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。'),(77,'梦见窃贼','梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。'),(78,'梦见赤裸的男人','梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。'),(79,'梦见两性人','梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。'),(80,'梦见嫂子','经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。'),(81,'梦见工人','通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),(82,'梦见国王','国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。'),(83,'梦见老太太','梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。'),(84,'梦见皇帝','梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。'),(85,'梦见陌生男人','梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。'),(86,'梦见老伯伯','梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。'),(87,'梦见小人','梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。'),(88,'梦见木匠','梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。'),(89,'梦见故人','梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。'),(90,'梦见小朋友','梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');
/*!40000 ALTER TABLE `tp_dream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate`
--

DROP TABLE IF EXISTS `tp_estate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(11) NOT NULL,
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate`
--

LOCK TABLES `tp_estate` WRITE;
/*!40000 ALTER TABLE `tp_estate` DISABLE KEYS */;
INSERT INTO `tp_estate` VALUES (1,'xnftis1393415057','微房产','微房产',0,'http://www.jk51.cn/tpl/static/vhouse/pigcms02.jpg',0,0,0,'http://www.jk51.cn/tpl/static/vhouse/pigcms01.jpg','http://www.jk51.cn/tpl/static/vhouse/pigcms32.jpg','','','','','',''),(2,'aeugbj1393734778','楼盘','房产',0,'http://wx.jk51.cn/tpl/static/vhouse/pigcms02.jpg',0,0,0,'http://wx.jk51.cn/tpl/static/vhouse/pigcms01.jpg','http://wx.jk51.cn/tpl/static/vhouse/pigcms32.jpg','1111111','','','111111111','11111111111','111111111111');
/*!40000 ALTER TABLE `tp_estate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate_album`
--

DROP TABLE IF EXISTS `tp_estate_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate_album`
--

LOCK TABLES `tp_estate_album` WRITE;
/*!40000 ALTER TABLE `tp_estate_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_estate_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate_expert`
--

DROP TABLE IF EXISTS `tp_estate_expert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate_expert`
--

LOCK TABLES `tp_estate_expert` WRITE;
/*!40000 ALTER TABLE `tp_estate_expert` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_estate_expert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate_housetype`
--

DROP TABLE IF EXISTS `tp_estate_housetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate_housetype`
--

LOCK TABLES `tp_estate_housetype` WRITE;
/*!40000 ALTER TABLE `tp_estate_housetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_estate_housetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate_impress`
--

DROP TABLE IF EXISTS `tp_estate_impress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate_impress`
--

LOCK TABLES `tp_estate_impress` WRITE;
/*!40000 ALTER TABLE `tp_estate_impress` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_estate_impress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate_impress_add`
--

DROP TABLE IF EXISTS `tp_estate_impress_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imp_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate_impress_add`
--

LOCK TABLES `tp_estate_impress_add` WRITE;
/*!40000 ALTER TABLE `tp_estate_impress_add` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_estate_impress_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_estate_son`
--

DROP TABLE IF EXISTS `tp_estate_son`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_estate_son`
--

LOCK TABLES `tp_estate_son` WRITE;
/*!40000 ALTER TABLE `tp_estate_son` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_estate_son` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_files`
--

DROP TABLE IF EXISTS `tp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_files`
--

LOCK TABLES `tp_files` WRITE;
/*!40000 ALTER TABLE `tp_files` DISABLE KEYS */;
INSERT INTO `tp_files` VALUES (1,'xnftis1393415057','http://www.jk51.cn/uploads/x/xnftis1393415057/6/a/0/3/thumb_530dd57ec967b.jpg',31300,'jpg',1393415551),(2,'xnftis1393415057','http://wx.jk51.cn/uploads/x/xnftis1393415057/5/6/c/c/thumb_530f0085addd5.jpg',45462,'jpg',1393492101),(3,'nkldoe1393423032','http://wx.jk51.cn/uploads/n/nkldoe1393423032/6/7/8/9/thumb_530fe3228e375.jpg',10148,'jpg',1393550114),(4,'nkldoe1393423032','http://wx.jk51.cn/uploads/n/nkldoe1393423032/f/c/8/b/thumb_53113297af50d.jpg',31338,'jpg',1393635991),(5,'xnftis1393415057','http://wx.jk51.cn/uploads/x/xnftis1393415057/3/a/6/f/thumb_53148c6d95bb5.jpg',136859,'jpg',1393855597),(6,'xnftis1393415057','http://wx.jk51.cn/uploads/x/xnftis1393415057/d/6/7/1/thumb_53149047a0f68.jpg',58168,'jpg',1393856583);
/*!40000 ALTER TABLE `tp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_flash`
--

DROP TABLE IF EXISTS `tp_flash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_flash`
--

LOCK TABLES `tp_flash` WRITE;
/*!40000 ALTER TABLE `tp_flash` DISABLE KEYS */;
INSERT INTO `tp_flash` VALUES (1,'nkldoe1393423032','http://wx.jk51.cn/tpl/static/attachment/focus/default/5.gif','','很棒吧'),(2,'nkldoe1393423032','http://wx.jk51.cn/tpl/static/attachment/focus/default/6.jpg','','这个也很不错哦');
/*!40000 ALTER TABLE `tp_flash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_follow`
--

DROP TABLE IF EXISTS `tp_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follow_form_id` varchar(100) NOT NULL,
  `follow_to_id` varchar(100) NOT NULL,
  `follow_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_follow`
--

LOCK TABLES `tp_follow` WRITE;
/*!40000 ALTER TABLE `tp_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_function`
--

DROP TABLE IF EXISTS `tp_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_function`
--

LOCK TABLES `tp_function` WRITE;
/*!40000 ALTER TABLE `tp_function` DISABLE KEYS */;
INSERT INTO `tp_function` VALUES (1,1,0,'天气查询','tianqi','天气查询服务:例  城市名+天气',1,1),(2,1,0,'糗事','qiushi','糗事　直接发送糗事',1,1),(3,1,0,'计算器','jishuan','计算器使用方法　例：计算50-50　，计算100*100',1,1),(4,4,0,'朗读','langdu','朗读＋关键词　例：朗读多用户营销系统',1,1),(5,1,0,'健康指数查询','jiankang','健康指数查询　健康＋高，＋重　例：健康170,65',1,1),(6,1,0,'快递查询','kuaidi','快递＋快递名＋快递号　例：快递顺丰117215889174',1,1),(7,1,0,'笑话','xiaohua','笑话　直接发送笑话',1,1),(9,1,0,'陪聊','peiliao','聊天　直接输入聊天关键词即可',1,1),(10,1,0,'聊天','liaotian','聊天　直接输入聊天关键词即可',1,1),(11,3,0,'周公解梦','mengjian','周公解梦　梦见+关键词　例如:梦见父母',1,1),(12,2,0,'语音翻译','yuyinfanyi','翻译＋关键词 例：翻译你好',1,1),(13,2,0,'火车查询','huoche','火车查询　火车＋城市＋目的地　例火车上海南京',1,1),(14,2,0,'公交查询','gongjiao','公交＋城市＋公交编号　例：上海公交774',1,1),(15,2,0,'身份证查询','shenfenzheng','身份证＋号码　　例：身份证342423198803015568',1,1),(16,1,0,'手机归属地查询','shouji','手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912',1,1),(17,3,0,'音乐查询','yinle','音乐＋音乐名  例：音乐爱你一万年',1,1),(18,1,0,'附近周边信息查询','fujin','附近周边信息查询(ＬＢＳ）',1,1),(19,4,0,'幸运大转盘','choujiang','输入抽奖　即可参加幸运大转盘抽奖活动',2,1),(20,3,0,'淘宝店铺','taobao','输入淘宝＋关键词　即可访问淘宝3g手机店铺',2,1),(21,4,0,'会员资料管理','userinfo','会员资料管理　输入会员　即可参与',2,1),(22,1,0,'翻译','fanyi','翻译＋关键词 例：翻译你好',1,1),(23,4,0,'第三方接口','api','第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，',1,1),(24,1,0,'姓名算命','suanming','姓名算命 算命＋关键词　例：算命李白',1,1),(25,3,0,'百度百科','baike','百度百科　使用方法：百科＋关键词　例：百科北京',2,1),(26,2,0,'彩票查询','caipiao','回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球',1,1),(27,4,0,'抽奖','choujiang','抽奖,输入抽奖即可参加幸运大转盘',1,1),(28,4,0,'刮刮卡','gua2','刮刮卡抽奖活动',1,1),(29,1,0,'3G首页','shouye','输入首页,访问微3g 网站',1,1),(30,1,0,'DIY宣传页','adma','DIY宣传页,用于创建二维码宣传页权限开启',1,1),(31,4,0,'会员卡','huiyuanka','尊贵享受vip会员卡,回复会员卡即可领取会员卡',1,1),(32,4,0,'优惠券','coupon','尊贵享受优惠券,回复优惠券即可领取会员卡',1,1),(33,4,0,'官网帐号审核','shenhe','官网帐号审核',1,1),(34,1,0,'歌词查询','geci','歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风',1,1),(35,2,0,'域名whois查询','yuming','域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名aiaideli.com',1,1),(36,4,0,'通用预订系统','host_kev','通用预订系统 可用于酒店预订，ktv订房，旅游预订等。',2,1),(38,4,0,'自定义表单','diyform','自定义表单(用于报名，预约,留言)等',1,1),(39,2,0,'无线网络订餐','dx','无线网络订餐',1,1),(40,2,0,'在线商城','shop','在线商城,购买系统',1,1),(41,2,0,'在线团购系统','etuan','在线团购系统',1,1),(42,4,0,'自定义菜单','diymen_set','自定义菜单,一键生成轻app',1,1),(43,4,0,'360全景','Panorama','360全景',2,1),(44,4,0,'微喜帖','wedding','添加关键词，回复，触发此功能',2,1),(45,4,0,'砸金蛋','zadan','砸金蛋，很火的营销工具',2,1),(46,4,0,'微调研','weidiaoyan','微调研，设置调查表等调研功能',1,1),(47,4,0,'微信墙','Wewall','微信上墙',2,1),(48,4,0,'微客服','Wxusermessage','时时客服',2,1),(49,4,0,'微酒店','Jiudian','微酒店',2,1),(50,4,0,'微医疗','Yiliao','微医疗',2,1),(51,4,0,'微贺卡','Heka','微贺卡',2,1),(52,4,0,'微预约','Yuyue','微预约',2,1),(53,4,0,'摇一摇','Shake','摇一摇',2,1);
/*!40000 ALTER TABLE `tp_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_heka`
--

DROP TABLE IF EXISTS `tp_heka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_heka` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `token` varchar(100) NOT NULL,
  `bg_topic` varchar(100) DEFAULT NULL,
  `bg_music` varchar(100) DEFAULT NULL,
  `bg_action` int(2) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `show` int(1) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `banquan` varchar(100) DEFAULT NULL COMMENT '版权',
  `see` int(20) DEFAULT '0' COMMENT '查看次数',
  `forwards` int(20) DEFAULT '0' COMMENT '转发次数',
  `keyword` varchar(50) DEFAULT NULL,
  `topic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_heka`
--

LOCK TABLES `tp_heka` WRITE;
/*!40000 ALTER TABLE `tp_heka` DISABLE KEYS */;
INSERT INTO `tp_heka` VALUES (1,'祝你发大财','nkldoe1393423032','http://wx.jk51.cn/tpl/static/attachment/background/view/8.jpg','',2,'祝福你发大财。恭喜发财','转发贺卡',0,NULL,'亚楠同学','符利明版权所有',4,0,'发财','http://wx.jk51.cn/tpl/static/attachment/focus/default/1.gif');
/*!40000 ALTER TABLE `tp_heka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_home`
--

DROP TABLE IF EXISTS `tp_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `homeurl` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL,
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  `apiurl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_home`
--

LOCK TABLES `tp_home` WRITE;
/*!40000 ALTER TABLE `tp_home` DISABLE KEYS */;
INSERT INTO `tp_home` VALUES (1,'nkldoe1393423032','首页','http://wx.jk51.cn/tpl/static/attachment/focus/default/4.jpg','http://wx.jk51.cn/tpl/static/attachment/background/view/2.jpg','欢迎关注微喜帖微官网','#FFA530','© 2013-2014 微喜帖版权所有',0,''),(2,'xnftis1393415057','欢迎光临 特易网络','http://wx.jk51.cn/uploads/x/xnftis1393415057/5/6/c/c/thumb_530f0085addd5.jpg','','欢迎光临 特易网络','','',0,'');
/*!40000 ALTER TABLE `tp_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_home_background`
--

DROP TABLE IF EXISTS `tp_home_background`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_home_background`
--

LOCK TABLES `tp_home_background` WRITE;
/*!40000 ALTER TABLE `tp_home_background` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_home_background` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_host`
--

DROP TABLE IF EXISTS `tp_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `tel2` varchar(13) NOT NULL,
  `ppicurl` varchar(250) NOT NULL,
  `headpic` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `url` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `info2` text NOT NULL,
  `creattime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_host`
--

LOCK TABLES `tp_host` WRITE;
/*!40000 ALTER TABLE `tp_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_host_list_add`
--

DROP TABLE IF EXISTS `tp_host_list_add`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `typeinfo` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `url` varchar(100) NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_host_list_add`
--

LOCK TABLES `tp_host_list_add` WRITE;
/*!40000 ALTER TABLE `tp_host_list_add` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_host_list_add` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_host_order`
--

DROP TABLE IF EXISTS `tp_host_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `check_in` int(11) NOT NULL,
  `check_out` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `book_time` int(11) NOT NULL,
  `book_num` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL COMMENT ' ',
  `order_status` int(11) NOT NULL COMMENT ' ',
  `hid` int(11) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_host_order`
--

LOCK TABLES `tp_host_order` WRITE;
/*!40000 ALTER TABLE `tp_host_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_host_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_img`
--

DROP TABLE IF EXISTS `tp_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT '关键词匹配类型',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` text NOT NULL COMMENT '图文详细内容',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_img`
--

LOCK TABLES `tp_img` WRITE;
/*!40000 ALTER TABLE `tp_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_indent`
--

DROP TABLE IF EXISTS `tp_indent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` int(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_indent`
--

LOCK TABLES `tp_indent` WRITE;
/*!40000 ALTER TABLE `tp_indent` DISABLE KEYS */;
INSERT INTO `tp_indent` VALUES (1,1,4,'ceshi','充值vip会员1个月',0,'ceshi1390144228',0,100,1390144228,0),(2,1,4,'ceshi','充值vip会员1个月',0,'ceshi1390314556',0,100,1390314556,0),(3,1,4,'ceshi','充值vip会员1个月',0,'ceshi1390320950',0,100,1390320950,0);
/*!40000 ALTER TABLE `tp_indent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_keyword`
--

DROP TABLE IF EXISTS `tp_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_keyword`
--

LOCK TABLES `tp_keyword` WRITE;
/*!40000 ALTER TABLE `tp_keyword` DISABLE KEYS */;
INSERT INTO `tp_keyword` VALUES (1,'微房产',1,'xnftis1393415057','Estate'),(2,'亮亮',1,'nkldoe1393423032','Wedding'),(3,'数联',1,'nkldoe1393423032','Selfform'),(4,'邀请',1,'nkldoe1393423032','Reservation'),(5,'数联',2,'nkldoe1393423032','Wedding'),(6,'360',1,'nkldoe1393423032','Panorama'),(7,'砸金蛋',1,'nkldoe1393423032','Lottery'),(8,'刮刮卡',2,'nkldoe1393423032','Lottery'),(9,'发财',1,'nkldoe1393423032','Heka'),(10,'王硕',3,'nkldoe1393423032','Wedding'),(11,'喜帖',4,'xnftis1393415057','Wedding'),(12,'王文博',5,'gkphkp1393422345','Wedding');
/*!40000 ALTER TABLE `tp_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_links`
--

DROP TABLE IF EXISTS `tp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_links`
--

LOCK TABLES `tp_links` WRITE;
/*!40000 ALTER TABLE `tp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_liuyan`
--

DROP TABLE IF EXISTS `tp_liuyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(30) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `createtime` int(20) DEFAULT NULL,
  `uptatetime` int(20) DEFAULT NULL,
  `token` varchar(30) NOT NULL,
  `re` varchar(500) DEFAULT NULL,
  `wecha_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_liuyan`
--

LOCK TABLES `tp_liuyan` WRITE;
/*!40000 ALTER TABLE `tp_liuyan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_liuyan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_lottery`
--

DROP TABLE IF EXISTS `tp_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(255) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(255) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_lottery`
--

LOCK TABLES `tp_lottery` WRITE;
/*!40000 ALTER TABLE `tp_lottery` DISABLE KEYS */;
INSERT INTO `tp_lottery` VALUES (1,0,0,'nkldoe1393423032','砸金蛋','http://wx.jk51.cn/tpl/User/default/common/images/img/activity-zadan-start.jpg','砸金蛋活动开始了','兑奖请联系我们，电话18950099999','恭喜您砸出了今年的大奖！',1393603200,1393776000,'亲，请点击进入砸金蛋抽奖活动页面，祝您好运哦！','','砸金蛋活动已经结束了','http://wx.jk51.cn/tpl/User/default/common/images/img/activity-zadan-end.jpg','亲，活动已经结束，请继续关注我们的后续活动哦。','苹果5s土豪金',1000,1,'',4,0,0,'',0,0,1000,1,0,'','',0,0,1,'',0,0,'',0,0,'',0,0,'',0,1),(2,2,0,'nkldoe1393423032','刮刮卡','http://wx.jk51.cn/tpl/User/default/common/images/img/activity-scratch-card-start.jpg','刮刮卡活动开始了','兑奖请联系我们，电话138********','恭喜您',1393603200,1396144458,'亲，请点击进入刮刮卡抽奖活动页面，祝您好运哦！','','刮刮卡活动已经结束了','http://wx.jk51.cn/tpl/User/default/common/images/img/activity-scratch-card-end.jpg','亲，活动已经结束，请继续关注我们的后续活动哦。','木塑家居五折优惠',1000,1,'',2,0,0,'',0,0,1000,5,0,'','',0,0,1,'',0,0,'',0,0,'',0,0,'',0,1);
/*!40000 ALTER TABLE `tp_lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_lottery_cheat`
--

DROP TABLE IF EXISTS `tp_lottery_cheat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_lottery_cheat`
--

LOCK TABLES `tp_lottery_cheat` WRITE;
/*!40000 ALTER TABLE `tp_lottery_cheat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_lottery_cheat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_lottery_record`
--

DROP TABLE IF EXISTS `tp_lottery_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_lottery_record`
--

LOCK TABLES `tp_lottery_record` WRITE;
/*!40000 ALTER TABLE `tp_lottery_record` DISABLE KEYS */;
INSERT INTO `tp_lottery_record` VALUES (1,1,1,'oXwJ-jvN2RGgbko9VxCfg7ux0uKc','nkldoe1393423032',1,'vsd5818','15670705742','530fec018a414',1393552385,'一等奖',0,0),(2,2,2,'oXwJ-jvN2RGgbko9VxCfg7ux0uKc','nkldoe1393423032',0,'','','',1393552547,'7',0,0),(3,2,2,'oXwJ-jvN2RGgbko9VxCfg7ux0uKc','nkldoe1393423032',1,'7151516838','15670705742','530fecb4c7bd6',1393552564,'1',0,0);
/*!40000 ALTER TABLE `tp_lottery_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member`
--

DROP TABLE IF EXISTS `tp_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member`
--

LOCK TABLES `tp_member` WRITE;
/*!40000 ALTER TABLE `tp_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_contact`
--

DROP TABLE IF EXISTS `tp_member_card_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_contact`
--

LOCK TABLES `tp_member_card_contact` WRITE;
/*!40000 ALTER TABLE `tp_member_card_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_coupon`
--

DROP TABLE IF EXISTS `tp_member_card_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(20) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_coupon`
--

LOCK TABLES `tp_member_card_coupon` WRITE;
/*!40000 ALTER TABLE `tp_member_card_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_create`
--

DROP TABLE IF EXISTS `tp_member_card_create`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(20) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=500 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_create`
--

LOCK TABLES `tp_member_card_create` WRITE;
/*!40000 ALTER TABLE `tp_member_card_create` DISABLE KEYS */;
INSERT INTO `tp_member_card_create` VALUES (16,1,'nkldoe1393423032','LYSL17',''),(17,1,'nkldoe1393423032','LYSL18',''),(18,1,'nkldoe1393423032','LYSL19',''),(19,1,'nkldoe1393423032','LYSL20',''),(20,1,'nkldoe1393423032','LYSL21',''),(21,1,'nkldoe1393423032','LYSL22',''),(22,1,'nkldoe1393423032','LYSL23',''),(23,1,'nkldoe1393423032','LYSL24',''),(24,1,'nkldoe1393423032','LYSL25',''),(25,1,'nkldoe1393423032','LYSL26',''),(26,1,'nkldoe1393423032','LYSL27',''),(27,1,'nkldoe1393423032','LYSL28',''),(28,1,'nkldoe1393423032','LYSL29',''),(29,1,'nkldoe1393423032','LYSL30',''),(30,1,'nkldoe1393423032','LYSL31',''),(31,1,'nkldoe1393423032','LYSL32',''),(32,1,'nkldoe1393423032','LYSL33',''),(33,1,'nkldoe1393423032','LYSL34',''),(34,1,'nkldoe1393423032','LYSL35',''),(35,1,'nkldoe1393423032','LYSL36',''),(36,1,'nkldoe1393423032','LYSL37',''),(37,1,'nkldoe1393423032','LYSL38',''),(38,1,'nkldoe1393423032','LYSL39',''),(39,1,'nkldoe1393423032','LYSL40',''),(40,1,'nkldoe1393423032','LYSL41',''),(41,1,'nkldoe1393423032','LYSL42',''),(42,1,'nkldoe1393423032','LYSL43',''),(43,1,'nkldoe1393423032','LYSL44',''),(44,1,'nkldoe1393423032','LYSL45',''),(45,1,'nkldoe1393423032','LYSL46',''),(46,1,'nkldoe1393423032','LYSL47',''),(47,1,'nkldoe1393423032','LYSL48',''),(48,1,'nkldoe1393423032','LYSL49',''),(49,1,'nkldoe1393423032','LYSL50',''),(50,1,'nkldoe1393423032','LYSL51',''),(51,1,'nkldoe1393423032','LYSL52',''),(52,1,'nkldoe1393423032','LYSL53',''),(53,1,'nkldoe1393423032','LYSL54',''),(54,1,'nkldoe1393423032','LYSL55',''),(55,1,'nkldoe1393423032','LYSL56',''),(56,1,'nkldoe1393423032','LYSL57',''),(57,1,'nkldoe1393423032','LYSL58',''),(58,1,'nkldoe1393423032','LYSL59',''),(59,1,'nkldoe1393423032','LYSL60',''),(60,1,'nkldoe1393423032','LYSL61',''),(61,1,'nkldoe1393423032','LYSL62',''),(62,1,'nkldoe1393423032','LYSL63',''),(63,1,'nkldoe1393423032','LYSL64',''),(64,1,'nkldoe1393423032','LYSL65',''),(65,1,'nkldoe1393423032','LYSL66',''),(66,1,'nkldoe1393423032','LYSL67',''),(67,1,'nkldoe1393423032','LYSL68',''),(68,1,'nkldoe1393423032','LYSL69',''),(69,1,'nkldoe1393423032','LYSL70',''),(70,1,'nkldoe1393423032','LYSL71',''),(71,1,'nkldoe1393423032','LYSL72',''),(72,1,'nkldoe1393423032','LYSL73',''),(73,1,'nkldoe1393423032','LYSL74',''),(74,1,'nkldoe1393423032','LYSL75',''),(75,1,'nkldoe1393423032','LYSL76',''),(76,1,'nkldoe1393423032','LYSL77',''),(77,1,'nkldoe1393423032','LYSL78',''),(78,1,'nkldoe1393423032','LYSL79',''),(79,1,'nkldoe1393423032','LYSL80',''),(80,1,'nkldoe1393423032','LYSL81',''),(81,1,'nkldoe1393423032','LYSL82',''),(82,1,'nkldoe1393423032','LYSL83',''),(83,1,'nkldoe1393423032','LYSL84',''),(84,1,'nkldoe1393423032','LYSL85',''),(85,1,'nkldoe1393423032','LYSL86',''),(86,1,'nkldoe1393423032','LYSL87',''),(87,1,'nkldoe1393423032','LYSL88',''),(88,1,'nkldoe1393423032','LYSL89',''),(89,1,'nkldoe1393423032','LYSL90',''),(90,1,'nkldoe1393423032','LYSL91',''),(91,1,'nkldoe1393423032','LYSL92',''),(92,1,'nkldoe1393423032','LYSL93',''),(93,1,'nkldoe1393423032','LYSL94',''),(94,1,'nkldoe1393423032','LYSL95',''),(95,1,'nkldoe1393423032','LYSL96',''),(96,1,'nkldoe1393423032','LYSL97',''),(97,1,'nkldoe1393423032','LYSL98',''),(98,1,'nkldoe1393423032','LYSL99',''),(99,1,'nkldoe1393423032','LYSL100',''),(100,1,'nkldoe1393423032','LYSL101',''),(101,1,'nkldoe1393423032','LYSL102',''),(102,1,'nkldoe1393423032','LYSL103',''),(103,1,'nkldoe1393423032','LYSL104',''),(104,1,'nkldoe1393423032','LYSL105',''),(105,1,'nkldoe1393423032','LYSL106',''),(106,1,'nkldoe1393423032','LYSL107',''),(107,1,'nkldoe1393423032','LYSL108',''),(108,1,'nkldoe1393423032','LYSL109',''),(109,1,'nkldoe1393423032','LYSL110',''),(110,1,'nkldoe1393423032','LYSL111',''),(111,1,'nkldoe1393423032','LYSL112',''),(112,1,'nkldoe1393423032','LYSL113',''),(113,1,'nkldoe1393423032','LYSL114',''),(114,1,'nkldoe1393423032','LYSL115',''),(115,1,'nkldoe1393423032','LYSL116',''),(116,1,'nkldoe1393423032','LYSL117',''),(117,1,'nkldoe1393423032','LYSL118',''),(118,1,'nkldoe1393423032','LYSL119',''),(119,1,'nkldoe1393423032','LYSL120',''),(120,1,'nkldoe1393423032','LYSL121',''),(121,1,'nkldoe1393423032','LYSL122',''),(122,1,'nkldoe1393423032','LYSL123',''),(123,1,'nkldoe1393423032','LYSL124',''),(124,1,'nkldoe1393423032','LYSL125',''),(125,1,'nkldoe1393423032','LYSL126',''),(126,1,'nkldoe1393423032','LYSL127',''),(127,1,'nkldoe1393423032','LYSL128',''),(128,1,'nkldoe1393423032','LYSL129',''),(129,1,'nkldoe1393423032','LYSL130',''),(130,1,'nkldoe1393423032','LYSL131',''),(131,1,'nkldoe1393423032','LYSL132',''),(132,1,'nkldoe1393423032','LYSL133',''),(133,1,'nkldoe1393423032','LYSL134',''),(134,1,'nkldoe1393423032','LYSL135',''),(135,1,'nkldoe1393423032','LYSL136',''),(136,1,'nkldoe1393423032','LYSL137',''),(137,1,'nkldoe1393423032','LYSL138',''),(138,1,'nkldoe1393423032','LYSL139',''),(139,1,'nkldoe1393423032','LYSL140',''),(140,1,'nkldoe1393423032','LYSL141',''),(141,1,'nkldoe1393423032','LYSL142',''),(142,1,'nkldoe1393423032','LYSL143',''),(143,1,'nkldoe1393423032','LYSL144',''),(144,1,'nkldoe1393423032','LYSL145',''),(145,1,'nkldoe1393423032','LYSL146',''),(146,1,'nkldoe1393423032','LYSL147',''),(147,1,'nkldoe1393423032','LYSL148',''),(148,1,'nkldoe1393423032','LYSL149',''),(149,1,'nkldoe1393423032','LYSL150',''),(150,1,'nkldoe1393423032','LYSL151',''),(151,1,'nkldoe1393423032','LYSL152',''),(152,1,'nkldoe1393423032','LYSL153',''),(153,1,'nkldoe1393423032','LYSL154',''),(154,1,'nkldoe1393423032','LYSL155',''),(155,1,'nkldoe1393423032','LYSL156',''),(156,1,'nkldoe1393423032','LYSL157',''),(157,1,'nkldoe1393423032','LYSL158',''),(158,1,'nkldoe1393423032','LYSL159',''),(159,1,'nkldoe1393423032','LYSL160',''),(160,1,'nkldoe1393423032','LYSL161',''),(161,1,'nkldoe1393423032','LYSL162',''),(162,1,'nkldoe1393423032','LYSL163',''),(163,1,'nkldoe1393423032','LYSL164',''),(164,1,'nkldoe1393423032','LYSL165',''),(165,1,'nkldoe1393423032','LYSL166',''),(166,1,'nkldoe1393423032','LYSL167',''),(167,1,'nkldoe1393423032','LYSL168',''),(168,1,'nkldoe1393423032','LYSL169',''),(169,1,'nkldoe1393423032','LYSL170',''),(170,1,'nkldoe1393423032','LYSL171',''),(171,1,'nkldoe1393423032','LYSL172',''),(172,1,'nkldoe1393423032','LYSL173',''),(173,1,'nkldoe1393423032','LYSL174',''),(174,1,'nkldoe1393423032','LYSL175',''),(175,1,'nkldoe1393423032','LYSL176',''),(176,1,'nkldoe1393423032','LYSL177',''),(177,1,'nkldoe1393423032','LYSL178',''),(178,1,'nkldoe1393423032','LYSL179',''),(179,1,'nkldoe1393423032','LYSL180',''),(180,1,'nkldoe1393423032','LYSL181',''),(181,1,'nkldoe1393423032','LYSL182',''),(182,1,'nkldoe1393423032','LYSL183',''),(183,1,'nkldoe1393423032','LYSL184',''),(184,1,'nkldoe1393423032','LYSL185',''),(185,1,'nkldoe1393423032','LYSL186',''),(186,1,'nkldoe1393423032','LYSL187',''),(187,1,'nkldoe1393423032','LYSL188',''),(188,1,'nkldoe1393423032','LYSL189',''),(189,1,'nkldoe1393423032','LYSL190',''),(190,1,'nkldoe1393423032','LYSL191',''),(191,1,'nkldoe1393423032','LYSL192',''),(192,1,'nkldoe1393423032','LYSL193',''),(193,1,'nkldoe1393423032','LYSL194',''),(194,1,'nkldoe1393423032','LYSL195',''),(195,1,'nkldoe1393423032','LYSL196',''),(196,1,'nkldoe1393423032','LYSL197',''),(197,1,'nkldoe1393423032','LYSL198',''),(198,1,'nkldoe1393423032','LYSL199',''),(199,1,'nkldoe1393423032','LYSL200',''),(200,1,'nkldoe1393423032','LYSL201',''),(201,1,'nkldoe1393423032','LYSL202',''),(202,1,'nkldoe1393423032','LYSL203',''),(203,1,'nkldoe1393423032','LYSL204',''),(204,1,'nkldoe1393423032','LYSL205',''),(205,1,'nkldoe1393423032','LYSL206',''),(206,1,'nkldoe1393423032','LYSL207',''),(207,1,'nkldoe1393423032','LYSL208',''),(208,1,'nkldoe1393423032','LYSL209',''),(209,1,'nkldoe1393423032','LYSL210',''),(210,1,'nkldoe1393423032','LYSL211',''),(211,1,'nkldoe1393423032','LYSL212',''),(212,1,'nkldoe1393423032','LYSL213',''),(213,1,'nkldoe1393423032','LYSL214',''),(214,1,'nkldoe1393423032','LYSL215',''),(215,1,'nkldoe1393423032','LYSL216',''),(216,1,'nkldoe1393423032','LYSL217',''),(217,1,'nkldoe1393423032','LYSL218',''),(218,1,'nkldoe1393423032','LYSL219',''),(219,1,'nkldoe1393423032','LYSL220',''),(220,1,'nkldoe1393423032','LYSL221',''),(221,1,'nkldoe1393423032','LYSL222',''),(222,1,'nkldoe1393423032','LYSL223',''),(223,1,'nkldoe1393423032','LYSL224',''),(224,1,'nkldoe1393423032','LYSL225',''),(225,1,'nkldoe1393423032','LYSL226',''),(226,1,'nkldoe1393423032','LYSL227',''),(227,1,'nkldoe1393423032','LYSL228',''),(228,1,'nkldoe1393423032','LYSL229',''),(229,1,'nkldoe1393423032','LYSL230',''),(230,1,'nkldoe1393423032','LYSL231',''),(231,1,'nkldoe1393423032','LYSL232',''),(232,1,'nkldoe1393423032','LYSL233',''),(233,1,'nkldoe1393423032','LYSL234',''),(234,1,'nkldoe1393423032','LYSL235',''),(235,1,'nkldoe1393423032','LYSL236',''),(236,1,'nkldoe1393423032','LYSL237',''),(237,1,'nkldoe1393423032','LYSL238',''),(238,1,'nkldoe1393423032','LYSL239',''),(239,1,'nkldoe1393423032','LYSL240',''),(240,1,'nkldoe1393423032','LYSL241',''),(241,1,'nkldoe1393423032','LYSL242',''),(242,1,'nkldoe1393423032','LYSL243',''),(243,1,'nkldoe1393423032','LYSL244',''),(244,1,'nkldoe1393423032','LYSL245',''),(245,1,'nkldoe1393423032','LYSL246',''),(246,1,'nkldoe1393423032','LYSL247',''),(247,1,'nkldoe1393423032','LYSL248',''),(248,1,'nkldoe1393423032','LYSL249',''),(249,1,'nkldoe1393423032','LYSL250',''),(250,1,'nkldoe1393423032','LYSL251',''),(251,1,'nkldoe1393423032','LYSL252',''),(252,1,'nkldoe1393423032','LYSL253',''),(253,1,'nkldoe1393423032','LYSL254',''),(254,1,'nkldoe1393423032','LYSL255',''),(255,1,'nkldoe1393423032','LYSL256',''),(256,1,'nkldoe1393423032','LYSL257',''),(257,1,'nkldoe1393423032','LYSL258',''),(258,1,'nkldoe1393423032','LYSL259',''),(259,1,'nkldoe1393423032','LYSL260',''),(260,1,'nkldoe1393423032','LYSL261',''),(261,1,'nkldoe1393423032','LYSL262',''),(262,1,'nkldoe1393423032','LYSL263',''),(263,1,'nkldoe1393423032','LYSL264',''),(264,1,'nkldoe1393423032','LYSL265',''),(265,1,'nkldoe1393423032','LYSL266',''),(266,1,'nkldoe1393423032','LYSL267',''),(267,1,'nkldoe1393423032','LYSL268',''),(268,1,'nkldoe1393423032','LYSL269',''),(269,1,'nkldoe1393423032','LYSL270',''),(270,1,'nkldoe1393423032','LYSL271',''),(271,1,'nkldoe1393423032','LYSL272',''),(272,1,'nkldoe1393423032','LYSL273',''),(273,1,'nkldoe1393423032','LYSL274',''),(274,1,'nkldoe1393423032','LYSL275',''),(275,1,'nkldoe1393423032','LYSL276',''),(276,1,'nkldoe1393423032','LYSL277',''),(277,1,'nkldoe1393423032','LYSL278',''),(278,1,'nkldoe1393423032','LYSL279',''),(279,1,'nkldoe1393423032','LYSL280',''),(280,1,'nkldoe1393423032','LYSL281',''),(281,1,'nkldoe1393423032','LYSL282',''),(282,1,'nkldoe1393423032','LYSL283',''),(283,1,'nkldoe1393423032','LYSL284',''),(284,1,'nkldoe1393423032','LYSL285',''),(285,1,'nkldoe1393423032','LYSL286',''),(286,1,'nkldoe1393423032','LYSL287',''),(287,1,'nkldoe1393423032','LYSL288',''),(288,1,'nkldoe1393423032','LYSL289',''),(289,1,'nkldoe1393423032','LYSL290',''),(290,1,'nkldoe1393423032','LYSL291',''),(291,1,'nkldoe1393423032','LYSL292',''),(292,1,'nkldoe1393423032','LYSL293',''),(293,1,'nkldoe1393423032','LYSL294',''),(294,1,'nkldoe1393423032','LYSL295',''),(295,1,'nkldoe1393423032','LYSL296',''),(296,1,'nkldoe1393423032','LYSL297',''),(297,1,'nkldoe1393423032','LYSL298',''),(298,1,'nkldoe1393423032','LYSL299',''),(299,1,'nkldoe1393423032','LYSL300',''),(300,1,'nkldoe1393423032','LYSL301',''),(301,1,'nkldoe1393423032','LYSL302',''),(302,1,'nkldoe1393423032','LYSL303',''),(303,1,'nkldoe1393423032','LYSL304',''),(304,1,'nkldoe1393423032','LYSL305',''),(305,1,'nkldoe1393423032','LYSL306',''),(306,1,'nkldoe1393423032','LYSL307',''),(307,1,'nkldoe1393423032','LYSL308',''),(308,1,'nkldoe1393423032','LYSL309',''),(309,1,'nkldoe1393423032','LYSL310',''),(310,1,'nkldoe1393423032','LYSL311',''),(311,1,'nkldoe1393423032','LYSL312',''),(312,1,'nkldoe1393423032','LYSL313',''),(313,1,'nkldoe1393423032','LYSL314',''),(314,1,'nkldoe1393423032','LYSL315',''),(315,1,'nkldoe1393423032','LYSL316',''),(316,1,'nkldoe1393423032','LYSL317',''),(317,1,'nkldoe1393423032','LYSL318',''),(318,1,'nkldoe1393423032','LYSL319',''),(319,1,'nkldoe1393423032','LYSL320',''),(320,1,'nkldoe1393423032','LYSL321',''),(321,1,'nkldoe1393423032','LYSL322',''),(322,1,'nkldoe1393423032','LYSL323',''),(323,1,'nkldoe1393423032','LYSL324',''),(324,1,'nkldoe1393423032','LYSL325',''),(325,1,'nkldoe1393423032','LYSL326',''),(326,1,'nkldoe1393423032','LYSL327',''),(327,1,'nkldoe1393423032','LYSL328',''),(328,1,'nkldoe1393423032','LYSL329',''),(329,1,'nkldoe1393423032','LYSL330',''),(330,1,'nkldoe1393423032','LYSL331',''),(331,1,'nkldoe1393423032','LYSL332',''),(332,1,'nkldoe1393423032','LYSL333',''),(333,1,'nkldoe1393423032','LYSL334',''),(334,1,'nkldoe1393423032','LYSL335',''),(335,1,'nkldoe1393423032','LYSL336',''),(336,1,'nkldoe1393423032','LYSL337',''),(337,1,'nkldoe1393423032','LYSL338',''),(338,1,'nkldoe1393423032','LYSL339',''),(339,1,'nkldoe1393423032','LYSL340',''),(340,1,'nkldoe1393423032','LYSL341',''),(341,1,'nkldoe1393423032','LYSL342',''),(342,1,'nkldoe1393423032','LYSL343',''),(343,1,'nkldoe1393423032','LYSL344',''),(344,1,'nkldoe1393423032','LYSL345',''),(345,1,'nkldoe1393423032','LYSL346',''),(346,1,'nkldoe1393423032','LYSL347',''),(347,1,'nkldoe1393423032','LYSL348',''),(348,1,'nkldoe1393423032','LYSL349',''),(349,1,'nkldoe1393423032','LYSL350',''),(350,1,'nkldoe1393423032','LYSL351',''),(351,1,'nkldoe1393423032','LYSL352',''),(352,1,'nkldoe1393423032','LYSL353',''),(353,1,'nkldoe1393423032','LYSL354',''),(354,1,'nkldoe1393423032','LYSL355',''),(355,1,'nkldoe1393423032','LYSL356',''),(356,1,'nkldoe1393423032','LYSL357',''),(357,1,'nkldoe1393423032','LYSL358',''),(358,1,'nkldoe1393423032','LYSL359',''),(359,1,'nkldoe1393423032','LYSL360',''),(360,1,'nkldoe1393423032','LYSL361',''),(361,1,'nkldoe1393423032','LYSL362',''),(362,1,'nkldoe1393423032','LYSL363',''),(363,1,'nkldoe1393423032','LYSL364',''),(364,1,'nkldoe1393423032','LYSL365',''),(365,1,'nkldoe1393423032','LYSL366',''),(366,1,'nkldoe1393423032','LYSL367',''),(367,1,'nkldoe1393423032','LYSL368',''),(368,1,'nkldoe1393423032','LYSL369',''),(369,1,'nkldoe1393423032','LYSL370',''),(370,1,'nkldoe1393423032','LYSL371',''),(371,1,'nkldoe1393423032','LYSL372',''),(372,1,'nkldoe1393423032','LYSL373',''),(373,1,'nkldoe1393423032','LYSL374',''),(374,1,'nkldoe1393423032','LYSL375',''),(375,1,'nkldoe1393423032','LYSL376',''),(376,1,'nkldoe1393423032','LYSL377',''),(377,1,'nkldoe1393423032','LYSL378',''),(378,1,'nkldoe1393423032','LYSL379',''),(379,1,'nkldoe1393423032','LYSL380',''),(380,1,'nkldoe1393423032','LYSL381',''),(381,1,'nkldoe1393423032','LYSL382',''),(382,1,'nkldoe1393423032','LYSL383',''),(383,1,'nkldoe1393423032','LYSL384',''),(384,1,'nkldoe1393423032','LYSL385',''),(385,1,'nkldoe1393423032','LYSL386',''),(386,1,'nkldoe1393423032','LYSL387',''),(387,1,'nkldoe1393423032','LYSL388',''),(388,1,'nkldoe1393423032','LYSL389',''),(389,1,'nkldoe1393423032','LYSL390',''),(390,1,'nkldoe1393423032','LYSL391',''),(391,1,'nkldoe1393423032','LYSL392',''),(392,1,'nkldoe1393423032','LYSL393',''),(393,1,'nkldoe1393423032','LYSL394',''),(394,1,'nkldoe1393423032','LYSL395',''),(395,1,'nkldoe1393423032','LYSL396',''),(396,1,'nkldoe1393423032','LYSL397',''),(397,1,'nkldoe1393423032','LYSL398',''),(398,1,'nkldoe1393423032','LYSL399',''),(399,1,'nkldoe1393423032','LYSL400',''),(400,1,'nkldoe1393423032','LYSL401',''),(401,1,'nkldoe1393423032','LYSL402',''),(402,1,'nkldoe1393423032','LYSL403',''),(403,1,'nkldoe1393423032','LYSL404',''),(404,1,'nkldoe1393423032','LYSL405',''),(405,1,'nkldoe1393423032','LYSL406',''),(406,1,'nkldoe1393423032','LYSL407',''),(407,1,'nkldoe1393423032','LYSL408',''),(408,1,'nkldoe1393423032','LYSL409',''),(409,1,'nkldoe1393423032','LYSL410',''),(410,1,'nkldoe1393423032','LYSL411',''),(411,1,'nkldoe1393423032','LYSL412',''),(412,1,'nkldoe1393423032','LYSL413',''),(413,1,'nkldoe1393423032','LYSL414',''),(414,1,'nkldoe1393423032','LYSL415',''),(415,1,'nkldoe1393423032','LYSL416',''),(416,1,'nkldoe1393423032','LYSL417',''),(417,1,'nkldoe1393423032','LYSL418',''),(418,1,'nkldoe1393423032','LYSL419',''),(419,1,'nkldoe1393423032','LYSL420',''),(420,1,'nkldoe1393423032','LYSL421',''),(421,1,'nkldoe1393423032','LYSL422',''),(422,1,'nkldoe1393423032','LYSL423',''),(423,1,'nkldoe1393423032','LYSL424',''),(424,1,'nkldoe1393423032','LYSL425',''),(425,1,'nkldoe1393423032','LYSL426',''),(426,1,'nkldoe1393423032','LYSL427',''),(427,1,'nkldoe1393423032','LYSL428',''),(428,1,'nkldoe1393423032','LYSL429',''),(429,1,'nkldoe1393423032','LYSL430',''),(430,1,'nkldoe1393423032','LYSL431',''),(431,1,'nkldoe1393423032','LYSL432',''),(432,1,'nkldoe1393423032','LYSL433',''),(433,1,'nkldoe1393423032','LYSL434',''),(434,1,'nkldoe1393423032','LYSL435',''),(435,1,'nkldoe1393423032','LYSL436',''),(436,1,'nkldoe1393423032','LYSL437',''),(437,1,'nkldoe1393423032','LYSL438',''),(438,1,'nkldoe1393423032','LYSL439',''),(439,1,'nkldoe1393423032','LYSL440',''),(440,1,'nkldoe1393423032','LYSL441',''),(441,1,'nkldoe1393423032','LYSL442',''),(442,1,'nkldoe1393423032','LYSL443',''),(443,1,'nkldoe1393423032','LYSL444',''),(444,1,'nkldoe1393423032','LYSL445',''),(445,1,'nkldoe1393423032','LYSL446',''),(446,1,'nkldoe1393423032','LYSL447',''),(447,1,'nkldoe1393423032','LYSL448',''),(448,1,'nkldoe1393423032','LYSL449',''),(449,1,'nkldoe1393423032','LYSL450',''),(450,1,'nkldoe1393423032','LYSL451',''),(451,1,'nkldoe1393423032','LYSL452',''),(452,1,'nkldoe1393423032','LYSL453',''),(453,1,'nkldoe1393423032','LYSL454',''),(454,1,'nkldoe1393423032','LYSL455',''),(455,1,'nkldoe1393423032','LYSL456',''),(456,1,'nkldoe1393423032','LYSL457',''),(457,1,'nkldoe1393423032','LYSL458',''),(458,1,'nkldoe1393423032','LYSL459',''),(459,1,'nkldoe1393423032','LYSL460',''),(460,1,'nkldoe1393423032','LYSL461',''),(461,1,'nkldoe1393423032','LYSL462',''),(462,1,'nkldoe1393423032','LYSL463',''),(463,1,'nkldoe1393423032','LYSL464',''),(464,1,'nkldoe1393423032','LYSL465',''),(465,1,'nkldoe1393423032','LYSL466',''),(466,1,'nkldoe1393423032','LYSL467',''),(467,1,'nkldoe1393423032','LYSL468',''),(468,1,'nkldoe1393423032','LYSL469',''),(469,1,'nkldoe1393423032','LYSL470',''),(470,1,'nkldoe1393423032','LYSL471',''),(471,1,'nkldoe1393423032','LYSL472',''),(472,1,'nkldoe1393423032','LYSL473',''),(473,1,'nkldoe1393423032','LYSL474',''),(474,1,'nkldoe1393423032','LYSL475',''),(475,1,'nkldoe1393423032','LYSL476',''),(476,1,'nkldoe1393423032','LYSL477',''),(477,1,'nkldoe1393423032','LYSL478',''),(478,1,'nkldoe1393423032','LYSL479',''),(479,1,'nkldoe1393423032','LYSL480',''),(480,1,'nkldoe1393423032','LYSL481',''),(481,1,'nkldoe1393423032','LYSL482',''),(482,1,'nkldoe1393423032','LYSL483',''),(483,1,'nkldoe1393423032','LYSL484',''),(484,1,'nkldoe1393423032','LYSL485',''),(485,1,'nkldoe1393423032','LYSL486',''),(486,1,'nkldoe1393423032','LYSL487',''),(487,1,'nkldoe1393423032','LYSL488',''),(488,1,'nkldoe1393423032','LYSL489',''),(489,1,'nkldoe1393423032','LYSL490',''),(490,1,'nkldoe1393423032','LYSL491',''),(491,1,'nkldoe1393423032','LYSL492',''),(492,1,'nkldoe1393423032','LYSL493',''),(493,1,'nkldoe1393423032','LYSL494',''),(494,1,'nkldoe1393423032','LYSL495',''),(495,1,'nkldoe1393423032','LYSL496',''),(496,1,'nkldoe1393423032','LYSL497',''),(497,1,'nkldoe1393423032','LYSL498',''),(498,1,'nkldoe1393423032','LYSL499',''),(499,1,'nkldoe1393423032','LYSL500','');
/*!40000 ALTER TABLE `tp_member_card_create` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_exchange`
--

DROP TABLE IF EXISTS `tp_member_card_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(20) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` varchar(200) NOT NULL,
  `cardinfo2` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_exchange`
--

LOCK TABLES `tp_member_card_exchange` WRITE;
/*!40000 ALTER TABLE `tp_member_card_exchange` DISABLE KEYS */;
INSERT INTO `tp_member_card_exchange` VALUES (1,1,'nkldoe1393423032',0,0,1,'人工费','第三方',1393557750);
/*!40000 ALTER TABLE `tp_member_card_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_info`
--

DROP TABLE IF EXISTS `tp_member_card_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_info`
--

LOCK TABLES `tp_member_card_info` WRITE;
/*!40000 ALTER TABLE `tp_member_card_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_integral`
--

DROP TABLE IF EXISTS `tp_member_card_integral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(20) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_integral`
--

LOCK TABLES `tp_member_card_integral` WRITE;
/*!40000 ALTER TABLE `tp_member_card_integral` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_integral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_notice`
--

DROP TABLE IF EXISTS `tp_member_card_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_notice`
--

LOCK TABLES `tp_member_card_notice` WRITE;
/*!40000 ALTER TABLE `tp_member_card_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_set`
--

DROP TABLE IF EXISTS `tp_member_card_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(255) NOT NULL,
  `bg` varchar(255) NOT NULL,
  `diybg` varchar(255) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(255) NOT NULL,
  `vip` varchar(255) NOT NULL,
  `qiandao` varchar(255) NOT NULL,
  `shopping` varchar(255) NOT NULL,
  `memberinfo` varchar(255) NOT NULL,
  `membermsg` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_set`
--

LOCK TABLES `tp_member_card_set` WRITE;
/*!40000 ALTER TABLE `tp_member_card_set` DISABLE KEYS */;
INSERT INTO `tp_member_card_set` VALUES (1,'nkldoe1393423032','数联中国内部会员卡',0,'/tpl/User/default/common/images/cart_info/logo-card.png','/tpl/User/default/common/images/card/card_bg17.png','./tpl/User/default/common/images/card/card_bg03.png','微时代会员卡，方便携带收藏，永不挂失','#000000','#121212','/tpl/User/default/common/images/cart_info/news.jpg','/tpl/User/default/common/images/cart_info/vippower.jpg','/tpl/User/default/common/images/cart_info/qiandao.jpg','/tpl/User/default/common/images/cart_info/shopping.jpg','/tpl/User/default/common/images/cart_info/user.jpg','/tpl/User/default/common/images/cart_info/vippower.jpg','/tpl/User/default/common/images/cart_info/addr.jpg',1393493037);
/*!40000 ALTER TABLE `tp_member_card_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_sign`
--

DROP TABLE IF EXISTS `tp_member_card_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `score_type` int(11) NOT NULL COMMENT ' ',
  `sell_expense` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_sign`
--

LOCK TABLES `tp_member_card_sign` WRITE;
/*!40000 ALTER TABLE `tp_member_card_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_use_record`
--

DROP TABLE IF EXISTS `tp_member_card_use_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_use_record`
--

LOCK TABLES `tp_member_card_use_record` WRITE;
/*!40000 ALTER TABLE `tp_member_card_use_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_use_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_member_card_vip`
--

DROP TABLE IF EXISTS `tp_member_card_vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_member_card_vip`
--

LOCK TABLES `tp_member_card_vip` WRITE;
/*!40000 ALTER TABLE `tp_member_card_vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_member_card_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_nearby_user`
--

DROP TABLE IF EXISTS `tp_nearby_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_nearby_user`
--

LOCK TABLES `tp_nearby_user` WRITE;
/*!40000 ALTER TABLE `tp_nearby_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_nearby_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_node`
--

DROP TABLE IF EXISTS `tp_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_node`
--

LOCK TABLES `tp_node` WRITE;
/*!40000 ALTER TABLE `tp_node` DISABLE KEYS */;
INSERT INTO `tp_node` VALUES (1,'cms','根节点',1,'',0,1,NULL,0,0),(2,'Site','站点管理',1,'',1,0,NULL,0,1),(3,'User','用户管理',1,'',1,0,NULL,0,1),(4,'extent','扩展管理',1,'',1,0,NULL,10,1),(5,'article','内容管理',1,'',1,0,NULL,0,1),(6,'Site','站点设置',1,'',2,2,NULL,0,2),(7,'index','基本信息设置',1,'',6,3,NULL,0,2),(8,'safe','安全设置',1,'',6,3,NULL,0,2),(9,'email','邮箱设置',1,'',6,3,NULL,0,2),(10,'upfile','附件设置',1,'',6,3,NULL,0,2),(11,'Node','节点管理',1,NULL,2,2,NULL,0,2),(12,'add','添加节点',1,'',11,3,NULL,0,2),(13,'index','节点列表',1,'',11,3,NULL,0,2),(14,'insert','写入',1,'0',11,3,NULL,0,0),(15,'edit','编辑节点',1,'0',11,3,NULL,0,0),(16,'update','更新节点',1,'0',11,3,NULL,0,0),(17,'del','删除节点',1,'0',11,3,NULL,0,0),(18,'User','用户中心',1,'0',3,2,NULL,0,2),(19,'add','添加用户',1,'0',18,3,NULL,0,2),(20,'index','用户列表',1,'0',18,3,NULL,0,2),(21,'edit','编辑用户',1,'0',18,3,NULL,0,0),(22,'insert','写入数据库',1,'0',18,3,NULL,0,0),(23,'update','更新用户',1,'0',18,3,NULL,0,0),(24,'del','删除用户',1,'0',18,3,NULL,0,0),(25,'Group','管理组',1,'0',3,2,NULL,0,2),(26,'add','创建用户组',1,'0',25,3,NULL,0,2),(27,'index','用户组列表',1,'0',25,3,NULL,0,2),(28,'edit','编辑用户组',1,'0',25,3,NULL,0,0),(29,'del','删除用户组',1,'0',25,3,NULL,0,0),(30,'insert','写入数据库',1,'0',25,3,NULL,0,0),(31,'update','更新用户组',1,'0',25,3,NULL,0,0),(32,'insert','保存测试',1,'0',6,3,NULL,0,0),(36,'menu','左侧栏',1,'0',35,3,NULL,0,0),(35,'System','首页',1,'0',2,2,NULL,0,0),(37,'main','右侧栏目',1,'0',35,3,NULL,0,0),(38,'Article','微信图文',1,'0',5,2,NULL,0,2),(39,'index','图文列表',1,'0',38,3,NULL,0,2),(40,'add','图文添加',1,'0',38,3,NULL,0,2),(41,'edit','微信图文编辑',1,'0',38,3,NULL,0,0),(42,'del','微信图文删除',1,'0',38,3,NULL,0,0),(80,'token','公众号管理',1,'0',1,2,NULL,0,1),(45,'Function','功能模块',1,'0',1,0,NULL,0,1),(46,'Function','功能模块',1,'0',45,2,NULL,0,2),(47,'add','添加模块',1,'0',46,3,NULL,0,2),(48,'User_group','会员组',1,'0',3,2,NULL,0,2),(49,'add','添加会员组',1,'0',48,3,NULL,0,2),(50,'Users','前台用户',1,'0',3,2,NULL,0,2),(51,'index','用户列表',1,'0',50,3,NULL,0,0),(52,'add','添加用户',1,'0',50,3,NULL,0,2),(53,'edit','编辑用户',1,'0',50,3,NULL,0,0),(54,'del','删除用户',1,'0',50,3,NULL,0,0),(55,'insert','写入数据库',1,'0',50,3,NULL,0,0),(56,'upsave','更新用户',1,'0',50,3,NULL,0,0),(57,'Text','微信文本',1,'0',5,2,NULL,0,2),(58,'index','文本列表',1,'0',57,3,NULL,0,2),(59,'del','删除',1,'0',57,3,NULL,0,0),(60,'Custom','自定义页面',1,'0',5,2,NULL,0,2),(61,'index','列表',1,'0',60,3,NULL,0,2),(62,'edit','编辑',1,'0',60,3,NULL,0,0),(63,'del','删除',1,'0',60,3,NULL,0,0),(64,'Records','充值记录',1,'0',4,2,NULL,0,2),(65,'index','充值列表',1,'0',64,3,NULL,0,2),(66,'Case','用户案例',1,'0',4,2,NULL,0,2),(67,'index','案例列表',1,'0',66,3,NULL,0,2),(68,'add','添加案例',1,'0',66,3,NULL,0,2),(69,'edit','编辑案例',1,'0',66,3,NULL,0,0),(70,'del','删除案例',1,'0',66,3,NULL,0,0),(71,'insert','写入数据库',1,'0',66,3,NULL,0,0),(72,'upsave','更新数据库',1,'0',66,3,NULL,0,0),(73,'Links','友情链接',1,'0',4,2,NULL,0,2),(74,'index','友情链接',1,'0',73,3,NULL,0,2),(75,'add','添加链接',1,'0',73,3,NULL,0,2),(76,'edit','编辑链接',1,'0',73,3,NULL,0,0),(77,'insert','插入数据库',1,'0',73,3,NULL,0,0),(78,'upsave','更新数据库',1,'0',73,3,NULL,0,0),(79,'del','删除友情链接',1,'0',73,3,NULL,0,0),(81,'Token','公众号管理',1,'0',80,2,NULL,0,2),(83,'alipay','在线支付接口',1,'0',6,3,NULL,0,2),(84,'','',1,'0',60,0,NULL,0,2);
/*!40000 ALTER TABLE `tp_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_order`
--

DROP TABLE IF EXISTS `tp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `come_time` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `old_price` int(11) DEFAULT NULL,
  `now_price` int(11) DEFAULT NULL,
  `info` text,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_order`
--

LOCK TABLES `tp_order` WRITE;
/*!40000 ALTER TABLE `tp_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_ordering_class`
--

DROP TABLE IF EXISTS `tp_ordering_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_ordering_class`
--

LOCK TABLES `tp_ordering_class` WRITE;
/*!40000 ALTER TABLE `tp_ordering_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_ordering_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_ordering_set`
--

DROP TABLE IF EXISTS `tp_ordering_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_ordering_set`
--

LOCK TABLES `tp_ordering_set` WRITE;
/*!40000 ALTER TABLE `tp_ordering_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_ordering_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_other`
--

DROP TABLE IF EXISTS `tp_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_other`
--

LOCK TABLES `tp_other` WRITE;
/*!40000 ALTER TABLE `tp_other` DISABLE KEYS */;
INSERT INTO `tp_other` VALUES (1,'xnftis1393415057','','欢迎您关注本微信，不过小易比较笨，不能正确理解您的意思，请您直接联系我老板，我老板QQ:32348551');
/*!40000 ALTER TABLE `tp_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_panorama`
--

DROP TABLE IF EXISTS `tp_panorama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(255) NOT NULL DEFAULT '',
  `rightpic` varchar(255) NOT NULL DEFAULT '',
  `backpic` varchar(255) NOT NULL DEFAULT '',
  `leftpic` varchar(255) NOT NULL DEFAULT '',
  `toppic` varchar(255) NOT NULL DEFAULT '',
  `bottompic` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_panorama`
--

LOCK TABLES `tp_panorama` WRITE;
/*!40000 ALTER TABLE `tp_panorama` DISABLE KEYS */;
INSERT INTO `tp_panorama` VALUES (1,'nkldoe1393423032','有约装饰工程案例','有约装饰工程案例','','/tpl/User/default/common/images/panorama/0.jpg','/tpl/User/default/common/images/panorama/1.jpg','/tpl/User/default/common/images/panorama/2.jpg','/tpl/User/default/common/images/panorama/3.jpg','/tpl/User/default/common/images/panorama/4.jpg','/tpl/User/default/common/images/panorama/5.jpg','360',0,123456);
/*!40000 ALTER TABLE `tp_panorama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_photo`
--

DROP TABLE IF EXISTS `tp_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_photo`
--

LOCK TABLES `tp_photo` WRITE;
/*!40000 ALTER TABLE `tp_photo` DISABLE KEYS */;
INSERT INTO `tp_photo` VALUES (1,'gkphkp1393422345','王文博与红红的婚礼','http://wx.jk51.cn/tpl/static/attachment/background/view/8.jpg',0,1,0,0,'第三方斯蒂芬是');
/*!40000 ALTER TABLE `tp_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_photo_list`
--

DROP TABLE IF EXISTS `tp_photo_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_photo_list`
--

LOCK TABLES `tp_photo_list` WRITE;
/*!40000 ALTER TABLE `tp_photo_list` DISABLE KEYS */;
INSERT INTO `tp_photo_list` VALUES (1,'gkphkp1393422345',1,'双宿双飞',0,'http://wx.jk51.cn/tpl/static/attachment/background/view/9.jpg',0,1,'是的');
/*!40000 ALTER TABLE `tp_photo_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_product`
--

DROP TABLE IF EXISTS `tp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `oprice` float NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(255) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_product`
--

LOCK TABLES `tp_product` WRITE;
/*!40000 ALTER TABLE `tp_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_product_cart`
--

DROP TABLE IF EXISTS `tp_product_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_product_cart`
--

LOCK TABLES `tp_product_cart` WRITE;
/*!40000 ALTER TABLE `tp_product_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_product_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_product_cart_list`
--

DROP TABLE IF EXISTS `tp_product_cart_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_product_cart_list`
--

LOCK TABLES `tp_product_cart_list` WRITE;
/*!40000 ALTER TABLE `tp_product_cart_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_product_cart_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_product_cat`
--

DROP TABLE IF EXISTS `tp_product_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(255) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_product_cat`
--

LOCK TABLES `tp_product_cat` WRITE;
/*!40000 ALTER TABLE `tp_product_cat` DISABLE KEYS */;
INSERT INTO `tp_product_cat` VALUES (1,'nkldoe1393423032','df ','fdsfsdfsdfsdfsdf',0,'http://wx.jk51.cn/tpl/static/attachment/icon/lovely/clock.png',0,1393550471);
/*!40000 ALTER TABLE `tp_product_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_product_diningtable`
--

DROP TABLE IF EXISTS `tp_product_diningtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_product_diningtable`
--

LOCK TABLES `tp_product_diningtable` WRITE;
/*!40000 ALTER TABLE `tp_product_diningtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_product_diningtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_reply_info`
--

DROP TABLE IF EXISTS `tp_reply_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_reply_info`
--

LOCK TABLES `tp_reply_info` WRITE;
/*!40000 ALTER TABLE `tp_reply_info` DISABLE KEYS */;
INSERT INTO `tp_reply_info` VALUES (1,'xnftis1393415057','会员卡,省钱，打折,促销，优先知道,有奖励哦','http://wx.jk51.cn/tpl/static/images/member.jpg','尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦','membercard',1,1,''),(2,'xnftis1393415057','申请成为会员','http://wx.jk51.cn/tpl/static/images/vip.jpg','申请成为会员，享受更多优惠','membercard_nouse',1,1,'');
/*!40000 ALTER TABLE `tp_reply_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_requestdata`
--

DROP TABLE IF EXISTS `tp_requestdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_requestdata`
--

LOCK TABLES `tp_requestdata` WRITE;
/*!40000 ALTER TABLE `tp_requestdata` DISABLE KEYS */;
INSERT INTO `tp_requestdata` VALUES (1,'xnftis1393415057',2014,2,26,1393420047,1,0,0,0,0,0,0),(2,'wqrpfu1386835611',2014,2,26,1393421319,0,0,0,0,1,0,0),(3,'xnftis1393415057',2014,2,27,1393460608,2,0,0,2,2,2,0),(4,'nkldoe1393423032',2014,2,27,1393484795,5,0,0,10,2,0,0),(5,'xnftis1393415057',2014,2,28,1393523738,1,0,0,0,2,0,0),(6,'nkldoe1393423032',2014,2,28,1393551158,3,0,0,4,3,2,0),(7,'xnftis1393415057',2014,3,1,1393607895,1,0,0,2,1,1,0),(8,'nkldoe1393423032',2014,3,1,1393636142,2,0,0,2,0,0,0),(9,'wqrpfu1386835611',2014,3,1,1393654693,0,0,0,0,0,1,0),(10,'xnftis1393415057',2014,3,2,1393693966,0,0,0,2,2,2,0),(11,'aeugbj1393734778',2014,3,2,1393735063,3,0,0,0,0,0,0),(12,'nkldoe1393423032',2014,3,2,1393749689,0,0,0,0,1,0,0),(13,'xnftis1393415057',2014,3,3,1393780410,1,0,0,0,1,0,0),(14,'wqrpfu1386835611',2014,3,3,1393831378,0,0,0,0,0,1,0),(15,'gkphkp1393422345',2014,3,3,1393840704,2,0,0,1,0,0,0);
/*!40000 ALTER TABLE `tp_requestdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_reservation`
--

DROP TABLE IF EXISTS `tp_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_reservation`
--

LOCK TABLES `tp_reservation` WRITE;
/*!40000 ALTER TABLE `tp_reservation` DISABLE KEYS */;
INSERT INTO `tp_reservation` VALUES (1,'nkldoe1393423032','邀请','数联中国邀请函','./tpl/static/vhouse/zaixianyuyue.jpg','洛阳市申泰世纪广场','','112.435906','34.66384','15670705555','./tpl/static/vhouse/zaixianyuyue.jpg','欢迎参加数联中国研讨会','我的订单','订单说明','订单电话',1,'','',1,1,'','','','','','','','','','','','','','','','','','','','','',1,'',0,'',0);
/*!40000 ALTER TABLE `tp_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_reservebook`
--

DROP TABLE IF EXISTS `tp_reservebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0',
  `kfinfo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_reservebook`
--

LOCK TABLES `tp_reservebook` WRITE;
/*!40000 ALTER TABLE `tp_reservebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_reservebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_role`
--

DROP TABLE IF EXISTS `tp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_role`
--

LOCK TABLES `tp_role` WRITE;
/*!40000 ALTER TABLE `tp_role` DISABLE KEYS */;
INSERT INTO `tp_role` VALUES (5,'超级管理员',0,1,0,''),(6,'演示组',0,1,0,''),(9,'普通会员',0,1,0,'');
/*!40000 ALTER TABLE `tp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_role_user`
--

DROP TABLE IF EXISTS `tp_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_role_user`
--

LOCK TABLES `tp_role_user` WRITE;
/*!40000 ALTER TABLE `tp_role_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_selfform`
--

DROP TABLE IF EXISTS `tp_selfform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `logourl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_selfform`
--

LOCK TABLES `tp_selfform` WRITE;
/*!40000 ALTER TABLE `tp_selfform` DISABLE KEYS */;
INSERT INTO `tp_selfform` VALUES (1,'nkldoe1393423032','数联中国邀请函','数联','邀请您参加上开发建设路宽带缴费了深刻的减肥了SD卡房间','&lt;embed src=&quot;http://player.youku.com/player.php/sid/XNjc4MTEzOTgw/v.swf&quot; quality=&quot;high&quot; width=&quot;480&quot; height=&quot;400&quot; align=&quot;middle&quot; allowscriptaccess=&quot;always&quot; type=&quot;application/x-shockwave-flash&quot; /&gt;',1393486674,'','',1394380799,'http://wx.jk51.cn/tpl/static/attachment/icon/lovely/piggy.png');
/*!40000 ALTER TABLE `tp_selfform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_selfform_input`
--

DROP TABLE IF EXISTS `tp_selfform_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_selfform_input`
--

LOCK TABLES `tp_selfform_input` WRITE;
/*!40000 ALTER TABLE `tp_selfform_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_selfform_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_selfform_value`
--

DROP TABLE IF EXISTS `tp_selfform_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_selfform_value`
--

LOCK TABLES `tp_selfform_value` WRITE;
/*!40000 ALTER TABLE `tp_selfform_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_selfform_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_setinfo`
--

DROP TABLE IF EXISTS `tp_setinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_setinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_setinfo`
--

LOCK TABLES `tp_setinfo` WRITE;
/*!40000 ALTER TABLE `tp_setinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_setinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_shake`
--

DROP TABLE IF EXISTS `tp_shake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `acttitle` varchar(40) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `shownum` int(11) NOT NULL DEFAULT '10',
  `pass` varchar(150) DEFAULT NULL,
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `endtime` varchar(13) DEFAULT NULL,
  `pass2` varchar(150) DEFAULT NULL,
  `pass3` varchar(150) DEFAULT NULL,
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_shake`
--

LOCK TABLES `tp_shake` WRITE;
/*!40000 ALTER TABLE `tp_shake` DISABLE KEYS */;
INSERT INTO `tp_shake` VALUES (1,1,'摇一摇',1,3,3,10,'http://www.jk51.cn/tpl/static/attachment/background/view/8.jpg',NULL,1,'xnftis1393415057','1393415811',NULL,'','',3,133,'http://www.jk51.cn/uploads/x/xnftis1393415057/6/a/0/3/thumb_530dd57ec967b.jpg'),(2,1,'默认活动',1,3,3,10,'',NULL,1,'nkldoe1393423032','1393485492',NULL,'','',3,133,'');
/*!40000 ALTER TABLE `tp_shake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_shakelog`
--

DROP TABLE IF EXISTS `tp_shakelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_shakelog`
--

LOCK TABLES `tp_shakelog` WRITE;
/*!40000 ALTER TABLE `tp_shakelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_shakelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_site_plugmenu`
--

DROP TABLE IF EXISTS `tp_site_plugmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_site_plugmenu`
--

LOCK TABLES `tp_site_plugmenu` WRITE;
/*!40000 ALTER TABLE `tp_site_plugmenu` DISABLE KEYS */;
INSERT INTO `tp_site_plugmenu` VALUES ('nkldoe1393423032','tel','15670705742',1,1),('nkldoe1393423032','memberinfo','',0,0),('nkldoe1393423032','nav','3',0,1),('nkldoe1393423032','message',NULL,0,0),('nkldoe1393423032','share','',0,0),('nkldoe1393423032','home','',0,0),('nkldoe1393423032','album','2',0,1),('nkldoe1393423032','email','',0,0),('nkldoe1393423032','shopping','',0,0),('nkldoe1393423032','membercard','',0,0),('nkldoe1393423032','activity','',0,0),('nkldoe1393423032','weibo','',0,0),('nkldoe1393423032','tencentweibo','',0,0),('nkldoe1393423032','qqzone','',0,0),('nkldoe1393423032','wechat','',0,0),('nkldoe1393423032','music','',0,0),('nkldoe1393423032','video','',0,0),('nkldoe1393423032','recommend','',0,0),('nkldoe1393423032','other','',0,0);
/*!40000 ALTER TABLE `tp_site_plugmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_snccode`
--

DROP TABLE IF EXISTS `tp_snccode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_snccode`
--

LOCK TABLES `tp_snccode` WRITE;
/*!40000 ALTER TABLE `tp_snccode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_snccode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_system_info`
--

DROP TABLE IF EXISTS `tp_system_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_system_info`
--

LOCK TABLES `tp_system_info` WRITE;
/*!40000 ALTER TABLE `tp_system_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_system_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_taobao`
--

DROP TABLE IF EXISTS `tp_taobao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(300) NOT NULL,
  `homeurl` varchar(300) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_taobao`
--

LOCK TABLES `tp_taobao` WRITE;
/*!40000 ALTER TABLE `tp_taobao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_taobao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_text`
--

DROP TABLE IF EXISTS `tp_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_text`
--

LOCK TABLES `tp_text` WRITE;
/*!40000 ALTER TABLE `tp_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_token_open`
--

DROP TABLE IF EXISTS `tp_token_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_token_open`
--

LOCK TABLES `tp_token_open` WRITE;
/*!40000 ALTER TABLE `tp_token_open` DISABLE KEYS */;
INSERT INTO `tp_token_open` VALUES (1,1,'xnftis1393415057','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,choujiang,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,gua2,shouye,adma,huiyuanka,coupon,shenhe,geci,yuming,host_kev,diyform,dx,shop,etuan,diymen_set,Panorama,wedding,zadan,weidiaoyan,Wewall,Wxusermessage,Jiudian,Yiliao,Heka,Yuyue,Shake'),(2,1,'gkphkp1393422345','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,choujiang,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,gua2,shouye,adma,huiyuanka,coupon,shenhe,geci,yuming,host_kev,diyform,dx,shop,etuan,diymen_set,Panorama,wedding,zadan,weidiaoyan,Wewall,Wxusermessage,Jiudian,Yiliao,Heka,Yuyue,Shake'),(3,3,'nkldoe1393423032','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,choujiang,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,gua2,shouye,adma,huiyuanka,coupon,shenhe,geci,yuming,host_kev,diyform,dx,shop,etuan,diymen_set,Panorama,wedding,zadan,weidiaoyan,Wxusermessage,Jiudian,Yiliao,Heka,Yuyue,Shake,Wewall'),(4,3,'aeugbj1393734778','tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,choujiang,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,gua2,shouye,adma,huiyuanka,coupon,shenhe,geci,yuming,host_kev,diyform,dx,shop,etuan,diymen_set,Panorama,wedding,zadan,weidiaoyan,Wewall,Wxusermessage,Jiudian,Yiliao,Heka,Yuyue,Shake');
/*!40000 ALTER TABLE `tp_token_open` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_toshake`
--

DROP TABLE IF EXISTS `tp_toshake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_toshake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `token` varchar(20) NOT NULL,
  `wecha_id` varchar(30) DEFAULT NULL,
  `point` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_toshake`
--

LOCK TABLES `tp_toshake` WRITE;
/*!40000 ALTER TABLE `tp_toshake` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_toshake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_upyun_attachement`
--

DROP TABLE IF EXISTS `tp_upyun_attachement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_upyun_attachement`
--

LOCK TABLES `tp_upyun_attachement` WRITE;
/*!40000 ALTER TABLE `tp_upyun_attachement` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_upyun_attachement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_user`
--

DROP TABLE IF EXISTS `tp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_user`
--

LOCK TABLES `tp_user` WRITE;
/*!40000 ALTER TABLE `tp_user` DISABLE KEYS */;
INSERT INTO `tp_user` VALUES (1,'admin','86ccf37fa7beee356da882b8bdc7120c',5,1,'',1393829481,'221.224.232.38','');
/*!40000 ALTER TABLE `tp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_user_group`
--

DROP TABLE IF EXISTS `tp_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(4) NOT NULL DEFAULT '4',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_user_group`
--

LOCK TABLES `tp_user_group` WRITE;
/*!40000 ALTER TABLE `tp_user_group` DISABLE KEYS */;
INSERT INTO `tp_user_group` VALUES (1,'vip0',2000,2000,1,7,0,0,10,4,1),(2,'VIP1',3000,3000,1,2,1,0,50,4,1),(3,'vip2',4000,4000,1,4,50,0,80,99,1),(4,'vip3',5000,5000,1,78,100,0,10000,99,1);
/*!40000 ALTER TABLE `tp_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_user_request`
--

DROP TABLE IF EXISTS `tp_user_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_user_request`
--

LOCK TABLES `tp_user_request` WRITE;
/*!40000 ALTER TABLE `tp_user_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_user_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_userinfo`
--

DROP TABLE IF EXISTS `tp_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `qq` int(11) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` int(3) NOT NULL,
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `getcardtime` int(10) NOT NULL DEFAULT '0',
  `info` varchar(200) NOT NULL,
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `total_score` int(11) NOT NULL DEFAULT '0',
  `sign_score` int(11) NOT NULL DEFAULT '0',
  `expend_score` int(11) NOT NULL DEFAULT '0',
  `continuous` int(11) NOT NULL DEFAULT '0',
  `add_expend` int(11) NOT NULL DEFAULT '0',
  `add_expend_time` int(11) NOT NULL DEFAULT '0',
  `live_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_userinfo`
--

LOCK TABLES `tp_userinfo` WRITE;
/*!40000 ALTER TABLE `tp_userinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_users`
--

DROP TABLE IF EXISTS `tp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `wechat_card_num` mediumint(4) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL,
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_users`
--

LOCK TABLES `tp_users` WRITE;
/*!40000 ALTER TABLE `tp_users` DISABLE KEYS */;
INSERT INTO `tp_users` VALUES (1,4,'admin','','86ccf37fa7beee356da882b8bdc7120c','','1393414953','1393854588','1','183.209.110.145','183.209.110.145',8,0,0,0,2,0,'1424880000',3,3,271789),(4,1,'lyslzkg','','38c2b87ac8d87b2f6589ace7989bfd90','313482780@qq.com','1393640059','1393640059','0','125.43.33.170','125.43.33.170',0,0,0,0,0,0,'1393640059',0,0,0),(2,4,'qwerty','','e10adc3949ba59abbe56e057f20f883e','1234567@qq.com','1393421927','1393422201','1','111.196.129.237','114.250.183.250',0,1,0,0,0,0,'1393430400',0,2,0),(3,4,'ceshi','','e10adc3949ba59abbe56e057f20f883e','','1393422183','1393902064','1','183.209.110.145','113.105.181.138',6,0,0,0,2,0,'1424880000',5,3,41486);
/*!40000 ALTER TABLE `tp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_voiceresponse`
--

DROP TABLE IF EXISTS `tp_voiceresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_voiceresponse`
--

LOCK TABLES `tp_voiceresponse` WRITE;
/*!40000 ALTER TABLE `tp_voiceresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_voiceresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_vote`
--

DROP TABLE IF EXISTS `tp_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL,
  `info` varchar(500) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `cknums` tinyint(3) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_vote`
--

LOCK TABLES `tp_vote` WRITE;
/*!40000 ALTER TABLE `tp_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_vote_item`
--

DROP TABLE IF EXISTS `tp_vote_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_vote_item`
--

LOCK TABLES `tp_vote_item` WRITE;
/*!40000 ALTER TABLE `tp_vote_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_vote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_vote_record`
--

DROP TABLE IF EXISTS `tp_vote_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_vote_record`
--

LOCK TABLES `tp_vote_record` WRITE;
/*!40000 ALTER TABLE `tp_vote_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_vote_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_weather`
--

DROP TABLE IF EXISTS `tp_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2502 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_weather`
--

LOCK TABLES `tp_weather` WRITE;
/*!40000 ALTER TABLE `tp_weather` DISABLE KEYS */;
INSERT INTO `tp_weather` VALUES (1,'101010100','北京'),(2,'101010200','海淀'),(3,'101010400','顺义'),(4,'101010500','怀柔'),(5,'101010600','通州'),(6,'101010700','昌平'),(7,'101010800','延庆'),(8,'101010900','丰台'),(9,'101011000','石景山'),(10,'101011100','大兴'),(11,'101011200','房山'),(12,'101011300','密云'),(13,'101011400','门头沟'),(14,'101011500','平谷'),(15,'101020100','上海'),(16,'101020200','闵行'),(17,'101020300','宝山'),(18,'101020500','嘉定'),(19,'101020600','浦东南汇'),(20,'101020700','金山'),(21,'101020800','青浦'),(22,'101020900','松江'),(23,'101021000','奉贤'),(24,'101021100','崇明'),(25,'101021300','浦东'),(26,'101030200','武清'),(27,'101030300','宝坻'),(28,'101030400','东丽'),(29,'101030500','西青'),(30,'101030600','北辰'),(31,'101030700','宁河'),(32,'101030800','汉沽'),(33,'101030900','静海'),(34,'101031000','津南'),(35,'101031100','塘沽'),(36,'101031200','大港'),(37,'101031400','蓟县'),(38,'101040100','重庆'),(39,'101040200','永川'),(40,'101040300','合川'),(41,'101040400','南川'),(42,'101040500','江津'),(43,'101040600','万盛'),(44,'101040700','渝北'),(45,'101040800','北碚'),(46,'101041000','长寿'),(47,'101041100','黔江'),(48,'101041300','万州'),(49,'101041400','涪陵'),(50,'101041500','开县'),(51,'101041600','城口'),(52,'101041700','云阳'),(53,'101041800','巫溪'),(54,'101041900','奉节'),(55,'101042000','巫山'),(56,'101042100','潼南'),(57,'101042200','垫江'),(58,'101042300','梁平'),(59,'101042400','忠县'),(60,'101042500','石柱'),(61,'101042600','大足'),(62,'101042700','荣昌'),(63,'101042800','铜梁'),(64,'101042900','璧山'),(65,'101043000','丰都'),(66,'101043100','武隆'),(67,'101043200','彭水'),(68,'101043300','綦江'),(69,'101043400','酉阳'),(70,'101043600','秀山'),(71,'101050101','哈尔滨'),(72,'101050102','双城'),(73,'101050103','呼兰'),(74,'101050104','阿城'),(75,'101050105','宾县'),(76,'101050106','依兰'),(77,'101050107','巴彦'),(78,'101050108','通河'),(79,'101050109','方正'),(80,'101050110','延寿'),(81,'101050111','尚志'),(82,'101050112','五常'),(83,'101050113','木兰'),(84,'101050201','齐齐哈尔'),(85,'101050202','讷河'),(86,'101050203','龙江'),(87,'101050204','甘南'),(88,'101050205','富裕'),(89,'101050206','依安'),(90,'101050207','拜泉'),(91,'101050208','克山'),(92,'101050209','克东'),(93,'101050210','泰来'),(94,'101050301','牡丹江'),(95,'101050302','海林'),(96,'101050303','穆棱'),(97,'101050304','林口'),(98,'101050305','绥芬河'),(99,'101050306','宁安'),(100,'101050307','东宁'),(101,'101050401','佳木斯'),(102,'101050402','汤原'),(103,'101050403','抚远'),(104,'101050404','桦川'),(105,'101050405','桦南'),(106,'101050406','同江'),(107,'101050407','富锦'),(108,'101050501','绥化'),(109,'101050502','肇东'),(110,'101050503','安达'),(111,'101050504','海伦'),(112,'101050505','明水'),(113,'101050506','望奎'),(114,'101050507','兰西'),(115,'101050508','青冈'),(116,'101050509','庆安'),(117,'101050510','绥棱'),(118,'101050601','黑河'),(119,'101050602','嫩江'),(120,'101050603','孙吴'),(121,'101050604','逊克'),(122,'101050605','五大连池'),(123,'101050606','北安'),(124,'101050701','大兴安岭'),(125,'101050702','塔河'),(126,'101050703','漠河'),(127,'101050704','呼玛'),(128,'101050801','伊春'),(129,'101050804','铁力'),(130,'101050805','嘉荫'),(131,'101050901','大庆'),(132,'101050902','林甸'),(133,'101050903','肇州'),(134,'101050904','肇源'),(135,'101050905','杜蒙'),(136,'101051002','七台河'),(137,'101051003','勃利'),(138,'101051101','鸡西'),(139,'101051102','虎林'),(140,'101051103','密山'),(141,'101051104','鸡东'),(142,'101051201','鹤岗'),(143,'101051202','绥滨'),(144,'101051203','萝北'),(145,'101051301','双鸭山'),(146,'101051302','集贤'),(147,'101051303','宝清'),(148,'101051304','饶河'),(149,'101051305','友谊'),(150,'101060101','长春'),(151,'101060102','农安'),(152,'101060103','德惠'),(153,'101060104','九台'),(154,'101060105','榆树'),(155,'101060201','吉林'),(156,'101060202','舒兰'),(157,'101060203','永吉'),(158,'101060204','蛟河'),(159,'101060205','磐石'),(160,'101060206','桦甸'),(161,'101060302','敦化'),(162,'101060303','安图'),(163,'101060304','汪清'),(164,'101060305','和龙'),(165,'101060307','龙井'),(166,'101060308','珲春'),(167,'101060309','图们'),(168,'101060312','延吉'),(169,'101060401','四平'),(170,'101060402','双辽'),(171,'101060403','梨树'),(172,'101060404','公主岭'),(173,'101060405','伊通'),(174,'101060501','通化'),(175,'101060502','梅河口'),(176,'101060503','柳河'),(177,'101060504','辉南'),(178,'101060505','集安'),(179,'101060601','白城'),(180,'101060602','洮南'),(181,'101060603','大安'),(182,'101060604','镇赉'),(183,'101060605','通榆'),(184,'101060701','辽源'),(185,'101060702','东丰'),(186,'101060703','东辽'),(187,'101060801','松原'),(188,'101060802','乾安'),(189,'101060803','前郭'),(190,'101060804','长岭'),(191,'101060805','扶余'),(192,'101060901','白山'),(193,'101060902','靖宇'),(194,'101060903','临江'),(195,'101060905','长白'),(196,'101060906','抚松'),(197,'101060907','江源'),(198,'101070101','沈阳'),(199,'101070103','辽中'),(200,'101070104','康平'),(201,'101070105','法库'),(202,'101070106','新民'),(203,'101070201','大连'),(204,'101070202','瓦房店'),(205,'101070204','普兰店'),(206,'101070206','长海'),(207,'101070207','庄河'),(208,'101070301','鞍山'),(209,'101070302','台安'),(210,'101070303','岫岩'),(211,'101070304','海城'),(212,'101070401','抚顺'),(213,'101070402','新宾'),(214,'101070403','清原'),(215,'101070501','本溪'),(216,'101070504','桓仁'),(217,'101070601','丹东'),(218,'101070602','凤城'),(219,'101070603','宽甸'),(220,'101070604','东港'),(221,'101070701','锦州'),(222,'101070702','凌海'),(223,'101070704','义县'),(224,'101070705','黑山'),(225,'101070706','北镇'),(226,'101070801','营口'),(227,'101070802','大石桥'),(228,'101070803','盖州'),(229,'101070901','阜新'),(230,'101070902','彰武'),(231,'101071001','辽阳'),(232,'101071003','灯塔'),(233,'101071004','弓长岭'),(234,'101071101','铁岭'),(235,'101071102','开原'),(236,'101071103','昌图'),(237,'101071104','西丰'),(238,'101071105','调兵山'),(239,'101071201','朝阳'),(240,'101071203','凌源'),(241,'101071204','喀左'),(242,'101071205','北票'),(243,'101071207','建平'),(244,'101071301','盘锦'),(245,'101071302','大洼'),(246,'101071303','盘山'),(247,'101071401','葫芦岛'),(248,'101071402','建昌'),(249,'101071403','绥中'),(250,'101071404','兴城'),(251,'101080101','呼和浩特'),(252,'101080102','土左'),(253,'101080103','托克托'),(254,'101080104','和林格尔'),(255,'101080105','清水河'),(256,'101080107','武川'),(257,'101080201','包头'),(258,'101080202','白云鄂博'),(259,'101080204','土右'),(260,'101080205','固阳'),(261,'101080206','达茂'),(262,'101080301','乌海'),(263,'101080401','乌兰察布'),(264,'101080402','卓资'),(265,'101080403','化德'),(266,'101080404','商都'),(267,'101080406','兴和'),(268,'101080407','凉城'),(269,'101080408','察右前'),(270,'101080409','察右中'),(271,'101080410','察右后'),(272,'101080411','四子王'),(273,'101080412','丰镇'),(274,'101080501','通辽'),(275,'101080503','科左中'),(276,'101080504','科左后'),(277,'101080506','开鲁'),(278,'101080507','库伦'),(279,'101080508','奈曼'),(280,'101080509','扎鲁特'),(281,'101080601','赤峰'),(282,'101080603','阿鲁'),(283,'101080605','巴林左'),(284,'101080606','巴林右'),(285,'101080607','林西'),(286,'101080608','克什'),(287,'101080609','翁牛特'),(288,'101080611','喀喇沁'),(289,'101080613','宁城'),(290,'101080614','敖汉'),(291,'101080701','鄂尔多斯'),(292,'101080703','达拉特'),(293,'101080704','准格尔'),(294,'101080706','河南'),(295,'101080708','鄂托克'),(296,'101080709','杭锦'),(297,'101080710','乌审'),(298,'101080711','伊金霍洛'),(299,'101080801','巴彦淖尔'),(300,'101080802','五原'),(301,'101080803','磴口'),(302,'101080804','乌前'),(303,'101080806','乌中'),(304,'101080807','乌后'),(305,'101080810','杭锦后'),(306,'101080901','锡林浩特'),(307,'101080903','二连浩特'),(308,'101080904','阿巴嘎'),(309,'101080906','苏左'),(310,'101080907','苏右'),(311,'101080909','东乌'),(312,'101080910','西乌'),(313,'101080911','太仆寺'),(314,'101080912','镶黄'),(315,'101080913','正镶白'),(316,'101080914','正蓝'),(317,'101080915','多伦'),(318,'101081000','呼伦贝尔'),(319,'101081001','海拉尔'),(320,'101081003','阿荣'),(321,'101081004','莫力达瓦'),(322,'101081005','鄂伦春'),(323,'101081006','鄂温克'),(324,'101081007','陈巴尔虎'),(325,'101081008','新左'),(326,'101081009','新右'),(327,'101081010','满洲里'),(328,'101081011','牙克石'),(329,'101081012','扎兰屯'),(330,'101081014','额尔古纳'),(331,'101081015','根河'),(332,'101081101','乌兰浩特'),(333,'101081102','阿尔山'),(334,'101081103','科右中'),(335,'101081105','扎赉特'),(336,'101081107','突泉'),(337,'101081108','霍林郭勒'),(338,'101081109','科右前'),(339,'101081201','阿拉善'),(340,'101081202','阿右'),(341,'101081203','额济纳'),(342,'101090101','石家庄'),(343,'101090102','井陉'),(344,'101090103','正定'),(345,'101090104','栾城'),(346,'101090105','行唐'),(347,'101090106','灵寿'),(348,'101090107','高邑'),(349,'101090108','深泽'),(350,'101090109','赞皇'),(351,'101090110','无极'),(352,'101090111','平山'),(353,'101090112','元氏'),(354,'101090113','赵县'),(355,'101090114','辛集'),(356,'101090115','藁城'),(357,'101090116','晋州'),(358,'101090117','新乐'),(359,'101090118','鹿泉'),(360,'101090201','保定'),(361,'101090202','满城'),(362,'101090203','阜平'),(363,'101090204','徐水'),(364,'101090205','唐县'),(365,'101090206','高阳'),(366,'101090207','容城'),(367,'101090209','涞源'),(368,'101090210','望都'),(369,'101090211','安新'),(370,'101090212','易县'),(371,'101090214','曲阳'),(372,'101090215','蠡县'),(373,'101090216','顺平'),(374,'101090217','雄县'),(375,'101090218','涿州'),(376,'101090219','定州'),(377,'101090220','安国'),(378,'101090221','高碑店'),(379,'101090222','涞水'),(380,'101090223','定兴'),(381,'101090224','清苑'),(382,'101090225','博野'),(383,'101090301','张家口'),(384,'101090302','宣化'),(385,'101090303','张北'),(386,'101090304','康保'),(387,'101090305','沽源'),(388,'101090306','尚义'),(389,'101090307','蔚县'),(390,'101090308','阳原'),(391,'101090309','怀安'),(392,'101090310','万全'),(393,'101090311','怀来'),(394,'101090312','涿鹿'),(395,'101090313','赤城'),(396,'101090314','崇礼'),(397,'101090402','承德'),(398,'101090404','兴隆'),(399,'101090405','平泉'),(400,'101090406','滦平'),(401,'101090407','隆化'),(402,'101090408','丰宁'),(403,'101090409','宽城'),(404,'101090410','围场'),(405,'101090501','唐山'),(406,'101090502','丰南'),(407,'101090503','丰润'),(408,'101090504','滦县'),(409,'101090505','滦南'),(410,'101090506','乐亭'),(411,'101090507','迁西'),(412,'101090508','玉田'),(413,'101090509','唐海'),(414,'101090510','遵化'),(415,'101090511','迁安'),(416,'101090512','曹妃甸'),(417,'101090601','廊坊'),(418,'101090602','固安'),(419,'101090603','永清'),(420,'101090604','香河'),(421,'101090605','大城'),(422,'101090606','文安'),(423,'101090607','大厂'),(424,'101090608','霸州'),(425,'101090609','三河'),(426,'101090701','沧州'),(427,'101090702','青县'),(428,'101090703','东光'),(429,'101090704','海兴'),(430,'101090705','盐山'),(431,'101090706','肃宁'),(432,'101090707','南皮'),(433,'101090708','吴桥'),(434,'101090709','献县'),(435,'101090710','孟村'),(436,'101090711','泊头'),(437,'101090712','任丘'),(438,'101090713','黄骅'),(439,'101090714','河间'),(440,'101090716','沧县'),(441,'101090801','衡水'),(442,'101090802','枣强'),(443,'101090803','武邑'),(444,'101090804','武强'),(445,'101090805','饶阳'),(446,'101090806','安平'),(447,'101090807','故城'),(448,'101090808','景县'),(449,'101090809','阜城'),(450,'101090810','冀州'),(451,'101090811','深州'),(452,'101090901','邢台'),(453,'101090902','临城'),(454,'101090905','柏乡'),(455,'101090906','隆尧'),(456,'101090907','南和'),(457,'101090908','宁晋'),(458,'101090909','巨鹿'),(459,'101090910','新河'),(460,'101090911','广宗'),(461,'101090912','平乡'),(462,'101090913','威县'),(463,'101090914','清河'),(464,'101090915','临西'),(465,'101090916','南宫'),(466,'101090917','沙河'),(467,'101090918','任县'),(468,'101090919','内丘'),(469,'101091001','邯郸'),(470,'101091002','峰峰矿'),(471,'101091003','临漳'),(472,'101091004','成安'),(473,'101091005','大名'),(474,'101091006','涉县'),(475,'101091007','磁县'),(476,'101091008','肥乡'),(477,'101091009','永年'),(478,'101091010','邱县'),(479,'101091011','鸡泽'),(480,'101091012','广平'),(481,'101091013','馆陶'),(482,'101091014','魏县'),(483,'101091015','曲周'),(484,'101091016','武安'),(485,'101091101','秦皇岛'),(486,'101091102','青龙'),(487,'101091103','昌黎'),(488,'101091104','抚宁'),(489,'101091105','卢龙'),(490,'101100101','太原'),(491,'101100102','清徐'),(492,'101100103','阳曲'),(493,'101100104','娄烦'),(494,'101100105','古交'),(495,'101100201','大同'),(496,'101100202','阳高'),(497,'101100204','天镇'),(498,'101100205','广灵'),(499,'101100206','灵丘'),(500,'101100207','浑源'),(501,'101100208','左云'),(502,'101100301','阳泉'),(503,'101100302','盂县'),(504,'101100303','平定'),(505,'101100401','晋中'),(506,'101100403','榆社'),(507,'101100404','左权'),(508,'101100405','和顺'),(509,'101100406','昔阳'),(510,'101100407','寿阳'),(511,'101100408','太谷'),(512,'101100409','祁县'),(513,'101100410','平遥'),(514,'101100411','灵石'),(515,'101100412','介休'),(516,'101100501','长治'),(517,'101100502','黎城'),(518,'101100503','屯留'),(519,'101100504','潞城'),(520,'101100505','襄垣'),(521,'101100506','平顺'),(522,'101100507','武乡'),(523,'101100508','沁县'),(524,'101100509','长子'),(525,'101100510','沁源'),(526,'101100511','壶关'),(527,'101100601','晋城'),(528,'101100602','沁水'),(529,'101100603','阳城'),(530,'101100604','陵川'),(531,'101100605','高平'),(532,'101100606','泽州'),(533,'101100701','临汾'),(534,'101100702','曲沃'),(535,'101100703','永和'),(536,'101100704','隰县'),(537,'101100705','大宁'),(538,'101100706','吉县'),(539,'101100707','襄汾'),(540,'101100708','蒲县'),(541,'101100709','汾西'),(542,'101100710','洪洞'),(543,'101100711','霍州'),(544,'101100712','乡宁'),(545,'101100713','翼城'),(546,'101100714','侯马'),(547,'101100715','浮山'),(548,'101100716','安泽'),(549,'101100717','古县'),(550,'101100801','运城'),(551,'101100802','临猗'),(552,'101100803','稷山'),(553,'101100804','万荣'),(554,'101100805','河津'),(555,'101100806','新绛'),(556,'101100807','绛县'),(557,'101100808','闻喜'),(558,'101100809','垣曲'),(559,'101100810','永济'),(560,'101100811','芮城'),(561,'101100812','夏县'),(562,'101100813','平陆'),(563,'101100901','朔州'),(564,'101100903','山阴'),(565,'101100904','右玉'),(566,'101100905','应县'),(567,'101100906','怀仁'),(568,'101101001','忻州'),(569,'101101002','定襄'),(570,'101101003','五台'),(571,'101101004','河曲'),(572,'101101005','偏关'),(573,'101101006','神池'),(574,'101101007','宁武'),(575,'101101008','代县'),(576,'101101009','繁峙'),(577,'101101011','保德'),(578,'101101012','静乐'),(579,'101101013','岢岚'),(580,'101101014','五寨'),(581,'101101015','原平'),(582,'101101100','吕梁'),(583,'101101101','离石'),(584,'101101102','临县'),(585,'101101103','兴县'),(586,'101101104','岚县'),(587,'101101105','柳林'),(588,'101101106','石楼'),(589,'101101107','方山'),(590,'101101108','交口'),(591,'101101109','中阳'),(592,'101101110','孝义'),(593,'101101111','汾阳'),(594,'101101112','文水'),(595,'101101113','交城'),(596,'101110101','西安'),(597,'101110102','长安'),(598,'101110104','蓝田'),(599,'101110105','周至'),(600,'101110106','户县'),(601,'101110107','高陵'),(602,'101110200','咸阳'),(603,'101110201','三原'),(604,'101110202','礼泉'),(605,'101110203','永寿'),(606,'101110204','淳化'),(607,'101110205','泾阳'),(608,'101110206','武功'),(609,'101110207','乾县'),(610,'101110208','彬县'),(611,'101110209','长武'),(612,'101110210','旬邑'),(613,'101110211','兴平'),(614,'101110300','延安'),(615,'101110401','榆林'),(616,'101110402','府谷'),(617,'101110403','神木'),(618,'101110404','佳县'),(619,'101110405','定边'),(620,'101110406','靖边'),(621,'101110407','横山'),(622,'101110408','米脂'),(623,'101110409','子洲'),(624,'101110410','绥德'),(625,'101110411','吴堡'),(626,'101110412','清涧'),(627,'101110501','渭南'),(628,'101110502','华县'),(629,'101110503','潼关'),(630,'101110504','大荔'),(631,'101110505','白水'),(632,'101110506','富平'),(633,'101110507','蒲城'),(634,'101110508','澄城'),(635,'101110509','合阳'),(636,'101110510','韩城'),(637,'101110511','华阴'),(638,'101110601','商洛'),(639,'101110602','洛南'),(640,'101110603','柞水'),(641,'101110604','商州'),(642,'101110605','镇安'),(643,'101110606','丹凤'),(644,'101110607','商南'),(645,'101110608','山阳'),(646,'101110701','安康'),(647,'101110702','紫阳'),(648,'101110703','石泉'),(649,'101110704','汉阴'),(650,'101110705','旬阳'),(651,'101110706','岚皋'),(652,'101110707','平利'),(653,'101110708','白河'),(654,'101110709','镇坪'),(655,'101110710','宁陕'),(656,'101110801','汉中'),(657,'101110802','略阳'),(658,'101110803','勉县'),(659,'101110804','留坝'),(660,'101110805','洋县'),(661,'101110806','城固'),(662,'101110807','西乡'),(663,'101110808','佛坪'),(664,'101110809','宁强'),(665,'101110810','南郑'),(666,'101110811','镇巴'),(667,'101110901','宝鸡'),(668,'101110903','千阳'),(669,'101110904','麟游'),(670,'101110905','岐山'),(671,'101110906','凤翔'),(672,'101110907','扶风'),(673,'101110908','眉县'),(674,'101110909','太白'),(675,'101110910','凤县'),(676,'101110911','陇县'),(677,'101111001','铜川'),(678,'101111003','宜君'),(679,'101111101','杨凌'),(680,'101120101','济南'),(681,'101120103','商河'),(682,'101120104','章丘'),(683,'101120105','平阴'),(684,'101120106','济阳'),(685,'101120201','青岛'),(686,'101120204','即墨'),(687,'101120205','胶州'),(688,'101120206','胶南'),(689,'101120207','莱西'),(690,'101120208','平度'),(691,'101120301','淄博'),(692,'101120304','高青'),(693,'101120306','沂源'),(694,'101120307','桓台'),(695,'101120401','德州'),(696,'101120402','武城'),(697,'101120403','临邑'),(698,'101120404','陵县'),(699,'101120405','齐河'),(700,'101120406','乐陵'),(701,'101120407','庆云'),(702,'101120408','平原'),(703,'101120409','宁津'),(704,'101120410','夏津'),(705,'101120411','禹城'),(706,'101120501','烟台'),(707,'101120502','莱州'),(708,'101120503','长岛'),(709,'101120504','蓬莱'),(710,'101120505','龙口'),(711,'101120506','招远'),(712,'101120507','栖霞'),(713,'101120510','莱阳'),(714,'101120511','海阳'),(715,'101120601','潍坊'),(716,'101120602','青州'),(717,'101120603','寿光'),(718,'101120604','临朐'),(719,'101120605','昌乐'),(720,'101120606','昌邑'),(721,'101120607','安丘'),(722,'101120608','高密'),(723,'101120609','诸城'),(724,'101120701','济宁'),(725,'101120702','嘉祥'),(726,'101120703','微山'),(727,'101120704','鱼台'),(728,'101120705','兖州'),(729,'101120706','金乡'),(730,'101120707','汶上'),(731,'101120708','泗水'),(732,'101120709','梁山'),(733,'101120710','曲阜'),(734,'101120711','邹城'),(735,'101120801','泰安'),(736,'101120802','新泰'),(737,'101120804','肥城'),(738,'101120805','东平'),(739,'101120806','宁阳'),(740,'101120901','临沂'),(741,'101120902','莒南'),(742,'101120903','沂南'),(743,'101120904','苍山'),(744,'101120905','临沭'),(745,'101120906','郯城'),(746,'101120907','蒙阴'),(747,'101120908','平邑'),(748,'101120909','费县'),(749,'101120910','沂水'),(750,'101121001','菏泽'),(751,'101121002','鄄城'),(752,'101121003','郓城'),(753,'101121004','东明'),(754,'101121005','定陶'),(755,'101121006','巨野'),(756,'101121007','曹县'),(757,'101121008','成武'),(758,'101121009','单县'),(759,'101121101','滨州'),(760,'101121102','博兴'),(761,'101121103','无棣'),(762,'101121104','阳信'),(763,'101121105','惠民'),(764,'101121106','沾化'),(765,'101121107','邹平'),(766,'101121201','东营'),(767,'101121203','垦利'),(768,'101121204','利津'),(769,'101121205','广饶'),(770,'101121301','威海'),(771,'101121302','文登'),(772,'101121303','荣成'),(773,'101121304','乳山'),(774,'101121401','枣庄'),(775,'101121405','滕州'),(776,'101121501','日照'),(777,'101121502','五莲'),(778,'101121503','莒县'),(779,'101121601','莱芜'),(780,'101121701','聊城'),(781,'101121702','冠县'),(782,'101121703','阳谷'),(783,'101121704','高唐'),(784,'101121705','茌平'),(785,'101121706','东阿'),(786,'101121707','临清'),(787,'101121709','莘县'),(788,'101130101','乌鲁木齐'),(789,'101130105','达坂城'),(790,'101130201','克拉玛依'),(791,'101130202','乌尔禾'),(792,'101130203','白碱滩'),(793,'101130301','石河子'),(794,'101130401','昌吉'),(795,'101130402','呼图壁'),(796,'101130403','米泉'),(797,'101130404','阜康'),(798,'101130405','吉木萨尔'),(799,'101130406','奇台'),(800,'101130407','玛纳斯'),(801,'101130408','木垒'),(802,'101130501','吐鲁番'),(803,'101130503','克州'),(804,'101130504','鄯善'),(805,'101130601','库尔勒'),(806,'101130602','轮台'),(807,'101130603','尉犁'),(808,'101130604','若羌'),(809,'101130605','且末'),(810,'101130606','和静'),(811,'101130607','焉耆'),(812,'101130608','和硕'),(813,'101130612','博湖'),(814,'101130701','阿拉尔'),(815,'101130801','阿克苏'),(816,'101130802','乌什'),(817,'101130803','温宿'),(818,'101130804','拜城'),(819,'101130805','新和'),(820,'101130806','沙雅'),(821,'101130807','库车'),(822,'101130808','柯坪'),(823,'101130809','阿瓦提'),(824,'101130901','喀什'),(825,'101130902','英吉沙'),(826,'101130903','塔什库尔干'),(827,'101130904','麦盖提'),(828,'101130905','莎车'),(829,'101130906','叶城'),(830,'101130907','泽普'),(831,'101130908','巴楚'),(832,'101130909','岳普湖'),(833,'101130910','伽师'),(834,'101130911','疏附'),(835,'101130912','疏勒'),(836,'101131001','伊宁'),(837,'101131002','察布查尔'),(838,'101131003','尼勒克'),(839,'101131005','巩留'),(840,'101131006','新源'),(841,'101131007','昭苏'),(842,'101131008','特克斯'),(843,'101131009','霍城'),(844,'101131011','奎屯'),(845,'101131101','塔城'),(846,'101131102','裕民'),(847,'101131103','额敏'),(848,'101131104','和布克赛尔'),(849,'101131105','托里'),(850,'101131106','乌苏'),(851,'101131107','沙湾'),(852,'101131201','哈密'),(853,'101131203','巴里坤'),(854,'101131204','伊吾'),(855,'101131301','和田'),(856,'101131302','皮山'),(857,'101131303','策勒'),(858,'101131304','墨玉'),(859,'101131305','洛浦'),(860,'101131306','民丰'),(861,'101131307','于田'),(862,'101131401','阿勒泰'),(863,'101131402','哈巴河'),(864,'101131405','吉木乃'),(865,'101131406','布尔津'),(866,'101131407','福海'),(867,'101131408','富蕴'),(868,'101131409','青河'),(869,'101131501','阿图什'),(870,'101131502','乌恰'),(871,'101131503','阿克陶'),(872,'101131504','阿合奇'),(873,'101131601','博乐'),(874,'101131602','温泉'),(875,'101131603','精河'),(876,'101140101','拉萨'),(877,'101140102','当雄'),(878,'101140103','尼木'),(879,'101140104','林周'),(880,'101140105','堆龙德庆'),(881,'101140106','曲水'),(882,'101140107','达孜'),(883,'101140108','墨竹工卡'),(884,'101140201','日喀则'),(885,'101140202','拉孜'),(886,'101140204','聂拉木'),(887,'101140205','定日'),(888,'101140206','江孜'),(889,'101140208','仲巴'),(890,'101140209','萨嘎'),(891,'101140210','吉隆'),(892,'101140211','昂仁'),(893,'101140212','定结'),(894,'101140213','萨迦'),(895,'101140214','谢通门'),(896,'101140215','楠木林'),(897,'101140216','岗巴'),(898,'101140217','白朗'),(899,'101140218','亚东'),(900,'101140219','康马'),(901,'101140220','仁布'),(902,'101140301','山南'),(903,'101140302','贡嘎'),(904,'101140303','札囊'),(905,'101140304','加查'),(906,'101140305','浪卡子'),(907,'101140306','错那'),(908,'101140307','隆子'),(909,'101140309','乃东'),(910,'101140310','桑日'),(911,'101140311','洛扎'),(912,'101140312','措美'),(913,'101140313','琼结'),(914,'101140314','曲松'),(915,'101140401','林芝'),(916,'101140402','波密'),(917,'101140403','米林'),(918,'101140404','察隅'),(919,'101140405','工布江达'),(920,'101140406','朗县'),(921,'101140407','墨脱'),(922,'101140501','昌都'),(923,'101140502','丁青'),(924,'101140503','边坝'),(925,'101140504','洛隆'),(926,'101140505','左贡'),(927,'101140506','芒康'),(928,'101140507','类乌齐'),(929,'101140508','八宿'),(930,'101140509','江达'),(931,'101140510','察雅'),(932,'101140511','贡觉'),(933,'101140601','那曲'),(934,'101140602','尼玛'),(935,'101140603','嘉黎'),(936,'101140604','班戈'),(937,'101140605','安多'),(938,'101140606','索县'),(939,'101140607','聂荣'),(940,'101140608','巴青'),(941,'101140609','比如'),(942,'101140610','双湖'),(943,'101140701','阿里'),(944,'101140702','改则'),(945,'101140703','申扎'),(946,'101140705','普兰'),(947,'101140706','札达'),(948,'101140707','噶尔'),(949,'101140708','日土'),(950,'101140709','革吉'),(951,'101140710','措勤'),(952,'101150101','西宁'),(953,'101150102','大通'),(954,'101150103','湟源'),(955,'101150104','湟中'),(956,'101150201','海东'),(957,'101150202','乐都'),(958,'101150203','民和'),(959,'101150204','互助'),(960,'101150205','化隆'),(961,'101150206','循化'),(962,'101150208','平安'),(963,'101150301','黄南'),(964,'101150302','尖扎'),(965,'101150303','泽库'),(966,'101150305','同仁'),(967,'101150401','海南'),(968,'101150404','贵德'),(969,'101150406','兴海'),(970,'101150407','贵南'),(971,'101150408','同德'),(972,'101150409','共和'),(973,'101150501','果洛'),(974,'101150502','班玛'),(975,'101150503','甘德'),(976,'101150504','达日'),(977,'101150505','久治'),(978,'101150506','玛多'),(979,'101150508','玛沁'),(980,'101150601','玉树'),(981,'101150602','称多'),(982,'101150603','治多'),(983,'101150604','杂多'),(984,'101150605','囊谦'),(985,'101150606','曲麻莱'),(986,'101150701','海西'),(987,'101150708','天峻'),(988,'101150709','乌兰'),(989,'101150716','德令哈'),(990,'101150801','海北'),(991,'101150802','门源'),(992,'101150803','祁连'),(993,'101150804','海晏'),(994,'101150806','刚察'),(995,'101150901','格尔木'),(996,'101150902','都兰'),(997,'101160101','兰州'),(998,'101160102','皋兰'),(999,'101160103','永登'),(1000,'101160104','榆中'),(1001,'101160201','定西'),(1002,'101160202','通渭'),(1003,'101160203','陇西'),(1004,'101160204','渭源'),(1005,'101160205','临洮'),(1006,'101160206','漳县'),(1007,'101160207','岷县'),(1008,'101160301','平凉'),(1009,'101160302','泾川'),(1010,'101160303','灵台'),(1011,'101160304','崇信'),(1012,'101160305','华亭'),(1013,'101160306','庄浪'),(1014,'101160307','静宁'),(1015,'101160401','庆阳'),(1016,'101160402','西峰'),(1017,'101160403','环县'),(1018,'101160404','华池'),(1019,'101160405','合水'),(1020,'101160406','正宁'),(1021,'101160407','宁县'),(1022,'101160408','镇原'),(1023,'101160409','庆城'),(1024,'101160501','武威'),(1025,'101160502','民勤'),(1026,'101160503','古浪'),(1027,'101160505','天祝'),(1028,'101160601','金昌'),(1029,'101160602','永昌'),(1030,'101160701','张掖'),(1031,'101160702','肃南'),(1032,'101160703','民乐'),(1033,'101160704','临泽'),(1034,'101160705','高台'),(1035,'101160706','山丹'),(1036,'101160801','酒泉'),(1037,'101160803','金塔'),(1038,'101160804','阿克塞'),(1039,'101160805','瓜州'),(1040,'101160806','肃北'),(1041,'101160807','玉门'),(1042,'101160808','敦煌'),(1043,'101160901','天水'),(1044,'101160903','清水'),(1045,'101160904','秦安'),(1046,'101160905','甘谷'),(1047,'101160906','武山'),(1048,'101160907','张家川'),(1049,'101161001','陇南'),(1050,'101161002','成县'),(1051,'101161003','文县'),(1052,'101161004','宕昌'),(1053,'101161005','康县'),(1054,'101161006','西和'),(1055,'101161007','礼县'),(1056,'101161008','徽县'),(1057,'101161009','两当'),(1058,'101161101','临夏'),(1059,'101161102','康乐'),(1060,'101161103','永靖'),(1061,'101161104','广河'),(1062,'101161105','和政'),(1063,'101161107','积石山'),(1064,'101161201','合作'),(1065,'101161202','临潭'),(1066,'101161203','卓尼'),(1067,'101161204','舟曲'),(1068,'101161205','迭部'),(1069,'101161206','玛曲'),(1070,'101161207','碌曲'),(1071,'101161208','夏河'),(1072,'101161301','白银'),(1073,'101161302','靖远'),(1074,'101161303','会宁'),(1075,'101161304','平川'),(1076,'101161305','景泰'),(1077,'101161401','嘉峪关'),(1078,'101170101','银川'),(1079,'101170102','永宁'),(1080,'101170103','灵武'),(1081,'101170104','贺兰'),(1082,'101170201','石嘴山'),(1083,'101170203','平罗'),(1084,'101170301','吴忠'),(1085,'101170302','同心'),(1086,'101170303','盐池'),(1087,'101170306','青铜峡'),(1088,'101170401','固原'),(1089,'101170402','西吉'),(1090,'101170403','隆德'),(1091,'101170404','泾源'),(1092,'101170406','彭阳'),(1093,'101170501','中卫'),(1094,'101170502','中宁'),(1095,'101170504','海原'),(1096,'101180101','郑州'),(1097,'101180102','巩义'),(1098,'101180103','荥阳'),(1099,'101180104','登封'),(1100,'101180105','新密'),(1101,'101180106','新郑'),(1102,'101180107','中牟'),(1103,'101180108','上街'),(1104,'101180201','安阳'),(1105,'101180202','汤阴'),(1106,'101180203','滑县'),(1107,'101180204','内黄'),(1108,'101180205','林州'),(1109,'101180301','新乡'),(1110,'101180302','获嘉'),(1111,'101180303','原阳'),(1112,'101180304','辉县'),(1113,'101180305','卫辉'),(1114,'101180306','延津'),(1115,'101180307','封丘'),(1116,'101180308','长垣'),(1117,'101180401','许昌'),(1118,'101180402','鄢陵'),(1119,'101180403','襄城'),(1120,'101180404','长葛'),(1121,'101180405','禹州'),(1122,'101180501','平顶山'),(1123,'101180502','郏县'),(1124,'101180503','宝丰'),(1125,'101180504','汝州'),(1126,'101180505','叶县'),(1127,'101180506','舞钢'),(1128,'101180507','鲁山'),(1129,'101180508','石龙'),(1130,'101180601','信阳'),(1131,'101180602','息县'),(1132,'101180603','罗山'),(1133,'101180604','光山'),(1134,'101180605','新县'),(1135,'101180606','淮滨'),(1136,'101180607','潢川'),(1137,'101180608','固始'),(1138,'101180609','商城'),(1139,'101180701','南阳'),(1140,'101180702','南召'),(1141,'101180703','方城'),(1142,'101180704','社旗'),(1143,'101180705','西峡'),(1144,'101180706','内乡'),(1145,'101180707','镇平'),(1146,'101180708','淅川'),(1147,'101180709','新野'),(1148,'101180710','唐河'),(1149,'101180711','邓州'),(1150,'101180712','桐柏'),(1151,'101180801','开封'),(1152,'101180802','杞县'),(1153,'101180803','尉氏'),(1154,'101180804','通许'),(1155,'101180805','兰考'),(1156,'101180901','洛阳'),(1157,'101180902','新安'),(1158,'101180903','孟津'),(1159,'101180904','宜阳'),(1160,'101180905','洛宁'),(1161,'101180906','伊川'),(1162,'101180907','嵩县'),(1163,'101180908','偃师'),(1164,'101180909','栾川'),(1165,'101180910','汝阳'),(1166,'101180911','吉利'),(1167,'101181001','商丘'),(1168,'101181003','睢县'),(1169,'101181004','民权'),(1170,'101181005','虞城'),(1171,'101181006','柘城'),(1172,'101181007','宁陵'),(1173,'101181008','夏邑'),(1174,'101181009','永城'),(1175,'101181101','焦作'),(1176,'101181102','修武'),(1177,'101181103','武陟'),(1178,'101181104','沁阳'),(1179,'101181106','博爱'),(1180,'101181107','温县'),(1181,'101181108','孟州'),(1182,'101181201','鹤壁'),(1183,'101181202','浚县'),(1184,'101181203','淇县'),(1185,'101181301','濮阳'),(1186,'101181302','台前'),(1187,'101181303','南乐'),(1188,'101181304','清丰'),(1189,'101181305','范县'),(1190,'101181401','周口'),(1191,'101181402','扶沟'),(1192,'101181403','太康'),(1193,'101181404','淮阳'),(1194,'101181405','西华'),(1195,'101181406','商水'),(1196,'101181407','项城'),(1197,'101181408','郸城'),(1198,'101181409','鹿邑'),(1199,'101181410','沈丘'),(1200,'101181501','漯河'),(1201,'101181502','临颍'),(1202,'101181503','舞阳'),(1203,'101181504','临颖'),(1204,'101181601','驻马店'),(1205,'101181602','西平'),(1206,'101181603','遂平'),(1207,'101181604','上蔡'),(1208,'101181605','汝南'),(1209,'101181606','泌阳'),(1210,'101181607','平舆'),(1211,'101181608','新蔡'),(1212,'101181609','确山'),(1213,'101181610','正阳'),(1214,'101181701','三门峡'),(1215,'101181702','灵宝'),(1216,'101181703','渑池'),(1217,'101181704','卢氏'),(1218,'101181705','义马'),(1219,'101181706','陕县'),(1220,'101181801','济源'),(1221,'101190101','南京'),(1222,'101190102','溧水'),(1223,'101190103','高淳'),(1224,'101190104','江宁'),(1225,'101190105','六合'),(1226,'101190107','浦口'),(1227,'101190201','无锡'),(1228,'101190202','江阴'),(1229,'101190203','宜兴'),(1230,'101190204','锡山'),(1231,'101190301','镇江'),(1232,'101190302','丹阳'),(1233,'101190303','扬中'),(1234,'101190304','句容'),(1235,'101190305','丹徒'),(1236,'101190401','苏州'),(1237,'101190402','常熟'),(1238,'101190403','张家港'),(1239,'101190404','昆山'),(1240,'101190405','吴中'),(1241,'101190407','吴江'),(1242,'101190408','太仓'),(1243,'101190501','南通'),(1244,'101190502','海安'),(1245,'101190503','如皋'),(1246,'101190504','如东'),(1247,'101190507','启东'),(1248,'101190508','海门'),(1249,'101190601','扬州'),(1250,'101190602','宝应'),(1251,'101190603','仪征'),(1252,'101190604','高邮'),(1253,'101190605','江都'),(1254,'101190606','邗江'),(1255,'101190701','盐城'),(1256,'101190702','响水'),(1257,'101190703','滨海'),(1258,'101190704','阜宁'),(1259,'101190705','射阳'),(1260,'101190706','建湖'),(1261,'101190707','东台'),(1262,'101190708','大丰'),(1263,'101190709','盐都'),(1264,'101190801','徐州'),(1265,'101190802','铜山'),(1266,'101190803','丰县'),(1267,'101190804','沛县'),(1268,'101190805','邳州'),(1269,'101190806','睢宁'),(1270,'101190807','新沂'),(1271,'101190901','淮安'),(1272,'101190902','金湖'),(1273,'101190903','盱眙'),(1274,'101190904','洪泽'),(1275,'101190905','涟水'),(1276,'101191001','连云港'),(1277,'101191002','东海'),(1278,'101191003','赣榆'),(1279,'101191004','灌云'),(1280,'101191005','灌南'),(1281,'101191101','常州'),(1282,'101191102','溧阳'),(1283,'101191103','金坛'),(1284,'101191104','武进'),(1285,'101191201','泰州'),(1286,'101191202','兴化'),(1287,'101191203','泰兴'),(1288,'101191204','姜堰'),(1289,'101191205','靖江'),(1290,'101191301','宿迁'),(1291,'101191302','沭阳'),(1292,'101191303','泗阳'),(1293,'101191304','泗洪'),(1294,'101191305','宿豫'),(1295,'101200101','武汉'),(1296,'101200102','蔡甸'),(1297,'101200103','黄陂'),(1298,'101200104','新洲'),(1299,'101200105','江夏'),(1300,'101200106','东西湖'),(1301,'101200201','襄阳'),(1302,'101200202','襄州'),(1303,'101200203','保康'),(1304,'101200204','南漳'),(1305,'101200205','宜城'),(1306,'101200206','老河口'),(1307,'101200207','谷城'),(1308,'101200208','枣阳'),(1309,'101200301','鄂州'),(1310,'101200302','梁子湖'),(1311,'101200401','孝感'),(1312,'101200402','安陆'),(1313,'101200403','云梦'),(1314,'101200404','大悟'),(1315,'101200405','应城'),(1316,'101200406','汉川'),(1317,'101200407','孝昌'),(1318,'101200501','黄冈'),(1319,'101200502','红安'),(1320,'101200503','麻城'),(1321,'101200504','罗田'),(1322,'101200505','英山'),(1323,'101200506','浠水'),(1324,'101200507','蕲春'),(1325,'101200508','黄梅'),(1326,'101200509','武穴'),(1327,'101200510','团风'),(1328,'101200601','黄石'),(1329,'101200602','大冶'),(1330,'101200603','阳新'),(1331,'101200604','铁山'),(1332,'101200605','下陆'),(1333,'101200606','西塞山'),(1334,'101200701','咸宁'),(1335,'101200702','赤壁'),(1336,'101200703','嘉鱼'),(1337,'101200704','崇阳'),(1338,'101200705','通城'),(1339,'101200706','通山'),(1340,'101200801','荆州'),(1341,'101200802','江陵'),(1342,'101200803','公安'),(1343,'101200804','石首'),(1344,'101200805','监利'),(1345,'101200806','洪湖'),(1346,'101200807','松滋'),(1347,'101200901','宜昌'),(1348,'101200902','远安'),(1349,'101200903','秭归'),(1350,'101200904','兴山'),(1351,'101200906','五峰'),(1352,'101200907','当阳'),(1353,'101200908','长阳'),(1354,'101200909','宜都'),(1355,'101200910','枝江'),(1356,'101201001','恩施'),(1357,'101201002','利川'),(1358,'101201003','建始'),(1359,'101201004','咸丰'),(1360,'101201005','宣恩'),(1361,'101201006','鹤峰'),(1362,'101201007','来凤'),(1363,'101201008','巴东'),(1364,'101201101','十堰'),(1365,'101201102','竹溪'),(1366,'101201103','郧西'),(1367,'101201104','郧县'),(1368,'101201105','竹山'),(1369,'101201106','房县'),(1370,'101201107','丹江口'),(1371,'101201108','茅箭'),(1372,'101201109','张湾'),(1373,'101201201','神农架'),(1374,'101201301','随州'),(1375,'101201302','广水'),(1376,'101201401','荆门'),(1377,'101201402','钟祥'),(1378,'101201403','京山'),(1379,'101201404','掇刀'),(1380,'101201405','沙洋'),(1381,'101201406','沙市'),(1382,'101201501','天门'),(1383,'101201601','仙桃'),(1384,'101201701','潜江'),(1385,'101210101','杭州'),(1386,'101210102','萧山'),(1387,'101210103','桐庐'),(1388,'101210104','淳安'),(1389,'101210105','建德'),(1390,'101210106','余杭'),(1391,'101210107','临安'),(1392,'101210108','富阳'),(1393,'101210201','湖州'),(1394,'101210202','长兴'),(1395,'101210203','安吉'),(1396,'101210204','德清'),(1397,'101210301','嘉兴'),(1398,'101210302','嘉善'),(1399,'101210303','海宁'),(1400,'101210304','桐乡'),(1401,'101210305','平湖'),(1402,'101210306','海盐'),(1403,'101210401','宁波'),(1404,'101210403','慈溪'),(1405,'101210404','余姚'),(1406,'101210405','奉化'),(1407,'101210406','象山'),(1408,'101210408','宁海'),(1409,'101210410','北仑'),(1410,'101210411','鄞州'),(1411,'101210501','绍兴'),(1412,'101210502','诸暨'),(1413,'101210503','上虞'),(1414,'101210504','新昌'),(1415,'101210505','嵊州'),(1416,'101210601','台州'),(1417,'101210603','玉环'),(1418,'101210604','三门'),(1419,'101210605','天台'),(1420,'101210606','仙居'),(1421,'101210607','温岭'),(1422,'101210610','临海'),(1423,'101210701','温州'),(1424,'101210702','泰顺'),(1425,'101210703','文成'),(1426,'101210704','平阳'),(1427,'101210705','瑞安'),(1428,'101210706','洞头'),(1429,'101210707','乐清'),(1430,'101210708','永嘉'),(1431,'101210709','苍南'),(1432,'101210801','丽水'),(1433,'101210802','遂昌'),(1434,'101210803','龙泉'),(1435,'101210804','缙云'),(1436,'101210805','青田'),(1437,'101210806','云和'),(1438,'101210807','庆元'),(1439,'101210808','松阳'),(1440,'101210809','景宁'),(1441,'101210901','金华'),(1442,'101210902','浦江'),(1443,'101210903','兰溪'),(1444,'101210904','义乌'),(1445,'101210905','东阳'),(1446,'101210906','武义'),(1447,'101210907','永康'),(1448,'101210908','磐安'),(1449,'101211001','衢州'),(1450,'101211002','常山'),(1451,'101211003','开化'),(1452,'101211004','龙游'),(1453,'101211005','江山'),(1454,'101211101','舟山'),(1455,'101211102','嵊泗'),(1456,'101211104','岱山'),(1457,'101220101','合肥'),(1458,'101220102','长丰'),(1459,'101220103','肥东'),(1460,'101220104','肥西'),(1461,'101220201','蚌埠'),(1462,'101220202','怀远'),(1463,'101220203','固镇'),(1464,'101220204','五河'),(1465,'101220301','芜湖'),(1466,'101220302','繁昌'),(1467,'101220304','南陵'),(1468,'101220401','淮南'),(1469,'101220402','凤台'),(1470,'101220403','潘集'),(1471,'101220501','马鞍山'),(1472,'101220502','当涂'),(1473,'101220601','安庆'),(1474,'101220602','枞阳'),(1475,'101220603','太湖'),(1476,'101220604','潜山'),(1477,'101220605','怀宁'),(1478,'101220606','宿松'),(1479,'101220607','望江'),(1480,'101220608','岳西'),(1481,'101220609','桐城'),(1482,'101220701','宿州'),(1483,'101220702','砀山'),(1484,'101220703','灵璧'),(1485,'101220704','泗县'),(1486,'101220705','萧县'),(1487,'101220801','阜阳'),(1488,'101220802','阜南'),(1489,'101220803','颍上'),(1490,'101220804','临泉'),(1491,'101220805','界首'),(1492,'101220806','太和'),(1493,'101220901','亳州'),(1494,'101220902','涡阳'),(1495,'101220903','利辛'),(1496,'101220904','蒙城'),(1497,'101221001','黄山'),(1498,'101221004','祁门'),(1499,'101221005','黟县'),(1500,'101221006','歙县'),(1501,'101221007','休宁'),(1502,'101221101','滁州'),(1503,'101221102','凤阳'),(1504,'101221103','明光'),(1505,'101221104','定远'),(1506,'101221105','全椒'),(1507,'101221106','来安'),(1508,'101221107','天长'),(1509,'101221201','淮北'),(1510,'101221202','濉溪'),(1511,'101221301','铜陵'),(1512,'101221401','宣城'),(1513,'101221402','泾县'),(1514,'101221403','旌德'),(1515,'101221404','宁国'),(1516,'101221405','绩溪'),(1517,'101221406','广德'),(1518,'101221407','郎溪'),(1519,'101221501','六安'),(1520,'101221502','霍邱'),(1521,'101221503','寿县'),(1522,'101221505','金寨'),(1523,'101221506','霍山'),(1524,'101221507','舒城'),(1525,'101221601','巢湖'),(1526,'101221602','庐江'),(1527,'101221603','无为'),(1528,'101221604','含山'),(1529,'101221605','和县'),(1530,'101221701','池州'),(1531,'101221702','东至'),(1532,'101221703','青阳'),(1533,'101221705','石台'),(1534,'101230101','福州'),(1535,'101230102','闽清'),(1536,'101230103','闽侯'),(1537,'101230104','罗源'),(1538,'101230105','连江'),(1539,'101230107','永泰'),(1540,'101230108','平潭'),(1541,'101230110','长乐'),(1542,'101230111','福清'),(1543,'101230201','厦门'),(1544,'101230301','宁德'),(1545,'101230302','古田'),(1546,'101230303','霞浦'),(1547,'101230304','寿宁'),(1548,'101230305','周宁'),(1549,'101230306','福安'),(1550,'101230307','柘荣'),(1551,'101230308','福鼎'),(1552,'101230309','屏南'),(1553,'101230401','莆田'),(1554,'101230402','仙游'),(1555,'101230404','涵江'),(1556,'101230405','秀屿'),(1557,'101230406','荔城'),(1558,'101230407','城厢'),(1559,'101230501','泉州'),(1560,'101230502','安溪'),(1561,'101230504','永春'),(1562,'101230505','德化'),(1563,'101230506','南安'),(1564,'101230508','惠安'),(1565,'101230509','晋江'),(1566,'101230510','石狮'),(1567,'101230601','漳州'),(1568,'101230602','长泰'),(1569,'101230603','南靖'),(1570,'101230604','平和'),(1571,'101230605','龙海'),(1572,'101230606','漳浦'),(1573,'101230607','诏安'),(1574,'101230609','云霄'),(1575,'101230610','华安'),(1576,'101230701','龙岩'),(1577,'101230702','长汀'),(1578,'101230703','连城'),(1579,'101230704','武平'),(1580,'101230705','上杭'),(1581,'101230706','永定'),(1582,'101230707','漳平'),(1583,'101230801','三明'),(1584,'101230802','宁化'),(1585,'101230803','清流'),(1586,'101230804','泰宁'),(1587,'101230805','将乐'),(1588,'101230806','建宁'),(1589,'101230807','明溪'),(1590,'101230808','沙县'),(1591,'101230809','尤溪'),(1592,'101230810','永安'),(1593,'101230811','大田'),(1594,'101230901','南平'),(1595,'101230902','顺昌'),(1596,'101230903','光泽'),(1597,'101230904','邵武'),(1598,'101230905','武夷山'),(1599,'101230906','浦城'),(1600,'101230907','建阳'),(1601,'101230908','松溪'),(1602,'101230909','政和'),(1603,'101230910','建瓯'),(1604,'101231001','钓鱼岛'),(1605,'101240101','南昌'),(1606,'101240102','新建'),(1607,'101240104','安义'),(1608,'101240105','进贤'),(1609,'101240201','九江'),(1610,'101240202','瑞昌'),(1611,'101240204','武宁'),(1612,'101240205','德安'),(1613,'101240206','永修'),(1614,'101240207','湖口'),(1615,'101240208','彭泽'),(1616,'101240209','星子'),(1617,'101240210','都昌'),(1618,'101240212','修水'),(1619,'101240301','上饶'),(1620,'101240302','鄱阳'),(1621,'101240303','婺源'),(1622,'101240305','余干'),(1623,'101240306','万年'),(1624,'101240307','德兴'),(1625,'101240309','弋阳'),(1626,'101240310','横峰'),(1627,'101240311','铅山'),(1628,'101240312','玉山'),(1629,'101240313','广丰'),(1630,'101240401','抚州'),(1631,'101240402','广昌'),(1632,'101240403','乐安'),(1633,'101240404','崇仁'),(1634,'101240405','金溪'),(1635,'101240406','资溪'),(1636,'101240407','宜黄'),(1637,'101240408','南城'),(1638,'101240409','南丰'),(1639,'101240410','黎川'),(1640,'101240411','东乡'),(1641,'101240501','宜春'),(1642,'101240502','铜鼓'),(1643,'101240503','宜丰'),(1644,'101240504','万载'),(1645,'101240505','上高'),(1646,'101240506','靖安'),(1647,'101240507','奉新'),(1648,'101240508','高安'),(1649,'101240509','樟树'),(1650,'101240510','丰城'),(1651,'101240601','吉安'),(1652,'101240603','吉水'),(1653,'101240604','新干'),(1654,'101240605','峡江'),(1655,'101240606','永丰'),(1656,'101240607','永新'),(1657,'101240608','井冈山'),(1658,'101240609','万安'),(1659,'101240610','遂川'),(1660,'101240611','泰和'),(1661,'101240612','安福'),(1662,'101240701','赣州'),(1663,'101240702','崇义'),(1664,'101240703','上犹'),(1665,'101240704','南康'),(1666,'101240705','大余'),(1667,'101240706','信丰'),(1668,'101240707','宁都'),(1669,'101240708','石城'),(1670,'101240709','瑞金'),(1671,'101240710','于都'),(1672,'101240711','会昌'),(1673,'101240712','安远'),(1674,'101240713','全南'),(1675,'101240714','龙南'),(1676,'101240715','定南'),(1677,'101240716','寻乌'),(1678,'101240717','兴国'),(1679,'101240718','赣县'),(1680,'101240801','景德镇'),(1681,'101240802','乐平'),(1682,'101240803','浮梁'),(1683,'101240901','萍乡'),(1684,'101240902','莲花'),(1685,'101240903','上栗'),(1686,'101240905','芦溪'),(1687,'101240906','湘东'),(1688,'101241001','新余'),(1689,'101241002','分宜'),(1690,'101241101','鹰潭'),(1691,'101241102','余江'),(1692,'101241103','贵溪'),(1693,'101250101','长沙'),(1694,'101250102','宁乡'),(1695,'101250103','浏阳'),(1696,'101250105','望城'),(1697,'101250201','湘潭'),(1698,'101250202','韶山'),(1699,'101250203','湘乡'),(1700,'101250301','株洲'),(1701,'101250302','攸县'),(1702,'101250303','醴陵'),(1703,'101250305','茶陵'),(1704,'101250306','炎陵'),(1705,'101250401','衡阳'),(1706,'101250402','衡山'),(1707,'101250403','衡东'),(1708,'101250404','祁东'),(1709,'101250406','常宁'),(1710,'101250407','衡南'),(1711,'101250408','耒阳'),(1712,'101250501','郴州'),(1713,'101250502','桂阳'),(1714,'101250503','嘉禾'),(1715,'101250504','宜章'),(1716,'101250505','临武'),(1717,'101250507','资兴'),(1718,'101250508','汝城'),(1719,'101250509','安仁'),(1720,'101250510','永兴'),(1721,'101250511','桂东'),(1722,'101250512','苏仙'),(1723,'101250601','常德'),(1724,'101250602','安乡'),(1725,'101250603','桃源'),(1726,'101250604','汉寿'),(1727,'101250605','澧县'),(1728,'101250606','临澧'),(1729,'101250607','石门'),(1730,'101250608','津市'),(1731,'101250700','益阳'),(1732,'101250702','南县'),(1733,'101250703','桃江'),(1734,'101250704','安化'),(1735,'101250705','沅江'),(1736,'101250801','娄底'),(1737,'101250802','双峰'),(1738,'101250803','冷水江'),(1739,'101250805','新化'),(1740,'101250806','涟源'),(1741,'101250901','邵阳'),(1742,'101250902','隆回'),(1743,'101250903','洞口'),(1744,'101250904','新邵'),(1745,'101250905','邵东'),(1746,'101250906','绥宁'),(1747,'101250907','新宁'),(1748,'101250908','武冈'),(1749,'101250909','城步'),(1750,'101251001','岳阳'),(1751,'101251002','华容'),(1752,'101251003','湘阴'),(1753,'101251004','汨罗'),(1754,'101251005','平江'),(1755,'101251006','临湘'),(1756,'101251101','张家界'),(1757,'101251102','桑植'),(1758,'101251103','慈利'),(1759,'101251104','武陵源'),(1760,'101251201','怀化'),(1761,'101251203','沅陵'),(1762,'101251204','辰溪'),(1763,'101251205','靖州'),(1764,'101251206','会同'),(1765,'101251207','通道'),(1766,'101251208','麻阳'),(1767,'101251209','新晃'),(1768,'101251210','芷江'),(1769,'101251211','溆浦'),(1770,'101251212','中方'),(1771,'101251213','洪江'),(1772,'101251401','永州'),(1773,'101251402','祁阳'),(1774,'101251403','东安'),(1775,'101251404','双牌'),(1776,'101251405','道县'),(1777,'101251406','宁远'),(1778,'101251407','江永'),(1779,'101251408','蓝山'),(1780,'101251409','新田'),(1781,'101251410','江华'),(1782,'101251501','吉首'),(1783,'101251502','保靖'),(1784,'101251503','永顺'),(1785,'101251504','古丈'),(1786,'101251505','凤凰'),(1787,'101251506','泸溪'),(1788,'101251507','龙山'),(1789,'101251508','花垣'),(1790,'101260101','贵阳'),(1791,'101260102','白云'),(1792,'101260103','花溪'),(1793,'101260104','乌当'),(1794,'101260105','息烽'),(1795,'101260106','开阳'),(1796,'101260107','修文'),(1797,'101260108','清镇'),(1798,'101260109','小河'),(1799,'101260110','云岩'),(1800,'101260111','南明'),(1801,'101260201','遵义'),(1802,'101260203','仁怀'),(1803,'101260204','绥阳'),(1804,'101260205','湄潭'),(1805,'101260206','凤冈'),(1806,'101260207','桐梓'),(1807,'101260208','赤水'),(1808,'101260209','习水'),(1809,'101260210','道真'),(1810,'101260211','正安'),(1811,'101260212','务川'),(1812,'101260213','余庆'),(1813,'101260214','汇川'),(1814,'101260215','红花岗'),(1815,'101260301','安顺'),(1816,'101260302','普定'),(1817,'101260303','镇宁'),(1818,'101260304','平坝'),(1819,'101260305','紫云'),(1820,'101260306','关岭'),(1821,'101260401','都匀'),(1822,'101260402','贵定'),(1823,'101260403','瓮安'),(1824,'101260404','长顺'),(1825,'101260405','福泉'),(1826,'101260406','惠水'),(1827,'101260407','龙里'),(1828,'101260408','罗甸'),(1829,'101260409','平塘'),(1830,'101260410','独山'),(1831,'101260411','三都'),(1832,'101260412','荔波'),(1833,'101260501','凯里'),(1834,'101260502','岑巩'),(1835,'101260503','施秉'),(1836,'101260504','镇远'),(1837,'101260505','黄平'),(1838,'101260507','麻江'),(1839,'101260508','丹寨'),(1840,'101260509','三穗'),(1841,'101260510','台江'),(1842,'101260511','剑河'),(1843,'101260512','雷山'),(1844,'101260513','黎平'),(1845,'101260514','天柱'),(1846,'101260515','锦屏'),(1847,'101260516','榕江'),(1848,'101260517','从江'),(1849,'101260601','铜仁'),(1850,'101260602','江口'),(1851,'101260603','玉屏'),(1852,'101260604','万山特'),(1853,'101260605','思南'),(1854,'101260607','印江'),(1855,'101260608','石阡'),(1856,'101260609','沿河'),(1857,'101260610','德江'),(1858,'101260611','松桃'),(1859,'101260701','毕节'),(1860,'101260702','赫章'),(1861,'101260703','金沙'),(1862,'101260704','威宁'),(1863,'101260705','大方'),(1864,'101260706','纳雍'),(1865,'101260707','织金'),(1866,'101260708','黔西'),(1867,'101260801','水城'),(1868,'101260802','六枝特'),(1869,'101260804','盘县'),(1870,'101260901','兴义'),(1871,'101260902','晴隆'),(1872,'101260903','兴仁'),(1873,'101260904','贞丰'),(1874,'101260905','望谟'),(1875,'101260907','安龙'),(1876,'101260908','册亨'),(1877,'101260909','普安'),(1878,'101270101','成都'),(1879,'101270103','新都'),(1880,'101270104','温江'),(1881,'101270105','金堂'),(1882,'101270106','双流'),(1883,'101270107','郫县'),(1884,'101270108','大邑'),(1885,'101270109','蒲江'),(1886,'101270110','新津'),(1887,'101270111','都江堰'),(1888,'101270112','彭州'),(1889,'101270113','邛崃'),(1890,'101270114','崇州'),(1891,'101270201','攀枝花'),(1892,'101270203','米易'),(1893,'101270204','盐边'),(1894,'101270301','自贡'),(1895,'101270302','富顺'),(1896,'101270303','荣县'),(1897,'101270401','绵阳'),(1898,'101270402','三台'),(1899,'101270403','盐亭'),(1900,'101270404','安县'),(1901,'101270405','梓潼'),(1902,'101270406','北川'),(1903,'101270407','平武'),(1904,'101270408','江油'),(1905,'101270501','南充'),(1906,'101270502','南部'),(1907,'101270503','营山'),(1908,'101270504','蓬安'),(1909,'101270505','仪陇'),(1910,'101270506','西充'),(1911,'101270507','阆中'),(1912,'101270601','达州'),(1913,'101270602','宣汉'),(1914,'101270603','开江'),(1915,'101270604','大竹'),(1916,'101270605','渠县'),(1917,'101270606','万源'),(1918,'101270608','达县'),(1919,'101270701','遂宁'),(1920,'101270702','蓬溪'),(1921,'101270703','射洪'),(1922,'101270801','广安'),(1923,'101270802','岳池'),(1924,'101270803','武胜'),(1925,'101270804','邻水'),(1926,'101270805','华蓥'),(1927,'101270901','巴中'),(1928,'101270902','通江'),(1929,'101270903','南江'),(1930,'101270904','平昌'),(1931,'101271001','泸州'),(1932,'101271003','泸县'),(1933,'101271004','合江'),(1934,'101271005','叙永'),(1935,'101271006','古蔺'),(1936,'101271101','宜宾'),(1937,'101271104','南溪'),(1938,'101271105','江安'),(1939,'101271106','长宁'),(1940,'101271107','高县'),(1941,'101271108','珙县'),(1942,'101271109','筠连'),(1943,'101271110','兴文'),(1944,'101271111','屏山'),(1945,'101271201','内江'),(1946,'101271203','威远'),(1947,'101271204','资中'),(1948,'101271205','隆昌'),(1949,'101271301','资阳'),(1950,'101271302','安岳'),(1951,'101271303','乐至'),(1952,'101271304','简阳'),(1953,'101271401','乐山'),(1954,'101271402','犍为'),(1955,'101271403','井研'),(1956,'101271404','夹江'),(1957,'101271405','沐川'),(1958,'101271406','峨边'),(1959,'101271407','马边'),(1960,'101271409','峨眉山'),(1961,'101271501','眉山'),(1962,'101271502','仁寿'),(1963,'101271503','彭山'),(1964,'101271504','洪雅'),(1965,'101271505','丹棱'),(1966,'101271506','青神'),(1967,'101271601','凉山'),(1968,'101271603','木里'),(1969,'101271604','盐源'),(1970,'101271605','德昌'),(1971,'101271606','会理'),(1972,'101271607','会东'),(1973,'101271608','宁南'),(1974,'101271609','普格'),(1975,'101271610','西昌'),(1976,'101271611','金阳'),(1977,'101271612','昭觉'),(1978,'101271613','喜德'),(1979,'101271614','冕宁'),(1980,'101271615','越西'),(1981,'101271616','甘洛'),(1982,'101271617','雷波'),(1983,'101271618','美姑'),(1984,'101271619','布拖'),(1985,'101271701','雅安'),(1986,'101271702','名山'),(1987,'101271703','荥经'),(1988,'101271704','汉源'),(1989,'101271705','石棉'),(1990,'101271706','天全'),(1991,'101271707','芦山'),(1992,'101271708','宝兴'),(1993,'101271801','甘孜'),(1994,'101271802','康定'),(1995,'101271803','泸定'),(1996,'101271804','丹巴'),(1997,'101271805','九龙'),(1998,'101271806','雅江'),(1999,'101271807','道孚'),(2000,'101271808','炉霍'),(2001,'101271809','新龙'),(2002,'101271810','德格'),(2003,'101271811','白玉'),(2004,'101271812','石渠'),(2005,'101271813','色达'),(2006,'101271814','理塘'),(2007,'101271815','巴塘'),(2008,'101271816','乡城'),(2009,'101271817','稻城'),(2010,'101271818','得荣'),(2011,'101271901','阿坝'),(2012,'101271902','汶川'),(2013,'101271903','理县'),(2014,'101271904','茂县'),(2015,'101271905','松潘'),(2016,'101271906','九寨沟'),(2017,'101271907','金川'),(2018,'101271908','小金'),(2019,'101271909','黑水'),(2020,'101271910','马尔康'),(2021,'101271911','壤塘'),(2022,'101271912','若尔盖'),(2023,'101271913','红原'),(2024,'101272001','德阳'),(2025,'101272002','中江'),(2026,'101272003','广汉'),(2027,'101272004','什邡'),(2028,'101272005','绵竹'),(2029,'101272006','罗江'),(2030,'101272101','广元'),(2031,'101272102','旺苍'),(2032,'101272103','青川'),(2033,'101272104','剑阁'),(2034,'101272105','苍溪'),(2035,'101280101','广州'),(2036,'101280102','番禺'),(2037,'101280103','从化'),(2038,'101280104','增城'),(2039,'101280105','花都'),(2040,'101280201','韶关'),(2041,'101280202','乳源'),(2042,'101280203','始兴'),(2043,'101280204','翁源'),(2044,'101280205','乐昌'),(2045,'101280206','仁化'),(2046,'101280207','南雄'),(2047,'101280208','新丰'),(2048,'101280209','曲江'),(2049,'101280210','浈江'),(2050,'101280211','武江'),(2051,'101280301','惠州'),(2052,'101280302','博罗'),(2053,'101280303','惠阳'),(2054,'101280304','惠东'),(2055,'101280305','龙门'),(2056,'101280401','梅州'),(2057,'101280402','兴宁'),(2058,'101280403','蕉岭'),(2059,'101280404','大埔'),(2060,'101280406','丰顺'),(2061,'101280407','平远'),(2062,'101280408','五华'),(2063,'101280409','梅县'),(2064,'101280501','汕头'),(2065,'101280502','潮阳'),(2066,'101280503','澄海'),(2067,'101280504','南澳'),(2068,'101280601','深圳'),(2069,'101280701','珠海'),(2070,'101280702','斗门'),(2071,'101280703','金湾'),(2072,'101280800','佛山'),(2073,'101280801','顺德'),(2074,'101280802','三水'),(2075,'101280803','南海'),(2076,'101280804','高明'),(2077,'101280901','肇庆'),(2078,'101280902','广宁'),(2079,'101280903','四会'),(2080,'101280905','德庆'),(2081,'101280906','怀集'),(2082,'101280907','封开'),(2083,'101280908','高要'),(2084,'101281001','湛江'),(2085,'101281002','吴川'),(2086,'101281003','雷州'),(2087,'101281004','徐闻'),(2088,'101281005','廉江'),(2089,'101281006','赤坎'),(2090,'101281007','遂溪'),(2091,'101281008','坡头'),(2092,'101281009','霞山'),(2093,'101281010','麻章'),(2094,'101281101','江门'),(2095,'101281103','开平'),(2096,'101281104','新会'),(2097,'101281105','恩平'),(2098,'101281106','台山'),(2099,'101281108','鹤山'),(2100,'101281109','江海'),(2101,'101281201','河源'),(2102,'101281202','紫金'),(2103,'101281203','连平'),(2104,'101281204','和平'),(2105,'101281205','龙川'),(2106,'101281206','东源'),(2107,'101281301','清远'),(2108,'101281302','连南'),(2109,'101281303','连州'),(2110,'101281304','连山'),(2111,'101281305','阳山'),(2112,'101281306','佛冈'),(2113,'101281307','英德'),(2114,'101281308','清新'),(2115,'101281401','云浮'),(2116,'101281402','罗定'),(2117,'101281403','新兴'),(2118,'101281404','郁南'),(2119,'101281406','云安'),(2120,'101281501','潮州'),(2121,'101281502','饶平'),(2122,'101281503','潮安'),(2123,'101281601','东莞'),(2124,'101281701','中山'),(2125,'101281801','阳江'),(2126,'101281802','阳春'),(2127,'101281803','阳东'),(2128,'101281804','阳西'),(2129,'101281901','揭阳'),(2130,'101281902','揭西'),(2131,'101281903','普宁'),(2132,'101281904','惠来'),(2133,'101281905','揭东'),(2134,'101282001','茂名'),(2135,'101282002','高州'),(2136,'101282003','化州'),(2137,'101282004','电白'),(2138,'101282005','信宜'),(2139,'101282006','茂港'),(2140,'101282101','汕尾'),(2141,'101282102','海丰'),(2142,'101282103','陆丰'),(2143,'101282104','陆河'),(2144,'101290101','昆明'),(2145,'101290103','东川'),(2146,'101290104','寻甸'),(2147,'101290105','晋宁'),(2148,'101290106','宜良'),(2149,'101290107','石林'),(2150,'101290108','呈贡'),(2151,'101290109','富民'),(2152,'101290110','嵩明'),(2153,'101290111','禄劝'),(2154,'101290112','安宁'),(2155,'101290201','大理'),(2156,'101290202','云龙'),(2157,'101290203','漾濞'),(2158,'101290204','永平'),(2159,'101290205','宾川'),(2160,'101290206','弥渡'),(2161,'101290207','祥云'),(2162,'101290208','巍山'),(2163,'101290209','剑川'),(2164,'101290210','洱源'),(2165,'101290211','鹤庆'),(2166,'101290212','南涧'),(2167,'101290301','红河'),(2168,'101290302','石屏'),(2169,'101290303','建水'),(2170,'101290304','弥勒'),(2171,'101290305','元阳'),(2172,'101290306','绿春'),(2173,'101290307','开远'),(2174,'101290308','个旧'),(2175,'101290309','蒙自'),(2176,'101290310','屏边'),(2177,'101290311','泸西'),(2178,'101290312','金平'),(2179,'101290313','河口'),(2180,'101290401','曲靖'),(2181,'101290402','沾益'),(2182,'101290403','陆良'),(2183,'101290404','富源'),(2184,'101290405','马龙'),(2185,'101290406','师宗'),(2186,'101290407','罗平'),(2187,'101290408','会泽'),(2188,'101290409','宣威'),(2189,'101290501','保山'),(2190,'101290503','龙陵'),(2191,'101290504','施甸'),(2192,'101290505','昌宁'),(2193,'101290506','腾冲'),(2194,'101290601','文山'),(2195,'101290602','西畴'),(2196,'101290603','马关'),(2197,'101290604','麻栗坡'),(2198,'101290605','砚山'),(2199,'101290606','丘北'),(2200,'101290607','广南'),(2201,'101290608','富宁'),(2202,'101290701','玉溪'),(2203,'101290702','澄江'),(2204,'101290703','江川'),(2205,'101290704','通海'),(2206,'101290705','华宁'),(2207,'101290706','新平'),(2208,'101290707','易门'),(2209,'101290708','峨山'),(2210,'101290709','元江'),(2211,'101290801','楚雄'),(2212,'101290802','大姚'),(2213,'101290803','元谋'),(2214,'101290804','姚安'),(2215,'101290805','牟定'),(2216,'101290806','南华'),(2217,'101290807','武定'),(2218,'101290808','禄丰'),(2219,'101290809','双柏'),(2220,'101290810','永仁'),(2221,'101290901','普洱'),(2222,'101290902','景谷'),(2223,'101290903','景东'),(2224,'101290904','澜沧'),(2225,'101290906','墨江'),(2226,'101290907','江城'),(2227,'101290908','孟连'),(2228,'101290909','西盟'),(2229,'101290911','镇沅'),(2230,'101290912','宁洱'),(2231,'101291001','昭通'),(2232,'101291002','鲁甸'),(2233,'101291003','彝良'),(2234,'101291004','镇雄'),(2235,'101291005','威信'),(2236,'101291006','巧家'),(2237,'101291007','绥江'),(2238,'101291008','永善'),(2239,'101291009','盐津'),(2240,'101291010','大关'),(2241,'101291011','水富'),(2242,'101291101','临沧'),(2243,'101291102','沧源'),(2244,'101291103','耿马'),(2245,'101291104','双江'),(2246,'101291105','凤庆'),(2247,'101291106','永德'),(2248,'101291107','云县'),(2249,'101291108','镇康'),(2250,'101291201','怒江'),(2251,'101291203','福贡'),(2252,'101291204','兰坪'),(2253,'101291205','泸水'),(2254,'101291207','贡山'),(2255,'101291301','迪庆'),(2256,'101291302','德钦'),(2257,'101291303','维西'),(2258,'101291401','丽江'),(2259,'101291402','永胜'),(2260,'101291403','华坪'),(2261,'101291404','宁蒗'),(2262,'101291501','德宏'),(2263,'101291503','陇川'),(2264,'101291504','盈江'),(2265,'101291506','瑞丽'),(2266,'101291507','梁河'),(2267,'101291508','潞西'),(2268,'101291601','西双版纳'),(2269,'101291603','勐海'),(2270,'101291605','勐腊'),(2271,'101300101','南宁'),(2272,'101300103','邕宁'),(2273,'101300104','横县'),(2274,'101300105','隆安'),(2275,'101300106','马山'),(2276,'101300107','上林'),(2277,'101300108','武鸣'),(2278,'101300109','宾阳'),(2279,'101300201','崇左'),(2280,'101300202','天等'),(2281,'101300203','龙州'),(2282,'101300204','凭祥'),(2283,'101300205','大新'),(2284,'101300206','扶绥'),(2285,'101300207','宁明'),(2286,'101300301','柳州'),(2287,'101300302','柳城'),(2288,'101300304','鹿寨'),(2289,'101300305','柳江'),(2290,'101300306','融安'),(2291,'101300307','融水'),(2292,'101300308','三江'),(2293,'101300401','来宾'),(2294,'101300402','忻城'),(2295,'101300403','金秀'),(2296,'101300404','象州'),(2297,'101300405','武宣'),(2298,'101300406','合山'),(2299,'101300501','桂林'),(2300,'101300503','龙胜'),(2301,'101300504','永福'),(2302,'101300505','临桂'),(2303,'101300506','兴安'),(2304,'101300507','灵川'),(2305,'101300508','全州'),(2306,'101300509','灌阳'),(2307,'101300510','阳朔'),(2308,'101300511','恭城'),(2309,'101300512','平乐'),(2310,'101300513','荔浦'),(2311,'101300514','资源'),(2312,'101300601','梧州'),(2313,'101300602','藤县'),(2314,'101300604','苍梧'),(2315,'101300605','蒙山'),(2316,'101300606','岑溪'),(2317,'101300701','贺州'),(2318,'101300702','昭平'),(2319,'101300703','富川'),(2320,'101300704','钟山'),(2321,'101300801','贵港'),(2322,'101300802','桂平'),(2323,'101300803','平南'),(2324,'101300901','玉林'),(2325,'101300902','博白'),(2326,'101300903','北流'),(2327,'101300904','容县'),(2328,'101300905','陆川'),(2329,'101300906','兴业'),(2330,'101301001','百色'),(2331,'101301002','那坡'),(2332,'101301003','田阳'),(2333,'101301004','德保'),(2334,'101301005','靖西'),(2335,'101301006','田东'),(2336,'101301007','平果'),(2337,'101301008','隆林'),(2338,'101301009','西林'),(2339,'101301010','乐业'),(2340,'101301011','凌云'),(2341,'101301012','田林'),(2342,'101301101','钦州'),(2343,'101301102','浦北'),(2344,'101301103','灵山'),(2345,'101301201','河池'),(2346,'101301202','天峨'),(2347,'101301203','东兰'),(2348,'101301204','巴马'),(2349,'101301205','环江'),(2350,'101301206','罗城'),(2351,'101301207','宜州'),(2352,'101301208','凤山'),(2353,'101301209','南丹'),(2354,'101301210','都安'),(2355,'101301211','大化'),(2356,'101301301','北海'),(2357,'101301302','合浦'),(2358,'101301303','涠洲岛'),(2359,'101301401','防城港'),(2360,'101301402','上思'),(2361,'101301403','东兴'),(2362,'101301405','防城'),(2363,'101310101','海口'),(2364,'101310201','三亚'),(2365,'101310202','东方'),(2366,'101310203','临高'),(2367,'101310204','澄迈'),(2368,'101310205','儋州'),(2369,'101310206','昌江'),(2370,'101310207','白沙'),(2371,'101310208','琼中'),(2372,'101310209','定安'),(2373,'101310210','屯昌'),(2374,'101310211','琼海'),(2375,'101310212','文昌'),(2376,'101310214','保亭'),(2377,'101310215','万宁'),(2378,'101310216','陵水'),(2379,'101310221','乐东'),(2380,'101310222','五指山'),(2381,'101320101','香港'),(2382,'101330101','澳门'),(2383,'101340101','台北'),(2384,'101340102','桃园'),(2385,'101340103','新竹'),(2386,'101340104','宜兰'),(2387,'101340201','高雄'),(2388,'101340202','嘉义'),(2389,'101340203','台南'),(2390,'101340204','台东'),(2391,'101340205','屏东'),(2392,'101340401','台中'),(2393,'101340402','苗栗'),(2394,'101340403','彰化'),(2395,'101340404','南投'),(2396,'101340405','花莲'),(2397,'101340406','云林'),(2398,'102010100','首尔'),(2399,'103010100','东京'),(2400,'103020100','大阪'),(2401,'103040100','札幌'),(2402,'103050100','福冈'),(2403,'103090100','京都'),(2404,'104010100','新加坡'),(2405,'105010100','吉隆坡'),(2406,'106010100','曼谷'),(2407,'107010100','河内'),(2408,'107020100','胡志明市'),(2409,'108010100','仰光'),(2410,'109010100','万象'),(2411,'111010100','雅加达'),(2412,'111080100','登巴萨'),(2413,'112010100','德黑兰'),(2414,'113010100','新德里'),(2415,'113030100','孟买'),(2416,'113090100','斯利那加'),(2417,'114010100','伊斯兰堡'),(2418,'114030100','卡拉奇'),(2419,'114040100','白沙瓦'),(2420,'115010100','塔什干'),(2421,'117010100','科伦坡'),(2422,'118010100','喀布尔'),(2423,'118030100','坎大哈'),(2424,'120010100','斯里巴加湾'),(2425,'121010100','巴林'),(2426,'124010100','阿布扎比'),(2427,'124020100','迪拜'),(2428,'127010100','平壤'),(2429,'130010100','阿斯塔纳'),(2430,'132010100','乌兰巴托'),(2431,'136010100','马尼拉'),(2432,'138010100','利雅得'),(2433,'139010100','大马士革'),(2434,'201010100','伦敦'),(2435,'201050100','曼彻斯特'),(2436,'202010100','巴黎'),(2437,'202100100','马赛'),(2438,'203010100','柏林'),(2439,'203020100','法兰克福'),(2440,'203050100','汉堡'),(2441,'204010100','罗马'),(2442,'204040100','米兰'),(2443,'205010100','阿姆斯特丹'),(2444,'206010100','马德里'),(2445,'206020100','巴塞罗那'),(2446,'207010100','哥本哈根'),(2447,'208010100','莫斯科'),(2448,'210020100','日内瓦'),(2449,'210030100','苏黎世'),(2450,'211010100','斯德哥尔摩'),(2451,'214010100','里斯本'),(2452,'215020100','伊斯坦布尔'),(2453,'216010100','布鲁塞尔'),(2454,'217010100','维也纳'),(2455,'218010100','雅典'),(2456,'222010100','赫尔辛基'),(2457,'301010100','开罗'),(2458,'302010100','开普敦'),(2459,'302020100','约翰内斯堡'),(2460,'303010100','突尼斯'),(2461,'304020100','拉各斯'),(2462,'305010100','阿尔及尔'),(2463,'311010100','亚的斯亚贝巴'),(2464,'317010100','内罗毕'),(2465,'321020100','卡萨布兰卡'),(2466,'327010100','达喀尔'),(2467,'332010100','达累斯萨拉姆'),(2468,'334010100','卢萨卡'),(2469,'401010100','华盛顿'),(2470,'401020101','迈阿密'),(2471,'401020104','奥兰多'),(2472,'401030101','亚特兰大'),(2473,'401040101','洛杉矶'),(2474,'401040102','圣弗朗西斯科'),(2475,'401060100','波士顿'),(2476,'401070101','芝加哥'),(2477,'401100101','西雅图'),(2478,'401110101','纽约'),(2479,'401120108','休斯敦'),(2480,'401370100','拉斯维加斯'),(2481,'401480100','火奴鲁鲁'),(2482,'404010100','渥太华'),(2483,'404030100','温哥华'),(2484,'404040100','多伦多'),(2485,'404130100','埃德蒙顿'),(2486,'404140100','卡尔加里'),(2487,'404220100','温尼伯'),(2488,'404230100','魁北克'),(2489,'404240100','蒙特利尔'),(2490,'406010100','哈瓦那'),(2491,'411010100','墨西哥城'),(2492,'416010100','加拉加斯'),(2493,'601020101','悉尼'),(2494,'601030101','布里斯班'),(2495,'601040101','阿德来德'),(2496,'601060101','墨尔本'),(2497,'601070101','珀斯'),(2498,'606010100','惠灵顿'),(2499,'606020100','奥克兰'),(2500,'606030100','克莱斯特彻奇'),(2501,'101030100','天津');
/*!40000 ALTER TABLE `tp_weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wecha_user`
--

DROP TABLE IF EXISTS `tp_wecha_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wecha_user`
--

LOCK TABLES `tp_wecha_user` WRITE;
/*!40000 ALTER TABLE `tp_wecha_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_wecha_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wedding`
--

DROP TABLE IF EXISTS `tp_wedding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `keyword` varchar(20) NOT NULL,
  `coverurl` varchar(300) NOT NULL,
  `openpic` varchar(300) NOT NULL,
  `picurl` varchar(300) NOT NULL,
  `man` varchar(10) NOT NULL,
  `woman` varchar(10) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `telphone` varchar(30) NOT NULL,
  `statdate` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `video` varchar(150) NOT NULL,
  `mp3url` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `word` varchar(150) NOT NULL,
  `qr_code` varchar(100) NOT NULL,
  `copyrite` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wedding`
--

LOCK TABLES `tp_wedding` WRITE;
/*!40000 ALTER TABLE `tp_wedding` DISABLE KEYS */;
INSERT INTO `tp_wedding` VALUES (4,'xnftis1393415057','我们结婚啦！','喜帖','http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png','http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg','http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg','丹阳','豆豆',1,'021-88888888',1393603200,'苏州','120.63625','31.306224','http://v.youku.com/v_show/id_XNjI4ODk5NDQ4.html','1.mp3','','亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福。','','',0),(5,'gkphkp1393422345','王文博&amp;红红的婚礼','王文博','http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png','http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg','http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg','王文博','红红',1,'15236113306',1394593080,'洛阳市西工区全聚德烤鸭店','112.44241','34.665925','http://v.youku.com/v_show/id_XNjc5MDAyNDY0.html','2.mp3','123','亲爱的朋友，我王文博要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福。','','',0),(3,'nkldoe1393423032','王硕与李璐的婚礼','王硕','http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png','http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg','http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg','王硕','李璐',1,'15670705742',1405569480,'洛阳市华阳大酒店','112.41352','34.65848','http://v.youku.com/v_show/id_XNjI4ODk5NDQ4.html ','4.mp3','111','亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福。','','对方水电费',0);
/*!40000 ALTER TABLE `tp_wedding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wedding_info`
--

DROP TABLE IF EXISTS `tp_wedding_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `telphone` varchar(30) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `content` varchar(120) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wedding_info`
--

LOCK TABLES `tp_wedding_info` WRITE;
/*!40000 ALTER TABLE `tp_wedding_info` DISABLE KEYS */;
INSERT INTO `tp_wedding_info` VALUES (1,'nkldoe1393423032',1,'军刚好','1657535459',2,'',1,1393485356),(2,'nkldoe1393423032',1,'古巨基','5684258',0,'几个不纠结八年级',2,1393485373),(3,'nkldoe1393423032',1,'古巨基','5684258',0,'几个不纠结八年级',2,1393485373),(4,'nkldoe1393423032',1,'古巨基','5684258',0,'几个不纠结八年级',2,1393485380),(5,'nkldoe1393423032',1,'盖浇饭v你','5654225',1,'',1,1393492239);
/*!40000 ALTER TABLE `tp_wedding_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wedding_photo`
--

DROP TABLE IF EXISTS `tp_wedding_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wedding_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(300) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wedding_photo`
--

LOCK TABLES `tp_wedding_photo` WRITE;
/*!40000 ALTER TABLE `tp_wedding_photo` DISABLE KEYS */;
INSERT INTO `tp_wedding_photo` VALUES (1,'nkldoe1393423032',1,'1',1,'http://t3.qpic.cn/mblogpic/b83373015a1d78b8cd06/460',0,1,'地方'),(2,'xnftis1393415057',4,'11',0,'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png',0,1,''),(3,'xnftis1393415057',4,'2',0,'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png',0,1,''),(4,'nkldoe1393423032',3,'进口货',0,'地方的',0,1,'地方'),(5,'gkphkp1393422345',5,'多少对',0,'http://wx.jk51.cn/tpl/static/attachment/background/view/9.jpg',0,1,'啊啊'),(7,'xnftis1393415057',4,'1',0,'http://wx.jk51.cn/uploads/x/xnftis1393415057/5/6/c/c/thumb_530f0085addd5.jpg',0,1,'2');
/*!40000 ALTER TABLE `tp_wedding_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_weidiaoyan`
--

DROP TABLE IF EXISTS `tp_weidiaoyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_weidiaoyan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `logourl` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_weidiaoyan`
--

LOCK TABLES `tp_weidiaoyan` WRITE;
/*!40000 ALTER TABLE `tp_weidiaoyan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_weidiaoyan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_weidiaoyan_input`
--

DROP TABLE IF EXISTS `tp_weidiaoyan_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_weidiaoyan_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_weidiaoyan_input`
--

LOCK TABLES `tp_weidiaoyan_input` WRITE;
/*!40000 ALTER TABLE `tp_weidiaoyan_input` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_weidiaoyan_input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_weidiaoyan_value`
--

DROP TABLE IF EXISTS `tp_weidiaoyan_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_weidiaoyan_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_weidiaoyan_value`
--

LOCK TABLES `tp_weidiaoyan_value` WRITE;
/*!40000 ALTER TABLE `tp_weidiaoyan_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_weidiaoyan_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wewall`
--

DROP TABLE IF EXISTS `tp_wewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wewall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acttitle` varchar(40) NOT NULL COMMENT '活动标题',
  `isact` int(1) NOT NULL DEFAULT '0' COMMENT '活动开关',
  `ifcheck` int(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `iflottery` int(1) NOT NULL DEFAULT '1',
  `ifwx` int(11) NOT NULL DEFAULT '0' COMMENT '是否二维码',
  `showtime` int(11) NOT NULL COMMENT '前台页面刷新间隔',
  `background` varchar(300) DEFAULT NULL COMMENT '前台页面背景',
  `ewm` varchar(300) NOT NULL COMMENT '二维码',
  `marklog` varchar(100) DEFAULT NULL COMMENT '成绩记录',
  `createtime` int(20) NOT NULL COMMENT '创建时间',
  `endtime` int(20) DEFAULT NULL COMMENT '结束时间',
  `token` varchar(40) NOT NULL,
  `bonu1` int(11) DEFAULT NULL COMMENT '一等奖数量',
  `bonu2` int(11) DEFAULT NULL COMMENT '二等奖数量',
  `bonu3` int(11) DEFAULT NULL COMMENT '三等奖数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wewall`
--

LOCK TABLES `tp_wewall` WRITE;
/*!40000 ALTER TABLE `tp_wewall` DISABLE KEYS */;
INSERT INTO `tp_wewall` VALUES (7,'微信墙',1,1,1,0,3,'','http://www.jk51.cn/uploads/x/xnftis1393415057/6/a/0/3/thumb_530dd57ec967b.jpg',NULL,1393638791,NULL,'xnftis1393415057',1,3,5),(9,'默认活动',1,0,1,0,3,'','',NULL,1393722142,NULL,'nkldoe1393423032',1,3,5),(10,'王文博与红红的婚礼',1,0,1,0,3,'','',NULL,1393841157,NULL,'gkphkp1393422345',1,3,5);
/*!40000 ALTER TABLE `tp_wewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wewalllog`
--

DROP TABLE IF EXISTS `tp_wewalllog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wewalllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(30) NOT NULL,
  `content` varchar(200) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` varchar(30) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `sncode` varchar(20) DEFAULT NULL,
  `ifcheck` int(1) DEFAULT '0' COMMENT '审核',
  `ifsent` int(1) DEFAULT '0' COMMENT '抽奖接收',
  `ifscheck` int(1) NOT NULL DEFAULT '0' COMMENT '审核接收',
  `iszj` int(1) NOT NULL DEFAULT '0' COMMENT '是否中奖',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wewalllog`
--

LOCK TABLES `tp_wewalllog` WRITE;
/*!40000 ALTER TABLE `tp_wewalllog` DISABLE KEYS */;
INSERT INTO `tp_wewalllog` VALUES (9,'oXwJ-jvN2RGgbko9VxCfg7ux0uKc','上墙感觉很好哦。','1393846869','gkphkp1393422345',10,'53146a3153fd7',1,0,0,0),(7,'oZGBsuN3H4Y8KtkIoNVmyNmCHc3Y','微信墙。我来了','1393639266','xnftis1393415057',7,'53113f6211781',0,0,0,0);
/*!40000 ALTER TABLE `tp_wewalllog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wxuser`
--

DROP TABLE IF EXISTS `tp_wxuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `province` varchar(30) NOT NULL COMMENT '省',
  `color_id` mediumint(4) NOT NULL DEFAULT '0',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(2) NOT NULL DEFAULT '1' COMMENT '默认首页模版ID',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `allcardnum` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `phone` text NOT NULL,
  `smsstatus` text NOT NULL,
  `smsuser` text NOT NULL,
  `smspassword` text NOT NULL,
  `email` text NOT NULL,
  `emailstatus` text NOT NULL,
  `emailuser` text NOT NULL,
  `emailpassword` text NOT NULL,
  `emailsmtp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wxuser`
--

LOCK TABLES `tp_wxuser` WRITE;
/*!40000 ALTER TABLE `tp_wxuser` DISABLE KEYS */;
INSERT INTO `tp_wxuser` VALUES (1,1,'特易网络','gh_cbdfdebd02da','teyii2013','./tpl/User/default/common/images/portrait.jpg','xnftis1393415057','江苏',1,'苏州','32348551@qq.com',0,1,'情感','','1393415156','35','1393416964','135_index','1','yl_list','1','yl_content',10000,0,1,0,'','','','','','','','',''),(2,1,'微喜帖','gh_fb128940bc60','vsd5818','./tpl/User/default/common/images/portrait.jpg','gkphkp1393422345','河南',0,'洛阳','805188611@qq.com',0,8,'服务','','1393422486','1','1393422486','ty_index','1','yl_list','1','ktv_content',10000,0,1,0,'','','','','','','','',''),(3,3,'微喜帖','gh_fb128940bc60','vsd5818','./tpl/User/default/common/images/portrait.jpg','nkldoe1393423032','河南',0,'洛阳','805188611@qq.com',0,8,'服务','','1393423077','17','1393483859','117_index','1','yl_list','1','ktv_content',10000,499,1,499,'','','','','','','','',''),(4,3,'微石首','gh_9586b50614be','weishishou','./tpl/User/default/common/images/portrait.jpg','aeugbj1393734778','湖北',0,'石首','asdas@qq.com',0,7,'生活','','1393734799','1','1393734799','ty_index','1','yl_list','1','ktv_content',0,0,0,0,'','','','','','','','','');
/*!40000 ALTER TABLE `tp_wxuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_wxuser_message`
--

DROP TABLE IF EXISTS `tp_wxuser_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_wxuser_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ToUserName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `FromUserName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `CreateTime` int(11) NOT NULL,
  `MsgType` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MsgId` varchar(255) CHARACTER SET utf8 NOT NULL,
  `PicUrl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `MediaId` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Format` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ThumbMediaId` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Location_X` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Location_Y` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Scale` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Label` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `backcontent` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_wxuser_message`
--

LOCK TABLES `tp_wxuser_message` WRITE;
/*!40000 ALTER TABLE `tp_wxuser_message` DISABLE KEYS */;
INSERT INTO `tp_wxuser_message` VALUES (1,'gh_fb128940bc60','oXwJ-jvN2RGgbko9VxCfg7ux0uKc',1393492935,'text','kf#','5985006583232106136','','','','','','','','','','','','',0,''),(2,'gh_fb128940bc60','oXwJ-jvN2RGgbko9VxCfg7ux0uKc',1393492944,'text','kf#你好','5985006621886811803','','','','','','','','','','','','',0,'');
/*!40000 ALTER TABLE `tp_wxuser_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_xitie`
--

DROP TABLE IF EXISTS `tp_xitie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_xitie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `opening_animation` varchar(100) DEFAULT NULL,
  `small_pic` varchar(100) DEFAULT NULL,
  `man_name` varchar(20) DEFAULT NULL,
  `girl_name` varchar(20) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `background_music` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `site_map_2` varchar(100) DEFAULT NULL,
  `site_map_3` varchar(100) DEFAULT NULL,
  `site_map_4` varchar(100) DEFAULT NULL,
  `site_map_5` varchar(100) DEFAULT NULL,
  `site_map_1` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_xitie`
--

LOCK TABLES `tp_xitie` WRITE;
/*!40000 ALTER TABLE `tp_xitie` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_xitie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_yuyue`
--

DROP TABLE IF EXISTS `tp_yuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_yuyue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `statdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `copyright` varchar(30) DEFAULT NULL,
  `yuyue_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_yuyue`
--

LOCK TABLES `tp_yuyue` WRITE;
/*!40000 ALTER TABLE `tp_yuyue` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_yuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_yuyue_order`
--

DROP TABLE IF EXISTS `tp_yuyue_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_yuyue_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `type` smallint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(200) NOT NULL,
  `or_date` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `nums` varchar(20) DEFAULT NULL,
  `fieldsigle` varchar(100) DEFAULT NULL,
  `fielddownload` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_yuyue_order`
--

LOCK TABLES `tp_yuyue_order` WRITE;
/*!40000 ALTER TABLE `tp_yuyue_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_yuyue_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_yuyue_setcin`
--

DROP TABLE IF EXISTS `tp_yuyue_setcin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_yuyue_setcin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `yuanjia` varchar(10) DEFAULT NULL,
  `youhui` varchar(10) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `messages` text,
  `type` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT NULL,
  `pic4` varchar(100) DEFAULT NULL,
  `pic5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_yuyue_setcin`
--

LOCK TABLES `tp_yuyue_setcin` WRITE;
/*!40000 ALTER TABLE `tp_yuyue_setcin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_yuyue_setcin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tp_zhufu`
--

DROP TABLE IF EXISTS `tp_zhufu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_zhufu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xid` int(11) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `token` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tp_zhufu`
--

LOCK TABLES `tp_zhufu` WRITE;
/*!40000 ALTER TABLE `tp_zhufu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tp_zhufu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-04 11:33:01
