/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : sshop

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2011-09-08 23:50:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `shop_address`
-- ----------------------------
DROP TABLE IF EXISTS `shop_address`;
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

-- ----------------------------
-- Records of shop_address
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_category`
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
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
  `deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKD43A7447C7120C87` (`specialOffer_image`),
  KEY `FKD43A7447BF627AED` (`site_id`),
  KEY `FKD43A7447BF210EE1` (`parent_id`),
  CONSTRAINT `FKD43A7447BF210EE1` FOREIGN KEY (`parent_id`) REFERENCES `shop_category` (`ID`),
  CONSTRAINT `FKD43A7447BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`),
  CONSTRAINT `FKD43A7447C7120C87` FOREIGN KEY (`specialOffer_image`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('', '0', '', '1', 'home', '2011-08-11 20:56:03', '2011-08-27 02:38:34', null, null, 'Home', null, '/', '', 'asdasdas', '', '<img src=\"http://127.0.0.1:8888/image/19372690665746.jpg\">', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '2', 'weddingdre2011col', '2011-07-27 17:06:16', '2011-08-06 18:14:35', null, '65', 'Wedding Dress 2011 Collection', null, null, 'Wedding Dress 2011 Collection keywords', 'Wedding Dress 2011 Collection - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', '', '3', 'costumes', '2011-08-06 17:56:10', '2011-08-27 12:15:23', null, null, 'Costumes', null, '', 'costumes keywords', 'Costumes - spark\'s shop', '', '<img src=\"http://127.0.0.1:8888/image/19372690665746.jpg\">', '0', '');
INSERT INTO `shop_category` VALUES ('', '7', 'asdfasdasd', '4', 'women', '2011-08-06 17:57:04', '2011-08-18 21:09:36', null, null, 'Women', null, '', 'women keywords', 'Women - spark\'s shop', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '5', 'men', '2011-08-06 17:59:32', '2011-08-06 17:59:32', null, null, 'Men', null, null, 'men keywords', 'Men - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '4', '', '6', 'shoes', '2011-08-06 18:00:54', '2011-09-08 23:39:14', null, null, 'Shoes', null, '', 'shoes keywords', 'Shoes - spark\'s shop', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '2', '', '7', 'accessories', '2011-08-06 18:03:03', '2011-08-18 21:01:47', null, null, 'Accessories', null, '', 'accessories keywords', 'Accessories - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '3', '', '8', 'sports', '2011-08-06 18:06:11', '2011-08-18 21:09:15', null, null, 'Sports', null, '', 'sports keywords', 'Sports - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '5', '', '9', 'kids', '2011-08-06 18:07:04', '2011-09-08 23:34:27', null, null, 'Kids', null, '', 'kids keywords', 'Kids - spark\'s shop', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '6', '', '10', 'weddingdre', '2011-08-06 18:20:00', '2011-08-18 21:00:54', null, '65', 'Wedding Dresses', null, '', 'Wedding Dresses keywords', 'Wedding Dresses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '11', 'weddingpartydre', '2011-08-06 18:23:19', '2011-08-09 21:16:19', null, '65', 'Wedding Party Dresses', null, 'www.facebook.com', 'Wedding Party Dresses keywords', 'Wedding Party Dresses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '12', 'springfashiontrend', '2011-08-06 18:29:08', '2011-08-06 18:29:08', null, '2', 'Spring Fashion Trends', null, null, 'Spring Fashion Trends keywords', 'Spring Fashion Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '13', 'summerfashiontrends', '2011-08-06 18:30:46', '2011-08-06 18:30:46', null, '2', 'Summer Fashion Trends', null, null, 'Summer Fashion Trends keywords', 'Summer Fashion Trends - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '14', 'fallfashiontrends', '2011-08-06 18:35:31', '2011-08-06 18:35:31', null, '2', 'Fall Fashion Trends', null, null, 'Fall Fashion Trends keywords', 'Fall Fashion Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '15', 'winterfashiontrends', '2011-08-06 18:36:22', '2011-08-06 18:36:22', null, '2', 'Winter Fashion Trends', null, null, 'Winter Fashion Trends keywords', 'Winter Fashion Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '16', 'weddingdreunder100', '2011-08-06 19:27:37', '2011-08-06 19:27:37', null, '10', 'Wedding Dress Under $100', null, null, 'Wedding Dress Under $100 Keywords', 'Wedding Dress Under $100', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '17', 'receptiondre', '2011-08-06 19:35:05', '2011-08-06 19:35:05', null, '10', 'Reception Dresses', null, null, 'Reception Dresses Keywords', 'Reception Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '18', 'beachweddingdre', '2011-08-06 19:39:29', '2011-08-06 19:39:29', null, '10', 'Beach Wedding Dresses', null, null, 'Beach Wedding Dresses keywords', 'Beach Wedding Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '19', 'littlegirldre', '2011-08-06 19:40:47', '2011-08-06 19:40:47', null, '11', 'Little Girl Dresses', null, null, 'Little Girl Dresses keywords', 'Little Girl Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '20', 'maternitybridesmaiddre', '2011-08-06 20:02:53', '2011-08-06 20:02:53', null, '11', 'Maternity Bridesmaid Dresses', null, null, 'Maternity Bridesmaid Dresses keywords', 'Maternity Bridesmaid Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '21', 'flowergirldre', '2011-08-06 20:04:19', '2011-08-06 20:04:19', null, '11', 'Flower Girl Dresses', null, null, 'Flower Girl Dresses keywords', 'Flower Girl Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '22', 'juniorbridesmaiddre', '2011-08-06 20:11:56', '2011-08-06 20:11:56', null, '11', 'Junior Bridesmaid Dresses', null, null, 'Junior Bridesmaid Dresses keywords', 'Junior Bridesmaid Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '23', 'bridesmaiddre', '2011-08-06 20:25:13', '2011-08-06 20:25:13', null, '11', 'Bridesmaid Dresses', null, null, 'Bridesmaid Dresses keywords', 'Bridesmaid Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '24', 'cosplay', '2011-08-06 20:34:05', '2011-08-06 20:35:33', null, '3', 'Cosplay Costumes', null, null, 'Cosplay Costumes keywords', 'Cosplay Costumes - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '25', 'punkclothing', '2011-08-06 20:35:15', '2011-08-06 20:35:15', null, '3', 'Punk Clothing', null, null, 'Punk Clothing keywords', 'Punk Clothing - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '26', 'mascot', '2011-08-06 20:37:45', '2011-08-06 20:37:45', null, '3', 'Mascot Costumes', null, null, 'Mascot Costumes keywords', 'Mascot Costumes - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '27', 'lolitaclothing', '2011-08-06 20:40:05', '2011-08-06 20:40:05', null, '3', 'Lolita Clothing', null, null, 'Lolita Clothing keywords', 'Lolita Clothing - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '28', 'cosplaywigs', '2011-08-06 20:45:32', '2011-08-06 20:45:32', null, '24', 'Cosplay Wigs', null, null, 'Cosplay Wigs keywords', 'Cosplay Wigs - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '29', 'cosplayshoes', '2011-08-06 20:47:25', '2011-08-06 20:47:25', null, '24', 'Cosplay Shoes', null, null, 'Cosplay Wigs keywords', 'Cosplay Shoes - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '30', 'schooluniform', '2011-08-06 20:49:07', '2011-08-06 20:49:07', null, '24', 'School Uniform', null, null, 'School Uniform keywords', 'School Uniform - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '31', 'punkdre', '2011-08-06 20:50:12', '2011-08-06 20:50:12', null, '25', 'Punk Dresses', null, null, 'Punk Dresses keywords', 'Punk Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '32', 'punkskirts', '2011-08-06 20:51:08', '2011-08-06 20:51:08', null, '25', 'Punk Skirts', null, null, 'Punk Skirts keywords', 'Punk Skirts - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '33', 'punkcoats', '2011-08-06 20:52:10', '2011-08-06 20:52:10', null, '25', 'Punk Coats', null, null, 'Punk Coats keywords', 'Punk Coats - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '34', 'bearmascots', '2011-08-06 20:53:27', '2011-08-06 20:53:27', null, '26', 'Bear Mascots', null, null, 'Bear Mascots keywords', 'Bear Mascots - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '35', 'lionmascots', '2011-08-06 20:56:22', '2011-08-06 20:56:22', null, '26', 'Lion Mascots', null, null, 'Lion Mascots keywords', 'Lion Mascots - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '36', 'lolitadre', '2011-08-06 20:58:18', '2011-08-06 20:58:18', null, '27', 'Lolita Dresses', null, null, 'Lolita Dresses', 'Lolita Dresses - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '37', 'lolitashirts', '2011-08-06 21:00:54', '2011-08-06 21:00:54', null, '27', 'Lolita Shirts', null, null, 'Lolita Shirts keywords', 'Lolita Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '38', 'lolitaoutfits', '2011-08-06 21:01:53', '2011-08-06 21:01:53', null, '27', 'Lolita Outfits', null, null, 'Lolita Outfits keywords', 'Lolita Outfits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '39', 'lolitablouses', '2011-08-06 21:02:50', '2011-08-06 21:02:50', null, '27', 'Lolita Blouses', null, null, 'Lolita Blouses', 'Lolita Blouses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '40', 'lolitabloomers', '2011-08-06 21:03:54', '2011-08-06 21:03:54', null, '27', 'Lolita Bloomers', null, null, 'Lolita Bloomers keywords', 'Lolita Bloomers', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '41', 'coastjackets', '2011-08-06 21:05:15', '2011-08-06 21:05:15', null, '27', 'Coast & Jackets', null, null, 'Coast Jackets keywords', 'Coast & Jackets', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '42', 'springsummer2011', '2011-08-06 21:14:15', '2011-08-06 21:14:15', null, '4', 'Spring/Summer 2011 Trends', null, null, 'Spring Summer 2011 Trends keywords', 'Spring/Summer 2011 Trends', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '43', 'pants', '2011-08-06 21:21:23', '2011-08-06 21:21:23', null, '4', 'Pants', null, null, 'Pants keywords', 'Pants', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '44', 'womenfeatures', '2011-08-06 21:22:43', '2011-08-06 21:24:53', null, '4', 'Features', null, null, 'Features keywords', 'Features', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '45', 'mentshirts', '2011-08-06 21:24:31', '2011-08-06 21:24:31', null, '5', 'Men\'s T-Shirts', null, null, 'Men T-Shirts keywords', 'Men\'s T-Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', '', '46', 'fashionshoes', '2011-08-06 21:27:45', '2011-09-08 23:34:44', null, null, 'Fashion Shoes', null, '', 'Fashion Shoes keywords', 'Fashion Shoes', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '47', 'jewelry', '2011-08-06 21:30:43', '2011-08-06 21:30:43', null, '7', 'Jewelry', null, null, 'Jewelry keywords', 'Jewelry', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '48', 'swimsuits', '2011-08-06 21:31:44', '2011-08-06 21:31:44', null, '8', 'Swim Suits', null, null, 'Swim Suits', 'Swim Suits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '49', 'baby0_24m', '2011-08-06 21:40:47', '2011-08-06 21:40:47', null, '9', 'Baby (0-24 months)', null, null, 'Baby (0-24 months) keywords', 'Baby (0-24 months)', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '50', 'pleateddre', '2011-08-06 21:45:00', '2011-08-06 21:45:00', null, '42', 'Pleated Dresses', null, null, 'Pleated Dresses keywords', 'Pleated Dresses', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '51', 'pleatedskirts', '2011-08-06 21:46:18', '2011-08-06 21:46:18', null, '42', 'Pleated Skirts', null, null, 'Pleated Skirts keywords', 'Pleated Skirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '52', 'womenharempants', '2011-08-06 21:48:22', '2011-08-06 21:48:22', null, '43', 'Women\'s Harem Pants', null, null, 'Women\'s Harem Pants keywords', 'Women\'s Harem Pants', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '53', 'summerinthenet', '2011-08-06 21:50:17', '2011-08-06 21:50:17', null, '44', 'Summer In The Net', null, null, 'Summer Net keywords', 'Summer In The Net', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '54', 'sequins', '2011-08-06 21:51:40', '2011-08-06 21:51:40', null, '44', 'Sequins', null, null, 'Sequins keywords', 'Sequins', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '55', 'parishilton', '2011-08-06 21:54:47', '2011-08-06 21:54:47', null, '44', 'Paris Hilton', null, null, 'Paris Hilton keywords', 'Paris Hilton', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '56', 'poloshirts', '2011-08-06 21:56:13', '2011-08-06 21:56:13', null, '45', 'Polo Shirts', null, null, 'Polo shirts keywords', 'Polo Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '57', 'mtshirts', '2011-08-06 21:57:14', '2011-08-06 21:58:05', null, '45', 'T-Shirts', null, null, 'T-Shirts Men keywords', 'T-Shirts', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', '', '58', 'paintedshoes', '2011-08-06 22:03:25', '2011-09-08 23:16:44', null, null, 'Painted Shoes', null, '', 'Painted Shoes keywords', 'Painted Shoes', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '2', '', '59', 'pearljewelry', '2011-08-06 22:04:31', '2011-08-18 21:01:17', null, '47', 'Pearl Jewelry', null, '', 'Pearl Jewelry keywords', 'Pearl Jewelry', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '60', 'crystaljewelry', '2011-08-06 22:05:51', '2011-08-06 22:05:51', null, '47', 'Crystal Jewelry', null, null, 'Crystal Jewelry keywords', 'Crystal Jewelry', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '61', 'onepieceswim', '2011-08-06 22:07:11', '2011-08-06 22:08:29', null, '48', 'One Piece Swimsuits', null, null, 'One Piece Swimsuits keywords', 'One Piece Swimsuits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '62', '2pieceswim', '2011-08-06 22:09:30', '2011-08-06 22:09:29', null, '48', 'Two Piece Swimsuits', null, null, 'Two Piece Swimsuits keywords', 'Two Piece Swimsuits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '63', 'bikiniswim', '2011-08-06 22:10:08', '2011-08-06 22:10:08', null, '48', 'Bikini Swimsuits', null, null, 'Bikini Swimsuits keywords', 'Bikini Swimsuits', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', null, '64', 'boysclothing2_15y', '2011-08-06 22:11:34', '2011-08-06 22:11:34', null, '9', 'Boys Clothing (2-15 years)', null, null, 'Boys Clothing keywords', 'Boys Clothing (2-15 years)', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '1', '', '65', 'WeddingEvents', '2011-07-27 16:57:52', '2011-08-18 21:00:58', null, null, 'Wedding & Events', null, 'www.google.com', 'wedding events keywords', 'Wedding & Events - spark\'s shop', '', '', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root1 desc', '66', 'specialofferroot1', '2011-08-28 20:56:08', '2011-08-28 20:56:08', null, '3', 'Special Offer Root1', null, '', 'Special Offer Root1 keywords', 'Special Offer Root1', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root2 desc', '67', 'specialofferroot2', '2011-08-28 20:56:58', '2011-08-28 20:56:58', null, '3', 'Special Offer Root2', null, '', 'Special Offer Root2 keywords', 'Special Offer Root2', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root3 desc', '68', 'specialofferroot3', '2011-08-28 20:57:35', '2011-08-28 20:57:35', null, '3', 'Special Offer Root3', null, '', 'Special Offer Root3 keywords', 'Special Offer Root3', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root4 desc', '69', 'specialofferroot4', '2011-08-28 22:25:31', '2011-08-28 22:25:31', null, '24', 'Special Offer Root4', null, '', 'Special Offer Root4 keywords', 'Special Offer Root4', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root5 desc', '70', 'specialofferroot5', '2011-08-28 22:26:34', '2011-08-28 23:58:18', null, '28', 'Special Offer Root5', '32', '', 'Special Offer Root5 keywords', 'Special Offer Root5', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root6 desc', '71', 'specialofferroot6', '2011-08-28 22:27:39', '2011-08-28 22:27:39', null, '31', 'Special Offer Root6', null, '', 'Special Offer Root6 desc', 'Special Offer Root6', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '0', 'Special Offer Root7 desc', '72', 'specialofferroot7', '2011-08-28 22:30:09', '2011-08-29 00:10:00', null, '56', 'Special Offer Root7', '33', '', 'Special Offer Root7 keywords', 'Special Offer Root7', '', '<br>', '0', '');
INSERT INTO `shop_category` VALUES ('', '15', 'Gundam seed', '73', 'gundam', '2011-08-29 23:10:22', '2011-09-08 00:05:31', null, null, 'Gundam', null, '', 'seed gundam kira', 'Gundam', '', '<a href=\"http://www.xiaonei.com\"><img src=\"http://127.0.0.1:8888/image/13359512696421.jpg\"></a><br><br>', '1', '');
INSERT INTO `shop_category` VALUES ('', '0', 'asdasd', '74', 'asdas', '2011-09-08 00:06:10', '2011-09-08 00:06:10', null, '73', 'asdas', null, '', 'asdasd', 'asdas', '', 'asdasdasjhkasfjksdhfsdkhfsdfhfsdfsdfsdf', '1', '');

-- ----------------------------
-- Table structure for `shop_comment`
-- ----------------------------
DROP TABLE IF EXISTS `shop_comment`;
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

-- ----------------------------
-- Records of shop_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `shop_configuration`;
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

-- ----------------------------
-- Records of shop_configuration
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_country`
-- ----------------------------
DROP TABLE IF EXISTS `shop_country`;
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

-- ----------------------------
-- Records of shop_country
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `shop_coupon`;
CREATE TABLE `shop_coupon` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK4C61CDAFEA82B030` (`Promotion_id`),
  CONSTRAINT `FK4C61CDAFEA82B030` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_cutoff`
-- ----------------------------
DROP TABLE IF EXISTS `shop_cutoff`;
CREATE TABLE `shop_cutoff` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK4CB56956EAD64BD7` (`Promotion_id`),
  CONSTRAINT `FK4CB56956EAD64BD7` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cutoff
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_deliver`
-- ----------------------------
DROP TABLE IF EXISTS `shop_deliver`;
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

-- ----------------------------
-- Records of shop_deliver
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `shop_feedback`;
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

-- ----------------------------
-- Records of shop_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_html`
-- ----------------------------
DROP TABLE IF EXISTS `shop_html`;
CREATE TABLE `shop_html` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_html
-- ----------------------------
INSERT INTO `shop_html` VALUES ('6', 'asdas', '2011-09-08 22:48:53', null, 'asdasdasd');

-- ----------------------------
-- Table structure for `shop_image`
-- ----------------------------
DROP TABLE IF EXISTS `shop_image`;
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

-- ----------------------------
-- Records of shop_image
-- ----------------------------
INSERT INTO `shop_image` VALUES ('1', 'asdasdas', '2011-08-11 20:55:11', '2011-08-17 23:12:10', '1', 'asdasdas', '/image/123711895637103_460X635.jpg', '/image/123711895637103_317X438.jpg', '/image/123711895637103.jpg', '/image/123711895637103_74X102.jpg', '/image/123711895637103_46X63.jpg', '/image/123711895637103_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('2', 'asdasd', '2011-08-15 19:36:33', '2011-08-17 23:12:00', '1', 'asdasd', '/image/123701248716953_460X635.jpg', '/image/123701248716953_317X438.jpg', '/image/123701248716953.jpg', '/image/123701248716953_74X102.jpg', '/image/123701248716953_46X63.jpg', '/image/123701248716953_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('3', 'dddddd', '2011-08-17 21:37:51', '2011-08-17 21:38:05', '1', 'dddddd', '/image/118066906655980_460X635.jpg', '/image/118066906655980_317X438.jpg', '/image/118066906655980.jpg', '/image/118066906655980_74X102.jpg', '/image/118066906655980_46X63.jpg', '/image/118066906655980_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('4', 'asdasdasd', '2011-08-17 21:40:23', '2011-08-17 21:41:21', '1', 'asdasdasd', '/image/118263049668863_460X635.jpg', '/image/118263049668863_317X438.jpg', '/image/118263049668863.jpg', '/image/118263049668863_74X102.jpg', '/image/118263049668863_46X63.jpg', '/image/118263049668863_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('5', 'asdasdasd', '2011-08-17 21:43:35', '2011-08-17 23:11:50', '1', 'asdasdasd', '/image/123691340488827_460X635.jpg', '/image/123691340488827_317X438.jpg', '/image/123691340488827.jpg', '/image/123691340488827_74X102.jpg', '/image/123691340488827_46X63.jpg', '/image/123691340488827_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('6', '/image/124955267032987.jpg', '2011-08-17 23:32:54', '2011-08-17 23:32:54', '1', '/image/124955267032987.jpg', '/image/124955267032987_460X635.jpg', '/image/124955267032987_317X438.jpg', '/image/124955267032987.jpg', '/image/124955267032987_74X102.jpg', '/image/124955267032987_46X63.jpg', '/image/124955267032987_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('7', '/image/124956650258841.jpg', '2011-08-17 23:32:55', '2011-08-17 23:32:55', '1', '/image/124956650258841.jpg', '/image/124956650258841_460X635.jpg', '/image/124956650258841_317X438.jpg', '/image/124956650258841.jpg', '/image/124956650258841_74X102.jpg', '/image/124956650258841_46X63.jpg', '/image/124956650258841_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('8', '/image/124957896596790.jpg', '2011-08-17 23:32:56', '2011-08-17 23:32:56', '1', '/image/124957896596790.jpg', '/image/124957896596790_460X635.jpg', '/image/124957896596790_317X438.jpg', '/image/124957896596790.jpg', '/image/124957896596790_74X102.jpg', '/image/124957896596790_46X63.jpg', '/image/124957896596790_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('9', '/image/124958994124087.jpg', '2011-08-17 23:32:57', '2011-08-17 23:32:57', '1', '/image/124958994124087.jpg', '/image/124958994124087_460X635.jpg', '/image/124958994124087_317X438.jpg', '/image/124958994124087.jpg', '/image/124958994124087_74X102.jpg', '/image/124958994124087_46X63.jpg', '/image/124958994124087_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('10', '/image/124960188464209.jpg', '2011-08-17 23:32:58', '2011-08-17 23:32:58', '1', '/image/124960188464209.jpg', '/image/124960188464209_460X635.jpg', '/image/124960188464209_317X438.jpg', '/image/124960188464209.jpg', '/image/124960188464209_74X102.jpg', '/image/124960188464209_46X63.jpg', '/image/124960188464209_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('11', '/image/124961401143847.jpg', '2011-08-17 23:33:00', '2011-08-17 23:33:00', '1', '/image/124961401143847.jpg', '/image/124961401143847_460X635.jpg', '/image/124961401143847_317X438.jpg', '/image/124961401143847.jpg', '/image/124961401143847_74X102.jpg', '/image/124961401143847_46X63.jpg', '/image/124961401143847_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('12', '/image/124962494853956.jpg', '2011-08-17 23:33:01', '2011-08-17 23:33:01', '1', '/image/124962494853956.jpg', '/image/124962494853956_460X635.jpg', '/image/124962494853956_317X438.jpg', '/image/124962494853956.jpg', '/image/124962494853956_74X102.jpg', '/image/124962494853956_46X63.jpg', '/image/124962494853956_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('13', '/image/124963707999002.jpg', '2011-08-17 23:33:02', '2011-08-17 23:33:02', '1', '/image/124963707999002.jpg', '/image/124963707999002_460X635.jpg', '/image/124963707999002_317X438.jpg', '/image/124963707999002.jpg', '/image/124963707999002_74X102.jpg', '/image/124963707999002_46X63.jpg', '/image/124963707999002_192X265.jpg', 'PRODUCT_NORMAL', null);
INSERT INTO `shop_image` VALUES ('14', 'cosplay1', '2011-08-23 21:26:47', '2011-08-23 21:26:47', '1', 'cosplay1', '/image/9331994551495_460X635.jpg', '/image/9331994551495_317X438.jpg', '/image/9331994551495.jpg', '/image/9331994551495_74X102.jpg', '/image/9331994551495_46X63.jpg', '/image/9331994551495_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('15', 'productImg2', '2011-08-24 00:04:36', '2011-08-24 00:04:36', '1', 'productImg2', '/image/18801009063392_460X635.jpg', '/image/18801009063392_317X438.jpg', '/image/18801009063392.jpg', '/image/18801009063392_74X102.jpg', '/image/18801009063392_46X63.jpg', '/image/18801009063392_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('16', 'ibrasimovic3', '2011-08-24 00:04:57', '2011-08-24 00:04:57', '1', 'ibrasimovic3', '/image/18822107699958_460X635.jpg', '/image/18822107699958_317X438.jpg', '/image/18822107699958.jpg', '/image/18822107699958_74X102.jpg', '/image/18822107699958_46X63.jpg', '/image/18822107699958_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('17', 'productImg4', '2011-08-24 00:05:18', '2011-08-24 00:05:18', '1', 'productImg4', '/image/18842705838860_460X635.jpg', '/image/18842705838860_317X438.jpg', '/image/18842705838860.jpg', '/image/18842705838860_74X102.jpg', '/image/18842705838860_46X63.jpg', '/image/18842705838860_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('18', 'productImg5', '2011-08-24 00:05:33', '2011-08-24 00:05:33', '1', 'productImg5', '/image/18858187148595_460X635.jpg', '/image/18858187148595_317X438.jpg', '/image/18858187148595.jpg', '/image/18858187148595_74X102.jpg', '/image/18858187148595_46X63.jpg', '/image/18858187148595_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('19', 'productImg6', '2011-08-24 00:05:46', '2011-08-24 00:05:46', '1', 'productImg6', '/image/18870461554478_460X635.jpg', '/image/18870461554478_317X438.jpg', '/image/18870461554478.jpg', '/image/18870461554478_74X102.jpg', '/image/18870461554478_46X63.jpg', '/image/18870461554478_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('20', 'productImg7', '2011-08-24 00:06:00', '2011-08-24 00:06:00', '1', 'productImg7', '/image/18884416337585_460X635.jpg', '/image/18884416337585_317X438.jpg', '/image/18884416337585.jpg', '/image/18884416337585_74X102.jpg', '/image/18884416337585_46X63.jpg', '/image/18884416337585_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('21', 'productImg8', '2011-08-24 00:06:12', '2011-08-24 00:06:12', '1', 'productImg8', '/image/18896754856543_460X635.jpg', '/image/18896754856543_317X438.jpg', '/image/18896754856543.jpg', '/image/18896754856543_74X102.jpg', '/image/18896754856543_46X63.jpg', '/image/18896754856543_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('22', 'p1', '2011-08-24 22:36:39', '2011-08-24 22:36:39', '1', 'p1', '/image/11330325949885_460X635.jpg', '/image/11330325949885_317X438.jpg', '/image/11330325949885.jpg', '/image/11330325949885_74X102.jpg', '/image/11330325949885_46X63.jpg', '/image/11330325949885_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('23', 'p2', '2011-08-24 22:36:52', '2011-08-24 22:36:52', '1', 'p2', '/image/11343124813232_460X635.jpg', '/image/11343124813232_317X438.jpg', '/image/11343124813232.jpg', '/image/11343124813232_74X102.jpg', '/image/11343124813232_46X63.jpg', '/image/11343124813232_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('24', 'p3', '2011-08-24 22:37:05', '2011-08-24 22:37:05', '1', 'p3', '/image/11355880870033_460X635.jpg', '/image/11355880870033_317X438.jpg', '/image/11355880870033.jpg', '/image/11355880870033_74X102.jpg', '/image/11355880870033_46X63.jpg', '/image/11355880870033_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('25', 'p4', '2011-08-24 22:37:20', '2011-08-24 22:37:20', '1', 'p4', '/image/11370693998123_460X635.jpg', '/image/11370693998123_317X438.jpg', '/image/11370693998123.jpg', '/image/11370693998123_74X102.jpg', '/image/11370693998123_46X63.jpg', '/image/11370693998123_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('26', 'p5', '2011-08-24 22:37:31', '2011-08-24 22:37:31', '1', 'p5', '/image/11382226876851_460X635.jpg', '/image/11382226876851_317X438.jpg', '/image/11382226876851.jpg', '/image/11382226876851_74X102.jpg', '/image/11382226876851_46X63.jpg', '/image/11382226876851_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('27', 'p6', '2011-08-24 22:37:42', '2011-08-24 22:37:42', '1', 'p6', '/image/11393018761012_460X635.jpg', '/image/11393018761012_317X438.jpg', '/image/11393018761012.jpg', '/image/11393018761012_74X102.jpg', '/image/11393018761012_46X63.jpg', '/image/11393018761012_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('28', 'p7', '2011-08-24 22:37:52', '2011-08-24 22:37:52', '1', 'p7', '/image/11403243673392_460X635.jpg', '/image/11403243673392_317X438.jpg', '/image/11403243673392.jpg', '/image/11403243673392_74X102.jpg', '/image/11403243673392_46X63.jpg', '/image/11403243673392_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('29', 'p8', '2011-08-24 22:38:04', '2011-08-24 22:38:04', '1', 'p8', '/image/11415156835584_460X635.jpg', '/image/11415156835584_317X438.jpg', '/image/11415156835584.jpg', '/image/11415156835584_74X102.jpg', '/image/11415156835584_46X63.jpg', '/image/11415156835584_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('30', 'p9', '2011-08-24 22:38:16', '2011-08-24 22:38:16', '1', 'p9', '/image/11426788977866_460X635.jpg', '/image/11426788977866_317X438.jpg', '/image/11426788977866.jpg', '/image/11426788977866_74X102.jpg', '/image/11426788977866_46X63.jpg', '/image/11426788977866_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('31', 'home-ad', '2011-08-27 02:36:12', '2011-08-27 02:36:12', '1', 'home-ad', '/image/19372690665746_460X635.jpg', '/image/19372690665746_317X438.jpg', '/image/19372690665746.jpg', '/image/19372690665746_74X102.jpg', '/image/19372690665746_46X63.jpg', '/image/19372690665746_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('32', 'specialOfferImg', '2011-08-28 23:57:16', '2011-08-28 23:57:16', '1', 'specialOfferImg', '/image/42110342251015_460X635.jpg', '/image/42110342251015_317X438.jpg', '/image/42110342251015.jpg', '/image/42110342251015_74X102.jpg', '/image/42110342251015_46X63.jpg', '/image/42110342251015_192X265.jpg', 'SPECIAL_OFFER', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('33', 'specialOfferImg2', '2011-08-29 00:09:30', '2011-08-29 00:09:30', '1', 'specialOfferImg2', '/image/42844648607038_460X635.jpg', '/image/42844648607038_317X438.jpg', '/image/42844648607038.jpg', '/image/42844648607038_74X102.jpg', '/image/42844648607038_46X63.jpg', '/image/42844648607038_192X265.jpg', 'SPECIAL_OFFER', 'INTERNAL');
INSERT INTO `shop_image` VALUES ('34', 'gundamCategoryImg', '2011-08-29 23:13:47', '2011-08-29 23:27:39', '1', 'gundamCategoryImg', '/image/13359512696421_460X635.jpg', '/image/13359512696421_317X438.jpg', '/image/13359512696421.jpg', '/image/13359512696421_74X102.jpg', '/image/13359512696421_46X63.jpg', '/image/13359512696421_192X265.jpg', 'PRODUCT_NORMAL', 'INTERNAL');

-- ----------------------------
-- Table structure for `shop_markplace`
-- ----------------------------
DROP TABLE IF EXISTS `shop_markplace`;
CREATE TABLE `shop_markplace` (
  `Promotion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`Promotion_id`),
  KEY `FK1CEB4C111265A9BE` (`Promotion_id`),
  CONSTRAINT `FK1CEB4C111265A9BE` FOREIGN KEY (`Promotion_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_markplace
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_newsletter`
-- ----------------------------
DROP TABLE IF EXISTS `shop_newsletter`;
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

-- ----------------------------
-- Records of shop_newsletter
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
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

-- ----------------------------
-- Records of shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderitem`;
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

-- ----------------------------
-- Records of shop_orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_orderstatus`
-- ----------------------------
DROP TABLE IF EXISTS `shop_orderstatus`;
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

-- ----------------------------
-- Records of shop_orderstatus
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_coupon`;
CREATE TABLE `shop_order_coupon` (
  `order_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  KEY `FK8D44B0E0C94681CD` (`coupon_id`),
  KEY `FK8D44B0E04E06B6C7` (`order_id`),
  CONSTRAINT `FK8D44B0E04E06B6C7` FOREIGN KEY (`order_id`) REFERENCES `shop_order` (`ID`),
  CONSTRAINT `FK8D44B0E0C94681CD` FOREIGN KEY (`coupon_id`) REFERENCES `shop_promotion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_product`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
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
  `showComments` int(11) DEFAULT NULL,
  `showlikeButton` int(11) DEFAULT NULL,
  `tabProductKey` mediumtext,
  `price` double DEFAULT NULL,
  `actualPrice` double DEFAULT NULL,
  `manualKey` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `FKF44D8886BF627AED` (`site_id`),
  CONSTRAINT `FKF44D8886BF627AED` FOREIGN KEY (`site_id`) REFERENCES `shop_site` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('12', 'Abc', '2011-08-16 22:10:20', '2011-08-16 23:38:01', '1', null, 'asdasd', '0', '0', null, '0', 'asdas', 'asdasdasdasd', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('13', 'ddd', '2011-08-17 22:52:00', '2011-08-17 22:59:48', '1', null, 'asdas', '0', '0', null, '0', 'asasd', '<p class=\"noFlow\"><a class=\"item_help\" id=\"wholesale\">Submit a large order inquiry</a></p>\n          		  <div class=\"item_linkBox\">\n			<div style=\"display: block;\" class=\"addthis_box\"><div style=\"clear: both;\"><div style=\"float:left;\"><div class=\"addthis_toolbox addthis_default_style\"><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Send to Facebook\" class=\"addthis_button_facebook at300b\"><span class=\"at300bs at15nc at15t_facebook\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Tweet This\" class=\"addthis_button_twitter at300b\"><span class=\"at300bs at15nc at15t_twitter\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" title=\"Email\" class=\"addthis_button_email at300b\"><span class=\"at300bs at15nc at15t_email\"></span></a><a href=\"http://www.milanoo.com/Popular-Grape-Lace-Strapless-Floor-Length-Womens-Luxury-Wedding-Dress-p108072.html#\" class=\"addthis_button_compact at300m\"><span class=\"at300bs at15nc at15t_compact\"></span></a></div></div><br></div></div>\n		  </div>', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('14', 'School-Days-Katsura-Kotonoha-Microfibre-Pillowcase', '2011-08-23 21:27:05', '2011-08-23 21:27:05', '1', null, 'School Days Katsura Kotonoha Microfibre Pillowcase', '0', '0', null, '0', 'School Days Katsura Kotonoha Microfibre Pillowcase', '', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('15', 'Lolita-Cosplay-Costume-2', '2011-08-24 00:06:34', '2011-08-24 00:06:34', '1', null, 'Lolita Cosplay Costume 2', '0', '0', null, '0', 'Lolita Cosplay Costume 2', '<br>', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('16', 'Lolita-Cosplay-Costume-3', '2011-08-24 00:08:03', '2011-08-24 00:08:03', '1', null, 'Lolita Cosplay Costume 3', '0', '0', null, '0', 'Lolita Cosplay Costume 3', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('17', 'Lolita-Cosplay-Costume-5', '2011-08-24 00:09:38', '2011-08-24 00:09:38', '1', null, 'Lolita Cosplay Costume 5', '0', '0', null, '0', 'Lolita Cosplay Costume 5', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('18', 'Lolita-Cosplay-Costume-4', '2011-08-24 00:10:39', '2011-08-24 00:10:39', '1', null, 'Lolita Cosplay Costume 4', '0', '0', null, '0', 'Lolita Cosplay Costume 4', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('19', 'Lolita-Cosplay-Costume-6', '2011-08-24 00:11:34', '2011-08-24 00:11:34', '1', null, 'Lolita Cosplay Costume 6', '0', '0', null, '0', 'Lolita Cosplay Costume 6', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('20', 'Lolita-Cosplay-Costume-7', '2011-08-24 00:17:04', '2011-08-24 00:17:04', '1', null, 'Lolita Cosplay Costume 7', '0', '0', null, '0', 'Lolita Cosplay Costume 7', '<br>', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('21', 'Lolita-Cosplay-Costume-8', '2011-08-24 00:17:47', '2011-08-24 00:17:47', '1', null, 'Lolita Cosplay Costume 8', '0', '0', null, '0', 'Lolita Cosplay Costume 8', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('22', 'Lolita-Cosplay-Costume-9', '2011-08-24 00:18:23', '2011-08-24 00:18:23', '1', null, 'Lolita Cosplay Costume 9', '0', '0', null, '0', 'Lolita Cosplay Costume 9', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('23', 'Lolita-Cosplay-Costume-10', '2011-08-24 00:19:10', '2011-08-24 00:19:10', '1', null, 'Lolita Cosplay Costume 10', '0', '0', null, '0', 'Lolita Cosplay Costume 10', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('24', 'Lolita-Cosplay-Costume-11', '2011-08-24 00:19:55', '2011-08-24 00:19:55', '1', null, 'Lolita Cosplay Costume 11', '0', '0', null, '0', 'Lolita Cosplay Costume 11', '<br>', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('25', 'Lolita-Cosplay-Costume-12', '2011-08-24 00:20:25', '2011-08-24 00:20:25', '1', null, 'Lolita Cosplay Costume 12', '0', '0', null, '0', 'Lolita Cosplay Costume 12', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('26', 'Lolita-Cosplay-Costume-13', '2011-08-24 00:20:58', '2011-08-24 00:20:58', '1', null, 'Lolita Cosplay Costume 13', '0', '0', null, '0', 'Lolita Cosplay Costume 13', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('27', 'Lolita-Cosplay-Costume-14', '2011-08-24 00:21:34', '2011-08-24 00:21:34', '1', null, 'Lolita Cosplay Costume 14', '0', '0', null, '0', 'Lolita Cosplay Costume 14', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('28', 'Lolita-Cosplay-Costume-15', '2011-08-24 00:22:08', '2011-08-24 00:22:08', '1', null, 'Lolita Cosplay Costume 15', '0', '0', null, '0', 'Lolita Cosplay Costume 15', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('29', 'Polyester-Womens-Gothic-Dress-1', '2011-08-24 22:38:21', '2011-08-24 22:38:21', '1', null, 'Polyester Womens Gothic Dress 1', '0', '0', null, '0', 'Polyester Womens Gothic Dress 1', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('30', 'Polyester-Womens-Gothic-Dress-2', '2011-08-24 22:39:32', '2011-08-24 22:39:32', '1', null, 'Polyester Womens Gothic Dress 2', '0', '0', null, '0', 'Polyester Womens Gothic Dress 2', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('31', 'Polyester-Womens-Gothic-Dress-3', '2011-08-24 22:40:07', '2011-08-24 22:40:07', '1', null, 'Polyester Womens Gothic Dress 3', '0', '0', null, '0', 'Polyester Womens Gothic Dress 3', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('32', 'Polyester-Womens-Gothic-Dress-4', '2011-08-24 22:40:40', '2011-08-24 22:40:40', '1', null, 'Polyester Womens Gothic Dress 4', '0', '0', null, '0', 'Polyester Womens Gothic Dress 4', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('33', 'Polyester-Womens-Gothic-Dress-5', '2011-08-24 22:41:17', '2011-08-24 22:41:17', '1', null, 'Polyester Womens Gothic Dress 5', '0', '0', null, '0', 'Polyester Womens Gothic Dress 5', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('34', 'Polyester-Womens-Gothic-Dress-6', '2011-08-24 22:41:55', '2011-08-24 22:41:55', '1', null, 'Polyester Womens Gothic Dress 6', '0', '0', null, '0', 'Polyester Womens Gothic Dress 6', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('35', 'Polyester-Womens-Gothic-Dress-7', '2011-08-24 22:42:31', '2011-08-24 22:42:31', '1', null, 'Polyester Womens Gothic Dress 7', '0', '0', null, '0', 'Polyester Womens Gothic Dress 7', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('36', 'Polyester-Womens-Gothic-Dress-8', '2011-08-24 22:43:10', '2011-08-24 22:43:10', '1', null, 'Polyester Womens Gothic Dress 8', '0', '0', null, '0', 'Polyester Womens Gothic Dress 8', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('37', 'Polyester-Womens-Gothic-Dress-9', '2011-08-24 22:44:10', '2011-08-24 22:44:10', '1', null, 'Polyester Womens Gothic Dress 9', '0', '0', null, '0', 'Polyester Womens Gothic Dress 9', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('38', 'Polyester-Womens-Gothic-Dress-10', '2011-08-24 22:44:46', '2011-08-24 22:44:46', '1', null, 'Polyester Womens Gothic Dress 10', '0', '0', null, '0', 'Polyester Womens Gothic Dress 10', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('39', 'Men-T-shirt', '2011-08-25 01:24:33', '2011-08-25 17:29:44', '1', null, 'Men T-shirt', '0', '0', null, '0', 'Men\'s T-shirt', null, '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('40', 'DASASDA', '2011-09-05 22:19:27', '2011-09-05 22:24:20', '1', null, 'asdas', '0', '0', null, '0', 'asdas', 'adsasdasdasd', '0', '0', '1', '1', '29', '999', '77', '0');
INSERT INTO `shop_product` VALUES ('41', '23423423423423', '2011-09-05 22:28:19', '2011-09-05 23:46:23', '1', null, 'daD', '0', '0', null, '0', 'ADA', 'If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.If you are using the XFBML version of the Like button, users will always\n have the option to add a comment. If you are using the Iframe version \nof the button, users will have the option to comments if you are using \nthe \'standard\' layout with a width of at least 400 pixels. If users do \nadd a comment, the story published back to Facebook is given more \nprominence.', '0', '0', '1', '1', '30', '999', '999', '0');
INSERT INTO `shop_product` VALUES ('42', 'aDA', '2011-09-07 14:49:17', '2011-09-07 21:47:53', '1', null, 'dasdas', '0', '0', null, '0', 'asdas', 'dasdasdasdas<br>', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `shop_product` VALUES ('43', 'ascfasdazzz', '2011-09-07 23:29:07', '2011-09-08 00:34:07', '1', null, 'dasdas', '0', '0', null, '0', 'asdas', 'asdasd', '0', '0', '1', '1', '17', '2312312', '123121', '3');
INSERT INTO `shop_product` VALUES ('44', 'asdaaaaaaaa', '2011-09-08 17:31:49', '2011-09-08 21:37:45', '1', null, 'asdasd', '0', '0', null, '0', 'asda', 'asdasdasdasd<br>', '0', '0', '1', '1', '17', '0', '0', '8');
INSERT INTO `shop_product` VALUES ('45', 'dddddazzzzzz', '2011-09-08 22:42:35', '2011-09-08 22:42:35', '1', null, 'asdasd', '0', '0', null, '0', 'asda', 'asdasdasdasd<br>', '0', '0', '1', '1', '17', '0', '0', '8');
INSERT INTO `shop_product` VALUES ('46', 'dddddazzzzzzddddzxxx', '2011-09-08 22:43:08', '2011-09-08 22:43:08', '1', null, 'asdasd', '0', '0', null, '0', 'asda', 'asdasdasdasd<br>', '0', '0', '1', '1', '17', '0', '0', '8');
INSERT INTO `shop_product` VALUES ('47', 'Hello-spark', '2011-09-08 22:46:23', '2011-09-08 22:46:23', '1', null, 'Hello-spark', '0', '0', null, '0', 'Hello-spark', 'Hello-spark', '0', '0', '1', '1', '32', '66', '444', '0');
INSERT INTO `shop_product` VALUES ('48', 'asdas', '2011-09-08 22:49:12', '2011-09-08 22:49:12', '1', null, 'asasdasd', '0', '0', null, '0', 'asd', 'asdasdasd', '0', '0', '1', '1', '24', '222', '333', '6');
INSERT INTO `shop_product` VALUES ('49', 'asdaxzzzzz', '2011-09-08 22:50:28', '2011-09-08 22:50:28', '1', null, 'asasdasdadasdasd', '0', '0', null, '0', 'asd', 'asdasdasd', '0', '0', '1', '1', '24', '222', '333', '6');
INSERT INTO `shop_product` VALUES ('50', 'xcxcxczczxczxczxczx', '2011-09-08 22:50:35', '2011-09-08 22:50:35', '1', null, 'asasdasdadasdasdadasd', '0', '0', null, '0', 'asd', 'asdasdasd', '0', '0', '1', '1', '24', '222', '333', '6');

-- ----------------------------
-- Table structure for `shop_productoption`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productoption`;
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productoption
-- ----------------------------
INSERT INTO `shop_productoption` VALUES ('15', 'Color', null, null, 'asdasd', 'adasd', 'COLOR_SINGLE', '12');
INSERT INTO `shop_productoption` VALUES ('16', 'adsas', null, null, 'asdasd', 'asdasd', 'INPUT_TEXT', '12');
INSERT INTO `shop_productoption` VALUES ('17', 'asdasd', null, null, 'asdasd', 'asdasd', 'SINGLE_LIST', '12');
INSERT INTO `shop_productoption` VALUES ('18', 'Size', null, null, 'us2', null, 'SINGLE_LIST', '13');
INSERT INTO `shop_productoption` VALUES ('19', 'Dress Color', null, null, null, null, 'COLOR_SINGLE', '13');
INSERT INTO `shop_productoption` VALUES ('20', 'Qty', null, null, null, null, 'INPUT_TEXT', '13');
INSERT INTO `shop_productoption` VALUES ('21', 'New Option', null, null, null, null, 'MULTI_LIST', '13');
INSERT INTO `shop_productoption` VALUES ('22', 'Color', null, null, null, null, 'COLOR_SINGLE', '40');
INSERT INTO `shop_productoption` VALUES ('23', 'Size', null, null, null, null, 'SINGLE_LIST', '40');
INSERT INTO `shop_productoption` VALUES ('24', 'Qty', null, null, null, null, 'INPUT_TEXT', '40');
INSERT INTO `shop_productoption` VALUES ('25', 'Color', null, null, null, null, 'COLOR_SINGLE', '41');
INSERT INTO `shop_productoption` VALUES ('26', 'Size', null, null, null, null, 'SINGLE_LIST', '41');
INSERT INTO `shop_productoption` VALUES ('27', 'Qty', null, null, null, null, 'INPUT_TEXT', '41');
INSERT INTO `shop_productoption` VALUES ('28', 'Color', null, null, null, null, 'COLOR_SINGLE', '42');
INSERT INTO `shop_productoption` VALUES ('29', 'Size', null, null, null, null, 'SINGLE_LIST', '42');
INSERT INTO `shop_productoption` VALUES ('30', 'Qty', null, null, null, null, 'INPUT_TEXT', '42');
INSERT INTO `shop_productoption` VALUES ('31', 'Color', null, null, null, null, 'COLOR_SINGLE', '43');
INSERT INTO `shop_productoption` VALUES ('32', 'Size', null, null, null, null, 'SINGLE_LIST', '43');
INSERT INTO `shop_productoption` VALUES ('33', 'Qty', null, null, null, null, 'INPUT_TEXT', '43');
INSERT INTO `shop_productoption` VALUES ('34', 'Color', null, null, null, null, 'COLOR_SINGLE', '46');
INSERT INTO `shop_productoption` VALUES ('35', 'Size', null, null, null, null, 'SINGLE_LIST', '46');
INSERT INTO `shop_productoption` VALUES ('36', 'Qty', null, null, null, null, 'INPUT_TEXT', '46');
INSERT INTO `shop_productoption` VALUES ('37', 'Color', null, null, null, null, 'COLOR_SINGLE', '47');
INSERT INTO `shop_productoption` VALUES ('38', 'Size', null, null, null, null, 'SINGLE_LIST', '47');
INSERT INTO `shop_productoption` VALUES ('39', 'Qty', null, null, null, null, 'INPUT_TEXT', '47');
INSERT INTO `shop_productoption` VALUES ('40', 'Color', null, null, null, null, 'COLOR_SINGLE', '50');
INSERT INTO `shop_productoption` VALUES ('41', 'Size', null, null, null, null, 'SINGLE_LIST', '50');
INSERT INTO `shop_productoption` VALUES ('42', 'Qty', null, null, null, null, 'INPUT_TEXT', '50');

-- ----------------------------
-- Table structure for `shop_productoptionitem`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productoptionitem`;
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productoptionitem
-- ----------------------------
INSERT INTO `shop_productoptionitem` VALUES ('17', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '15');
INSERT INTO `shop_productoptionitem` VALUES ('18', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '15');
INSERT INTO `shop_productoptionitem` VALUES ('19', 'Item 1', null, null, null, null, null, null, '16');
INSERT INTO `shop_productoptionitem` VALUES ('20', 'asdas', null, null, null, null, 'asdasd', null, '17');
INSERT INTO `shop_productoptionitem` VALUES ('21', 'aazx', null, null, null, null, 'asdasd', null, '17');
INSERT INTO `shop_productoptionitem` VALUES ('22', 'US 2', null, null, null, null, 'asdas', null, '18');
INSERT INTO `shop_productoptionitem` VALUES ('23', 'US 3', null, null, null, null, 'sdasd', null, '18');
INSERT INTO `shop_productoptionitem` VALUES ('24', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('25', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('26', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('27', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('28', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('29', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '19');
INSERT INTO `shop_productoptionitem` VALUES ('30', 'Item 1', null, null, null, null, null, null, '20');
INSERT INTO `shop_productoptionitem` VALUES ('31', 'Item 1', null, null, null, null, null, null, '21');
INSERT INTO `shop_productoptionitem` VALUES ('32', 'New Item', null, null, null, null, null, null, '21');
INSERT INTO `shop_productoptionitem` VALUES ('33', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('34', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('35', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('36', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('37', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '22');
INSERT INTO `shop_productoptionitem` VALUES ('38', 'asdas', null, null, null, null, 'asdas', null, '23');
INSERT INTO `shop_productoptionitem` VALUES ('39', 'asdaaa', null, null, null, null, 'asdasd', null, '23');
INSERT INTO `shop_productoptionitem` VALUES ('40', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '25');
INSERT INTO `shop_productoptionitem` VALUES ('41', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '25');
INSERT INTO `shop_productoptionitem` VALUES ('42', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '25');
INSERT INTO `shop_productoptionitem` VALUES ('43', 'asdas', null, null, null, null, 'asdasd', null, '26');
INSERT INTO `shop_productoptionitem` VALUES ('44', 'aaaa', null, null, null, null, 'asdasdas', null, '26');
INSERT INTO `shop_productoptionitem` VALUES ('45', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('46', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('47', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('48', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('49', 'huntergreen', null, null, null, null, '#266364 #033534 #033534 #266364', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('50', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('51', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('52', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('53', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('54', 'blue', null, null, null, null, '#4074E7 #2E50A5 #2E50A5 #4074E7', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('55', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('56', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('57', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('58', 'gold', null, null, null, null, '#DCC181 #C5A272 #C5A272 #DCC181', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('59', 'black', null, null, null, null, '#4D4C4C #131313 #131313 #4D4C4C', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('60', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '28');
INSERT INTO `shop_productoptionitem` VALUES ('61', 'aa', null, null, null, null, 'aaa', null, '29');
INSERT INTO `shop_productoptionitem` VALUES ('62', 'asdas', null, null, null, null, 'asdasd', null, '29');
INSERT INTO `shop_productoptionitem` VALUES ('63', 'eeee', null, null, null, null, 'asdasdasd', null, '29');
INSERT INTO `shop_productoptionitem` VALUES ('64', 'champagne', null, null, null, null, '#E7B37A #CA9837 #CA9837 #E7B37A', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('65', 'daffodil', null, null, null, null, '#CFCA68 #C1B141 #C1B141 #CFCA68', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('66', 'silver', null, null, null, null, '#EBEBEB #CFCFCF #CFCFCF #EBEBEB', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('67', 'white', null, null, null, null, '#FFFFFF #D9D9D9 #D9D9D9 #FFFFFF', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('68', 'darknavy', null, null, null, null, '#647281 #1E2023 #1E2023 #647281', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('69', 'darkgreen', null, null, null, null, '#466025 #162121 #162121 #466025', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('70', 'browncoffee', null, null, null, null, '#BB9A76 #87643F #87643F #BB9A76', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('71', 'chocolate', null, null, null, null, '#946D44 #6B4F37 #6B4F37 #946D44', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('72', 'grape', null, null, null, null, '#715380 #563457 #563457 #715380', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('73', 'fuchsia', null, null, null, null, '#F24A78 #C8183F #C8183F #F24A78', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('74', 'ivory', null, null, null, null, '#FFFFFF #F7EED6 #F7EED6 #FFFFFF', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('75', 'burgundy', null, null, null, null, '#A43755 #551B29 #551B29 #A43755', null, '31');
INSERT INTO `shop_productoptionitem` VALUES ('76', 'asda', null, null, null, null, 'asdasd', null, '32');
INSERT INTO `shop_productoptionitem` VALUES ('77', 'Nesdss', null, null, null, null, 'assas', null, '32');
INSERT INTO `shop_productoptionitem` VALUES ('78', 'assas', null, null, null, null, 'asdasdas', null, '32');

-- ----------------------------
-- Table structure for `shop_productproperty`
-- ----------------------------
DROP TABLE IF EXISTS `shop_productproperty`;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productproperty
-- ----------------------------
INSERT INTO `shop_productproperty` VALUES ('13', 'das', null, null, 'asdasd', '12');
INSERT INTO `shop_productproperty` VALUES ('14', 'asdas', null, null, 'asdasd', '12');
INSERT INTO `shop_productproperty` VALUES ('15', '0011', null, null, 'iseswwaa', '13');
INSERT INTO `shop_productproperty` VALUES ('16', 'Gender ', null, null, 'unisex', '14');
INSERT INTO `shop_productproperty` VALUES ('17', 'asd', null, null, 'asdasdasd', '40');
INSERT INTO `shop_productproperty` VALUES ('18', 'asdas', null, null, 'asdasd', '40');
INSERT INTO `shop_productproperty` VALUES ('19', 'asd', null, null, 'asasdas', '41');
INSERT INTO `shop_productproperty` VALUES ('20', 'asdas', null, null, 'dasdas', '41');
INSERT INTO `shop_productproperty` VALUES ('21', 'asdas', null, null, 'asdasd', '43');
INSERT INTO `shop_productproperty` VALUES ('22', 'asdasd', null, null, 'asdasdas', '43');
INSERT INTO `shop_productproperty` VALUES ('23', 'asdasdas', null, null, 'dasdasdasdas', '43');
INSERT INTO `shop_productproperty` VALUES ('24', 'asdasdas', null, null, 'asdasdasd', '43');
INSERT INTO `shop_productproperty` VALUES ('25', 'asdas', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('26', 'asdasd', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('27', 'asdas', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('28', 'asdas', null, null, 'asdasdas', '46');
INSERT INTO `shop_productproperty` VALUES ('29', 'asdasd', null, null, 'asdasd', '46');
INSERT INTO `shop_productproperty` VALUES ('30', 'asdas', null, null, 'asdasdas', '47');
INSERT INTO `shop_productproperty` VALUES ('31', 'adas', null, null, 'dasdasdasdas', '50');

-- ----------------------------
-- Table structure for `shop_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_category`;
CREATE TABLE `shop_product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `FK811F00B79F630A0D` (`category_id`),
  KEY `FK811F00B7582107E7` (`product_id`),
  CONSTRAINT `FK811F00B7582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK811F00B79F630A0D` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_category
-- ----------------------------
INSERT INTO `shop_product_category` VALUES ('12', '4');
INSERT INTO `shop_product_category` VALUES ('12', '8');
INSERT INTO `shop_product_category` VALUES ('13', '9');
INSERT INTO `shop_product_category` VALUES ('13', '4');
INSERT INTO `shop_product_category` VALUES ('14', '3');
INSERT INTO `shop_product_category` VALUES ('15', '3');
INSERT INTO `shop_product_category` VALUES ('16', '3');
INSERT INTO `shop_product_category` VALUES ('17', '3');
INSERT INTO `shop_product_category` VALUES ('18', '3');
INSERT INTO `shop_product_category` VALUES ('19', '3');
INSERT INTO `shop_product_category` VALUES ('20', '3');
INSERT INTO `shop_product_category` VALUES ('21', '3');
INSERT INTO `shop_product_category` VALUES ('22', '3');
INSERT INTO `shop_product_category` VALUES ('24', '3');
INSERT INTO `shop_product_category` VALUES ('29', '3');
INSERT INTO `shop_product_category` VALUES ('30', '3');
INSERT INTO `shop_product_category` VALUES ('31', '3');
INSERT INTO `shop_product_category` VALUES ('32', '3');
INSERT INTO `shop_product_category` VALUES ('33', '3');
INSERT INTO `shop_product_category` VALUES ('23', '3');
INSERT INTO `shop_product_category` VALUES ('27', '3');
INSERT INTO `shop_product_category` VALUES ('28', '3');
INSERT INTO `shop_product_category` VALUES ('26', '3');
INSERT INTO `shop_product_category` VALUES ('25', '3');
INSERT INTO `shop_product_category` VALUES ('34', '3');
INSERT INTO `shop_product_category` VALUES ('37', '3');
INSERT INTO `shop_product_category` VALUES ('36', '3');
INSERT INTO `shop_product_category` VALUES ('35', '3');
INSERT INTO `shop_product_category` VALUES ('38', '3');
INSERT INTO `shop_product_category` VALUES ('41', '5');
INSERT INTO `shop_product_category` VALUES ('40', '8');
INSERT INTO `shop_product_category` VALUES ('39', '57');
INSERT INTO `shop_product_category` VALUES ('42', '5');
INSERT INTO `shop_product_category` VALUES ('43', '5');
INSERT INTO `shop_product_category` VALUES ('44', '7');
INSERT INTO `shop_product_category` VALUES ('45', '7');
INSERT INTO `shop_product_category` VALUES ('46', '7');
INSERT INTO `shop_product_category` VALUES ('47', '5');
INSERT INTO `shop_product_category` VALUES ('48', '5');
INSERT INTO `shop_product_category` VALUES ('49', '5');
INSERT INTO `shop_product_category` VALUES ('50', '5');

-- ----------------------------
-- Table structure for `shop_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_image`;
CREATE TABLE `shop_product_image` (
  `product_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  KEY `FK6EA19862D0E15FA7` (`image_id`),
  KEY `FK6EA19862582107E7` (`product_id`),
  CONSTRAINT `FK6EA19862582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK6EA19862D0E15FA7` FOREIGN KEY (`image_id`) REFERENCES `shop_image` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_image
-- ----------------------------
INSERT INTO `shop_product_image` VALUES ('12', '2');
INSERT INTO `shop_product_image` VALUES ('13', '5');
INSERT INTO `shop_product_image` VALUES ('13', '4');
INSERT INTO `shop_product_image` VALUES ('13', '3');
INSERT INTO `shop_product_image` VALUES ('13', '2');
INSERT INTO `shop_product_image` VALUES ('13', '1');
INSERT INTO `shop_product_image` VALUES ('14', '14');
INSERT INTO `shop_product_image` VALUES ('15', '21');
INSERT INTO `shop_product_image` VALUES ('16', '20');
INSERT INTO `shop_product_image` VALUES ('17', '19');
INSERT INTO `shop_product_image` VALUES ('18', '18');
INSERT INTO `shop_product_image` VALUES ('19', '17');
INSERT INTO `shop_product_image` VALUES ('20', '16');
INSERT INTO `shop_product_image` VALUES ('21', '15');
INSERT INTO `shop_product_image` VALUES ('22', '21');
INSERT INTO `shop_product_image` VALUES ('24', '19');
INSERT INTO `shop_product_image` VALUES ('29', '30');
INSERT INTO `shop_product_image` VALUES ('30', '29');
INSERT INTO `shop_product_image` VALUES ('31', '28');
INSERT INTO `shop_product_image` VALUES ('32', '27');
INSERT INTO `shop_product_image` VALUES ('33', '26');
INSERT INTO `shop_product_image` VALUES ('23', '20');
INSERT INTO `shop_product_image` VALUES ('27', '16');
INSERT INTO `shop_product_image` VALUES ('28', '15');
INSERT INTO `shop_product_image` VALUES ('26', '17');
INSERT INTO `shop_product_image` VALUES ('25', '18');
INSERT INTO `shop_product_image` VALUES ('34', '25');
INSERT INTO `shop_product_image` VALUES ('37', '22');
INSERT INTO `shop_product_image` VALUES ('36', '23');
INSERT INTO `shop_product_image` VALUES ('35', '24');
INSERT INTO `shop_product_image` VALUES ('38', '28');
INSERT INTO `shop_product_image` VALUES ('41', '34');
INSERT INTO `shop_product_image` VALUES ('41', '32');
INSERT INTO `shop_product_image` VALUES ('41', '33');
INSERT INTO `shop_product_image` VALUES ('41', '31');
INSERT INTO `shop_product_image` VALUES ('41', '30');
INSERT INTO `shop_product_image` VALUES ('40', '34');
INSERT INTO `shop_product_image` VALUES ('40', '32');
INSERT INTO `shop_product_image` VALUES ('40', '31');
INSERT INTO `shop_product_image` VALUES ('40', '30');
INSERT INTO `shop_product_image` VALUES ('39', '28');
INSERT INTO `shop_product_image` VALUES ('39', '29');
INSERT INTO `shop_product_image` VALUES ('39', '26');
INSERT INTO `shop_product_image` VALUES ('39', '25');
INSERT INTO `shop_product_image` VALUES ('39', '24');
INSERT INTO `shop_product_image` VALUES ('42', '34');
INSERT INTO `shop_product_image` VALUES ('42', '33');
INSERT INTO `shop_product_image` VALUES ('42', '32');
INSERT INTO `shop_product_image` VALUES ('42', '31');
INSERT INTO `shop_product_image` VALUES ('43', '34');
INSERT INTO `shop_product_image` VALUES ('43', '33');
INSERT INTO `shop_product_image` VALUES ('43', '32');
INSERT INTO `shop_product_image` VALUES ('43', '31');
INSERT INTO `shop_product_image` VALUES ('44', '34');
INSERT INTO `shop_product_image` VALUES ('44', '31');
INSERT INTO `shop_product_image` VALUES ('44', '33');
INSERT INTO `shop_product_image` VALUES ('44', '32');
INSERT INTO `shop_product_image` VALUES ('44', '30');
INSERT INTO `shop_product_image` VALUES ('45', '34');
INSERT INTO `shop_product_image` VALUES ('45', '31');
INSERT INTO `shop_product_image` VALUES ('45', '33');
INSERT INTO `shop_product_image` VALUES ('45', '32');
INSERT INTO `shop_product_image` VALUES ('45', '30');
INSERT INTO `shop_product_image` VALUES ('46', '34');
INSERT INTO `shop_product_image` VALUES ('46', '31');
INSERT INTO `shop_product_image` VALUES ('46', '33');
INSERT INTO `shop_product_image` VALUES ('46', '32');
INSERT INTO `shop_product_image` VALUES ('46', '30');
INSERT INTO `shop_product_image` VALUES ('47', '34');
INSERT INTO `shop_product_image` VALUES ('47', '33');
INSERT INTO `shop_product_image` VALUES ('47', '32');
INSERT INTO `shop_product_image` VALUES ('47', '31');
INSERT INTO `shop_product_image` VALUES ('47', '30');
INSERT INTO `shop_product_image` VALUES ('47', '29');
INSERT INTO `shop_product_image` VALUES ('48', '34');
INSERT INTO `shop_product_image` VALUES ('48', '33');
INSERT INTO `shop_product_image` VALUES ('48', '32');
INSERT INTO `shop_product_image` VALUES ('48', '31');
INSERT INTO `shop_product_image` VALUES ('48', '30');
INSERT INTO `shop_product_image` VALUES ('49', '34');
INSERT INTO `shop_product_image` VALUES ('49', '33');
INSERT INTO `shop_product_image` VALUES ('49', '32');
INSERT INTO `shop_product_image` VALUES ('49', '31');
INSERT INTO `shop_product_image` VALUES ('49', '30');
INSERT INTO `shop_product_image` VALUES ('50', '34');
INSERT INTO `shop_product_image` VALUES ('50', '33');
INSERT INTO `shop_product_image` VALUES ('50', '32');
INSERT INTO `shop_product_image` VALUES ('50', '31');
INSERT INTO `shop_product_image` VALUES ('50', '30');

-- ----------------------------
-- Table structure for `shop_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `shop_promotion`;
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

-- ----------------------------
-- Records of shop_promotion
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_searchhistory`
-- ----------------------------
DROP TABLE IF EXISTS `shop_searchhistory`;
CREATE TABLE `shop_searchhistory` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT NULL,
  `hit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_searchhistory
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_site`
-- ----------------------------
DROP TABLE IF EXISTS `shop_site`;
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

-- ----------------------------
-- Records of shop_site
-- ----------------------------
INSERT INTO `shop_site` VALUES ('1', '127.0.0.1:8888', null, '/image', '/', 'www', '17', 'Test Side Bar', 'Test footer<br>', '19', '18', 'http://tv.sohu.com', 'http://www.google.com');

-- ----------------------------
-- Table structure for `shop_tabproduct`
-- ----------------------------
DROP TABLE IF EXISTS `shop_tabproduct`;
CREATE TABLE `shop_tabproduct` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_tabproduct
-- ----------------------------
INSERT INTO `shop_tabproduct` VALUES ('16', 'DEFAUL_TOP_SELLING', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('17', 'Hot', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('18', 'adasdasdas', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('19', 'Day Dresses', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('24', 'asdasd', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('25', 'asdfasfa asdasd', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('26', 'asdasd', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('27', '\"\"', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('28', null, '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('29', null, '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('30', null, '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('31', 'asdasdasds', '2011-09-07');
INSERT INTO `shop_tabproduct` VALUES ('32', 'sadasdas', '2011-09-07');

-- ----------------------------
-- Table structure for `shop_tabselling`
-- ----------------------------
DROP TABLE IF EXISTS `shop_tabselling`;
CREATE TABLE `shop_tabselling` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_tabselling
-- ----------------------------
INSERT INTO `shop_tabselling` VALUES ('1', null);
INSERT INTO `shop_tabselling` VALUES ('2', null);
INSERT INTO `shop_tabselling` VALUES ('3', 'DEFAULF_TAB_SELLING');

-- ----------------------------
-- Table structure for `shop_user`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `shop_user` VALUES ('2', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `shop_user` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `shop_user` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `shop_user` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `shop_user` VALUES ('6', null, null, null, null, null, null, 'szhu.spark@gmail.com', null, null, 'adminadmin', null, null);

-- ----------------------------
-- Table structure for `shop_useroption`
-- ----------------------------
DROP TABLE IF EXISTS `shop_useroption`;
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

-- ----------------------------
-- Records of shop_useroption
-- ----------------------------

-- ----------------------------
-- Table structure for `tab_product`
-- ----------------------------
DROP TABLE IF EXISTS `tab_product`;
CREATE TABLE `tab_product` (
  `tab_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  KEY `FK43C4CE45B0F999F2` (`tab_id`),
  KEY `FK43C4CE45582107E7` (`product_id`),
  CONSTRAINT `FK43C4CE45582107E7` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`ID`),
  CONSTRAINT `FK43C4CE45B0F999F2` FOREIGN KEY (`tab_id`) REFERENCES `shop_tabproduct` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_product
-- ----------------------------
INSERT INTO `tab_product` VALUES ('17', '39');
INSERT INTO `tab_product` VALUES ('17', '38');
INSERT INTO `tab_product` VALUES ('17', '37');
INSERT INTO `tab_product` VALUES ('17', '36');
INSERT INTO `tab_product` VALUES ('18', '39');
INSERT INTO `tab_product` VALUES ('18', '38');
INSERT INTO `tab_product` VALUES ('18', '37');
INSERT INTO `tab_product` VALUES ('18', '36');
INSERT INTO `tab_product` VALUES ('24', '38');
INSERT INTO `tab_product` VALUES ('24', '39');
INSERT INTO `tab_product` VALUES ('24', '37');
INSERT INTO `tab_product` VALUES ('24', '36');
INSERT INTO `tab_product` VALUES ('16', '39');
INSERT INTO `tab_product` VALUES ('16', '38');
INSERT INTO `tab_product` VALUES ('16', '37');
INSERT INTO `tab_product` VALUES ('16', '36');
INSERT INTO `tab_product` VALUES ('19', '39');
INSERT INTO `tab_product` VALUES ('19', '38');
INSERT INTO `tab_product` VALUES ('19', '37');
INSERT INTO `tab_product` VALUES ('19', '36');
INSERT INTO `tab_product` VALUES ('25', '27');
INSERT INTO `tab_product` VALUES ('25', '28');
INSERT INTO `tab_product` VALUES ('25', '26');
INSERT INTO `tab_product` VALUES ('25', '25');
INSERT INTO `tab_product` VALUES ('25', '39');
INSERT INTO `tab_product` VALUES ('25', '38');
INSERT INTO `tab_product` VALUES ('26', '37');
INSERT INTO `tab_product` VALUES ('26', '39');
INSERT INTO `tab_product` VALUES ('26', '38');
INSERT INTO `tab_product` VALUES ('26', '36');
INSERT INTO `tab_product` VALUES ('26', '35');
INSERT INTO `tab_product` VALUES ('26', '34');
INSERT INTO `tab_product` VALUES ('27', '39');
INSERT INTO `tab_product` VALUES ('27', '38');
INSERT INTO `tab_product` VALUES ('27', '37');
INSERT INTO `tab_product` VALUES ('27', '36');
INSERT INTO `tab_product` VALUES ('27', '35');
INSERT INTO `tab_product` VALUES ('28', '39');
INSERT INTO `tab_product` VALUES ('28', '38');
INSERT INTO `tab_product` VALUES ('28', '37');
INSERT INTO `tab_product` VALUES ('28', '36');
INSERT INTO `tab_product` VALUES ('28', '35');
INSERT INTO `tab_product` VALUES ('28', '34');
INSERT INTO `tab_product` VALUES ('29', '38');
INSERT INTO `tab_product` VALUES ('29', '36');
INSERT INTO `tab_product` VALUES ('29', '37');
INSERT INTO `tab_product` VALUES ('30', '39');
INSERT INTO `tab_product` VALUES ('30', '40');
INSERT INTO `tab_product` VALUES ('30', '38');
INSERT INTO `tab_product` VALUES ('30', '37');
INSERT INTO `tab_product` VALUES ('30', '36');
INSERT INTO `tab_product` VALUES ('30', '35');
INSERT INTO `tab_product` VALUES ('31', '42');
INSERT INTO `tab_product` VALUES ('31', '41');
INSERT INTO `tab_product` VALUES ('31', '40');
INSERT INTO `tab_product` VALUES ('31', '39');
INSERT INTO `tab_product` VALUES ('31', '38');
INSERT INTO `tab_product` VALUES ('32', '42');
INSERT INTO `tab_product` VALUES ('32', '41');
INSERT INTO `tab_product` VALUES ('32', '40');
INSERT INTO `tab_product` VALUES ('32', '39');

-- ----------------------------
-- Table structure for `tab_product_selling`
-- ----------------------------
DROP TABLE IF EXISTS `tab_product_selling`;
CREATE TABLE `tab_product_selling` (
  `selling_id` bigint(20) NOT NULL,
  `t_product_id` bigint(20) NOT NULL,
  KEY `FK4A030F5687682EB8` (`selling_id`),
  KEY `FK4A030F56582107E7` (`t_product_id`),
  KEY `FK4A030F56B5C9B03` (`t_product_id`),
  CONSTRAINT `FK4A030F56582107E7` FOREIGN KEY (`t_product_id`) REFERENCES `shop_tabproduct` (`ID`),
  CONSTRAINT `FK4A030F5687682EB8` FOREIGN KEY (`selling_id`) REFERENCES `shop_tabselling` (`ID`),
  CONSTRAINT `FK4A030F56B5C9B03` FOREIGN KEY (`t_product_id`) REFERENCES `shop_tabproduct` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_product_selling
-- ----------------------------
INSERT INTO `tab_product_selling` VALUES ('1', '17');
INSERT INTO `tab_product_selling` VALUES ('2', '18');
INSERT INTO `tab_product_selling` VALUES ('3', '19');
INSERT INTO `tab_product_selling` VALUES ('3', '25');
INSERT INTO `tab_product_selling` VALUES ('3', '26');
