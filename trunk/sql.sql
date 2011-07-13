

CREATE DATABASE /*!32312 IF NOT EXISTS*/`eshopdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `eshopdb`;

/*Table structure for table `je_ad` */

DROP TABLE IF EXISTS `je_ad`;

CREATE TABLE `je_ad` (
  `Id` int(11) NOT NULL auto_increment,
  `Wide` int(11) default '0',
  `High` int(11) default '0',
  `Url` varchar(255) default '',
  `Shows` int(11) default '0',
  `ChannelId` int(11) default '0',
  `ShowName` varchar(50) default NULL,
  `LinkUrl` varchar(255) default '',
  `Intr` longtext,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_ad` */

insert  into `je_ad`(`Id`,`Wide`,`High`,`Url`,`Shows`,`ChannelId`,`ShowName`,`LinkUrl`,`Intr`) values (3,125,125,'uploadphoto//2010-01-13//1263326315531.jpg',0,NULL,'12','111111',NULL),(4,125,125,'uploadphoto//2010-01-13//1263325035953.jpg',0,NULL,'12','111111',NULL),(5,125,125,'uploadphoto//2010-01-13//1263326323953.gif',1,NULL,'','111111',NULL),(6,125,125,'uploadphoto//2010-01-13//1263326367828.gif',0,NULL,'','111111',NULL);

/*Table structure for table `je_admin` */

DROP TABLE IF EXISTS `je_admin`;

CREATE TABLE `je_admin` (
  `Admin_ID` int(11) NOT NULL auto_increment,
  `UserName` varchar(50) NOT NULL default '',
  `PassWord` varchar(50) NOT NULL default '',
  `Purview` int(11) default '0',
  `LastloginIP` varchar(50) default '',
  `LastLoginTime` datetime default NULL,
  `LastLogoutTime` datetime default NULL,
  `LoginTimes` int(11) default '0',
  `EnableMultiLogin` int(11) NOT NULL default '0',
  `AdminPurview_Article` int(11) default '0',
  `AdminPurview_Soft` int(11) default '0',
  `AdminPurview_Photo` int(11) default '0',
  `AdminPurview_GuestBook` int(11) default '0',
  `AdminPurview_House` int(11) default '0',
  `AdminPurview_Shop` int(11) default '0',
  `levelStrChannel` varchar(510) default NULL,
  `levelStrMunu` varchar(510) default NULL,
  PRIMARY KEY  (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_admin` */

insert  into `je_admin`(`Admin_ID`,`UserName`,`PassWord`,`Purview`,`LastloginIP`,`LastLoginTime`,`LastLogoutTime`,`LoginTimes`,`EnableMultiLogin`,`AdminPurview_Article`,`AdminPurview_Soft`,`AdminPurview_Photo`,`AdminPurview_GuestBook`,`AdminPurview_House`,`AdminPurview_Shop`,`levelStrChannel`,`levelStrMunu`) values (1,'admin','24fc9330260c0c7ed68e11a70c894f18',1,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(2,'lantian','8f67f3bcb07304360b861e5bf5722d1b',0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'','index|all|producter|config|sysconfig|skin|userskin|sysusergrp|system|syslog|');

/*Table structure for table `je_announce` */

DROP TABLE IF EXISTS `je_announce`;

CREATE TABLE `je_announce` (
  `ID` int(11) NOT NULL auto_increment,
  `Title` varchar(50) default '',
  `Content` longtext,
  `Author` varchar(50) default '',
  `DateAndTime` datetime default NULL,
  `IsSelected` int(11) NOT NULL default '0',
  `ChannelID` int(11) default '0',
  `ShowType` int(11) default '0',
  `OutTime` int(11) default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_announce` */

insert  into `je_announce`(`ID`,`Title`,`Content`,`Author`,`DateAndTime`,`IsSelected`,`ChannelID`,`ShowType`,`OutTime`) values (1,'JESHOP电子商务平台正式上线4','电子商务平台功能展示已经完成','管理员','2010-01-13 00:00:00',1,0,NULL,NULL),(2,'测试公告3','测试公告{page}{page}','管理员','2010-01-13 00:00:00',1,8,NULL,NULL),(3,'测试公告2','jeannouncedao','管理员','2010-01-13 00:00:00',0,0,NULL,NULL);

/*Table structure for table `je_answer` */

DROP TABLE IF EXISTS `je_answer`;

CREATE TABLE `je_answer` (
  `id` int(11) NOT NULL auto_increment,
  `titleId` int(11) default NULL,
  `type` int(11) default '0',
  `content` text,
  `corder` int(11) default NULL,
  `subAmount` int(11) default '0',
  `rightAnser` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_answer` */

insert  into `je_answer`(`id`,`titleId`,`type`,`content`,`corder`,`subAmount`,`rightAnser`) values (39,19,0,'图A是正确的 能够自动识别系统',0,0,0),(40,19,0,'图B是正确的 也能够正确识别',0,0,0),(41,19,0,'图C是正确的 完全能够识别系统',0,0,0),(42,19,0,'图D也是正确的 这样能够识别',0,0,0),(43,20,0,'A选项中的答案和题目最相近 可以考虑',0,0,0),(44,20,0,'B答案的题目也可以考虑进来',0,0,0),(45,20,0,'C答案完全实现了自主话',0,0,0),(46,20,0,'&nbsp;D答案也能够完成校内网络建设',0,0,0),(47,21,0,'选择A',0,0,0),(48,21,0,'选择B',0,0,0),(49,21,0,'选择C',0,0,0),(50,21,0,'选择D',0,0,0),(51,22,0,'很好',0,18,0),(52,22,0,'一般',0,4,0),(53,22,0,'很差',0,19,0),(54,22,0,'差的没有办法说',0,12,0),(56,22,0,'可以选择看看',0,50,1),(57,24,0,'<strong><span style=\"color:#f10b00;\">十分满意，2010年可以继续保持</span></strong>',0,20,0),(58,24,0,'不太满意 主要体现在售后服务方面',0,11,0),(59,24,0,'相当不满意 几乎没有售后',0,24,1),(60,24,0,'算了 还是别做了 十分不满',0,46,0),(61,25,0,'领先网络开发团队',0,15,0),(62,25,0,'百度网络建站开发团队',0,14,0),(63,25,0,'嘉盛世纪开发团队',0,22,0),(64,25,0,'宁县网络建设团队',0,22,0),(65,25,0,'新百元世纪开发团队',0,19,0),(66,27,0,'<p>09年最热的气候出现在7月</p>',0,2,0),(67,27,0,'<p>09年最热的气候出现在8月</p>',0,5,0),(68,27,0,'<p>09年最热的气候出现在9月</p>',0,1,0),(69,27,0,'<p>09年最热的气候出现在10月</p>',0,7,0),(71,27,4,'<p>您认为出现在几月呢</p>',0,10,0),(72,28,0,'多多网络科技',0,7,0),(73,28,0,'宁晨网络公司',0,8,0),(74,28,0,'长沙宁县网络科技',0,7,0),(75,28,4,'我建议参考以下网络公司',0,10,0),(76,29,0,'麒麟建站团队',0,NULL,0),(77,29,0,'文印建站团队',0,NULL,0),(78,29,0,'河马建站团队',0,NULL,0),(79,29,0,'南汽应建站团队',0,NULL,0),(80,30,0,'新答案',0,NULL,0),(81,30,0,'新答案两个',0,NULL,0),(82,30,0,'新答案三个',0,NULL,0),(83,30,0,'新答案四个',0,NULL,0);

/*Table structure for table `je_bankcard` */

DROP TABLE IF EXISTS `je_bankcard`;

CREATE TABLE `je_bankcard` (
  `cardId` int(11) NOT NULL auto_increment,
  `cardCode` varchar(255) default '',
  `cardAdd` varchar(50) default '',
  `userName` varchar(50) default '',
  `other` varchar(50) default '',
  `linkOne` int(11) default '0',
  `linkTwo` int(11) default '0',
  `linkThree` int(11) default '0',
  `type` int(11) default '0',
  `status` int(11) default '0',
  PRIMARY KEY  (`cardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_bankcard` */

/*Table structure for table `je_book` */

DROP TABLE IF EXISTS `je_book`;

CREATE TABLE `je_book` (
  `GuestID` int(11) NOT NULL auto_increment,
  `KindID` int(11) default '0',
  `TopicID` int(11) default '0',
  `GuestMaxID` int(11) default '0',
  `GuestType` int(11) default '0',
  `GuestName` varchar(50) default '',
  `GuestSex` varchar(10) default '',
  `GuestMsn` varchar(50) default '',
  `GuestIcq` varchar(20) default '',
  `GuestEmail` varchar(255) default '',
  `GuestHomepage` varchar(255) default '',
  `GuestImages` varchar(10) default '',
  `GuestFace` varchar(10) default '',
  `GuestIP` varchar(50) default '',
  `GuestTitle` varchar(255) default '',
  `GuestContent` longtext,
  `GuestDatetime` datetime default NULL,
  `Hits` int(11) default '0',
  `ReplyNum` int(11) default '0',
  `LastReplyContent` longtext,
  `LastReplyGuest` varchar(50) default '',
  `LastReplyTime` datetime default NULL,
  `LastReplyTitle` varchar(255) default '',
  `GuestReply` longtext,
  `GuestReplyAdmin` varchar(50) default '',
  `GuestReplyDatetime` datetime default NULL,
  `Quintessence` int(11) default '0',
  `GuestIsPassed` int(11) NOT NULL default '0',
  `GuestIsPrivate` int(11) NOT NULL default '0',
  `OnTop` int(11) default '0',
  `ReplyIsPrivate` int(11) NOT NULL default '0',
  `GuestContentLength` int(11) default '0',
  PRIMARY KEY  (`GuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_book` */

/*Table structure for table `je_buycar` */

DROP TABLE IF EXISTS `je_buycar`;

CREATE TABLE `je_buycar` (
  `shopfavID` int(11) NOT NULL auto_increment,
  `productID` int(11) default '0',
  `userID` int(11) default '0',
  `favTime` datetime default NULL,
  `isElite` int(11) default '0',
  `favinfo` longtext,
  `productNum` int(11) default '0',
  PRIMARY KEY  (`shopfavID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_buycar` */

/*Table structure for table `je_card` */

DROP TABLE IF EXISTS `je_card`;

CREATE TABLE `je_card` (
  `cardId` int(11) NOT NULL auto_increment,
  `cardCode` text NOT NULL,
  `cardPass` varchar(50) NOT NULL default '',
  `cardMoney` double(19,4) NOT NULL default '0.0000',
  `cardStat` int(11) default '0',
  `cardGroup` int(11) default '0',
  `userId` int(11) default '0',
  PRIMARY KEY  (`cardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_card` */

insert  into `je_card`(`cardId`,`cardCode`,`cardPass`,`cardMoney`,`cardStat`,`cardGroup`,`userId`) values (1,'lx585818036225','588123',50.0000,2,0,0),(2,'lx623013403080','743575',50.0000,2,0,0),(3,'lx162145180636','184557',50.0000,2,0,0),(4,'lx443185447088','344702',50.0000,2,0,0),(5,'lx470717684576','055847',50.0000,2,0,0),(6,'lx043373026618','442382',50.0000,2,0,0),(7,'lx106831157716','328676',50.0000,2,0,0),(8,'lx276773072503','642615',50.0000,0,0,0),(9,'lx146565064651','338662',50.0000,0,0,0),(10,'lx460426554881','456103',50.0000,0,0,0),(11,'lx368171663012','444424',30.0000,0,0,0),(12,'lx255004648136','830343',30.0000,0,0,0),(13,'lx420701256358','671615',30.0000,0,0,0),(14,'lx461153601357','502330',30.0000,0,0,0),(15,'lx362234345676','035127',30.0000,0,0,0),(16,'lx187437471376','110411',30.0000,0,0,0),(17,'lx207470118051','620305',30.0000,0,0,0),(18,'lx266183843217','772881',30.0000,0,0,0),(19,'lx556448613480','220242',30.0000,0,0,0),(20,'lx828375434800','323383',30.0000,0,0,0),(21,'lx832476171025','265316',30.0000,0,0,0),(22,'lx040588115537','003502',30.0000,0,0,0),(23,'lx433627621766','202634',30.0000,0,0,0),(24,'lx415664532133','566023',30.0000,0,0,0),(25,'lx418481462241','577583',30.0000,0,0,0),(26,'lx304553567076','702681',30.0000,0,0,0),(27,'lx634832865232','832112',30.0000,0,0,0),(28,'lx084035227776','500653',30.0000,0,0,0),(29,'lx027523458688','007803',30.0000,0,0,0),(30,'lx082415221375','476541',30.0000,0,0,0),(31,'lx880412267221','204258',30.0000,0,0,0),(32,'lx218074070353','371581',30.0000,0,0,0),(33,'lx320418484755','505121',30.0000,0,0,0),(34,'lx882516622716','283516',30.0000,0,0,0),(35,'lx320338464430','806778',30.0000,0,0,0),(36,'lx628263211728','502144',30.0000,0,0,0),(37,'lx164618217105','337828',30.0000,0,0,0),(38,'lx120600547884','407240',30.0000,0,0,0),(39,'lx400035182712','176814',30.0000,0,0,0),(40,'lx377702856548','874471',30.0000,0,0,0),(41,'lx135527556376','437008',30.0000,0,0,0),(42,'lx243574533323','863228',30.0000,0,0,0),(43,'lx248701008508','870181',30.0000,0,0,0),(44,'lx838233235117','765477',30.0000,0,0,0),(45,'lx835533526764','174360',30.0000,0,0,0),(46,'lx377604480867','261577',30.0000,0,0,0),(47,'lx335161084031','632253',30.0000,0,0,0),(48,'lx518067441402','283331',30.0000,0,0,0),(49,'lx706630030526','330480',30.0000,0,0,0),(50,'lx356511124642','552816',30.0000,0,0,0),(51,'lx811172070456','347344',30.0000,0,0,0),(52,'lx260501732763','060572',30.0000,0,0,0),(53,'lx774811478461','018743',30.0000,0,0,0),(54,'lx606024833316','257607',30.0000,0,0,0),(55,'lx788852384504','370151',30.0000,0,0,0),(56,'lx512422132610','612840',30.0000,0,0,0),(57,'lx810712277405','725627',30.0000,0,0,0),(58,'lx207705422322','083808',30.0000,0,0,0),(59,'lx140070444581','232303',30.0000,0,0,0),(60,'lx310117664824','601130',30.0000,0,0,0),(61,'lx423602142103','125446',30.0000,0,0,0),(62,'lx473848111558','072061',30.0000,0,0,0),(63,'lx265537417164','854137',30.0000,0,0,0),(64,'lx008600468365','062387',30.0000,0,0,0),(65,'lx785218334687','336271',30.0000,0,0,0),(66,'lx636870788434','557346',30.0000,0,0,0),(67,'lx734410022755','221386',30.0000,0,0,0),(68,'lx274776217320','335044',30.0000,0,0,0),(69,'lx751177247543','035455',30.0000,0,0,0),(70,'lx200626870658','168264',30.0000,0,0,0);

/*Table structure for table `je_chanclass` */

DROP TABLE IF EXISTS `je_chanclass`;

CREATE TABLE `je_chanclass` (
  `chanClassID` int(11) NOT NULL default '0',
  `chanName` char(10) NOT NULL default '',
  `chanIsUsed` int(11) default '0',
  PRIMARY KEY  (`chanClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_chanclass` */

insert  into `je_chanclass`(`chanClassID`,`chanName`,`chanIsUsed`) values (1,'图文频道',1),(2,'商城频道',1),(3,'软件频道',1);

/*Table structure for table `je_channel` */

DROP TABLE IF EXISTS `je_channel`;

CREATE TABLE `je_channel` (
  `ChannelID` int(11) NOT NULL auto_increment,
  `ChannelName` varchar(50) NOT NULL default '',
  `ChannelShortName` varchar(50) default '',
  `ChannelItemUnit` varchar(50) default '',
  `ReadMe` varchar(50) default '',
  `Meta_Keywords` varchar(50) default '',
  `Meta_Description` varchar(50) default '',
  `ChannelPicUrl` varchar(50) default '',
  `OrderID` int(11) NOT NULL default '0',
  `OpenType` int(11) NOT NULL default '0',
  `ChannelType` int(11) NOT NULL default '0',
  `LinkUrl` varchar(50) default '',
  `ChannelDir` varchar(50) default '',
  `ModuleType` int(11) default '0',
  `Disabled` int(11) NOT NULL default '0',
  `ShowName` int(11) NOT NULL default '0',
  `ShowNameOnPath` int(11) NOT NULL default '0',
  `CheckLevel` int(11) NOT NULL default '0',
  `EnableUploadFile` int(11) NOT NULL default '0',
  `UploadDir` varchar(50) default '',
  `MaxFileSize` int(11) default '0',
  `HitsOfHot` int(11) default '0',
  `DaysOfNew` int(11) default '0',
  `MaxPerLine` int(11) default '0',
  `UpFileType` varchar(50) default '',
  `DefaultSkinID` int(11) default '0',
  `Template_Index` int(11) default '0',
  `TopMenuType` int(11) default '0',
  `ClassGuideType` int(11) default '0',
  `UseCreateHTML` int(11) NOT NULL default '0',
  `ItemCount` int(11) default '0',
  `ItemChecked` int(11) default '0',
  `CommentCount` int(11) default '0',
  `SpecialCount` int(11) default '0',
  `HitsCount` int(11) default '0',
  `StructureType` int(11) default '0',
  `ListFileType` int(11) default '0',
  `FileNameType` int(11) default '0',
  `AutoCreateType` int(11) default '0',
  `FileExt_Index` int(11) default '0',
  `FileExt_List` int(11) default '0',
  `FileExt_Item` int(11) default '0',
  `UpdatePages` int(11) default '0',
  `ChannelPurview` int(11) default '0',
  `arrGroupID` varchar(50) default '',
  `AuthorInfoLen` int(11) default '0',
  `MaxPerPage_Index` int(11) default '0',
  `MaxPerPage_SearchResult` int(11) default '0',
  `MaxPerPage_New` int(11) default '0',
  `MaxPerPage_Hot` int(11) default '0',
  `MaxPerPage_Elite` int(11) default '0',
  `MaxPerPage_SpecialList` int(11) default '0',
  `TimingCreateSetting` varchar(50) default '',
  `EmailOfReject` varchar(50) default '',
  `EmailOfPassed` varchar(50) default '',
  `Custom_Content` varchar(50) default '',
  `arrEnabledTabs` varchar(50) default '',
  `CommandChannelPoint` int(11) default '0',
  `Fields_Options` varchar(50) default '',
  PRIMARY KEY  (`ChannelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_channel` */

insert  into `je_channel`(`ChannelID`,`ChannelName`,`ChannelShortName`,`ChannelItemUnit`,`ReadMe`,`Meta_Keywords`,`Meta_Description`,`ChannelPicUrl`,`OrderID`,`OpenType`,`ChannelType`,`LinkUrl`,`ChannelDir`,`ModuleType`,`Disabled`,`ShowName`,`ShowNameOnPath`,`CheckLevel`,`EnableUploadFile`,`UploadDir`,`MaxFileSize`,`HitsOfHot`,`DaysOfNew`,`MaxPerLine`,`UpFileType`,`DefaultSkinID`,`Template_Index`,`TopMenuType`,`ClassGuideType`,`UseCreateHTML`,`ItemCount`,`ItemChecked`,`CommentCount`,`SpecialCount`,`HitsCount`,`StructureType`,`ListFileType`,`FileNameType`,`AutoCreateType`,`FileExt_Index`,`FileExt_List`,`FileExt_Item`,`UpdatePages`,`ChannelPurview`,`arrGroupID`,`AuthorInfoLen`,`MaxPerPage_Index`,`MaxPerPage_SearchResult`,`MaxPerPage_New`,`MaxPerPage_Hot`,`MaxPerPage_Elite`,`MaxPerPage_SpecialList`,`TimingCreateSetting`,`EmailOfReject`,`EmailOfPassed`,`Custom_Content`,`arrEnabledTabs`,`CommandChannelPoint`,`Fields_Options`) values (1,'在线商城','在线商城','条','系统默认在线商城','在线商城','',NULL,1,0,2,'ShowShopChannel.jsp','',2,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'在线商城','在线商城','条','促销商品默认频道','在线商城','<p>sdsdfsdf</p>',NULL,1,0,2,'ShowShopChannel.jsp','',2,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'软件-下载1','软件-下载1','套','系统默认文章频道','软件下载频道管理1','软件下载频道的内容管理方面1',NULL,1,0,2,'ShowSoftChanel.jsp','soft1',1,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'软件下载1','软件下载1','套','在线帮住信息','软件下载频道管理1','软件下载频道的内容管理方面1',NULL,1,0,2,'ShowSoftChanel.jsp','soft1',3,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'文章演示频道','文章演示','套','会员开店在线信息','软件下载频道管理1','软件下载频道的内容管理方面1',NULL,2,1,2,'ShowNewsChannel.jsp','yanshi ',1,0,0,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'使用教程','使用教程','条','使用教程在线帮助','使用教程在线帮助','',NULL,1,0,2,'ShowNewsChannel.jsp','',1,0,1,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'禁止频道','禁止频道','套','店铺介绍在线帮助','软件下载频道管理1','软件下载频道的内容管理方面1',NULL,1,0,2,'ShowSoftChanel.jsp','soft1',3,0,0,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'平道','软件下载1','套',NULL,'软件下载频道管理1','软件下载频道的内容管理方面1',NULL,3,1,1,'ShowSoftChanel.jsp','soft1',3,0,0,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_chat` */

DROP TABLE IF EXISTS `je_chat`;

CREATE TABLE `je_chat` (
  `id` int(11) NOT NULL auto_increment,
  `text` longtext,
  `username` varchar(24) default '(null)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_chat` */

/*Table structure for table `je_city` */

DROP TABLE IF EXISTS `je_city`;

CREATE TABLE `je_city` (
  `AreaID` int(11) NOT NULL auto_increment,
  `Country` varchar(50) default '',
  `Province` varchar(50) default '',
  `City` varchar(50) default '',
  `Area` varchar(50) default '',
  `PostCode` varchar(50) default '',
  `AreaCode` varchar(50) default '',
  PRIMARY KEY  (`AreaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_city` */

/*Table structure for table `je_class` */

DROP TABLE IF EXISTS `je_class`;

CREATE TABLE `je_class` (
  `ClassID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) NOT NULL default '0',
  `ClassName` varchar(50) NOT NULL default '',
  `ClassType` int(11) NOT NULL default '0',
  `OpenType` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  `ParentPath` varchar(50) NOT NULL default '',
  `Depth` int(11) NOT NULL default '0',
  `RootID` int(11) NOT NULL default '0',
  `Child` int(11) NOT NULL default '0',
  `arrChildID` varchar(50) default '',
  `PrevID` int(11) NOT NULL default '0',
  `NextID` int(11) NOT NULL default '0',
  `OrderID` int(11) NOT NULL default '0',
  `Tips` varchar(50) default '',
  `Readme` varchar(50) default '',
  `Meta_Keywords` varchar(50) default '',
  `Meta_Description` varchar(50) default '',
  `LinkUrl` varchar(50) default '',
  `ClassPicUrl` varchar(50) default '',
  `ClassDir` varchar(50) default '',
  `ParentDir` varchar(50) default '',
  `TemplateID` int(11) default '0',
  `ShowOnTop` int(11) NOT NULL default '0',
  `ShowOnIndex` int(11) NOT NULL default '0',
  `IsElite` int(11) NOT NULL default '0',
  `EnableAdd` int(11) NOT NULL default '0',
  `EnableProtect` int(11) NOT NULL default '0',
  `ItemListOrderType` int(11) default '0',
  `ItemOpenType` int(11) default '0',
  `ClassPurview` smallint(6) default '0',
  `EnableComment` int(11) NOT NULL default '0',
  `CheckComment` int(11) NOT NULL default '0',
  `PresentExp` double(53,0) default '0',
  `DefaultItemChargeType` int(11) default '0',
  `DefaultItemPitchTime` int(11) default '0',
  `DefaultItemReadTimes` int(11) default '0',
  `DefaultItemDividePercent` int(11) default '0',
  `Custom_Content` varchar(50) default '',
  `CommandClassPoint` int(11) default '0',
  `DefaultReadMoney` double(19,4) default '0.0000',
  PRIMARY KEY  (`ClassID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_class` */

insert  into `je_class`(`ClassID`,`ChannelID`,`ClassName`,`ClassType`,`OpenType`,`ParentID`,`ParentPath`,`Depth`,`RootID`,`Child`,`arrChildID`,`PrevID`,`NextID`,`OrderID`,`Tips`,`Readme`,`Meta_Keywords`,`Meta_Description`,`LinkUrl`,`ClassPicUrl`,`ClassDir`,`ParentDir`,`TemplateID`,`ShowOnTop`,`ShowOnIndex`,`IsElite`,`EnableAdd`,`EnableProtect`,`ItemListOrderType`,`ItemOpenType`,`ClassPurview`,`EnableComment`,`CheckComment`,`PresentExp`,`DefaultItemChargeType`,`DefaultItemPitchTime`,`DefaultItemReadTimes`,`DefaultItemDividePercent`,`Custom_Content`,`CommandClassPoint`,`DefaultReadMoney`) values (1,1,'家电/手机通讯/电脑产品/xiugai',0,0,0,'',1,1,3,'',0,0,0,'','','','电脑家电','ShowClass.jsp','1253355295562.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'珠宝饰品/宠物',0,0,0,'',1,1,5,'|10|11|12|13|27',1,1,1,'','','','珠宝饰品宠物','showClass.jsp','1253355355703.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'女性服饰/鞋帽/箱包',0,0,0,'',1,1,4,'|14|15|28|29',1,1,1,'','','','女性服饰/鞋帽/箱包','showClass.jsp','1253355405281.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'厨卫用品/家居建材',0,0,0,'',1,1,1,'|30',1,1,1,'','','厨卫用品/家居建材','厨卫用品/家居建材','showClass.jsp','1252936224984.gif','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'时尚家饰/礼品收藏',0,0,0,'',1,1,1,'|31',1,1,1,'','','时尚家饰/礼品收藏','时尚家饰/礼品收藏','showClass.jsp','1253355488671.gif','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'办公运品/运动器材',0,0,0,'',1,1,1,'|32',1,1,1,'','','时尚家饰/礼品收藏','时尚家饰/礼品收藏时尚家饰/礼品收藏','showClass.jsp','1253126339546.gif','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,'家用家电',0,0,1,'',2,1,0,'',0,0,0,'','','时尚家饰/礼品收藏','时尚家饰/礼品收藏','ShowClass.jsp','1253355581750.bmp','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1,'个人护理s',0,0,1,'',2,1,0,'',0,0,0,'','','时尚家饰/礼品收藏','时尚家饰/礼品收藏','showClass.jsp','1253355608578.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,1,'居家电器',0,0,1,'',2,1,0,'',1,1,1,'','','时尚家饰/礼品收藏','时尚家饰/礼品收藏时尚家饰/礼品收藏','showClass.jsp','1252936224984.gif','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,1,'珠宝饰品',0,0,2,'',2,1,0,'',1,1,1,'','','时尚家饰/礼品收藏','时尚家饰/礼品收藏','showClass.jsp','1253355355703.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,1,'工艺摆设',0,0,2,'',2,1,0,'',1,1,1,'','','工艺摆设','工艺摆设','showClass.jsp','1253355722875.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,1,'宠物订购',0,0,2,'',2,1,0,'',1,1,1,'','','时尚家饰/礼品收藏','<p>宠物订购</p>','showClass.jsp','1253355762281.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,1,'礼品收藏',0,0,2,'',2,1,0,'',1,1,1,'','','礼品收藏','礼品收藏','showClass.jsp','1253355355703.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,1,'绣花布鞋',0,0,3,'',2,1,0,'',1,1,1,'','','绣花布鞋','绣花布鞋','showClass.jsp','1253355355703.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,1,'女性休闲',0,0,3,'',2,1,0,'',1,1,1,'','','','女性休闲','showClass.jsp','1253355355703.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,'行业资讯',0,0,0,'',1,1,1,'|41',1,1,1,'','','行业资讯','行业资讯','ShowNewsClass.jsp','1253438990609.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,5,'会员开店',0,0,0,'',1,1,0,'',1,1,1,'','','会员开店','会员开店','ShowNewsClass.jsp','1253453678031.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,5,'商城系统',0,0,0,'',1,1,0,'',1,1,1,'','','商城系统','商城系统','ShowNewsClass.jsp','1253453738359.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,'装饰搭配',0,0,0,'',1,1,0,'',1,1,1,'','','装饰搭配','装饰搭配','ShowNewsClass.jsp','1253455035781.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,'季节流行',0,0,0,'',1,1,0,'',1,1,1,'','','装饰搭配','装饰搭配装饰搭配装饰搭配','ShowNewsClass.jsp','1253455099609.bmp','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,'购物拾零',0,0,0,'',1,1,0,'',1,1,1,'','','装饰搭配装饰搭配','装饰搭配装饰搭配装饰搭配装饰搭配','ShowNewsClass.jsp','1253455326187.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,4,'新手指南',0,0,0,'',1,1,0,'',1,1,1,'','','新手指南','新手指南新手指南','ShowNewsClass.jsp','1253516033734.gif','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,4,'优惠政策',0,0,0,'',1,1,0,'',1,1,1,'','','优惠政策','优惠政策','ShowNewsClass.jsp','1253516071203.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,4,'会员积分',0,0,0,'',1,1,0,'',1,1,1,'','','会员积分计划','会员积分计划','ShowNewsClass.jsp','1253516103078.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,4,'售后服务',0,0,0,'',1,1,0,'',0,0,0,'','','售后服务','<p>售后服务</p>','ShowNewsClass.jsp','1253516178734.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,4,'帮助中心',0,0,0,'',1,1,0,'',1,1,1,'','','会员积分计划','帮助中心','ShowNewsClass.jsp','1253516251859.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,1,'女性饰品',0,0,2,'',2,1,0,'',1,1,1,'','','女性饰品','女性饰品','showClass.jsp','1253785017453.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,1,'女性服饰',0,0,3,'',2,1,0,'',1,1,1,'','','女性服饰系列精品','女性服饰系列精品','ShowClass.jsp','1253785745406.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,1,'流行精品/liuxing',0,0,3,'',2,1,0,'',0,0,0,'','','流行精品服饰','流行精品服饰','ShowClass.jsp','1253785777375.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,1,'整体厨房',0,0,4,'',2,1,0,'',1,1,1,'','','整体厨房','整体厨房','ShowClass.jsp','1253785823015.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,1,'精品礼品',0,0,5,'',2,1,0,'',1,1,1,'','','精致礼品选择','精致礼品选择','ShowClass.jsp','1253785893890.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,1,'特步服饰',0,0,6,'',2,1,0,'',1,1,1,'','','特步服饰特步服饰','特步服饰特步服饰','ShowClass.jsp','1253785934718.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,2,'厂家直销产品/厂家活动',0,0,0,'',1,1,3,'|37|38|39',1,1,1,'','','厂家直销产品 厂家活动','厂家直销产品 厂家活动','ShowClass.jsp','1253861121578.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,2,'店家店庆促销',0,0,0,'',1,1,0,'',1,1,1,'','','店家店庆促销','店家店庆促销','ShowClass.jsp','1253861168000.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,2,'清仓甩卖/积压变现',0,0,0,'',1,1,0,'',1,1,1,'','','清仓甩卖/积压变现','清仓甩卖/积压变现清仓甩卖/积压变现','ShowClass.jsp','1253861251781.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,2,'其他促销活动',0,0,0,'',1,1,0,'',1,1,1,'','','清仓甩卖/积压变现','清仓甩卖/积压变现','ShowClass.jsp','1253861280859.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,2,'佳美海尔专卖店店庆',0,0,33,'',2,1,0,'',1,1,1,'','','佳美海尔专卖店店庆','佳美海尔专卖店店庆','ShowClass.jsp','1253862779953.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,2,'倾城国美店庆活动',0,0,33,'',2,1,0,'',1,1,1,'','','倾城国美店庆活动','倾城国美店庆活动','ShowClass.jsp','1253862932359.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,2,'兰溪海尔店庆活动',0,0,33,'',2,1,0,'',1,1,1,'','','兰溪海尔店庆活动','兰溪海尔店庆活动','ShowClass.jsp','1253862964328.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,3,'经典回忆',0,0,0,'',1,1,0,'',1,1,1,'','','经典回忆','经典回忆','ShowNewsClass.jsp','1253863185968.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,3,'国内行业资讯',0,0,16,'',2,1,0,'',1,1,1,'','','国内行业资讯','国内行业资讯','ShowNewsClass.jsp','1253906920546.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,6,'首页标签',0,0,0,'',1,1,1,'|52',0,0,0,'','','首页标签使用调用','首页标签使用','ShowNewsClass.jsp','1254030484375.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,6,'商品频道标签',0,0,0,'',1,1,0,'',0,0,0,'','','商品频道标签使用','商品频道标签使用','ShowNewsClass.jsp','1254030516625.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,6,'文章频道标签',0,0,0,'',1,1,0,'',0,0,0,'','','文章频道标签','文章频道标签','ShowNewsClass.jsp','1254030542671.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,6,'商品栏目标签',0,0,0,'',1,1,0,'',0,0,0,'','','商品栏目标签','商品栏目标签','ShowNewsClass.jsp','1254030571281.jpg','',NULL,1,0,0,1,0,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,6,'商品内页标签',0,0,0,'',1,1,0,'',1,1,1,'','','商品内页标签','商品内页标签','ShowClass.jsp','1254030699031.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,6,'文章内页标签',0,0,0,'',1,1,0,'',1,1,1,'','','文章内页标签','文章内页标签','ShowClass.jsp','1254030720375.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,6,'系统公用标签',0,0,0,'',1,1,0,'',1,1,1,'','','系统公用标签','系统公用标签','ShowClass.jsp','1254030769343.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,6,'搜索调用标签',0,0,0,'',1,1,0,'',1,1,1,'','','搜索调用标签','搜索调用标签','ShowNewsClass.jsp','1254030858734.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,6,'店铺列表标签',0,0,0,'',1,1,0,'',1,1,1,'','','店铺列表标签','店铺列表标签','ShowNewsClass.jsp','1254030924046.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,6,'会员列表调用标签',0,0,0,'',1,1,0,'',1,1,1,'','','会员列表调用标签','会员列表调用标签','ShowNewsClass.jsp','1254030947515.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,6,'首页快捷标签',0,0,42,'',2,1,0,'',1,1,1,'','','首页快捷标签','首页快捷标签','ShowNewsClass.jsp','1254032527203.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,7,'建立特色店铺',0,0,0,'',1,1,0,'',1,1,1,'','','建立特色店铺','建立特色店铺','ShowNewsClass.jsp','1254032700828.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,7,'定制店铺模板',0,0,0,'',1,1,0,'',1,1,1,'','','定制店铺模板','定制店铺模板','ShowNewsClass.jsp','1254032917828.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,7,'开店会员开通',0,0,0,'',1,1,0,'',1,1,1,'','','开店会员开通','开店会员开通','ShowNewsClass.jsp','1254032961671.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,7,'会员网店收费',0,0,0,'',1,1,0,'',1,1,1,'','','会员网店收费','会员网店收费','ShowNewsClass.jsp','1254032997984.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,8,'普通应用软件下载',0,0,0,'',1,1,1,'|60|59|58',1,1,1,'','','普通应用软件下载','普通应用软件下载','ShowClass.jsp','uploadphoto//2009-10-15//1255621974328.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,8,'国产应用软件',0,0,57,'',2,1,1,'|60|59',1,1,1,'','','国产应用软件下载','国产应用软件下载','ShowClass.jsp','uploadphoto//2009-10-16//1255623005375.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,8,'地方应用软件',0,0,58,'',3,1,1,'|60',1,1,1,'','','地方应用软件下载','地方应用软件下载','ShowClass.jsp','uploadphoto//2009-10-16//1255623034265.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,8,'其他应用软件下载',0,0,59,'',4,1,0,'',1,1,1,'','','其他用用软件下载','其他用用软件下载','ShowClass.jsp','uploadphoto//2009-10-16//1255623061750.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,1,'家电/手机通讯/电脑产品/xiugai',0,0,0,'',1,1,1,'|62',1,1,1,'','','JeChanClassDAO','JeChanClassDAO','ShowClass.jsp','uploadphoto//2010-01-14//1263453231359.jpg','',NULL,1,1,1,1,1,1,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_classtitle` */

DROP TABLE IF EXISTS `je_classtitle`;

CREATE TABLE `je_classtitle` (
  `id` int(11) NOT NULL auto_increment,
  `classId` int(11) default NULL,
  `title` varchar(512) default NULL,
  `allNum` double default NULL,
  `type` int(11) default NULL,
  `Corder` int(11) default NULL,
  `userStr` text,
  `enable` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_classtitle` */

insert  into `je_classtitle`(`id`,`classId`,`title`,`allNum`,`type`,`Corder`,`userStr`,`enable`) values (19,1,'三角形--函数的应用实例讲解辨别哪个是正确的',4,0,0,NULL,NULL),(20,1,'看看以下问题中哪个答案和题目相近请选择',3,1,3,NULL,1),(21,1,'选择一个最相近系统做为考试系统你会选择哪个系统呢',3,0,0,NULL,1),(22,2,'网站设计调查',0,0,0,NULL,0),(23,1,'简要回答2009年年末财政报告',4,4,0,NULL,0),(24,2,'选择网站2009年度满意度调查',10,0,0,NULL,0),(25,2,'09年最优秀建站机构选择',0,1,0,NULL,0),(26,2,'简要回答2009年财政报告简拼',0,4,0,NULL,0),(27,2,'选择您的答案？如果不合适写出您的意见',0,2,0,NULL,0),(28,2,'09年最优秀建站机构选择(提交您的答案)',0,3,0,NULL,0),(29,3,'09年最优秀建站机构选择',0,0,0,NULL,0),(30,3,'我的新建题目',12,1,0,NULL,0),(31,1,'JESHOP电子商务平台正式上线4',3,0,4,NULL,0);

/*Table structure for table `je_classtype` */

DROP TABLE IF EXISTS `je_classtype`;

CREATE TABLE `je_classtype` (
  `id` int(11) NOT NULL auto_increment,
  `classType` int(11) default NULL COMMENT '字段类型   0 网站调查 10 调查问卷  100题库',
  `className` varchar(512) default NULL,
  `classFile` varchar(256) default NULL,
  `channelId` int(11) default NULL,
  `corder` int(11) default NULL,
  `alltime` date default NULL,
  `createtime` date default NULL,
  `starttime` date default NULL,
  `endtime` date default NULL,
  `userStr` text,
  `enable` int(11) default '1',
  `titleNum` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_classtype` */

insert  into `je_classtype`(`id`,`classType`,`className`,`classFile`,`channelId`,`corder`,`alltime`,`createtime`,`starttime`,`endtime`,`userStr`,`enable`,`titleNum`) values (1,0,'女性服饰销售总体销售中所占比列',NULL,0,NULL,NULL,NULL,'2009-11-15','2009-11-18',NULL,1,5),(2,0,'男士如何体现休闲服饰的风采魅力',NULL,0,NULL,NULL,NULL,'2009-11-02','2009-11-23',NULL,1,5),(3,100,'酒钢三中第二小学题库在线考试系统题库设计',NULL,0,NULL,NULL,NULL,'2009-11-03','2009-11-25',NULL,0,2);

/*Table structure for table `je_comment` */

DROP TABLE IF EXISTS `je_comment`;

CREATE TABLE `je_comment` (
  `CommentID` int(11) NOT NULL auto_increment,
  `ModuleType` int(11) default '0',
  `InfoID` int(11) default '0',
  `UserType` int(11) default '0',
  `UserName` varchar(50) default '',
  `QQ` varchar(50) default '',
  `Sex` varchar(50) default '',
  `MSN` varchar(50) default '',
  `Email` varchar(50) default '',
  `Homepage` varchar(50) default '',
  `IP` varchar(50) default '',
  `WriteTime` datetime default NULL,
  `Score` varchar(50) default '',
  `Content` longtext,
  `ReplyName` varchar(50) default '',
  `ReplyContent` longtext,
  `ReplyTime` datetime default NULL,
  `Passed` int(11) default '0',
  PRIMARY KEY  (`CommentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_comment` */

insert  into `je_comment`(`CommentID`,`ModuleType`,`InfoID`,`UserType`,`UserName`,`QQ`,`Sex`,`MSN`,`Email`,`Homepage`,`IP`,`WriteTime`,`Score`,`Content`,`ReplyName`,`ReplyContent`,`ReplyTime`,`Passed`) values (1,2,42,0,'这款产品的成色很不错','这款产品的成色很不错',NULL,NULL,NULL,NULL,NULL,'2009-09-25 12:04:17','1','                        这款产品的成色很不错这款产品的成色很不错\r\n对啊 最新商品\r\n最新上货\r\n            kk绝对可以\r\n            \r\n            \r\n            ','admint','<p>this.jecommentdthis.jecomm</p>\r\n<p>entdaothis.jecommentdaothis.jeco</p>\r\n<p>mmentdaothis.jeco</p>\r\n<p>mmentdaothis.jecommentd</p>\r\n<p>aothis.jecommentdaoaothis.jecom</p>\r\n<p>mentdaothis.jecommentdao</p>','2010-01-13 03:01:04',0),(2,2,57,0,'yanglkong','274797328',NULL,NULL,NULL,NULL,NULL,'2009-12-11 17:12:24','1','            <p>ssssssssssssssssssssssss</p>\r\n<p>sdfsdfa</p>\r\n<p>lll\r\n            ','admin','<p>this.jecommentdthis.jecomm</p>\r\n<p></p>','2010-01-13 03:01:16',0),(3,3,22,0,'yanglong','274797328',NULL,NULL,NULL,NULL,NULL,'2010-01-15 15:54:44','1','AbsUserCoreAbsUserCoreAbsUserCoreAbsUserCore',NULL,NULL,NULL,0),(4,1,57,0,'yanglong','274797328',NULL,NULL,NULL,NULL,NULL,'2010-01-15 16:07:28','1','this.NewsBean.setHits(this.NewsBean.getHits()+1);this.NewsBean.setHits(this.NewsBean.getHits()+1);',NULL,NULL,NULL,0),(5,1,63,0,'yanglong','274797328',NULL,NULL,NULL,NULL,NULL,'2010-01-16 01:25:32','1','测试资源发布信息管理系统测试资源发布信息管理系统{page}',NULL,NULL,NULL,0);

/*Table structure for table `je_config` */

DROP TABLE IF EXISTS `je_config`;

CREATE TABLE `je_config` (
  `siteID` int(11) NOT NULL auto_increment,
  `SiteName` varchar(50) default '',
  `SiteTitle` varchar(50) default '',
  `SiteUrl` varchar(50) default '',
  `InstallDir` varchar(50) default '',
  `LogoUrl` varchar(50) default '',
  `BannerUrl` varchar(50) default '',
  `WebmasterName` varchar(50) default '',
  `WebmasterEmail` varchar(50) default '',
  `Copyright` longtext,
  `Meta_Keywords` text,
  `Meta_Description` longtext,
  `SiteKey` varchar(50) default '',
  `ShowSiteChannel` int(11) NOT NULL default '0',
  `ShowAdminLogin` int(11) NOT NULL default '0',
  `EnableLinkReg` int(11) NOT NULL default '0',
  `EnableCountFriendSiteHits` int(11) NOT NULL default '0',
  `EnableSoftKey` int(11) NOT NULL default '0',
  `AdminDir` varchar(50) default '',
  `ADDir` varchar(50) default '',
  `AnnounceCookieTime` int(11) default '0',
  `HitsOfHot` int(11) default '0',
  `FileExt_SiteIndex` int(11) default '0',
  `FileExt_SiteSpecial` int(11) default '0',
  `SiteUrlType` int(11) default '0',
  `Modules` varchar(50) default '',
  `LockIPType` int(11) NOT NULL default '0',
  `LockIP` varchar(50) default '',
  `EnableUserReg` int(11) NOT NULL default '0',
  `EmailCheckReg` int(11) NOT NULL default '0',
  `AdminCheckReg` int(11) NOT NULL default '0',
  `EnableMultiRegPerEmail` int(11) NOT NULL default '0',
  `UserNameLimit` int(11) default '0',
  `UserNameMax` int(11) default '0',
  `UserName_RegDisabled` varchar(50) default '',
  `RegFields_MustFill` varchar(50) default '',
  `EnableCheckCodeOfLogin` int(11) NOT NULL default '0',
  `EnableCheckCodeOfReg` int(11) NOT NULL default '0',
  `EnableQAofReg` int(11) NOT NULL default '0',
  `QAofReg` varchar(50) default '',
  `PresentExp` double(53,0) default '0',
  `PresentMoney` double(53,0) default '0',
  `PresentPoint` int(11) default '0',
  `PresentValidNum` int(11) default '0',
  `PresentValidUnit` int(11) default '0',
  `MoneyExchangePoint` double(53,0) default '0',
  `UserExpExchangePoint` double(53,0) default '0',
  `UserExpExchangeValidDay` double(53,0) default '0',
  `PresentExpPerLogin` int(11) default '0',
  `PresentExpPerElite` int(11) default '0',
  `PointName` varchar(50) default '',
  `PointUnit` varchar(50) default '',
  `EmailOfRegCheck` varchar(50) default '',
  `MailObject` int(11) default '0',
  `MailServer` varchar(50) default '',
  `MailServerUserName` varchar(50) default '',
  `MailServerPassWord` varchar(50) default '',
  `MailDomain` varchar(50) default '',
  `PhotoObject` int(11) default '0',
  `Thumb_DefaultWidth` int(11) default '0',
  `Thumb_DefaultHeight` int(11) default '0',
  `Thumb_Arithmetic` int(11) default '0',
  `SearchInterval` int(11) default '0',
  `SearchResultNum` int(11) default '0',
  `MaxPerPage_SearchResult` int(11) default '0',
  `SearchContent` int(11) NOT NULL default '0',
  `EnableGuestBuy` int(11) NOT NULL default '0',
  `IncludeTax` int(11) NOT NULL default '0',
  `TaxRate` int(11) default '0',
  `PayOnlineProvider` int(11) default '0',
  `PayOnlineShopID` varchar(50) default '',
  `PayOnlineKey` varchar(50) default '',
  `PayOnlineRate` float default '0',
  `PayOnlinePlusPoundage` int(11) NOT NULL default '0',
  `Prefix_OrderFormNum` varchar(50) default '',
  `Prefix_PaymentNum` varchar(50) default '',
  `Country` varchar(50) default '',
  `Province` varchar(50) default '',
  `City` varchar(50) default '',
  `PostCode` text,
  `MessageOfOrderConfirm` text,
  `EmailOfOrderConfirm` text,
  `MessageOfSendCard` text,
  `EmailOfSendCard` text,
  `MessageOfReceiptMoney` text,
  `EmailOfReceiptMoney` text,
  `MessageOfRefund` text,
  `EmailOfRefund` text,
  `MessageOfInvoice` text,
  `EmailOfInvoice` text,
  `MessageOfDeliver` text,
  `EmailOfDeliver` text,
  `GuestBook_EnableVisitor` int(11) NOT NULL default '0',
  `GuestBookCheck` int(11) NOT NULL default '0',
  `GuestBook_EnableManageRubbish` int(11) NOT NULL default '0',
  `GuestBook_ManageRubbish` text,
  `GuestBook_ShowIP` int(11) NOT NULL default '0',
  `GuestBook_IsAssignSort` int(11) NOT NULL default '0',
  `GuestBook_MaxPerPage` text,
  `EnableRss` int(11) NOT NULL default '0',
  `RssCodeType` int(11) NOT NULL default '0',
  `EnableWap` int(11) NOT NULL default '0',
  `WapLogo` varchar(50) default '',
  `EnableWapPl` int(11) NOT NULL default '0',
  `ShowWapAppendix` int(11) NOT NULL default '0',
  `ShowWapShop` int(11) NOT NULL default '0',
  `ShowWapManage` int(11) NOT NULL default '0',
  `DatabaseVersion` double(53,0) default '0',
  `Timing_SetDate` int(11) default '0',
  `Timing_SetDay` int(11) default '0',
  `Timing_SetWeekday` int(11) default '0',
  `Timing_Time` text,
  `Timing_Date` datetime default NULL,
  `Timing_CollectionItemID` text,
  `Timing_AreaCollection` text,
  `Timing_Breakpoint` text,
  `IsCustom_Content` int(11) NOT NULL default '0',
  `SMSUserName` text,
  `SMSKey` text,
  `Mobiles` text,
  `SendMessageToAdminWhenOrder` int(11) NOT NULL default '0',
  `SendMessageToMemberWhenPaySuccess` int(11) NOT NULL default '0',
  `SurveyKey` text,
  `MessageOfCompy` longtext,
  `MessageOfwebManager` longtext,
  `MessageOflinkUs` longtext,
  `MessageOfManerintr` longtext,
  `MessageOfcompyProduct` longtext,
  `MessageOfConmpyWebH` longtext,
  `MessageOne` longtext,
  `MessageTwo` longtext,
  `MessageThree` longtext,
  `MessageFour` longtext,
  `Messagefive` longtext,
  `MessageSix` longtext,
  `watermarkType` int(11) unsigned default NULL,
  `watermarkText` varchar(45) default NULL,
  `watermarkTextFontName` varchar(45) default NULL,
  `watermarkTextFontSize` varchar(45) default NULL,
  `watermarkTextFontColor` varchar(45) default NULL,
  `watermarkTextBold` int(11) unsigned default NULL,
  `watermarkImagesFileName` varchar(45) default NULL,
  `watermarkPosition` int(11) unsigned default NULL,
  PRIMARY KEY  (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_config` */

insert  into `je_config`(`siteID`,`SiteName`,`SiteTitle`,`SiteUrl`,`InstallDir`,`LogoUrl`,`BannerUrl`,`WebmasterName`,`WebmasterEmail`,`Copyright`,`Meta_Keywords`,`Meta_Description`,`SiteKey`,`ShowSiteChannel`,`ShowAdminLogin`,`EnableLinkReg`,`EnableCountFriendSiteHits`,`EnableSoftKey`,`AdminDir`,`ADDir`,`AnnounceCookieTime`,`HitsOfHot`,`FileExt_SiteIndex`,`FileExt_SiteSpecial`,`SiteUrlType`,`Modules`,`LockIPType`,`LockIP`,`EnableUserReg`,`EmailCheckReg`,`AdminCheckReg`,`EnableMultiRegPerEmail`,`UserNameLimit`,`UserNameMax`,`UserName_RegDisabled`,`RegFields_MustFill`,`EnableCheckCodeOfLogin`,`EnableCheckCodeOfReg`,`EnableQAofReg`,`QAofReg`,`PresentExp`,`PresentMoney`,`PresentPoint`,`PresentValidNum`,`PresentValidUnit`,`MoneyExchangePoint`,`UserExpExchangePoint`,`UserExpExchangeValidDay`,`PresentExpPerLogin`,`PresentExpPerElite`,`PointName`,`PointUnit`,`EmailOfRegCheck`,`MailObject`,`MailServer`,`MailServerUserName`,`MailServerPassWord`,`MailDomain`,`PhotoObject`,`Thumb_DefaultWidth`,`Thumb_DefaultHeight`,`Thumb_Arithmetic`,`SearchInterval`,`SearchResultNum`,`MaxPerPage_SearchResult`,`SearchContent`,`EnableGuestBuy`,`IncludeTax`,`TaxRate`,`PayOnlineProvider`,`PayOnlineShopID`,`PayOnlineKey`,`PayOnlineRate`,`PayOnlinePlusPoundage`,`Prefix_OrderFormNum`,`Prefix_PaymentNum`,`Country`,`Province`,`City`,`PostCode`,`MessageOfOrderConfirm`,`EmailOfOrderConfirm`,`MessageOfSendCard`,`EmailOfSendCard`,`MessageOfReceiptMoney`,`EmailOfReceiptMoney`,`MessageOfRefund`,`EmailOfRefund`,`MessageOfInvoice`,`EmailOfInvoice`,`MessageOfDeliver`,`EmailOfDeliver`,`GuestBook_EnableVisitor`,`GuestBookCheck`,`GuestBook_EnableManageRubbish`,`GuestBook_ManageRubbish`,`GuestBook_ShowIP`,`GuestBook_IsAssignSort`,`GuestBook_MaxPerPage`,`EnableRss`,`RssCodeType`,`EnableWap`,`WapLogo`,`EnableWapPl`,`ShowWapAppendix`,`ShowWapShop`,`ShowWapManage`,`DatabaseVersion`,`Timing_SetDate`,`Timing_SetDay`,`Timing_SetWeekday`,`Timing_Time`,`Timing_Date`,`Timing_CollectionItemID`,`Timing_AreaCollection`,`Timing_Breakpoint`,`IsCustom_Content`,`SMSUserName`,`SMSKey`,`Mobiles`,`SendMessageToAdminWhenOrder`,`SendMessageToMemberWhenPaySuccess`,`SurveyKey`,`MessageOfCompy`,`MessageOfwebManager`,`MessageOflinkUs`,`MessageOfManerintr`,`MessageOfcompyProduct`,`MessageOfConmpyWebH`,`MessageOne`,`MessageTwo`,`MessageThree`,`MessageFour`,`Messagefive`,`MessageSix`,`watermarkType`,`watermarkText`,`watermarkTextFontName`,`watermarkTextFontSize`,`watermarkTextFontColor`,`watermarkTextBold`,`watermarkImagesFileName`,`watermarkPosition`) values (1,'高安全电子商务平台1','高安全电子商务平台2','www.j-eshop.cn3','/EShopCMS','images/logo.gif','images/banner.gif','领先软件2','y_flash@163.com2','<p align=\"center\"><strong><span style=\"color:#f10b00;\">本系统版权归领先网络科技所有，本处修改信息可在管理系统中修改</span></strong></p>','领先电子商务平台普及版2beta','电子商务平台222',NULL,0,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,1,1,1,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,250,NULL,NULL,1,NULL,NULL,NULL,NULL,'卡币','卡','1',NULL,'smtp.163.com                                      ','y_flash2','nothing3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,1,1,NULL,1,1,1,NULL,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,NULL,'公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介 ss','公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司<span style=\"color:#fd1289;\">简介公司简介公司简介</span>公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介 s','ss','asdfasdfas','dasfdasfd','dsafasdf','sadfasdf','sdfa','','','','s',2,'领先网络技术工作室2','黑体','14','#33ff00',0,'uploadphoto//2010-01-13//1263378130859.jpg',2);

/*Table structure for table `je_deliveritem` */

DROP TABLE IF EXISTS `je_deliveritem`;

CREATE TABLE `je_deliveritem` (
  `DeliverID` int(11) NOT NULL auto_increment,
  `OrderFormID` int(11) default '0',
  `DeliverDate` datetime default NULL,
  `DeliverDirection` int(11) default '0',
  `HandlerName` varchar(20) default '',
  `ExpressCompany` varchar(50) default '',
  `ExpressNumber` varchar(50) default '',
  `Inputer` varchar(20) default '',
  `Remark` varchar(255) default '',
  `Received` int(11) NOT NULL default '0',
  PRIMARY KEY  (`DeliverID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_deliveritem` */

insert  into `je_deliveritem`(`DeliverID`,`OrderFormID`,`DeliverDate`,`DeliverDirection`,`HandlerName`,`ExpressCompany`,`ExpressNumber`,`Inputer`,`Remark`,`Received`) values (5,1,'2009-12-12 18:46:03',1,'杨龙','在线支付','23','admin','在线支付',0);

/*Table structure for table `je_delivertype` */

DROP TABLE IF EXISTS `je_delivertype`;

CREATE TABLE `je_delivertype` (
  `TypeID` int(11) NOT NULL auto_increment,
  `TypeName` varchar(50) default '',
  `Intro` varchar(50) default '',
  `ChargeType` int(11) default '0',
  `IsDefault` int(11) NOT NULL default '0',
  `IsDisabled` int(11) NOT NULL default '0',
  `OrderID` int(11) default '0',
  `ReleaseType` int(11) default '0',
  `MinMoney1` double(19,4) default '0.0000',
  `ReleaseCharge` double(19,4) default '0.0000',
  `MinMoney2` double(19,4) default '0.0000',
  `MaxCharge` double(19,4) default '0.0000',
  `MinMoney3` double(19,4) default '0.0000',
  `Charge_Min` double(19,4) default '0.0000',
  `Charge_Max` double(19,4) default '0.0000',
  `Charge_Percent` smallint(6) default '0',
  PRIMARY KEY  (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_delivertype` */

insert  into `je_delivertype`(`TypeID`,`TypeName`,`Intro`,`ChargeType`,`IsDefault`,`IsDisabled`,`OrderID`,`ReleaseType`,`MinMoney1`,`ReleaseCharge`,`MinMoney2`,`MaxCharge`,`MinMoney3`,`Charge_Min`,`Charge_Max`,`Charge_Percent`) values (1,'申通快递是','      申通快递 运费更加便宜\r\n    \r\n     是',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15.0000,150.0000,NULL),(2,'EMS快递0','   EMS快递0\r\n    ',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15.0000,20.0000,NULL),(3,'神话快递1算是','      神话快递神话快递1\r\n    \r\n    是',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22.0000,23.0000,NULL),(4,'EMS快递0','   EMS快递0\r\n    ',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15.0000,20.0000,NULL),(10,'EMS快递0','   EMS快递0\r\n    ',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15.0000,20.0000,NULL),(11,'申通快递是','               申通快递 运费更加便宜\r\n    商业流程管理\r\n     是\r\n  ',1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,15.0000,150.0000,NULL);

/*Table structure for table `je_favshop` */

DROP TABLE IF EXISTS `je_favshop`;

CREATE TABLE `je_favshop` (
  `shopfavID` int(11) NOT NULL auto_increment,
  `productID` int(11) default '0',
  `userID` int(11) default '0',
  `favTime` datetime default NULL,
  `isElite` int(11) default '0',
  `favinfo` longtext,
  PRIMARY KEY  (`shopfavID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_favshop` */

/*Table structure for table `je_links` */

DROP TABLE IF EXISTS `je_links`;

CREATE TABLE `je_links` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkType` int(11) default '0',
  `SiteName` text,
  `SiteUrl` text,
  `SiteIntro` longtext,
  `LogoUrl` text,
  `SiteAdmin` char(50) default '',
  `SiteEmail` char(50) default '',
  `SitePassword` varchar(50) default '',
  `Stars` varchar(50) default '',
  `Hits` int(11) default '0',
  `UpdateTime` datetime default NULL,
  `Elite` int(11) default '0',
  `Passed` int(11) default '0',
  `OrderID` int(11) default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_links` */

insert  into `je_links`(`ID`,`LinkType`,`SiteName`,`SiteUrl`,`SiteIntro`,`LogoUrl`,`SiteAdmin`,`SiteEmail`,`SitePassword`,`Stars`,`Hits`,`UpdateTime`,`Elite`,`Passed`,`OrderID`) values (1,0,'百度13','http://','百度搜索','uploadphoto//2010-01-13//1263324240234.jpg','李彦宏s','lisa@baidu.com','123456','0',NULL,NULL,1,1,0),(2,0,'百度13','http://','网络新闻s','uploadphoto//2010-01-13//1263324235953.jpg','杨不悔ss','lisa@baidu.com','123456','0',NULL,NULL,0,1,0),(4,1,'网站的名称','http://','网络新闻s','uploadphoto//2010-01-13//1263324221796.jpg','杨不悔ss','lisa@baidu.com','123456','4',NULL,NULL,1,1,0);

/*Table structure for table `je_log` */

DROP TABLE IF EXISTS `je_log`;

CREATE TABLE `je_log` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default '0',
  `isAdmin` int(11) default '0',
  `logDate` datetime default NULL,
  `logMsg` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_log` */

insert  into `je_log`(`id`,`userId`,`isAdmin`,`logDate`,`logMsg`) values (142,NULL,10,'2009-12-12 19:02:16','9:yanglong充值成功：金额+50.0'),(147,NULL,13,'2009-12-12 19:38:01','admin 管理员登陆'),(148,NULL,11,'2009-12-12 20:00:01','yanglong 会员登陆'),(149,NULL,11,'2009-12-12 20:17:36','yanglong 会员登陆'),(150,NULL,11,'2009-12-12 20:39:45','yanglong 会员登陆'),(151,NULL,11,'2009-12-12 20:56:51','yanglong 会员登陆'),(152,NULL,13,'2009-12-13 00:37:46','admin 管理员登陆'),(153,NULL,11,'2009-12-13 00:50:01','yanglong 会员登陆'),(154,NULL,11,'2009-12-13 15:31:35','yanglong 会员登陆'),(155,NULL,11,'2009-12-13 16:12:47','yanglong 会员登陆'),(156,NULL,13,'2009-12-13 16:39:02','admin 管理员登陆'),(157,NULL,11,'2009-12-13 16:50:51','yanglong 会员登陆'),(158,NULL,13,'2009-12-13 19:13:56','admin 管理员登陆'),(159,NULL,13,'2009-12-13 19:15:53','admin 管理员登陆'),(160,NULL,13,'2009-12-17 16:54:41','admin 管理员登陆'),(161,NULL,13,'2009-12-25 18:10:35','admin 管理员登陆'),(162,NULL,13,'2009-12-30 15:14:28','admin 管理员登陆'),(163,NULL,13,'2010-01-04 10:07:16','admin 管理员登陆'),(164,NULL,13,'2010-01-04 10:26:02','admin 管理员登陆'),(165,NULL,13,'2010-01-09 12:40:04','admin 管理员登陆'),(166,NULL,13,'2010-01-09 12:47:49','admin 管理员登陆'),(167,NULL,13,'2010-01-09 14:30:15','admin 管理员登陆'),(168,NULL,13,'2010-01-09 14:31:12','admin 管理员登陆'),(169,NULL,13,'2010-01-09 21:13:39','admin 管理员登陆'),(170,NULL,13,'2010-01-12 13:58:01','admin 管理员登陆'),(171,NULL,13,'2010-01-12 16:40:21','admin 管理员登陆'),(172,NULL,11,'2010-01-12 16:51:49','yanglong 会员登陆');

/*Table structure for table `je_metiel` */

DROP TABLE IF EXISTS `je_metiel`;

CREATE TABLE `je_metiel` (
  `Mid` int(11) NOT NULL auto_increment,
  `MName` varchar(50) default '',
  `type` int(11) default '0',
  `userId` int(11) default '0',
  `path` varchar(50) default '',
  PRIMARY KEY  (`Mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_metiel` */

/*Table structure for table `je_msg` */

DROP TABLE IF EXISTS `je_msg`;

CREATE TABLE `je_msg` (
  `Id` int(11) NOT NULL auto_increment,
  `msg` longtext,
  `types` int(11) default '0',
  `stat` int(11) default '0',
  `sendId` int(11) default '0',
  `receivId` int(11) default '0',
  `sDate` datetime default NULL,
  `rDate` datetime default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_msg` */

insert  into `je_msg`(`Id`,`msg`,`types`,`stat`,`sendId`,`receivId`,`sDate`,`rDate`) values (1,'短消息发送测试',NULL,0,51,NULL,NULL,NULL),(2,'短消息发送测试',NULL,0,51,NULL,NULL,NULL),(3,'短消息发送测试',NULL,0,51,NULL,NULL,NULL),(69,'您好 请查看一下您的消息是否收到',1,1,1,12,'2009-11-28 17:34:59',NULL),(70,'您的汇款已经汇出 请您注意查收 电话联系我们',1,1,1,16,'2009-11-28 17:39:27',NULL),(87,'消息内容 <img src=\"../upfile/uploadphoto//2009-11-30//1259585816859.png\" />',1,10,1,12,'2009-11-30 20:56:59',NULL),(88,'消息内容 <img src=\"../upfile/uploadphoto//2009-11-30//1259587604921.png\" />',1,1,1,16,'2009-11-30 21:26:46','2009-12-12 19:57:30'),(91,'消息内容',1,1,1,9,'2009-12-05 14:34:56','2009-12-05 16:08:45'),(93,'消息内容',1,1,1,9,'2009-12-05 14:35:03','2009-12-05 15:20:40'),(95,'<p>一会你测试一下消息发送的状态吧</p>',1,1,1,9,'2009-12-08 15:51:50','2009-12-08 16:09:05'),(96,'<p>快些测试一下看看 这是怎么回事</p>',1,1,1,9,'2009-12-08 16:07:32','2009-12-08 16:09:07'),(100,'消息内容',2,1,9,9,'2009-12-10 18:01:58','2009-12-10 18:02:35'),(101,'您好！请仔细填写消息内容',2,1,9,1,'2009-12-11 14:47:18','2009-12-11 16:15:38'),(103,'您好！请仔细填写消息内容',2,1,9,1,'2009-12-11 14:47:44','2009-12-11 16:17:59'),(104,'您好！请仔细填写消息内容',2,1,9,1,'2009-12-11 15:18:20','2009-12-11 16:18:00'),(105,'您好！请仔细填写消息内容',2,1,9,1,'2009-12-11 16:00:00','2009-12-11 16:10:22'),(111,'消息内容',1,10,1,12,'2009-12-12 19:58:10',NULL),(112,'消息内容',1,10,1,12,'2009-12-12 19:58:11',NULL),(113,'您好！请仔细填写消息内容',2,0,9,9,'2010-01-15 17:27:21',NULL),(114,'您好！请仔细填写消息内容',2,0,9,9,'2010-01-15 17:29:07',NULL),(115,'您好！请仔细填写消息内容',2,0,9,9,'2010-01-15 17:30:21',NULL),(116,'您好！请仔细填写消息内容',2,0,9,12,'2010-01-15 17:30:21',NULL),(117,'您好！请仔细填写消息内容',2,0,9,9,'2010-01-15 17:30:21',NULL);

/*Table structure for table `je_news` */

DROP TABLE IF EXISTS `je_news`;

CREATE TABLE `je_news` (
  `ArticleID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) NOT NULL default '0',
  `ClassID` int(11) NOT NULL default '0',
  `Title` varchar(255) NOT NULL default '',
  `TitleIntact` varchar(255) default '',
  `Subheading` varchar(255) default '',
  `videoUrl` varchar(50) default '',
  `Author` varchar(255) default '',
  `CopyFrom` varchar(255) default '',
  `Inputer` varchar(255) default '',
  `LinkUrl` varchar(255) default '',
  `Editor` varchar(255) NOT NULL default '',
  `Keyword` varchar(255) NOT NULL default '',
  `Hits` int(11) NOT NULL default '0',
  `CommentCount` int(11) default '0',
  `UpdateTime` datetime NOT NULL,
  `CreateTime` datetime default NULL,
  `OnTop` int(11) NOT NULL default '0',
  `Elite` int(11) NOT NULL default '0',
  `Status` int(11) NOT NULL default '0',
  `Content` longtext,
  `IncludePic` int(11) NOT NULL default '0',
  `DefaultPicUrl` longtext,
  `UploadFiles` longtext,
  `InfoPoint` int(11) default '0',
  `PaginationType` int(11) default '0',
  `TemplateFile` varchar(412) default '0',
  `Stars` int(11) default '0',
  `TitleFontColor` varchar(50) default '',
  `TitleFontType` int(11) default '0',
  `ShowCommentLink` int(11) NOT NULL default '0',
  `ReceiveUser` varchar(50) default '',
  `Received` varchar(50) default '',
  `AutoReceiveTime` int(11) default '0',
  `ReceiveType` int(11) default '0',
  `Intro` varchar(50) default '',
  `PresentExp` double(53,0) default '0',
  `Copymoney` double(19,4) default '0.0000',
  `IsPayed` int(11) NOT NULL default '0',
  `Beneficiary` varchar(50) default '',
  `PayDate` datetime default NULL,
  `VoteID` int(11) default '0',
  `InfoPurview` int(11) default '0',
  `arrGroupID` varchar(50) default '',
  `ChargeType` int(11) NOT NULL default '0',
  `PitchTime` int(11) default '0',
  `ReadTimes` int(11) default '0',
  `BlogID` int(11) default '0',
  `UserID` int(11) default '0',
  `contactStr` text,
  `isCommont` int(11) unsigned default '0',
  `curvey` text,
  PRIMARY KEY  (`ArticleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_news` */

insert  into `je_news`(`ArticleID`,`ChannelID`,`ClassID`,`Title`,`TitleIntact`,`Subheading`,`videoUrl`,`Author`,`CopyFrom`,`Inputer`,`LinkUrl`,`Editor`,`Keyword`,`Hits`,`CommentCount`,`UpdateTime`,`CreateTime`,`OnTop`,`Elite`,`Status`,`Content`,`IncludePic`,`DefaultPicUrl`,`UploadFiles`,`InfoPoint`,`PaginationType`,`TemplateFile`,`Stars`,`TitleFontColor`,`TitleFontType`,`ShowCommentLink`,`ReceiveUser`,`Received`,`AutoReceiveTime`,`ReceiveType`,`Intro`,`PresentExp`,`Copymoney`,`IsPayed`,`Beneficiary`,`PayDate`,`VoteID`,`InfoPurview`,`arrGroupID`,`ChargeType`,`PitchTime`,`ReadTimes`,`BlogID`,`UserID`,`contactStr`,`isCommont`,`curvey`) values (46,4,26,'如何快速建设部署基于JSHop的大型网店系统',NULL,'建立基于JEEp的网店系统','','站长',NULL,NULL,NULL,'匿名编辑','如何快速建设部署基于JSHop的大型网店系统',2,NULL,'2009-11-06 00:00:00',NULL,0,0,0,'<p><span><span style=\"font-family:Times New Roman;font-size:small;\">\r\n</span></span><object id=\"QvodPlayer\" height=\"450\" onerror=\"if(window.confirm(\'请您先安装QvodPlayer软件,然后刷新本页才可以正常播放\')){window.open(\'http://www.qvod.com/download.htm\')}else{self.location=\'http://www.qvod.com/\'}\" width=\"400\" classid=\"clsid:F3D0D36F-23F8-4682-A195-74C92B03D4AF\" name=\"QvodPlayer\"><param name=\"_cx\" value=\"10583\" /><param name=\"_cy\" value=\"11906\" /><param name=\"URL\" value=\"sssssss\" /><param name=\"Autoplay\" value=\"0\" /><param name=\"Showcontrol\" value=\"1\" /><param name=\"NumLoop\" value=\"0\" /><param name=\"NextWebPage\" /><param name=\"QvodAdUrl\" /></object>&nbsp;</p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">如何一键搭建大型电子商务网店</span></span></p>\r\n<p><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"MARGIN: 0cm 0cm 0pt 21.75pt; TEXT-INDENT: -21.75pt; tab-stops: list 21.75pt\"><span><span><span style=\"font-family:Times New Roman;\"><span style=\"font-size:small;\">1．</span>&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:small;\"><span style=\"font-family:宋体;\">到</span><span><a href=\"http://www.j-eshop.cn/\"><span style=\"font-family:Times New Roman;\">http://www.j-eshop.cn</span></a><span><span style=\"font-family:Times New Roman;\">&nbsp; </span></span></span><span style=\"font-family:宋体;\">下载最新版本</span><span><span style=\"font-family:Times New Roman;\">JEShop</span></span><span style=\"font-family:宋体;\">系统平台，下载最新版本，功能强大，提供版本为</span><span><span style=\"font-family:Times New Roman;\">mysql </span></span><span style=\"font-family:宋体;\">数据库，同时</span><span><span style=\"font-family:Times New Roman;\">JEShop</span></span><span style=\"font-family:宋体;\">系统提供</span><span><span style=\"font-family:Times New Roman;\">sql server</span></span><span style=\"font-family:宋体;\">版本</span></span></p>\r\n<p align=\"center\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"MARGIN: 0cm 0cm 0pt 21.75pt; TEXT-INDENT: -21.75pt; tab-stops: list 21.75pt\"><span><span><span style=\"font-family:Times New Roman;\"><span style=\"font-size:small;\">2．</span>&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">下载以后开始解压，系统集成了数据库</span></span></p>\r\n<p align=\"center\"><span><span style=\"font-size:small;\"></span><span style=\"font-size:small;\"></span></span></p>\r\n<p align=\"center\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-size:small;\"><span><span style=\"font-family:Times New Roman;\">3.</span></span><span style=\"font-family:宋体;\">解压以后开始安装，弹出安装界面：</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-size:small;\"><span style=\"font-family:宋体;\">点击</span><span><span style=\"font-family:Times New Roman;\">OK </span></span><span style=\"font-family:宋体;\">开始</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">选择安装目录开始安装</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">开始安装</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-size:small;\"><span style=\"font-family:宋体;\">安装完成后</span><span style=\"font-family:Times New Roman;\"> </span><span style=\"font-family:宋体;\">自动启动控制台</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">点击打开网站</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">一个功能全面的电子商务网站建立完成：</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">您可以进入到界面进行美化管理</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">具体的您参看教程：</span></span></p>\r\n<p><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p></p>\r\n<p><span style=\"font-family:宋体;\">如何一键搭建大型电子商务网店</span></p>\r\n<p></p>\r\n<p style=\"MARGIN: 0cm 0cm 0pt 21.75pt; TEXT-INDENT: -21.75pt; tab-stops: list 21.75pt\"><span><span>1．&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family:宋体;\">到</span><span><a href=\"http://www.j-eshop.cn/\">http://www.j-eshop.cn</a>&nbsp;</span><span style=\"font-family:宋体;\">下载最新版本</span><span>JEShop</span><span style=\"font-family:宋体;\">系统平台，下载最新版本，功能强大，提供版本为</span><span>mysql </span><span style=\"font-family:宋体;\">数据库，同时</span><span>JEShop</span><span style=\"font-family:宋体;\">系统提供</span><span>sql server</span><span style=\"font-family:宋体;\">版本</span></p>\r\n<p align=\"center\"></p>\r\n<p style=\"MARGIN: 0cm 0cm 0pt 21.75pt; TEXT-INDENT: -21.75pt; tab-stops: list 21.75pt\"><span><span>2．&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family:宋体;\">下载以后开始解压，系统集成了数据库</span></p>\r\n<p align=\"center\"></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span>3.</span><span style=\"font-family:宋体;\">解压以后开始安装，弹出安装界面：</span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">点击</span><span>OK </span><span style=\"font-family:宋体;\">开始</span></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">选择安装目录开始安装</span></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">开始安装</span></p>\r\n<p></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">安装完成后</span> <span style=\"font-family:宋体;\">自动启动控制台</span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">点击打开网站</span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">一个功能全面的电子商务网站建立完成：</span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">您可以进入到界面进行美化管理</span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\">具体的您参看教程：</span></p>\r\n<p></p>\r\n<p></p>',0,'',NULL,0,NULL,'ShowNews.jsp',NULL,'',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,NULL,NULL,NULL,0,NULL),(47,4,26,'如何在本站快速建立网店',NULL,'建立基于JEEp的网店系统','','站长',NULL,NULL,NULL,'匿名编辑','如何快速建设部署基于JSHop的大型网店系统',2,NULL,'2009-10-07 00:00:00',NULL,0,0,1,'<p><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">如何一键搭建大型电子商务网店</span></span></p>\r\n<p><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"MARGIN: 0cm 0cm 0pt 21.75pt; TEXT-INDENT: -21.75pt; tab-stops: list 21.75pt\"><span><span><span style=\"font-family:Times New Roman;\"><span style=\"font-size:small;\">1．</span>&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-size:small;\"><span style=\"font-family:宋体;\">到</span><span><a href=\"http://www.j-eshop.cn/\"><span style=\"font-family:Times New Roman;\">http://www.j-eshop.cn</span></a><span><span style=\"font-family:Times New Roman;\">&nbsp; </span></span></span><span style=\"font-family:宋体;\">下载最新版本</span><span><span style=\"font-family:Times New Roman;\">JEShop</span></span><span style=\"font-family:宋体;\">系统平台，下载最新版本，功能强大，提供版本为</span><span><span style=\"font-family:Times New Roman;\">mysql </span></span><span style=\"font-family:宋体;\">数据库，同时</span><span><span style=\"font-family:Times New Roman;\">JEShop</span></span><span style=\"font-family:宋体;\">系统提供</span><span><span style=\"font-family:Times New Roman;\">sql server</span></span><span style=\"font-family:宋体;\">版本</span></span></p>\r\n<p align=\"center\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"MARGIN: 0cm 0cm 0pt 21.75pt; TEXT-INDENT: -21.75pt; tab-stops: list 21.75pt\"><span><span><span style=\"font-family:Times New Roman;\"><span style=\"font-size:small;\">2．</span>&nbsp;&nbsp;&nbsp;</span></span></span><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">下载以后开始解压，系统集成了数据库</span></span></p>\r\n<p align=\"center\"><span><span style=\"font-size:small;\"></span><span style=\"font-size:small;\"></span></span></p>\r\n<p align=\"center\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-size:small;\"><span><span style=\"font-family:Times New Roman;\">3.</span></span><span style=\"font-family:宋体;\">解压以后开始安装，弹出安装界面：</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-size:small;\"><span style=\"font-family:宋体;\">点击</span><span><span style=\"font-family:Times New Roman;\">OK </span></span><span style=\"font-family:宋体;\">开始</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">选择安装目录开始安装</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">开始安装</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-size:small;\"><span style=\"font-family:宋体;\">安装完成后</span><span style=\"font-family:Times New Roman;\"> </span><span style=\"font-family:宋体;\">自动启动控制台</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">点击打开网站</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span><span style=\"font-size:small;\"></span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">一个功能全面的电子商务网站建立完成：</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">您可以进入到界面进行美化管理</span></span></p>\r\n<p style=\"TEXT-INDENT: 10.5pt\"><span style=\"font-family:宋体;\"><span style=\"font-size:small;\">具体的您参看教程：</span></span></p>\r\n<p><span><span style=\"font-family:Times New Roman;font-size:small;\">&nbsp;</span></span></p>',0,'',NULL,0,NULL,'ShowNews.jsp',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,NULL),(48,4,23,'如何快速建设部署基于JSHop的大型网店系统',NULL,'建立基于JEEp的网店系统','uploadphoto//2009-10-10//1255106930375.jpg','站长',NULL,NULL,NULL,'匿名编辑','如何快速建设部署基于JSHop的大型网店系统',2,NULL,'2009-10-10 00:00:00',NULL,0,0,1,'如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统',0,'uploadphoto//2009-10-10//1255106922343.jpg',NULL,0,NULL,'ShowNews.jsp',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,0,NULL),(49,6,52,'如何快速建设部署基于JSHop的大型网店系统（审核通过）',NULL,'建立基于JEEp的网店系统','','章章',NULL,NULL,NULL,'匿名编辑','如何快速建设部署基于JSHop的大型网店系统',1,NULL,'2009-12-01 00:00:00',NULL,0,0,2,'<p>啊啊啊啊啊啊啊啊</p>\r\n<p>啊啊啊{page}啊</p>\r\n<p>啊啊啊啊</p>\r\n<p>啊啊啊</p>\r\n<p>啊啊啊{page}啊啊啊啊啊</p>\r\n<p>啊啊{page}啊啊</p>\r\n<p>啊啊啊{page}啊</p>\r\n<p>啊啊啊</p>\r\n<p>啊{page}啊啊啊啊{page}啊啊啊</p>\r\n<p>啊啊啊啊</p>\r\n<p>啊啊啊{page}啊</p>\r\n<p>啊{page}啊啊</p>',0,'uploadphoto//2009-12-01//1259652183687.png',NULL,0,NULL,'ShowNews.jsp',NULL,'#ff0000',14,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,NULL,NULL,NULL,NULL,''),(50,4,22,'金秋主流风采',NULL,'建立基于JEEp的网店系统','uploadphoto//2009-12-01//1259668069703.gif','站长',NULL,NULL,NULL,'匿名编辑','如何快速建设部署基于JSHop的大型网店系统',2,NULL,'2009-12-01 00:00:00',NULL,0,0,1,'<img src=\"../upfile/uploadphoto//2009-12-01//1259668037765.png\" />{page}<img src=\"../upfile/uploadphoto//2009-12-01//1259668051062.jpg\" />',0,'uploadphoto//2009-12-01//1259668069703.gif',NULL,0,NULL,'ShowNews.jsp',NULL,'#33ff00',14,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,'新时代的附带:23||新时代的附带:232||'),(51,4,24,'金秋主流风采',NULL,'建立基于JEEp的网店系统','','站长',NULL,NULL,NULL,'杨龙','如何快速建设部署基于JSHop的大型网店系统',2,NULL,'2009-12-01 00:00:00',NULL,0,0,1,'<img src=\"../upfile/uploadphoto//2009-12-01//1259670910531.png\" />',0,'uploadphoto//2009-10-15//1255621974328.jpg',NULL,0,NULL,'ShowNews.jsp',NULL,'#00cc66',13,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,'差不多吧:12||差不多吧:12||商品质量很差:22||商品质量很差:222||商品质量很好:22||'),(52,4,23,'如何快速建设部署基于JSHop的大型网店系统(分页演示)',NULL,'建立基于JEEp的网店系统','','章章','本站原创',NULL,NULL,'','如何快速建设部署基于JSHop的大型网店系统',1,NULL,'2009-12-01 00:00:00',NULL,0,0,2,'<p>新的内容展示{page}<img src=\"../upfile/uploadphoto//2009-12-01//1259671752531.gif\" />{page}<img src=\"../upfile/uploadphoto//2009-12-01//1259671764031.png\" />{page}</p>\r\n<p>新的内容展示</p>',0,'uploadphoto//2009-12-01//1259671790500.gif',NULL,0,NULL,'ShowNews.jsp',NULL,'#000000',12,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,'',NULL,''),(53,4,24,'如何快速建设部署基于JSHop的大型网店系统（审核通过）',NULL,'建立基于JEEp的网店系统','','站长','其他转载',NULL,NULL,'杨龙','如何快速建设部署基于JSHop的大型网店系统',126,NULL,'2009-12-01 00:00:00',NULL,0,0,2,'this.jenews.setHits(1);this.jenew{page}s.setHits(1);this.jenews.setHits(1{page});this.jenews{page}.setHits(1);this.jenews.setHits(1);this.jenews.setHits(1);',0,'',NULL,0,NULL,'ShowNews.jsp',NULL,'#33ff00',14,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,3,NULL,NULL,'46,50,52,50',NULL,'好主意:23||好主意:23||好主意:23||好主意:23||好主意:23||'),(54,4,24,'文章内容分页测试文章内容分页测试',NULL,'建立基于JEEp的网店系统','','站长','其他转载',NULL,NULL,'杨龙','如何快速建设部署基于JSHop的大型网店系统',144,NULL,'2009-12-01 00:00:00',NULL,0,1,1,'<p>刷刷刷刷刷刷{page}刷刷刷刷{page}刷刷是</p>\r\n<p>ssssssssssssssssss{page}ssssssssssss</p>\r\n<p>刷刷刷搜索刷{page}刷刷</p>\r\n<p>刷刷刷搜索{page}刷刷刷刷刷刷</p>',0,'',NULL,0,NULL,'ShowNews.jsp',NULL,'#33ff00',14,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,2,NULL,NULL,'47,52,48,47',NULL,'商品质量很差:0||好主意:0||商品质量很好:0||新时代的附带:0||商品质量很差:0||'),(55,4,23,'如何快速建设部署基于JSHop的大型网店系统（审核通过）',NULL,'建立基于JEEp的网店系统','','章章','本站原创',NULL,NULL,'杨龙','如何快速建设部署基于JSHop的大型网店系统',1222,NULL,'2009-12-01 00:00:00',NULL,0,0,1,'document.getElementById(\"Ntitle\").style.color=event.srcElement._background;document.getElementById(\"Ntitle\").style.color=event.srcElement._background;document.getElementById(\"Ntitle\").style.color=event.srcElement._background;document.getElementById(\"Ntitle\").style.color=event.srcElement._background;document.getElementById(\"Ntitle\").style.color=event.srcE{page}lement._background;document.getElementById(\"Ntitle\").style.color=event.srcElement._background;document.getElementById(\"Ntitle\").style.color=event.srcElement._background;',0,'uploadphoto//2009-12-01//1259674078640.png',NULL,12,NULL,'ShowNews.jsp',NULL,'#ff6600',12,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'53,54,48,47',NULL,'好主意:12||好主意:22||商品质量很差:12||商品质量很好:12||新时代的附带:11||'),(56,4,24,'如何快速建设部署基于JSHop的大型网店系统',NULL,'建立基于JEEp的网店系统','','站长','其他转载','admin',NULL,'杨龙','如何快速建设部署基于JSHop的大型网店系统',1,NULL,'2009-12-02 00:00:00',NULL,1,1,2,'<p>{page}{page}{page}</p>',1,'uploadphoto//2009-12-01//1259674574515.png',NULL,0,NULL,'ShowNews.jsp',NULL,'#33cc00',12,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,'53,50,55',NULL,'1南极仙翁修改版本:100|1商品质量很好修改版本:100|1商品质量很好修改版本琐事:100'),(57,6,52,'如何快速建设部署基于JSHop的大型网店系统（审核通过）',NULL,'建立基于JEEp的网店系统','','站长','其他转载','admin',NULL,'南极先问','如何快速建设部署基于JSHop的大型网店系统',124,NULL,'2009-12-02 00:00:00',NULL,0,0,1,'如何快速建设部署{page}基于JSHop的如何快速建如何快如何快速建设部署基于JSHop的大型网店系统速建设部署基于JSHop的大型网店系统设部署基于JSHop的大型{page}网店系统大如何快速建设部署如何快速建设部署基于JSHop的大型网店系统基于JSHop的大型网店系统型网店系统',0,'',NULL,0,NULL,'ShowNews.jsp',NULL,'#663300',12,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,'49,49,49',NULL,'南极仙翁:12||南极仙翁:22||'),(58,4,23,'如何快速建设部署基于JSHop的大型网店系统',NULL,'建立基于JEEp的网店系统','','章章','本站原创','admin',NULL,'南极先问','如何快速建设部署基于JSHop的大型网店系统',1,NULL,'2009-12-02 00:00:00',NULL,0,0,1,'如何快速建设部{page}署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基{page}于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店{page}系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统{page}如何快速建设部署基于JS{page}Hop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大{page}型网店系统如何快速建设部署{page}基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统',0,'uploadphoto//2009-12-02//1259711978359.jpg',NULL,0,NULL,'ShowNews.jsp',NULL,'#663300',12,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,'52,47,55,46,55,51',NULL,'1南极仙翁修改版本:100|1商品质量很好修改版本琐事:100|好主意修改版本:10'),(59,4,24,'如何快速建设部署基于JSHop的大型网店系统（审核通过）',NULL,'建立基于JEEp的网店系统','','章章','其他转载','admin',NULL,'南极先问','如何快速建设部署基于JSHop的大型网店系统',9,NULL,'2009-12-02 00:00:00',NULL,0,0,1,'<p>如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统</p>\r\n<p>如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统</p>\r\n<p>如何快速建设部署基于JSHop的大型网店系统如何快速建设部署基于JSHop的大型网店系统</p>',0,'',NULL,0,NULL,'ShowNews.jsp',NULL,'#663300',12,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,9,NULL,NULL,'53,50,47',NULL,'1商品质量很好修改版本:100|1商品质量很好修改版本:100|1商品质量很好修改版本琐事:11'),(60,4,26,'如何快速建设部署基于JSHop的大型网店系统',NULL,'建立基于JEEp的网店系统','','章章','其他转载','admin',NULL,'杨龙','如何快速建设部署基于JSHop的大型网店系统',3,NULL,'2009-12-04 00:00:00',NULL,1,1,0,'<img src=\"../upfile/uploadphoto//2009-12-02//1259744222062.jpg\" />',1,'uploadphoto//2009-12-02//1259756412593.jpg',NULL,0,NULL,'ShowNews.jsp',NULL,'#33ff33',12,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,3,NULL,NULL,'46,47,48,50,54',NULL,'1好主意修改版本:2222|1南极仙翁修改版本:22|1南极仙翁修改版本:32|'),(61,3,41,'如何快速建设部署基于JSHop的大型网店系统(分页演示)',NULL,'建立基于JEEp的网店系统','','站长',NULL,NULL,NULL,'匿名编辑','添加关键词添加关键词',1,NULL,'2009-12-13 00:00:00',NULL,0,0,1,'暂无内容',0,'uploadphoto//2009-12-13//1260639496078.jpg',NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,9,NULL,NULL,NULL),(63,5,17,'测试资源发布信息管理系统',NULL,'测试资源发布信息管理系统','','杨龙','其他转载','admin',NULL,'杨元','测试资源发布信息管理系统',1,NULL,'2010-01-16 00:00:00',NULL,0,0,2,'测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}测试资源发布信息管理系统测试资源发布信息管理系统{page}',0,'uploadphoto//2010-01-16//1263576426859.jpg',NULL,0,NULL,'ShowNews.jsp',NULL,'#663300',14,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'62,62,63',NULL,'是否合理:12|不合理:22|不合理:22|不想参与:125|'),(64,5,17,'测试资源发布信息管理系统',NULL,'JeNewsDAO','','dao','本站原创','admin',NULL,'','测试资源发布信息管理系统',1,NULL,'2010-01-16 00:00:00',NULL,0,0,2,'测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统测试资源发布信息{page}管理系统',0,'uploadphoto//2010-01-16//1263576373359.jpg',NULL,0,NULL,'ShowNews.jsp',NULL,'#663300',12,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'63,63,64,64',NULL,'不合理:12|不合理:22|不想参与:125');

/*Table structure for table `je_orderform` */

DROP TABLE IF EXISTS `je_orderform`;

CREATE TABLE `je_orderform` (
  `OrderFormID` int(11) NOT NULL auto_increment,
  `OrderFormNum` varchar(50) default '',
  `UserName` varchar(50) default '',
  `AgentName` varchar(50) default '',
  `ClientID` int(11) default '0',
  `MoneyTotal` double(19,4) default '0.0000',
  `MoneyGoods` double(19,4) default '0.0000',
  `NeedInvoice` int(11) NOT NULL default '0',
  `InvoiceContent` longtext,
  `Invoiced` int(11) NOT NULL default '0',
  `Remark` longtext,
  `MoneyReceipt` double(19,4) default '0.0000',
  `BeginDate` datetime default NULL,
  `InputTime` datetime default NULL,
  `ContacterName` varchar(50) default '',
  `Address` varchar(255) default '',
  `ZipCode` varchar(10) default '',
  `Mobile` varchar(50) default '',
  `Phone` varchar(50) default '',
  `Email` varchar(50) default '',
  `reMoneyStat` int(11) default '0',
  `PaymentType` int(11) default '0',
  `DeliverType` int(11) default '0',
  `Status` int(11) default '0',
  `DeliverStatus` int(11) default '0',
  `EnableDownload` int(11) NOT NULL default '0',
  `PresentMoney` double(19,4) default '0.0000',
  `PresentPoint` int(11) default '0',
  `PresentExp` int(11) default '0',
  `Discount_Payment` double(53,0) default '0',
  `Charge_Deliver` double(19,4) default '0.0000',
  `userID` int(11) default '0',
  `va1` int(11) default '0',
  `va2` int(11) default '0',
  `va3` int(11) default '0',
  `ca1` varchar(50) default '',
  `ca2` varchar(50) default '',
  PRIMARY KEY  (`OrderFormID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_orderform` */

/*Table structure for table `je_orderformitem` */

DROP TABLE IF EXISTS `je_orderformitem`;

CREATE TABLE `je_orderformitem` (
  `ItemID` int(11) NOT NULL auto_increment,
  `OrderFormID` int(11) default '0',
  `ProductID` int(11) default '0',
  `SaleType` int(11) default '0',
  `Price_Original` double(19,4) default '0.0000',
  `Price` double(19,4) default '0.0000',
  `TruePrice` double(19,4) default '0.0000',
  `Amount` int(11) default '0',
  `SubTotal` double(19,4) default '0.0000',
  `BeginDate` datetime default NULL,
  `ServiceTerm` int(11) default '0',
  `Remark` varchar(255) default '',
  `PresentMoney` double(19,4) default '0.0000',
  `PresentPoint` int(11) default '0',
  `PresentExp` int(11) default '0',
  PRIMARY KEY  (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_orderformitem` */

insert  into `je_orderformitem`(`ItemID`,`OrderFormID`,`ProductID`,`SaleType`,`Price_Original`,`Price`,`TruePrice`,`Amount`,`SubTotal`,`BeginDate`,`ServiceTerm`,`Remark`,`PresentMoney`,`PresentPoint`,`PresentExp`) values (1,1,35,NULL,21.0000,214.0000,214.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,39,NULL,21.0000,214.0000,214.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,40,NULL,125.0000,124.0000,124.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,41,NULL,125.0000,120.0000,120.0000,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,38,NULL,130.0000,120.0000,120.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,37,NULL,12.5000,12.0000,12.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,35,NULL,105.0000,1070.0000,1070.0000,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,2,39,NULL,126.0000,1284.0000,1284.0000,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,40,NULL,875.0000,868.0000,868.0000,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,2,41,NULL,150.0000,144.0000,144.0000,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,2,38,NULL,130.0000,120.0000,120.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,2,37,NULL,62.5000,60.0000,60.0000,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,2,36,NULL,375.0000,372.0000,372.0000,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,2,31,NULL,21.0000,214.0000,214.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,35,NULL,105.0000,1070.0000,1070.0000,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,3,39,NULL,126.0000,1284.0000,1284.0000,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,3,40,NULL,875.0000,868.0000,868.0000,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,41,NULL,150.0000,144.0000,144.0000,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,3,38,NULL,130.0000,120.0000,120.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,37,NULL,62.5000,60.0000,60.0000,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,3,36,NULL,375.0000,372.0000,372.0000,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,3,31,NULL,21.0000,214.0000,214.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,4,35,NULL,84.0000,856.0000,856.0000,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,4,39,NULL,126.0000,1284.0000,1284.0000,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,4,40,NULL,875.0000,868.0000,868.0000,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,4,41,NULL,150.0000,144.0000,144.0000,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,4,38,NULL,130.0000,120.0000,120.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,4,37,NULL,62.5000,60.0000,60.0000,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,4,36,NULL,375.0000,372.0000,372.0000,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,4,31,NULL,21.0000,214.0000,214.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,5,35,NULL,84.0000,856.0000,856.0000,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,5,39,NULL,126.0000,1284.0000,1284.0000,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,5,40,NULL,875.0000,868.0000,868.0000,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,5,41,NULL,150.0000,144.0000,144.0000,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,5,38,NULL,130.0000,120.0000,120.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,5,37,NULL,62.5000,60.0000,60.0000,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,5,36,NULL,375.0000,372.0000,372.0000,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,5,31,NULL,21.0000,214.0000,214.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,5,42,NULL,12.5000,12.0000,12.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,5,42,NULL,12.5000,12.0000,12.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,1,57,NULL,0.0000,0.0000,0.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,1,57,NULL,0.0000,0.0000,0.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,1,56,NULL,0.0000,0.0000,0.0000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_page` */

DROP TABLE IF EXISTS `je_page`;

CREATE TABLE `je_page` (
  `pageId` int(11) NOT NULL auto_increment,
  `pageName` varchar(50) default '',
  `pageClass` int(11) default '0',
  `pageOrder` int(11) default '0',
  `Content` longtext,
  `userId` int(11) default '0',
  `ChannelId` int(11) default '0',
  `groupId` int(11) default '0',
  `pageLevel` int(11) default '0',
  PRIMARY KEY  (`pageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_page` */

insert  into `je_page`(`pageId`,`pageName`,`pageClass`,`pageOrder`,`Content`,`userId`,`ChannelId`,`groupId`,`pageLevel`) values (1,'ShowGuoqingCuxiao',1,NULL,'<p><img src=\"../upfile/uploadphoto//2009-12-12//1260623141781.jpg\" /></p>\r\n<p><img src=\"../upfile/uploadphoto//2009-12-12//1260623153296.jpg\" /></p>',9,NULL,1,NULL);

/*Table structure for table `je_photo` */

DROP TABLE IF EXISTS `je_photo`;

CREATE TABLE `je_photo` (
  `PhotoID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) NOT NULL default '0',
  `ClassID` int(11) NOT NULL default '0',
  `PhotoName` text NOT NULL,
  `Author` varchar(50) default '',
  `CopyFrom` varchar(50) default '',
  `Inputer` varchar(50) default '',
  `Editor` varchar(50) default '',
  `Keyword` text NOT NULL,
  `Hits` int(11) default '0',
  `DayHits` int(11) default '0',
  `WeekHits` int(11) default '0',
  `MonthHits` int(11) default '0',
  `CommentCount` int(11) default '0',
  `UpdateTime` datetime default NULL,
  `CreateTime` datetime default NULL,
  `PhotoThumb` text,
  `PhotoUrl` longtext,
  `PhotoSize` int(11) default '0',
  `OnTop` int(11) NOT NULL default '0',
  `Elite` int(11) NOT NULL default '0',
  `Status` int(11) NOT NULL default '0',
  `PhotoIntro` text,
  `InfoPoint` int(11) default '0',
  `Deleted` int(11) NOT NULL default '0',
  `Stars` int(11) default '0',
  `LastHitTime` datetime default NULL,
  `TemplateID` int(11) default '0',
  `SkinID` int(11) default '0',
  `VoteID` int(11) default '0',
  `PresentExp` double(53,0) default '0',
  `InfoPurview` int(11) default '0',
  `arrGroupID` varchar(50) default '',
  `ChargeType` int(11) default '0',
  `PitchTime` int(11) default '0',
  `ReadTimes` int(11) default '0',
  `DividePercent` int(11) default '0',
  `BlogID` int(11) default '0',
  `UserID` int(11) default '0',
  `templetfile` varchar(128) default NULL,
  PRIMARY KEY  (`PhotoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_photo` */

insert  into `je_photo`(`PhotoID`,`ChannelID`,`ClassID`,`PhotoName`,`Author`,`CopyFrom`,`Inputer`,`Editor`,`Keyword`,`Hits`,`DayHits`,`WeekHits`,`MonthHits`,`CommentCount`,`UpdateTime`,`CreateTime`,`PhotoThumb`,`PhotoUrl`,`PhotoSize`,`OnTop`,`Elite`,`Status`,`PhotoIntro`,`InfoPoint`,`Deleted`,`Stars`,`LastHitTime`,`TemplateID`,`SkinID`,`VoteID`,`PresentExp`,`InfoPurview`,`arrGroupID`,`ChargeType`,`PitchTime`,`ReadTimes`,`DividePercent`,`BlogID`,`UserID`,`templetfile`) values (1,3,40,'经典回忆','经典回忆','本站原创','添加录入者',NULL,'经典回忆',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538632696251253863269625557048112.jpg','12538632696401253863269640130877046.jpg',NULL,0,0,0,'经典回忆',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21bdc881-7a9a-4625-9f64-6f54115fcb3a',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,3,40,'经典回忆','经典回忆','本站原创','添加录入者',NULL,'经典回忆',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538632696251253863269625557048112.jpg','12538632696401253863269640635863442.jpg',NULL,0,0,0,'经典回忆',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21bdc881-7a9a-4625-9f64-6f54115fcb3a',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,40,'经典回忆','经典回忆','本站原创','添加录入者',NULL,'经典回忆',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538632696251253863269625557048112.jpg','12538632696401253863269640387405603.jpg',NULL,0,0,0,'经典回忆',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21bdc881-7a9a-4625-9f64-6f54115fcb3a',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,3,40,'经典回忆','经典回忆','本站原创','添加录入者',NULL,'经典回忆',1,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538632696251253863269625557048112.jpg','12538632696401253863269640620816603.jpg',NULL,0,0,0,'经典回忆',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21bdc881-7a9a-4625-9f64-6f54115fcb3a',NULL,NULL,1,NULL,NULL,NULL,NULL),(5,3,40,'经典回忆','经典回忆','本站原创','添加录入者',NULL,'经典回忆',7,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538632696251253863269625557048112.jpg','12538632696251253863269625557048112.jpg',NULL,0,0,0,'经典回忆',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'21bdc881-7a9a-4625-9f64-6f54115fcb3a',NULL,NULL,7,NULL,NULL,NULL,NULL),(6,3,0,'奥运会风采展示2','经典回忆','本站原创','添加录入者',NULL,'经典回忆',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538633659371253863365937275688600.jpg','12538633659371253863365937123512475.jpg',NULL,0,0,0,'奥运风采洗面奶',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6479ea81-a8b3-4f95-87eb-3b93245a0a13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,3,0,'奥运会风采展示2','经典回忆','本站原创','添加录入者',NULL,'经典回忆',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538633659371253863365937275688600.jpg','12538633659371253863365937746853861.jpg',NULL,0,0,0,'奥运风采洗面奶',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6479ea81-a8b3-4f95-87eb-3b93245a0a13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,3,0,'奥运会风采展示2','经典回忆','本站原创','添加录入者',NULL,'经典回忆',2,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538633659371253863365937275688600.jpg','12538633659371253863365937775551348.jpg',NULL,0,0,0,'奥运风采洗面奶',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6479ea81-a8b3-4f95-87eb-3b93245a0a13',NULL,NULL,2,NULL,NULL,NULL,NULL),(9,3,0,'奥运会风采展示2','经典回忆','本站原创','添加录入者',NULL,'经典回忆',1,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538633659371253863365937275688600.jpg','12538633659371253863365937420748150.jpg',NULL,0,0,0,'奥运风采洗面奶',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6479ea81-a8b3-4f95-87eb-3b93245a0a13',NULL,NULL,1,NULL,NULL,NULL,NULL),(10,3,0,'奥运会风采展示2','经典回忆','本站原创','添加录入者',NULL,'经典回忆',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-25 00:00:00','12538633659371253863365937275688600.jpg','12538633659371253863365937275688600.jpg',NULL,0,0,0,'奥运风采洗面奶',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6479ea81-a8b3-4f95-87eb-3b93245a0a13',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,3,16,'奥运会风采展示1','经典回忆','本站原创','添加录入者',NULL,'组图搜索',3,NULL,NULL,NULL,NULL,NULL,'2009-09-26 00:00:00','12539072777341253907277734156822512.jpg','12539072778431253907277843885484261.jpg',NULL,0,0,0,'奥运会风采展示1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8866f57a-56ff-4427-a158-2a591a9ee1dc',NULL,NULL,3,NULL,NULL,NULL,NULL),(12,3,16,'奥运会风采展示1','经典回忆','本站原创','添加录入者',NULL,'组图搜索',1,NULL,NULL,NULL,NULL,NULL,'2009-09-26 00:00:00','12539072777341253907277734156822512.jpg','12539072778431253907277843865873214.jpg',NULL,0,0,0,'奥运会风采展示1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8866f57a-56ff-4427-a158-2a591a9ee1dc',NULL,NULL,1,NULL,NULL,NULL,NULL),(13,3,16,'奥运会风采展示1','经典回忆','本站原创','添加录入者',NULL,'组图搜索',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-26 00:00:00','12539072777341253907277734156822512.jpg','12539072778431253907277843734330372.jpg',NULL,0,0,0,'奥运会风采展示1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8866f57a-56ff-4427-a158-2a591a9ee1dc',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,3,16,'奥运会风采展示1','经典回忆','本站原创','添加录入者',NULL,'组图搜索',NULL,NULL,NULL,NULL,NULL,NULL,'2009-09-26 00:00:00','12539072777341253907277734156822512.jpg','12539072778431253907277843625708514.jpg',NULL,0,0,0,'奥运会风采展示1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8866f57a-56ff-4427-a158-2a591a9ee1dc',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,3,16,'奥运会风采展示1','经典回忆','本站原创','添加录入者',NULL,'组图搜索',2,NULL,NULL,NULL,NULL,NULL,'2009-09-26 00:00:00','12539072777341253907277734156822512.jpg','12539072777341253907277734156822512.jpg',NULL,0,0,0,'奥运会风采展示1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8866f57a-56ff-4427-a158-2a591a9ee1dc',NULL,NULL,2,NULL,NULL,NULL,NULL),(21,4,24,'本站原创','本站原创','本站原创','添加录入者',NULL,'组图搜索',1,NULL,NULL,NULL,NULL,NULL,'2009-12-04 00:00:00','uploadphoto//2009-12-04//1259881865734.jpg','uploadphoto//2009-12-04//1259881865734.jpg',NULL,0,0,0,'本站原创',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa5e4d2d-7db7-491a-9298-fdabca6c17bb',NULL,NULL,1,NULL,NULL,NULL,'error.jsp'),(22,4,24,'本站原创','本站原创','本站原创','添加录入者',NULL,'组图搜索',0,NULL,NULL,NULL,NULL,NULL,'2009-12-04 00:00:00','uploadphoto//2009-12-04//1259881879859.jpg','uploadphoto//2009-12-04//1259881879859.jpg',NULL,0,0,0,'本站原创',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa5e4d2d-7db7-491a-9298-fdabca6c17bb',NULL,NULL,NULL,NULL,NULL,NULL,'error.jsp'),(23,4,24,'本站原创','本站原创','本站原创','添加录入者',NULL,'组图搜索',0,NULL,NULL,NULL,NULL,NULL,'2009-12-04 00:00:00','uploadphoto//2009-12-04//1259881811671.jpg','uploadphoto//2009-12-04//1259881811671.jpg',NULL,0,0,0,'本站原创',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa5e4d2d-7db7-491a-9298-fdabca6c17bb',NULL,NULL,NULL,NULL,NULL,NULL,'error.jsp'),(24,4,24,'本站原创','本站原创','本站原创','添加录入者',NULL,'组图搜索',0,NULL,NULL,NULL,NULL,NULL,'2009-12-04 00:00:00','uploadphoto//2009-12-04//1259881811671.jpg','uploadphoto//2009-12-04//1259881811703.gif',NULL,0,0,0,'本站原创',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa5e4d2d-7db7-491a-9298-fdabca6c17bb',NULL,NULL,NULL,NULL,NULL,NULL,'error.jsp'),(25,4,24,'本站原创','本站原创','本站原创','添加录入者',NULL,'组图搜索',0,NULL,NULL,NULL,NULL,NULL,'2009-12-04 00:00:00','uploadphoto//2009-12-04//1259881811671.jpg','uploadphoto//2009-12-04//1259881811671.jpg',NULL,0,0,0,'本站原创',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aa5e4d2d-7db7-491a-9298-fdabca6c17bb',NULL,NULL,NULL,NULL,NULL,NULL,'error.jsp'),(26,1,12,'秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','添加录入者',NULL,'秋季流行服饰女性最新款dd',NULL,NULL,NULL,NULL,NULL,NULL,'2010-01-14 00:00:00','uploadphoto//2010-01-14//1263458146250.jpg','uploadphoto//2010-01-14//1263458146250.jpg',NULL,0,0,0,'JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);',NULL,0,NULL,NULL,60,NULL,NULL,NULL,NULL,'175e16c3-a1e6-4106-a875-0c4057f13b48',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,1,12,'秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','添加录入者',NULL,'秋季流行服饰女性最新款dd',0,NULL,NULL,NULL,NULL,NULL,'2010-01-14 00:00:00','uploadphoto//2010-01-14//1263457092828.jpg','uploadphoto//2010-01-14//1263457088750.jpg',NULL,0,0,0,'JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);',NULL,0,NULL,NULL,60,NULL,NULL,NULL,NULL,'175e16c3-a1e6-4106-a875-0c4057f13b48',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,1,12,'秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','添加录入者',NULL,'秋季流行服饰女性最新款dd',0,NULL,NULL,NULL,NULL,NULL,'2010-01-14 00:00:00','uploadphoto//2010-01-14//1263457092828.jpg','uploadphoto//2010-01-14//1263457092828.jpg',NULL,0,0,0,'JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);',NULL,0,NULL,NULL,60,NULL,NULL,NULL,NULL,'175e16c3-a1e6-4106-a875-0c4057f13b48',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,1,0,'秋季流行服饰女性最新款dd','秋季流行服饰女性最新款dd','本站原创','添加录入者',NULL,'组图搜索',NULL,NULL,NULL,NULL,NULL,NULL,'2010-01-14 00:00:00','uploadphoto//2010-01-14//1263457830562.jpg','uploadphoto//2010-01-14//1263457830562.jpg',NULL,0,0,0,'JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);',NULL,0,NULL,NULL,60,NULL,NULL,NULL,NULL,'dfb47777-864e-4242-ae82-13039008c3ee',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_producer` */

DROP TABLE IF EXISTS `je_producer`;

CREATE TABLE `je_producer` (
  `ProducerID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) NOT NULL default '0',
  `ProducerName` text,
  `ProducerShortName` varchar(50) default '',
  `ProducerPhoto` text,
  `BirthDay` datetime default NULL,
  `Address` text,
  `Postcode` varchar(50) default '',
  `Phone` varchar(50) default '',
  `Fax` varchar(50) default '',
  `Email` varchar(50) default '',
  `Homepage` varchar(100) default '',
  `ProducerIntro` longtext,
  `Passed` int(11) default '0',
  `onTop` int(11) default '0',
  `IsElite` int(11) default '0',
  `Hits` int(11) default '0',
  `ProducerType` int(11) default '0',
  PRIMARY KEY  (`ProducerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_producer` */

insert  into `je_producer`(`ProducerID`,`ChannelID`,`ProducerName`,`ProducerShortName`,`ProducerPhoto`,`BirthDay`,`Address`,`Postcode`,`Phone`,`Fax`,`Email`,`Homepage`,`ProducerIntro`,`Passed`,`onTop`,`IsElite`,`Hits`,`ProducerType`) values (1,0,'JeSHop本站提供商品及货源1','JeSHop本站凤飞飞','1253440634187.jpg','2010-01-13 00:00:00','山西省太原市桥东街清新雅苑','030000','6251214','0354-5214214','y_flash@163.com','http://','JeSHop本站提供商品及货源JeSHop本站提供商品及货源JeSHop本站提供商品及货源JeSHop本站提供商品及货源<img src=\"../upfile//1253440676968.jpg\" />',1,0,0,NULL,0),(2,0,'豆豆女性服饰专卖店','豆豆女性服饰专卖随碟附送的发','1253440846234.jpg','2010-01-13 00:00:00','豆豆女性服饰专卖店太原店','豆豆女性服饰专卖店','6251214','0354-5214214','y_flash@163.com','http://','豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店',0,0,0,NULL,0),(3,0,'豆豆女性服饰专卖店','豆豆女性服饰专卖随碟附送的发','uploadphoto//2010-01-13//1263320283984.jpg','2010-01-13 00:00:00','豆豆女性服饰专卖店太原店','豆豆女性服饰专卖店','6251214','0354-5214214','y_flash@163.com','http://','豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店豆豆女性服饰专卖店',0,0,0,NULL,0);

/*Table structure for table `je_product` */

DROP TABLE IF EXISTS `je_product`;

CREATE TABLE `je_product` (
  `ProductID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) NOT NULL default '0',
  `ProductNum` text,
  `BarCode` varchar(50) default '',
  `ClassID` int(11) default '0',
  `ProductKind` int(11) default '0',
  `ProductName` text,
  `ProductModel` text,
  `ProductStandard` text,
  `ProducerId` int(11) default '0',
  `TrademarkName` varchar(50) default '',
  `ProductIntro` longtext,
  `ProductExplain` longtext,
  `ProductThumb` varchar(50) default '',
  `ProductType` int(11) default '0',
  `unit` varchar(50) default '',
  `Price` double(19,4) default '0.0000',
  `Price_Original` double(19,4) default '0.0000',
  `Price_Market` double(19,4) default '0.0000',
  `Price_Member` double(19,4) default '0.0000',
  `Price_Agent` double(19,4) default '0.0000',
  `price_tuangou` double(19,4) default '0.0000',
  `tuangou_numer` int(11) default '0',
  `OnTop` int(11) default '0',
  `IsHot` int(11) default '0',
  `IsElite` int(11) default '0',
  `Stars` int(11) default '0',
  `Stocks` int(11) default '0',
  `OrderNum` int(11) default '0',
  `BeginDate` datetime default NULL,
  `endDate` datetime default NULL,
  `LimitNum` int(11) default '0',
  `Keyword` text,
  `CommentCount` int(11) default '0',
  `UpdateTime` datetime default NULL,
  `CreateTime` datetime default NULL,
  `DownloadUrl` text,
  `Hits` int(11) default '0',
  `BuyTimes` int(11) default '0',
  `VoteID` int(11) default '0',
  `userId` int(11) default '0',
  `tempfile` varchar(255) default NULL,
  `status` int(11) default NULL,
  `contactStr` text,
  `isCommont` int(10) unsigned default '0',
  `curvey` text,
  PRIMARY KEY  (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_product` */

insert  into `je_product`(`ProductID`,`ChannelID`,`ProductNum`,`BarCode`,`ClassID`,`ProductKind`,`ProductName`,`ProductModel`,`ProductStandard`,`ProducerId`,`TrademarkName`,`ProductIntro`,`ProductExplain`,`ProductThumb`,`ProductType`,`unit`,`Price`,`Price_Original`,`Price_Market`,`Price_Member`,`Price_Agent`,`price_tuangou`,`tuangou_numer`,`OnTop`,`IsHot`,`IsElite`,`Stars`,`Stocks`,`OrderNum`,`BeginDate`,`endDate`,`LimitNum`,`Keyword`,`CommentCount`,`UpdateTime`,`CreateTime`,`DownloadUrl`,`Hits`,`BuyTimes`,`VoteID`,`userId`,`tempfile`,`status`,`contactStr`,`isCommont`,`curvey`) values (53,1,'123','000006',7,0,'新女性服饰系列展示','01010101-XLM','新型系列产品',1,'豆豆精品拍拍','size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\"','size=\"6\" size=\"6\" size=\"6\" size=\"6\" size=\"6\"','uploadphoto//2009-12-01//1259602309359.png',NULL,'套',NULL,NULL,34.0000,34.0000,NULL,34.0000,34,NULL,0,0,2,NULL,NULL,'2010-01-03 00:00:00','2010-01-20 00:00:00',12,NULL,NULL,NULL,NULL,'http://',145,44,NULL,0,'showProduct.jsp',2,'52,51,50',NULL,'商品质量很好:12||商品质量很差:5||差不多吧:10||:0||:0||:0'),(55,2,'123','000008',0,0,'秋季流行服饰女性最新款','01010101','新型系列产品',1,'豆豆精品拍拍','<p><img src=\"../upfile/uploadphoto//2009-12-08//1260257705203.jpg\" /></p>','<img style=\"WIDTH: 201px; HEIGHT: 116px\" height=\"30\" hspace=\"0\" src=\"../upfile/uploadphoto//2009-12-08//1260257711781.jpg\" width=\"28\" />','uploadphoto//2009-12-08//1260257698109.jpg',NULL,'条',NULL,NULL,0.0000,0.0000,NULL,0.0000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,9,'',0,NULL,NULL,''),(56,1,'122','000009',0,0,'新商品图片测试','01010101-XLM','新型系列产品',1,'豆豆女性服饰品牌','piduploadphoto//2009uuploadphoto//2009-12-02//1259700166687.jpgploadphoto//2009-12-02//1259700166687.jpg-12-02//1259700166687.jpg','uploadphoto//2009-12-0uploadphoto//2009-12-02//1259700166687.jpguploadphoto//2009-12-02//1259700166687.jpg2//1259700166687.jpg','uploadphoto//2010-01-12//1263286594718.jpg',NULL,'千克',NULL,NULL,0.0000,0.0000,NULL,2.5000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'showProduct.jsp',0,NULL,NULL,''),(57,1,'150','000010',0,0,'新商品图片测试','01010101','新型系列产品',2,'豆豆女性服饰品牌','ssssssssssssssssssssssss','sssssssssssssssssssssssssssssssssss','uploadphoto//2010-01-14//1263455911312.gif',NULL,'件',NULL,NULL,0.0000,0.0000,NULL,0.0000,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,NULL,NULL,0,'showProduct.jsp',0,NULL,NULL,''),(58,1,'23','000011',28,0,'秋季流行服饰女性最新款dd','刷刷刷','试试',1,'豆豆精品拍拍','JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);','JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);','uploadphoto//2010-01-14//1263456015046.jpg',NULL,'是',NULL,NULL,23.0000,23.0000,NULL,23.0000,23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,'',0,NULL,NULL,''),(59,1,'23','000012',0,0,'秋季流行服饰女性最新款dd','刷刷刷','试试',1,'豆豆精品拍拍','JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);','JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);','uploadphoto//2010-01-14//1263456042312.jpg',NULL,'件',NULL,NULL,12.0000,23.0000,NULL,33.0000,34,NULL,0,0,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',0,0,NULL,9,'',1,'',1,''),(60,1,'23','000013',12,0,'秋季流行服饰女性最新款dd','刷刷刷','试试',1,'豆豆精品拍拍','JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);','JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);JeUser tuser = (JeUser)ServletActionContext.getRequest().getSession().getAttribute(\"user\");<br />&nbsp;&nbsp;if(tuser==null)<br />&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;return \"regeUser\";<br />&nbsp;&nbsp;}<br />&nbsp;&nbsp;userInfodao = new JeUserInfoDAO();<br />&nbsp;&nbsp;userInfo = (JeUserInfo)this.userInfodao.findByUserId(tuser.getUserId()).get(0);','uploadphoto//2010-01-14//1263456076796.jpg',NULL,'件',NULL,NULL,0.0000,0.0000,NULL,0.0000,0,NULL,1,1,2,NULL,NULL,'2010-01-04 00:00:00','2010-01-06 00:00:00',24,NULL,NULL,NULL,NULL,'http://',0,0,NULL,9,'',1,'',1,'');

/*Table structure for table `je_serviceitem` */

DROP TABLE IF EXISTS `je_serviceitem`;

CREATE TABLE `je_serviceitem` (
  `ItemID` int(11) NOT NULL auto_increment,
  `ClientID` int(11) default '0',
  `ContacterID` int(11) default '0',
  `OrderFormID` int(11) default '0',
  `ServiceTime` datetime default NULL,
  `ServiceType` varchar(50) default '',
  `ServiceMode` varchar(50) default '',
  `ServiceTitle` varchar(50) default '',
  `ServiceContent` longtext,
  `ServiceResult` int(11) default '0',
  `TakeTime` int(11) default '0',
  `Processor` varchar(50) default '',
  `Inputer` varchar(50) default '',
  `Feedback` longtext,
  `ConfirmTime` datetime default NULL,
  `ConfirmCaller` varchar(50) default '',
  `ConfirmScore` int(11) default '0',
  `ConfirmFeedback` longtext,
  `Remark` longtext,
  PRIMARY KEY  (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_serviceitem` */

/*Table structure for table `je_slid` */

DROP TABLE IF EXISTS `je_slid`;

CREATE TABLE `je_slid` (
  `huanID` int(11) NOT NULL auto_increment,
  `Name` varchar(50) default '',
  `width` int(11) default '0',
  `height` int(11) default '0',
  `picUrl` varchar(50) default '',
  `text` varchar(50) default '',
  `orderID` int(11) default '0',
  `linkURL` varchar(50) default '',
  `channelID` int(11) default '0',
  `userId` int(11) default '0',
  `sp1ID` int(11) default '0',
  `sp2ID` int(11) default '0',
  `sp3ID` int(11) default '0',
  PRIMARY KEY  (`huanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_slid` */

insert  into `je_slid`(`huanID`,`Name`,`width`,`height`,`picUrl`,`text`,`orderID`,`linkURL`,`channelID`,`userId`,`sp1ID`,`sp2ID`,`sp3ID`) values (1,'JEShop大型网店系统CMS',NULL,NULL,'uploadphoto//2010-01-13//1263376990687.jpg','EShop大型网店系统CMS',NULL,'http://www.baidu.com',NULL,NULL,NULL,NULL,NULL),(2,'JEShop大型网店系统CMS',NULL,NULL,'uploadphoto//2010-01-13//1263365705546.jpg','JEShop大型网店系统CMS',NULL,'#',NULL,NULL,NULL,NULL,NULL),(3,'JEShop大型网店系统CMS',NULL,NULL,'uploadphoto//2010-01-15//1263538232593.jpg','JEShop大型网店系统CMS',NULL,'#',NULL,NULL,NULL,NULL,NULL),(4,'JEShop大型网店系统CMS',NULL,NULL,'uploadphoto//2010-01-13//1263376969171.jpg','JEShop大型网店系统CMS',NULL,'#',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_soft` */

DROP TABLE IF EXISTS `je_soft`;

CREATE TABLE `je_soft` (
  `SoftID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) NOT NULL default '0',
  `ClassID` int(11) NOT NULL default '0',
  `SoftName` varchar(255) NOT NULL default '',
  `SoftVersion` varchar(100) default '',
  `Author` varchar(30) default '',
  `CopyFrom` varchar(255) default '',
  `DemoUrl` varchar(200) default '',
  `Inputer` varchar(20) default '',
  `Editor` varchar(20) default '',
  `Keyword` varchar(255) default '',
  `Hits` int(11) default '0',
  `DayHits` int(11) default '0',
  `WeekHits` int(11) default '0',
  `MonthHits` int(11) default '0',
  `CommentCount` int(11) default '0',
  `UpdateTime` datetime default NULL,
  `CreateTime` datetime default NULL,
  `OperatingSystem` varchar(100) default '',
  `SoftType` varchar(50) default '',
  `SoftLanguage` varchar(50) default '',
  `CopyrightType` varchar(50) default '',
  `SoftSize` int(11) default '0',
  `RegUrl` varchar(200) default '',
  `OnTop` tinyint(1) default '0',
  `Elite` tinyint(1) default '0',
  `Status` int(11) default '0',
  `SoftIntro` longtext,
  `SoftPicUrl` varchar(255) default '',
  `DownloadUrl` longtext,
  `InfoPoint` int(11) default '0',
  `Deleted` tinyint(1) default '0',
  `Stars` int(11) default '0',
  `DecompressPassword` varchar(50) default '',
  `LastHitTime` datetime default NULL,
  `TemplateID` int(11) default '0',
  `SkinID` int(11) default '0',
  `ErrorTimes` int(11) default '0',
  `VoteID` int(11) default '0',
  `PresentExp` double(53,0) default '0',
  `BrowseTimes` int(11) default '0',
  `InfoPurview` int(11) default '0',
  `arrGroupID` varchar(255) default '',
  `ChargeType` int(11) default '0',
  `PitchTime` int(11) default '0',
  `ReadTimes` int(11) default '0',
  `DividePercent` int(11) default '0',
  `BlogID` int(11) default '0',
  `linkurl` varchar(255) default NULL,
  PRIMARY KEY  (`SoftID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_soft` */

insert  into `je_soft`(`SoftID`,`ChannelID`,`ClassID`,`SoftName`,`SoftVersion`,`Author`,`CopyFrom`,`DemoUrl`,`Inputer`,`Editor`,`Keyword`,`Hits`,`DayHits`,`WeekHits`,`MonthHits`,`CommentCount`,`UpdateTime`,`CreateTime`,`OperatingSystem`,`SoftType`,`SoftLanguage`,`CopyrightType`,`SoftSize`,`RegUrl`,`OnTop`,`Elite`,`Status`,`SoftIntro`,`SoftPicUrl`,`DownloadUrl`,`InfoPoint`,`Deleted`,`Stars`,`DecompressPassword`,`LastHitTime`,`TemplateID`,`SkinID`,`ErrorTimes`,`VoteID`,`PresentExp`,`BrowseTimes`,`InfoPurview`,`arrGroupID`,`ChargeType`,`PitchTime`,`ReadTimes`,`DividePercent`,`BlogID`,`linkurl`) values (16,8,58,'这是测试版本','beta 1.0','杨龙                        ','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,'2010-01-16 01:31:02','2009-10-16 00:56:44','linux','国产软件','中文简体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,2,'软件搭配销售管理内容','uploadphoto//2010-01-16//1263576655265.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ShowSoft.jsp'),(17,8,58,'领先科技测试软件版本','beta 1.0','杨龙      ','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,'2009-10-16 13:14:07','2009-10-16 00:57:11','linux','国产软件','中文简体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,1,'搭配销售测试版本','uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,8,58,'领先科技测试软件版本','beta 1.0','杨龙      ','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,'2009-11-03 15:04:04','2009-10-16 00:57:45','linux','国产软件','中文简体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,1,'','uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ShowSoft.jsp'),(19,8,58,'领先科技s测试软件版本','beta 1.0','杨龙      ','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,'2010-01-14 17:30:26','2009-10-16 00:57:48','linux','国产软件','中文简体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,2,'adminBaseadminBaseadminBase','uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),(20,8,58,'领先科技测试软件版本','beta 1.0','杨龙      ','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,'2009-12-02 20:48:36','2009-10-16 00:57:50','linux','国产软件','中文简体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,2,'ssssssssssssssssssssssssssss','uploadphoto//2009-12-02//1259758109187.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ShowSoft.jsp'),(21,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:01:25','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,1,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,8,58,'领先科技测试软件版本','beta 1.0','杨龙      ','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,'2009-12-04 03:39:31','2009-10-16 01:03:08','linux','国产软件','中文简体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,1,'','uploadphoto//2009-12-04//1259869168718.png','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ShowSoft.jsp'),(25,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:03:53','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:03:55','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:03:57','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:06:01','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:06:40','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:07:36','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,8,58,'领先科技测试软件版本','beta 1.0','杨龙','本站提供','http://www.j-eshop.cn',NULL,NULL,'白色长风衣',NULL,NULL,NULL,NULL,NULL,NULL,'2009-10-16 01:14:34','linux','国产软件','中文繁体','免费软件',15000,'http://www.j-eshop.cn',NULL,0,NULL,NULL,'uploadphoto//2009-10-16//1255625196718.jpg','http://www.j-eshop.cn',NULL,NULL,NULL,'http://www.j-eshop.cn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,4,23,'领先科技s测试软件版本','1025','yagnlong','yanglong','新的软件平道',NULL,NULL,'新的软件平道',NULL,NULL,NULL,NULL,NULL,NULL,'2010-01-14 22:17:36','linux','国外软件','中文繁体','免费软件',123,'新的软件平道',NULL,0,1,NULL,'uploadphoto//2010-01-14//1263478652031.jpg','http://',NULL,NULL,NULL,'21323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_stylename` */

DROP TABLE IF EXISTS `je_stylename`;

CREATE TABLE `je_stylename` (
  `StyleId` int(11) NOT NULL auto_increment,
  `StyleName` varchar(50) default '',
  `StyleShowName` varchar(50) default '',
  `StyleLevel` int(11) default '0',
  `StylePath` varchar(50) default '',
  `StylePic` varchar(50) default '',
  `StyleState` int(11) default '0',
  `StylePrice` double(19,4) default '0.0000',
  `UserId` int(11) default '0',
  PRIMARY KEY  (`StyleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_stylename` */

insert  into `je_stylename`(`StyleId`,`StyleName`,`StyleShowName`,`StyleLevel`,`StylePath`,`StylePic`,`StyleState`,`StylePrice`,`UserId`) values (1,'default','默认绿色风暴',0,'default','uploadphoto//2009-12-11//1260522253046.png',0,0.0000,0);

/*Table structure for table `je_templetclass` */

DROP TABLE IF EXISTS `je_templetclass`;

CREATE TABLE `je_templetclass` (
  `id` int(11) NOT NULL auto_increment,
  `className` varchar(255) default NULL,
  `showName` varchar(255) default NULL,
  `isDefault` int(11) default '0' COMMENT '1默认模板',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_templetclass` */

insert  into `je_templetclass`(`id`,`className`,`showName`,`isDefault`) values (1,'default','默认模板',1);

/*Table structure for table `je_templetconfig` */

DROP TABLE IF EXISTS `je_templetconfig`;

CREATE TABLE `je_templetconfig` (
  `id` int(11) NOT NULL auto_increment,
  `classId` int(11) default '0',
  `showName` varchar(255) default NULL,
  `filePath` varchar(255) default NULL,
  `script` varchar(255) default NULL,
  `type` int(11) default '0' COMMENT '0 文件模板 1 内容模板 2 自定义模板 3 script文件',
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_templetconfig` */

insert  into `je_templetconfig`(`id`,`classId`,`showName`,`filePath`,`script`,`type`,`content`) values (4,3,'首页模板','index.jsp','shouye',1,NULL),(6,1,'首页模板','index.jsp','shouye',1,NULL),(12,1,'商城频道首页','ShowShopChannel.jsp','商城频道首页',31,NULL),(14,1,'商城分类首页','ShowClass.jsp','商城分类首页',32,NULL),(18,1,'商品显示页面模板1','showProduct.jsp','商品显示页面内页',33,NULL),(19,1,'图文频道首页模板','ShowNewsChannel.jsp','图文频道首页模板',10,NULL),(20,1,'图文频道栏目模板','ShowNewsClass.jsp','图文频道栏目页',11,NULL),(21,1,'图文频道内页模板','ShowNews.jsp','图文频道内页模板',12,NULL),(23,1,'软件频道分类模板','ShowSoftClass.jsp','软件频道分类',21,NULL),(24,1,'软件频道内页模板','ShowSoft.jsp','软件频道内页',22,NULL),(25,1,'软件频道首页模板','ShowSoftChanel.jsp','软件频道首页模板',20,NULL),(29,1,'图片显示内页','error.jsp','图片显示内页',62,NULL),(30,1,'显示名称','buttom.jsp','显示名称',41,NULL);

/*Table structure for table `je_trademark` */

DROP TABLE IF EXISTS `je_trademark`;

CREATE TABLE `je_trademark` (
  `TrademarkID` int(11) NOT NULL auto_increment,
  `ChannelID` int(11) default '0',
  `ProducerID` int(11) default '0',
  `TrademarkName` text,
  `TrademarkPhoto` text,
  `TrademarkIntro` longtext,
  `TrademarkType` int(11) default '0',
  `Passed` int(11) default '0',
  `onTop` int(11) default '0',
  `IsElite` int(11) default '0',
  `Hits` int(11) default '0',
  PRIMARY KEY  (`TrademarkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_trademark` */

insert  into `je_trademark`(`TrademarkID`,`ChannelID`,`ProducerID`,`TrademarkName`,`TrademarkPhoto`,`TrademarkIntro`,`TrademarkType`,`Passed`,`onTop`,`IsElite`,`Hits`) values (2,0,2,'豆豆女性服饰品牌1','uploadphoto//2010-01-13//1263322053890.jpg','豆豆女性服饰品牌豆豆女性服饰品牌豆豆女性服饰品牌豆豆女性服饰品牌豆豆女性服饰品牌豆豆女性服饰品牌豆豆女性服饰品牌',1,0,NULL,NULL,NULL),(13,0,1,'本站精品货源提供sssss2','uploadphoto//2010-01-13//1263322005328.jpg','本站精品货源提供本站精品货源提供',1,0,NULL,NULL,NULL),(14,0,1,'本站精品货源提供sssss423','uploadphoto//2010-01-13//1263322069531.gif','本站精品货源提供本站精品货源提供',1,0,NULL,NULL,NULL);

/*Table structure for table `je_tradetype` */

DROP TABLE IF EXISTS `je_tradetype`;

CREATE TABLE `je_tradetype` (
  `tradTypeID` int(11) NOT NULL auto_increment,
  `tradName` varchar(50) default '',
  PRIMARY KEY  (`tradTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_tradetype` */

insert  into `je_tradetype`(`tradTypeID`,`tradName`) values (1,'国内品牌'),(2,'国际品牌'),(3,'地方品牌');

/*Table structure for table `je_unit` */

DROP TABLE IF EXISTS `je_unit`;

CREATE TABLE `je_unit` (
  `id` int(11) NOT NULL auto_increment,
  `name` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_unit` */

insert  into `je_unit`(`id`,`name`) values (1,'件'),(2,'套'),(3,'千克'),(4,'箱'),(5,'吨');

/*Table structure for table `je_user` */

DROP TABLE IF EXISTS `je_user`;

CREATE TABLE `je_user` (
  `UserID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) default '0',
  `ClientID` int(11) default '0',
  `UserType` int(11) default '0',
  `UserName` varchar(255) NOT NULL default '',
  `UserPassword` varchar(255) NOT NULL default '',
  `LastPassword` varchar(255) NOT NULL default '',
  `Question` varchar(255) default '',
  `Sign` longtext,
  `Answer` varchar(255) default '',
  `Email` varchar(255) default '',
  `UserFace` varchar(50) default '',
  `FaceWidth` smallint(6) default '0',
  `FaceHeight` smallint(6) default '0',
  `RegTime` datetime default NULL,
  `LastLoginTime` datetime default NULL,
  `LastLoginIP` varchar(50) default '',
  `LoginTimes` smallint(6) default '0',
  `Balance` double(19,4) default '0.0000',
  `UserExp` int(11) default '0',
  `PostItems` int(11) NOT NULL default '0',
  `PassedItems` int(11) default '0',
  `DelItems` int(11) default '0',
  `UnsignedItems` varchar(50) default '',
  `UnreadMsg` smallint(6) default '0',
  `UserPoint` int(11) default '0',
  `ConsumePoint` int(11) default '0',
  `IsLocked` int(11) NOT NULL default '0',
  `SpecialPermission` int(11) NOT NULL default '0',
  `arrClass_Browse` varchar(50) default '',
  `arrClass_View` varchar(50) default '',
  `arrClass_Input` varchar(255) default '',
  `Privacy` smallint(6) default '0',
  `UserFriendGroup` varchar(50) default '',
  `address` varchar(255) default '',
  `telphol` varchar(50) default '',
  PRIMARY KEY  (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_user` */

insert  into `je_user`(`UserID`,`GroupID`,`ClientID`,`UserType`,`UserName`,`UserPassword`,`LastPassword`,`Question`,`Sign`,`Answer`,`Email`,`UserFace`,`FaceWidth`,`FaceHeight`,`RegTime`,`LastLoginTime`,`LastLoginIP`,`LoginTimes`,`Balance`,`UserExp`,`PostItems`,`PassedItems`,`DelItems`,`UnsignedItems`,`UnreadMsg`,`UserPoint`,`ConsumePoint`,`IsLocked`,`SpecialPermission`,`arrClass_Browse`,`arrClass_View`,`arrClass_Input`,`Privacy`,`UserFriendGroup`,`address`,`telphol`) values (9,2,NULL,1,'yanglong','8f67f3bcb07304360b861e5bf5722d1b','8f67f3bcb07304360b861e5bf5722d1b','喜欢吃的一种食物',NULL,'山西刀削面','yanglong@163.com','uploadphoto//2010-01-12//1263286353343.gif',NULL,NULL,'2009-09-22 15:58:31',NULL,NULL,NULL,0.0000,NULL,0,0,0,NULL,NULL,325,0,1,0,NULL,'3|4','1|2|3|5|7|8',0,NULL,'',''),(12,1,NULL,1,'hanyang','8f67f3bcb07304360b861e5bf5722d1b','8f67f3bcb07304360b861e5bf5722d1b','喜欢吃的一种食物',NULL,'山西刀削面','yanglong@163.com',NULL,NULL,NULL,'2009-09-23 11:40:42',NULL,NULL,NULL,0.0000,NULL,0,0,0,NULL,NULL,25,0,1,0,NULL,'','1',0,NULL,'',''),(16,2,NULL,1,'buhuimeimei','8f67f3bcb07304360b861e5bf5722d1b','8f67f3bcb07304360b861e5bf5722d1b','喜欢吃的一种食物',NULL,'山西刀削面','yanglong@163.com',NULL,NULL,NULL,'2009-09-26 04:09:29',NULL,NULL,NULL,0.0000,NULL,0,0,0,NULL,NULL,25,0,1,0,NULL,'3|4|7|8','1|2|3|5',0,NULL,'','');

/*Table structure for table `je_useranswer` */

DROP TABLE IF EXISTS `je_useranswer`;

CREATE TABLE `je_useranswer` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default '0',
  `classId` int(11) default '0',
  `resultNum` double default '0',
  `userTime` datetime default NULL,
  `starttime` datetime default NULL,
  `endTime` datetime default NULL,
  `teachId` int(11) default '0',
  `context` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_useranswer` */

insert  into `je_useranswer`(`id`,`userId`,`classId`,`resultNum`,`userTime`,`starttime`,`endTime`,`teachId`,`context`) values (1,0,NULL,0,NULL,NULL,NULL,0,NULL),(2,0,NULL,0,NULL,NULL,NULL,0,NULL),(3,0,NULL,0,NULL,NULL,NULL,0,NULL),(4,0,NULL,0,NULL,NULL,NULL,0,NULL),(5,0,NULL,0,NULL,NULL,NULL,0,NULL),(6,0,NULL,0,NULL,NULL,NULL,0,NULL),(7,0,NULL,0,NULL,NULL,NULL,0,NULL),(8,0,NULL,0,NULL,NULL,NULL,0,NULL),(9,0,NULL,0,NULL,NULL,NULL,0,NULL),(10,0,NULL,0,NULL,NULL,NULL,0,NULL),(11,0,NULL,0,NULL,NULL,NULL,0,NULL),(12,0,NULL,0,NULL,NULL,NULL,0,NULL),(13,0,NULL,0,NULL,NULL,NULL,0,NULL),(14,0,NULL,0,NULL,NULL,NULL,0,NULL),(15,0,NULL,0,NULL,NULL,NULL,0,NULL),(16,0,NULL,0,NULL,NULL,NULL,0,NULL),(17,0,NULL,0,NULL,NULL,NULL,0,NULL),(18,0,NULL,0,NULL,NULL,NULL,0,NULL),(19,0,NULL,0,NULL,NULL,NULL,0,NULL),(20,0,2,0,NULL,NULL,NULL,NULL,NULL),(21,0,2,0,NULL,NULL,NULL,NULL,NULL),(22,0,2,0,NULL,NULL,NULL,NULL,NULL),(23,0,2,0,NULL,NULL,NULL,NULL,NULL),(24,0,2,0,NULL,NULL,NULL,NULL,NULL),(25,0,2,0,NULL,NULL,NULL,NULL,NULL),(26,0,2,0,NULL,NULL,NULL,NULL,NULL),(27,0,2,0,NULL,NULL,NULL,NULL,NULL),(28,0,2,0,NULL,NULL,NULL,NULL,NULL),(29,0,2,0,NULL,NULL,NULL,NULL,NULL),(30,0,2,0,NULL,NULL,NULL,NULL,NULL),(31,0,2,0,NULL,NULL,NULL,NULL,NULL),(32,0,2,0,NULL,NULL,NULL,NULL,NULL),(33,0,2,0,NULL,NULL,NULL,NULL,NULL),(34,0,2,0,NULL,NULL,NULL,NULL,NULL),(35,0,2,0,NULL,NULL,NULL,NULL,NULL),(36,0,2,0,NULL,NULL,NULL,NULL,NULL),(37,0,2,0,NULL,NULL,NULL,NULL,NULL),(38,0,2,0,NULL,NULL,NULL,NULL,NULL),(39,0,2,0,NULL,NULL,NULL,NULL,NULL),(40,0,2,0,NULL,NULL,NULL,NULL,NULL),(41,0,2,0,NULL,NULL,NULL,NULL,NULL),(42,0,2,0,NULL,NULL,NULL,NULL,NULL),(43,0,2,0,NULL,NULL,NULL,NULL,NULL),(44,0,2,0,NULL,NULL,NULL,NULL,NULL),(45,0,2,0,NULL,NULL,NULL,NULL,NULL),(46,0,2,0,NULL,NULL,NULL,NULL,NULL),(47,0,2,0,NULL,NULL,NULL,NULL,NULL),(48,0,2,0,NULL,NULL,NULL,NULL,NULL),(49,0,2,0,NULL,NULL,NULL,NULL,NULL),(50,0,2,0,NULL,NULL,NULL,NULL,NULL),(51,0,2,0,NULL,NULL,NULL,NULL,NULL),(52,0,2,0,NULL,NULL,NULL,NULL,NULL),(53,0,2,0,NULL,NULL,NULL,NULL,NULL),(54,0,2,0,NULL,NULL,NULL,NULL,NULL),(55,0,2,0,NULL,NULL,NULL,NULL,NULL),(56,0,2,0,NULL,NULL,NULL,NULL,NULL),(57,0,2,0,NULL,NULL,NULL,NULL,NULL),(58,0,2,0,NULL,NULL,NULL,NULL,NULL),(59,0,2,0,NULL,NULL,NULL,NULL,NULL),(60,0,2,0,NULL,NULL,NULL,NULL,NULL),(61,0,2,0,NULL,NULL,NULL,NULL,NULL),(62,0,2,0,NULL,NULL,NULL,NULL,NULL),(63,0,2,0,NULL,NULL,NULL,NULL,NULL),(64,0,2,0,NULL,NULL,NULL,NULL,NULL),(65,0,2,0,NULL,NULL,NULL,NULL,NULL),(66,0,2,0,NULL,NULL,NULL,NULL,NULL),(67,0,2,0,NULL,NULL,NULL,NULL,NULL),(68,0,2,0,NULL,NULL,NULL,NULL,NULL),(69,0,2,0,NULL,NULL,NULL,NULL,NULL),(70,0,2,0,NULL,NULL,NULL,NULL,NULL),(71,0,2,0,NULL,NULL,NULL,NULL,NULL),(72,0,2,0,NULL,NULL,NULL,NULL,NULL),(73,0,2,0,NULL,NULL,NULL,NULL,NULL),(74,0,2,0,NULL,NULL,NULL,NULL,NULL),(75,0,2,0,NULL,NULL,NULL,NULL,NULL),(76,0,2,0,NULL,NULL,NULL,NULL,NULL),(77,0,2,0,NULL,NULL,NULL,NULL,NULL),(78,0,2,0,NULL,NULL,NULL,NULL,NULL),(79,0,2,0,NULL,NULL,NULL,NULL,NULL),(80,0,2,0,NULL,NULL,NULL,NULL,NULL),(81,0,2,0,NULL,NULL,NULL,NULL,NULL),(82,0,2,0,NULL,NULL,NULL,NULL,NULL),(83,0,2,0,NULL,NULL,NULL,NULL,NULL),(84,0,2,0,NULL,NULL,NULL,NULL,NULL),(85,0,2,0,NULL,NULL,NULL,NULL,NULL),(86,0,2,0,NULL,NULL,NULL,NULL,NULL),(87,0,2,0,NULL,NULL,NULL,NULL,NULL),(88,0,2,0,NULL,NULL,NULL,NULL,NULL),(89,0,2,0,NULL,NULL,NULL,NULL,NULL),(90,0,2,0,NULL,NULL,NULL,NULL,NULL),(91,0,2,0,NULL,NULL,NULL,NULL,NULL),(92,0,2,0,NULL,NULL,NULL,NULL,NULL),(93,0,2,0,NULL,NULL,NULL,NULL,NULL),(94,0,2,0,NULL,NULL,NULL,NULL,NULL),(95,0,2,0,NULL,NULL,NULL,NULL,NULL),(96,0,2,0,NULL,NULL,NULL,NULL,NULL),(97,0,2,0,NULL,NULL,NULL,NULL,NULL),(98,0,2,0,NULL,NULL,NULL,NULL,NULL),(99,0,2,0,NULL,NULL,NULL,NULL,NULL),(100,0,2,0,NULL,NULL,NULL,NULL,NULL),(101,0,2,0,NULL,NULL,NULL,NULL,NULL),(102,0,2,0,NULL,NULL,NULL,NULL,NULL),(103,0,2,0,NULL,NULL,NULL,NULL,NULL),(104,0,2,0,NULL,NULL,NULL,NULL,NULL),(105,0,2,0,NULL,NULL,NULL,NULL,NULL),(106,0,2,0,NULL,NULL,NULL,NULL,NULL),(107,0,2,0,NULL,NULL,NULL,NULL,NULL),(108,0,2,0,NULL,NULL,NULL,NULL,NULL),(109,0,2,0,NULL,NULL,NULL,NULL,NULL),(110,0,2,0,NULL,NULL,NULL,NULL,NULL),(111,0,2,0,NULL,NULL,NULL,NULL,NULL),(112,0,2,0,NULL,NULL,NULL,NULL,NULL),(113,0,2,0,NULL,NULL,NULL,NULL,NULL),(114,0,2,0,NULL,NULL,NULL,NULL,NULL),(115,0,2,0,NULL,NULL,NULL,NULL,NULL),(116,0,2,0,NULL,NULL,NULL,NULL,NULL),(117,0,2,0,NULL,NULL,NULL,NULL,NULL),(118,0,2,0,NULL,NULL,NULL,NULL,NULL),(119,0,2,0,NULL,NULL,NULL,NULL,NULL),(120,0,2,0,NULL,NULL,NULL,NULL,NULL),(121,0,2,0,NULL,NULL,NULL,NULL,NULL),(122,0,2,0,NULL,NULL,NULL,NULL,NULL),(123,0,2,0,NULL,NULL,NULL,NULL,NULL),(124,0,2,0,NULL,NULL,NULL,NULL,NULL),(125,0,2,0,NULL,NULL,NULL,NULL,NULL),(126,0,2,0,NULL,NULL,NULL,NULL,NULL),(127,0,2,0,NULL,NULL,NULL,NULL,NULL),(128,0,2,0,NULL,NULL,NULL,NULL,NULL),(129,0,2,0,NULL,NULL,NULL,NULL,NULL),(130,0,2,0,NULL,NULL,NULL,NULL,NULL),(131,0,2,0,NULL,NULL,NULL,NULL,NULL),(132,0,2,0,NULL,NULL,NULL,NULL,NULL),(133,0,2,0,NULL,NULL,NULL,NULL,NULL),(134,0,2,0,NULL,NULL,NULL,NULL,NULL),(135,0,2,0,NULL,NULL,NULL,NULL,NULL),(136,0,2,0,NULL,NULL,NULL,NULL,NULL),(137,0,2,0,NULL,NULL,NULL,NULL,NULL),(138,0,2,0,NULL,NULL,NULL,NULL,NULL),(139,0,2,0,NULL,NULL,NULL,NULL,NULL),(140,0,2,0,NULL,NULL,NULL,NULL,NULL),(141,0,2,0,NULL,NULL,NULL,NULL,NULL),(142,0,2,0,NULL,NULL,NULL,NULL,NULL),(143,0,2,0,NULL,NULL,NULL,NULL,NULL),(144,0,2,0,NULL,NULL,NULL,NULL,NULL),(145,0,2,0,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_useranswerdetail` */

DROP TABLE IF EXISTS `je_useranswerdetail`;

CREATE TABLE `je_useranswerdetail` (
  `id` int(11) NOT NULL auto_increment,
  `anid` int(11) NOT NULL default '0',
  `tid` int(11) default NULL,
  `anserid` int(11) default NULL,
  `content` text,
  `isright` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_useranswerdetail` */

insert  into `je_useranswerdetail`(`id`,`anid`,`tid`,`anserid`,`content`,`isright`) values (1,21,22,52,NULL,0),(2,21,24,57,NULL,0),(3,22,22,51,NULL,0),(4,22,24,57,NULL,0),(5,23,22,52,NULL,0),(6,23,24,58,NULL,0),(7,24,22,51,NULL,0),(8,24,24,57,NULL,0),(9,25,22,51,NULL,0),(10,25,24,57,NULL,0),(11,26,22,51,NULL,0),(12,26,24,57,NULL,0),(13,27,22,51,NULL,0),(14,27,24,57,NULL,0),(15,28,22,51,NULL,0),(16,28,24,58,NULL,0),(17,29,22,56,NULL,0),(18,29,24,60,NULL,0),(19,30,24,59,NULL,0),(20,33,22,56,NULL,0),(21,33,24,60,NULL,0),(22,34,22,56,NULL,0),(23,34,24,60,NULL,0),(24,35,22,56,NULL,0),(25,35,24,60,NULL,0),(26,36,22,56,NULL,0),(27,36,24,60,NULL,0),(28,37,22,56,NULL,0),(29,37,24,60,NULL,0),(30,38,22,56,NULL,0),(31,38,24,60,NULL,0),(32,39,22,56,NULL,0),(33,39,24,60,NULL,0),(34,40,22,56,NULL,0),(35,40,24,60,NULL,0),(36,41,22,53,NULL,0),(37,41,24,58,NULL,0),(38,42,22,56,NULL,0),(39,42,24,60,NULL,0),(40,43,24,60,NULL,0),(41,44,22,56,NULL,0),(42,44,24,60,NULL,0),(43,45,22,56,NULL,0),(44,45,24,60,NULL,0),(45,46,22,56,NULL,0),(46,46,24,60,NULL,0),(47,47,22,56,NULL,0),(48,47,24,60,NULL,0),(49,48,22,56,NULL,0),(50,48,24,60,NULL,0),(51,49,22,56,NULL,0),(52,49,24,60,NULL,0),(53,50,22,56,NULL,0),(54,50,24,60,NULL,0),(55,51,22,56,NULL,0),(56,51,24,60,NULL,0),(57,52,22,56,NULL,0),(58,52,24,60,NULL,0),(59,53,22,56,NULL,0),(60,53,24,60,NULL,0),(61,54,22,56,NULL,0),(62,54,24,60,NULL,0),(63,55,22,56,NULL,0),(64,55,24,60,NULL,0),(65,56,22,56,NULL,0),(66,56,24,60,NULL,0),(67,57,22,56,NULL,0),(68,57,24,60,NULL,0),(69,58,22,56,NULL,0),(70,58,24,60,NULL,0),(71,59,22,56,NULL,0),(72,59,24,60,NULL,0),(73,60,22,56,NULL,0),(74,60,24,60,NULL,0),(75,61,22,56,NULL,0),(76,61,24,60,NULL,0),(77,62,22,56,NULL,0),(78,62,24,60,NULL,0),(79,63,22,56,NULL,0),(80,63,24,60,NULL,0),(81,64,22,56,NULL,0),(82,64,24,60,NULL,0),(83,65,22,56,NULL,0),(84,65,24,60,NULL,0),(85,66,22,56,NULL,0),(86,66,24,60,NULL,0),(87,67,22,56,NULL,0),(88,67,24,60,NULL,0),(89,68,22,56,NULL,0),(90,68,24,60,NULL,0),(91,69,22,56,NULL,0),(92,69,24,60,NULL,0),(93,70,22,56,NULL,0),(94,70,24,60,NULL,0),(95,71,22,56,NULL,0),(96,71,24,60,NULL,0),(97,72,22,56,NULL,0),(98,72,24,60,NULL,0),(99,73,22,56,NULL,0),(100,73,24,60,NULL,0),(101,74,22,56,NULL,0),(102,74,24,60,NULL,0),(103,75,22,56,NULL,0),(104,75,24,60,NULL,0),(105,76,22,54,NULL,0),(106,76,24,57,NULL,0),(107,77,22,53,NULL,0),(108,77,24,59,NULL,0),(109,78,22,53,NULL,0),(110,78,24,59,NULL,0),(111,79,22,53,NULL,0),(112,79,24,59,NULL,0),(113,80,22,53,NULL,0),(114,80,24,59,NULL,0),(115,81,22,53,NULL,0),(116,81,24,59,NULL,0),(117,82,22,53,NULL,0),(118,82,24,59,NULL,0),(119,83,22,53,NULL,0),(120,83,24,59,NULL,0),(121,84,22,53,NULL,0),(122,84,24,59,NULL,0),(123,85,22,53,NULL,0),(124,85,24,59,NULL,0),(125,86,22,53,NULL,0),(126,86,24,59,NULL,0),(127,87,22,53,NULL,0),(128,87,24,59,NULL,0),(129,88,22,53,NULL,0),(130,88,24,59,NULL,0),(131,89,22,53,NULL,0),(132,89,24,59,NULL,0),(133,90,22,52,NULL,0),(134,90,24,58,NULL,0),(135,91,22,54,NULL,0),(136,91,24,59,NULL,0),(137,92,22,51,NULL,0),(138,92,24,58,NULL,0),(139,93,22,56,NULL,0),(140,93,24,58,NULL,0),(141,94,22,51,NULL,0),(142,94,24,57,NULL,0),(143,95,22,51,NULL,0),(144,95,24,57,NULL,0),(145,96,22,51,NULL,0),(146,96,24,58,NULL,0),(147,97,22,52,NULL,0),(148,97,24,60,NULL,0),(149,98,22,53,NULL,0),(150,98,24,58,NULL,0),(151,98,25,63,NULL,0),(152,98,25,64,NULL,0),(153,98,25,65,NULL,0),(154,99,22,56,NULL,0),(155,99,24,59,NULL,0),(156,99,25,63,NULL,0),(157,99,25,64,NULL,0),(158,101,22,54,NULL,0),(159,101,24,59,NULL,0),(160,101,25,62,NULL,0),(161,101,25,63,NULL,0),(162,101,25,64,NULL,0),(163,102,22,54,NULL,0),(164,102,24,57,NULL,0),(165,102,25,61,NULL,0),(166,102,25,62,NULL,0),(167,102,25,63,NULL,0),(168,103,22,56,NULL,0),(169,104,22,56,NULL,0),(170,104,24,58,NULL,0),(171,105,22,56,NULL,0),(172,105,24,59,NULL,0),(173,106,22,54,NULL,0),(174,107,22,54,NULL,0),(175,107,25,61,NULL,0),(176,107,25,63,NULL,0),(177,107,25,64,NULL,0),(178,108,25,61,NULL,0),(179,108,25,62,NULL,0),(180,108,25,63,NULL,0),(181,108,25,64,NULL,0),(182,108,25,65,NULL,0),(183,109,25,61,NULL,0),(184,109,25,62,NULL,0),(185,109,25,63,NULL,0),(186,109,25,64,NULL,0),(187,109,25,65,NULL,0),(188,110,25,61,NULL,0),(189,110,25,62,NULL,0),(190,110,25,63,NULL,0),(191,110,25,64,NULL,0),(192,110,25,65,NULL,0),(193,111,22,56,NULL,0),(194,111,24,57,NULL,0),(195,112,22,51,NULL,0),(196,112,24,57,NULL,0),(197,112,25,61,NULL,0),(198,112,25,62,NULL,0),(199,112,25,63,NULL,0),(200,112,25,64,NULL,0),(201,112,25,65,NULL,0),(202,113,22,51,NULL,0),(203,113,24,57,NULL,0),(204,113,25,61,NULL,0),(205,113,25,62,NULL,0),(206,113,25,63,NULL,0),(207,113,25,64,NULL,0),(208,113,25,65,NULL,0),(209,114,22,51,NULL,0),(210,114,24,59,NULL,0),(211,114,25,63,NULL,0),(212,114,25,64,NULL,0),(213,115,22,51,NULL,0),(214,115,24,59,NULL,0),(215,115,25,63,NULL,0),(216,115,25,64,NULL,0),(217,116,22,51,NULL,0),(218,116,24,59,NULL,0),(219,116,25,63,NULL,0),(220,116,25,64,NULL,0),(221,117,22,56,NULL,0),(222,117,24,57,NULL,0),(223,117,25,61,NULL,0),(224,117,25,62,NULL,0),(225,117,25,64,NULL,0),(226,117,25,65,NULL,0),(227,118,22,53,NULL,0),(228,118,24,59,NULL,0),(229,118,25,63,NULL,0),(230,118,25,65,NULL,0),(231,118,27,67,'             \r\n             ',0),(232,119,22,53,NULL,0),(233,119,24,59,NULL,0),(234,119,25,63,NULL,0),(235,119,25,65,NULL,0),(236,119,27,67,'             \r\n             ',0),(237,120,27,66,'             \r\n             ',0),(238,121,27,66,'             \r\n             ',0),(239,123,27,68,'             \r\n             ',0),(240,123,28,72,'三和网络科技    ',0),(241,123,28,73,'三和网络科技    ',0),(242,123,28,74,'三和网络科技    ',0),(243,124,28,72,'             \r\n             ',0),(244,124,28,73,'             \r\n             ',0),(245,124,28,74,'             \r\n             ',0),(246,125,27,69,'             \r\n             杨龙单选附带简答问题设置',0),(247,125,28,72,'                          杨龙多选选附带简答问题设置\r\n             ',0),(248,125,28,73,'                          杨龙多选选附带简答问题设置\r\n             ',0),(249,125,28,74,'                          杨龙多选选附带简答问题设置\r\n             ',0),(250,126,22,51,NULL,0),(251,126,24,57,NULL,0),(252,126,25,61,NULL,0),(253,126,25,62,NULL,0),(254,126,25,63,NULL,0),(255,126,25,64,NULL,0),(256,126,27,67,'             \r\n         09年最优秀建站机构选择(提交您的答案)\r\n    ',0),(257,126,27,71,'             \r\n         09年最优秀建站机构选择(提交您的答案)\r\n    ',0),(258,126,28,72,'             \r\n          我建议参考以下网络公司   ',0),(259,126,28,73,'             \r\n          我建议参考以下网络公司   ',0),(260,126,28,74,'             \r\n          我建议参考以下网络公司   ',0),(261,126,28,75,'             \r\n          我建议参考以下网络公司   ',0),(262,127,27,71,'             \r\n             ',0),(263,127,28,73,'             \r\n             ',0),(264,127,28,75,'             \r\n             ',0),(265,128,22,51,NULL,0),(266,128,24,58,NULL,0),(267,128,25,64,NULL,0),(268,128,25,65,NULL,0),(269,128,27,69,'             \r\n      您认为出现在几月呢       ',0),(270,129,22,51,NULL,0),(271,129,24,58,NULL,0),(272,129,25,64,NULL,0),(273,129,25,65,NULL,0),(274,129,27,69,'             \r\n      您认为出现在几月呢       ',0),(275,130,22,53,NULL,0),(276,130,24,60,NULL,0),(277,130,25,62,NULL,0),(278,130,25,63,NULL,0),(279,130,25,65,NULL,0),(280,131,22,53,NULL,0),(281,131,24,60,NULL,0),(282,131,25,62,NULL,0),(283,131,25,63,NULL,0),(284,131,25,65,NULL,0),(285,131,26,0,'简要回答2009年财政报告简拼\r\n',0),(286,132,26,0,'',0),(287,133,26,0,'',0),(288,135,22,54,NULL,0),(289,135,24,59,NULL,0),(290,135,25,61,NULL,0),(291,135,25,63,NULL,0),(292,135,25,64,NULL,0),(293,135,25,65,NULL,0),(294,135,26,0,'简要回答2009年财政报告简拼',0),(295,135,27,69,'             \r\n       您认为出现在几月呢\r\n\r\n       ',0),(296,136,22,54,NULL,0),(297,136,24,57,NULL,0),(298,136,25,61,NULL,0),(299,136,25,64,NULL,0),(300,136,25,65,NULL,0),(301,136,26,0,'简要回答2009年财政报告简拼\r\n',0),(302,136,27,67,'             \r\n      为出现在几月呢       ',0),(303,137,22,54,NULL,0),(304,137,24,57,NULL,0),(305,137,25,61,NULL,0),(306,137,25,64,NULL,0),(307,137,25,65,NULL,0),(308,137,26,0,'简要回答2009年财政报告简拼\r\n',0),(309,137,27,67,'             \r\n      为出现在几月呢       ',0),(310,138,22,54,NULL,0),(311,138,24,57,NULL,0),(312,138,25,61,NULL,0),(313,138,25,62,NULL,0),(314,138,25,63,NULL,0),(315,138,25,64,NULL,0),(316,138,25,65,NULL,0),(317,138,26,0,'要回答2009年财政报告简拼\r\n',0),(318,138,27,69,'             \r\n       您认为出现在几月呢      ',0),(319,138,27,71,'             \r\n       您认为出现在几月呢      ',0),(320,138,28,72,'             \r\n        我建议参考以下网络公司     ',0),(321,138,28,73,'             \r\n        我建议参考以下网络公司     ',0),(322,138,28,74,'             \r\n        我建议参考以下网络公司     ',0),(323,138,28,75,'             \r\n        我建议参考以下网络公司     ',0),(324,139,22,54,NULL,0),(325,139,24,57,NULL,0),(326,139,25,61,NULL,0),(327,139,25,62,NULL,0),(328,139,25,63,NULL,0),(329,139,25,64,NULL,0),(330,139,25,65,NULL,0),(331,139,26,0,'要回答2009年财政报告简拼\r\n',0),(332,139,27,69,'             \r\n       您认为出现在几月呢      ',0),(333,139,27,71,'             \r\n       您认为出现在几月呢      ',0),(334,139,28,72,'             \r\n        我建议参考以下网络公司     ',0),(335,139,28,73,'             \r\n        我建议参考以下网络公司     ',0),(336,139,28,74,'             \r\n        我建议参考以下网络公司     ',0),(337,139,28,75,'             \r\n        我建议参考以下网络公司     ',0),(338,140,22,54,NULL,0),(339,140,24,57,NULL,0),(340,140,25,61,NULL,0),(341,140,25,62,NULL,0),(342,140,25,63,NULL,0),(343,140,25,64,NULL,0),(344,140,25,65,NULL,0),(345,140,26,0,'要回答2009年财政报告简拼\r\n',0),(346,140,27,69,'             \r\n       您认为出现在几月呢      ',0),(347,140,27,71,'             \r\n       您认为出现在几月呢      ',0),(348,140,28,72,'             \r\n        我建议参考以下网络公司     ',0),(349,140,28,73,'             \r\n        我建议参考以下网络公司     ',0),(350,140,28,74,'             \r\n        我建议参考以下网络公司     ',0),(351,140,28,75,'             \r\n        我建议参考以下网络公司     ',0),(352,141,26,0,'',0),(353,141,27,71,'             \r\n             ',0),(354,141,28,75,'             \r\n             ',0),(355,142,22,56,NULL,0),(356,142,26,0,'',0),(357,142,27,71,'             \r\n             ',0),(358,142,28,75,'             \r\n             ',0),(359,143,26,0,'',0),(360,143,27,71,'             \r\n             ',0),(361,143,28,75,'             \r\n             ',0),(362,144,26,0,'',0),(363,144,27,71,'             \r\n             ',0),(364,144,28,75,'             \r\n             ',0),(365,145,26,0,'',0),(366,145,27,71,'             \r\n             ',0),(367,145,28,75,'             \r\n             ',0);

/*Table structure for table `je_userbook` */

DROP TABLE IF EXISTS `je_userbook`;

CREATE TABLE `je_userbook` (
  `bookId` int(11) NOT NULL auto_increment,
  `bookTitle` varchar(50) default '',
  `userId` int(11) default '0',
  `userInfoId` int(11) default '0',
  `ParentId` int(11) default '0',
  `isComment` int(11) default '0',
  `isRoot` int(11) default '0',
  `content` longtext,
  `subDate` datetime default NULL,
  `Email` varchar(50) default '',
  `QQ` varchar(50) default '',
  `nickName` varchar(50) default '',
  `IP` varchar(50) default '',
  `reContent` longtext,
  `TA` varchar(50) default '',
  `TB` varchar(50) default '',
  `TC` varchar(50) default '',
  `TD` varchar(50) default '',
  `BA` int(11) default '0',
  `BB` int(11) default '0',
  `BC` int(11) default '0',
  `BD` int(11) default '0',
  PRIMARY KEY  (`bookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_userbook` */

insert  into `je_userbook`(`bookId`,`bookTitle`,`userId`,`userInfoId`,`ParentId`,`isComment`,`isRoot`,`content`,`subDate`,`Email`,`QQ`,`nickName`,`IP`,`reContent`,`TA`,`TB`,`TC`,`TD`,`BA`,`BB`,`BC`,`BD`) values (1,'秋季流行服饰女性最新款评论',9,3,0,0,0,'刷刷刷搜索刷刷刷是\r\n山东省地方是\r\n说地方撒旦法\r\n爱的身份啊\r\n熬点fa多发\r\n安抚啊',NULL,'y_flash@163.com','274797328','匿名留言',NULL,'<p>对啊 这个功能还是比较实用的啊</p>',NULL,NULL,NULL,NULL,1,58,NULL,NULL);

/*Table structure for table `je_userchannel` */

DROP TABLE IF EXISTS `je_userchannel`;

CREATE TABLE `je_userchannel` (
  `uclassId` int(11) NOT NULL auto_increment,
  `cName` varchar(50) default '',
  `ShowName` varchar(50) default '',
  `cType` int(11) default '0',
  `showLink` varchar(50) default '(''index.jsp'')',
  `corder` int(11) default '0',
  `userId` int(11) default '0',
  `userInfoId` int(11) default '0',
  `isSHow` int(11) default '0',
  `parent` int(11) default '0',
  `pageId` int(11) default '0',
  PRIMARY KEY  (`uclassId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_userchannel` */

insert  into `je_userchannel`(`uclassId`,`cName`,`ShowName`,`cType`,`showLink`,`corder`,`userId`,`userInfoId`,`isSHow`,`parent`,`pageId`) values (1,'首页','首页',0,'index.jsp',NULL,9,3,1,1,NULL),(2,'网店简介','网店简介',0,'ShowIntr.jsp',NULL,9,3,1,1,NULL),(3,'热卖商品','热卖商品',0,'ShowHotPro.jsp',NULL,9,3,1,1,NULL),(4,'推荐商品','推荐商品',0,'ShowIsPro.jsp',NULL,9,3,1,1,NULL),(5,'所有商品','所有商品',0,'ShowAllPro.jsp',NULL,9,3,1,1,NULL),(6,'送货说明','送货说明',0,'ShowSend.jsp',NULL,9,3,1,1,NULL),(7,'付款方式','付款方式',0,'ShowMoney.jsp',NULL,9,3,1,1,NULL),(8,'在线订单','在线订单',0,'ShowOrder.jsp',NULL,9,3,1,1,NULL),(9,'留言','留言',0,'ShowBook.jsp',NULL,9,3,1,1,NULL),(10,'showuserPHp','国庆促销活动',1,'ShowUserPage.lxsoft?pageId=1',0,9,3,1,NULL,1);

/*Table structure for table `je_userclass` */

DROP TABLE IF EXISTS `je_userclass`;

CREATE TABLE `je_userclass` (
  `upclassId` int(11) NOT NULL auto_increment,
  `ClassName` varchar(50) default '',
  `ClassOriName` varchar(50) default '',
  `ClassId` int(11) default '0',
  `ChannelId` int(11) default '0',
  `parent` int(11) default '0',
  `linkurl` varchar(50) default '(''showClass.jsp'')',
  `userId` int(11) default '0',
  `userInfoId` int(11) default '0',
  `altName` varchar(50) default '',
  PRIMARY KEY  (`upclassId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_userclass` */

insert  into `je_userclass`(`upclassId`,`ClassName`,`ClassOriName`,`ClassId`,`ChannelId`,`parent`,`linkurl`,`userId`,`userInfoId`,`altName`) values (1,'家电分类管理/乐乐家电','家电/手机通讯/电脑产品',1,1,0,'uploadphoto//2009-12-13//1260693360265.jpg',9,3,'家电分类管理/乐乐家电');

/*Table structure for table `je_userconfig` */

DROP TABLE IF EXISTS `je_userconfig`;

CREATE TABLE `je_userconfig` (
  `configId` int(11) NOT NULL auto_increment,
  `linkurl` varchar(50) default '',
  `showName` varchar(50) default '',
  `showCName` varchar(50) default '',
  `ta` int(11) default '0',
  `tb` int(11) default '0',
  `tc` int(11) default '0',
  `td` int(11) default '0',
  `ba` varchar(50) default '',
  `bb` varchar(50) default '',
  `bc` varchar(50) default '',
  `bd` varchar(50) default '',
  PRIMARY KEY  (`configId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_userconfig` */

insert  into `je_userconfig`(`configId`,`linkurl`,`showName`,`showCName`,`ta`,`tb`,`tc`,`td`,`ba`,`bb`,`bc`,`bd`) values (1,'index.jsp','首页','首页',0,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'ShowIntr.jsp','网店简介','网店简介',0,2,NULL,NULL,NULL,NULL,NULL,NULL),(3,'ShowHotPro.jsp','热卖商品','热卖商品',0,3,NULL,NULL,NULL,NULL,NULL,NULL),(4,'ShowIsPro.jsp','推荐商品','推荐商品',0,4,NULL,NULL,NULL,NULL,NULL,NULL),(5,'ShowAllPro.jsp','所有商品','所有商品',0,5,NULL,NULL,NULL,NULL,NULL,NULL),(6,'ShowSend.jsp','送货说明','送货说明',0,6,NULL,NULL,NULL,NULL,NULL,NULL),(7,'ShowMoney.jsp','付款方式','付款方式',0,7,NULL,NULL,NULL,NULL,NULL,NULL),(8,'ShowOrder.jsp','在线订单','在线订单',0,8,NULL,NULL,NULL,NULL,NULL,NULL),(9,'ShowBook.jsp','留言','留言',0,9,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_userdetail` */

DROP TABLE IF EXISTS `je_userdetail`;

CREATE TABLE `je_userdetail` (
  `detailID` int(11) NOT NULL auto_increment,
  `userId` int(11) default '0',
  `userType` int(11) default '0',
  `age` int(11) default '0',
  `sex` int(11) default '0',
  `identify` varchar(50) default '',
  `userMobile` varchar(50) default '',
  `UserQQ` varchar(50) default '',
  `pri` varchar(50) default '',
  `city` varchar(50) default '',
  `xian` varchar(50) default '',
  `jiedao` varchar(50) default '',
  `address` varchar(50) default '',
  `postCode` varchar(50) default '',
  `getName` varchar(50) default '',
  `MSN` varchar(50) default '',
  `bg1` longtext,
  `bg2` longtext,
  `bg3` longtext,
  `bg4` longtext,
  `bg5` longtext,
  `by1` int(11) default '0',
  `by2` int(11) default '0',
  `by3` int(11) default '0',
  `by4` int(11) default '0',
  `by5` int(11) default '0',
  PRIMARY KEY  (`detailID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_userdetail` */

insert  into `je_userdetail`(`detailID`,`userId`,`userType`,`age`,`sex`,`identify`,`userMobile`,`UserQQ`,`pri`,`city`,`xian`,`jiedao`,`address`,`postCode`,`getName`,`MSN`,`bg1`,`bg2`,`bg3`,`bg4`,`bg5`,`by1`,`by2`,`by3`,`by4`,`by5`) values (4,9,1,42,1,'625212012545211210121','030801204','274797328',NULL,NULL,NULL,'山西省太原市清新雅苑','山西省太原市清新雅苑','030303','领先网络科技','山西省太原市清新雅苑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,12,1,NULL,NULL,NULL,'030801204',NULL,NULL,NULL,NULL,NULL,'山西省太原市清新雅苑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,16,1,NULL,NULL,NULL,'030801204',NULL,NULL,NULL,NULL,NULL,'山西省太原市清新雅苑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_usergrouptype` */

DROP TABLE IF EXISTS `je_usergrouptype`;

CREATE TABLE `je_usergrouptype` (
  `userTypeId` int(11) NOT NULL auto_increment,
  `TypeName` varchar(50) default '',
  `TypeLevel` int(11) default '0',
  `levelStr` text,
  `groupIntr` longtext,
  PRIMARY KEY  (`userTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_usergrouptype` */

insert  into `je_usergrouptype`(`userTypeId`,`TypeName`,`TypeLevel`,`levelStr`,`groupIntr`) values (1,'普通购物',1,'1','普通购物会员'),(2,'开店商家',2,'1|2|3|5','开店商家');

/*Table structure for table `je_userinfo` */

DROP TABLE IF EXISTS `je_userinfo`;

CREATE TABLE `je_userinfo` (
  `info_Id` int(11) NOT NULL auto_increment,
  `User_Id` int(11) NOT NULL default '0',
  `Info_Type` int(11) default '0',
  `Info_Itr` longtext,
  `By_Name` varchar(255) default NULL,
  `userClass` longtext,
  `classContent` longtext,
  `UserPass` text,
  `StyleName` text,
  `userPage` text,
  `userAnnounce` longtext,
  `siteName` text,
  `siteKeyWord` text,
  `siteLogon` varchar(50) default NULL,
  `siteBanner` varchar(50) default NULL,
  `linkUs` longtext,
  `jianjie` longtext,
  `suohuo` longtext,
  `shouhou` longtext,
  `fukuanfangshi` longtext,
  `hitNum` int(11) default '0',
  `TA` int(11) default '0',
  `TB` int(11) default '0',
  `TC` int(11) default '0',
  `TD` int(11) default '0',
  `VA` longtext character set latin1,
  `VB` longtext character set latin1,
  `VC` longtext character set latin1,
  `VD` longtext character set latin1,
  `CA` varchar(50) default NULL,
  `CB` varchar(50) default NULL,
  `CC` varchar(50) default NULL,
  `CD` varchar(50) default NULL,
  PRIMARY KEY  (`info_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_userinfo` */

insert  into `je_userinfo`(`info_Id`,`User_Id`,`Info_Type`,`Info_Itr`,`By_Name`,`userClass`,`classContent`,`UserPass`,`StyleName`,`userPage`,`userAnnounce`,`siteName`,`siteKeyWord`,`siteLogon`,`siteBanner`,`linkUs`,`jianjie`,`suohuo`,`shouhou`,`fukuanfangshi`,`hitNum`,`TA`,`TB`,`TC`,`TD`,`VA`,`VB`,`VC`,`VD`,`CA`,`CB`,`CC`,`CD`) values (3,9,0,NULL,NULL,NULL,NULL,NULL,'default',NULL,'<p>我们的网sdfsdfsadfas</p>\r\n<p>sdafdf们的网站公告 我们</p>\r\n<p>dsaffd的网</p>\r\n<p>对所发生地方站公告 我们的网站公告 我们的网站公告 我们的网站公告 我们的网站公告 </p>','蓝天服饰装饰品蓝天服饰装饰品蓝天服饰装饰品',NULL,'uploadphoto//2009-12-13//1260639177640.jpg','uploadphoto//2009-12-13//1260639200265.jpg','网站联系我们信息添加 网站联系我们信息添加 网站联系我们信息添加 网站联系我们信息添加 网站联系我们信息添加','<p>我们的网站简介测试</p>\r\n<p>我们的网站简介测试</p>\r\n<p>我们的网站简介测试</p>\r\n<p>我们的网站简介测试</p>\r\n<p>我们的网站简介测试</p>\r\n<p>我们的网站简介测试</p>','<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>\r\n<p>送货说明</p>','<img src=\"../upfile/uploadphoto//2009-12-12//1260619578093.jpg\" /><img src=\"../upfile/uploadphoto//2009-12-12//1260619595953.jpg\" />','<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>\r\n<p>付款说明 </p>',75,NULL,NULL,NULL,NULL,'<p><img src=\"../upfile/uploadphoto//2009-12-13//1260640487796.jpg\" /></p>\r\n<p><img src=\"../upfile/uploadphoto//2009-12-13//1260640498437.jpg\" /></p>\r\n<p><img src=\"../upfile/uploadphoto//2009-12-13//1260640512093.jpg\" /></p>','<img src=\"../upfile/uploadphoto//2009-12-13//1260641505265.jpg\" /><img src=\"../upfile/uploadphoto//2009-12-13//1260641517343.jpg\" />','<img src=\"../upfile/uploadphoto//2009-12-13//1260639970750.jpg\" /> <img src=\"../upfile/uploadphoto//2009-12-13//1260641051656.gif\" />',NULL,NULL,NULL,NULL,NULL),(6,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `je_useroder` */

DROP TABLE IF EXISTS `je_useroder`;

CREATE TABLE `je_useroder` (
  `UserOrderId` int(11) NOT NULL auto_increment,
  `OrderNum` longtext,
  `userId` int(11) default '0',
  `userInfoId` int(11) default '0',
  `address` varchar(50) default '',
  `sheng` varchar(50) default '',
  `shi` varchar(50) default '',
  `subDate` datetime default NULL,
  `Email` varchar(50) default '',
  `xian` varchar(50) default '',
  `telPhone` varchar(50) default '',
  `phoneNum` varchar(50) default '',
  `userName` varchar(50) default '',
  `dailiUserName` varchar(50) default '',
  `youbian` varchar(50) default '',
  `fukuan` varchar(50) default '',
  `beizhu` longtext,
  `la` varchar(50) default '',
  `lb` varchar(50) default '',
  `lc` varchar(50) default '',
  `ld` varchar(50) default '',
  `le` varchar(50) default '',
  `ia` int(11) default '0',
  `ib` int(11) default '0',
  `ic` int(11) default '0',
  `id` int(11) default '0',
  `ie` int(11) default '0',
  `ja` longtext,
  `jb` longtext,
  `jc` longtext,
  `jd` longtext,
  `je` longtext,
  `tm1` datetime default NULL,
  `tm2` datetime default NULL,
  `tm3` datetime default NULL,
  `tm4` datetime default NULL,
  `tm5` datetime default NULL,
  PRIMARY KEY  (`UserOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `je_useroder` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
