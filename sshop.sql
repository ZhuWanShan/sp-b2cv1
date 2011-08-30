-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: sshop
-- ------------------------------------------------------
-- Server version	5.5.13

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
-- Current Database: `sshop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sshop`;

--
-- Table structure for table `shop_address`
--

DROP TABLE IF EXISTS `shop_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_address` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKC257578BBF627AED` (`site_id`),
  CONSTRAINT `FKC257578BBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_address`
--

LOCK TABLES `shop_address` WRITE;
/*!40000 ALTER TABLE `shop_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_category` (
  `isEnable` bit(1) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `displayName` varchar(200) DEFAULT NULL,
  `specialOffer_image` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `relatedKeyword` varchar(255) DEFAULT NULL,
  `pageTitle` varchar(255) DEFAULT NULL,
  `specialOffer` bit(1) DEFAULT NULL,
  `marketContent` longtext,
  `market_only` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKD43A7447C7120C87` (`specialOffer_image`),
  KEY `FKD43A7447BF627AED` (`site_id`),
  KEY `FKD43A7447BF210EE1` (`parent_id`),
  CONSTRAINT `FKD43A7447BF210EE1` FOREIGN KEY (`parent_id`) REFERENCES `shop_category` (`ID`),
  CONSTRAINT `FKD43A7447BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FKD43A7447C7120C87` FOREIGN KEY (`specialOffer_image`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES ('',0,'',1,'home','2011-08-11 20:56:03','2011-08-27 02:38:34',NULL,NULL,'Home',NULL,'/','','asdasdas','\0','<img src=\"http://127.0.0.1:8888/image/19372690665746.jpg\">',0),('',0,NULL,2,'weddingdre2011col','2011-07-27 17:06:16','2011-08-06 18:14:35',NULL,65,'Wedding Dress 2011 Collection',NULL,NULL,'Wedding Dress 2011 Collection keywords','Wedding Dress 2011 Collection - spark\'s shop','\0','',0),('',0,'',3,'costumes','2011-08-06 17:56:10','2011-08-27 12:15:23',NULL,NULL,'Costumes',NULL,'','costumes keywords','Costumes - spark\'s shop','\0','<img src=\"http://127.0.0.1:8888/image/19372690665746.jpg\">',0),('',7,'asdfasdasd',4,'women','2011-08-06 17:57:04','2011-08-18 21:09:36',NULL,NULL,'Women',NULL,'','women keywords','Women - spark\'s shop','\0','<br>',0),('',0,NULL,5,'men','2011-08-06 17:59:32','2011-08-06 17:59:32',NULL,NULL,'Men',NULL,NULL,'men keywords','Men - spark\'s shop','\0','',0),('',4,'',6,'shoes','2011-08-06 18:00:54','2011-08-18 21:09:21',NULL,NULL,'Shoes',NULL,'','shoes keywords','Shoes - spark\'s shop','\0','',0),('',2,'',7,'accessories','2011-08-06 18:03:03','2011-08-18 21:01:47',NULL,NULL,'Accessories',NULL,'','accessories keywords','Accessories - spark\'s shop','\0','',0),('',3,'',8,'sports','2011-08-06 18:06:11','2011-08-18 21:09:15',NULL,NULL,'Sports',NULL,'','sports keywords','Sports - spark\'s shop','\0','',0),('',5,'',9,'kids','2011-08-06 18:07:04','2011-08-18 21:00:49',NULL,NULL,'Kids',NULL,'','kids keywords','Kids - spark\'s shop','\0','',0),('',6,'',10,'weddingdre','2011-08-06 18:20:00','2011-08-18 21:00:54',NULL,65,'Wedding Dresses',NULL,'','Wedding Dresses keywords','Wedding Dresses','\0','',0),('',0,NULL,11,'weddingpartydre','2011-08-06 18:23:19','2011-08-09 21:16:19',NULL,65,'Wedding Party Dresses',NULL,'www.facebook.com','Wedding Party Dresses keywords','Wedding Party Dresses','\0','',0),('',0,NULL,12,'springfashiontrend','2011-08-06 18:29:08','2011-08-06 18:29:08',NULL,2,'Spring Fashion Trends',NULL,NULL,'Spring Fashion Trends keywords','Spring Fashion Trends','\0','',0),('',0,NULL,13,'summerfashiontrends','2011-08-06 18:30:46','2011-08-06 18:30:46',NULL,2,'Summer Fashion Trends',NULL,NULL,'Summer Fashion Trends keywords','Summer Fashion Trends - spark\'s shop','\0','',0),('',0,NULL,14,'fallfashiontrends','2011-08-06 18:35:31','2011-08-06 18:35:31',NULL,2,'Fall Fashion Trends',NULL,NULL,'Fall Fashion Trends keywords','Fall Fashion Trends','\0','',0),('',0,NULL,15,'winterfashiontrends','2011-08-06 18:36:22','2011-08-06 18:36:22',NULL,2,'Winter Fashion Trends',NULL,NULL,'Winter Fashion Trends keywords','Winter Fashion Trends','\0','',0),('',0,NULL,16,'weddingdreunder100','2011-08-06 19:27:37','2011-08-06 19:27:37',NULL,10,'Wedding Dress Under $100',NULL,NULL,'Wedding Dress Under $100 Keywords','Wedding Dress Under $100','\0','',0),('',0,NULL,17,'receptiondre','2011-08-06 19:35:05','2011-08-06 19:35:05',NULL,10,'Reception Dresses',NULL,NULL,'Reception Dresses Keywords','Reception Dresses - spark\'s shop','\0','',0),('',0,NULL,18,'beachweddingdre','2011-08-06 19:39:29','2011-08-06 19:39:29',NULL,10,'Beach Wedding Dresses',NULL,NULL,'Beach Wedding Dresses keywords','Beach Wedding Dresses - spark\'s shop','\0','',0),('',0,NULL,19,'littlegirldre','2011-08-06 19:40:47','2011-08-06 19:40:47',NULL,11,'Little Girl Dresses',NULL,NULL,'Little Girl Dresses keywords','Little Girl Dresses - spark\'s shop','\0','',0),('',0,NULL,20,'maternitybridesmaiddre','2011-08-06 20:02:53','2011-08-06 20:02:53',NULL,11,'Maternity Bridesmaid Dresses',NULL,NULL,'Maternity Bridesmaid Dresses keywords','Maternity Bridesmaid Dresses - spark\'s shop','\0','',0),('',0,NULL,21,'flowergirldre','2011-08-06 20:04:19','2011-08-06 20:04:19',NULL,11,'Flower Girl Dresses',NULL,NULL,'Flower Girl Dresses keywords','Flower Girl Dresses - spark\'s shop','\0','',0),('',0,NULL,22,'juniorbridesmaiddre','2011-08-06 20:11:56','2011-08-06 20:11:56',NULL,11,'Junior Bridesmaid Dresses',NULL,NULL,'Junior Bridesmaid Dresses keywords','Junior Bridesmaid Dresses - spark\'s shop','\0','',0),('',0,NULL,23,'bridesmaiddre','2011-08-06 20:25:13','2011-08-06 20:25:13',NULL,11,'Bridesmaid Dresses',NULL,NULL,'Bridesmaid Dresses keywords','Bridesmaid Dresses - spark\'s shop','\0','',0),('',0,NULL,24,'cosplay','2011-08-06 20:34:05','2011-08-06 20:35:33',NULL,3,'Cosplay Costumes',NULL,NULL,'Cosplay Costumes keywords','Cosplay Costumes - spark\'s shop','\0','',0),('',0,NULL,25,'punkclothing','2011-08-06 20:35:15','2011-08-06 20:35:15',NULL,3,'Punk Clothing',NULL,NULL,'Punk Clothing keywords','Punk Clothing - spark\'s shop','\0','',0),('',0,NULL,26,'mascot','2011-08-06 20:37:45','2011-08-06 20:37:45',NULL,3,'Mascot Costumes',NULL,NULL,'Mascot Costumes keywords','Mascot Costumes - spark\'s shop','\0','',0),('',0,NULL,27,'lolitaclothing','2011-08-06 20:40:05','2011-08-06 20:40:05',NULL,3,'Lolita Clothing',NULL,NULL,'Lolita Clothing keywords','Lolita Clothing - spark\'s shop','\0','',0),('',0,NULL,28,'cosplaywigs','2011-08-06 20:45:32','2011-08-06 20:45:32',NULL,24,'Cosplay Wigs',NULL,NULL,'Cosplay Wigs keywords','Cosplay Wigs - spark\'s shop','\0','',0),('',0,NULL,29,'cosplayshoes','2011-08-06 20:47:25','2011-08-06 20:47:25',NULL,24,'Cosplay Shoes',NULL,NULL,'Cosplay Wigs keywords','Cosplay Shoes - spark\'s shop','\0','',0),('',0,NULL,30,'schooluniform','2011-08-06 20:49:07','2011-08-06 20:49:07',NULL,24,'School Uniform',NULL,NULL,'School Uniform keywords','School Uniform - spark\'s shop','\0','',0),('',0,NULL,31,'punkdre','2011-08-06 20:50:12','2011-08-06 20:50:12',NULL,25,'Punk Dresses',NULL,NULL,'Punk Dresses keywords','Punk Dresses - spark\'s shop','\0','',0),('',0,NULL,32,'punkskirts','2011-08-06 20:51:08','2011-08-06 20:51:08',NULL,25,'Punk Skirts',NULL,NULL,'Punk Skirts keywords','Punk Skirts - spark\'s shop','\0','',0),('',0,NULL,33,'punkcoats','2011-08-06 20:52:10','2011-08-06 20:52:10',NULL,25,'Punk Coats',NULL,NULL,'Punk Coats keywords','Punk Coats - spark\'s shop','\0','',0),('',0,NULL,34,'bearmascots','2011-08-06 20:53:27','2011-08-06 20:53:27',NULL,26,'Bear Mascots',NULL,NULL,'Bear Mascots keywords','Bear Mascots - spark\'s shop','\0','',0),('',0,NULL,35,'lionmascots','2011-08-06 20:56:22','2011-08-06 20:56:22',NULL,26,'Lion Mascots',NULL,NULL,'Lion Mascots keywords','Lion Mascots - spark\'s shop','\0','',0),('',0,NULL,36,'lolitadre','2011-08-06 20:58:18','2011-08-06 20:58:18',NULL,27,'Lolita Dresses',NULL,NULL,'Lolita Dresses','Lolita Dresses - spark\'s shop','\0','',0),('',0,NULL,37,'lolitashirts','2011-08-06 21:00:54','2011-08-06 21:00:54',NULL,27,'Lolita Shirts',NULL,NULL,'Lolita Shirts keywords','Lolita Shirts','\0','',0),('',0,NULL,38,'lolitaoutfits','2011-08-06 21:01:53','2011-08-06 21:01:53',NULL,27,'Lolita Outfits',NULL,NULL,'Lolita Outfits keywords','Lolita Outfits','\0','',0),('',0,NULL,39,'lolitablouses','2011-08-06 21:02:50','2011-08-06 21:02:50',NULL,27,'Lolita Blouses',NULL,NULL,'Lolita Blouses','Lolita Blouses','\0','',0),('',0,NULL,40,'lolitabloomers','2011-08-06 21:03:54','2011-08-06 21:03:54',NULL,27,'Lolita Bloomers',NULL,NULL,'Lolita Bloomers keywords','Lolita Bloomers','\0','',0),('',0,NULL,41,'coastjackets','2011-08-06 21:05:15','2011-08-06 21:05:15',NULL,27,'Coast & Jackets',NULL,NULL,'Coast Jackets keywords','Coast & Jackets','\0','',0),('',0,NULL,42,'springsummer2011','2011-08-06 21:14:15','2011-08-06 21:14:15',NULL,4,'Spring/Summer 2011 Trends',NULL,NULL,'Spring Summer 2011 Trends keywords','Spring/Summer 2011 Trends','\0','',0),('',0,NULL,43,'pants','2011-08-06 21:21:23','2011-08-06 21:21:23',NULL,4,'Pants',NULL,NULL,'Pants keywords','Pants','\0','',0),('',0,NULL,44,'womenfeatures','2011-08-06 21:22:43','2011-08-06 21:24:53',NULL,4,'Features',NULL,NULL,'Features keywords','Features','\0','',0),('',0,NULL,45,'mentshirts','2011-08-06 21:24:31','2011-08-06 21:24:31',NULL,5,'Men\'s T-Shirts',NULL,NULL,'Men T-Shirts keywords','Men\'s T-Shirts','\0','',0),('',0,NULL,46,'fashionshoes','2011-08-06 21:27:45','2011-08-06 21:27:45',NULL,6,'Fashion Shoes',NULL,NULL,'Fashion Shoes keywords','Fashion Shoes','\0','',0),('',0,NULL,47,'jewelry','2011-08-06 21:30:43','2011-08-06 21:30:43',NULL,7,'Jewelry',NULL,NULL,'Jewelry keywords','Jewelry','\0','',0),('',0,NULL,48,'swimsuits','2011-08-06 21:31:44','2011-08-06 21:31:44',NULL,8,'Swim Suits',NULL,NULL,'Swim Suits','Swim Suits','\0','',0),('',0,NULL,49,'baby0_24m','2011-08-06 21:40:47','2011-08-06 21:40:47',NULL,9,'Baby (0-24 months)',NULL,NULL,'Baby (0-24 months) keywords','Baby (0-24 months)','\0','',0),('',0,NULL,50,'pleateddre','2011-08-06 21:45:00','2011-08-06 21:45:00',NULL,42,'Pleated Dresses',NULL,NULL,'Pleated Dresses keywords','Pleated Dresses','\0','',0),('',0,NULL,51,'pleatedskirts','2011-08-06 21:46:18','2011-08-06 21:46:18',NULL,42,'Pleated Skirts',NULL,NULL,'Pleated Skirts keywords','Pleated Skirts','\0','',0),('',0,NULL,52,'womenharempants','2011-08-06 21:48:22','2011-08-06 21:48:22',NULL,43,'Women\'s Harem Pants',NULL,NULL,'Women\'s Harem Pants keywords','Women\'s Harem Pants','\0','',0),('',0,NULL,53,'summerinthenet','2011-08-06 21:50:17','2011-08-06 21:50:17',NULL,44,'Summer In The Net',NULL,NULL,'Summer Net keywords','Summer In The Net','\0','',0),('',0,NULL,54,'sequins','2011-08-06 21:51:40','2011-08-06 21:51:40',NULL,44,'Sequins',NULL,NULL,'Sequins keywords','Sequins','\0','',0),('',0,NULL,55,'parishilton','2011-08-06 21:54:47','2011-08-06 21:54:47',NULL,44,'Paris Hilton',NULL,NULL,'Paris Hilton keywords','Paris Hilton','\0','',0),('',0,NULL,56,'poloshirts','2011-08-06 21:56:13','2011-08-06 21:56:13',NULL,45,'Polo Shirts',NULL,NULL,'Polo shirts keywords','Polo Shirts','\0','',0),('',0,NULL,57,'mtshirts','2011-08-06 21:57:14','2011-08-06 21:58:05',NULL,45,'T-Shirts',NULL,NULL,'T-Shirts Men keywords','T-Shirts','\0','',0),('',0,NULL,58,'paintedshoes','2011-08-06 22:03:25','2011-08-06 22:03:25',NULL,46,'Painted Shoes',NULL,NULL,'Painted Shoes keywords','Painted Shoes','\0','',0),('',2,'',59,'pearljewelry','2011-08-06 22:04:31','2011-08-18 21:01:17',NULL,47,'Pearl Jewelry',NULL,'','Pearl Jewelry keywords','Pearl Jewelry','\0','',0),('',0,NULL,60,'crystaljewelry','2011-08-06 22:05:51','2011-08-06 22:05:51',NULL,47,'Crystal Jewelry',NULL,NULL,'Crystal Jewelry keywords','Crystal Jewelry','\0','',0),('',0,NULL,61,'onepieceswim','2011-08-06 22:07:11','2011-08-06 22:08:29',NULL,48,'One Piece Swimsuits',NULL,NULL,'One Piece Swimsuits keywords','One Piece Swimsuits','\0','',0),('',0,NULL,62,'2pieceswim','2011-08-06 22:09:30','2011-08-06 22:09:29',NULL,48,'Two Piece Swimsuits',NULL,NULL,'Two Piece Swimsuits keywords','Two Piece Swimsuits','\0','',0),('',0,NULL,63,'bikiniswim','2011-08-06 22:10:08','2011-08-06 22:10:08',NULL,48,'Bikini Swimsuits',NULL,NULL,'Bikini Swimsuits keywords','Bikini Swimsuits','\0','',0),('',0,NULL,64,'boysclothing2_15y','2011-08-06 22:11:34','2011-08-06 22:11:34',NULL,9,'Boys Clothing (2-15 years)',NULL,NULL,'Boys Clothing keywords','Boys Clothing (2-15 years)','\0','',0),('',1,'',65,'WeddingEvents','2011-07-27 16:57:52','2011-08-18 21:00:58',NULL,NULL,'Wedding & Events',NULL,'www.google.com','wedding events keywords','Wedding & Events - spark\'s shop','\0','',0),('',0,'Special Offer Root1 desc',66,'specialofferroot1','2011-08-28 20:56:08','2011-08-28 20:56:08',NULL,3,'Special Offer Root1',NULL,'','Special Offer Root1 keywords','Special Offer Root1','','<br>',0),('',0,'Special Offer Root2 desc',67,'specialofferroot2','2011-08-28 20:56:58','2011-08-28 20:56:58',NULL,3,'Special Offer Root2',NULL,'','Special Offer Root2 keywords','Special Offer Root2','','<br>',0),('',0,'Special Offer Root3 desc',68,'specialofferroot3','2011-08-28 20:57:35','2011-08-28 20:57:35',NULL,3,'Special Offer Root3',NULL,'','Special Offer Root3 keywords','Special Offer Root3','','<br>',0),('',0,'Special Offer Root4 desc',69,'specialofferroot4','2011-08-28 22:25:31','2011-08-28 22:25:31',NULL,24,'Special Offer Root4',NULL,'','Special Offer Root4 keywords','Special Offer Root4','','<br>',0),('',0,'Special Offer Root5 desc',70,'specialofferroot5','2011-08-28 22:26:34','2011-08-28 23:58:18',NULL,28,'Special Offer Root5',32,'','Special Offer Root5 keywords','Special Offer Root5','','<br>',0),('',0,'Special Offer Root6 desc',71,'specialofferroot6','2011-08-28 22:27:39','2011-08-28 22:27:39',NULL,31,'Special Offer Root6',NULL,'','Special Offer Root6 desc','Special Offer Root6','','<br>',0),('',0,'Special Offer Root7 desc',72,'specialofferroot7','2011-08-28 22:30:09','2011-08-29 00:10:00',NULL,56,'Special Offer Root7',33,'','Special Offer Root7 keywords','Special Offer Root7','','<br>',0),('',0,'Gundam seed',73,'gundam','2011-08-29 23:10:22','2011-08-30 10:39:29',NULL,NULL,'Gundam',NULL,'','seed gundam kira','Gundam','\0','<a href=\"http://www.xiaonei.com\"><img src=\"http://127.0.0.1:8888/image/13359512696421.jpg\"></a><br><br>',1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_comment`
--

DROP TABLE IF EXISTS `shop_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_comment` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  `rate` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `reply_for` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3F65A9F620E7A8E0` (`reply_for`),
  KEY `FK3F65A9F6E6DF2B8B` (`user_id`),
  KEY `FK3F65A9F6582107E7` (`product_id`),
  KEY `FK3F65A9F6BF627AED` (`site_id`),
  CONSTRAINT `FK3F65A9F620E7A8E0` FOREIGN KEY (`reply_for`) REFERENCES `shop_comment` (`ID`),
  CONSTRAINT `FK3F65A9F6582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK3F65A9F6BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK3F65A9F6E6DF2B8B` FOREIGN KEY (`user_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_comment`
--

LOCK TABLES `shop_comment` WRITE;
/*!40000 ALTER TABLE `shop_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_configuration`
--

DROP TABLE IF EXISTS `shop_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_configuration` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `strType` varchar(20) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK8FC7E34DBF627AED` (`site_id`),
  CONSTRAINT `FK8FC7E34DBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_configuration`
--

LOCK TABLES `shop_configuration` WRITE;
/*!40000 ALTER TABLE `shop_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_country`
--

DROP TABLE IF EXISTS `shop_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_country` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `abbrCode` varchar(50) DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3FD7132DD0E15FA7` (`image_id`),
  KEY `FK3FD7132DBF627AED` (`site_id`),
  CONSTRAINT `FK3FD7132DBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK3FD7132DD0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_country`
--

LOCK TABLES `shop_country` WRITE;
/*!40000 ALTER TABLE `shop_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_coupon`
--

DROP TABLE IF EXISTS `shop_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_coupon` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK4C61CDAFEA82B030` (`Promotion_id`),
  CONSTRAINT `FK4C61CDAFEA82B030` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_coupon`
--

LOCK TABLES `shop_coupon` WRITE;
/*!40000 ALTER TABLE `shop_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_cutoff`
--

DROP TABLE IF EXISTS `shop_cutoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_cutoff` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK4CB56956EAD64BD7` (`Promotion_id`),
  CONSTRAINT `FK4CB56956EAD64BD7` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_cutoff`
--

LOCK TABLES `shop_cutoff` WRITE;
/*!40000 ALTER TABLE `shop_cutoff` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_cutoff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_deliver`
--

DROP TABLE IF EXISTS `shop_deliver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_deliver` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK632BC4BCD0E15FA7` (`image_id`),
  KEY `FK632BC4BCBF627AED` (`site_id`),
  CONSTRAINT `FK632BC4BCBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FK632BC4BCD0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_deliver`
--

LOCK TABLES `shop_deliver` WRITE;
/*!40000 ALTER TABLE `shop_deliver` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_deliver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_feedback`
--

DROP TABLE IF EXISTS `shop_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_feedback` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` longtext,
  `strType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKC5BF16EE3972FC6D` (`user_id`),
  KEY `FKC5BF16EEBF627AED` (`site_id`),
  CONSTRAINT `FKC5BF16EE3972FC6D` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`ID`),
  CONSTRAINT `FKC5BF16EEBF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_feedback`
--

LOCK TABLES `shop_feedback` WRITE;
/*!40000 ALTER TABLE `shop_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_image`
--

DROP TABLE IF EXISTS `shop_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_image` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `altTitle` varchar(200) DEFAULT NULL,
  `largerUrl` varchar(200) DEFAULT NULL,
  `logoUrl` varchar(200) DEFAULT NULL,
  `noChangeUrl` varchar(200) DEFAULT NULL,
  `smallUrl` varchar(200) DEFAULT NULL,
  `iconUrl` varchar(200) DEFAULT NULL,
  `thumbnailUrl` varchar(200) DEFAULT NULL,
  `strSizeType` varchar(200) DEFAULT NULL,
  `strType` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK23D25EB2BF627AED` (`site_id`),
  CONSTRAINT `FK23D25EB2BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_image`
--

LOCK TABLES `shop_image` WRITE;
/*!40000 ALTER TABLE `shop_image` DISABLE KEYS */;
INSERT INTO `shop_image` VALUES (1,'asdasdas','2011-08-11 20:55:11','2011-08-17 23:12:10',1,'asdasdas','/image/123711895637103_460X635.jpg','/image/123711895637103_317X438.jpg','/image/123711895637103.jpg','/image/123711895637103_74X102.jpg','/image/123711895637103_46X63.jpg','/image/123711895637103_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(2,'asdasd','2011-08-15 19:36:33','2011-08-17 23:12:00',1,'asdasd','/image/123701248716953_460X635.jpg','/image/123701248716953_317X438.jpg','/image/123701248716953.jpg','/image/123701248716953_74X102.jpg','/image/123701248716953_46X63.jpg','/image/123701248716953_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(3,'dddddd','2011-08-17 21:37:51','2011-08-17 21:38:05',1,'dddddd','/image/118066906655980_460X635.jpg','/image/118066906655980_317X438.jpg','/image/118066906655980.jpg','/image/118066906655980_74X102.jpg','/image/118066906655980_46X63.jpg','/image/118066906655980_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(4,'asdasdasd','2011-08-17 21:40:23','2011-08-17 21:41:21',1,'asdasdasd','/image/118263049668863_460X635.jpg','/image/118263049668863_317X438.jpg','/image/118263049668863.jpg','/image/118263049668863_74X102.jpg','/image/118263049668863_46X63.jpg','/image/118263049668863_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(5,'asdasdasd','2011-08-17 21:43:35','2011-08-17 23:11:50',1,'asdasdasd','/image/123691340488827_460X635.jpg','/image/123691340488827_317X438.jpg','/image/123691340488827.jpg','/image/123691340488827_74X102.jpg','/image/123691340488827_46X63.jpg','/image/123691340488827_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(6,'/image/124955267032987.jpg','2011-08-17 23:32:54','2011-08-17 23:32:54',1,'/image/124955267032987.jpg','/image/124955267032987_460X635.jpg','/image/124955267032987_317X438.jpg','/image/124955267032987.jpg','/image/124955267032987_74X102.jpg','/image/124955267032987_46X63.jpg','/image/124955267032987_192X265.jpg','PRODUCT_NORMAL',NULL),(7,'/image/124956650258841.jpg','2011-08-17 23:32:55','2011-08-17 23:32:55',1,'/image/124956650258841.jpg','/image/124956650258841_460X635.jpg','/image/124956650258841_317X438.jpg','/image/124956650258841.jpg','/image/124956650258841_74X102.jpg','/image/124956650258841_46X63.jpg','/image/124956650258841_192X265.jpg','PRODUCT_NORMAL',NULL),(8,'/image/124957896596790.jpg','2011-08-17 23:32:56','2011-08-17 23:32:56',1,'/image/124957896596790.jpg','/image/124957896596790_460X635.jpg','/image/124957896596790_317X438.jpg','/image/124957896596790.jpg','/image/124957896596790_74X102.jpg','/image/124957896596790_46X63.jpg','/image/124957896596790_192X265.jpg','PRODUCT_NORMAL',NULL),(9,'/image/124958994124087.jpg','2011-08-17 23:32:57','2011-08-17 23:32:57',1,'/image/124958994124087.jpg','/image/124958994124087_460X635.jpg','/image/124958994124087_317X438.jpg','/image/124958994124087.jpg','/image/124958994124087_74X102.jpg','/image/124958994124087_46X63.jpg','/image/124958994124087_192X265.jpg','PRODUCT_NORMAL',NULL),(10,'/image/124960188464209.jpg','2011-08-17 23:32:58','2011-08-17 23:32:58',1,'/image/124960188464209.jpg','/image/124960188464209_460X635.jpg','/image/124960188464209_317X438.jpg','/image/124960188464209.jpg','/image/124960188464209_74X102.jpg','/image/124960188464209_46X63.jpg','/image/124960188464209_192X265.jpg','PRODUCT_NORMAL',NULL),(11,'/image/124961401143847.jpg','2011-08-17 23:33:00','2011-08-17 23:33:00',1,'/image/124961401143847.jpg','/image/124961401143847_460X635.jpg','/image/124961401143847_317X438.jpg','/image/124961401143847.jpg','/image/124961401143847_74X102.jpg','/image/124961401143847_46X63.jpg','/image/124961401143847_192X265.jpg','PRODUCT_NORMAL',NULL),(12,'/image/124962494853956.jpg','2011-08-17 23:33:01','2011-08-17 23:33:01',1,'/image/124962494853956.jpg','/image/124962494853956_460X635.jpg','/image/124962494853956_317X438.jpg','/image/124962494853956.jpg','/image/124962494853956_74X102.jpg','/image/124962494853956_46X63.jpg','/image/124962494853956_192X265.jpg','PRODUCT_NORMAL',NULL),(13,'/image/124963707999002.jpg','2011-08-17 23:33:02','2011-08-17 23:33:02',1,'/image/124963707999002.jpg','/image/124963707999002_460X635.jpg','/image/124963707999002_317X438.jpg','/image/124963707999002.jpg','/image/124963707999002_74X102.jpg','/image/124963707999002_46X63.jpg','/image/124963707999002_192X265.jpg','PRODUCT_NORMAL',NULL),(14,'cosplay1','2011-08-23 21:26:47','2011-08-23 21:26:47',1,'cosplay1','/image/9331994551495_460X635.jpg','/image/9331994551495_317X438.jpg','/image/9331994551495.jpg','/image/9331994551495_74X102.jpg','/image/9331994551495_46X63.jpg','/image/9331994551495_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(15,'productImg2','2011-08-24 00:04:36','2011-08-24 00:04:36',1,'productImg2','/image/18801009063392_460X635.jpg','/image/18801009063392_317X438.jpg','/image/18801009063392.jpg','/image/18801009063392_74X102.jpg','/image/18801009063392_46X63.jpg','/image/18801009063392_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(16,'ibrasimovic3','2011-08-24 00:04:57','2011-08-24 00:04:57',1,'ibrasimovic3','/image/18822107699958_460X635.jpg','/image/18822107699958_317X438.jpg','/image/18822107699958.jpg','/image/18822107699958_74X102.jpg','/image/18822107699958_46X63.jpg','/image/18822107699958_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(17,'productImg4','2011-08-24 00:05:18','2011-08-24 00:05:18',1,'productImg4','/image/18842705838860_460X635.jpg','/image/18842705838860_317X438.jpg','/image/18842705838860.jpg','/image/18842705838860_74X102.jpg','/image/18842705838860_46X63.jpg','/image/18842705838860_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(18,'productImg5','2011-08-24 00:05:33','2011-08-24 00:05:33',1,'productImg5','/image/18858187148595_460X635.jpg','/image/18858187148595_317X438.jpg','/image/18858187148595.jpg','/image/18858187148595_74X102.jpg','/image/18858187148595_46X63.jpg','/image/18858187148595_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(19,'productImg6','2011-08-24 00:05:46','2011-08-24 00:05:46',1,'productImg6','/image/18870461554478_460X635.jpg','/image/18870461554478_317X438.jpg','/image/18870461554478.jpg','/image/18870461554478_74X102.jpg','/image/18870461554478_46X63.jpg','/image/18870461554478_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(20,'productImg7','2011-08-24 00:06:00','2011-08-24 00:06:00',1,'productImg7','/image/18884416337585_460X635.jpg','/image/18884416337585_317X438.jpg','/image/18884416337585.jpg','/image/18884416337585_74X102.jpg','/image/18884416337585_46X63.jpg','/image/18884416337585_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(21,'productImg8','2011-08-24 00:06:12','2011-08-24 00:06:12',1,'productImg8','/image/18896754856543_460X635.jpg','/image/18896754856543_317X438.jpg','/image/18896754856543.jpg','/image/18896754856543_74X102.jpg','/image/18896754856543_46X63.jpg','/image/18896754856543_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(22,'p1','2011-08-24 22:36:39','2011-08-24 22:36:39',1,'p1','/image/11330325949885_460X635.jpg','/image/11330325949885_317X438.jpg','/image/11330325949885.jpg','/image/11330325949885_74X102.jpg','/image/11330325949885_46X63.jpg','/image/11330325949885_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(23,'p2','2011-08-24 22:36:52','2011-08-24 22:36:52',1,'p2','/image/11343124813232_460X635.jpg','/image/11343124813232_317X438.jpg','/image/11343124813232.jpg','/image/11343124813232_74X102.jpg','/image/11343124813232_46X63.jpg','/image/11343124813232_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(24,'p3','2011-08-24 22:37:05','2011-08-24 22:37:05',1,'p3','/image/11355880870033_460X635.jpg','/image/11355880870033_317X438.jpg','/image/11355880870033.jpg','/image/11355880870033_74X102.jpg','/image/11355880870033_46X63.jpg','/image/11355880870033_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(25,'p4','2011-08-24 22:37:20','2011-08-24 22:37:20',1,'p4','/image/11370693998123_460X635.jpg','/image/11370693998123_317X438.jpg','/image/11370693998123.jpg','/image/11370693998123_74X102.jpg','/image/11370693998123_46X63.jpg','/image/11370693998123_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(26,'p5','2011-08-24 22:37:31','2011-08-24 22:37:31',1,'p5','/image/11382226876851_460X635.jpg','/image/11382226876851_317X438.jpg','/image/11382226876851.jpg','/image/11382226876851_74X102.jpg','/image/11382226876851_46X63.jpg','/image/11382226876851_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(27,'p6','2011-08-24 22:37:42','2011-08-24 22:37:42',1,'p6','/image/11393018761012_460X635.jpg','/image/11393018761012_317X438.jpg','/image/11393018761012.jpg','/image/11393018761012_74X102.jpg','/image/11393018761012_46X63.jpg','/image/11393018761012_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(28,'p7','2011-08-24 22:37:52','2011-08-24 22:37:52',1,'p7','/image/11403243673392_460X635.jpg','/image/11403243673392_317X438.jpg','/image/11403243673392.jpg','/image/11403243673392_74X102.jpg','/image/11403243673392_46X63.jpg','/image/11403243673392_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(29,'p8','2011-08-24 22:38:04','2011-08-24 22:38:04',1,'p8','/image/11415156835584_460X635.jpg','/image/11415156835584_317X438.jpg','/image/11415156835584.jpg','/image/11415156835584_74X102.jpg','/image/11415156835584_46X63.jpg','/image/11415156835584_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(30,'p9','2011-08-24 22:38:16','2011-08-24 22:38:16',1,'p9','/image/11426788977866_460X635.jpg','/image/11426788977866_317X438.jpg','/image/11426788977866.jpg','/image/11426788977866_74X102.jpg','/image/11426788977866_46X63.jpg','/image/11426788977866_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(31,'home-ad','2011-08-27 02:36:12','2011-08-27 02:36:12',1,'home-ad','/image/19372690665746_460X635.jpg','/image/19372690665746_317X438.jpg','/image/19372690665746.jpg','/image/19372690665746_74X102.jpg','/image/19372690665746_46X63.jpg','/image/19372690665746_192X265.jpg','PRODUCT_NORMAL','INTERNAL'),(32,'specialOfferImg','2011-08-28 23:57:16','2011-08-28 23:57:16',1,'specialOfferImg','/image/42110342251015_460X635.jpg','/image/42110342251015_317X438.jpg','/image/42110342251015.jpg','/image/42110342251015_74X102.jpg','/image/42110342251015_46X63.jpg','/image/42110342251015_192X265.jpg','SPECIAL_OFFER','INTERNAL'),(33,'specialOfferImg2','2011-08-29 00:09:30','2011-08-29 00:09:30',1,'specialOfferImg2','/image/42844648607038_460X635.jpg','/image/42844648607038_317X438.jpg','/image/42844648607038.jpg','/image/42844648607038_74X102.jpg','/image/42844648607038_46X63.jpg','/image/42844648607038_192X265.jpg','SPECIAL_OFFER','INTERNAL'),(34,'gundamCategoryImg','2011-08-29 23:13:47','2011-08-29 23:27:39',1,'gundamCategoryImg','/image/13359512696421_460X635.jpg','/image/13359512696421_317X438.jpg','/image/13359512696421.jpg','/image/13359512696421_74X102.jpg','/image/13359512696421_46X63.jpg','/image/13359512696421_192X265.jpg','PRODUCT_NORMAL','INTERNAL');
/*!40000 ALTER TABLE `shop_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_markplace`
--

DROP TABLE IF EXISTS `shop_markplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_markplace` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK1CEB4C111265A9BE` (`Promotion_id`),
  CONSTRAINT `FK1CEB4C111265A9BE` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_markplace`
--

LOCK TABLES `shop_markplace` WRITE;
/*!40000 ALTER TABLE `shop_markplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_markplace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_newsletter`
--

DROP TABLE IF EXISTS `shop_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_newsletter` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKA3DF0DC2BF627AED` (`site_id`),
  CONSTRAINT `FKA3DF0DC2BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_newsletter`
--

LOCK TABLES `shop_newsletter` WRITE;
/*!40000 ALTER TABLE `shop_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `customerAddress` varchar(200) DEFAULT NULL,
  `customerCompany` varchar(200) DEFAULT NULL,
  `customerCountry` varchar(200) DEFAULT NULL,
  `customerEmail` varchar(200) DEFAULT NULL,
  `customerName` varchar(200) DEFAULT NULL,
  `customerTelephone` varchar(200) DEFAULT NULL,
  `customerZipcode` varchar(200) DEFAULT NULL,
  `deliverCode` varchar(200) DEFAULT NULL,
  `deliverCompany` varchar(200) DEFAULT NULL,
  `deliverPhone` varchar(200) DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `totalPrice` float DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK24293CA53972FC6D` (`user_id`),
  KEY `FK24293CA51EE5B775` (`status_id`),
  KEY `FK24293CA5BF627AED` (`site_id`),
  CONSTRAINT `FK24293CA51EE5B775` FOREIGN KEY (`status_id`) REFERENCES `shop_orderstatus` (`ID`),
  CONSTRAINT `FK24293CA53972FC6D` FOREIGN KEY (`user_id`) REFERENCES `shop_user` (`ID`),
  CONSTRAINT `FK24293CA5BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_coupon`
--

DROP TABLE IF EXISTS `shop_order_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_coupon` (
  `order_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  KEY `FK8D44B0E0C94681CD` (`coupon_id`),
  KEY `FK8D44B0E04E06B6C7` (`order_id`),
  CONSTRAINT `FK8D44B0E04E06B6C7` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`ID`),
  CONSTRAINT `FK8D44B0E0C94681CD` FOREIGN KEY (`coupon_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_coupon`
--

LOCK TABLES `shop_order_coupon` WRITE;
/*!40000 ALTER TABLE `shop_order_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_order_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_orderitem`
--

DROP TABLE IF EXISTS `shop_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_orderitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `finalPrice` float DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK3E6351584E06B6C7` (`order_id`),
  KEY `FK3E635158582107E7` (`product_id`),
  CONSTRAINT `FK3E6351584E06B6C7` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`ID`),
  CONSTRAINT `FK3E635158582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_orderitem`
--

LOCK TABLES `shop_orderitem` WRITE;
/*!40000 ALTER TABLE `shop_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_orderstatus`
--

DROP TABLE IF EXISTS `shop_orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_orderstatus` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK43E328F7BF627AED` (`site_id`),
  CONSTRAINT `FK43E328F7BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_orderstatus`
--

LOCK TABLES `shop_orderstatus` WRITE;
/*!40000 ALTER TABLE `shop_orderstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `abstractText` longtext,
  `keywords` longtext,
  `hit` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `rateCount` varchar(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `detail` longtext,
  `commentsTotal` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKF44D8886BF627AED` (`site_id`),
  CONSTRAINT `FKF44D8886BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (12,'Abc','2011-08-16 22:10:20','2011-08-16 23:38:01',1,NULL,'asdasd',0,0,NULL,0,'asdas','asdasdasdasd',0,0),(13,'ddd','2011-08-17 22:52:00','2011-08-17 22:59:48',1,NULL,'asdas',0,0,NULL,0,'asasd','<p class=\"noFlow\"><a class=\"item_help\" id=\"wholesale\">Submit a large order inquiry</a></p>\n          		  <div class=\"item_linkBox\">\n			<div style=\"display: block;\" class=\"addthis_box\"><div style=\"clear: both;\"><div style=\"float:left;\"><div class=\"addthis_toolbox addthis_default_style\"><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Send to Facebook\" class=\"addthis_button_facebook at300b\"><span class=\"at300bs at15nc at15t_facebook\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Tweet This\" class=\"addthis_button_twitter at300b\"><span class=\"at300bs at15nc at15t_twitter\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Email\" class=\"addthis_button_email at300b\"><span class=\"at300bs at15nc at15t_email\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" class=\"addthis_button_compact at300m\"><span class=\"at300bs at15nc at15t_compact\"></span></a></div></div><br></div></div>\n		  </div>',0,0),(14,'School-Days-Katsura-Kotonoha-Microfibre-Pillowcase','2011-08-23 21:27:05','2011-08-23 21:27:05',1,NULL,'School Days Katsura Kotonoha Microfibre Pillowcase',0,0,NULL,0,'School Days Katsura Kotonoha Microfibre Pillowcase','',0,0),(15,'Lolita-Cosplay-Costume-2','2011-08-24 00:06:34','2011-08-24 00:06:34',1,NULL,'Lolita Cosplay Costume 2',0,0,NULL,0,'Lolita Cosplay Costume 2','<br>',0,0),(16,'Lolita-Cosplay-Costume-3','2011-08-24 00:08:03','2011-08-24 00:08:03',1,NULL,'Lolita Cosplay Costume 3',0,0,NULL,0,'Lolita Cosplay Costume 3',NULL,0,0),(17,'Lolita-Cosplay-Costume-5','2011-08-24 00:09:38','2011-08-24 00:09:38',1,NULL,'Lolita Cosplay Costume 5',0,0,NULL,0,'Lolita Cosplay Costume 5',NULL,0,0),(18,'Lolita-Cosplay-Costume-4','2011-08-24 00:10:39','2011-08-24 00:10:39',1,NULL,'Lolita Cosplay Costume 4',0,0,NULL,0,'Lolita Cosplay Costume 4',NULL,0,0),(19,'Lolita-Cosplay-Costume-6','2011-08-24 00:11:34','2011-08-24 00:11:34',1,NULL,'Lolita Cosplay Costume 6',0,0,NULL,0,'Lolita Cosplay Costume 6',NULL,0,0),(20,'Lolita-Cosplay-Costume-7','2011-08-24 00:17:04','2011-08-24 00:17:04',1,NULL,'Lolita Cosplay Costume 7',0,0,NULL,0,'Lolita Cosplay Costume 7','<br>',0,0),(21,'Lolita-Cosplay-Costume-8','2011-08-24 00:17:47','2011-08-24 00:17:47',1,NULL,'Lolita Cosplay Costume 8',0,0,NULL,0,'Lolita Cosplay Costume 8',NULL,0,0),(22,'Lolita-Cosplay-Costume-9','2011-08-24 00:18:23','2011-08-24 00:18:23',1,NULL,'Lolita Cosplay Costume 9',0,0,NULL,0,'Lolita Cosplay Costume 9',NULL,0,0),(23,'Lolita-Cosplay-Costume-10','2011-08-24 00:19:10','2011-08-24 00:19:10',1,NULL,'Lolita Cosplay Costume 10',0,0,NULL,0,'Lolita Cosplay Costume 10',NULL,0,0),(24,'Lolita-Cosplay-Costume-11','2011-08-24 00:19:55','2011-08-24 00:19:55',1,NULL,'Lolita Cosplay Costume 11',0,0,NULL,0,'Lolita Cosplay Costume 11','<br>',0,0),(25,'Lolita-Cosplay-Costume-12','2011-08-24 00:20:25','2011-08-24 00:20:25',1,NULL,'Lolita Cosplay Costume 12',0,0,NULL,0,'Lolita Cosplay Costume 12',NULL,0,0),(26,'Lolita-Cosplay-Costume-13','2011-08-24 00:20:58','2011-08-24 00:20:58',1,NULL,'Lolita Cosplay Costume 13',0,0,NULL,0,'Lolita Cosplay Costume 13',NULL,0,0),(27,'Lolita-Cosplay-Costume-14','2011-08-24 00:21:34','2011-08-24 00:21:34',1,NULL,'Lolita Cosplay Costume 14',0,0,NULL,0,'Lolita Cosplay Costume 14',NULL,0,0),(28,'Lolita-Cosplay-Costume-15','2011-08-24 00:22:08','2011-08-24 00:22:08',1,NULL,'Lolita Cosplay Costume 15',0,0,NULL,0,'Lolita Cosplay Costume 15',NULL,0,0),(29,'Polyester-Womens-Gothic-Dress-1','2011-08-24 22:38:21','2011-08-24 22:38:21',1,NULL,'Polyester Womens Gothic Dress 1',0,0,NULL,0,'Polyester Womens Gothic Dress 1',NULL,0,0),(30,'Polyester-Womens-Gothic-Dress-2','2011-08-24 22:39:32','2011-08-24 22:39:32',1,NULL,'Polyester Womens Gothic Dress 2',0,0,NULL,0,'Polyester Womens Gothic Dress 2',NULL,0,0),(31,'Polyester-Womens-Gothic-Dress-3','2011-08-24 22:40:07','2011-08-24 22:40:07',1,NULL,'Polyester Womens Gothic Dress 3',0,0,NULL,0,'Polyester Womens Gothic Dress 3',NULL,0,0),(32,'Polyester-Womens-Gothic-Dress-4','2011-08-24 22:40:40','2011-08-24 22:40:40',1,NULL,'Polyester Womens Gothic Dress 4',0,0,NULL,0,'Polyester Womens Gothic Dress 4',NULL,0,0),(33,'Polyester-Womens-Gothic-Dress-5','2011-08-24 22:41:17','2011-08-24 22:41:17',1,NULL,'Polyester Womens Gothic Dress 5',0,0,NULL,0,'Polyester Womens Gothic Dress 5',NULL,0,0),(34,'Polyester-Womens-Gothic-Dress-6','2011-08-24 22:41:55','2011-08-24 22:41:55',1,NULL,'Polyester Womens Gothic Dress 6',0,0,NULL,0,'Polyester Womens Gothic Dress 6',NULL,0,0),(35,'Polyester-Womens-Gothic-Dress-7','2011-08-24 22:42:31','2011-08-24 22:42:31',1,NULL,'Polyester Womens Gothic Dress 7',0,0,NULL,0,'Polyester Womens Gothic Dress 7',NULL,0,0),(36,'Polyester-Womens-Gothic-Dress-8','2011-08-24 22:43:10','2011-08-24 22:43:10',1,NULL,'Polyester Womens Gothic Dress 8',0,0,NULL,0,'Polyester Womens Gothic Dress 8',NULL,0,0),(37,'Polyester-Womens-Gothic-Dress-9','2011-08-24 22:44:10','2011-08-24 22:44:10',1,NULL,'Polyester Womens Gothic Dress 9',0,0,NULL,0,'Polyester Womens Gothic Dress 9',NULL,0,0),(38,'Polyester-Womens-Gothic-Dress-10','2011-08-24 22:44:46','2011-08-24 22:44:46',1,NULL,'Polyester Womens Gothic Dress 10',0,0,NULL,0,'Polyester Womens Gothic Dress 10',NULL,0,0),(39,'Men-T-shirt','2011-08-25 01:24:33','2011-08-25 17:29:44',1,NULL,'Men T-shirt',0,0,NULL,0,'Men\'s T-shirt',NULL,0,0);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_category`
--

DROP TABLE IF EXISTS `shop_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `FK811F00B79F630A0D` (`category_id`),
  KEY `FK811F00B7582107E7` (`product_id`),
  CONSTRAINT `FK811F00B7582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK811F00B79F630A0D` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_category`
--

LOCK TABLES `shop_product_category` WRITE;
/*!40000 ALTER TABLE `shop_product_category` DISABLE KEYS */;
INSERT INTO `shop_product_category` VALUES (12,4),(12,8),(13,9),(13,4),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,3),(37,3),(38,3),(39,57);
/*!40000 ALTER TABLE `shop_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_image`
--

DROP TABLE IF EXISTS `shop_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_product_image` (
  `product_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  KEY `FK6EA19862D0E15FA7` (`image_id`),
  KEY `FK6EA19862582107E7` (`product_id`),
  CONSTRAINT `FK6EA19862582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK6EA19862D0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_image`
--

LOCK TABLES `shop_product_image` WRITE;
/*!40000 ALTER TABLE `shop_product_image` DISABLE KEYS */;
INSERT INTO `shop_product_image` VALUES (12,2),(13,5),(13,4),(13,3),(13,2),(13,1),(14,14),(15,21),(16,20),(17,19),(18,18),(19,17),(20,16),(21,15),(22,21),(23,20),(24,19),(25,18),(26,17),(27,16),(28,15),(29,30),(30,29),(31,28),(32,27),(33,26),(34,25),(35,24),(36,23),(37,22),(38,28),(39,28),(39,29),(39,26),(39,25),(39,24);
/*!40000 ALTER TABLE `shop_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_productoption`
--

DROP TABLE IF EXISTS `shop_productoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_productoption` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `defaultValue` varchar(200) DEFAULT NULL,
  `description` longtext,
  `strSelectType` varchar(50) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK53BA009B582107E7` (`product_id`),
  CONSTRAINT `FK53BA009B582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_productoption`
--

LOCK TABLES `shop_productoption` WRITE;
/*!40000 ALTER TABLE `shop_productoption` DISABLE KEYS */;
INSERT INTO `shop_productoption` VALUES (15,'Color',NULL,NULL,'asdasd','adasd','COLOR_SINGLE',12),(16,'adsas',NULL,NULL,'asdasd','asdasd','INPUT_TEXT',12),(17,'asdasd',NULL,NULL,'asdasd','asdasd','SINGLE_LIST',12),(18,'Size',NULL,NULL,'us2',NULL,'SINGLE_LIST',13),(19,'Dress Color',NULL,NULL,NULL,NULL,'COLOR_SINGLE',13),(20,'Qty',NULL,NULL,NULL,NULL,'INPUT_TEXT',13),(21,'New Option',NULL,NULL,NULL,NULL,'MULTI_LIST',13);
/*!40000 ALTER TABLE `shop_productoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_productoptionitem`
--

DROP TABLE IF EXISTS `shop_productoptionitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_productoptionitem` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `altTitle` varchar(200) DEFAULT NULL,
  `displayName` varchar(200) DEFAULT NULL,
  `value` longtext,
  `icon_id` bigint(20) DEFAULT NULL,
  `product_option_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKEF652A4E23F866E6` (`product_option_id`),
  KEY `FKEF652A4E65CB8FC9` (`icon_id`),
  CONSTRAINT `FKEF652A4E23F866E6` FOREIGN KEY (`product_option_id`) REFERENCES `shop_productoption` (`ID`),
  CONSTRAINT `FKEF652A4E65CB8FC9` FOREIGN KEY (`icon_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_productoptionitem`
--

LOCK TABLES `shop_productoptionitem` WRITE;
/*!40000 ALTER TABLE `shop_productoptionitem` DISABLE KEYS */;
INSERT INTO `shop_productoptionitem` VALUES (17,'blue',NULL,NULL,NULL,NULL,'#4074E7 #2E50A5 #2E50A5 #4074E7',NULL,15),(18,'black',NULL,NULL,NULL,NULL,'#4D4C4C #131313 #131313 #4D4C4C',NULL,15),(19,'Item 1',NULL,NULL,NULL,NULL,NULL,NULL,16),(20,'asdas',NULL,NULL,NULL,NULL,'asdasd',NULL,17),(21,'aazx',NULL,NULL,NULL,NULL,'asdasd',NULL,17),(22,'US 2',NULL,NULL,NULL,NULL,'asdas',NULL,18),(23,'US 3',NULL,NULL,NULL,NULL,'sdasd',NULL,18),(24,'champagne',NULL,NULL,NULL,NULL,'#E7B37A #CA9837 #CA9837 #E7B37A',NULL,19),(25,'browncoffee',NULL,NULL,NULL,NULL,'#BB9A76 #87643F #87643F #BB9A76',NULL,19),(26,'chocolate',NULL,NULL,NULL,NULL,'#946D44 #6B4F37 #6B4F37 #946D44',NULL,19),(27,'blue',NULL,NULL,NULL,NULL,'#4074E7 #2E50A5 #2E50A5 #4074E7',NULL,19),(28,'black',NULL,NULL,NULL,NULL,'#4D4C4C #131313 #131313 #4D4C4C',NULL,19),(29,'burgundy',NULL,NULL,NULL,NULL,'#A43755 #551B29 #551B29 #A43755',NULL,19),(30,'Item 1',NULL,NULL,NULL,NULL,NULL,NULL,20),(31,'Item 1',NULL,NULL,NULL,NULL,NULL,NULL,21),(32,'New Item',NULL,NULL,NULL,NULL,NULL,NULL,21);
/*!40000 ALTER TABLE `shop_productoptionitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_productproperty`
--

DROP TABLE IF EXISTS `shop_productproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_productproperty` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `value` longtext,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK16BFE47B582107E7` (`product_id`),
  CONSTRAINT `FK16BFE47B582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_productproperty`
--

LOCK TABLES `shop_productproperty` WRITE;
/*!40000 ALTER TABLE `shop_productproperty` DISABLE KEYS */;
INSERT INTO `shop_productproperty` VALUES (13,'das',NULL,NULL,'asdasd',12),(14,'asdas',NULL,NULL,'asdasd',12),(15,'0011',NULL,NULL,'iseswwaa',13),(16,'Gender ',NULL,NULL,'unisex',14);
/*!40000 ALTER TABLE `shop_productproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_promotion`
--

DROP TABLE IF EXISTS `shop_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_promotion` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TypeString` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `strStatus` varchar(50) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` float DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `html` longtext,
  PRIMARY KEY (`ID`),
  KEY `FK261C2E7ABF627AED` (`site_id`),
  CONSTRAINT `FK261C2E7ABF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_promotion`
--

LOCK TABLES `shop_promotion` WRITE;
/*!40000 ALTER TABLE `shop_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_searchhistory`
--

DROP TABLE IF EXISTS `shop_searchhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_searchhistory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT NULL,
  `hit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_searchhistory`
--

LOCK TABLES `shop_searchhistory` WRITE;
/*!40000 ALTER TABLE `shop_searchhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_searchhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_site`
--

DROP TABLE IF EXISTS `shop_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_site` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) DEFAULT NULL,
  `imageMagicCommand` varchar(200) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `suffix` varchar(100) DEFAULT NULL,
  `prefix` varchar(100) DEFAULT NULL,
  `log_id` bigint(20) DEFAULT NULL,
  `sideBar` text,
  `siteFooter` text,
  `delivery_img_id` int(11) DEFAULT NULL,
  `featuredCat_img_id` int(11) DEFAULT NULL,
  `deliveryURL` varchar(200) DEFAULT NULL,
  `featuredCatURL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK2A76A310C2B5B11E` (`log_id`),
  CONSTRAINT `FK2A76A310C2B5B11E` FOREIGN KEY (`log_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_site`
--

LOCK TABLES `shop_site` WRITE;
/*!40000 ALTER TABLE `shop_site` DISABLE KEYS */;
INSERT INTO `shop_site` VALUES (1,'127.0.0.1:8888',NULL,'/image','/','www',17,'Test Side Bar','Test footer<br>',19,18,'http://tv.sohu.com','http://www.google.com');
/*!40000 ALTER TABLE `shop_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_tabproduct`
--

DROP TABLE IF EXISTS `shop_tabproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_tabproduct` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tabproduct`
--

LOCK TABLES `shop_tabproduct` WRITE;
/*!40000 ALTER TABLE `shop_tabproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_tabproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_tabselling`
--

DROP TABLE IF EXISTS `shop_tabselling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_tabselling` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_tabselling`
--

LOCK TABLES `shop_tabselling` WRITE;
/*!40000 ALTER TABLE `shop_tabselling` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_tabselling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_user`
--

DROP TABLE IF EXISTS `shop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `zipcode` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK2A77AF94BF627AED` (`site_id`),
  CONSTRAINT `FK2A77AF94BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_user`
--

LOCK TABLES `shop_user` WRITE;
/*!40000 ALTER TABLE `shop_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_useroption`
--

DROP TABLE IF EXISTS `shop_useroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_useroption` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `optional` varchar(200) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `order_item_id` bigint(20) DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBA02252932475AA4` (`order_item_id`),
  KEY `FKBA0225293D035A95` (`item_id`),
  KEY `FKBA022529BF627AED` (`site_id`),
  CONSTRAINT `FKBA02252932475AA4` FOREIGN KEY (`order_item_id`) REFERENCES `shop_orderitem` (`ID`),
  CONSTRAINT `FKBA0225293D035A95` FOREIGN KEY (`item_id`) REFERENCES `shop_orderitem` (`ID`),
  CONSTRAINT `FKBA022529BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_useroption`
--

LOCK TABLES `shop_useroption` WRITE;
/*!40000 ALTER TABLE `shop_useroption` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_useroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_product`
--

DROP TABLE IF EXISTS `tab_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_product` (
  `tab_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  KEY `FK43C4CE45B0F999F2` (`tab_id`),
  KEY `FK43C4CE45582107E7` (`product_id`),
  CONSTRAINT `FK43C4CE45582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK43C4CE45B0F999F2` FOREIGN KEY (`tab_id`) REFERENCES `shop_tabproduct` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_product`
--

LOCK TABLES `tab_product` WRITE;
/*!40000 ALTER TABLE `tab_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_product_selling`
--

DROP TABLE IF EXISTS `tab_product_selling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tab_product_selling` (
  `selling_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  KEY `FK4A030F5687682EB8` (`selling_id`),
  KEY `FK4A030F56582107E7` (`product_id`),
  CONSTRAINT `FK4A030F56582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK4A030F5687682EB8` FOREIGN KEY (`selling_id`) REFERENCES `shop_tabselling` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_product_selling`
--

LOCK TABLES `tab_product_selling` WRITE;
/*!40000 ALTER TABLE `tab_product_selling` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_product_selling` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-08-30 12:23:19
