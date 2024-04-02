-- --------------------------------------------------------------------------------
-- 
-- @version: cdp2.sql Feb 22, 2016 12:27 gewa
-- @package CarDealerPro v.2.00
-- @author wojoscripts.com.
-- @copyright 2011
-- 
-- --------------------------------------------------------------------------------
-- Host: localhost
-- Database: cdp2
-- Time: Feb 22, 2016-12:27
-- MySQL version: 5.6.17
-- PHP version: 5.5.12
-- --------------------------------------------------------------------------------

#
# Database: `cdp2`
#


-- --------------------------------------------------
# -- Table structure for table `activity`
-- --------------------------------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(11) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `lid` bigint(11) NOT NULL DEFAULT '0' COMMENT 'Listing ID',
  `title` varchar(200) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `activity`
-- --------------------------------------------------

INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('2', '1', 'like', '3', 'BMW X3', '', '', '', '2015-03-25 06:12:46');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('4', '1', 'like', '2', 'Mazda 3 S', '', '', '', '2015-03-25 06:15:57');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('7', '1', 'added', '4', 'Honda Civic Si', '', '', '', '2015-05-27 07:07:58');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('8', '1', 'login', '1', '', '', '', '', '2015-07-22 22:49:32');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('9', '1', 'membership', '1', 'Platinum', '', '', '', '2015-04-06 22:50:28');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('10', '1', 'login', '1', 'hello', '', '', '', '2015-10-10 12:05:47');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('11', '1', 'login', '0', '', '', '', '', '2016-02-18 15:13:05');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('12', '1', 'login', '0', '', '', '', '', '2016-02-19 11:27:47');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('13', '1', 'login', '0', '', '', '', '', '2016-02-19 14:08:10');
INSERT INTO `activity` (`id`, `user_id`, `type`, `lid`, `title`, `username`, `fname`, `lname`, `created`) VALUES ('14', '1', 'login', '0', '', '', '', '', '2016-02-19 15:10:40');


-- --------------------------------------------------
# -- Table structure for table `admins`
-- --------------------------------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `salt` varchar(25) NOT NULL DEFAULT '0',
  `hash` varchar(70) NOT NULL DEFAULT '0',
  `about` text,
  `type` enum('owner','admin','editor','manager') NOT NULL DEFAULT 'admin',
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar` varchar(60) DEFAULT NULL,
  `userlevel` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('y','n','b','t') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `admins`
-- --------------------------------------------------

INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('1', 'admin', 'Web', 'Master', 'webmaster@mail.com', 'fe80::858c:271d:bf0:3cda', 'yBVF2MC3oEVnrToP0knSa', '$2a$10$yBVF2MC3oEVnrToP0knSa..XrKuh8VGlJiyTw65jNW/vcTmkOOj9C', '', 'owner', '2016-02-21 21:59:36', '', '9', '2014-10-20 20:43:04', 'y');
INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('2', 'peter', 'Peter', 'Jackson', 'peter@mail.com', '', '#gG(%', '0', '', 'admin', '0000-00-00 00:00:00', '', '8', '2014-06-01 22:21:40', 'y');
INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('3', 'tim', 'Tim', 'Collins', 'tim@mail.com', '', '#gG(%', '0', '', 'editor', '0000-00-00 00:00:00', '', '7', '2014-03-01 22:21:43', 'y');
INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('4', 'frank', 'Frank', 'Jarvis', 'frank@mail.com', '', '#gG(%', '0', '', 'manager', '0000-00-00 00:00:00', '', '5', '2014-01-01 22:21:46', 'y');
INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('5', 'marshal', 'Marshal', 'Kent', 'marshal@mail.com', '', '#gG(%', '0', '&lt;p&gt;&lt;/p&gt;', 'admin', '0000-00-00 00:00:00', '', '8', '2014-01-01 22:21:50', 'y');
INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('6', 'mike', 'Mike', 'Dawson', 'mike@mail.com', '127.0.0.1', 'D9J1bFjveoPD30SFOJFEW', '$2a$10$D9J1bFjveoPD30SFOJFEW.AOtK.CkVXMDvSkHQW8U.HlWtvcYNXfe', '&lt;p&gt;&lt;/p&gt;', 'editor', '2014-11-03 10:19:56', '', '7', '2014-05-01 22:21:54', 'y');
INSERT INTO `admins` (`id`, `username`, `fname`, `lname`, `email`, `lastip`, `salt`, `hash`, `about`, `type`, `last_active`, `avatar`, `userlevel`, `created`, `active`) VALUES ('7', 'alex', 'Alex', 'Kuzmanovic', 'alex.kuzmanovic@gmail.com', '', 'Cbslli2V.34q41o5dkSKB', '$2a$10$Cbslli2V.34q41o5dkSKB.3GkDgjY1.TvQfb1/dUalSM/sC7HG5rK', '', 'admin', '0000-00-00 00:00:00', '', '8', '2014-11-27 11:31:46', 'y');


-- --------------------------------------------------
# -- Table structure for table `banlist`
-- --------------------------------------------------
DROP TABLE IF EXISTS `banlist`;
CREATE TABLE `banlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('IP','Email') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'IP',
  `comment` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ban_ip` (`item`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------
# Dumping data for table `banlist`
-- --------------------------------------------------

INSERT INTO `banlist` (`id`, `item`, `type`, `comment`) VALUES ('1', 'me@mail.com', 'Email', 'Constant spam from this email address');
INSERT INTO `banlist` (`id`, `item`, `type`, `comment`) VALUES ('2', '192.168.222.1', 'IP', 'Constant spam from this IP address');


-- --------------------------------------------------
# -- Table structure for table `cart`
-- --------------------------------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'user id',
  `mid` int(11) NOT NULL DEFAULT '0' COMMENT 'membership id',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'coupon id',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `totaltax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `originalprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `totalprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `cart`
-- --------------------------------------------------

INSERT INTO `cart` (`uid`, `mid`, `cid`, `tax`, `totaltax`, `coupon`, `total`, `originalprice`, `totalprice`, `created`) VALUES ('1', '2', '0', '0.13', '3.90', '0.00', '29.99', '29.99', '33.89', '2016-02-19 18:13:47');


-- --------------------------------------------------
# -- Table structure for table `categories`
-- --------------------------------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `categories`
-- --------------------------------------------------

INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('1', 'Wagon', 'wagon', 'wagon.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('2', 'Luxury Car', 'luxury-car', 'luxury-car.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('3', 'Sports Car', 'sports-car', 'sports-car.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('4', 'Sport Utility Vehicle', 'sport-utility-vehicle', 'sport-utility-vehicle.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('5', 'Van', 'van', 'van.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('6', 'Pickup Truck', 'pickup-truck', 'pickup-truck.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('7', 'Coupe', 'coupe', 'coupe.png');
INSERT INTO `categories` (`id`, `name`, `slug`, `image`) VALUES ('8', 'Sedan', 'sedan', 'sedan.png');


-- --------------------------------------------------
# -- Table structure for table `conditions`
-- --------------------------------------------------
DROP TABLE IF EXISTS `conditions`;
CREATE TABLE `conditions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `conditions`
-- --------------------------------------------------

INSERT INTO `conditions` (`id`, `name`) VALUES ('1', 'New');
INSERT INTO `conditions` (`id`, `name`) VALUES ('2', 'Used');


-- --------------------------------------------------
# -- Table structure for table `countries`
-- --------------------------------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` smallint(6) DEFAULT NULL,
  `abbr` varchar(6) DEFAULT NULL,
  `name` varchar(210) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `vat` decimal(7,0) DEFAULT NULL,
  `sorting` smallint(6) DEFAULT NULL,
  KEY `idx` (`abbr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `countries`
-- --------------------------------------------------

INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('1', 'AF', 'Afghanistan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('2', 'AL', 'Albania', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('3', 'DZ', 'Algeria', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('4', 'AS', 'American Samoa', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('5', 'AD', 'Andorra', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('6', 'AO', 'Angola', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('7', 'AI', 'Anguilla', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('8', 'AQ', 'Antarctica', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('9', 'AG', 'Antigua and Barbuda', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('10', 'AR', 'Argentina', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('11', 'AM', 'Armenia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('12', 'AW', 'Aruba', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('13', 'AU', 'Australia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('14', 'AT', 'Austria', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('15', 'AZ', 'Azerbaijan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('16', 'BS', 'Bahamas', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('17', 'BH', 'Bahrain', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('18', 'BD', 'Bangladesh', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('19', 'BB', 'Barbados', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('20', 'BY', 'Belarus', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('21', 'BE', 'Belgium', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('22', 'BZ', 'Belize', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('23', 'BJ', 'Benin', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('24', 'BM', 'Bermuda', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('25', 'BT', 'Bhutan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('26', 'BO', 'Bolivia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('27', 'BA', 'Bosnia and Herzegowina', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('28', 'BW', 'Botswana', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('29', 'BV', 'Bouvet Island', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('30', 'BR', 'Brazil', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('31', 'IO', 'British Indian Ocean Territory', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('32', 'VG', 'British Virgin Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('33', 'BN', 'Brunei Darussalam', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('34', 'BG', 'Bulgaria', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('35', 'BF', 'Burkina Faso', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('36', 'BI', 'Burundi', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('37', 'KH', 'Cambodia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('38', 'CM', 'Cameroon', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('39', 'CA', 'Canada', '1', '1', '13', '1000');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('40', 'CV', 'Cape Verde', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('41', 'KY', 'Cayman Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('42', 'CF', 'Central African Republic', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('43', 'TD', 'Chad', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('44', 'CL', 'Chile', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('45', 'CN', 'China', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('46', 'CX', 'Christmas Island', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('47', 'CC', 'Cocos (Keeling) Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('48', 'CO', 'Colombia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('49', 'KM', 'Comoros', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('50', 'CG', 'Congo', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('51', 'CK', 'Cook Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('52', 'CR', 'Costa Rica', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('53', 'CI', 'Cote D&#39;ivoire', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('54', 'HR', 'Croatia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('55', 'CU', 'Cuba', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('56', 'CY', 'Cyprus', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('57', 'CZ', 'Czech Republic', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('58', 'DK', 'Denmark', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('59', 'DJ', 'Djibouti', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('60', 'DM', 'Dominica', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('61', 'DO', 'Dominican Republic', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('62', 'TP', 'East Timor', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('63', 'EC', 'Ecuador', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('64', 'EG', 'Egypt', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('65', 'SV', 'El Salvador', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('66', 'GQ', 'Equatorial Guinea', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('67', 'ER', 'Eritrea', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('68', 'EE', 'Estonia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('69', 'ET', 'Ethiopia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('70', 'FK', 'Falkland Islands (Malvinas)', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('71', 'FO', 'Faroe Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('72', 'FJ', 'Fiji', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('73', 'FI', 'Finland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('74', 'FR', 'France', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('75', 'GF', 'French Guiana', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('76', 'PF', 'French Polynesia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('77', 'TF', 'French Southern Territories', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('78', 'GA', 'Gabon', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('79', 'GM', 'Gambia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('80', 'GE', 'Georgia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('81', 'DE', 'Germany', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('82', 'GH', 'Ghana', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('83', 'GI', 'Gibraltar', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('84', 'GR', 'Greece', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('85', 'GL', 'Greenland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('86', 'GD', 'Grenada', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('87', 'GP', 'Guadeloupe', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('88', 'GU', 'Guam', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('89', 'GT', 'Guatemala', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('90', 'GN', 'Guinea', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('91', 'GW', 'Guinea-Bissau', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('92', 'GY', 'Guyana', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('93', 'HT', 'Haiti', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('94', 'HM', 'Heard and McDonald Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('95', 'HN', 'Honduras', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('96', 'HK', 'Hong Kong', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('97', 'HU', 'Hungary', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('98', 'IS', 'Iceland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('99', 'IN', 'India', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('100', 'ID', 'Indonesia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('101', 'IQ', 'Iraq', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('102', 'IE', 'Ireland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('103', 'IR', 'Islamic Republic of Iran', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('104', 'IL', 'Israel', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('105', 'IT', 'Italy', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('106', 'JM', 'Jamaica', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('107', 'JP', 'Japan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('108', 'JO', 'Jordan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('109', 'KZ', 'Kazakhstan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('110', 'KE', 'Kenya', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('111', 'KI', 'Kiribati', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('112', 'KP', 'Korea, Dem. Peoples Rep of', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('113', 'KR', 'Korea, Republic of', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('114', 'KW', 'Kuwait', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('115', 'KG', 'Kyrgyzstan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('116', 'LA', 'Laos', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('117', 'LV', 'Latvia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('118', 'LB', 'Lebanon', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('119', 'LS', 'Lesotho', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('120', 'LR', 'Liberia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('121', 'LY', 'Libyan Arab Jamahiriya', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('122', 'LI', 'Liechtenstein', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('123', 'LT', 'Lithuania', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('124', 'LU', 'Luxembourg', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('125', 'MO', 'Macau', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('126', 'MK', 'Macedonia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('127', 'MG', 'Madagascar', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('128', 'MW', 'Malawi', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('129', 'MY', 'Malaysia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('130', 'MV', 'Maldives', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('131', 'ML', 'Mali', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('132', 'MT', 'Malta', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('133', 'MH', 'Marshall Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('134', 'MQ', 'Martinique', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('135', 'MR', 'Mauritania', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('136', 'MU', 'Mauritius', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('137', 'YT', 'Mayotte', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('138', 'MX', 'Mexico', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('139', 'FM', 'Micronesia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('140', 'MD', 'Moldova, Republic of', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('141', 'MC', 'Monaco', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('142', 'MN', 'Mongolia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('143', 'MS', 'Montserrat', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('144', 'MA', 'Morocco', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('145', 'MZ', 'Mozambique', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('146', 'MM', 'Myanmar', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('147', 'NA', 'Namibia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('148', 'NR', 'Nauru', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('149', 'NP', 'Nepal', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('150', 'NL', 'Netherlands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('151', 'AN', 'Netherlands Antilles', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('152', 'NC', 'New Caledonia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('153', 'NZ', 'New Zealand', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('154', 'NI', 'Nicaragua', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('155', 'NE', 'Niger', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('156', 'NG', 'Nigeria', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('157', 'NU', 'Niue', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('158', 'NF', 'Norfolk Island', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('159', 'MP', 'Northern Mariana Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('160', 'NO', 'Norway', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('161', 'OM', 'Oman', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('162', 'PK', 'Pakistan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('163', 'PW', 'Palau', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('164', 'PA', 'Panama', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('165', 'PG', 'Papua New Guinea', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('166', 'PY', 'Paraguay', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('167', 'PE', 'Peru', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('168', 'PH', 'Philippines', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('169', 'PN', 'Pitcairn', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('170', 'PL', 'Poland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('171', 'PT', 'Portugal', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('172', 'PR', 'Puerto Rico', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('173', 'QA', 'Qatar', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('174', 'RE', 'Reunion', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('175', 'RO', 'Romania', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('176', 'RU', 'Russian Federation', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('177', 'RW', 'Rwanda', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('178', 'LC', 'Saint Lucia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('179', 'WS', 'Samoa', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('180', 'SM', 'San Marino', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('181', 'ST', 'Sao Tome and Principe', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('182', 'SA', 'Saudi Arabia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('183', 'SN', 'Senegal', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('184', 'RS', 'Serbia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('185', 'SC', 'Seychelles', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('186', 'SL', 'Sierra Leone', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('187', 'SG', 'Singapore', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('188', 'SK', 'Slovakia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('189', 'SI', 'Slovenia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('190', 'SB', 'Solomon Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('191', 'SO', 'Somalia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('192', 'ZA', 'South Africa', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('193', 'ES', 'Spain', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('194', 'LK', 'Sri Lanka', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('195', 'SH', 'St. Helena', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('196', 'KN', 'St. Kitts and Nevis', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('197', 'PM', 'St. Pierre and Miquelon', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('198', 'VC', 'St. Vincent and the Grenadines', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('199', 'SD', 'Sudan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('200', 'SR', 'Suriname', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('201', 'SJ', 'Svalbard and Jan Mayen Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('202', 'SZ', 'Swaziland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('203', 'SE', 'Sweden', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('204', 'CH', 'Switzerland', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('205', 'SY', 'Syrian Arab Republic', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('206', 'TW', 'Taiwan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('207', 'TJ', 'Tajikistan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('208', 'TZ', 'Tanzania, United Republic of', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('209', 'TH', 'Thailand', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('210', 'TG', 'Togo', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('211', 'TK', 'Tokelau', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('212', 'TO', 'Tonga', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('213', 'TT', 'Trinidad and Tobago', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('214', 'TN', 'Tunisia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('215', 'TR', 'Turkey', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('216', 'TM', 'Turkmenistan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('217', 'TC', 'Turks and Caicos Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('218', 'TV', 'Tuvalu', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('219', 'UG', 'Uganda', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('220', 'UA', 'Ukraine', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('221', 'AE', 'United Arab Emirates', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('222', 'GB', 'United Kingdom (GB)', '1', '', '23', '999');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('224', 'US', 'United States', '1', '', '8', '998');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('225', 'VI', 'United States Virgin Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('226', 'UY', 'Uruguay', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('227', 'UZ', 'Uzbekistan', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('228', 'VU', 'Vanuatu', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('229', 'VA', 'Vatican City State', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('230', 'VE', 'Venezuela', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('231', 'VN', 'Vietnam', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('232', 'WF', 'Wallis And Futuna Islands', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('233', 'EH', 'Western Sahara', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('234', 'YE', 'Yemen', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('235', 'ZR', 'Zaire', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('236', 'ZM', 'Zambia', '1', '', '0', '0');
INSERT INTO `countries` (`id`, `abbr`, `name`, `active`, `home`, `vat`, `sorting`) VALUES ('237', 'ZW', 'Zimbabwe', '1', '', '0', '0');


-- --------------------------------------------------
# -- Table structure for table `coupons`
-- --------------------------------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `discount` varchar(4) NOT NULL DEFAULT '0',
  `type` enum('p','a') NOT NULL DEFAULT 'p',
  `mid` varchar(50) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `coupons`
-- --------------------------------------------------

INSERT INTO `coupons` (`id`, `title`, `code`, `discount`, `type`, `mid`, `created`, `active`) VALUES ('1', '10% off', '12345', '10', 'p', '2,4', '2015-08-01 15:21:27', '1');


-- --------------------------------------------------
# -- Table structure for table `faq`
-- --------------------------------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `question` varchar(150) DEFAULT NULL,
  `answer` text,
  `sorting` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `faq`
-- --------------------------------------------------

INSERT INTO `faq` (`id`, `question`, `answer`, `sorting`) VALUES ('1', 'What we do and why we do it?', '<p>\n\tClass aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac <a href="#">tempor dui sagittis</a>. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim.</p>', '1');
INSERT INTO `faq` (`id`, `question`, `answer`, `sorting`) VALUES ('2', 'Sed Molestie Augue Sit Amet Leo Messi?', '&lt;p&gt;\n\tVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.&lt;a href=&quot;#&quot;&gt;Vestibulum mollis&lt;/a&gt;mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim.&lt;/p&gt;', '2');
INSERT INTO `faq` (`id`, `question`, `answer`, `sorting`) VALUES ('3', 'In Condimentum Facilisis Porta. Sed Nec Diam Lorem Ipsum Dolor', '&lt;p&gt;\n\tIn condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim.&lt;/p&gt;', '3');
INSERT INTO `faq` (`id`, `question`, `answer`, `sorting`) VALUES ('4', 'Duis Aliquet Egestas Purus In Blandit. Curabitur?', '&lt;p&gt;\n\tProin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam.&lt;a href=&quot;#&quot;&gt;Vestibulum mollis&lt;/a&gt;mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim.&lt;/p&gt;', '4');
INSERT INTO `faq` (`id`, `question`, `answer`, `sorting`) VALUES ('5', 'ivamus luctus urna sed urna ultricies?', '&lt;p&gt;Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae. Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis.&lt;/p&gt;', '5');


-- --------------------------------------------------
# -- Table structure for table `features`
-- --------------------------------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `features`
-- --------------------------------------------------

INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('1', 'Air Conditioning', '1');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('2', 'Cassette Player', '18');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('3', 'CD Player', '19');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('4', 'Leather Seats', '20');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('5', 'Navigation System', '21');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('6', 'Power Door Locks', '22');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('7', 'Power Drivers Seat', '23');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('8', 'Power Windows', '24');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('9', 'Stability Control', '25');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('10', 'Power Sunroof', '26');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('11', 'Traction Control', '27');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('12', 'Tire Pressure Monitoring System (TPMS)', '28');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('13', 'Automatic climate control', '29');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('14', 'Rear air conditioning', '30');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('15', 'Side-step running boards', '31');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('16', 'Antilock Brake System', '17');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('17', 'Electric Mirrors', '16');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('18', 'DVD Player', '2');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('19', 'Remote Starter', '3');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('20', 'Anti-Theft System', '4');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('21', 'Heated Seat', '5');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('22', 'Power Passenger Seat', '6');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('23', 'Power Mirrors', '7');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('24', 'Leather Steering Wheel', '8');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('25', 'Digital Info Center', '9');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('26', 'Rear Defogger', '10');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('27', 'Fog Lights', '11');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('28', 'Intermittent Wipers', '12');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('29', 'Leather Interior Surface', '13');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('30', 'Side Airbags', '14');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('31', 'Security System', '15');
INSERT INTO `features` (`id`, `name`, `sorting`) VALUES ('32', 'All wheel drive', '32');


-- --------------------------------------------------
# -- Table structure for table `fuel`
-- --------------------------------------------------
DROP TABLE IF EXISTS `fuel`;
CREATE TABLE `fuel` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `fuel`
-- --------------------------------------------------

INSERT INTO `fuel` (`id`, `name`) VALUES ('1', 'Biodiesel');
INSERT INTO `fuel` (`id`, `name`) VALUES ('2', 'CNG');
INSERT INTO `fuel` (`id`, `name`) VALUES ('3', 'Diesel');
INSERT INTO `fuel` (`id`, `name`) VALUES ('4', 'Electric');
INSERT INTO `fuel` (`id`, `name`) VALUES ('5', 'Ethanol-FFV');
INSERT INTO `fuel` (`id`, `name`) VALUES ('6', 'Gasoline');
INSERT INTO `fuel` (`id`, `name`) VALUES ('7', 'Hybrid-Electric');
INSERT INTO `fuel` (`id`, `name`) VALUES ('8', 'Steam');
INSERT INTO `fuel` (`id`, `name`) VALUES ('9', 'Other');


-- --------------------------------------------------
# -- Table structure for table `gallery`
-- --------------------------------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lid` (`listing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `gallery`
-- --------------------------------------------------

INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('1', '2', '0', 'Mazda 3 - Boot / Trunk', 'IMG_5214A7-8AE3C4-8CC56F-3935E9-836EDB-156EA5.jpg', '4');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('2', '2', '0', 'Mazda 3 - Interior', 'IMG_37EB2D-CED595-997498-67F960-791C05-C4FC36.jpg', '1');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('3', '2', '0', 'Mazda 3 - Interior', 'IMG_184CC6-0693F2-441DAB-30E7F2-7F9635-74EA89.jpg', '2');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('4', '2', '0', 'Mazda 3 - Interior', 'IMG_145BCE-908BCB-CB11DC-590EF6-9E8193-102E37.jpg', '3');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('5', '2', '0', 'Mazda 3 - Interior', 'IMG_E9CD18-21123E-AD158C-B2715C-531B07-C8CA8F.jpg', '5');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('6', '2', '0', 'Mazda 3 - Interior', 'IMG_11A5EC-FD6C6B-F6ED54-F8C680-43ABF4-0703B6.jpg', '6');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('7', '1', '0', 'Volvo S80 - Interior', 'IMG_799EF3-5F1D00-563AED-9463EA-8E928B-79D453.jpg', '1');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('8', '1', '0', 'Volvo S80 - Interior', 'IMG_84D50E-EC2758-A7245C-7E73CD-C8D57D-267914.jpg', '3');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('9', '1', '0', 'Volvo S80 - Interior', 'IMG_0874B5-3BBC72-A3F8CB-75D091-0938F5-B94C10.jpg', '2');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('10', '1', '0', 'Volvo S80 - Interior', 'IMG_3644BC-976A86-E9E651-EE5D99-D42A8E-FE5854.jpg', '4');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('11', '1', '0', 'Volvo S80 - Wheels / Rims', 'IMG_B31747-9ED1C1-7D1327-569EAE-DAAB15-B6A384.jpg', '6');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('12', '1', '0', 'Volvo S80 - Interior', 'IMG_8FFDEC-2173D2-481D63-DA26E0-40C1AF-5E07DD.jpg', '5');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('40', '3', '0', 'BMW X3 Interior', 'IMG_A67A2F-424C57-435E7E-5B3CB7-561936-045879.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('41', '3', '0', 'BMW X3 Interior', 'IMG_F2B2BD-52C080-30F313-263C3A-A1F028-9E8776.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('42', '3', '0', 'BMW X3 Interior', 'IMG_B24338-9CAA3F-20ECC6-AA6AB3-0D59CF-EC3876.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('43', '3', '0', 'BMW X3 Interior', 'IMG_D9F989-61C51C-E9E421-57FB6C-32CE38-316C18.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('44', '3', '0', 'BMW X3 Trunk', 'IMG_A9E80C-8B5426-D1E9A2-36ADC8-F5D059-68877C.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('45', '4', '0', 'HONDA Civic Interior', 'IMG_1E455F-E79C61-1A85A5-F4D22D-00EFB3-0BD1D5.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('46', '4', '0', 'HONDA Civic Interior', 'IMG_BA6B64-A6073A-24D1E3-DCF892-BCF499-5B28E7.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('47', '4', '0', 'HONDA Civic Dashboard', 'IMG_636180-1A22C3-157AC7-6BE4B0-D30C96-A1F0AB.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('48', '4', '0', 'HONDA Civic Dashboard', 'IMG_14BC2F-325678-E3499C-0FBB33-230AFA-C18294.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('49', '5', '0', 'TOYOTA RAV4 Interior', 'IMG_548A06-5C3814-F44322-689E5D-9B7BFA-6C69E7.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('50', '5', '0', 'TOYOTA RAV4 Interior', 'IMG_F30F38-80B37D-F913A3-670435-C1C51E-9CE055.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('51', '5', '0', 'TOYOTA RAV4 Dashboard', 'IMG_99485E-5AFEEE-460791-692806-29B056-143F57.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('52', '5', '0', 'TOYOTA RAV4 Trunk', 'IMG_D1D979-CAD0E6-25AE93-D7F73A-18186E-B89ABC.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('53', '6', '0', 'Audi A5 Dashboard', 'IMG_3615EB-760B1D-025406-5084A2-3C9B91-78249C.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('54', '6', '0', 'Audi A5 Interior', 'IMG_07B4E3-C8B4FB-C971EE-46121E-3DBC4D-1EE3BD.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('55', '6', '0', 'Audi A5 Interior', 'IMG_9830B6-913DA3-0BD099-4F3FE6-655634-42A6EA.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('56', '7', '0', 'Toyota Avensis Interior', 'IMG_A406D9-C326CE-5EDA0B-CDF826-DF962F-AD6A2B.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('57', '7', '0', 'Toyota Avensis Interior', 'IMG_5328FD-3E4912-4E3BF5-6C7238-2177E2-512039.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('58', '7', '0', 'Toyota Avensis Interior', 'IMG_600E24-7F78AE-01BD6B-7DC5C2-F92306-1340C3.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('59', '8', '0', 'Ford Galaxy Interior', 'IMG_512F16-B889DE-017812-F0173A-33973D-5FA2B8.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('60', '8', '0', 'Ford Galaxy Interior', 'IMG_CF8291-8C59B6-041BF7-8751B2-2F99C0-811EB2.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('61', '8', '0', 'Ford Galaxy Interior', 'IMG_64FCA2-E696F5-9B640A-9066F9-670F54-3C5F12.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('62', '8', '0', 'Ford Galaxy Trunk', 'IMG_E8C6C0-5B015C-A4933D-E6012A-904EDA-C22820.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('63', '9', '0', 'Aston Martin Vantage Interior', 'IMG_77399E-ABA0A3-1609AB-D63EFF-EA1D45-A06A3D.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('64', '9', '0', 'Aston Martin Vantage Interior', 'IMG_F738E3-CE0CB5-B841DB-2511A4-BB68F8-D666EA.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('65', '9', '0', 'Aston Martin Vantage Interior', 'IMG_7A4641-F6101D-559E4F-3B5B19-6FF5C7-885462.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('66', '9', '0', 'Aston Martin Vantage Interior', 'IMG_382413-CCCE37-A3EB7D-7D59B0-917A19-40ABE8.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('67', '10', '0', 'Chrysler PT Cruiser Interior', 'IMG_141843-5149F4-DFED69-B4852B-86C32B-569F52.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('68', '10', '0', 'Chrysler PT Cruiser Interior', 'IMG_2B4A69-474C78-4E0F47-BE3918-809481-431C1A.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('69', '11', '0', 'Hyundai Accent Interior', 'IMG_17BDB4-D34B99-951233-B04A14-43005A-2ADDC4.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('70', '11', '0', 'Hyundai Accent Interior', 'IMG_FE4E51-9E4978-5DDD39-0B1E7E-FE6760-342B6B.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('71', '11', '0', 'Hyundai Accent Interior', 'IMG_7C3751-E52DD0-3BA5AD-E29F5E-FF3FAC-C578CF.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('72', '11', '0', 'Hyundai Accent Interior', 'IMG_B724DF-05982B-5F8B9A-71C914-2B5E74-D0CAFE.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('73', '12', '0', 'Center Console', 'IMG_BDA519-3F9707-7E16CF-0A538B-66E282-A3F4D3.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('74', '12', '0', 'Dashboard', 'IMG_D6CAF7-CD0350-21C65E-1FC37F-023AEA-0E88BE.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('75', '12', '0', 'Engine', 'IMG_74E106-99F453-F0EBC7-670B72-E390D0-0EC831.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('76', '12', '0', 'Rear Interior', 'IMG_977059-7A95E1-61376B-92E534-3B380E-E169D8.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('77', '12', '0', 'Interior', 'IMG_46ACFC-C67A22-53F1A2-EDF252-FB0B84-0A93EB.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('78', '13', '0', 'Exterior', 'IMG_D47EA3-1ED63A-0D53FF-B63D30-9D865F-6E96BF.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('79', '13', '0', 'Interior', 'IMG_612C2F-C0E7CB-24E1BE-55B921-3F1820-9C50F6.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('80', '13', '0', 'Interior', 'IMG_3B5597-847499-52AFB9-C9F823-884B3E-062368.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('81', '13', '0', 'Interior', 'IMG_356C74-4AD29B-CFAF63-C9DC71-F9C22A-2EB5FD.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('82', '13', '0', 'Exterior', 'IMG_C9D632-F1E6D2-526C0C-2B19BD-847FCC-4148C6.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('83', '14', '0', 'Interior', 'IMG_CB584A-57C5C8-849C47-33C6C5-D37526-4337AF.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('84', '14', '0', 'Interior', 'IMG_500AEA-6C14B8-84B0BF-7DDDE5-FCFE2D-64B8FB.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('85', '14', '0', 'Interior', 'IMG_FE4CAD-FF0801-4E29AF-E6E577-FAC346-4E028D.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('86', '14', '0', 'Luxury Sedan Exterior', 'IMG_1F352E-14C9E9-B72114-509F91-149E89-58E16F.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('87', '14', '0', 'Rear Passenger Seats', 'IMG_893DE5-5CDF70-199822-E3660F-0DA3E3-10C03C.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('88', '15', '0', 'Trunck', 'IMG_5F397F-740091-5CCFB8-37ECDF-80EABE-7464EA.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('89', '15', '0', 'Interior', 'IMG_EF0747-556044-4207D1-3001EF-CF9AF2-B2E0DB.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('90', '15', '0', 'Rear Passenger Seats', 'IMG_69DCF4-3DFC60-B66916-79DA43-230106-37ED91.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('91', '15', '0', 'Package Sedan Interior', 'IMG_FC3507-E0061F-6126AB-B7B3B7-FEB398-9EDFB4.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('92', '16', '0', 'Center Console', 'IMG_0FA90C-D54BAF-63B722-8589BC-2D05B0-A96A1D.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('93', '16', '0', 'V6 Engine', 'IMG_C966FA-42DE3A-61A180-124EE1-31947B-742B21.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('94', '16', '0', 'LED Headlamp Detail', 'IMG_5E30ED-3C8D6C-FB18C8-D8500B-318F5F-6C3E68.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('95', '16', '0', 'Interior', 'IMG_DCA320-55CB7F-67BA94-75C148-06DB7C-BD35CD.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('96', '16', '0', 'Exterior', 'IMG_355963-845E62-4DD725-EDAAB0-FDA625-E8BFDF.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('97', '16', '0', 'Wheels', 'IMG_825A82-80691B-CE795D-537520-7373A4-6362D0.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('98', '17', '0', 'Exterior', 'IMG_247346-C959F3-242724-1507F1-00BE0A-2C49F8.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('99', '17', '0', 'Door Trim Detail', 'IMG_3E5E0D-BC1D3E-B85A6B-70FFBD-3BC142-DE1D46.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('100', '17', '0', 'Interior', 'IMG_93A065-4D525A-613F5E-5F0E5D-EFCEAD-3CD583.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('101', '17', '0', 'Rear Interior', 'IMG_0CEF9E-027B9A-9FBAC1-8EDE73-FE43EC-C5917C.jpg', '0');
INSERT INTO `gallery` (`id`, `listing_id`, `user_id`, `title`, `photo`, `sorting`) VALUES ('102', '17', '0', 'Interior', 'IMG_65924E-00524C-AB48E6-C36769-E648C1-887BB6.jpg', '0');


-- --------------------------------------------------
# -- Table structure for table `gateways`
-- --------------------------------------------------
DROP TABLE IF EXISTS `gateways`;
CREATE TABLE `gateways` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `displayname` varchar(200) NOT NULL,
  `dir` varchar(200) NOT NULL,
  `live` tinyint(1) NOT NULL DEFAULT '0',
  `extra_txt` varchar(200) NOT NULL,
  `extra_txt2` varchar(200) NOT NULL,
  `extra_txt3` varchar(200) DEFAULT NULL,
  `extra` varchar(200) NOT NULL,
  `extra2` varchar(200) NOT NULL,
  `extra3` varchar(200) DEFAULT NULL,
  `info` text,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `gateways`
-- --------------------------------------------------

INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('1', 'paypal', 'PayPal', 'paypal', '0', 'Paypal Email Address', 'Currency Code', 'Not in Use', 'alex.k_1286769967_biz@gmail.com', 'CAD', '', '&lt;p&gt;&lt;a href=&quot;http://www.paypal.com/&quot; title=&quot;PayPal&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Click here to setup an account with Paypal&lt;/a&gt; &lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br/&gt;\r\n\t\t\tIf this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - If you would like to test the payment provider settings, please select No. &lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Paypal email address&lt;/strong&gt; - Enter your PayPal Business email address here. &lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Currency Code&lt;/strong&gt; - Enter your currency code here. Valid choices are: &lt;/p&gt;\r\n\t\t\t\t&lt;ul&gt;\r\n\t\t\t\t\t&lt;li&gt; USD (U.S. Dollar)&lt;/li&gt;\r\n\t\t\t\t\t&lt;li&gt; EUR (Euro) &lt;/li&gt;\r\n\t\t\t\t\t&lt;li&gt; GBP (Pound Sterling) &lt;/li&gt;\r\n\t\t\t\t\t&lt;li&gt; CAD (Canadian Dollar) &lt;/li&gt;\r\n\t\t\t\t\t&lt;li&gt; JPY (Yen). &lt;/li&gt;\r\n\t\t\t\t\t&lt;li&gt; If omitted, all monetary fields will use default system setting Currency Code. &lt;/li&gt;\r\n\t\t\t\t&lt;/ul&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Not in Use&lt;/strong&gt; - This field it&#039;s not in use. Leave it empty. &lt;/p&gt;\r\n\t        &lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - Not used: &lt;/p&gt;', '1');
INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('2', 'payza', 'Payza', 'payza', '0', 'Payza Email Address', 'Currency Code', 'IPN Security Code', 'seller_1_alex.kuzmanovic@gmail.com', 'USD', 'd9vL9oYVOGpmVM2i', '&lt;p&gt;&lt;a href=&quot;http://www.payza.com/&quot; title=&quot;http://www.payza.com/&quot; rel=&quot;nofollow&quot;&gt;Click here to setup an account with Payza&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br/&gt;\r\n  If this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - If you would like to test the payment provider settings, please select No. &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;AlertPay email address&lt;/strong&gt; - Enter your Payza email address here. &lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;IPN Security Code&lt;/strong&gt; - This code needs to be generated in your Payza control panel.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - This has to be set in the Payza control panel. You will also need to check the &quot;IPN Status&quot; to enabled.&lt;/p&gt;', '1');
INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('3', 'anet', 'AuthorizeNet', 'anet', '0', 'API Login Id', 'MD5 Hash Key', 'Transaction Key', '9KDgMm2mw46V', 'Simon', '5wek3X3DX5e39YAQ', '&lt;p&gt;&lt;a href=&quot;http://www.authorize.net/&quot; title=&quot;http://www.authorize.net//&quot; rel=&quot;nofollow&quot;&gt;Click here to setup an account with Authorize.Net&lt;/a&gt;&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br/&gt;\r\n\t\t\t  If this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - If you would like to test the payment provider settings, please select No. &lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Login ID&lt;/strong&gt; - To obtain your API Login ID:&lt;/p&gt;\r\n\t\t\t&lt;ol type=&quot;1&quot;&gt;\r\n\t\t\t  &lt;li&gt; Log into the Merchant Interface at &lt;a href=&quot;https://secure.authorize.net&quot; target=&quot;_blank&quot;&gt;https://secure.authorize.net&lt;/a&gt;&lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Select Settings under Account in the main menu on the left &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Click API Login ID and Transaction Key in the Security Settings section &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; If you have not already obtained an API Login ID and Transaction Key for your account,&lt;br/&gt;\r\n\t\t\t\tyou will need to enter the secret answer to the secret question you configured at account activation. &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Click Submit. &lt;/li&gt;\r\n\t\t\t&lt;/ol&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;MD5 Hash&lt;/strong&gt; - To obtain your MD5 Hash:&lt;/p&gt;\r\n\t\t\t&lt;ol type=&quot;1&quot;&gt;\r\n\t\t\t  &lt;li&gt; Log into the Merchant Interface at &lt;a href=&quot;https://secure.authorize.net&quot; target=&quot;_blank&quot;&gt;https://secure.authorize.net&lt;/a&gt;&lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Select Settings under Account in the main menu on the left &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Click MD5 Hash in the Security Settings section &lt;/li&gt;\r\n\t\t\t  &lt;li&gt;Enter a secret word, phrase, or value and remember this.&lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Click Submit. &lt;/li&gt;\r\n\t\t\t&lt;/ol&gt;\r\n\t\t\t&lt;strong&gt;Transaction Key&lt;/strong&gt; - To obtain a Transaction Key:\r\n\t\t\t&lt;ol type=&quot;1&quot;&gt;\r\n\t\t\t  &lt;li&gt; Log on to the Merchant Interface at &lt;a href=&quot;https://secure.authorize.net&quot; target=&quot;_blank&quot;&gt;https://secure.authorize.net&lt;/a&gt;&lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Select Settings under Account in the main menu on the left &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Click API Login ID and Transaction Key in the Security Settings section &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Enter the secret answer to the secret question you configured when you activated your user account &lt;/li&gt;\r\n\t\t\t  &lt;li&gt; Click Submit &lt;/li&gt;\r\n\t\t\t&lt;/ol&gt;\r\n\t\t\t&lt;p&gt;The Transaction Key for your account is displayed on a confirmation page.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - This option it\\&#039;s not being used.&lt;/p&gt;', '1');
INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('4', 'stripe', 'Stripe', 'stripe', '0', 'Secret Key', 'Currency Code', 'Publishable Key', 'sk_test_6sDE6weBXgEuHbrjZKyG5MlQ', 'CAD', 'pk_test_vRosykAcmL59P2r7H9hziwrg', '&lt;p&gt;&lt;a href=&quot;https://stripe.com/ca&quot; title=&quot;https://stripe.com/ca&quot; rel=&quot;nofollow&quot;&gt;Click here to setup an account with Stripe&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br&gt;\r\n  If this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - To test Stripe, use your test keys instead of live ones.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;API Keys&lt;/strong&gt; - To obtain your API Keys:&lt;/p&gt;\r\n&lt;ul&gt;\r\n  &lt;li&gt; 1. Log into the Dashboard at &lt;a href=&quot;https://stripe.com/ca&quot; target=&quot;_blank&quot;&gt;https://stripe.com/ca&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt; 2. Select Account Settings under Your Account in the main menu on the left &lt;/li&gt;\r\n  &lt;li&gt; 3. Click API Keys&lt;/li&gt;\r\n  &lt;li&gt; 4. Your keys will be displayed &lt;/li&gt;\r\n\r\n&lt;p&gt;You should use test keys first to verify, that everything is working smoothly, before going live.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - This option it&#039;s not being used.&lt;/p&gt;\r\n&lt;/ul&gt;', '1');
INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('5', '2co', '2 Checkout', '2co', '0', 'Account Number', 'Private Key', 'Publishable Key', '901308279', 'DA1DBE9F-C46D-4352-A1FD-9C6EE25C3D8C', '8BDB8B3C-EEB8-4021-924A-F301BFE19C41', '&lt;p&gt;&lt;a href=&quot;https://www.2checkout.com/signup&quot; title=&quot;2CO&quot; rel=&quot;nofollow&quot;&gt;Click here to setup an account with 2CO&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br&gt;\r\n  If this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - To test 2CO, set this option to Yes&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;2CO Account Number&lt;/strong&gt; - This is your default account number&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Secret Word&lt;/strong&gt; - Your 2CO secret word&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - No need to set up INS url in your 2CO account. IPN url will be automatically add to submit form&lt;/p&gt;', '1');
INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('6', 'payfast', 'PayFast', 'payfast', '0', 'Merchant ID', 'Merchant Key', 'PassPhrase', '10000100', '46f0cd694581a', '', '&lt;p&gt;&lt;a href=&quot;https://www.payfast.co.za/&quot; title=&quot;https://www.payfast.co.za/&quot; rel=&quot;nofollow&quot;&gt;Click here to setup an account with PayFast&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br&gt;\r\n&lt;p&gt;&lt;strong&gt;PassPhrase&lt;/strong&gt; - ONLY INSERT A VALUE INTO THE SECURE PASSPHRASE IF YOU HAVE SET THIS ON THE INTEGRATION PAGE OF THE LOGGED IN AREA OF THE PAYFAST WEBSITE!!!!!.&lt;/p&gt;\r\nIf this box is not checked, the payment provider will not show up in the payment provider list during checkout.\r\n&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - To test PayFast, use your test keys instead of live ones.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;API Keys&lt;/strong&gt; - To obtain your API Keys:&lt;/p&gt;\r\n&lt;ul&gt;\r\n  &lt;li&gt; 1. Log into the Dashboard at &lt;a href=&quot;https://www.payfast.co.za/user/login&quot; target=&quot;_blank&quot;&gt;https://www.payfast.co.za/user/login&lt;/a&gt;&lt;/li&gt;\r\n  &lt;li&gt; 2. Select Account Settings under Your Account in the main menu on the left &lt;/li&gt;\r\n  &lt;li&gt; 3. Click API Keys&lt;/li&gt;\r\n  &lt;li&gt; 4. Your keys will be displayed &lt;/li&gt;\r\n  &lt;p&gt;You should use test keys first to verify, that everything is working smoothly, before going live.&lt;/p&gt;\r\n  &lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - This option it\'s not being used.&lt;/p&gt;\r\n&lt;/ul&gt;', '1');
INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES ('7', 'skrill', 'Skrill', 'skrill', '0', 'Skrill Email Address', 'Currency Code', 'Secret Passphrase', '', 'EUR', 'mypassphrase', '&lt;p&gt;&lt;a href=&quot;http://www.moneybookers.com/&quot; title=&quot;http://www.moneybookers.net/&quot; rel=&quot;nofollow&quot;&gt;Click here to setup an account with MoneyBookers&lt;/a&gt;&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br/&gt;\r\n\t\t\tIf this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - MoneyBookers does not have demo mode. You need to open testing acounts. One seller and one buyer. &lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;MoneyBookers email address&lt;/strong&gt; - Enter your MoneyBookers email address here. &lt;/p&gt;\r\n\t\t\t&lt;p&gt;&lt;strong&gt;Secret Passphrase&lt;/strong&gt; - This field must be set at Moneybookers.com.&lt;/p&gt;\r\n\t        &lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - If using recurring payment method, you need to set up and activate the IPN Url in your account: &lt;/p&gt;', '1');


-- --------------------------------------------------
# -- Table structure for table `invoices`
-- --------------------------------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` int(11) NOT NULL DEFAULT '0' COMMENT 'transaction ID',
  `invid` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT 'User Id',
  `item` varchar(100) DEFAULT NULL,
  `tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `totaltax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `originalprice` decimal(12,2) NOT NULL DEFAULT '0.00',
  `totalprice` decimal(12,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(6) DEFAULT NULL,
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_txn_id` (`txn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `invoices`
-- --------------------------------------------------

INSERT INTO `invoices` (`id`, `txn_id`, `invid`, `user_id`, `item`, `tax`, `totaltax`, `coupon`, `total`, `originalprice`, `totalprice`, `currency`, `created`) VALUES ('1', '101', '2147483647', '1', 'Premium', '0.13', '2.60', '0.00', '19.99', '19.99', '22.59', 'CAD', '2015-10-10 14:07:30');
INSERT INTO `invoices` (`id`, `txn_id`, `invid`, `user_id`, `item`, `tax`, `totaltax`, `coupon`, `total`, `originalprice`, `totalprice`, `currency`, `created`) VALUES ('2', '102', '2147483647', '1', 'Premium', '0.13', '2.60', '0.00', '19.99', '19.99', '22.59', 'CAD', '2015-11-11 11:04:12');


-- --------------------------------------------------
# -- Table structure for table `listings`
-- --------------------------------------------------
DROP TABLE IF EXISTS `listings`;
CREATE TABLE `listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `idx` int(6) NOT NULL DEFAULT '0',
  `title` varchar(120) DEFAULT NULL,
  `nice_title` varchar(120) DEFAULT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `location` tinyint(1) NOT NULL,
  `stock_id` varchar(150) NOT NULL,
  `vin` varchar(150) NOT NULL,
  `make_id` int(11) NOT NULL DEFAULT '0',
  `model_id` int(11) NOT NULL DEFAULT '0',
  `year` year(4) NOT NULL,
  `vcondition` tinyint(1) NOT NULL DEFAULT '0',
  `category` tinyint(1) NOT NULL DEFAULT '0',
  `mileage` mediumint(6) NOT NULL DEFAULT '0',
  `torque` varchar(150) NOT NULL,
  `thumb` varchar(60) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `price_sale` decimal(12,2) NOT NULL DEFAULT '0.00',
  `color_e` varchar(40) NOT NULL,
  `color_i` varchar(40) NOT NULL,
  `doors` varchar(10) NOT NULL,
  `fuel` tinyint(1) NOT NULL DEFAULT '0',
  `drive_train` varchar(60) NOT NULL,
  `engine` varchar(60) NOT NULL,
  `transmission` tinyint(1) NOT NULL DEFAULT '0',
  `top_speed` varchar(40) NOT NULL,
  `horse_power` varchar(40) NOT NULL,
  `towing_capacity` varchar(40) NOT NULL,
  `features` varchar(250) DEFAULT NULL,
  `gallery` blob,
  `body` text NOT NULL,
  `notes` text,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `hits` int(8) NOT NULL DEFAULT '0',
  `sold` tinyint(1) NOT NULL DEFAULT '0',
  `is_owner` tinyint(1) NOT NULL DEFAULT '0',
  `rejected` tinyint(1) NOT NULL DEFAULT '0',
  `metakey` text,
  `metadesc` text,
  `soldexpire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_models` (`make_id`,`model_id`,`location`,`vcondition`,`category`,`fuel`,`transmission`,`user_id`),
  FULLTEXT KEY `idx_body` (`body`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `listings`
-- --------------------------------------------------

INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('1', '1', '1734855', '2010 volvo s80', 'Volvo S80', '2010-volvo-s80', '4', 'RST-P-1025987458', '321656982', '139', '5607', '2010', '2', '8', '25008', '236', 'ICON_F0AFBB-A2D191-8FD2BD-310214-E4DD9E-69885B.jpg', '35000.00', '28000.00', 'Black', 'Black', '4', '6', 'Front Wheel Drive', '3.2L I6', '1', '240', '168', '', '1,18,20,30,17,3,5,6,7,8,9,11,13,15', 'a:6:{i:0;O:8:"stdClass":5:{s:2:"id";i:7;s:10:"listing_id";i:1;s:5:"title";s:20:"Volvo S80 - Interior";s:5:"photo";s:49:"IMG_799EF3-5F1D00-563AED-9463EA-8E928B-79D453.jpg";s:7:"sorting";i:1;}i:1;O:8:"stdClass":5:{s:2:"id";i:9;s:10:"listing_id";i:1;s:5:"title";s:20:"Volvo S80 - Interior";s:5:"photo";s:49:"IMG_0874B5-3BBC72-A3F8CB-75D091-0938F5-B94C10.jpg";s:7:"sorting";i:2;}i:2;O:8:"stdClass":5:{s:2:"id";i:8;s:10:"listing_id";i:1;s:5:"title";s:20:"Volvo S80 - Interior";s:5:"photo";s:49:"IMG_84D50E-EC2758-A7245C-7E73CD-C8D57D-267914.jpg";s:7:"sorting";i:3;}i:3;O:8:"stdClass":5:{s:2:"id";i:10;s:10:"listing_id";i:1;s:5:"title";s:20:"Volvo S80 - Interior";s:5:"photo";s:49:"IMG_3644BC-976A86-E9E651-EE5D99-D42A8E-FE5854.jpg";s:7:"sorting";i:4;}i:4;O:8:"stdClass":5:{s:2:"id";i:12;s:10:"listing_id";i:1;s:5:"title";s:20:"Volvo S80 - Interior";s:5:"photo";s:49:"IMG_8FFDEC-2173D2-481D63-DA26E0-40C1AF-5E07DD.jpg";s:7:"sorting";i:5;}i:5;O:8:"stdClass":5:{s:2:"id";i:11;s:10:"listing_id";i:1;s:5:"title";s:25:"Volvo S80 - Wheels / Rims";s:5:"photo";s:49:"IMG_B31747-9ED1C1-7D1327-569EAE-DAAB15-B6A384.jpg";s:7:"sorting";i:6;}}', '<p>The 2010 S80 provides what many Volvo buyers are looking for: safety. With exceptional safety scores, the S80 is a secure choice in the class. Optional safety features when the S80 was new provide additional peace of mind. These include adaptive cruise control, as well as lane-departure, collision and driver fatigue warning systems. With up to 18/27 mpg city/highway, the Volvo S80 earns good fuel economy for the class and also has a good reliability rating. However, top rivals have even higher reliability ratings.</p>', '', '0', '12124', '0', '0', '1', 'volvo,safety,class,reliability', 'The 2010 S80 provides what many Volvo buyers are looking for: safety. With exceptional safety scores,…', '0000-00-00 00:00:00', '2016-08-08 23:16:32', '2014-03-14 23:28:29', '2014-02-13 20:14:26', '0');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('2', '1', '2386051', 'Mazda 3 S', 'Mazda 3 S', '2010-mazda-3-s', '2', 'RST-P-102598742', '321654987', '83', '3494', '2010', '2', '3', '18230', '168', 'ccc1c8d9c28e5a7a7fa96917787765e5.png', '14000.00', '12000.00', 'Blue', 'Black', '4', '6', 'All wheel drive', '2.5L 4L', '2', '220', '167', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:6:{i:0;O:8:"stdClass":5:{s:2:"id";i:2;s:10:"listing_id";i:2;s:5:"title";s:18:"Mazda 3 - Interior";s:5:"photo";s:49:"IMG_37EB2D-CED595-997498-67F960-791C05-C4FC36.jpg";s:7:"sorting";i:1;}i:1;O:8:"stdClass":5:{s:2:"id";i:3;s:10:"listing_id";i:2;s:5:"title";s:18:"Mazda 3 - Interior";s:5:"photo";s:49:"IMG_184CC6-0693F2-441DAB-30E7F2-7F9635-74EA89.jpg";s:7:"sorting";i:2;}i:2;O:8:"stdClass":5:{s:2:"id";i:4;s:10:"listing_id";i:2;s:5:"title";s:18:"Mazda 3 - Interior";s:5:"photo";s:49:"IMG_145BCE-908BCB-CB11DC-590EF6-9E8193-102E37.jpg";s:7:"sorting";i:3;}i:3;O:8:"stdClass":5:{s:2:"id";i:1;s:10:"listing_id";i:2;s:5:"title";s:22:"Mazda 3 - Boot / Trunk";s:5:"photo";s:49:"IMG_5214A7-8AE3C4-8CC56F-3935E9-836EDB-156EA5.jpg";s:7:"sorting";i:4;}i:4;O:8:"stdClass":5:{s:2:"id";i:5;s:10:"listing_id";i:2;s:5:"title";s:18:"Mazda 3 - Interior";s:5:"photo";s:49:"IMG_E9CD18-21123E-AD158C-B2715C-531B07-C8CA8F.jpg";s:7:"sorting";i:5;}i:5;O:8:"stdClass":5:{s:2:"id";i:6;s:10:"listing_id";i:2;s:5:"title";s:18:"Mazda 3 - Interior";s:5:"photo";s:49:"IMG_11A5EC-FD6C6B-F6ED54-F8C680-43ABF4-0703B6.jpg";s:7:"sorting";i:6;}}', '<p>Get the car you want for less than you expect at Synergy Autos Ltd. With our 125 plus point inspection, 5-Day Money-Back Guarantee (see store for written details), and no-haggle pricing on every car, you get peace of mind.Price excludes government fees and taxes, any finance charges, $55 dealer document preparation charge (not required by law), and any emission testing charge. Some fees are location specific and may change if you transfer this vehicle to a different Synergy Autos Ltd store.</p>', '', '1', '1271', '0', '1', '0', 'synergy,autos,store,fees,charge', 'Get the car you want for less than you expect at Synergy Autos Ltd. With our 125 plus point inspection,…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:42:59', '2014-02-18 20:14:26', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('3', '1', '2825968', 'BMW X3', 'Bmw X3', '2011-bmw-x3', '1', 'RST-P-1025987001', '12345678', '11', '670', '2011', '2', '4', '75220', '258 lb-ft @ 1250-4800 RPM', 'a882d603169fbabf51c2b1e2d0f8171d.png', '35750.00', '28000.00', 'Silver', 'Black', '4', '6', 'All Wheel Drive', 'I6, 3.0L', '1', '230', '245', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:5:{i:0;O:8:"stdClass":5:{s:2:"id";i:40;s:10:"listing_id";i:3;s:5:"title";s:15:"BMW X3 Interior";s:5:"photo";s:49:"IMG_A67A2F-424C57-435E7E-5B3CB7-561936-045879.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:41;s:10:"listing_id";i:3;s:5:"title";s:15:"BMW X3 Interior";s:5:"photo";s:49:"IMG_F2B2BD-52C080-30F313-263C3A-A1F028-9E8776.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:42;s:10:"listing_id";i:3;s:5:"title";s:15:"BMW X3 Interior";s:5:"photo";s:49:"IMG_B24338-9CAA3F-20ECC6-AA6AB3-0D59CF-EC3876.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:43;s:10:"listing_id";i:3;s:5:"title";s:15:"BMW X3 Interior";s:5:"photo";s:49:"IMG_D9F989-61C51C-E9E421-57FB6C-32CE38-316C18.jpg";s:7:"sorting";i:0;}i:4;O:8:"stdClass":5:{s:2:"id";i:44;s:10:"listing_id";i:3;s:5:"title";s:12:"BMW X3 Trunk";s:5:"photo";s:49:"IMG_A9E80C-8B5426-D1E9A2-36ADC8-F5D059-68877C.jpg";s:7:"sorting";i:0;}}', '<p>The new X3 ticks all those boxes, from its low-profile tires to its gently curved roof. It\'s grown in almost every dimension, and gained a great new interior with more second-row seat room. (It\'s almost the size of the original X5, now.) It looks fantastic, inside and out. It\'s fast enough to blur any memory of its stiff-riding, cheap-cabin ancestors.</p><p>The 2011 X3 doesn\'t need much explanation in its differences and distinctions from the outgoing model. It\'s visibly, physically larger, and it\'s much more attractive in a car-like way. Forget the trending to rugged, blocky SUV shapes you\'ve seen at other brands, on other vehicles-the X3 swoops it up now with a character line delivered like the same cues on a 3-Series wagon.</p>', '', '1', '9553', '0', '1', '0', '', 'The new X3 ticks all those boxes, from its low-profile tires to its gently curved roof. It&#39;s grown…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:41:43', '2014-01-09 21:45:58', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('4', '1', '1509804', 'Honda Civic Si', 'Honda Civic Si', '2012-honda-civic-si', '3', 'RST-P-102598727', '987654321', '54', '2614', '1990', '2', '8', '35000', '139 lb-ft @ 6100 RPM', '82a62f5c8ee417b251653a2810fd5fdc.png', '15500.00', '8000.00', 'Red', 'Black', '4', '6', 'Front Wheel Drive', 'I4, 1.8L', '2', '220', '140', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:4:{i:0;O:8:"stdClass":5:{s:2:"id";i:45;s:10:"listing_id";i:4;s:5:"title";s:20:"HONDA Civic Interior";s:5:"photo";s:49:"IMG_1E455F-E79C61-1A85A5-F4D22D-00EFB3-0BD1D5.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:46;s:10:"listing_id";i:4;s:5:"title";s:20:"HONDA Civic Interior";s:5:"photo";s:49:"IMG_BA6B64-A6073A-24D1E3-DCF892-BCF499-5B28E7.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:47;s:10:"listing_id";i:4;s:5:"title";s:21:"HONDA Civic Dashboard";s:5:"photo";s:49:"IMG_636180-1A22C3-157AC7-6BE4B0-D30C96-A1F0AB.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:48;s:10:"listing_id";i:4;s:5:"title";s:21:"HONDA Civic Dashboard";s:5:"photo";s:49:"IMG_14BC2F-325678-E3499C-0FBB33-230AFA-C18294.jpg";s:7:"sorting";i:0;}}', '<p>With this latest redo the Civic has become undeniably a little more conservative. While the new Civic retains much of the futuristic, previous-generation model-including its rakish roofline-it tones down the look with more conservative rear styling. Likewise, inside Honda has kept the dual-tier instrument panel but recontoured it to cant slightly (and disconcertingly, to some) toward the driver.</p>', '', '1', '6536', '0', '1', '0', 'civic,conservative', 'With this latest redo the Civic has become undeniably a little more conservative. While the new Civic…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:44:44', '2014-02-12 22:11:53', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('5', '1', '2137133', 'Toyota RAV4', 'Toyota Rav4', '2013-toyota-rav4', '1', 'RST-P-10259872', '234567890', '133', '5239', '2013', '2', '4', '18000', '172 lb-ft @ 4100 RPM', '9aac30f52fbfadad4b0fa8b54c3b3f1e.png', '23300.00', '16500.00', 'Black', 'Black', '5', '6', 'Front Wheel Drive', 'I4, 2.5L', '1', '220', '176', '1500', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:4:{i:0;O:8:"stdClass":5:{s:2:"id";i:49;s:10:"listing_id";i:5;s:5:"title";s:20:"TOYOTA RAV4 Interior";s:5:"photo";s:49:"IMG_548A06-5C3814-F44322-689E5D-9B7BFA-6C69E7.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:50;s:10:"listing_id";i:5;s:5:"title";s:20:"TOYOTA RAV4 Interior";s:5:"photo";s:49:"IMG_F30F38-80B37D-F913A3-670435-C1C51E-9CE055.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:51;s:10:"listing_id";i:5;s:5:"title";s:21:"TOYOTA RAV4 Dashboard";s:5:"photo";s:49:"IMG_99485E-5AFEEE-460791-692806-29B056-143F57.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:52;s:10:"listing_id";i:5;s:5:"title";s:17:"TOYOTA RAV4 Trunk";s:5:"photo";s:49:"IMG_D1D979-CAD0E6-25AE93-D7F73A-18186E-B89ABC.jpg";s:7:"sorting";i:0;}}', '<p>In short he Toyota RAV4 leaves room for the larger Highlander, and plants its feet even more firmly in the compact category this time around the subdivision. It also dumps its outdated automatic transmissions, and mixes in more safety and entertainment gear. On the whole, it\'s more efficient and a little more enthusiastic in its daily chores, with more room than the perky Escape and more alert road manners than the CR-V, though not vice versa.</p>', '', '1', '2552', '0', '1', '0', 'room', 'In short he Toyota RAV4 leaves room for the larger Highlander, and plants its feet even more firmly…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:46:08', '2014-03-13 22:34:19', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('6', '1', '2613498', 'Audi A5 Coupe', 'Audi A5 Coupe', '2011-audi-a5-coupe', '3', 'RST-P-1025980185', '00012345678', '10', '377', '2011', '2', '7', '75000', '320 Nm', '4fd646e3fa01c250b586caf283a48f5c.png', '35000.00', '32000.00', 'White', 'Black', '2', '6', 'Front Wheel Drive', 'I-4, 2.0 L', '2', '230', '170', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:3:{i:0;O:8:"stdClass":5:{s:2:"id";i:53;s:10:"listing_id";i:6;s:5:"title";s:17:"Audi A5 Dashboard";s:5:"photo";s:49:"IMG_3615EB-760B1D-025406-5084A2-3C9B91-78249C.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:54;s:10:"listing_id";i:6;s:5:"title";s:16:"Audi A5 Interior";s:5:"photo";s:49:"IMG_07B4E3-C8B4FB-C971EE-46121E-3DBC4D-1EE3BD.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:55;s:10:"listing_id";i:6;s:5:"title";s:16:"Audi A5 Interior";s:5:"photo";s:49:"IMG_9830B6-913DA3-0BD099-4F3FE6-655634-42A6EA.jpg";s:7:"sorting";i:0;}}', '<p>Unmatched curb appeal make the Audi A5 family of cars stand out from the crowd; these are easily some of the best-looking cars of the decade. Sharing much with the A4 sedan family, the Audi A5, S5 and RS5 bring more sultry style and improved performance to the mix.</p><p>With the standard A5, Audi has its summer cruiser. Both the A5 coupe and cabriolet are powered by a turbocharged 2.0-liter four-cylinder that now delivers 220 horsepower. The Cabriolet taps out of any performance intent in its most basic form, where it\'s fitted with front-drive and a continuously variable transmission (CVT) that generates decent gas mileage numbers but the typical CVT sluggishness. Skip the CVT for any other edition: they all have all-wheel drive, with a choice of a six-speed manual or an eight-speed automatic, either of which makes the most of the four\'s ample powerband. </p><p>The A5\'s handling and ride are dialed to comfort, though the optional Drive Select system allows owners to change steering, throttle, suspension and transmission programming for a more responsive feel that can be paired with variable-ratio Dynamic Steering. We\'d pass on both, and opt instead for the sport suspension offered on coupe models for its predictable, slightly firm road feel.</p>', '', '1', '3539', '0', '1', '0', 'audi,family,cars,performance,coupe,cabriolet,four,drive,variable,transmission,speed,steering,suspension', 'Unmatched curb appeal make the Audi A5 family of cars stand out from the crowd; these are easily some…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:40:07', '2014-03-20 20:25:57', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('7', '1', '6586587', 'Toyota Avensis Wagon', 'Toyota Avensis Wagon', '2012-toyota-avensis-wagon', '3', 'RST-P-1025248735', '12345678', '133', '5232', '2012', '2', '1', '152000', '133 lb-ft @ 4000 RPM', '5b88f8ab03bdd3c76007c958a1ba5ee6.png', '25000.00', '21000.00', 'Silver', 'Black', '5', '6', 'Front Wheel Drive', '4-Cylinder 1.8 VVT-i', '1', '200', '147', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:3:{i:0;O:8:"stdClass":5:{s:2:"id";i:56;s:10:"listing_id";i:7;s:5:"title";s:23:"Toyota Avensis Interior";s:5:"photo";s:49:"IMG_A406D9-C326CE-5EDA0B-CDF826-DF962F-AD6A2B.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:57;s:10:"listing_id";i:7;s:5:"title";s:23:"Toyota Avensis Interior";s:5:"photo";s:49:"IMG_5328FD-3E4912-4E3BF5-6C7238-2177E2-512039.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:58;s:10:"listing_id";i:7;s:5:"title";s:23:"Toyota Avensis Interior";s:5:"photo";s:49:"IMG_600E24-7F78AE-01BD6B-7DC5C2-F92306-1340C3.jpg";s:7:"sorting";i:0;}}', '<p>Etiam quis quam suscipit, auctor leo vel, pretium lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur ac sapien a lorem luctus tempor at vel turpis. Sed mi nunc, consectetur facilisis leo at, consequat molestie mi. Vivamus convallis libero dictum, faucibus est eget, cursus dui. Etiam vulputate justo in orci iaculis iaculis. Nunc et augue vel diam pretium hendrerit vitae in libero. </p><p>Pellentesque in venenatis risus, et vehicula ipsum. Morbi erat purus, mollis id felis quis, vulputate suscipit urna. Mauris mattis neque est, ac faucibus nulla mattis ut. Etiam bibendum blandit lobortis. Ut vitae arcu interdum, fermentum libero vel, lacinia nisi. Vestibulum ornare enim pharetra risus hendrerit fringilla. Quisque condimentum diam lorem, vitae imperdiet est placerat in. Phasellus dictum nibh sed est condimentum, ut cursus nisi hendrerit.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer congue urna et pellentesque faucibus. Sed tempor elit eu commodo egestas. In quam risus, consectetur ut nulla at, mattis blandit sapien. Etiam quis enim purus. Suspendisse pretium venenatis pulvinar. Sed dolor quam, fringilla in blandit ut, ultricies ut nisi. Vestibulum consectetur nulla a justo ornare, sed varius tellus gravida. Proin a malesuada arcu. </p><p>Fusce aliquam consectetur quam, vitae fermentum quam pharetra eu. Nulla blandit viverra nibh ut cursus. Morbi mattis non urna sed rhoncus. Etiam a enim tristique, auctor purus ut, hendrerit tellus. Proin gravida, mauris nec venenatis pulvinar, nisi eros pharetra odio, eu tristique sapien odio in est. Integer dictum varius pulvinar. Vivamus eget aliquet lectus.</p>', '', '1', '2652', '0', '1', '0', 'etiam,quis,quam,suscipit,auctor,pretium,lectus,pellentesque,morbi,tristique,malesuada,turpis,egestas,sapien,lorem,tempor,nunc,consectetur,vivamus,libero,dictum,faucibus,eget,cursus,vulputate,justo,iaculis,diam,hendrerit,vitae,nbsp,venenatis,risus,ipsum,purus,urna,mauris,mattis,nulla,blandit,arcu,fermentum,nisi,vestibulum,ornare,enim,pharetra,fringilla,condimentum,nibh,dolor,elit,integer,pulvinar,varius,tellus,gravida,proin,odio', 'Etiam quis quam suscipit, auctor leo vel, pretium lectus. Pellentesque habitant morbi tristique senectus…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:37:30', '2014-03-20 21:38:21', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('8', '1', '4911816', 'Ford Galaxy', 'Ford Galaxy', '2006-ford-galaxy', '2', 'RST-P-10259014', '9876543210', '44', '2220', '2006', '2', '5', '224320', '320 Nm', '8cac5aeff6bfd84aed440188a8fae152.png', '7500.00', '7500.00', 'Beige', 'Black', '5', '3', 'Front Wheel Drive', '4.2L I4', '1', '190', '140', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:4:{i:0;O:8:"stdClass":5:{s:2:"id";i:59;s:10:"listing_id";i:8;s:5:"title";s:20:"Ford Galaxy Interior";s:5:"photo";s:49:"IMG_512F16-B889DE-017812-F0173A-33973D-5FA2B8.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:60;s:10:"listing_id";i:8;s:5:"title";s:20:"Ford Galaxy Interior";s:5:"photo";s:49:"IMG_CF8291-8C59B6-041BF7-8751B2-2F99C0-811EB2.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:61;s:10:"listing_id";i:8;s:5:"title";s:20:"Ford Galaxy Interior";s:5:"photo";s:49:"IMG_64FCA2-E696F5-9B640A-9066F9-670F54-3C5F12.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:62;s:10:"listing_id";i:8;s:5:"title";s:17:"Ford Galaxy Trunk";s:5:"photo";s:49:"IMG_E8C6C0-5B015C-A4933D-E6012A-904EDA-C22820.jpg";s:7:"sorting";i:0;}}', '<p>The flagship 2.2-litre diesel offers good performance, but for most the economy penalty will prove unpopular. For regular large loads and longer journeys, however, a diesel is a more sensible option, with the 2.0-litre TDCi offering the best compromise of power and economy. Dynamically the Galaxy is terrific, with precise steering and body control that delivers a relatively involving drive that makes you forget you’re piloting a big, flat-sided box. It rides exceptionally well, too.  </p><p>The Galaxy’s biggest mainstream rivals are the Volkswagen Sharan and Seat Alhambra, with which the first and second generation Galaxy shared much of its mechanical componentry. Both the Seat and VW offer great refinement and build quality, and much the same as the Galaxy in terms of seating and practicalities, but they lag behind the Ford in terms of dynamic appeal.</p><p>But in terms of driver engagement the Galaxy’s biggest rival is the almost as large, almost as practical and even better to drive S-Max. The S-Max shares not only the Galaxy’s great interior ergonomics, equipment levels and engine range, but it also benefits from better residual values. </p><p>However, if you can’t live without the extra seats-up luggage space and rear headroom, and you’re prepared to sacrifice a little in the way of dynamic involvement for a more relaxing ride and the ability to haul a greater all-up load, then only a Galaxy will do.</p>', '', '1', '3151', '0', '1', '0', 'litre,diesel,economy,large,galaxy,drive,biggest,seat,terms,dynamic', 'The flagship 2.2-litre diesel offers good performance, but for most the economy penalty will prove unpopular.…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:35:23', '2014-03-20 21:51:16', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('9', '1', '9676365', 'Aston Martin V12 Vantage', 'Aston Martin V12 Vantage', '2013-aston-martin-v12-vantage', '1', 'RST-P-1025901547', '00963214568', '9', '297', '2013', '1', '2', '2000', '457 lb-ft @ 0 RPM', '1cd8377e85132f186308526053a2b309.png', '180000.00', '160000.00', 'Green', 'Black', '2', '6', 'Front Wheel', '6L V12 7AT', '2', '327', '573', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:4:{i:0;O:8:"stdClass":5:{s:2:"id";i:63;s:10:"listing_id";i:9;s:5:"title";s:29:"Aston Martin Vantage Interior";s:5:"photo";s:49:"IMG_77399E-ABA0A3-1609AB-D63EFF-EA1D45-A06A3D.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:64;s:10:"listing_id";i:9;s:5:"title";s:29:"Aston Martin Vantage Interior";s:5:"photo";s:49:"IMG_F738E3-CE0CB5-B841DB-2511A4-BB68F8-D666EA.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:65;s:10:"listing_id";i:9;s:5:"title";s:29:"Aston Martin Vantage Interior";s:5:"photo";s:49:"IMG_7A4641-F6101D-559E4F-3B5B19-6FF5C7-885462.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:66;s:10:"listing_id";i:9;s:5:"title";s:29:"Aston Martin Vantage Interior";s:5:"photo";s:49:"IMG_382413-CCCE37-A3EB7D-7D59B0-917A19-40ABE8.jpg";s:7:"sorting";i:0;}}', '<p>The Aston Martin Vantage might be an old car, having been designed by none other than Henrik Fisker way back in 2005, but there\'s a lot of life left in this amazing British sportscar. The model started out with a 5.3-liter V8 engine, which was widely criticized for not having enough power, but the latest model for 2013 definitely has everything it needs in that department. </p><p>This is the V12 Vantage S, the fastest Aston ever if you ignore the One-77. It\'s powered by an updated 6-liter engine that using its 573 PS (565 bhp) propels the car from 0 to 100 km/h in a very impressive 3.9 seconds. It also oozes power from its every pore and looks positively race ready, like a GT3 car for the road.</p>', '', '1', '35987', '0', '1', '0', 'aston,vantage,having,model,liter,engine,power', 'The Aston Martin Vantage might be an old car, having been designed by none other than Henrik Fisker…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:32:41', '2014-03-24 11:16:26', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('10', '1', '5600036', 'Chrysler PT Cruiser', 'Chrysler Pt Cruiser', '2010-chrysler-pt-cruiser', '3', 'RST-P-102598249', '123456789', '23', '1528', '2010', '2', '1', '85600', '165 lb-ft @ 4000 RPM', '005e49a604fb94df9d2f3c360a7a1194.png', '25000.00', '12000.00', 'Red', 'Black', '4', '6', 'Front Wheel Drive', '2.4 4AT', '1', '200', '150', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,11,13,14,15,32', 'a:2:{i:0;O:8:"stdClass":5:{s:2:"id";i:67;s:10:"listing_id";i:10;s:5:"title";s:28:"Chrysler PT Cruiser Interior";s:5:"photo";s:49:"IMG_141843-5149F4-DFED69-B4852B-86C32B-569F52.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:68;s:10:"listing_id";i:10;s:5:"title";s:28:"Chrysler PT Cruiser Interior";s:5:"photo";s:49:"IMG_2B4A69-474C78-4E0F47-BE3918-809481-431C1A.jpg";s:7:"sorting";i:0;}}', '<p>n terms of genesis, Chrysler is almost synonymous with an unwanted premature detonation. Amidst the depression of 1921 and the great collapse of 1929, when most car producers were facing extinction due to drastic decrease in sales, lack of resources and investors, a small company would try to make its way to the auto shows and into the American citizens\' garages. </p><p>Despite the economic meltdown that drove investors away and locked-down companies faster than a second Ice Age, the US auto market was mainly divided among two powers: the ever expanding GM and Ford.<br><br>The sum of such horrific conditions would have normally drove away contenders, but Walter P. Chrysler thought otherwise. Determined to get an equally slice of the market share pizza for himself, he exhibited a handsome car at the 1924 New York Auto Show. The automobile was none other than the Chrysler 70, the model that would drag the Chrysler name to he Pantheon of American car builders.</p>', '', '1', '2548', '0', '1', '0', 'chrysler,investors,auto,american,drove,market', 'n terms of genesis, Chrysler is almost synonymous with an unwanted premature detonation. Amidst the…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:31:39', '2014-03-24 11:37:04', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('11', '1', '8041155', 'Hyundai Accent', 'Hyundai Accent', '2014-hyundai-accent', '2', 'RST-P-10259650', '123456789', '56', '2733', '2014', '1', '8', '3000', '123 lb-ft @ 4850 RPM', 'e5fd31b778caa56acaa8c136dfe5e811.png', '35000.00', '31500.00', 'Black', 'Black', '5', '6', 'Front Wheel Drive', '1.6l', '2', '200', '138', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:4:{i:0;O:8:"stdClass":5:{s:2:"id";i:69;s:10:"listing_id";i:11;s:5:"title";s:23:"Hyundai Accent Interior";s:5:"photo";s:49:"IMG_17BDB4-D34B99-951233-B04A14-43005A-2ADDC4.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:70;s:10:"listing_id";i:11;s:5:"title";s:23:"Hyundai Accent Interior";s:5:"photo";s:49:"IMG_FE4E51-9E4978-5DDD39-0B1E7E-FE6760-342B6B.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:71;s:10:"listing_id";i:11;s:5:"title";s:23:"Hyundai Accent Interior";s:5:"photo";s:49:"IMG_7C3751-E52DD0-3BA5AD-E29F5E-FF3FAC-C578CF.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:72;s:10:"listing_id";i:11;s:5:"title";s:23:"Hyundai Accent Interior";s:5:"photo";s:49:"IMG_B724DF-05982B-5F8B9A-71C914-2B5E74-D0CAFE.jpg";s:7:"sorting";i:0;}}', '<p>The 2013 Accent continues Hyundai’s mission to defy convention by offering extraordinary value and class-above features to subcompact car shoppers. Now in its second year of production, Accent adds even more standard equipment and offers new class-above comfort features to satisfy shoppers in this hot segment.<br><br>Heated side mirrors, remote keyless entry and air conditioning are now standard on all 2013 Accent trims. Accent SE’s side mirrors have been upgraded with turn signal indicators for an extra level of safety. Shoppers also will find an optional power sunroof on the Accent SE trim.<br><br>Accent has been well-received by shoppers. In fact, through the month of May, total Accent sales were up 51% over the same period in 2011. Retail (non-fleet) Accent sales were up an impressive 139% due to a 66.2% reduction in fleet mix. Automotive media and industry experts have also taken notice of Accent’s product success, awarding it various coveted awards and accolades since its reveal in April 2011. Along with two designations from WardsAuto, Accent was the highest rated subcompact sedan by a leading enthusiast magazine, above Chevrolet Sonic, Honda Fit and Toyota Yaris.</p>', '', '1', '65147', '0', '1', '0', 'accent,class,features,subcompact,shoppers,standard,mirrors,sales,fleet', 'The 2013 Accent continues Hyundai&#39;s mission to defy convention by offering extraordinary value and class-above…', '0000-00-00 00:00:00', '2016-09-01 15:13:37', '2015-08-18 23:49:24', '2014-03-24 11:45:12', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('12', '1', '2914196', 'Mercedes-Benz GLK-Class', 'Mercedes Benz Glk Class', '2015-mercedes-benz-glk-class', '4', 'RST-P-102591234', '123456789', '86', '3784', '2015', '1', '4', '1000', '3500', 'e105c2bed9395e923414b2deb6f35bf1.png', '70499.00', '60499.00', 'Silver', 'Black', '4', '6', 'rear wheel drive', '3.5L 3.5', '1', '230', '302', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:5:{i:0;O:8:"stdClass":5:{s:2:"id";i:73;s:10:"listing_id";i:12;s:5:"title";s:14:"Center Console";s:5:"photo";s:49:"IMG_BDA519-3F9707-7E16CF-0A538B-66E282-A3F4D3.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:74;s:10:"listing_id";i:12;s:5:"title";s:9:"Dashboard";s:5:"photo";s:49:"IMG_D6CAF7-CD0350-21C65E-1FC37F-023AEA-0E88BE.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:75;s:10:"listing_id";i:12;s:5:"title";s:6:"Engine";s:5:"photo";s:49:"IMG_74E106-99F453-F0EBC7-670B72-E390D0-0EC831.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:76;s:10:"listing_id";i:12;s:5:"title";s:13:"Rear Interior";s:5:"photo";s:49:"IMG_977059-7A95E1-61376B-92E534-3B380E-E169D8.jpg";s:7:"sorting";i:0;}i:4;O:8:"stdClass":5:{s:2:"id";i:77;s:10:"listing_id";i:12;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_46ACFC-C67A22-53F1A2-EDF252-FB0B84-0A93EB.jpg";s:7:"sorting";i:0;}}', '<p>It\'s a luxury SUV without question, but its exterior design is more subdued than many of the other vehicles in the class. The GL wears a mix of soft curves and long creases, giving it the attractive qualities of a crossover, but with a gloss that\'s decidedly rugged-looking.</p>', '', '1', '13548', '1', '0', '0', '', 'It&#39;s a luxury SUV without question, but its exterior design is more subdued than many of the other vehicles in the class. The GL wears a mix of soft curves and long creases, giving it the attractive qualities of a crossover, but with a gloss that&#39;s decidedly rugged-looking.', '0000-00-00 00:00:00', '2017-02-09 23:59:59', '2015-08-18 21:57:35', '2015-07-07 21:10:07', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('13', '1', '3716857', 'Mercedes-Benz C-Class', 'Mercedes Benz C Class', '2012-mercedes-benz-c-class', '4', 'RST-P-102599874', '987654321', '86', '3631', '2012', '2', '8', '75000', '5000', '4217afdbe108dc5288c9579d1bb223c6.png', '35000.00', '0.00', 'Black', 'Black', '4', '6', 'rear wheel drive', '6.2L 6.2', '1', '240', '451', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:5:{i:0;O:8:"stdClass":5:{s:2:"id";i:78;s:10:"listing_id";i:13;s:5:"title";s:8:"Exterior";s:5:"photo";s:49:"IMG_D47EA3-1ED63A-0D53FF-B63D30-9D865F-6E96BF.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:79;s:10:"listing_id";i:13;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_612C2F-C0E7CB-24E1BE-55B921-3F1820-9C50F6.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:80;s:10:"listing_id";i:13;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_3B5597-847499-52AFB9-C9F823-884B3E-062368.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:81;s:10:"listing_id";i:13;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_356C74-4AD29B-CFAF63-C9DC71-F9C22A-2EB5FD.jpg";s:7:"sorting";i:0;}i:4;O:8:"stdClass":5:{s:2:"id";i:82;s:10:"listing_id";i:13;s:5:"title";s:8:"Exterior";s:5:"photo";s:49:"IMG_C9D632-F1E6D2-526C0C-2B19BD-847FCC-4148C6.jpg";s:7:"sorting";i:0;}}', '<p>\r\nFor 2012, the Mercedes-Benz C-Class sedan is fully redesigned. It\'s longer and slightly wider, with a roomier and more stylish cabin trimmed in top-quality materials. New engines also debut. The C-Class coupe carries over with minimal feature changes.\r\n</p>', '', '1', '25698', '0', '0', '0', 'class', 'For 2012, the Mercedes-Benz C-Class sedan is fully redesigned. It&#39;s longer and slightly wider, with a roomier and more stylish cabin trimmed in top-quality materials. New engines also debut. The C-Class coupe carries over with minimal feature changes.', '0000-00-00 00:00:00', '2017-02-09 23:59:59', '2015-08-18 21:56:51', '2015-08-16 21:44:32', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('14', '1', '9279981', '2015 mercedes benz e class', 'Mercedes Benz E Class', '2015-mercedes-benz-e-class', '1', 'RST-P-1025874521', '8975632147', '86', '3748', '2015', '1', '7', '3000', '1600', 'a8fef66e99a0ea138ddc0d5a9fecca3d.png', '51800.00', '0.00', 'White', 'Black', '4', '6', 'rear wheel drive', '4.7L 4.7', '1', '220', '402', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:5:{i:0;O:8:"stdClass":5:{s:2:"id";i:83;s:10:"listing_id";i:14;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_CB584A-57C5C8-849C47-33C6C5-D37526-4337AF.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:84;s:10:"listing_id";i:14;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_500AEA-6C14B8-84B0BF-7DDDE5-FCFE2D-64B8FB.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:85;s:10:"listing_id";i:14;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_FE4CAD-FF0801-4E29AF-E6E577-FAC346-4E028D.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:86;s:10:"listing_id";i:14;s:5:"title";s:21:"Luxury Sedan Exterior";s:5:"photo";s:49:"IMG_1F352E-14C9E9-B72114-509F91-149E89-58E16F.jpg";s:7:"sorting";i:0;}i:4;O:8:"stdClass":5:{s:2:"id";i:87;s:10:"listing_id";i:14;s:5:"title";s:20:"Rear Passenger Seats";s:5:"photo";s:49:"IMG_893DE5-5CDF70-199822-E3660F-0DA3E3-10C03C.jpg";s:7:"sorting";i:0;}}', '<p style="outline: none; -webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12.8000001907349px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">The Mercedes-Benz E-Class is many things to many people, but at the core, the E-Class is a comfortable mid-size car that does luxury right and can even be a bit of fun to drive.</p><p style="outline: none; -webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12.8000001907349px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">The E-Class offers many different options for a wide variety of buyers. There\'s a traditional sedan and wagon, as well as coupe and convertible models. Add to that a choice of rear- or all-wheel drive, and five different engine options, including an AMG variant that puts out up to 577 hp, a diesel, and a hybrid.</p><p style="outline: none; -webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12.8000001907349px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">The Mercedes-Benz E-Class is many things to many people, but at the core, the E-Class is a comfortable mid-size car that does luxury right and can even be a bit of fun to drive.</p><p style="outline: none; -webkit-font-smoothing: antialiased; color: rgb(34, 34, 34); font-family: Helvetica, Arial, sans-serif; font-size: 12.8000001907349px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">The E-Class offers many different options for a wide variety of buyers. There\'s a traditional sedan and wagon, as well as coupe and convertible models. Add to that a choice of rear- or all-wheel drive, and five different engine options, including an AMG variant that puts out up to 577 hp, a diesel, and a hybrid.</p>', '', '1', '35683', '0', '1', '0', 'mercedes,benz,class is,things,people,core,class,comfortable,size,luxury,right,drivethe,offers,different,options,wide,variety,buyers,there,traditional,sedan,wagon,coupe,convertible,models,choice,rear,wheel,drive,five,engine,variant,puts,diesel', 'The Mercedes-Benz E-Class is many things to many people, but at the core, the E-Class is a comfortable mid-size car that does luxury right and can even be a bit of fun to drive.The E-Class offers many different options for a wide variety of buyers. There&#39;s a traditional sedan and wagon, as well as coupe and convertible models. Add to that a choice of rear- or all-wheel drive, and five different engine options, including an AMG variant that puts out up to 577 hp, a diesel, and a hybrid.The Mercedes-Benz E-Class is many things to many people, but at the core, the E-Class is a comfortable mid-size car that does luxury right and can even be a bit of fun to drive.The E-Class offers many different options for a wide variety of buyers. There&#39;s a traditional sedan and wagon, as well as coupe and convertible models. Add to that a choice of rear- or all-wheel drive, and five different engine options, including an AMG variant that puts out up to 577 hp, a diesel, and a hybrid.', '0000-00-00 00:00:00', '2017-02-09 23:59:59', '0000-00-00 00:00:00', '2015-08-18 22:06:06', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('15', '1', '2241452', '2015 acura ilx', 'Acura Ilx', '2015-acura-ilx', '1', 'RST-P-1025874666', '123456789', '3', '86', '2015', '1', '8', '800', '4300', '688445e97d82d6551cf71941d47516db.png', '29350.00', '27050.00', 'White', 'Black', '4', '6', 'front wheel drive', '2L 2', '1', '260', '150', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:4:{i:0;O:8:"stdClass":5:{s:2:"id";i:88;s:10:"listing_id";i:15;s:5:"title";s:6:"Trunck";s:5:"photo";s:49:"IMG_5F397F-740091-5CCFB8-37ECDF-80EABE-7464EA.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:89;s:10:"listing_id";i:15;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_EF0747-556044-4207D1-3001EF-CF9AF2-B2E0DB.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:90;s:10:"listing_id";i:15;s:5:"title";s:20:"Rear Passenger Seats";s:5:"photo";s:49:"IMG_69DCF4-3DFC60-B66916-79DA43-230106-37ED91.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:91;s:10:"listing_id";i:15;s:5:"title";s:22:"Package Sedan Interior";s:5:"photo";s:49:"IMG_FC3507-E0061F-6126AB-B7B3B7-FEB398-9EDFB4.jpg";s:7:"sorting";i:0;}}', '<p>\r\n\tThe ILX is barely a luxury car if you go by its sticker price—or its not-so-distant Honda Civic roots. And for that reason we don\'t hold it against the brand that they\'re not offering some of the higher-end items you\'ll find in slightly more expensive sedans, such as radar-adaptive cruise control, blind-spot monitoring, and heads-up displays. Granted, the brand is making big steps to head up-market with its RLX flagship sedan and future NSX super car, but there\'s still room for the ILX, which no only offers the slow-selling Hybrid model for 2015. With that in mind, the ILX holds its own as a well-equipped, pleasant-driving, and comfortable compact sedan.The ILX is barely a luxury car if you go by its sticker price—or its not-so-distant Honda Civic roots. And for that reason we don\'t hold it against the brand that they\'re not offering some of the higher-end items you\'ll find in slightly more expensive sedans, such as radar-adaptive cruise control, blind-spot monitoring, and heads-up displays. Granted, the brand is making big steps to head up-market with its RLX flagship sedan and future NSX super car, but there\'s still room for the ILX, which no only offers the slow-selling Hybrid model for 2015. With that in mind, the ILX holds its own as a well-equipped, pleasant-driving, and comfortable compact sedan.\r\n</p>', '', '1', '28673', '0', '1', '0', 'barely,luxury,sticker,price,distant,honda,civic,roots,reason,brand,they,offering,higher,items,slightly,expensive,radar,adaptive,cruise,control,blind,spot,monitoring,displays,granted,making,steps,head,market,flagship,sedan,future,super,there,room,offers,slow,selling,hybrid,model,mind,holds,equipped,pleasant,driving,comfortable,compact', '\r\n\tThe ILX is barely a luxury car if you go by its sticker price—or its not-so-distant Honda Civic roots. And for that reason we don&#39;t hold it against the brand that they&#39;re not offering some of the higher-end items you&#39;ll find in slightly more expensive sedans, such as radar-adaptive cruise control, blind-spot monitoring, and heads-up displays. Granted, the brand is making big steps to head up-market with its RLX flagship sedan and future NSX super car, but there&#39;s still room for the ILX, which no only offers the slow-selling Hybrid model for 2015. With that in mind, the ILX holds its own as a well-equipped, pleasant-driving, and comfortable compact sedan.The ILX is barely a luxury car if you go by its sticker price—or its not-so-distant Honda Civic roots. And for that reason we don&#39;t hold it against the brand that they&#39;re not offering some of the higher-end items you&#39;ll find in slightly more expensive sedans, such as radar-adaptive cruise control, blind-spot monitoring, and heads-up displays. Granted, the brand is making big steps to head up-market with its RLX flagship sedan and future NSX super car, but there&#39;s still room for the ILX, which no only offers the slow-selling Hybrid model for 2015. With that in mind, the ILX holds its own as a well-equipped, pleasant-driving, and comfortable compact sedan.\r\n', '0000-00-00 00:00:00', '2017-02-09 23:59:59', '0000-00-00 00:00:00', '2015-08-18 22:14:53', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('16', '1', '6072575', '2015 acura 32 cl type s', 'Acura 32 Cl Type S', '2015-acura-32-cl-type-s', '1', 'RST-P-1025872564', '96519874154', '3', '82', '2015', '1', '8', '100', '4500', 'fd06d4234bbc34601eda48ad3a2e0f4d.png', '55370.00', '45734.00', 'Black', 'Black', '4', '6', 'front wheel drive', '3.5L 3.5', '1', '260', '310', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:6:{i:0;O:8:"stdClass":5:{s:2:"id";i:92;s:10:"listing_id";i:16;s:5:"title";s:14:"Center Console";s:5:"photo";s:49:"IMG_0FA90C-D54BAF-63B722-8589BC-2D05B0-A96A1D.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:93;s:10:"listing_id";i:16;s:5:"title";s:9:"V6 Engine";s:5:"photo";s:49:"IMG_C966FA-42DE3A-61A180-124EE1-31947B-742B21.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:94;s:10:"listing_id";i:16;s:5:"title";s:19:"LED Headlamp Detail";s:5:"photo";s:49:"IMG_5E30ED-3C8D6C-FB18C8-D8500B-318F5F-6C3E68.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:95;s:10:"listing_id";i:16;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_DCA320-55CB7F-67BA94-75C148-06DB7C-BD35CD.jpg";s:7:"sorting";i:0;}i:4;O:8:"stdClass":5:{s:2:"id";i:96;s:10:"listing_id";i:16;s:5:"title";s:8:"Exterior";s:5:"photo";s:49:"IMG_355963-845E62-4DD725-EDAAB0-FDA625-E8BFDF.jpg";s:7:"sorting";i:0;}i:5;O:8:"stdClass":5:{s:2:"id";i:97;s:10:"listing_id";i:16;s:5:"title";N;s:5:"photo";s:49:"IMG_825A82-80691B-CE795D-537520-7373A4-6362D0.jpg";s:7:"sorting";i:0;}}', '<p>The RLX is Acura\'s flagship sedan; but it\'s not the sort of car that screams for attention and recognition. It doesn\'t feel like a car for extroverts, even though its performance is impressive and satisfying. It\'s one of the more subtle luxury cars, with an understated design and an interior that\'s relatively free of gimmickry—and that altogether, we think, makes the RLX an intriguing outlier in the market. The RLX is Acura\'s flagship sedan; but it\'s not the sort of car that screams for attention and recognition. It doesn\'t feel like a car for extroverts, even though its performance is impressive and satisfying. It\'s one of the more subtle luxury cars, with an understated design and an interior that\'s relatively free of gimmickry—and that altogether, we think, makes the RLX an intriguing outlier in the market. </p>', '', '1', '35876', '0', '1', '0', 'acura,flagship,sedan,sort,screams,attention,recognition,doesn,extroverts,performance,impressive,satisfying,subtle,luxury,cars,understated,design,interior,that,relatively,free,gimmickry,altogether,think,makes,intriguing,outlier,market', 'The RLX is Acura&#39;s flagship sedan; but it&#39;s not the sort of car that screams for attention and recognition. It doesn&#39;t feel like a car for extroverts, even though its performance is impressive and satisfying. It&#39;s one of the more subtle luxury cars, with an understated design and an interior that&#39;s relatively free of gimmickry—and that altogether, we think, makes the RLX an intriguing outlier in the market. The RLX is Acura&#39;s flagship sedan; but it&#39;s not the sort of car that screams for attention and recognition. It doesn&#39;t feel like a car for extroverts, even though its performance is impressive and satisfying. It&#39;s one of the more subtle luxury cars, with an understated design and an interior that&#39;s relatively free of gimmickry—and that altogether, we think, makes the RLX an intriguing outlier in the market. ', '0000-00-00 00:00:00', '2017-02-09 23:59:59', '0000-00-00 00:00:00', '2015-08-18 22:23:30', '1');
INSERT INTO `listings` (`id`, `user_id`, `idx`, `title`, `nice_title`, `slug`, `location`, `stock_id`, `vin`, `make_id`, `model_id`, `year`, `vcondition`, `category`, `mileage`, `torque`, `thumb`, `price`, `price_sale`, `color_e`, `color_i`, `doors`, `fuel`, `drive_train`, `engine`, `transmission`, `top_speed`, `horse_power`, `towing_capacity`, `features`, `gallery`, `body`, `notes`, `featured`, `hits`, `sold`, `is_owner`, `rejected`, `metakey`, `metadesc`, `soldexpire`, `expire`, `modified`, `created`, `status`) VALUES ('17', '1', '6645916', 'Infiniti Coupe Concept', 'Infiniti Coupe Concept', '2015-infiniti-coupe-concept', '4', 'RST-P-1025874699', '6325417896', '57', '2818', '2015', '1', '8', '0', '5200', '02a51b6ae439c4b680577d0d984b69c9.png', '49850.00', '0.00', 'Beige', 'Black', '4', '4', 'all wheel drive', '3.7L 3.7', '1', '260', '325', '', '1,18,19,20,21,22,23,24,25,26,27,28,29,30,31,17,16,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32', 'a:5:{i:0;O:8:"stdClass":5:{s:2:"id";i:98;s:10:"listing_id";i:17;s:5:"title";s:8:"Exterior";s:5:"photo";s:49:"IMG_247346-C959F3-242724-1507F1-00BE0A-2C49F8.jpg";s:7:"sorting";i:0;}i:1;O:8:"stdClass":5:{s:2:"id";i:99;s:10:"listing_id";i:17;s:5:"title";s:16:"Door Trim Detail";s:5:"photo";s:49:"IMG_3E5E0D-BC1D3E-B85A6B-70FFBD-3BC142-DE1D46.jpg";s:7:"sorting";i:0;}i:2;O:8:"stdClass":5:{s:2:"id";i:100;s:10:"listing_id";i:17;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_93A065-4D525A-613F5E-5F0E5D-EFCEAD-3CD583.jpg";s:7:"sorting";i:0;}i:3;O:8:"stdClass":5:{s:2:"id";i:101;s:10:"listing_id";i:17;s:5:"title";s:13:"Rear Interior";s:5:"photo";s:49:"IMG_0CEF9E-027B9A-9FBAC1-8EDE73-FE43EC-C5917C.jpg";s:7:"sorting";i:0;}i:4;O:8:"stdClass":5:{s:2:"id";i:102;s:10:"listing_id";i:17;s:5:"title";s:8:"Interior";s:5:"photo";s:49:"IMG_65924E-00524C-AB48E6-C36769-E648C1-887BB6.jpg";s:7:"sorting";i:0;}}', '<p>Even with the stiff competition from Germany and America, the Q70 remains one of the most elegant and lavish large sport sedans. The Q70 strikes its own chord, rivaling the world&#39;s best luxury sedans in presentation without copying them--it&#39;s a true original in styling and design. </p>\r\n<p>Striking, voluptuous curves and complex surfaces wrap an interior filled with warm wood, semi-aniline leather, and considerably more personality than you&#39;ll find in comparably stark European alternatives.Even with the stiff competition from Germany and America, the Q70 remains one of the most elegant and lavish large sport sedans. </p>\r\n<p>The Q70 strikes its own chord, rivaling the world&#39;s best luxury sedans in presentation without copying them--it&#39;s a true original in styling and design. Striking, voluptuous curves and complex surfaces wrap an interior filled with warm wood, semi-aniline leather, and considerably more personality than you&#39;ll find in comparably stark European alternatives.</p>', '', '1', '46017', '0', '0', '0', 'stiff,competition,germany,america,remains,elegant,lavish,large,sport,sedans,strikes,chord,rivaling,world,luxury,presentation,copying,true,original,styling,design,striking,voluptuous,curves,complex,surfaces,wrap,interior,filled,warm,wood,semi,aniline,leather,considerably,personality,comparably,stark,european', 'Even with the stiff competition from Germany and America, the Q70 remains one of the most elegant and lavish large sport sedans. The Q70 strikes its own chord, rivaling the world&#39;s best luxury sedans in presentation without copying them--it&#39;s a true original in styling and design. ', '0000-00-00 00:00:00', '2017-02-09 23:59:59', '2015-09-21 11:20:37', '2015-08-18 23:10:42', '1');


-- --------------------------------------------------
# -- Table structure for table `listings_info`
-- --------------------------------------------------
DROP TABLE IF EXISTS `listings_info`;
CREATE TABLE `listings_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `make_name` varchar(100) NOT NULL,
  `make_slug` varchar(100) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `location_slug` varchar(100) NOT NULL,
  `location_name` blob,
  `condition_name` varchar(50) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_slug` varchar(100) NOT NULL,
  `fuel_name` varchar(50) DEFAULT NULL,
  `trans_name` varchar(50) DEFAULT NULL,
  `color_name` varchar(20) DEFAULT NULL,
  `special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lstatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_listing_id` (`listing_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `listings_info`
-- --------------------------------------------------

INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('2', '2', '0', 'Mazda', 'mazda', '3 S', 'synergy-autos-ltd', 'O:8:"stdClass":18:{s:2:"id";i:2;s:4:"name";s:17:"Synergy Autos Ltd";s:9:"name_slug";s:17:"synergy-autos-ltd";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"sal@mail.com";s:4:"logo";s:41:"logo_75ce8978ac7a2a1d9ad996ae7a464924.jpg";s:7:"address";s:14:"20548 Wood Ave";s:4:"city";s:9:"Thornhill";s:5:"state";s:7:"Ontario";s:3:"zip";s:7:"M2C 2B3";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:14;s:3:"lat";s:9:"44.133642";s:3:"lng";s:10:"-79.473877";s:4:"cars";i:3;}', 'Used', 'Sports Car', 'sports-car', 'Gasoline', 'Manual', 'Blue', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('3', '3', '0', 'BMW', 'bmw', 'X3', 'international-union-cars', 'O:8:"stdClass":18:{s:2:"id";i:1;s:4:"name";s:24:"International Union Cars";s:9:"name_slug";s:24:"international-union-cars";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"iuc@mail.com";s:4:"logo";s:41:"logo_42d3b56df56784f242befbbe26d5c270.jpg";s:7:"address";s:17:"1234 Caledon Road";s:4:"city";s:7:"Toronto";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M2K 1H5";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:12;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:6;}', 'Used', 'Sport Utility Vehicle', 'sport-utility-vehicle', 'Gasoline', 'Automatic', 'Silver', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('4', '4', '0', 'Honda', 'honda', 'Civic Si', 'jim-and-sons', 'O:8:"stdClass":18:{s:2:"id";i:3;s:4:"name";s:12:"Jim and Sons";s:9:"name_slug";s:12:"jim-and-sons";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"jas@mail.com";s:4:"logo";s:41:"logo_48a42b1c530d3afb05177c1b30c8dde1.jpg";s:7:"address";s:13:"700 First Ave";s:4:"city";s:4:"Ajax";s:5:"state";s:2:"ON";s:3:"zip";s:7:"L3D 6G2";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:15;s:3:"lat";s:9:"43.651469";s:3:"lng";s:10:"-79.362785";s:4:"cars";i:4;}', 'Used', 'Sedan', 'sedan', 'Gasoline', 'Manual', 'Red', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('5', '5', '0', 'Toyota', 'toyota', 'RAV4', 'international-union-cars', 'O:8:"stdClass":18:{s:2:"id";i:1;s:4:"name";s:24:"International Union Cars";s:9:"name_slug";s:24:"international-union-cars";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"iuc@mail.com";s:4:"logo";s:41:"logo_42d3b56df56784f242befbbe26d5c270.jpg";s:7:"address";s:17:"1234 Caledon Road";s:4:"city";s:7:"Toronto";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M2K 1H5";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:12;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:6;}', 'Used', 'Sport Utility Vehicle', 'sport-utility-vehicle', 'Gasoline', 'Automatic', 'Beige', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('6', '6', '0', 'Audi', 'audi', 'A5 Coupe', 'jim-and-sons', 'O:8:"stdClass":18:{s:2:"id";i:3;s:4:"name";s:12:"Jim and Sons";s:9:"name_slug";s:12:"jim-and-sons";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"jas@mail.com";s:4:"logo";s:41:"logo_48a42b1c530d3afb05177c1b30c8dde1.jpg";s:7:"address";s:13:"700 First Ave";s:4:"city";s:4:"Ajax";s:5:"state";s:2:"ON";s:3:"zip";s:7:"L3D 6G2";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:15;s:3:"lat";s:9:"43.651469";s:3:"lng";s:10:"-79.362785";s:4:"cars";i:4;}', 'Used', 'Coupe', 'coupe', 'Gasoline', 'Manual', 'White', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('7', '7', '0', 'Toyota', 'toyota', 'Avensis Wagon', 'jim-and-sons', 'O:8:"stdClass":18:{s:2:"id";i:3;s:4:"name";s:12:"Jim and Sons";s:9:"name_slug";s:12:"jim-and-sons";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"jas@mail.com";s:4:"logo";s:41:"logo_48a42b1c530d3afb05177c1b30c8dde1.jpg";s:7:"address";s:13:"700 First Ave";s:4:"city";s:4:"Ajax";s:5:"state";s:2:"ON";s:3:"zip";s:7:"L3D 6G2";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:15;s:3:"lat";s:9:"43.651469";s:3:"lng";s:10:"-79.362785";s:4:"cars";i:4;}', 'Used', 'Wagon', 'wagon', 'Gasoline', 'Automatic', 'Silver', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('8', '8', '0', 'Ford', 'ford', 'Galaxy', 'synergy-autos-ltd', 'O:8:"stdClass":18:{s:2:"id";i:2;s:4:"name";s:17:"Synergy Autos Ltd";s:9:"name_slug";s:17:"synergy-autos-ltd";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"sal@mail.com";s:4:"logo";s:41:"logo_75ce8978ac7a2a1d9ad996ae7a464924.jpg";s:7:"address";s:14:"20548 Wood Ave";s:4:"city";s:9:"Thornhill";s:5:"state";s:7:"Ontario";s:3:"zip";s:7:"M2C 2B3";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:14;s:3:"lat";s:9:"44.133642";s:3:"lng";s:10:"-79.473877";s:4:"cars";i:3;}', 'Used', 'Van', 'van', 'Diesel', 'Automatic', 'Black', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('9', '9', '0', 'Aston Martin', 'aston-martin', 'V12 Vantage', 'international-union-cars', 'O:8:"stdClass":18:{s:2:"id";i:1;s:4:"name";s:24:"International Union Cars";s:9:"name_slug";s:24:"international-union-cars";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"iuc@mail.com";s:4:"logo";s:41:"logo_42d3b56df56784f242befbbe26d5c270.jpg";s:7:"address";s:17:"1234 Caledon Road";s:4:"city";s:7:"Toronto";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M2K 1H5";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:12;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:6;}', 'New', 'Luxury Car', 'luxury-car', 'Gasoline', 'Manual', 'Green', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('10', '10', '0', 'Chrysler', 'crhysler', 'PT Cruiser', 'jim-and-sons', 'O:8:"stdClass":18:{s:2:"id";i:3;s:4:"name";s:12:"Jim and Sons";s:9:"name_slug";s:12:"jim-and-sons";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"jas@mail.com";s:4:"logo";s:41:"logo_48a42b1c530d3afb05177c1b30c8dde1.jpg";s:7:"address";s:13:"700 First Ave";s:4:"city";s:4:"Ajax";s:5:"state";s:2:"ON";s:3:"zip";s:7:"L3D 6G2";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:15;s:3:"lat";s:9:"43.651469";s:3:"lng";s:10:"-79.362785";s:4:"cars";i:4;}', 'Used', 'Wagon', 'wagon', 'Gasoline', 'Automatic', 'Red', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('11', '11', '0', 'Hyundai', 'hyndai', 'Accent', 'synergy-autos-ltd', 'O:8:"stdClass":18:{s:2:"id";i:2;s:4:"name";s:17:"Synergy Autos Ltd";s:9:"name_slug";s:17:"synergy-autos-ltd";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"sal@mail.com";s:4:"logo";s:41:"logo_75ce8978ac7a2a1d9ad996ae7a464924.jpg";s:7:"address";s:14:"20548 Wood Ave";s:4:"city";s:9:"Thornhill";s:5:"state";s:7:"Ontario";s:3:"zip";s:7:"M2C 2B3";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:14;s:3:"lat";s:9:"44.133642";s:3:"lng";s:10:"-79.473877";s:4:"cars";i:3;}', 'New', 'Sedan', 'sedan', 'Gasoline', 'Manual', 'Black', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('12', '12', '0', 'Mercedes-Benz', 'mercedes-benz', 'GLK-Class', 'my-garage', 'O:8:"stdClass":18:{s:2:"id";i:4;s:4:"name";s:9:"My Garage";s:9:"name_slug";s:9:"my-garage";s:5:"ltype";s:4:"user";s:5:"email";s:11:"me@mail.com";s:4:"logo";N;s:7:"address";s:13:"17 Drumond St";s:4:"city";s:6:"Oshawa";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M7K 1J8";s:7:"country";s:6:"Canada";s:3:"url";s:17:"http://domain.com";s:5:"phone";s:12:"905-555-5555";s:3:"fax";N;s:4:"zoom";i:15;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:3;}', 'New', 'Sport Utility Vehicle', 'sport-utility-vehicle', 'Gasoline', 'Automatic', 'Silver', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('14', '14', '0', 'Mercedes-Benz', 'mercedes-benz', 'E-Class', 'international-union-cars', 'O:8:"stdClass":18:{s:2:"id";i:1;s:4:"name";s:24:"International Union Cars";s:9:"name_slug";s:24:"international-union-cars";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"iuc@mail.com";s:4:"logo";s:41:"logo_42d3b56df56784f242befbbe26d5c270.jpg";s:7:"address";s:17:"1234 Caledon Road";s:4:"city";s:7:"Toronto";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M2K 1H5";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:12;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:6;}', 'New', 'Coupe', 'coupe', 'Gasoline', 'Automatic', 'White', '0', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('13', '13', '0', 'Mercedes-Benz', 'mercedes-benz', 'C-Class', 'my-garage', 'O:8:"stdClass":18:{s:2:"id";i:4;s:4:"name";s:9:"My Garage";s:9:"name_slug";s:9:"my-garage";s:5:"ltype";s:4:"user";s:5:"email";s:11:"me@mail.com";s:4:"logo";N;s:7:"address";s:13:"17 Drumond St";s:4:"city";s:6:"Oshawa";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M7K 1J8";s:7:"country";s:6:"Canada";s:3:"url";s:17:"http://domain.com";s:5:"phone";s:12:"905-555-5555";s:3:"fax";N;s:4:"zoom";i:15;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:3;}', 'Used', 'Sedan', 'sedan', 'Gasoline', 'Automatic', 'Black', '0', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('15', '15', '0', 'Acura', 'acura', 'ILX', 'international-union-cars', 'O:8:"stdClass":18:{s:2:"id";i:1;s:4:"name";s:24:"International Union Cars";s:9:"name_slug";s:24:"international-union-cars";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"iuc@mail.com";s:4:"logo";s:41:"logo_42d3b56df56784f242befbbe26d5c270.jpg";s:7:"address";s:17:"1234 Caledon Road";s:4:"city";s:7:"Toronto";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M2K 1H5";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:12;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:6;}', 'New', 'Sedan', 'sedan', 'Gasoline', 'Automatic', 'White', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('16', '16', '0', 'Acura', 'acura', '3.2 CL Type-S', 'international-union-cars', 'O:8:"stdClass":18:{s:2:"id";i:1;s:4:"name";s:24:"International Union Cars";s:9:"name_slug";s:24:"international-union-cars";s:5:"ltype";s:5:"owner";s:5:"email";s:12:"iuc@mail.com";s:4:"logo";s:41:"logo_42d3b56df56784f242befbbe26d5c270.jpg";s:7:"address";s:17:"1234 Caledon Road";s:4:"city";s:7:"Toronto";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M2K 1H5";s:7:"country";s:6:"Canada";s:3:"url";s:22:"http://www.website.com";s:5:"phone";s:12:"416-555-5555";s:3:"fax";s:12:"416-555-5551";s:4:"zoom";i:12;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:6;}', 'New', 'Sedan', 'sedan', 'Gasoline', 'Automatic', 'Black', '1', '1');
INSERT INTO `listings_info` (`id`, `listing_id`, `user_id`, `make_name`, `make_slug`, `model_name`, `location_slug`, `location_name`, `condition_name`, `category_name`, `category_slug`, `fuel_name`, `trans_name`, `color_name`, `special`, `lstatus`) VALUES ('17', '17', '0', 'Infiniti', 'infinity', 'Coupe Concept', 'my-garage', 'O:8:"stdClass":18:{s:2:"id";i:4;s:4:"name";s:9:"My Garage";s:9:"name_slug";s:9:"my-garage";s:5:"ltype";s:4:"user";s:5:"email";s:11:"me@mail.com";s:4:"logo";N;s:7:"address";s:13:"17 Drumond St";s:4:"city";s:6:"Oshawa";s:5:"state";s:2:"ON";s:3:"zip";s:7:"M7K 1J8";s:7:"country";s:6:"Canada";s:3:"url";s:17:"http://domain.com";s:5:"phone";s:12:"905-555-5555";s:3:"fax";N;s:4:"zoom";i:15;s:3:"lat";s:9:"43.735392";s:3:"lng";s:10:"-79.256844";s:4:"cars";i:3;}', 'New', 'Sedan', 'sedan', 'Electric', 'Automatic', 'Beige', '0', '1');


-- --------------------------------------------------
# -- Table structure for table `locations`
-- --------------------------------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `name_slug` varchar(100) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `ltype` enum('owner','user') NOT NULL DEFAULT 'user',
  `email` varchar(100) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `zoom` tinyint(1) unsigned NOT NULL DEFAULT '14',
  `lat` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `lng` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `cars` smallint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_slug` (`name_slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `locations`
-- --------------------------------------------------

INSERT INTO `locations` (`id`, `name`, `name_slug`, `user_id`, `ltype`, `email`, `logo`, `address`, `city`, `state`, `zip`, `country`, `url`, `phone`, `fax`, `zoom`, `lat`, `lng`, `cars`) VALUES ('1', 'International Union Cars', 'international-union-cars', '0', 'owner', 'iuc@mail.com', 'logo_42d3b56df56784f242befbbe26d5c270.jpg', '1234 Caledon Road', 'Toronto', 'ON', 'M2K 1H5', 'Canada', 'http://www.website.com', '416-555-5555', '416-555-5551', '12', '43.735392', '-79.256844', '6');
INSERT INTO `locations` (`id`, `name`, `name_slug`, `user_id`, `ltype`, `email`, `logo`, `address`, `city`, `state`, `zip`, `country`, `url`, `phone`, `fax`, `zoom`, `lat`, `lng`, `cars`) VALUES ('2', 'Synergy Autos Ltd', 'synergy-autos-ltd', '0', 'owner', 'sal@mail.com', 'logo_75ce8978ac7a2a1d9ad996ae7a464924.jpg', '20548 Wood Ave', 'Thornhill', 'Ontario', 'M2C 2B3', 'Canada', 'http://www.website.com', '416-555-5555', '416-555-5551', '14', '44.133642', '-79.473877', '3');
INSERT INTO `locations` (`id`, `name`, `name_slug`, `user_id`, `ltype`, `email`, `logo`, `address`, `city`, `state`, `zip`, `country`, `url`, `phone`, `fax`, `zoom`, `lat`, `lng`, `cars`) VALUES ('3', 'Jim and Sons', 'jim-and-sons', '0', 'owner', 'jas@mail.com', 'logo_48a42b1c530d3afb05177c1b30c8dde1.jpg', '700 First Ave', 'Ajax', 'ON', 'L3D 6G2', 'Canada', 'http://www.website.com', '416-555-5555', '416-555-5551', '15', '43.651469', '-79.362785', '4');
INSERT INTO `locations` (`id`, `name`, `name_slug`, `user_id`, `ltype`, `email`, `logo`, `address`, `city`, `state`, `zip`, `country`, `url`, `phone`, `fax`, `zoom`, `lat`, `lng`, `cars`) VALUES ('4', 'My Garage', '3462-my-garage', '1', 'user', 'me@mail.com', '', '17 Drumond St', 'Oshawa', 'ON', 'M7K 1J8', 'Canada', 'http://domain.com', '905-555-5555', '', '14', '43.735392', '-79.256844', '3');
INSERT INTO `locations` (`id`, `name`, `name_slug`, `user_id`, `ltype`, `email`, `logo`, `address`, `city`, `state`, `zip`, `country`, `url`, `phone`, `fax`, `zoom`, `lat`, `lng`, `cars`) VALUES ('5', 'My Garage II', '7341-my-garage-ii', '1', 'user', 'me@mail.com', 'logo_f454bc513e29a440253838b7013ab76b.jpg', '20 Main St', 'Toronto', 'ON', 'M5J 7T1', 'Canada', 'http://domain.com', '905-555-5555', '416-555-5551', '14', '43.735392', '-79.256844', '0');


-- --------------------------------------------------
# -- Table structure for table `makes`
-- --------------------------------------------------
DROP TABLE IF EXISTS `makes`;
CREATE TABLE `makes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `name_slug` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `makes`
-- --------------------------------------------------

INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('1', 'ABT', 'abt');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('2', 'AC Schnitzer', 'ac-schnitzer');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('3', 'Acura', 'acura');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('4', 'Alfa Romeo', 'alfa-romeo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('5', 'Alpina', 'alpina');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('6', 'Arrinera', 'arrinera');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('7', 'Artega', 'artega');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('8', 'Ascari', 'ascari');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('9', 'Aston Martin', 'aston-martin');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('10', 'Audi', 'audi');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('11', 'BMW', 'bmw');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('12', 'Bentley', 'bentley');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('13', 'Bertone', 'bertone');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('14', 'Brabus', 'brabus');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('15', 'Breckland', 'breckland');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('16', 'Bugatti', 'bugatti');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('17', 'Buick', 'buick');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('18', 'Cadillac', 'cadillac');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('19', 'Caparo', 'caparo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('20', 'Carlsson', 'carlsson');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('21', 'Caterham', 'caterham');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('22', 'Chevrolet', 'chevrolet');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('23', 'Chrysler', 'chrysler');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('24', 'Citroen', 'citroen');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('25', 'Covini', 'covini');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('26', 'Dacia', 'dacia');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('27', 'Daewoo', 'daewoo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('28', 'Daihatsu', 'daihatsu');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('29', 'Daimler', 'daimler');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('30', 'De Tomaso', 'de-tomaso');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('31', 'Devon', 'devon');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('32', 'Dodge', 'dodge');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('33', 'Donkervoort', 'donkervoort');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('34', 'EDAG', 'edag');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('35', 'Edo', 'edo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('36', 'Elfin', 'elfin');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('37', 'Eterniti', 'eterniti');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('38', 'FM Auto', 'fm-auto');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('39', 'FPV', 'fpv');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('40', 'Farbio', 'farbio');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('41', 'Ferrari', 'ferrari');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('42', 'Fiat', 'fiat');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('43', 'Fisker', 'fisker');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('44', 'Ford', 'ford');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('45', 'GM', 'gm');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('46', 'GMC', 'gmc');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('47', 'GTA', 'gta');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('48', 'Gordon Murray', 'gordon-murray');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('49', 'Gumpert', 'gumpert');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('50', 'HSV', 'hsv');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('51', 'Hamann', 'hamann');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('52', 'Hennessey', 'hennessey');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('53', 'Holden', 'holden');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('54', 'Honda', 'honda');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('55', 'Hummer', 'hummer');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('56', 'Hyundai', 'hyundai');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('57', 'Infiniti', 'infiniti');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('58', 'Isuzu', 'isuzu');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('59', 'Italdesign', 'italdesign');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('60', 'Iveco', 'iveco');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('61', 'Jaguar', 'jaguar');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('62', 'Jeep', 'jeep');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('63', 'KTM', 'ktm');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('64', 'Kia', 'kia');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('65', 'Kleemann', 'kleemann');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('66', 'Koenigsegg', 'koenigsegg');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('67', 'LCC', 'lcc');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('68', 'Lada', 'lada');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('69', 'Lamborghini', 'lamborghini');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('70', 'Lancia', 'lancia');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('71', 'Land Rover', 'land-rover');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('72', 'Leblanc', 'leblanc');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('73', 'Lexus', 'lexus');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('74', 'Lincoln', 'lincoln');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('75', 'Lobini', 'lobini');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('76', 'Loremo', 'loremo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('77', 'Lotus', 'lotus');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('78', 'MG', 'mg');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('79', 'Mansory', 'mansory');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('80', 'Marcos', 'marcos');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('81', 'Maserati', 'maserati');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('82', 'Maybach', 'maybach');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('83', 'Mazda', 'mazda');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('84', 'Mazel', 'mazel');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('85', 'McLaren', 'mclaren');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('86', 'Mercedes-Benz', 'mercedes-benz');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('87', 'Mercury', 'mercury');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('88', 'Mindset', 'mindset');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('89', 'Mini', 'mini');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('90', 'Mitsubishi', 'mitsubishi');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('91', 'Mitsuoka', 'mitsuoka');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('92', 'Morgan', 'morgan');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('93', 'Nismo', 'nismo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('94', 'Nissan', 'nissan');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('95', 'Noble', 'noble');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('96', 'ORCA', 'orca');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('97', 'Oldsmobile', 'oldsmobile');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('98', 'Opel', 'opel');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('99', 'PGO', 'pgo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('100', 'Pagani', 'pagani');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('101', 'Panoz', 'panoz');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('102', 'Peugeot', 'peugeot');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('103', 'Pininfarina', 'pininfarina');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('104', 'Plymouth', 'plymouth');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('105', 'Pontiac', 'pontiac');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('106', 'Porsche', 'porsche');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('107', 'Proton', 'proton');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('108', 'Renault', 'renault');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('109', 'Rinspeed', 'rinspeed');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('110', 'Rolls-Royce', 'rolls-royce');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('111', 'Rover', 'rover');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('112', 'Saab', 'saab');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('113', 'Saleen', 'saleen');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('114', 'Saturn', 'saturn');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('115', 'Scion', 'scion');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('116', 'Seat', 'seat');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('117', 'Singer', 'singer');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('118', 'Skoda', 'skoda');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('119', 'Smart', 'smart');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('120', 'Spada', 'spada');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('121', 'Spyker', 'spyker');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('122', 'SsangYong', 'ssangyong');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('123', 'Startech', 'startech');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('124', 'Stola', 'stola');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('125', 'Strosek', 'strosek');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('126', 'StudioTorino', 'studiotorino');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('127', 'Subaru', 'subaru');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('128', 'Suzuki', 'suzuki');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('129', 'TVR', 'tvr');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('130', 'TechArt', 'techart');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('131', 'Tesla', 'tesla');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('132', 'Think', 'think');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('133', 'Toyota', 'toyota');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('134', 'Tramontana', 'tramontana');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('135', 'Valmet', 'valmet');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('136', 'Vauxhall', 'vauxhall');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('137', 'Venturi', 'venturi');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('138', 'Volkswagen', 'volkswagen');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('139', 'Volvo', 'volvo');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('140', 'Wald', 'wald');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('141', 'Wiesmann', 'wiesmann');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('142', 'Yes', 'yes');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('143', 'Zagato', 'zagato');
INSERT INTO `makes` (`id`, `name`, `name_slug`) VALUES ('144', 'Zenvo', 'zenvo');


-- --------------------------------------------------
# -- Table structure for table `members`
-- --------------------------------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `membership_id` int(11) NOT NULL DEFAULT '0',
  `membership_expire` datetime DEFAULT '0000-00-00 00:00:00',
  `email` varchar(70) DEFAULT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `avatar` varchar(60) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Dealer, 0= Member',
  `usertype` varchar(10) NOT NULL DEFAULT 'user',
  `url` varchar(150) DEFAULT NULL,
  `salt` varchar(25) NOT NULL,
  `hash` varchar(70) NOT NULL,
  `last_active` datetime DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(48) DEFAULT '000.000.000.000',
  `listings` smallint(11) NOT NULL DEFAULT '0',
  `about` text,
  `comments` text,
  `userlevel` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` enum('y','n','b','t') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id`),
  KEY `b_country` (`country`),
  KEY `status` (`active`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `members`
-- --------------------------------------------------

INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('1', 'webmaster', '4', '2017-10-17 14:08:31', 'alex.kuzmanovic@gmail.com', 'Web', 'Master', 'Wojoscripts', '', 'CA', '20 Main St', 'Toronto', 'Ontario', 'M2K 1J5', '416-555-5555', '1', 'user', 'http://wojoscripts.com', 'yBVF2MC3oEVnrToP0knSa', '$2a$10$yBVF2MC3oEVnrToP0knSa..XrKuh8VGlJiyTw65jNW/vcTmkOOj9C', '2016-02-19 15:10:40', 'fe80::858c:271d:bf0:3cda', '17', 'I have over 10 years experience in the industry. I am Creative Director, digital designer, web designer and front-end developer. I am also pretty good with a sketchbook. Before starting the company I have worked as a designer and studio manager for a design house who boasted a number of big name clients. I have brought vast experience from this role to the work I do now.', '', '1', '2015-08-07 07:00:41', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('2', 'astevens0', '0', '0000-00-00 00:00:00', 'astevens0@cocolog-nifty.com', 'Anna', 'Stevens', 'Babbleopia', '', 'Ru', '664 Michigan Place', 'Khilok', '', '', '8-(643)322-6355', '0', 'user', 'http://cornell.edu', '', '', '0000-00-00 00:00:00', '194.45.15.175', '0', '', '', '1', '2015-06-25 07:56:44', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('3', 'jrobertson1', '0', '0000-00-00 00:00:00', 'jrobertson1@archive.org', 'Jessica', 'Robertson', 'Brightbean', '', 'Ch', '069 Schiller Junction', 'Muzhijie', '', '', '7-(789)390-6294', '0', 'user', 'https://abc.net.au', '', '', '0000-00-00 00:00:00', '31.197.70.184', '0', '', '', '1', '2015-03-08 09:47:15', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('4', 'cmartinez2', '0', '0000-00-00 00:00:00', 'cmartinez2@mlb.com', 'Cheryl', 'Martinez', 'Brainverse', '', 'Sw', '96 Dovetail Alley', 'Hallstavik', 'Stockholm', '763 42', '4-(352)757-0750', '0', 'user', 'https://guardian.co.uk', '', '', '0000-00-00 00:00:00', '179.88.94.141', '0', '', '', '1', '2015-04-07 02:34:15', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('5', 'jwalker3', '0', '0000-00-00 00:00:00', 'jwalker3@exblog.jp', 'John', 'Walker', 'Avamba', 'av1.jpg', 'Ch', '79897 Monterey Drive', 'Tongzhong', '', '', '1-(741)014-5397', '0', 'user', 'http://behance.net', '', '', '0000-00-00 00:00:00', '237.168.10.6', '0', '', '', '1', '2015-02-07 03:30:11', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('6', 'kmccoy4', '0', '0000-00-00 00:00:00', 'kmccoy4@msn.com', 'Kathleen', 'Mccoy', 'Voonte', '', 'Je', '9 Warrior Center', 'Saint Helier', '', '', '7-(138)675-0032', '0', 'user', 'http://lulu.com', '', '', '0000-00-00 00:00:00', '35.9.46.141', '0', '', '', '1', '2015-08-11 21:04:14', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('7', 'astewart5', '0', '0000-00-00 00:00:00', 'astewart5@goodreads.com', 'Albert', 'Stewart', 'Oodoo', '', 'Co', '0 Hallows Way', 'Molagavita', '', '', '2-(982)728-5811', '0', 'user', 'http://tumblr.com', '', '', '0000-00-00 00:00:00', '144.3.217.1', '0', '', '', '1', '2015-08-19 14:50:25', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('8', 'dbanks6', '0', '0000-00-00 00:00:00', 'dbanks6@nih.gov', 'Daniel', 'Banks', 'Blogspan', '', 'Po', '23 Jackson Crossing', 'Borne Sulinowo', '', '', '0-(733)417-1711', '0', 'user', 'http://blogger.com', '', '', '0000-00-00 00:00:00', '49.48.132.222', '0', '', '', '1', '2015-08-14 11:47:13', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('9', 'sburke7', '0', '0000-00-00 00:00:00', 'sburke7@arstechnica.com', 'Sarah', 'Burke', 'Lajo', 'av2.jpg', 'Ja', '5 Northridge Crossing', 'Tsubata', '', '', '8-(947)582-3165', '0', 'user', 'https://pbs.org', '', '', '0000-00-00 00:00:00', '5.185.9.245', '0', '', '', '1', '2015-07-03 12:08:54', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('10', 'marmstrong8', '0', '0000-00-00 00:00:00', 'marmstrong8@bandcamp.com', 'Mary', 'Armstrong', 'Reallinks', 'av3.jpg', 'Ru', '0 Scoville Center', 'Orlovskiy', '', '', '8-(481)577-2674', '0', 'user', 'https://a8.net', '', '', '0000-00-00 00:00:00', '91.175.97.65', '0', '', '', '1', '2015-01-04 01:22:34', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('11', 'mbanks9', '0', '0000-00-00 00:00:00', 'mbanks9@privacy.gov.au', 'Mildred', 'Banks', 'Yodel', '', 'Ch', '1 La Follette Parkway', 'Hekou', '', '', '1-(877)189-9012', '0', 'user', 'https://blinklist.com', '', '', '0000-00-00 00:00:00', '195.45.50.96', '0', '', '', '1', '2015-06-29 08:13:52', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('12', 'ihudsona', '0', '0000-00-00 00:00:00', 'ihudsona@toplist.cz', 'Irene', 'Hudson', 'Voomm', 'av4.jpg', 'Za', '126 Mariners Cove Junction', 'Kawambwa', '', '', '9-(020)050-3109', '0', 'user', 'https://loc.gov', '', '', '0000-00-00 00:00:00', '64.220.57.113', '0', '', '', '1', '2015-03-16 22:59:07', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('13', 'jaustinb', '0', '0000-00-00 00:00:00', 'jaustinb@cam.ac.uk', 'Jimmy', 'Austin', 'Myworks', '', 'In', '7 Reindahl Alley', 'Cangkeuteuk Sabrang', '', '', '3-(672)274-2438', '0', 'user', 'https://sohu.com', '', '', '0000-00-00 00:00:00', '215.103.124.77', '0', '', '', '1', '2015-03-09 07:26:10', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('14', 'jkellyc', '0', '0000-00-00 00:00:00', 'jkellyc@issuu.com', 'Judy', 'Kelly', 'Camimbo', 'av5.jpg', 'Uk', '870 Mifflin Point', 'Podbuzh', '', '', '6-(156)264-0600', '0', 'user', 'https://desdev.cn', '', '', '0000-00-00 00:00:00', '64.185.244.122', '0', '', '', '1', '2015-07-09 09:09:34', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('15', 'wgriffind', '0', '0000-00-00 00:00:00', 'wgriffind@yahoo.co.jp', 'Wayne', 'Griffin', 'Pixoboo', '', 'Po', '3788 Becker Lane', 'Moses', 'Porto', '4415-719', '4-(152)526-9725', '0', 'user', 'https://storify.com', '', '', '0000-00-00 00:00:00', '124.31.65.156', '0', '', '', '1', '2015-04-23 08:20:40', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('16', 'fbowmane', '0', '0000-00-00 00:00:00', 'fbowmane@bbb.org', 'Fred', 'Bowman', 'Oozz', '', 'In', '066 Susan Parkway', 'Banjar Timbrah', '', '', '1-(363)099-8880', '0', 'user', 'http://digg.com', '', '', '0000-00-00 00:00:00', '15.220.226.60', '0', '', '', '1', '2015-05-24 05:58:49', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('17', 'dwagnerf', '0', '0000-00-00 00:00:00', 'dwagnerf@godaddy.com', 'Donald', 'Wagner', 'Snaptags', '', 'Ch', '6835 Kinsman Circle', 'Guli', '', '', '3-(210)437-2058', '0', 'user', 'http://bandcamp.com', '', '', '0000-00-00 00:00:00', '175.104.143.118', '0', '', '', '1', '2015-05-22 12:53:03', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('18', 'jwallaceg', '0', '0000-00-00 00:00:00', 'jwallaceg@e-recht24.de', 'James', 'Wallace', 'Trudeo', '', 'Ru', '842 Stephen Lane', 'Buynaksk', '', '', '4-(684)161-5242', '0', 'user', 'https://time.com', '', '', '0000-00-00 00:00:00', '63.73.10.105', '0', '', '', '1', '2015-05-01 08:27:49', 'n');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('19', 'cfullerh', '0', '0000-00-00 00:00:00', 'cfullerh@hud.gov', 'Carol', 'Fuller', 'Voonyx', '', 'Gu', '53 Harbort Trail', 'Santa María Chiquimula', '', '', '1-(901)567-3838', '0', 'user', 'http://a8.net', '', '', '0000-00-00 00:00:00', '25.129.75.61', '0', '', '', '1', '2015-07-13 16:35:14', 'y');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('20', 'cstephensi', '0', '0000-00-00 00:00:00', 'cstephensi@ftc.gov', 'Catherine', 'Stephens', 'Devify', 'av6.jpg', 'Az', '91 Shoshone Hill', 'Zaqatala', '', '', '2-(268)133-2891', '0', 'user', 'http://bigcartel.com', '', '', '0000-00-00 00:00:00', '65.246.5.11', '0', '', '', '1', '2015-04-07 06:22:08', 'n');
INSERT INTO `members` (`id`, `username`, `membership_id`, `membership_expire`, `email`, `fname`, `lname`, `company`, `avatar`, `country`, `address`, `city`, `state`, `zip`, `phone`, `type`, `usertype`, `url`, `salt`, `hash`, `last_active`, `lastip`, `listings`, `about`, `comments`, `userlevel`, `created`, `active`) VALUES ('21', 'arobertsonj', '0', '0000-00-00 00:00:00', 'arobertsonj@oakley.com', 'Annie', 'Robertson', 'Jabbersphere', '', 'In', '261 School Pass', 'Kotakan Selatan', '', '', '5-(901)885-6065', '0', 'user', 'http://nytimes.com', '', '', '0000-00-00 00:00:00', '85.121.56.222', '0', '', '', '1', '2015-07-28 00:49:02', 'y');


-- --------------------------------------------------
# -- Table structure for table `memberships`
-- --------------------------------------------------
DROP TABLE IF EXISTS `memberships`;
CREATE TABLE `memberships` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(12,2) unsigned NOT NULL DEFAULT '0.00',
  `days` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `period` varchar(1) NOT NULL DEFAULT 'D',
  `featured` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listings` smallint(1) unsigned NOT NULL DEFAULT '1',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `memberships`
-- --------------------------------------------------

INSERT INTO `memberships` (`id`, `title`, `description`, `price`, `days`, `period`, `featured`, `listings`, `private`, `active`) VALUES ('1', 'Basic', 'This is 7 days basic package...', '0.00', '7', 'D', '0', '1', '0', '1');
INSERT INTO `memberships` (`id`, `title`, `description`, `price`, `days`, `period`, `featured`, `listings`, `private`, `active`) VALUES ('2', 'Gold', 'This is 30 days Gold package', '29.99', '1', 'M', '1', '10', '0', '1');
INSERT INTO `memberships` (`id`, `title`, `description`, `price`, `days`, `period`, `featured`, `listings`, `private`, `active`) VALUES ('3', 'Premium', 'Premium one week listing package', '19.99', '1', 'W', '1', '3', '0', '1');
INSERT INTO `memberships` (`id`, `title`, `description`, `price`, `days`, `period`, `featured`, `listings`, `private`, `active`) VALUES ('4', 'Platinum', 'This is Platinum 50, full year listing package', '129.99', '1', 'Y', '1', '50', '0', '1');


-- --------------------------------------------------
# -- Table structure for table `menus`
-- --------------------------------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `page_id` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `content_type` varchar(20) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `target` enum('_self','_blank') NOT NULL DEFAULT '_blank',
  `position` tinyint(2) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `content_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `menus`
-- --------------------------------------------------

INSERT INTO `menus` (`id`, `page_id`, `name`, `slug`, `content_type`, `link`, `target`, `position`, `active`) VALUES ('1', '1', 'Home', 'home', 'page', '', '_blank', '1', '1');
INSERT INTO `menus` (`id`, `page_id`, `name`, `slug`, `content_type`, `link`, `target`, `position`, `active`) VALUES ('2', '4', 'Contact Us', 'contact-us', 'page', '', '_blank', '4', '1');
INSERT INTO `menus` (`id`, `page_id`, `name`, `slug`, `content_type`, `link`, `target`, `position`, `active`) VALUES ('3', '2', 'About Us', 'about-us', 'page', '', '_blank', '2', '1');
INSERT INTO `menus` (`id`, `page_id`, `name`, `slug`, `content_type`, `link`, `target`, `position`, `active`) VALUES ('4', '3', 'F.A.Q.', 'faq', 'page', '', '_blank', '3', '1');


-- --------------------------------------------------
# -- Table structure for table `models`
-- --------------------------------------------------
DROP TABLE IF EXISTS `models`;
CREATE TABLE `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `make` (`make_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5720 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `models`
-- --------------------------------------------------

INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1', '1', 'Audi R8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2', '1', 'Audi AS5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3', '1', 'Audi TT-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4', '1', 'Audi TT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5', '1', 'Audi Q7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('6', '1', 'Audi Allroad Quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('7', '1', 'VW Polo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('8', '1', 'VW Passat');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('9', '1', 'VW Golf GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('10', '1', 'VW Golf');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('11', '1', 'Audi AS6 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('12', '1', 'Audi AS4 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('13', '1', 'Audi AS4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('14', '1', 'Audi AS3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('15', '1', 'Audi AS6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('16', '1', 'Audi AS400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('17', '1', 'Audi AS3 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('18', '1', 'VW Touran');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('19', '1', 'VW Touareg');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('20', '1', 'VW Sporting Van T5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('21', '1', 'VW New Beetle Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('22', '1', 'Audi RS6 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('23', '1', 'Audi AS8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('24', '1', 'Audi AS4 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('25', '1', 'Skoda Superb');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('26', '1', 'Skoda Fabia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('27', '1', 'Seat Leon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('28', '1', 'Audi allroad quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('29', '1', 'Audi TT Sport Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('30', '1', 'Audi TT Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('31', '1', 'Audi TT-Limited Wide Body');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('32', '1', 'Audi TT-Limited II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('33', '1', 'Audi TT-Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('34', '2', 'ACS5 5Series E39');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('35', '2', 'ACS5 Sport S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('36', '2', '99d Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('37', '2', 'AC Schnitzer BMW X6 M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('38', '2', 'AC Schnitzer BMW X1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('39', '2', 'BMW X6 Falcon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('40', '2', 'BMW X5 Falcon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('41', '2', 'BMW M3 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('42', '2', 'ACS1 1-Series Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('43', '2', 'Mini Cooper R56');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('44', '2', 'GP3.10 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('45', '2', 'BMW Z4 Profile Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('46', '2', 'ACS4 Z4 Sport Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('47', '2', 'ACS4 Z4 M Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('48', '2', 'ACS3 Sport BMW M3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('49', '2', 'ACS3 3-Series E93 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('50', '2', 'ACS3 3-Series E92 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('51', '2', 'ACS1 BMW 1-Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('52', '2', 'Tension Street Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('53', '2', 'ACS7 7Series E65');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('54', '2', 'ACS6 Sport M6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('55', '2', 'X5 E53');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('56', '2', 'Tension M6 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('57', '2', 'ACS5 Sport M5 E60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('58', '2', 'ACS3 3Series E91 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('59', '2', 'ACS3 3Series E90');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('60', '2', 'ACS1 1Series E87');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('61', '2', 'Mini Cooper Covertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('62', '2', 'Mini CooperS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('63', '2', 'Mini');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('64', '2', 'ACS6 6Series E64 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('65', '2', 'ACS6 6Series E63 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('66', '2', 'ACS5 5Series E61 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('67', '2', 'ACS5 5Series E60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('68', '2', 'ACS3 X3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('69', '2', 'ACS3 3Series E46 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('70', '2', 'ACS3 3Series E46 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('71', '2', 'Topster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('72', '2', 'ACS4 Z4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('73', '2', 'ACS3 3Series E46 M3 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('74', '2', 'X5 E53');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('75', '2', 'ACS7 7Series E65');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('76', '2', 'ACS3 3Series E46 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('77', '2', 'ACS3 3Series E46 Compact');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('78', '2', 'ACS3 3Series E46');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('79', '2', 'X-Road');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('80', '2', 'ACS5 5Series E39 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('81', '2', 'ACS5 5Series E39 M5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('82', '3', '3.2 CL Type-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('83', '3', '3.2 TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('84', '3', 'Advanced Sedan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('85', '3', 'Advanced Sports Car Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('86', '3', 'ILX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('87', '3', 'ILX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('88', '3', 'Integra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('89', '3', 'MDX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('90', '3', 'MD-X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('91', '3', 'NSX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('92', '3', 'NSX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('93', '3', 'NS-X Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('94', '3', 'NSX sketches');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('95', '3', 'NSX-T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('96', '3', 'RDX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('97', '3', 'RDX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('98', '3', 'RDX Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('99', '3', 'RL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('100', '3', 'RL ASPEC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('101', '3', 'RL Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('102', '3', 'RL with ASPEC Performance Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('103', '3', 'RLX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('104', '3', 'RSX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('105', '3', 'RSX A-Spec Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('106', '3', 'RSX Type-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('107', '3', 'TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('108', '3', 'TL 25 Hours of Thunderhill');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('109', '3', 'TL ASPEC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('110', '3', 'TL Type-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('111', '3', 'TL with ASPEC Performance Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('112', '3', 'TSX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('113', '3', 'TSX A-Spec Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('114', '3', 'TSX Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('115', '3', 'TSX Sport Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('116', '3', 'TSX V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('117', '3', 'ZDX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('118', '3', 'ZDX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('119', '4', 'Disco Volante Touring Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('120', '4', 'TZ3 Stradale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('121', '4', 'Giulietta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('122', '4', '4C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('123', '4', 'TZ3 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('124', '4', 'Pandion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('125', '4', 'MiTo Quadrifoglio Verde');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('126', '4', 'MiTo 1.4 MultiAir');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('127', '4', '2uettottanta Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('128', '4', '159 1750 TBi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('129', '4', 'MiTo UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('130', '4', 'MiTo GTA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('131', '4', 'Mi.To');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('132', '4', 'Brera S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('133', '4', '8C Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('134', '4', '159 Sportwagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('135', '4', '159');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('136', '4', 'GT Q2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('137', '4', '8c Competizione');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('138', '4', '147 Q2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('139', '4', '147 Murphy and Nye');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('140', '4', '147 CnC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('141', '4', 'Spider UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('142', '4', 'Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('143', '4', '159 Sportwagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('144', '4', 'Brera UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('145', '4', 'Brera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('146', '4', '159');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('147', '4', 'Visconti Concept ItalDesign');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('148', '4', '8C Competizione');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('149', '4', '166');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('150', '4', '156 GTA Autodelta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('151', '4', '156 Crosswagon Q4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('152', '4', '156 Crosswagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('153', '4', '147 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('154', '4', '147 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('155', '4', 'Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('156', '4', 'Kamal Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('157', '4', 'GTV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('158', '4', 'GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('159', '4', '156 Sportwagon 2.0 JTD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('160', '4', '156 GTA Autodelta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('161', '4', '156 2.4 JTD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('162', '4', '147 TI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('163', '4', '147 JTD 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('164', '4', '147 GTA');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('165', '4', '147');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('166', '4', '166');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('167', '4', '156');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('168', '4', '146');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('169', '4', '145');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('170', '4', 'Nuvola Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('171', '4', '155 2.5 V6 TI DTM');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('172', '4', '155');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('173', '4', '164 Proteo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('174', '4', 'Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('175', '4', 'RZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('176', '4', '75 1.8i Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('177', '4', '75');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('178', '4', '75 1.8i Turbo TCC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('179', '4', '164');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('180', '4', '75 1.8i Turbo Evoluzione');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('181', '4', '33 1.5 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('182', '4', 'Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('183', '4', 'Giulietta 2.0 Turbodelta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('184', '4', 'Arna');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('185', '4', 'Alfasud Sprint Quadrifoglio Verde');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('186', '4', 'Alfasud Sprint Grand Prix');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('187', '4', 'Alfa 6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('188', '4', '33 1.5 Giardinetta 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('189', '4', 'Alfetta 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('190', '4', '182 T Formula 1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('191', '4', 'Alfetta GTV 6 2.5i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('192', '4', 'Alfasud Sprint 1.5 Veloce');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('193', '4', '2.0i TS Formula 3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('194', '4', 'Brabham Formula 1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('195', '4', 'Alfetta GTV 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('196', '4', 'Alfasud 1.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('197', '4', '2000 Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('198', '4', 'Montreal');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('199', '4', 'Giulia Coupe GT Junior Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('200', '4', 'Giulia Coupe 1300 GTA Junior');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('201', '4', 'Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('202', '4', 'Giulia Coupe 1300 GT Junior');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('203', '4', 'Giulia Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('204', '4', '2600 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('205', '4', 'Giulietta Sprint');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('206', '4', 'Giulietta SZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('207', '4', 'Giulietta Sprint');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('208', '4', 'Giulietta Sprint');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('209', '4', 'Giulietta Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('210', '4', 'Giulietta Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('211', '4', '750 Competizione');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('212', '4', 'Giulietta Sprint');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('213', '4', '2000 Sport Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('214', '4', 'C 52 Disco Volante 2000 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('215', '4', 'Tipo 159 Alfetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('216', '4', '1900');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('217', '4', '158');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('218', '4', '6C 2300 Villa DEste');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('219', '4', '412');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('220', '4', 'Tipo 158 Alfetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('221', '4', '6C 2300 Mille Miglia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('222', '4', '8C 2300');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('223', '4', '6C 1500 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('224', '4', 'P2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('225', '4', 'RM Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('226', '4', 'RL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('227', '5', 'B7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('228', '5', 'B6 Bi-Turbo Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('229', '5', 'B6 Bi-Turbo Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('230', '5', 'B3 GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('231', '5', 'B5 Bi-Turbo Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('232', '5', 'B5 Bi-Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('233', '5', 'B7 Bi-Turbo Allrad');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('234', '5', 'B7 Bi-Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('235', '5', 'D3 Bi-Turbo Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('236', '5', 'B3 Bi-Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('237', '5', 'D3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('238', '5', 'B6 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('239', '5', 'B6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('240', '5', 'B5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('241', '6', 'Arrinera Supercar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('242', '7', 'GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('243', '8', 'A10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('244', '9', 'AM 310 Vanquish');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('245', '9', 'AMR1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('246', '9', 'AMV8 Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('247', '9', 'Bulldog Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('248', '9', 'Coal Scuttle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('249', '9', 'Cygnet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('250', '9', 'Cygnet Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('251', '9', 'DB AR1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('252', '9', 'DB Mark III');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('253', '9', 'DB1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('254', '9', 'DB2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('255', '9', 'DB3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('256', '9', 'DB3S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('257', '9', 'DB4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('258', '9', 'DB4 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('259', '9', 'DB4 GT Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('260', '9', 'DB5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('261', '9', 'DB6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('262', '9', 'DB6 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('263', '9', 'DB6 Volante SWB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('264', '9', 'DB7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('265', '9', 'DB7 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('266', '9', 'DB7 Vantage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('267', '9', 'DB7 Vantage Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('268', '9', 'DB7 Vantage Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('269', '9', 'DB7 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('270', '9', 'DB9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('271', '9', 'DB9 LM');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('272', '9', 'DB9 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('273', '9', 'DB9 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('274', '9', 'DB9 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('275', '9', 'DBR1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('276', '9', 'DBR4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('277', '9', 'DBR9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('278', '9', 'DBR9 Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('279', '9', 'DBRS9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('280', '9', 'DBS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('281', '9', 'DBS Carbon Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('282', '9', 'DBS Infa Red');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('283', '9', 'DBS Lightning Silver');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('284', '9', 'DBS Racing Green');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('285', '9', 'DBS Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('286', '9', 'DBSC Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('287', '9', 'Lagonda');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('288', '9', 'Lagonda Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('289', '9', 'Lagonda M45 Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('290', '9', 'Lagonda V12 Rapide');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('291', '9', 'Lagonda Vignale Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('292', '9', 'One-77');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('293', '9', 'Project Vantage Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('294', '9', 'Rapide');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('295', '9', 'Rapide Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('296', '9', 'V12 Vanquish');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('297', '9', 'V12 Vantage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('298', '9', 'V12 Vantage Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('299', '9', 'V12 Vantage RS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('300', '9', 'V12 Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('301', '9', 'V12 Zagato Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('302', '9', 'V12 Zagato Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('303', '9', 'V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('304', '9', 'V8 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('305', '9', 'V8 Vantage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('306', '9', 'V8 Vantage Le Mans');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('307', '9', 'V8 Vantage N24');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('308', '9', 'V8 Vantage N400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('309', '9', 'V8 Vantage N420');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('310', '9', 'V8 Vantage N420 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('311', '9', 'V8 Vantage Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('312', '9', 'V8 Vantage Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('313', '9', 'V8 Vantage S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('314', '9', 'V8 Vantage S Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('315', '9', 'V8 Vantage Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('316', '9', 'V8 Vantage Volante LWB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('317', '9', 'V8 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('318', '9', 'V8 Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('319', '9', 'V8 Zagato Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('320', '9', 'Vanquish S V12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('321', '9', 'Vantage GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('322', '9', 'Vantage GT4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('323', '9', 'Vantage GT4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('324', '9', 'Virage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('325', '9', 'Virage Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('326', '9', 'Zagato Vanquish Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('327', '10', 'S3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('328', '10', '90');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('329', '10', '100');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('330', '10', '200');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('331', '10', '100 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('332', '10', '100 Avant quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('333', '10', '200 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('334', '10', '80 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('335', '10', '90 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('336', '10', 'A1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('337', '10', 'A1 amplified');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('338', '10', 'A1 clubsport quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('339', '10', 'A1 e-tron Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('340', '10', 'A1 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('341', '10', 'A1 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('342', '10', 'A1 Sportback Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('343', '10', 'A2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('344', '10', 'A2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('345', '10', 'A3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('346', '10', 'A3 2.0 TDI 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('347', '10', 'A3 2.0T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('348', '10', 'A3 3.2 V6 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('349', '10', 'A3 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('350', '10', 'A3 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('351', '10', 'A3 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('352', '10', 'A3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('353', '10', 'A3 e-tron Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('354', '10', 'A3 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('355', '10', 'A3 Sportback quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('356', '10', 'A3 Sportback S-line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('357', '10', 'A3 TDI clubsport quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('358', '10', 'A3 US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('359', '10', 'A4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('360', '10', 'A4 2.0T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('361', '10', 'A4 3.0 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('362', '10', 'A4 3.2 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('363', '10', 'A4 allroad quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('364', '10', 'A4 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('365', '10', 'A4 Avant 3.2 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('366', '10', 'A4 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('367', '10', 'A4 Cabriolet 1.8 T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('368', '10', 'A4 Cabriolet 1.9 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('369', '10', 'A4 Cabriolet 2.4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('370', '10', 'A4 Cabriolet 3.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('371', '10', 'A4 DTM Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('372', '10', 'A4 TDI Concept e');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('373', '10', 'A4 US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('374', '10', 'A5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('375', '10', 'A5 3.0 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('376', '10', 'A5 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('377', '10', 'A5 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('378', '10', 'A5 DTM');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('379', '10', 'A5 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('380', '10', 'A6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('381', '10', 'A6 3.0 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('382', '10', 'A6 3.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('383', '10', 'A6 4.2 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('384', '10', 'A6 4.2 quattro Sline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('385', '10', 'A6 allroad quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('386', '10', 'A6 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('387', '10', 'A6 Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('388', '10', 'A6 L e-tron Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('389', '10', 'A6L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('390', '10', 'A7 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('391', '10', 'A8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('392', '10', 'A8 3.0 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('393', '10', 'A8 3.2 FSI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('394', '10', 'A8 3.3 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('395', '10', 'A8 3.7 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('396', '10', 'A8 4.0 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('397', '10', 'A8 4.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('398', '10', 'A8 4.2 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('399', '10', 'A8 4.2 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('400', '10', 'A8 Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('401', '10', 'A8 Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('402', '10', 'A8 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('403', '10', 'A8 L 3.0 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('404', '10', 'A8 L 4.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('405', '10', 'A8 L 4.2 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('406', '10', 'A8 L 6.0 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('407', '10', 'A8 L 6.0 W12 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('408', '10', 'A8 L Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('409', '10', 'A8 L Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('410', '10', 'A8 L W12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('411', '10', 'A8 Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('412', '10', 'A8L 4.2 TDI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('413', '10', 'A8L W12 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('414', '10', 'allroad quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('415', '10', 'allroad quattro 2.5 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('416', '10', 'allroad quattro 2.7T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('417', '10', 'allroad quattro 4.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('418', '10', 'Allroad quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('419', '10', 'allroad quattro V6 2.7T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('420', '10', 'allroad quattro V8 4.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('421', '10', 'Avantissimo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('422', '10', 'Avus quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('423', '10', 'Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('424', '10', 'Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('425', '10', 'Coupe GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('426', '10', 'Cross Cabriolet quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('427', '10', 'Cross Coupe quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('428', '10', 'Crosslane Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('429', '10', 'e-bike Worthersee Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('430', '10', 'e-tron Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('431', '10', 'e-tron Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('432', '10', 'Imperator');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('433', '10', 'Le Mans quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('434', '10', 'metroproject quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('435', '10', 'Nuvolari quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('436', '10', 'Pikes Peake quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('437', '10', 'Q3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('438', '10', 'Q3 Jinlong Yufeng Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('439', '10', 'Q5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('440', '10', 'Q5 Custom Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('441', '10', 'Q5 Hybrid quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('442', '10', 'Q7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('443', '10', 'Q7 Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('444', '10', 'Q7 V12 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('445', '10', 'Q7 V12 TDI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('446', '10', 'quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('447', '10', 'quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('448', '10', 'quattro Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('449', '10', 'R18');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('450', '10', 'R8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('451', '10', 'R8 Exclusive Selection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('452', '10', 'R8 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('453', '10', 'R8 GT Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('454', '10', 'R8 GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('455', '10', 'R8 Spyder 4.2 FSI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('456', '10', 'R8 Spyder 5.2 FSI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('457', '10', 'R8 TDI Le Mans Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('458', '10', 'R8 V10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('459', '10', 'R8 V10 5.2 FSI quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('460', '10', 'R8 V10 plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('461', '10', 'R8 V10 Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('462', '10', 'R8 V12 TDI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('463', '10', 'R8R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('464', '10', 'Roadjet Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('465', '10', 'Rosemeyer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('466', '10', 'RS 4 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('467', '10', 'RS 4 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('468', '10', 'RS Q3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('469', '10', 'RS2 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('470', '10', 'RS3 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('471', '10', 'RS4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('472', '10', 'RS4 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('473', '10', 'RS4 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('474', '10', 'RS5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('475', '10', 'RS5 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('476', '10', 'RS6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('477', '10', 'RS6 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('478', '10', 'RS6 Avant UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('479', '10', 'RS6 plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('480', '10', 'RS6 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('481', '10', 'RSQ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('482', '10', 'S3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('483', '10', 'S3 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('484', '10', 'S4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('485', '10', 'S4 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('486', '10', 'S4 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('487', '10', 'S5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('488', '10', 'S5 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('489', '10', 'S6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('490', '10', 'S6 Avant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('491', '10', 'S7 Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('492', '10', 'S8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('493', '10', 'Shooting Brake Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('494', '10', 'Sport quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('495', '10', 'Sport quattro S1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('496', '10', 'Sportback Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('497', '10', 'SQ5 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('498', '10', 'Steppenwolf Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('499', '10', 'TT 3.2 DSG quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('500', '10', 'TT clubsport quattro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('501', '10', 'TT Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('502', '10', 'TT Coupe 1.8T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('503', '10', 'TT Coupe 3.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('504', '10', 'TT Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('505', '10', 'TT Coupe S-line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('506', '10', 'TT GT4 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('507', '10', 'TT quattro sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('508', '10', 'TT Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('509', '10', 'TT Roadster 1.8T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('510', '10', 'TT Roadster 2.0 TFSI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('511', '10', 'TT Roadster 3.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('512', '10', 'TT Roadster 3.2 quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('513', '10', 'TT Roadster Hardtop');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('514', '10', 'TT RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('515', '10', 'TT RS plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('516', '10', 'TT RS Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('517', '10', 'TTS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('518', '10', 'TTS Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('519', '10', 'TTS Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('520', '10', 'Union Type C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('521', '10', 'Urban Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('522', '10', 'Urban Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('523', '10', 'V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('524', '10', 'V8L quattro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('525', '11', '120d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('526', '11', '120i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('527', '11', '120i UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('528', '11', '128i Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('529', '11', '130i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('530', '11', '130i M-Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('531', '11', '135i Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('532', '11', '135i Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('533', '11', '1-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('534', '11', '1-Series 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('535', '11', '1-Series 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('536', '11', '1-Series Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('537', '11', '1-Series Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('538', '11', '1-Series Convertible UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('539', '11', '1-Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('540', '11', '1-Series M Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('541', '11', '5 ActiveHybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('542', '11', '3 ActiveHybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('543', '11', '1-Series M Coupe MotoGP Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('544', '11', '1-Series M Coupe UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('545', '11', '1-Series M Coupe US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('546', '11', '1-Series Range');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('547', '11', '1-Series Sport Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('548', '11', '1-Series tii Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('549', '11', '1-Series Urban Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('550', '11', '320Cd Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('551', '11', '320d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('552', '11', '320d EfficientDynamics');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('553', '11', '320d Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('554', '11', '320si');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('555', '11', '320si E90 WTCC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('556', '11', '325i Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('557', '11', '325ti Compact');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('558', '11', '328 Hommage Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('559', '11', '330Cd Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('560', '11', '330Ci Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('561', '11', '330Ci Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('562', '11', '330i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('563', '11', '330i M-Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('564', '11', '335d BluePerformance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('565', '11', '335i Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('566', '11', '335i Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('567', '11', '335is Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('568', '11', '3-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('569', '11', '3-Series Compact');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('570', '11', '3-Series Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('571', '11', '3-Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('572', '11', 'M3 Frozen Gray');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('573', '11', '3-Series Long Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('574', '11', '3-Series Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('575', '11', '5-Series Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('576', '11', '3-Series Touring UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('577', '11', '3-Series UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('578', '11', '5 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('579', '11', '530d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('580', '11', '530d Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('581', '11', '530i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('582', '11', '530Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('583', '11', '530xi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('584', '11', '530xi Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('585', '11', '545i Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('586', '11', '5-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('587', '11', '5-Series ActiveHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('588', '11', '5-Series Gran Turismo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('589', '11', '5-Series Gran Turismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('590', '11', '5-Series Long-Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('591', '11', '5-Series Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('592', '11', '630i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('593', '11', '640d Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('594', '11', '640d xDrive Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('595', '11', '640i Gran Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('596', '11', '7-Series High Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('597', '11', '645Ci Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('598', '11', '650i Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('599', '11', '6-Series Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('600', '11', '6-Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('601', '11', '6-Series Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('602', '11', '6-Series Gran Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('603', '11', '6-Series Gran Coupe UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('604', '11', '7 ActiveHybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('605', '11', '730d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('606', '11', '750i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('607', '11', '750Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('608', '11', '750Li with Shadow Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('609', '11', '760Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('610', '11', '760Li E66');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('611', '11', '7-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('612', '11', '7-Series ActiveHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('613', '11', '7-Series UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('614', '11', 'Active Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('615', '11', 'ActiveE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('616', '11', 'Art Car Collection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('617', '11', 'Concept CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('618', '11', 'Concept M5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('619', '11', 'ConnectedDrive Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('620', '11', 'Coupe Range');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('621', '11', 'EfficientDynamics Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('622', '11', 'GINA Light Visionary Model Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('623', '11', 'Gran Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('624', '11', 'H2R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('625', '11', 'M-Zero Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('626', '11', 'H2R Hydrogen Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('627', '11', 'Hydrogen 7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('628', '11', 'i3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('629', '11', 'i8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('630', '11', 'i8 Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('631', '11', '635d Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('632', '11', 'M1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('633', '11', 'M135i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('634', '11', 'M135i Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('635', '11', 'M3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('636', '11', 'M3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('637', '11', 'M3 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('638', '11', 'M3 Convertible UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('639', '11', 'M3 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('640', '11', 'M3 Coupe UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('641', '11', 'M3 Coupe US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('642', '11', 'M3 CRT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('643', '11', 'M3 CSL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('644', '11', 'M3 GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('645', '11', 'M3 Pickup Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('646', '11', 'M3 Race Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('647', '11', 'M3 Saloon UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('648', '11', 'M3 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('649', '11', 'M3 Sedan US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('650', '11', 'M5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('651', '11', 'M5 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('652', '11', 'M5 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('653', '11', 'M5 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('654', '11', 'M5 US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('655', '11', 'M550d xDrive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('656', '11', 'M550d xDrive Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('657', '11', 'M6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('658', '11', 'M6 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('659', '11', 'M6 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('660', '11', 'Z4 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('661', '11', 'M6 Convertible Neiman Marcus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('662', '11', 'M6 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('663', '11', '7 Series High Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('664', '11', 'M6 Coupe US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('665', '11', 'Mille Miglia Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('666', '11', 'Scooter C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('667', '11', 'X1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('668', '11', 'X1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('669', '11', 'X1 xDrive28i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('670', '11', 'X3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('671', '11', 'X3 2.0d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('672', '11', 'X3 3.0i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('673', '11', 'X3 EfficientDynamics Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('674', '11', 'X3 Limited Sport Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('675', '11', 'X3 xDrive20d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('676', '11', 'X3 xDrive35i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('677', '11', 'X5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('678', '11', 'X5 3.0d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('679', '11', 'X5 4.4i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('680', '11', 'X5 4.8i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('681', '11', 'X5 4.8is');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('682', '11', 'X5 M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('683', '11', 'X5 M50d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('684', '11', 'X5 M-Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('685', '11', 'X5 Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('686', '11', 'X5 Security Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('687', '11', 'X5 xDrive35d BluePerformance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('688', '11', 'X6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('689', '11', 'X6 ActiveHybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('690', '11', 'X6 ActiveHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('691', '11', 'X6 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('692', '11', 'X6 M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('693', '11', 'X6 M50d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('694', '11', 'X6 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('695', '11', '645Ci');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('696', '11', 'Z4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('697', '11', 'Z4 2.5i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('698', '11', 'Z4 Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('699', '11', 'Z4 GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('700', '11', '325Ci Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('701', '11', 'Z4 M Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('702', '11', '318Ci Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('703', '11', 'Z4 M Coupe UK version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('704', '11', 'Z4 M Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('705', '11', 'Z4 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('706', '11', 'Z4 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('707', '11', 'Zagato Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('708', '11', 'Zagato Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('709', '11', 'xActivity Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('710', '11', 'X5 4.6is');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('711', '11', 'CS1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('712', '11', '7 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('713', '11', '760i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('714', '11', '760Li Yachtline Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('715', '11', '740d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('716', '11', 'Z8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('717', '11', 'Z18 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('718', '11', 'X Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('719', '11', 'L7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('720', '11', '740iL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('721', '11', '740i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('722', '11', '540i Protection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('723', '11', '540i M Sportpaket');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('724', '11', '525i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('725', '11', 'Z9 Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('726', '11', '7 Series Protection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('727', '11', '750iL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('728', '11', 'Z9 Gran Turismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('729', '11', 'M Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('730', '11', 'M Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('731', '11', 'Z07 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('732', '11', 'Z3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('733', '11', '3 Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('734', '11', '328i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('735', '11', 'Just 4-2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('736', '11', 'Z13 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('737', '11', 'M3 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('738', '11', 'M3 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('739', '11', '3 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('740', '11', '325i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('741', '11', '8 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('742', '11', 'Z1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('743', '11', 'M3 Evolution');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('744', '11', 'M 635 CSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('745', '11', '325i Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('746', '11', 'F1 Turbo BT 52');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('747', '11', '524td');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('748', '11', 'M 535i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('749', '11', '745i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('750', '11', 'M1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('751', '11', 'M1 Procar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('752', '11', '635CSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('753', '11', '316');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('754', '11', '630CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('755', '11', '3.3Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('756', '11', '2002 turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('757', '11', 'Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('758', '11', '3.0 CSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('759', '11', '3.0 CSL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('760', '11', '2800 CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('761', '11', '2002');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('762', '11', '1600-2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('763', '11', '02-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('764', '11', '2000 CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('765', '11', '3200 Coupe CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('766', '11', '1500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('767', '11', '503 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('768', '11', '503 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('769', '11', 'Isetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('770', '11', '507');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('771', '11', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('772', '11', '502 V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('773', '11', '502 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('774', '11', '501');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('775', '11', '328 Kamm Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('776', '11', '335');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('777', '11', '328 Touring Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('778', '11', '327 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('779', '11', '328');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('780', '11', '326 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('781', '11', '319-1 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('782', '11', '315-1 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('783', '11', '303 Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('784', '11', '320 PS Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('785', '11', '315 PS DA 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('786', '12', 'Arnage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('787', '12', 'Continental GT V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('788', '12', 'Arnage Blue Train Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('789', '12', 'Arnage Drophead Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('790', '12', 'Mulsanne Diamond Jubilee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('791', '12', 'Arnage Final Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('792', '12', 'Arnage Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('793', '12', 'Arnage R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('794', '12', 'Arnage Red Label');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('795', '12', 'Arnage RL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('796', '12', 'Mulsanne');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('797', '12', 'Arnage T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('798', '12', 'Azure');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('799', '12', 'Azure Final Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('800', '12', 'Azure T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('801', '12', 'Brooklands');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('802', '12', 'Continental Flying Spur');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('803', '12', 'Continental Flying Spur Series 51');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('804', '12', 'Continental Flying Spur Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('805', '12', 'Continental Flying Star');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('806', '12', 'Continental GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('807', '12', 'Continental GTC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('808', '12', 'Continental GT Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('809', '12', 'Continental GT Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('810', '12', 'Continental GT Speed new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('811', '12', 'Continental GT3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('812', '12', 'Continental GTC Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('813', '12', 'Continental GTC V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('814', '12', 'Continental R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('815', '12', 'Continental Supersports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('816', '12', 'Continental Supersports Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('817', '12', 'Continental T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('818', '12', 'Embiricos');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('819', '12', 'EXP 9 F Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('820', '12', 'EXP Speed 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('821', '12', 'GTZ Zagato Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('822', '12', 'Mulsanne Mulliner');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('823', '12', 'R-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('824', '12', 'S1 Continental');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('825', '12', 'State Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('826', '12', 'S1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('827', '12', 'T1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('828', '12', 'T2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('829', '12', '3-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('830', '12', '3-Series Compact');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('831', '12', '3-Series Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('832', '12', '3-Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('833', '12', 'M3 Frozen Gray');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('834', '12', '3-Series Long Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('835', '12', '3-Series Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('836', '12', '5-Series Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('837', '12', '3-Series Touring UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('838', '12', '3-Series UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('839', '12', '5 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('840', '12', '530d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('841', '12', '530d Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('842', '12', '530i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('843', '12', '530Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('844', '12', '530xi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('845', '12', '530xi Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('846', '12', '545i Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('847', '12', '5-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('848', '12', '5-Series ActiveHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('849', '12', '5-Series Gran Turismo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('850', '12', '5-Series Gran Turismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('851', '12', '5-Series Long-Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('852', '12', '5-Series Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('853', '12', '630i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('854', '12', '640d Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('855', '12', '640d xDrive Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('856', '12', '640i Gran Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('857', '12', '7-Series High Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('858', '12', '645Ci Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('859', '12', '650i Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('860', '12', '6-Series Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('861', '12', '6-Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('862', '12', '6-Series Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('863', '12', '6-Series Gran Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('864', '12', '6-Series Gran Coupe UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('865', '12', '7 ActiveHybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('866', '12', '730d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('867', '12', '750i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('868', '12', '750Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('869', '12', '750Li with Shadow Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('870', '12', '760Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('871', '12', '760Li E66');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('872', '12', '7-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('873', '12', '7-Series ActiveHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('874', '12', '7-Series UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('875', '12', 'Active Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('876', '12', 'ActiveE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('877', '12', 'Art Car Collection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('878', '12', 'Concept CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('879', '12', 'Concept M5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('880', '12', 'ConnectedDrive Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('881', '12', 'Coupe Range');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('882', '12', 'EfficientDynamics Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('883', '12', 'GINA Light Visionary Model Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('884', '12', 'Gran Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('885', '12', 'H2R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('886', '12', 'M-Zero Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('887', '12', 'H2R Hydrogen Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('888', '12', 'Hydrogen 7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('889', '12', 'i3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('890', '12', 'i8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('891', '12', 'i8 Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('892', '12', '635d Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('893', '12', 'M1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('894', '12', 'M135i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('895', '12', 'M135i Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('896', '12', 'M3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('897', '12', 'M3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('898', '12', 'M3 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('899', '12', 'M3 Convertible UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('900', '12', 'M3 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('901', '12', 'M3 Coupe UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('902', '12', 'M3 Coupe US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('903', '12', 'M3 CRT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('904', '12', 'M3 CSL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('905', '12', 'M3 GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('906', '12', 'M3 Pickup Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('907', '12', 'M3 Race Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('908', '12', 'M3 Saloon UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('909', '12', 'M3 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('910', '12', 'M3 Sedan US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('911', '12', 'M5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('912', '12', 'M5 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('913', '12', 'M5 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('914', '12', 'M5 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('915', '12', 'M5 US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('916', '12', 'M550d xDrive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('917', '12', 'M550d xDrive Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('918', '12', 'M6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('919', '12', 'M6 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('920', '12', 'M6 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('921', '12', 'Z4 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('922', '12', 'M6 Convertible Neiman Marcus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('923', '12', 'M6 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('924', '12', '7 Series High Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('925', '12', 'M6 Coupe US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('926', '12', 'Mille Miglia Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('927', '12', 'Scooter C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('928', '12', 'X1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('929', '12', 'X1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('930', '12', 'X1 xDrive28i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('931', '12', 'X3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('932', '12', 'X3 2.0d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('933', '12', 'X3 3.0i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('934', '12', 'X3 EfficientDynamics Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('935', '12', 'X3 Limited Sport Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('936', '12', 'X3 xDrive20d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('937', '12', 'X3 xDrive35i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('938', '12', 'X5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('939', '12', 'X5 3.0d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('940', '12', 'X5 4.4i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('941', '12', 'X5 4.8i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('942', '12', 'X5 4.8is');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('943', '12', 'X5 M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('944', '12', 'X5 M50d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('945', '12', 'X5 M-Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('946', '12', 'X5 Security');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('947', '12', 'X5 Security Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('948', '12', 'X5 xDrive35d BluePerformance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('949', '12', 'X6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('950', '12', 'X6 ActiveHybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('951', '12', 'X6 ActiveHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('952', '12', 'X6 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('953', '12', 'X6 M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('954', '12', 'X6 M50d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('955', '12', 'X6 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('956', '12', '645Ci');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('957', '12', 'Z4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('958', '12', 'Z4 2.5i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('959', '12', 'Z4 Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('960', '12', 'Z4 GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('961', '12', '325Ci Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('962', '12', 'Z4 M Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('963', '12', '318Ci Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('964', '12', 'Z4 M Coupe UK version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('965', '12', 'Z4 M Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('966', '12', 'Z4 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('967', '12', 'Z4 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('968', '12', 'Zagato Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('969', '12', 'Zagato Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('970', '12', 'xActivity Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('971', '12', 'X5 4.6is');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('972', '12', 'CS1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('973', '12', '7 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('974', '12', '760i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('975', '12', '760Li Yachtline Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('976', '12', '740d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('977', '12', 'Z8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('978', '12', 'Z18 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('979', '12', 'X Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('980', '12', 'L7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('981', '12', '740iL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('982', '12', '740i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('983', '12', '540i Protection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('984', '12', '540i M Sportpaket');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('985', '12', '525i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('986', '12', 'Z9 Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('987', '12', '7 Series Protection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('988', '12', '750iL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('989', '12', 'Z9 Gran Turismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('990', '12', 'M Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('991', '12', 'M Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('992', '12', 'Z07 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('993', '12', 'Z3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('994', '12', '3 Series Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('995', '12', '328i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('996', '12', 'Just 4-2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('997', '12', 'Z13 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('998', '12', 'M3 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('999', '12', 'M3 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1000', '12', '3 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1001', '12', '325i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1002', '12', '8 Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1003', '12', 'Z1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1004', '12', 'M3 Evolution');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1005', '12', 'M 635 CSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1006', '12', '325i Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1007', '12', 'F1 Turbo BT 52');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1008', '12', '524td');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1009', '12', 'M 535i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1010', '12', '745i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1011', '12', 'M1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1012', '12', 'M1 Procar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1013', '12', '635CSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1014', '12', '316');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1015', '12', '630CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1016', '12', '3.3Li');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1017', '12', '2002 turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1018', '12', 'Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1019', '12', '3.0 CSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1020', '12', '3.0 CSL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1021', '12', '2800 CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1022', '12', '2002');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1023', '12', '1600-2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1024', '12', '02-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1025', '12', '2000 CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1026', '12', '3200 Coupe CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1027', '12', '1500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1028', '12', '503 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1029', '12', '503 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1030', '12', 'Isetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1031', '12', '507');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1032', '12', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1033', '12', '502 V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1034', '12', '502 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1035', '12', '501');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1036', '12', '328 Kamm Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1037', '12', '335');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1038', '12', '328 Touring Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1039', '12', '327 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1040', '12', '328');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1041', '12', '326 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1042', '12', '319-1 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1043', '12', '315-1 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1044', '12', '303 Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1045', '12', '320 PS Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1046', '12', '315 PS DA 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1047', '13', 'B99 GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1048', '13', 'B99 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1049', '14', '800 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1050', '14', 'Bullit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1051', '14', 'Bullit Black Arrow');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1052', '14', 'Bullit Coupe 800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1053', '14', 'E V12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1054', '14', 'E V12 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1055', '14', 'Mercedes Benz GLK V12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1056', '14', 'Mercedes-Benz A-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1057', '14', 'Mercedes-Benz B-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1058', '14', 'Mercedes-Benz C V8 Sports Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1059', '14', 'Mercedes-Benz C-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1060', '14', 'Mercedes-Benz C-Class Sportcoupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1061', '14', '700 Biturbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1062', '14', 'Mercedes-Benz C-Class Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1063', '14', 'Mercedes-Benz CLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1064', '14', 'E V12 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1065', '14', 'Mercedes-Benz E-Class Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1066', '14', 'B63 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1067', '14', 'Mercedes-Benz E-Class Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1068', '14', 'Mercedes-Benz G-Class V12 S Biturbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1069', '14', 'Mercedes-Benz GLK-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1070', '14', 'Mercedes-Benz M-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1071', '14', 'Ultimate 112');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1072', '14', 'Mercedes-Benz R-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1073', '14', 'Mercedes-Benz SLR Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1074', '14', 'Mercedes-Benz S-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1075', '14', 'Mercedes-Benz SL65 AMG Black Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1076', '14', 'Mercedes-Benz SL-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1077', '14', 'Mercedes-Benz SLK');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1078', '14', 'Mercedes-Benz CL Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1079', '14', 'Mercedes-Benz CLS B63 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1080', '14', 'Mercedes-Benz SLK-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1081', '14', 'Mercedes-Benz SLS AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1082', '14', 'Mercedes-Benz SLS AMG Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1083', '14', 'Mercedes-Benz SLS AMG Widestar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1084', '14', 'Mercedes-Benz Viano V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1085', '14', 'Rocket');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1086', '14', 'Rocket 800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1087', '14', 'Rocket Police Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1088', '14', 'Smart fortwo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1089', '14', 'Mercedes-Benz SLR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1090', '14', 'smart fortwo electric drive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1091', '14', 'SV12 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1092', '14', 'SV12 R Biturbo 800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1093', '14', 'SV12 S Biturbo Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1094', '14', 'SV12 S Biturbo Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1095', '14', 'Tesla Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1096', '14', 'Ultimate 101');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1097', '14', 'Ultimate 120');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1098', '14', 'Smart Roadster Coupe V6 biturbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1099', '14', 'Smart Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1100', '14', 'SV 12 Bi-Turbo Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1101', '14', 'Mercedes-Benz Viano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1102', '14', 'Mercedes-Benz G V12 Biturbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1103', '14', 'Mercedes-Benz G-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1104', '14', 'Mercedes-Benz E V12 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1105', '14', 'Mercedes-Benz E-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1106', '14', 'Mercedes-Benz CLK K8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1107', '14', 'Mercedes-Benz CLK');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1108', '14', 'Mercedes-Benz CL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1109', '14', 'Mercedes-Benz Vaneo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1110', '14', 'Mercedes-Benz K8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1111', '14', 'Maybach');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1112', '15', 'Beira');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1113', '16', 'Veyron Grand Sport Vitesse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1114', '16', 'Veyron Super Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1115', '16', 'Veyron Grand Sport LOr Blanc');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1116', '16', 'Veyron Grand Sport Sang Bleu');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1117', '16', 'Veyron Grand Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1118', '16', 'Veyron Fbg par Hermes');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1119', '16', 'Veyron Centenaire');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1120', '16', 'Veyron Bleu Centenaire');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1121', '16', 'Veyron');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1122', '16', 'Galibier Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1123', '16', 'Veyron Sang Noir');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1124', '16', 'Veyron Fbg par Hermes');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1125', '16', 'Veyron Pur Sang');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1126', '16', 'EB 164 Veyron');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1127', '17', '2-2 Bengal Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1128', '17', 'Blackhawk Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1129', '17', 'Centurion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1130', '17', 'Century');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1131', '17', 'Cielo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1132', '17', 'Enclave');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1133', '17', 'Enclave Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1134', '17', 'Encore');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1135', '17', 'Envision Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1136', '17', 'GL8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1137', '17', 'Business Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1138', '17', 'Invicta Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1139', '17', 'Jay Lenos Roadmaster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1140', '17', 'LaCrosse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1141', '17', 'LaCrosse CSX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1142', '17', 'LaCrosse CXS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1143', '17', 'LaCrosse GL Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1144', '17', 'LaCrosse Super');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1145', '17', 'LeSabre');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1146', '17', 'LeSabre Celebration Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1147', '17', 'LeSabre Custom');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1148', '17', 'LeSabre Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1149', '17', 'Lucerne CXS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1150', '17', 'Lucerne Super');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1151', '17', 'Park Avenue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1152', '17', 'Park Avenue Ultra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1153', '17', 'Rainier');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1154', '17', 'Rainier CXL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1155', '17', 'Regal');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1156', '17', 'Regal Abboud GS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1157', '17', 'Regal Cielo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1158', '17', 'Regal GNX Show Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1159', '17', 'Regal GS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1160', '17', 'Regal GS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1161', '17', 'Rendezvous');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1162', '17', 'Rendezvous CX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1163', '17', 'Rendezvous CXL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1164', '17', 'Rendezvous Ultra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1165', '17', 'Riviera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1166', '17', 'Riviera Concept Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1167', '17', 'Roadmaster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1168', '17', 'Royaum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1169', '17', 'Signia Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1170', '17', 'Skylark');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1171', '17', 'Wildcat Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1172', '17', 'Silver Arrow Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1173', '17', 'Super Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1174', '17', 'Super Estate Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1175', '17', 'Super Riviera Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1176', '17', 'Super Riviera Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1177', '17', 'Terraza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1178', '17', 'Terraza CXL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1179', '17', 'Velite Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1180', '17', 'Verano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1181', '17', 'Verano Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1182', '17', 'XP2000 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1183', '17', 'XP-300 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1184', '17', 'YJob Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1185', '17', 'Model C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1186', '18', 'Aera Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1187', '18', 'ATS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1188', '18', 'BLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1189', '18', 'BLS Show Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1190', '18', 'CTS Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1191', '18', 'BLS Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1192', '18', 'Ciel Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1193', '18', 'Converj Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1194', '18', 'CTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1195', '18', 'CTS Euro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1196', '18', 'CTS Sport Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1197', '18', 'CTSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1198', '18', 'CTS-V Black Diamond Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1199', '18', 'Escalade Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1200', '18', 'CTS-V Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1201', '18', 'CTS-V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1202', '18', 'CTS-V Coupe Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1203', '18', 'CTS-V Euro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1204', '18', 'CTSV Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1205', '18', 'CTS Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1206', '18', 'CTS-V Sport Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1207', '18', 'CTSV with Accessories');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1208', '18', 'DeVille');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1209', '18', 'DeVille Armored');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1210', '18', 'DeVille DTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1211', '18', 'DeVille Presidential Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1212', '18', 'Escalade ESV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1213', '18', 'Escalade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1214', '18', 'BLS Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1215', '18', 'XLR Star Black Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1216', '18', 'Escalade ESV Executive Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1217', '18', 'Escalade ESVe Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1218', '18', 'DTS Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1219', '18', 'DTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1220', '18', 'Escalade ESV Platinum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1221', '18', 'Escalade European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1222', '18', 'Escalade EXT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1223', '18', 'Escalade Platinum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1224', '18', 'SRX Euro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1225', '18', 'Presidential Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1226', '18', 'Provoq Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1227', '18', 'Seville');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1228', '18', 'Seville SLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1229', '18', 'XLR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1230', '18', 'Seville STS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1231', '18', 'Sixteen Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1232', '18', 'SLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1233', '18', 'SRX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1234', '18', 'SRX European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1235', '18', 'STS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1236', '18', 'STS Euro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1237', '18', 'STS SAE 100');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1238', '18', 'STSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1239', '18', 'Urban Luxury Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1240', '18', 'Vizon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1241', '18', 'XLR Euro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1242', '18', 'Cien Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1243', '18', 'XLRV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1244', '18', 'Eldorado');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1245', '18', 'XTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1246', '18', 'XTS Platinum Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1247', '18', 'Imaj Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1248', '18', 'Eldorado ETC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1249', '18', 'Evoq Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1250', '18', 'Allante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1251', '18', 'Voyage Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1252', '18', 'Eldorado Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1253', '18', 'Cyclone Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1254', '18', 'El Camino Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1255', '18', 'Le Mans Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1256', '18', 'DeVille Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1257', '18', 'Coach 2-Door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1258', '18', 'LaSalle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1259', '19', 'T1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1260', '20', 'Mercedes-Benz S-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1261', '20', 'Mercedes-Benz M-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1262', '20', 'Mercedes-Benz B-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1263', '20', 'Mercedes-Benz SLK');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1264', '20', 'Mercedes-Benz CLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1265', '20', 'Mercedes-Benz A-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1266', '20', 'Mercedes-Benz E-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1267', '20', 'Mercedes-Benz SL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1268', '20', 'Mercedes-Benz CLK RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1269', '20', 'Mercedes-Benz CLK');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1270', '20', 'Mercedes-Benz C-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1271', '20', 'Mercedes-Benz S-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1272', '21', 'R600 Superlight');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1273', '21', 'Seven Roadsport 125 Monaco');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1274', '21', 'R500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1275', '22', '34 Coupe E85 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1276', '22', 'Aerovette');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1277', '22', 'Agile');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1278', '22', 'Astra 2.0 Flexpower Comfort');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1279', '22', 'Astra 2.0 Flexpower Elegance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1280', '22', 'Astra 2.0 Flexpower Elite');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1281', '22', 'Astra GSi 2.0 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1282', '22', 'Astro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1283', '22', 'Avalanche');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1284', '22', 'Avalanche LTZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1285', '22', 'Aveo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1286', '22', 'Aveo LS 4 Door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1287', '22', 'Aveo LS 5 Door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1288', '22', 'Aveo RS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1289', '22', 'Aveo Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1290', '22', 'Aveo5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1291', '22', 'Beat Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1292', '22', 'Bel Air Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1293', '22', 'Blazer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1294', '22', 'Borrego Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1295', '22', 'Camaro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1296', '22', 'Camaro 1LE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1297', '22', 'Camaro 45th Anniversary Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1298', '22', 'Camaro Black Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1299', '22', 'Camaro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1300', '22', 'Camaro Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1301', '22', 'Camaro Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1302', '22', 'Camaro Convertible EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1303', '22', 'Camaro Convertible Neiman Marcus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1304', '22', 'Camaro COPO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1305', '22', 'Camaro Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1306', '22', 'Camaro EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1307', '22', 'Camaro GS Racecar Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1308', '22', 'Camaro Hot Wheels Edition new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1309', '22', 'Camaro LS7 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1310', '22', 'Camaro Red Flash Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1311', '22', 'Camaro SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1312', '22', 'Camaro SS Convertible Indy 500 Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1313', '22', 'Camaro SS Indy 500 Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1314', '22', 'Camaro SSX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1315', '22', 'Camaro Transformers');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1316', '22', 'Camaro ZL1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1317', '22', 'Camaro ZL1 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1318', '22', 'Caprice Police Patrol Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1319', '22', 'Captiva');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1320', '22', 'Captiva Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1321', '22', 'Cavalier');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1322', '22', 'Cavalier Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1323', '22', 'Cavalier Drag');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1324', '22', 'Cavalier LS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1325', '22', 'Cavalier LS Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1326', '22', 'Cavalier Super Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1327', '22', 'Cavalier Turbo Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1328', '22', 'Cavalier Xtreme');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1329', '22', 'Cavalier Z24R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1330', '22', 'Celta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1331', '22', 'Chevelle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1332', '22', 'Cheyenne Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1333', '22', 'Cobalt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1334', '22', 'Cobalt LT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1335', '22', 'Cobalt Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1336', '22', 'Cobalt SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1337', '22', 'Cobalt SS Supercharged Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1338', '22', 'Code 130R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1339', '22', 'Colorado');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1340', '22', 'Colorado Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1341', '22', 'Colorado Cruz');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1342', '22', 'Colorado Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1343', '22', 'Colorado LS Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1344', '22', 'Colorado LS Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1345', '22', 'Colorado LS Regular Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1346', '22', 'Colorado LS Z71 Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1347', '22', 'Colorado LS Z71 Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1348', '22', 'Colorado Rally Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1349', '22', 'Colorado Regular Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1350', '22', 'Corvette');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1351', '22', 'Corvette 427 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1352', '22', 'Corvette Bondurant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1353', '22', 'Corvette C1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1354', '22', 'Corvette C2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1355', '22', 'Corvette C3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1356', '22', 'Corvette C4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1357', '22', 'Corvette C5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1358', '22', 'Corvette C5-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1359', '22', 'Corvette C6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1360', '22', 'Corvette C6R Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1361', '22', 'Corvette CERV III Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1362', '22', 'Corvette Daytona Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1363', '22', 'Corvette Grand Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1364', '22', 'Corvette GT1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1365', '22', 'Corvette Indy 500 Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1366', '22', 'Corvette Indy Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1367', '22', 'Corvette Mako Shark Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1368', '22', 'Corvette Manta Ray Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1369', '22', 'Corvette Sting Ray III Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1370', '22', 'Corvette Z06');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1371', '22', 'Corvette Z06 Carbon Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1372', '22', 'Corvette Z06 Centennial Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1373', '22', 'Corvette Z06 Commemorative Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1374', '22', 'Corvette Z06 Daytona 500 Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1375', '22', 'Corvette Z06X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1376', '22', 'Corvette ZR1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1377', '22', 'Cruze');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1378', '22', 'Cruze Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1379', '22', 'Cruze Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1380', '22', 'Cruze WTCC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1381', '22', 'Electric S-10 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1382', '22', 'Epica');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1383', '22', 'Equinox');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1384', '22', 'Equinox Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1385', '22', 'Express');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1386', '22', 'GPiX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1387', '22', 'Groove Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1388', '22', 'HHR LT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1389', '22', 'HHR Panel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1390', '22', 'HHR SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1391', '22', 'Impala');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1392', '22', 'Impala LS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1393', '22', 'Impala Police Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1394', '22', 'Impala Police Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1395', '22', 'Impala Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1396', '22', 'Impala SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1397', '22', 'Impala Super Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1398', '22', 'Jay Lenos Corvette C6RS E85');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1399', '22', 'Journey Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1400', '22', 'K5 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1401', '22', 'Kodiak');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1402', '22', 'Kodiak C4500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1403', '22', 'Lumina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1404', '22', 'Lumina SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1405', '22', 'Malibu');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1406', '22', 'Malibu ECO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1407', '22', 'Malibu LT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1408', '22', 'Malibu LTZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1409', '22', 'Malibu Maxx');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1410', '22', 'Malibu Maxx SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1411', '22', 'Malibu Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1412', '22', 'Malibu SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1413', '22', 'Malibu XTC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1414', '22', 'Matiz');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1415', '22', 'Matiz M3X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1416', '22', 'Miray Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1417', '22', 'Monte Carlo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1418', '22', 'Monte Carlo Brickyard Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1419', '22', 'Monte Carlo Dale Earnhardt Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1420', '22', 'Monte Carlo High Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1421', '22', 'Monte Carlo Looney Tunes');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1422', '22', 'Monte Carlo SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1423', '22', 'Nomad');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1424', '22', 'Nomad Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1425', '22', 'Nubira Station Wagon WTCC R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1426', '22', 'Onix new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1427', '22', 'Orlando');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1428', '22', 'Orlando Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1429', '22', 'S-10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1430', '22', 'S3X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1431', '22', 'Sail');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1432', '22', 'Sequel Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1433', '22', 'Silverado');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1434', '22', 'Silverado 2500 HD LTZ Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1435', '22', 'Silverado 3500 HD LTZ Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1436', '22', 'Silverado Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1437', '22', 'Silverado Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1438', '22', 'Silverado HD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1439', '22', 'Silverado Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1440', '22', 'Silverado Hydrogen Military Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1441', '22', 'Silverado Intimidator SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1442', '22', 'Silverado Regular Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1443', '22', 'Silverado SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1444', '22', 'Silverado SS Pace Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1445', '22', 'Silverado Z71 Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1446', '22', 'SOCAL SSR Bonneville Salt Flats');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1447', '22', 'Sonic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1448', '22', 'Sonic RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1449', '22', 'Sonic Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1450', '22', 'Spark');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1451', '22', 'SS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1452', '22', 'SSR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1453', '22', 'SSR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1454', '22', 'SSR Hot Rod Power Tour Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1455', '22', 'SSR Indy 500 Pace Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1456', '22', 'Stingray Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1457', '22', 'Stingray Racer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1458', '22', 'Suburban');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1459', '22', 'Suburban LTZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1460', '22', 'Tahoe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1461', '22', 'Tracker');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1462', '22', 'Tracker Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1463', '22', 'Trailblazer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1464', '22', 'TrailBlazer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1465', '22', 'TrailBlazer SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1466', '22', 'TrailBlazer Vortec');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1467', '22', 'Traverse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1468', '22', 'Trax');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1469', '22', 'Trax Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1470', '22', 'Tru 140S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1471', '22', 'Uplander');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1472', '22', 'Venture');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1473', '22', 'Volt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1474', '22', 'Volt Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1475', '22', 'Volt MPV5 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1476', '22', 'West Coast Customs HHR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1477', '22', 'WTCC Ultra Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1478', '22', 'YGM1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1479', '22', 'ZR2 Shark Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1480', '23', '200');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1481', '23', '300');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1482', '23', '200 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1483', '23', '200 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1484', '23', '200C EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1485', '23', '300 HEMI C Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1486', '23', '300 Luxury Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1487', '23', '300 SRT8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1488', '23', '300C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1489', '23', '300C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1490', '23', '300C Heritage Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1491', '23', '300C SRT UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1492', '23', '300C SRT8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1493', '23', '300C SRT8 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1494', '23', '300C Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1495', '23', '300C Touring Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1496', '23', '300C Touring SRT UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1497', '23', '300C Touring UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1498', '23', '300C UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1499', '23', '300M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1500', '23', 'Airflite Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1501', '23', 'Akino Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1502', '23', 'Aspen');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1503', '23', 'Atlantic Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1504', '23', 'California Cruiser Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1505', '23', 'Chronos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1506', '23', 'Citadel Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1507', '23', 'Crossfire');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1508', '23', 'Crossfire Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1509', '23', 'Crossfire Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1510', '23', 'Crossfire Roadster UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1511', '23', 'Crossfire SRT6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1512', '23', 'Crossfire SRT6 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1513', '23', 'Crossfire UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1514', '23', 'Delta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1515', '23', 'ecoVoyager Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1516', '23', 'EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1517', '23', 'Firepower Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1518', '23', 'GEM Peapod');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1519', '23', 'GT Cruiser Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1520', '23', 'Imperial Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1521', '23', 'Java Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1522', '23', 'ME FourTwelve Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1523', '23', 'Nassau Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1524', '23', 'Pacifica');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1525', '23', 'Pacifica Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1526', '23', 'Panel Cruiser Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1527', '23', 'Pronto Cruizer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1528', '23', 'PT Cruiser');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1529', '23', 'PT Cruiser Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1530', '23', 'PT Street Cruiser Pacific Coast Highway');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1531', '23', 'Sebring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1532', '23', 'Sebring Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1533', '23', 'Sebring UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1534', '23', 'Thunderbolt Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1535', '23', 'Town and Country');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1536', '23', 'Ypsilon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1537', '24', '2CV 6 Charleston');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1538', '24', '2CV Berline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1539', '24', '2CV Spcial');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1540', '24', '2CV Spot');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1541', '24', 'Berlingo Multispace');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1542', '24', 'C1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1543', '24', 'C1 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1544', '24', 'C1 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1545', '24', 'C2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1546', '24', 'C3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1547', '24', 'C3 Picasso');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1548', '24', 'C3 Pluriel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1549', '24', 'C3 Pluriel Charleston');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1550', '24', 'C3 Pluriel HDi 70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1551', '24', 'C3 VTR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1552', '24', 'C3 X-TR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1553', '24', 'C4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1554', '24', 'C4 Aircross');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1555', '24', 'C4 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1556', '24', 'C4 Coupe Enterprise');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1557', '24', 'C4 Coupe with Panoramic Sunroof');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1558', '24', 'C4 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1559', '24', 'C4 notchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1560', '24', 'C4 Picasso');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1561', '24', 'C4 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1562', '24', 'C4 Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1563', '24', 'C4 WRC HYmotion4 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1564', '24', 'C5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1565', '24', 'C5 Airscape Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1566', '24', 'C5 Break');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1567', '24', 'C5 Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1568', '24', 'C6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1569', '24', 'C8 Exclusive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1570', '24', 'C-Airdream Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1571', '24', 'CAirlounge Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1572', '24', 'C-Airplay Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1573', '24', 'C-Buggy Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1574', '24', 'C-Cactus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1575', '24', 'C-Crosser');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1576', '24', 'C-Crosser Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1577', '24', 'C-Elysee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1578', '24', 'C-Metisse Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1579', '24', 'Cruise Crosser Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1580', '24', 'C-SportLounge Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1581', '24', 'C-Zero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1582', '24', 'DS 19');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1583', '24', 'DS 19 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1584', '24', 'DS 21');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1585', '24', 'DS 21 Berline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1586', '24', 'DS 21 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1587', '24', 'DS 23 Break');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1588', '24', 'DS 23 IE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1589', '24', 'DS High Rider Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1590', '24', 'DS Inside Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1591', '24', 'DS3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1592', '24', 'DS3 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1593', '24', 'DS3 R3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1594', '24', 'DS3 Racing');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1595', '24', 'DS4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1596', '24', 'DS4 Racing Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1597', '24', 'DS5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1598', '24', 'GQ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1599', '24', 'Grand C4 Picasso');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1600', '24', 'GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1601', '24', 'Hypnos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1602', '24', 'Lacoste Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1603', '24', 'Metropolis Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1604', '24', 'Numero 9 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1605', '24', 'REVOLTe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1606', '24', 'SM');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1607', '24', 'SM Automat');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1608', '24', 'SM Presidential');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1609', '24', 'Survolt Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1610', '24', 'Traction Avant 11B Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1611', '24', 'Tubik Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1612', '24', 'Xsara Picasso');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1613', '25', 'C6W Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1614', '25', 'C6W');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1615', '25', 'T40');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1616', '25', 'B24');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1617', '26', 'Dokker');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1618', '26', 'Dokker Van');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1619', '26', 'Duster Trophee Andros');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1620', '26', 'Lodgy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1621', '26', 'Logan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1622', '26', 'Duster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1623', '26', 'Logan 1.4 MPI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1624', '26', 'Logan 1.6 MPI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1625', '26', 'Logan MCV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1626', '26', 'Logan Pickup');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1627', '26', 'Duster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1628', '26', 'Logan Steppe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1629', '26', 'Logan Van');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1630', '26', 'Sandero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1631', '26', 'Sandero Stepway');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1632', '27', 'Matiz Creative');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1633', '27', 'L4X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1634', '27', 'Nubira Station Wagon CDX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1635', '27', 'Lacetti SX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1636', '27', 'Lacetti CDX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1637', '28', 'ai Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1638', '28', 'Charade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1639', '28', 'Compagno Berlina 800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1640', '28', 'Copen');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1641', '28', 'Cuore');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1642', '28', 'Extol Compact Van');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1643', '28', 'Fourtrak');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1644', '28', 'Grand Move');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1645', '28', 'Hijet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1646', '28', 'Materia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1647', '28', 'Max Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1648', '28', 'Move');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1649', '28', 'PICO Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1650', '28', 'Sirion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1651', '28', 'Sportrak');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1652', '28', 'Terios');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1653', '28', 'Terios Kiri');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1654', '28', 'Terios Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1655', '28', 'UFE2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1656', '28', 'YRV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1657', '28', 'YRV Turbo 130');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1658', '29', 'Super Eight');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1659', '30', 'Deauville Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1660', '31', 'GTX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1661', '32', 'Airflow Tanker Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1662', '32', 'Avenger');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1663', '32', 'Avenger Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1664', '32', 'Avenger NASCAR Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1665', '32', 'Avenger RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1666', '32', 'Aviat Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1667', '32', 'Big Red Truck Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1668', '32', 'Caliber');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1669', '32', 'Caliber Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1670', '32', 'Caliber SRT4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1671', '32', 'Caravan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1672', '32', 'Caravan RT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1673', '32', 'Caravan SXT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1674', '32', 'Challenger Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1675', '32', 'Challenger Mopar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1676', '32', 'Challenger Rallye Redline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1677', '32', 'Challenger RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1678', '32', 'Challenger SRT10 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1679', '32', 'Challenger SRT8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1680', '32', 'Challenger SRT8 392');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1681', '32', 'Challenger SRT8 392 Yellow Jacket');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1682', '32', 'Challenger SRT8 Silver');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1683', '32', 'Challenger TA');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1684', '32', 'Challenger Targa Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1685', '32', 'Challenger V10 Mopar Drag Pak');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1686', '32', 'Charger');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1687', '32', 'Charger Daytona');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1688', '32', 'Charger Daytona RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1689', '32', 'Charger Mopar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1690', '32', 'Charger Police Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1691', '32', 'Charger Pursuit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1692', '32', 'Charger Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1693', '32', 'Charger RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1694', '32', 'Charger RT Concept Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1695', '32', 'Charger SRT8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1696', '32', 'Charger SRT8 Super Bee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1697', '32', 'Charger SXT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1698', '32', 'Circuit EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1699', '32', 'Coronet Police Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1700', '32', 'Dakota');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1701', '32', 'Dakota Club Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1702', '32', 'Dakota NHRA Pro Stock Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1703', '32', 'Dakota Quad Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1704', '32', 'Dakota RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1705', '32', 'Dakota Sport V8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1706', '32', 'Dart');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1707', '32', 'Daytona RT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1708', '32', 'Demon Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1709', '32', 'Durango');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1710', '32', 'Durango 4x4 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1711', '32', 'Durango Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1712', '32', 'Durango RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1713', '32', 'Durango SLT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1714', '32', 'Epic Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1715', '32', 'ESX3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1716', '32', 'EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1717', '32', 'Grand Caravan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1718', '32', 'Grand Caravan ES');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1719', '32', 'Grand Caravan RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1720', '32', 'Hornet Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1721', '32', 'Hot Wheels Quad Cab Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1722', '32', 'Intrepid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1723', '32', 'Intrepid ESX2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1724', '32', 'Journey');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1725', '32', 'Kahuna Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1726', '32', 'LRT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1727', '32', 'M80 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1728', '32', 'Magnum Police Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1729', '32', 'Magnum RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1730', '32', 'Magnum SRT8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1731', '32', 'Magnum SRT8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1732', '32', 'Magnum SXT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1733', '32', 'Maxx Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1734', '32', 'Neon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1735', '32', 'Neon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1736', '32', 'Neon RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1737', '32', 'Neon Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1738', '32', 'Neon Sport Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1739', '32', 'Neon SRT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1740', '32', 'Nitro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1741', '32', 'Nitro RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1742', '32', 'Nitro SLT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1743', '32', 'Power Wagon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1744', '32', 'PowerBox Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1745', '32', 'Ram');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1746', '32', 'Ram 1500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1747', '32', 'Ram 1500 Off-Road');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1748', '32', 'Ram 1500 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1749', '32', 'Ram 1500 with Optional HEMI Power');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1750', '32', 'Ram 3500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1751', '32', 'Ram Diesel Hybrid Electric Vehicle HEV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1752', '32', 'Ram Heavy Duty');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1753', '32', 'Ram Heavy Duty Cummins 600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1754', '32', 'Ram Laramie Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1755', '32', 'Ram Laramie Longhorn');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1756', '32', 'Ram Long-Hauler Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1757', '32', 'Ram Mega Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1758', '32', 'Ram NASCAR Craftsman Truck Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1759', '32', 'Ram Outdoorsman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1760', '32', 'Ram Power Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1761', '32', 'Ram Quad Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1762', '32', 'Ram SRT10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1763', '32', 'Ram T-Rex Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1764', '32', 'Ram Van');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1765', '32', 'Ram VTS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1766', '32', 'Ram Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1767', '32', 'Rampage Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1768', '32', 'Razor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1769', '32', 'Sidewinder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1770', '32', 'Sling Shot Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1771', '32', 'SRT Viper GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1772', '32', 'SRT Viper GTS Launch Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1773', '32', 'SRT Viper GTS-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1774', '32', 'SRT4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1775', '32', 'Stratus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1776', '32', 'Stratus Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1777', '32', 'Stratus RT Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1778', '32', 'Stratus Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1779', '32', 'Stratus Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1780', '32', 'Super8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1781', '32', 'Super8 Hemi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1782', '32', 'Tomahawk Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1783', '32', 'Venom Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1784', '32', 'Viper');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1785', '32', 'Viper ACR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1786', '32', 'Viper Competition Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1787', '32', 'Viper GT2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1788', '32', 'Viper GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1789', '32', 'Viper GTS Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1790', '32', 'Viper GTS-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1791', '32', 'Viper RT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1792', '32', 'Viper RT10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1793', '32', 'Viper RT10 Concept Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1794', '32', 'Viper RT10 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1795', '32', 'Viper SRT10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1796', '32', 'Viper SRT10 ACR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1797', '32', 'Viper SRT10 ACR-X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1798', '32', 'Viper SRT10 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1799', '32', 'Viper SRT10 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1800', '32', 'ZEO Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1801', '33', 'D8 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1802', '33', 'D8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1803', '34', 'Light Car Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1804', '34', 'LUV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1805', '34', 'Pontiac Solstice Hard Top Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1806', '34', 'Biwak Concep');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1807', '34', 'Showcar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1808', '34', 'Show Car No 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1809', '34', 'genX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1810', '34', 'Keinath GTC Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1811', '34', 'Cinema 7D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1812', '35', 'Aston Martin DBS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1813', '35', 'Bentley Continental GT Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1814', '35', 'Ferrari 575 Maranello');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1815', '35', 'Ferrari California');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1816', '35', 'Ferrari Enzo XX Evolution');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1817', '35', 'Ferrari FXX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1818', '35', 'Ford GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1819', '35', 'Koenigsegg CCR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1820', '35', 'Lamborghini Gallardo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1821', '35', 'Lamborghini Gallardo Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1822', '35', 'Lamborghini Gallardo Superleggera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1823', '35', 'Lamborghini Murcielago LP640 Nardo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1824', '35', 'Lamborghini Murcielago LP710 Audigier');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1825', '35', 'Lamborghini Murcielago LP750');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1826', '35', 'Maserati MC12 XX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1827', '35', 'Mercedes-Benz C63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1828', '35', 'Porsche 996 GT2 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1829', '35', 'Porsche 996 GT2 RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1830', '35', 'Porsche 996 Turbo Red-Black');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1831', '35', 'Porsche Cayenne Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1832', '36', 'Streamliner MS8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1833', '36', 'Clubman MS8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1834', '37', 'Artemis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1835', '37', 'Hemera Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1836', '38', 'Evantra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1837', '38', 'Vulca S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1838', '38', 'Antas V8 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1839', '39', 'BF MkII Force 6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1840', '39', 'BF MkII Force 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1841', '39', 'BF MkII GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1842', '39', 'BF MkII GT-P');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1843', '39', 'BF MkII Pursuit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1844', '39', 'BF MkII Super Pursuit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1845', '39', 'Cobra Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1846', '39', 'F6 R-Spec Typhoon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1847', '39', 'F6X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1848', '39', 'Falcon F6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1849', '39', 'Falcon F6 Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1850', '39', 'GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1851', '39', 'GT 40th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1852', '39', 'GT Cobra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1853', '39', 'GT-E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1854', '39', 'GT-P');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1855', '39', 'Super Pursuit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1856', '40', 'GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1857', '41', '288 GTO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1858', '41', '360 Challenge Stradale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1859', '41', '360 Modena');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1860', '41', '360 Modena Challenge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1861', '41', '360 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1862', '41', '360GTC Fiorano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1863', '41', '430 Scuderia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1864', '41', '456M GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1865', '41', '456M GT Scaglietti');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1866', '41', '458 Challenge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1867', '41', '458 Italia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1868', '41', '458 Italia China 20th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1869', '41', '458 Italia Grand Am');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1870', '41', '458 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1871', '41', '512 TR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1872', '41', '550 Barchetta Pininfarina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1873', '41', '550 Maranello');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1874', '41', '575 GTC Evoluzione');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1875', '41', '575 GTZ Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1876', '41', '575GTC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1877', '41', '575M Maranello');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1878', '41', '575M Superamerica');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1879', '41', '599 GTB Fiorano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1880', '41', '599 GTB Fiorano China');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1881', '41', '599 GTB Fiorano HGTE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1882', '41', '599 GTB Fiorano One-to-One');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1883', '41', '599 GTB HY-KERS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1884', '41', '599 GTO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1885', '41', '599 SA Aperta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1886', '41', '599XX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1887', '41', '612 Scaglietti');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1888', '41', '612 Scaglietti One-to-One');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1889', '41', '612 Scaglietti Wallpaper');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1890', '41', 'California');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1891', '41', 'Design Competition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1892', '41', 'Enzo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1893', '41', 'F12berlinetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1894', '41', 'F2005');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1895', '41', 'F40');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1896', '41', 'F430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1897', '41', 'F430 Challenge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1898', '41', 'F430 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1899', '41', 'F50');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1900', '41', 'FF');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1901', '41', 'FF Blue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1902', '41', 'FF Silver');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1903', '41', 'FXX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1904', '41', 'FXX Evolution');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1905', '41', 'P540 Superfast Aperta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1906', '41', 'Scuderia Spider 16M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1907', '41', 'SP12 EC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1908', '42', '125');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1909', '42', '126');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1910', '42', '127');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1911', '42', '128');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1912', '42', '500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1913', '42', '505');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1914', '42', '510');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1915', '42', '520');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1916', '42', '525');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1917', '42', '600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1918', '42', '1400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1919', '42', '1500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1920', '42', '1800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1921', '42', '110 HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1922', '42', '1100 D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1923', '42', '1100 D Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1924', '42', '1100 E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1925', '42', '1100 R Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1926', '42', '12 HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1927', '42', '1200 Granluce Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1928', '42', '12-15 HP Zero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1929', '42', '124 Familiare');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1930', '42', '124 Saloon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1931', '42', '124 Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1932', '42', '124 Sport Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1933', '42', '125 Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1934', '42', '127 Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1935', '42', '127 Panorama');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1936', '42', '128 Rally');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1937', '42', '130 2800 Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1938', '42', '130 HP Grand Prix de France Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1939', '42', '131 Abarth Rally');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1940', '42', '131 Mirafiori');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1941', '42', '131 Racing');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1942', '42', '131 Supermirafiori');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1943', '42', '132 1600 GL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1944', '42', '132 Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1945', '42', '132 GLS 1800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1946', '42', '1400 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1947', '42', '1500 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1948', '42', '1500 S Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1949', '42', '15-25 HP Brevetti Tipo 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1950', '42', '16-20 HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1951', '42', '18-24 HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1952', '42', '20-30 HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1953', '42', '2300 Saloon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1954', '42', '2300 Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1955', '42', '24 HP Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1956', '42', '2800 Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1957', '42', '28-40 HP Corsa Targa Florio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1958', '42', '3 1-2 HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1959', '42', '30-45 HP Tipo 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1960', '42', '500 Abarth');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1961', '42', '500 Abarth Assetto Corse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1962', '42', '500 Abarth esseesse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1963', '42', '500 Abarth R3T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1964', '42', '500 Barbie Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1965', '42', '500 Coupe Zagato Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1966', '42', '500 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1967', '42', '500C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1968', '42', '500C Abarth');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1969', '42', '500C Abarth esseesse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1970', '42', '500L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1971', '42', '501 S Torpedo Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1972', '42', '501 Saloon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1973', '42', '501 SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1974', '42', '507 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1975', '42', '508 Balilla 3 Marce');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1976', '42', '508 Balilla Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1977', '42', '508 C Balilla 1100');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1978', '42', '512 Torpedo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1979', '42', '514 Saloon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1980', '42', '518 Ardita 2000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1981', '42', '519 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1982', '42', '521 C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1983', '42', '522 C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1984', '42', '525 Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1985', '42', '527 Ardita 2500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1986', '42', '600 50th');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1987', '42', '695 Abarth Maserati Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1988', '42', '695 Abarth Tributo Ferrari');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1989', '42', '75 HP Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1990', '42', '801-402 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1991', '42', '804-404 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1992', '42', '805-405 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1993', '42', '806 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1994', '42', '850 Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1995', '42', '850 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1996', '42', '8V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1997', '42', '900 E Panorama');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1998', '42', 'Albea');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('1999', '42', 'Argenta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2000', '42', 'Barchetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2001', '42', 'Barchetta First Class of Alviero Martini');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2002', '42', 'Bravo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2003', '42', 'Bravo 1.6 Multijet 16v');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2004', '42', 'Brevetti');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2005', '42', 'Campagnola');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2006', '42', 'Campagnola A');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2007', '42', 'Cinquecento Elettra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2008', '42', 'Cinquecento Sporting 1.1i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2009', '42', 'Croma');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2010', '42', 'Dino Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2011', '42', 'Doblo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2012', '42', 'Doblo Cargo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2013', '42', 'Fiacre');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2014', '42', 'Fiorino');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2015', '42', 'Fiorino Qubo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2016', '42', 'Freemont');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2017', '42', 'Freemont AWD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2018', '42', 'Grande Punto');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2019', '42', 'Grande Punto Abarth');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2020', '42', 'Grande Punto Abarth Preview');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2021', '42', 'Grande Punto Abarth S2000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2022', '42', 'Grande Punto Natural Power');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2023', '42', 'Idea');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2024', '42', 'Idea 1.4 16v Emotion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2025', '42', 'Idea 1.9 Multijet Dynamic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2026', '42', 'Idea 5terre Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2027', '42', 'Linea');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2028', '42', 'Marrakech Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2029', '42', 'Mefistofele Eldridge Record');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2030', '42', 'Multipla');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2031', '42', 'Oltre Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2032', '42', 'Palio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2033', '42', 'Palio Weekend');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2034', '42', 'Panda');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2035', '42', 'Panda 100HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2036', '42', 'Panda 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2037', '42', 'Panda 4x4 1.3 Multijet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2038', '42', 'Panda Actual');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2039', '42', 'Panda Alessi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2040', '42', 'Panda Cross');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2041', '42', 'Panda Dynamic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2042', '42', 'Panda Elettra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2043', '42', 'Panda Emotion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2044', '42', 'Panda Multi Eco Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2045', '42', 'Panda Trekking');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2046', '42', 'Panda UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2047', '42', 'Portofino Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2048', '42', 'Punto');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2049', '42', 'Punto Active');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2050', '42', 'Punto Dynamic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2051', '42', 'Punto Evo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2052', '42', 'Punto Evo Abarth');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2053', '42', 'Punto Evo Abarth esseesse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2054', '42', 'Punto Natural Power');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2055', '42', 'Punto Rally');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2056', '42', 'Punto Sporting');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2057', '42', 'Regata 100 Weekend');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2058', '42', 'Regata 75');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2059', '42', 'Ritmo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2060', '42', 'Ritmo S 85 Cabrio Bertone');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2061', '42', 'Ritmo Supercabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2062', '42', 'S.57-14B Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2063', '42', 'S.74 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2064', '42', 'S.76 300 HP Record');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2065', '42', 'Sedici');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2066', '42', 'Seicento');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2067', '42', 'Simba Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2068', '42', 'Stilo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2069', '42', 'Stilo Abarth');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2070', '42', 'Stilo Active');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2071', '42', 'Stilo Dynamic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2072', '42', 'Stilo M.Y. 1.9 Multijet 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2073', '42', 'Stilo Multi Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2074', '42', 'Stilo Multi Wagon Actual');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2075', '42', 'Stilo Multi Wagon Dynamic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2076', '42', 'Strada');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2077', '42', 'Strada Malibu');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2078', '42', 'Taunus Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2079', '42', 'Tempra SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2080', '42', 'Tipo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2081', '42', 'Tipo 3 TER');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2082', '42', 'Topolino 500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2083', '42', 'Topolino 500 B');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2084', '42', 'Topolino 500 C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2085', '42', 'Trepiuno Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2086', '42', 'Turbina Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2087', '42', 'Ulysse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2088', '42', 'Ulysse 2.0 JTD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2089', '42', 'Ulysse Emotion 2.0 16v');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2090', '42', 'Uno');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2091', '42', 'Uno Cabrio Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2092', '42', 'Viaggio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2093', '42', 'X1-9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2094', '43', 'Karma');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2095', '43', 'Karma S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2096', '43', 'Karma Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2097', '43', 'Tramonto');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2098', '43', 'Latigo CS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2099', '44', '4-Trac Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2100', '44', 'Airstream Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2101', '44', 'AU Falcon XR6 VCT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2102', '44', 'BA Fairlane G220 MkII');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2103', '44', 'BA Fairlane Ghia MkII');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2104', '44', 'BA Falcon RTV Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2105', '44', 'BA Falcon XR6 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2106', '44', 'BA Falcon XR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2107', '44', 'BA MkII Falcon Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2108', '44', 'BA MkII Falcon XR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2109', '44', 'BF Falcon XR8 Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2110', '44', 'BF MkII Falcon XR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2111', '44', 'B-MAX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2112', '44', 'B-MAX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2113', '44', 'Bronco Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2114', '44', 'C-MAX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2115', '44', 'C-MAX Energi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2116', '44', 'C-MAX Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2117', '44', 'Contour');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2118', '44', 'Cougar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2119', '44', 'Crown Victoria');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2120', '44', 'Crown Victoria LX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2121', '44', 'EB II Falcon GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2122', '44', 'EcoSport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2123', '44', 'Edge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2124', '44', 'Edge Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2125', '44', 'EL Falcon GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2126', '44', 'Equator Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2127', '44', 'Escape');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2128', '44', 'Escape Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2129', '44', 'Escape Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2130', '44', 'Escort ZX2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2131', '44', 'E-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2132', '44', 'Evos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2133', '44', 'Excursion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2134', '44', 'Expedition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2135', '44', 'Explorer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2136', '44', 'Explorer America Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2137', '44', 'Explorer Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2138', '44', 'Explorer Sport Trac');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2139', '44', 'Explorer Sport Trac Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2140', '44', 'F-150');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2141', '44', 'F-150 Foose Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2142', '44', 'F-150 FX4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2143', '44', 'F150 Harley Davidson');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2144', '44', 'F-150 Harley Davidson');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2145', '44', 'F-150 Harley-Davidson');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2146', '44', 'F-150 Platinum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2147', '44', 'F-150 SFE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2148', '44', 'F-150 SVT Lightning');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2149', '44', 'F-150 SVT Raptor R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2150', '44', 'F-150 SVT Raptor SuperCrew');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2151', '44', 'F-250 Super Chief Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2152', '44', 'F-250 Super Duty');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2153', '44', 'F-350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2154', '44', 'F-350 Super Duty');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2155', '44', 'F-450 Harley-Davidson');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2156', '44', 'F-450 Super Duty');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2157', '44', 'Fairlane Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2158', '44', 'Falcon Havoc');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2159', '44', 'Falcon XR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2160', '44', 'FG Falcon G6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2161', '44', 'FG Falcon G6E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2162', '44', 'FG Falcon G6E Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2163', '44', 'FG Falcon Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2164', '44', 'FG Falcon Ute R6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2165', '44', 'FG Falcon Ute XR6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2166', '44', 'FG Falcon Ute XR6 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2167', '44', 'FG Falcon Ute XR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2168', '44', 'FG Falcon XR6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2169', '44', 'FG Falcon XR6 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2170', '44', 'FG Falcon XR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2171', '44', 'FG Falcon XT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2172', '44', 'Fiesta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2173', '44', 'Fiesta 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2174', '44', 'Fiesta ECOnetic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2175', '44', 'Fiesta RS WRC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2176', '44', 'Fiesta S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2177', '44', 'Fiesta Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2178', '44', 'Fiesta ST');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2179', '44', 'Fiesta ST Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2180', '44', 'Five Hundred');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2181', '44', 'Five Hundred Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2182', '44', 'Flex');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2183', '44', 'Focus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2184', '44', 'Focus 3door European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2185', '44', 'Focus 4door Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2186', '44', 'Focus 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2187', '44', 'Focus CMax');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2188', '44', 'Focus CMax Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2189', '44', 'Focus Coupe-Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2190', '44', 'Focus ECOnetic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2191', '44', 'Focus Electric');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2192', '44', 'Focus Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2193', '44', 'Focus European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2194', '44', 'Focus FR200');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2195', '44', 'Focus Race Car Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2196', '44', 'Focus RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2197', '44', 'Focus RS500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2198', '44', 'Focus RS8 with Cammer Engine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2199', '44', 'Focus Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2200', '44', 'Focus ST');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2201', '44', 'Focus ST500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2202', '44', 'Focus ST-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2203', '44', 'Focus TDCi 5door European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2204', '44', 'Focus Touring Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2205', '44', 'Focus Vignale Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2206', '44', 'Focus X Road');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2207', '44', 'Focus Zetec S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2208', '44', 'Formula');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2209', '44', 'FR100 Panel Truck with Cammer Engine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2210', '44', 'Freestar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2211', '44', 'Freestyle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2212', '44', 'Freestyle Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2213', '44', 'F-Series Cabelas FX4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2214', '44', 'Fusion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2215', '44', 'Fusion Energi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2216', '44', 'Fusion EUR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2217', '44', 'Fusion Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2218', '44', 'Fusion NASCAR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2219', '44', 'Fusion SES V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2220', '44', 'Galaxy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2221', '44', 'Grand C-MAX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2222', '44', 'GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2223', '44', 'GT Heritage Limited-Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2224', '44', 'GT40');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2225', '44', 'GT40 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2226', '44', 'GT90 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2227', '44', 'GTX1 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2228', '44', 'Interceptor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2229', '44', 'iosis Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2230', '44', 'iosis MAX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2231', '44', 'iosis X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2232', '44', 'Ka');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2233', '44', 'King Ranch F150 SuperCrew');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2234', '44', 'Kuga');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2235', '44', 'Kuga UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2236', '44', 'Mad Max Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2237', '44', 'Mondeo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2238', '44', 'Mondeo 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2239', '44', 'Mondeo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2240', '44', 'Mondeo Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2241', '44', 'Mondeo ST TDCi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2242', '44', 'Mondeo ST220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2243', '44', 'Mondeo ST220 Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2244', '44', 'Mondeo Titanium TDCi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2245', '44', 'Mondeo Titanium V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2246', '44', 'Mondeo Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2247', '44', 'Mondeo Wagon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2248', '44', 'Mustang');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2249', '44', 'Mustang 35th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2250', '44', 'Mustang 40th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2251', '44', 'Mustang 428 Cobra Jet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2252', '44', 'Mustang at SEMA 2004');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2253', '44', 'Mustang AV-X10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2254', '44', 'Mustang Boss 302');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2255', '44', 'Mustang Boss 302 Laguna Seca');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2256', '44', 'Mustang Boss 302R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2257', '44', 'Mustang Boss 351');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2258', '44', 'Mustang Boss 429');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2259', '44', 'Mustang Bullitt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2260', '44', 'Mustang Bullitt Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2261', '44', 'Mustang Bullitt Fastback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2262', '44', 'Mustang Bullitt GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2263', '44', 'Mustang Cobra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2264', '44', 'Mustang Cobra II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2265', '44', 'Mustang Cobra Indy Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2266', '44', 'Mustang Cobra Jet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2267', '44', 'Mustang Cobra Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2268', '44', 'Mustang Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2269', '44', 'Mustang DUB Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2270', '44', 'Mustang Fastback with Cammer Engine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2271', '44', 'Mustang FR500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2272', '44', 'Mustang FR500C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2273', '44', 'Mustang FR500CJ Cobra Jet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2274', '44', 'Mustang Giugiaro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2275', '44', 'Mustang Glass Roof');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2276', '44', 'Mustang GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2277', '44', 'Mustang GT California Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2278', '44', 'Mustang GT Centennial Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2279', '44', 'Mustang GT Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2280', '44', 'Mustang GT Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2281', '44', 'Mustang GT Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2282', '44', 'Mustang GTP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2283', '44', 'Mustang GTR 40th Anniversary Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2284', '44', 'Mustang High Country Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2285', '44', 'Mustang II Cobra II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2286', '44', 'Mustang II King Cobra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2287', '44', 'Mustang K-Code');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2288', '44', 'Mustang Mach 1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2289', '44', 'Mustang Mach 1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2290', '44', 'Mustang Mach 2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2291', '44', 'Mustang Mach III');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2292', '44', 'Mustang Miller');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2293', '44', 'Mustang NHRA');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2294', '44', 'Mustang Pony');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2295', '44', 'Mustang Q-Code');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2296', '44', 'Mustang Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2297', '44', 'Mustang Racecar Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2298', '44', 'Mustang Roadster Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2299', '44', 'Mustang Shelby GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2300', '44', 'Mustang Shelby GT Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2301', '44', 'Mustang Shelby GT350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2302', '44', 'Mustang Shelby GT-350H');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2303', '44', 'Mustang Shelby GT500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2304', '44', 'Mustang Shelby GT500 Cobra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2305', '44', 'Mustang Shelby GT500 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2306', '44', 'Mustang Shelby GT500 KR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2307', '44', 'Mustang Shelby GT500 Red Stripe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2308', '44', 'Mustang Shelby GT500KR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2309', '44', 'Mustang Shelby GT500KR KITT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2310', '44', 'Mustang Shelby GT-H');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2311', '44', 'Mustang Shelby GT-H Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2312', '44', 'Mustang SVO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2313', '44', 'Mustang SVT Cobra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2314', '44', 'Mustang SVT Cobra 10th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2315', '44', 'Mustang SVT Cobra Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2316', '44', 'Mustang SVT Cobra R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2317', '44', 'Mustang T-5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2318', '44', 'Mustang Turbo GT350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2319', '44', 'Mustang V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2320', '44', 'Mustang V6 Pony');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2321', '44', 'Mustang Warriors In Pink');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2322', '44', 'Police Interceptor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2323', '44', 'Police Interceptor Utility Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2324', '44', 'Probe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2325', '44', 'Puma');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2326', '44', 'R5 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2327', '44', 'R7 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2328', '44', 'Ranger');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2329', '44', 'Ranger Max Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2330', '44', 'Ranger Wildtrak');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2331', '44', 'Reflex Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2332', '44', 'Shelby Cobra Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2333', '44', 'Shelby GR1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2334', '44', 'Shelby SVT Cobra GT500 Mustang Show Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2335', '44', 'S-MAX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2336', '44', 'Start Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2337', '44', 'Stealth Police Interceptor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2338', '44', 'SteetKa UK Winter Edition with Hard Top');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2339', '44', 'Super Duty');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2340', '44', 'SVT Contour');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2341', '44', 'SVT Explorer Sport Trac Adrenalin');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2342', '44', 'SVT Focus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2343', '44', 'SVT Mustang Cobra MystiChrome');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2344', '44', 'SYNus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2345', '44', 'Taurus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2346', '44', 'Taurus SHO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2347', '44', 'Taurus X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2348', '44', 'Territory');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2349', '44', 'Thunderbird');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2350', '44', 'Thunderbird FAB 1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2351', '44', 'Thunderbird Neiman Marcus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2352', '44', 'Tourneo Custom');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2353', '44', 'Tourneo Custom Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2354', '44', 'Transit Connect');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2355', '44', 'Transit Connect Electric');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2356', '44', 'Transit Connect Taxi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2357', '44', 'Transit Custom');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2358', '44', 'Vertrek Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2359', '44', 'Verve 5-door Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2360', '44', 'Verve Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2361', '44', 'Verve Sedan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2362', '44', 'Visos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2363', '44', 'Windstar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2364', '44', 'XA Falcon GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2365', '45', 'EN-V Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2366', '45', 'PUMA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2367', '45', 'HydroGen4 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2368', '45', 'Sequel Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2369', '45', 'HyWire Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2370', '46', 'Acadia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2371', '46', 'Denali XT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2372', '46', 'Envoy Denali');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2373', '46', 'Envoy XL Denali');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2374', '46', 'Granite Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2375', '46', 'Graphyte Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2376', '46', 'Sierra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2377', '46', 'Sierra 2500 HD SLT Extended Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2378', '46', 'Sierra 3500 HD SLT Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2379', '46', 'Sierra All Terrain HD Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2380', '46', 'Sierra Classic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2381', '46', 'Sierra Denali');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2382', '46', 'Sierra Denali 1500 Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2383', '46', 'Sierra Hybrid Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2384', '46', 'Terrain');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2385', '46', 'Terrain Denali');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2386', '46', 'Yukon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2387', '46', 'Yukon Denali');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2388', '46', 'Yukon Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2389', '46', 'Yukon XL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2390', '47', 'Spano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2391', '48', 'Teewave AR.1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2392', '48', 'T.25 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2393', '49', 'Tornante by Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2394', '49', 'Apollo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2395', '50', 'ClubSport R8 Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2396', '50', 'E Series Clubsport R8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2397', '50', 'E Series Grange');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2398', '50', 'E Series GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2399', '50', 'E3 ClubSport R8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2400', '50', 'E3 ClubSport R8 Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2401', '50', 'E3 GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2402', '50', 'E3 Maloo R8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2403', '50', 'E3 Senator');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2404', '50', 'Grange WM3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2405', '50', 'GTS 25th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2406', '50', 'GTS 40 Years Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2407', '50', 'Senator Signature');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2408', '50', 'Senator Signature SV08');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2409', '50', 'VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2410', '50', 'W427');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2411', '50', 'W427 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2412', '50', 'Z Series Maloo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2413', '51', 'Aston Martin V8 Vantage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2414', '51', 'BMW 1er');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2415', '51', 'BMW 3er Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2416', '51', 'BMW 3er E90');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2417', '51', 'BMW 3-Series Coupe Thunder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2418', '51', 'BMW 5er E60 545i');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2419', '51', 'BMW 5er Touring E61');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2420', '51', 'BMW 5-Series F10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2421', '51', 'BMW 5-Series F10 M-Technik');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2422', '51', 'BMW 5-Series GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2423', '51', 'BMW 6er Coupe 645Ci');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2424', '51', 'BMW 6-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2425', '51', 'BMW 7er');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2426', '51', 'BMW M3 Las Vegas Wings');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2427', '51', 'BMW M5 Widebody Race Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2428', '51', 'BMW M6 Widebody');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2429', '51', 'BMW X3 HM 3.3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2430', '51', 'BMW X5 E70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2431', '51', 'BMW X5 Flash');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2432', '51', 'BMW X6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2433', '51', 'BMW Z4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2434', '51', 'BMW Z4 M Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2435', '51', 'BMW Z4 M Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2436', '51', 'Conqueror II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2437', '51', 'Ferrari 360');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2438', '51', 'Ferrari 599 GTB Fiorano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2439', '51', 'Ferrari F430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2440', '51', 'Ferrari F430 Black Miracle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2441', '51', 'Ferrari F430 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2442', '51', 'Fiat 500 Sportivo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2443', '51', 'Flash Evo M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2444', '51', 'Guardian');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2445', '51', 'Hawk');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2446', '51', 'Imperator');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2447', '51', 'Lamborghini Gallardo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2448', '51', 'Lamborghini Gallardo Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2449', '51', 'Lamborghini Gallardo Victory');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2450', '51', 'Mercedes-Benz M-Klasse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2451', '51', 'Mercedes-Benz SL-Klasse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2452', '51', 'Mercedes-Benz SLR Volcano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2453', '51', 'Mercedes-Benz SLS AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2454', '51', 'Mini');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2455', '51', 'Porsche 911 GT3 San Diego Express');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2456', '51', 'Porsche 911 Turbo Stallion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2457', '51', 'Porsche 996 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2458', '51', 'Porsche 997');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2459', '51', 'Porsche Cayenne');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2460', '51', 'Porsche Cayenne 958');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2461', '51', 'Porsche Cayenne Cyclone');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2462', '51', 'Range Rover HM 5.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2463', '51', 'Tycoon Evo M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2464', '51', 'Victory II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2465', '52', 'Venom GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2466', '53', 'Astra CD 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2467', '53', 'Astra CDX 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2468', '53', 'Astra CDXi 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2469', '53', 'Astra Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2470', '53', 'Astra SRi Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2471', '53', 'Astra Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2472', '53', 'Captiva');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2473', '53', 'Captiva CX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2474', '53', 'Captiva LX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2475', '53', 'Captiva MaXX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2476', '53', 'Captiva SX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2477', '53', 'Colorado');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2478', '53', 'Coupe 60 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2479', '53', 'Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2480', '53', 'Cross 8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2481', '53', 'Cruze');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2482', '53', 'ECOmmodore Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2483', '53', 'Efijy Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2484', '53', 'HFV6 Rodeo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2485', '53', 'HRT 427 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2486', '53', 'VZ Ute SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2487', '53', 'HSV Avalanche');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2488', '53', 'HSV Avalanche XUV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2489', '53', 'HSV Coupe 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2490', '53', 'HSV Maloo Ute Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2491', '53', 'Hurricane Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2492', '53', 'Jack8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2493', '53', 'JF Viva Hatch');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2494', '53', 'JF Viva Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2495', '53', 'JF Viva Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2496', '53', 'Monaro CV8-Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2497', '53', 'Sandman Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2498', '53', 'SST Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2499', '53', 'SST Stepside Custom Pickup Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2500', '53', 'SSX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2501', '53', 'Tigra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2502', '53', 'TK Barina Hatch 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2503', '53', 'TK Barina Hatch 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2504', '53', 'TK Barina Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2505', '53', 'Torana GTR-X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2506', '53', 'Torana TT36 Hatch Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2507', '53', 'Utester Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2508', '53', 'VE Commodore Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2509', '53', 'VE Commodore Calais');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2510', '53', 'VE Commodore Calais V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2511', '53', 'VE Commodore Omega');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2512', '53', 'VE Commodore Sportwagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2513', '53', 'VE Commodore SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2514', '53', 'VE Commodore SS-V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2515', '53', 'VE Commodore SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2516', '53', 'VE II Commodore Calais V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2517', '53', 'Astra 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2518', '53', 'VE II Commodore Caprice V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2519', '53', 'VE II Commodore Omega');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2520', '53', 'VE II Commodore Sportwagon Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2521', '53', 'VE II Commodore Sportwagon Calais V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2522', '53', 'VE II Commodore Sportwagon SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2523', '53', 'VE II Commodore Sportwagon SSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2524', '53', 'VE II Commodore Sportwagon SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2525', '53', 'VE II Commodore SSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2526', '53', 'VE II Commodore SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2527', '53', 'VE II Ute SSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2528', '53', 'VE II Ute SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2529', '53', 'VE Ute SS V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2530', '53', 'VE Ute SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2531', '53', 'Vectra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2532', '53', 'Volt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2533', '53', 'VY Commodore Acclaim');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2534', '53', 'VY Commodore Executive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2535', '53', 'VY Commodore S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2536', '53', 'VY Commodore SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2537', '53', 'VZ Adventra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2538', '53', 'VZ Commodore Calais');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2539', '53', 'VZ Commodore SS-Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2540', '53', 'VZ Commodore SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2541', '53', 'VZ Commodore SV8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2542', '53', 'VZ Crewman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2543', '53', 'VZ Crewman Cross 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2544', '53', 'VZ Crewman SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2545', '53', 'VZ Monaro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2546', '53', 'VZ One Tonner');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2547', '53', 'VZ One Tonner Cross 6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2548', '53', 'VZ Ute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2549', '53', 'VZ Ute SS-Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2550', '53', 'WL Caprice');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2551', '53', 'WL Statesman International');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2552', '53', 'WM Caprice');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2553', '53', 'WM Statesman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2554', '54', '3R-C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2555', '54', 'AandL Racing S2000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2556', '54', 'Accord');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2557', '54', 'Accord Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2558', '54', 'Accord Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2559', '54', 'Accord Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2560', '54', 'Civic Si Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2561', '54', 'Accord Coupe EX-L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2562', '54', 'Accord Crosstour');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2563', '54', 'Accord EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2564', '54', 'Accord EuroR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2565', '54', 'Accord EX Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2566', '54', 'Accord EX-L Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2567', '54', 'Accord EX-L V6 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2568', '54', 'Accord EX-L V6 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2569', '54', 'Accord Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2570', '54', 'Accord HB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2571', '54', 'Accord HF-S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2572', '54', 'Accord Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2573', '54', 'Accord iCTDi European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2574', '54', 'Accord PHEV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2575', '54', 'Accord SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2576', '54', 'Accord Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2577', '54', 'Accord Sedan 2.0E European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2578', '54', 'Accord Sedan 2.4 European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2579', '54', 'Accord Sedan 2.4EL European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2580', '54', 'Accord Sedan 2.4S European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2581', '54', 'Accord Sedan 2.4T European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2582', '54', 'Accord Sedan 2.4TL European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2583', '54', 'Accord Sedan EX-L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2584', '54', 'Accord Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2585', '54', 'Accord Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2586', '54', 'Accord Type S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2587', '54', 'Accord Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2588', '54', 'Accord Wagon 2.4T European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2589', '54', 'Accord Wagon 2.4T Exclusive Package European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2590', '54', 'Accord Wagon 2.4T Sport Package European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2591', '54', 'AC-X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2592', '54', 'ASM Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2593', '54', 'AZ600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2594', '54', 'Brio Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2595', '54', 'C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2596', '54', 'City');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2597', '54', 'Civic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2598', '54', 'Civic Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2599', '54', 'Civic Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2600', '54', 'Civic CRX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2601', '54', 'Civic CRX Si');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2602', '54', 'Civic CVCC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2603', '54', 'Civic Del Sol');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2604', '54', 'Accord LX-P Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2605', '54', 'Civic Del Sol Si');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2606', '54', 'Civic EUR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2607', '54', 'Civic EU-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2608', '54', 'Civic Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2609', '54', 'Civic HF');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2610', '54', 'Civic Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2611', '54', 'Civic Mugen Si Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2612', '54', 'Civic Mugen Si Sedan Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2613', '54', 'Civic Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2614', '54', 'Civic Si');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2615', '54', 'Civic Si Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2616', '54', 'Civic Si Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2617', '54', 'Civic Si Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2618', '54', 'Civic Si Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2619', '54', 'Civic Si Sedan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2620', '54', 'Civic Si Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2621', '54', 'Civic Type R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2622', '54', 'Civic Type R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2623', '54', 'Civic Type R Mugen 2.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2624', '54', 'Civic Type R Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2625', '54', 'Civic Type S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2626', '54', 'Civic Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2627', '54', 'Crosstour');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2628', '54', 'Crosstour Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2629', '54', 'CR-V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2630', '54', 'CR-V Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2631', '54', 'CR-V Euro Specs');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2632', '54', 'CRV EX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2633', '54', 'CRV SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2634', '54', 'CR-V US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2635', '54', 'CR-Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2636', '54', 'CR-Z Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2637', '54', 'CR-Z Mugen Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2638', '54', 'CR-Z Mugen RR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2639', '54', 'Element');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2640', '54', 'Element Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2641', '54', 'Element DX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2642', '54', 'Element EX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2643', '54', 'Element EX-P');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2644', '54', 'Element SC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2645', '54', 'Element SC Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2646', '54', 'EV Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2647', '54', 'EV-Ster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2648', '54', 'FC Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2649', '54', 'FCX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2650', '54', 'FCX Clarity');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2651', '54', 'FCX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2652', '54', 'Fit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2653', '54', 'Fit EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2654', '54', 'Fit EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2655', '54', 'Fit Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2656', '54', 'FRV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2657', '54', 'HSC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2658', '54', 'HSV-010 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2659', '54', 'IMAS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2660', '54', 'Insight');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2661', '54', 'Insight Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2662', '54', 'Insight EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2663', '54', 'Insight Sports Modulo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2664', '54', 'Jazz');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2665', '54', 'Jazz Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2666', '54', 'KIWAMI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2667', '54', 'Legend');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2668', '54', 'MDX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2669', '54', 'Model X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2670', '54', 'Mugen Civic Si');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2671', '54', 'N600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2672', '54', 'New Small Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2673', '54', 'NSX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2674', '54', 'NSX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2675', '54', 'NSXR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2676', '54', 'Odyssey');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2677', '54', 'Odyssey Absolute Japanese Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2678', '54', 'Odyssey Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2679', '54', 'Odyssey EX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2680', '54', 'Odyssey L Type Japanese Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2681', '54', 'Odyssey M Type Japanese Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2682', '54', 'Odyssey S Type Japanese Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2683', '54', 'Odyssey Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2684', '54', 'OSM Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2685', '54', 'Passport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2686', '54', 'Pilot');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2687', '54', 'Pilot EX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2688', '54', 'Pilot EX-L 4WD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2689', '54', 'Pilot LX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2690', '54', 'Pilot Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2691', '54', 'P-NUT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2692', '54', 'Prelude');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2693', '54', 'Prelude Si');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2694', '54', 'Prelude Type SH');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2695', '54', 'Prelude VTEC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2696', '54', 'Pro Drag Civic Si Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2697', '54', 'PUYO Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2698', '54', 'REMIX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2699', '54', 'Ridgeline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2700', '54', 'Ridgeline All-Terrain Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2701', '54', 'Ridgeline RTL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2702', '54', 'Ridgeline RTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2703', '54', 'Ridgeline Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2704', '54', 'Ridgeline Street Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2705', '54', 'S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2706', '54', 'S2000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2707', '54', 'S2000 CR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2708', '54', 'S2000 CR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2709', '54', 'S2000 Type S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2710', '54', 'S2000 Ultimate Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2711', '54', 'S600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2712', '54', 'Skydeck Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2713', '54', 'Small Hybrid Sports Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2714', '54', 'Step Bus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2715', '54', 'SUT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2716', '55', 'Bike');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2717', '55', 'H1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2718', '55', 'H1 10th Anniversary Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2719', '55', 'H1 Alpha Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2720', '55', 'H2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2721', '55', 'H2 SUT Dirt Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2722', '55', 'H2 SUV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2723', '55', 'H2 SUV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2724', '55', 'H2 with GM Accessories');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2725', '55', 'H2H Hydrogen Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2726', '55', 'H3 Wagon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2727', '55', 'H3R Off Road Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2728', '55', 'H3T Alpha');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2729', '55', 'H3T Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2730', '55', 'H3X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2731', '55', 'Humvee Military Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2732', '55', 'HX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2733', '56', 'Accent');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2734', '56', 'Accent');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2735', '56', 'Arnejs Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2736', '56', 'i20');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2737', '56', 'Veloster Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2738', '56', 'Santa Fe Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2739', '56', 'Azera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2740', '56', 'Blue2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2741', '56', 'Langdong');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2742', '56', 'HB20X new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2743', '56', 'HB20');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2744', '56', 'Genesis Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2745', '56', 'Elantra GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2746', '56', 'Elantra Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2747', '56', 'i40 Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2748', '56', 'Clix Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2749', '56', 'Curb Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2750', '56', 'i-ioniq Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2751', '56', 'E-Cubed Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2752', '56', 'Elantra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2753', '56', 'Elantra Blue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2754', '56', 'Entourage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2755', '56', 'Equus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2756', '56', 'Equus Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2757', '56', 'Genesis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2758', '56', 'Veloster Rally Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2759', '56', 'Genesis Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2760', '56', 'HCD 6 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2761', '56', 'HCD10 Hellion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2762', '56', 'HED 1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2763', '56', 'HED-5 i-Mode Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2764', '56', 'Hexa Space Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2765', '56', 'i10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2766', '56', 'Avante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2767', '56', 'i-flow Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2768', '56', 'Tucson');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2769', '56', 'Santa Fe US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2770', '56', 'Santa Fe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2771', '56', 'RB Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2772', '56', 'i20 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2773', '56', 'i20 Blue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2774', '56', 'i30');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2775', '56', 'i30 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2776', '56', 'i30 Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2777', '56', 'i30 Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2778', '56', 'i40');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2779', '56', 'i40 Tourer UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2780', '56', 'i800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2781', '56', 'Elantra Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2782', '56', 'Blue-Will Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2783', '56', 'i-Blue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2784', '56', 'ix20');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2785', '56', 'ix35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2786', '56', 'ix55');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2787', '56', 'ix-Metro Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2788', '56', 'ix-onic Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2789', '56', 'Matrix');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2790', '56', 'NEOS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2791', '56', 'Nuvis Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2792', '56', 'Portico Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2793', '56', 'QarmaQ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2794', '56', 'Genesis Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2795', '56', 'Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2796', '56', 'Sonata V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2797', '56', 'HCD9 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2798', '56', 'Santa Fe Blue Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2799', '56', 'Getz');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2800', '56', 'Santa Fe EU-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2801', '56', 'Accent SR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2802', '56', 'Tucson V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2803', '56', 'Sonata');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2804', '56', 'Sonata 2.0T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2805', '56', 'Sonata Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2806', '56', 'Terracan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2807', '56', 'Tiburon Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2808', '56', 'Grandeur');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2809', '56', 'HCD8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2810', '56', 'Trajet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2811', '56', 'Veloster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2812', '56', 'Atos Prime');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2813', '56', 'CCS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2814', '56', 'HCD 7 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2815', '56', 'Veloster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2816', '56', 'Veracruz');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2817', '56', 'Verna');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2818', '57', 'Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2819', '57', 'Emerg-E Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2820', '57', 'Essence Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2821', '57', 'Etherea Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2822', '57', 'EX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2823', '57', 'EX30d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2824', '57', 'EX35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2825', '57', 'EX37');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2826', '57', 'FX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2827', '57', 'FX Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2828', '57', 'FX Sebastian Vettel Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2829', '57', 'FX Vettel Edition new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2830', '57', 'FX35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2831', '57', 'FX37');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2832', '57', 'FX45');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2833', '57', 'FX50');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2834', '57', 'G35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2835', '57', 'G37');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2836', '57', 'G35 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2837', '57', 'G35 Sport Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2838', '57', 'G37 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2839', '57', 'QX56');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2840', '57', 'G37 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2841', '57', 'G37 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2842', '57', 'I35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2843', '57', 'IPL G Cabrio Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2844', '57', 'IPL G Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2845', '57', 'IPL G Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2846', '57', 'M45');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2847', '57', 'JX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2848', '57', 'JX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2849', '57', 'LE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2850', '57', 'M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2851', '57', 'M35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2852', '57', 'M35h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2853', '57', 'Kuraza Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2854', '57', 'G35 Sport Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2855', '57', 'M35h GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2856', '57', 'M35x');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2857', '57', 'M45 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2858', '57', 'M45s');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2859', '57', 'M45x');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2860', '57', 'Q45');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2861', '57', 'QX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2862', '57', 'QX4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2863', '57', 'Triant Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2864', '58', 'Ascender');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2865', '58', 'Axiom XST Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2866', '58', 'Axiom XSR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2867', '58', 'Axiom XSF Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2868', '58', 'GBX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2869', '58', 'Zen Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2870', '58', 'Rodeo 3.0 Denver');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2871', '59', 'Brivido Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2872', '59', 'Tex Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2873', '59', 'Go Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2874', '59', 'Emas Country Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2875', '59', 'Emas Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2876', '59', 'Emas3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2877', '59', 'Giugiaro Quaranta Concep');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2878', '60', 'Campagnola');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2879', '60', 'Massif');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2880', '61', 'Advanced Lightweight Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2881', '61', 'C-X16 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2882', '61', 'C-X75 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2883', '61', 'C-XF Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2884', '61', 'E-Type Speedster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2885', '61', 'F-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2886', '61', 'R-Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2887', '61', 'RD6 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2888', '61', 'S-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2889', '61', 'SType 2.7D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2890', '61', 'SType R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2891', '61', 'SType V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2892', '61', 'Super V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2893', '61', 'XKR Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2894', '61', 'XF');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2895', '61', 'XKR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2896', '61', 'XJ Sentinel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2897', '61', 'XF Black Pack');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2898', '61', 'XF Sportbrake');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2899', '61', 'XFR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2900', '61', 'XJ75 Platinum Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2901', '61', 'XJ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2902', '61', 'XFR Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2903', '61', 'XKR-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2904', '61', 'XJ 2.7 Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2905', '61', 'XJ Sport Pack');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2906', '61', 'XJ Ultimate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2907', '61', 'XJ8 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2908', '61', 'XJ8 Vanden Plas');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2909', '61', 'XJR Portfolio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2910', '61', 'XK');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2911', '61', 'XK Artisan SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2912', '61', 'XK Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2913', '61', 'XK8 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2914', '61', 'XKR 175');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2915', '61', 'XKR 75');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2916', '61', 'XKR Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2917', '61', 'XJ Super V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2918', '61', 'XKR Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2919', '61', 'XKR Portfolio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2920', '61', 'XType 3.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2921', '61', 'XType 2.5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2922', '61', 'XKR-S Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2923', '61', 'Concept Eight');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2924', '61', 'Bonspeed XType');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2925', '61', 'X-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2926', '61', 'X-Type Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2927', '61', 'F-Type Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2928', '61', 'XK180 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2929', '61', 'XJS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2930', '61', 'XJ220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2931', '61', 'XJR-9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2932', '61', 'XJ220 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2933', '61', 'XJ-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2934', '61', 'E-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2935', '61', 'XJ6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2936', '61', 'XJ13');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2937', '61', 'Mark 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2938', '61', 'XK SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2939', '61', 'XK140');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2940', '61', 'D-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2941', '61', 'C-Type');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2942', '61', 'XK120');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2943', '61', 'SS 100');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2944', '62', 'Cherokee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2945', '62', 'Cherokee Renegade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2946', '62', 'Cherokee UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2947', '62', 'CJ-7 Renegade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2948', '62', 'Comanche');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2949', '62', 'Commander UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2950', '62', 'Compass');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2951', '62', 'Compass Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2952', '62', 'Grand Cherokee UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2953', '62', 'Compass UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2954', '62', 'Wrangler Unlimited EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2955', '62', 'EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2956', '62', 'FC-170');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2957', '62', 'Gladiator');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2958', '62', 'Renegade Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2959', '62', 'Grand Cherokee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2960', '62', 'Grand Cherokee Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2961', '62', 'Grand Cherokee S-Limited UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2962', '62', 'Grand Cherokee Overland UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2963', '62', 'Grand Cherokee SRT8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2964', '62', 'Grand Cherokee SRT-8 UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2965', '62', 'Grand Cherokee Trailhawk');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2966', '62', 'Wrangler Rubicon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2967', '62', 'Hurricane Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2968', '62', 'Jeepster Commando Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2969', '62', 'Liberty');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2970', '62', 'Liberty Arctic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2971', '62', 'Commander 4x4 Limited 5.7 HEMI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2972', '62', 'Wrangler UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2973', '62', 'Liberty CRD Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2974', '62', 'Liberty Renegade 3.7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2975', '62', 'Patriot');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2976', '62', 'Grand Cherokee 5.7 Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2977', '62', 'Gladiator Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2978', '62', 'Patriot Back Country Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2979', '62', 'Patriot Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2980', '62', 'Patriot EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2981', '62', 'Patriot UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2982', '62', 'Treo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2983', '62', 'Rescue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2984', '62', 'Scrambler CJ-8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2985', '62', 'Trailhawk Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2986', '62', 'Wagoneer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2987', '62', 'Wagoneer Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2988', '62', 'Willys2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2989', '62', 'Wrangler');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2990', '62', 'Wrangler Arctic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2991', '62', 'Wrangler Call of Duty Black Ops');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2992', '62', 'Wrangler Call of Duty MW3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2993', '62', 'Wrangler Dragon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2994', '62', 'Wrangler Freedom Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2995', '62', 'Wrangler Mojave');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2996', '62', 'Wrangler Unlimited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2997', '62', 'Wrangler Unlimited Altitude');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2998', '62', 'Wrangler Unlimited Moab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('2999', '62', 'Wrangler Unlimited UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3000', '62', 'M-38 A1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3001', '62', 'Dispatcher');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3002', '62', 'CJ-5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3003', '62', '4WD 1-Ton Pickup Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3004', '62', 'CJ-3B');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3005', '62', 'M-38');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3006', '62', 'Jeepster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3007', '62', 'Pickup Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3008', '62', 'Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3009', '62', 'Panel Delivery');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3010', '62', 'CJ-2A');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3011', '62', 'Willys MB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3012', '62', 'Willys MA');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3013', '62', 'Willys Quad');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3014', '63', 'X-Bow Race');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3015', '63', 'X-Bow');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3016', '64', 'Amanti');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3017', '64', 'Cerato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3018', '64', 'Borrego');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3019', '64', 'Cadenza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3020', '64', 'K9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3021', '64', 'Ceed SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3022', '64', 'Ceed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3023', '64', 'Carens');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3024', '64', 'cee-d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3025', '64', 'Ceed Sporty Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3026', '64', 'eco ceed Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3027', '64', 'Rio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3028', '64', 'ex cee-d Cabrio Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3029', '64', 'Forte');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3030', '64', 'Picanto 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3031', '64', 'Forte 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3032', '64', 'Forte Koup');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3033', '64', 'Grand VQ-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3034', '64', 'GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3035', '64', 'K2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3036', '64', 'KCD1 Slice Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3037', '64', 'KCV4 Mojave Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3038', '64', 'Kee Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3039', '64', 'KND-4 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3040', '64', 'KOUP Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3041', '64', 'KV7 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3042', '64', 'Naimo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3043', '64', 'No3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3044', '64', 'Opirus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3045', '64', 'Optima');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3046', '64', 'Venga');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3047', '64', 'Soul');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3048', '64', 'Sorento');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3049', '64', 'Ray Plug-In Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3050', '64', 'Optima Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3051', '64', 'Picanto');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3052', '64', 'POP Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3053', '64', 'Pro Ceed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3054', '64', 'Pro-cee-d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3055', '64', 'Magentis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3056', '64', 'Ray');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3057', '64', 'Ray EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3058', '64', 'Rio 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3059', '64', 'Rio Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3060', '64', 'Rio5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3061', '64', 'Rondo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3062', '64', 'Rondo SX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3063', '64', 'Sedona');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3064', '64', 'Kue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3065', '64', 'Sorento EU-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3066', '64', 'Sportage');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3067', '64', 'Spectra5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3068', '64', 'Soul Burner Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3069', '64', 'Soul Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3070', '64', 'Soulster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3071', '64', 'Spectra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3072', '64', 'Multi-S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3073', '64', 'Sportage SX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3074', '64', 'Sports Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3075', '64', 'Trackster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3076', '64', 'Venga EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3077', '64', 'VG Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3078', '65', 'Mercedes-Benz C 20K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3079', '65', 'Mercedes-Benz C 55K S8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3080', '65', 'Mercedes-Benz CL 60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3081', '65', 'Mercedes-Benz CLK 55K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3082', '65', 'Mercedes-Benz CLS 50K S8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3083', '65', 'Mercedes-Benz E 50K CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3084', '65', 'Mercedes-Benz E 55 K3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3085', '65', 'Mercedes-Benz S 60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3086', '65', 'Mercedes-Benz SL 50K S8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3087', '65', 'Mercedes-Benz SL Xtreme');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3088', '65', 'Mercedes-Benz SLK 20K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3089', '65', 'Mercedes-Benz SLK 55K S8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3090', '66', 'Agera R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3091', '66', 'Agera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3092', '66', 'CCXR Trevita');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3093', '66', 'Quant Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3094', '66', 'CCXR Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3095', '66', 'CCX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3096', '66', 'CCR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3097', '67', 'Lightning GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3098', '67', 'Lightning GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3099', '68', 'XRay Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3100', '68', 'C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3101', '69', '350 GTS Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3102', '69', '350 GTV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3103', '69', '400 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3104', '69', 'Aventador J Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3105', '69', 'Aventador LP700-4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3106', '69', 'Concept S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3107', '69', 'Countach 25th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3108', '69', 'Countach Quattrovalvole');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3109', '69', 'Diablo GTR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3110', '69', 'Diablo Iota');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3111', '69', 'Gallardo LP560-4 Bicolore');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3112', '69', 'Diablo Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3113', '69', 'Diablo SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3114', '69', 'Diablo SVR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3115', '69', 'Diablo VT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3116', '69', 'Estoque Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3117', '69', 'Gallardo LP550-2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3118', '69', 'Gallardo LP550-2 Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3119', '69', 'Gallardo LP560-4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3120', '69', 'Gallardo LP560-4 Polizia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3121', '69', 'Gallardo LP560-4 Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3122', '69', 'Gallardo LP560-4 Super Trofeo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3123', '69', 'Gallardo LP570-4 Blancpain');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3124', '69', 'Gallardo LP570-4 Edizione Tecnica');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3125', '69', 'Gallardo LP570-4 Spyder Performante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3126', '69', 'Gallardo LP570-4 Super Trofeo Stradale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3127', '69', 'Gallardo LP570-4 Superleggera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3128', '69', 'Gallardo Nera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3129', '69', 'Gallardo Police Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3130', '69', 'Gallardo SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3131', '69', 'Gallardo Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3132', '69', 'Gallardo Superleggera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3133', '69', 'Jalpa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3134', '69', 'Jarama');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3135', '69', 'Murcielago 40th Anniversary Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3136', '69', 'Gallardo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3137', '69', 'LM');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3138', '69', 'Miura Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3139', '69', 'Murcielago');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3140', '69', 'Diablo 6.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3141', '69', 'Miura Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3142', '69', 'Miura SV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3143', '69', 'Diablo SV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3144', '69', 'Murcielago Barchetta Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3145', '69', 'Murcielago LP640');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3146', '69', 'Murcielago LP640 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3147', '69', 'Murcielago LP640 Versace');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3148', '69', 'Diablo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3149', '69', 'Murcielago LP650-4 Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3150', '69', 'Murcielago LP670-4 SuperVeloce');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3151', '69', 'Murcielago LP670-4 SV China Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3152', '69', 'Murcielago RGT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3153', '69', 'Murcielago Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3154', '69', 'Murcielago Sketch');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3155', '69', 'Countach LP 400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3156', '69', 'Urraco');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3157', '69', 'Reventon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3158', '69', 'Miura Jota');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3159', '69', 'Reventon Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3160', '69', 'Islero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3161', '69', 'Espada');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3162', '69', 'Sesto Elemento Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3163', '69', 'Silhouette');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3164', '69', '350 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3165', '69', 'Urus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3166', '70', '2000 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3167', '70', 'Autobianchi A112');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3168', '70', 'Beta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3169', '70', 'Beta HP Executive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3170', '70', 'Beta HPE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3171', '70', 'Beta Montecarlo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3172', '70', 'Beta Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3173', '70', 'Beta Trevi 2.0 VX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3174', '70', 'Dedra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3175', '70', 'Dedra SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3176', '70', 'Delta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3177', '70', 'Delta 1.6 HF Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3178', '70', 'Delta 1.8 Di Turbo Jet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3179', '70', 'Delta HF 4WD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3180', '70', 'Musa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3181', '70', 'Delta HPE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3182', '70', 'Delta Integrale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3183', '70', 'Delta S4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3184', '70', 'Delta S4 Gruppo B');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3185', '70', 'Flavia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3186', '70', 'Fulvia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3187', '70', 'Fulvia Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3188', '70', 'Gamma Berlina');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3189', '70', 'Granturismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3190', '70', 'Granturismo Stilnovo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3191', '70', 'Lancia ECV Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3192', '70', 'LC1 Gruppo 6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3193', '70', 'LC2 Gruppo C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3194', '70', 'Lybra Executive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3195', '70', 'Lybra Intensa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3196', '70', 'MomoDesign Urban Bike');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3197', '70', 'Montecarlo Turbo Gruppo 5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3198', '70', 'Phedra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3199', '70', 'Phedra Promenade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3200', '70', 'Phedra Unique Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3201', '70', 'Prisma');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3202', '70', 'Rally 037');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3203', '70', 'Rally 037 Gruppo B');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3204', '70', 'Stratos');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3205', '70', 'Stratos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3206', '70', 'Stratos Rally Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3207', '70', 'Thema');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3208', '70', 'Thesis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3209', '70', 'Thesis 2.4 20v JTD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3210', '70', 'Thesis Promenade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3211', '70', 'Voyager');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3212', '70', 'Y');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3213', '70', 'Y10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3214', '70', 'Ypsilon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3215', '70', 'Ypsilon 1.3 Multijet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3216', '70', 'Ypsilon BKini');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3217', '70', 'Ypsilon DFN');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3218', '70', 'Ypsilon MomoDesign');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3219', '70', 'Ypsilon Sport Concept car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3220', '70', 'Ypsilon Sport MomoDesign');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3221', '70', 'Ypsilon Versus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3222', '70', 'Flaminia 2.8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3223', '70', 'Flavia Sport 1500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3224', '70', 'Flavia 1.5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3225', '70', 'Flaminia Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3226', '70', 'Appia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3227', '70', 'Aurelia B 24');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3228', '70', 'Appia C10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3229', '70', 'D50 Formula 1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3230', '70', 'Aurelia B24 Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3231', '70', 'Aurelia B12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3232', '70', 'D24 Spider Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3233', '70', 'Aurelia B20 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3234', '70', 'Aurelia B10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3235', '70', 'Ardea');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3236', '70', 'Aprilia Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3237', '70', 'Aprilia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3238', '70', 'Aprilia 238');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3239', '70', 'Artena');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3240', '70', 'Augusta 231');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3241', '70', 'Astura Double Phaeton');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3242', '70', 'Astura 233');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3243', '70', 'Astura 230');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3244', '70', 'Artena 228');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3245', '70', 'Lambda');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3246', '70', 'Dilambda 227');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3247', '70', 'Theta 35HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3248', '70', 'Gamma 20HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3249', '70', 'Alpha 12HP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3250', '71', 'DC100 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3251', '71', 'DC100 Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3252', '71', 'Freelander 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3253', '71', 'Defender');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3254', '71', 'Defender SVX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3255', '71', 'Defender X-Tech');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3256', '71', 'Range Rover Evoque Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3257', '71', 'Discovery 3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3258', '71', 'Discovery 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3259', '71', 'Range Rover');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3260', '71', 'Freelander');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3261', '71', 'Freelander 2 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3262', '71', 'Discovery 4 Armoured');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3263', '71', 'Freelander 2 TD4 e');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3264', '71', 'Freelander Callaway');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3265', '71', 'Freelander SE3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3266', '71', 'Freelander Td4 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3267', '71', 'Freelander Td4 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3268', '71', 'Land e Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3269', '71', 'LR2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3270', '71', 'LR2 HSE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3271', '71', 'LR3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3272', '71', 'LRX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3273', '71', 'LRX Geneva Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3274', '71', 'Range e Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3275', '71', 'Range Rover Autobiography');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3276', '71', 'Range Rover Autobiography Black');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3277', '71', 'Range Rover Autobiography Ultimate Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3278', '71', 'Range Rover Evoque');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3279', '71', 'Range Rover Evoque 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3280', '71', 'Range Rover Evoque Victoria Beckham');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3281', '71', 'Range Rover Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3282', '71', 'Range Rover Sport Autobiography');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3283', '71', 'Range Rover Sport Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3284', '71', 'Range Stormer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3285', '71', 'Supercharged Range Rover');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3286', '72', 'Mirabeau');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3287', '73', 'CT 200h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3288', '73', 'ES 350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3289', '73', 'ES330');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3290', '73', 'ES330 Sport Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3291', '73', 'ES350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3292', '73', 'GS 250');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3293', '73', 'GS 350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3294', '73', 'GS 450h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3295', '73', 'GS 450h F Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3296', '73', 'GS 460');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3297', '73', 'GS 350 F Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3298', '73', 'ES 300h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3299', '73', 'GS300');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3300', '73', 'GS430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3301', '73', 'GX 460');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3302', '73', 'GX 470');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3303', '73', 'GX470');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3304', '73', 'HS 250h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3305', '73', 'IS 350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3306', '73', 'IS 350 F Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3307', '73', 'IS250C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3308', '73', 'IS300 SportDesign Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3309', '73', 'IS350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3310', '73', 'RX 350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3311', '73', 'LS 600h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3312', '73', 'LS 460 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3313', '73', 'LS 460 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3314', '73', 'IS Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3315', '73', 'IS430 Project');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3316', '73', 'IS-F');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3317', '73', 'IS-F EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3318', '73', 'LFA');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3319', '73', 'LFA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3320', '73', 'LFA Nurburgring Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3321', '73', 'LF-A Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3322', '73', 'LS 600h L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3323', '73', 'LS600h L Pebble Beach Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3324', '73', 'LS460 AWD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3325', '73', 'LFC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3326', '73', 'LF-CC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3327', '73', 'LF-Ch Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3328', '73', 'LF-Gh Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3329', '73', 'LF-LC Blue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3330', '73', 'LF-LC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3331', '73', 'LF-Xh Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3332', '73', 'LS 460');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3333', '73', 'LS 460 F Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3334', '73', 'LS 460L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3335', '73', 'LF-A Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3336', '73', 'LS 600h L Landaulet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3337', '73', 'LS430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3338', '73', 'LS430 European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3339', '73', 'LX 570');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3340', '73', 'IS250 European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3341', '73', 'LX470');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3342', '73', 'Minority Report Sports Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3343', '73', 'RX 350 F Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3344', '73', 'RX 450h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3345', '73', 'RX 450h F Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3346', '73', 'RX330');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3347', '73', 'RX330 Thundercloud');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3348', '73', 'RX400h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3349', '73', 'SC 430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3350', '73', 'SC430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3351', '73', 'SC430 Pebble Beach Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3352', '73', 'SC430 Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3353', '73', 'Sport Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3354', '74', 'Aviator');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3355', '74', 'Aviator Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3356', '74', 'C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3357', '74', 'Continental Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3358', '74', 'Mark LT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3359', '74', 'Mark X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3360', '74', 'MK9 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3361', '74', 'MKR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3362', '74', 'MKS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3363', '74', 'MKT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3364', '74', 'MKZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3365', '74', 'MKX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3366', '74', 'MKT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3367', '74', 'MKS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3368', '74', 'MKZ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3369', '74', 'MKZ Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3370', '74', 'Navigator');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3371', '74', 'Town Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3372', '74', 'Navicross Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3373', '74', 'Town Car Cartier');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3374', '74', 'Town Car Cartier L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3375', '74', 'Zephyr');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3376', '75', 'H1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3377', '76', 'LS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3378', '77', '2-Eleven');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3379', '77', 'Circuit Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3380', '77', 'Eco Elise');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3381', '77', 'Elan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3382', '77', 'Elan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3383', '77', 'Elise');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3384', '77', 'Elise 160');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3385', '77', 'Elise Club Racer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3386', '77', 'Elise Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3387', '77', 'Elise R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3388', '77', 'Elise S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3389', '77', 'Elise SC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3390', '77', 'Elise SC Clark Type 25');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3391', '77', 'Elise Type 49');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3392', '77', 'Elite');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3393', '77', 'Elite Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3394', '77', 'Esprit Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3395', '77', 'Esprit Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3396', '77', 'Esprit V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3397', '77', 'Eterne Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3398', '77', 'Europa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3399', '77', 'Europa Diamond Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3400', '77', 'Europa S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3401', '77', 'Europa SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3402', '77', 'Evora');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3403', '77', 'Evora 414E Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3404', '77', 'Evora Carbon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3405', '77', 'Evora GTE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3406', '77', 'Evora GX Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3407', '77', 'Evora S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3408', '77', 'Evora Type 124 Endurance Racecar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3409', '77', 'Exige');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3410', '77', 'Exige 265E Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3411', '77', 'Exige Cup 260');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3412', '77', 'Exige S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3413', '77', 'Exige S 240');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3414', '77', 'Exige S Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3415', '77', 'Exige S Type 72');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3416', '77', 'Exige Sprint');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3417', '77', 'Hot Wheels Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3418', '77', 'Ice Vehicle Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3419', '78', 'Icon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3420', '78', '6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3421', '78', 'Zero Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3422', '78', 'TF');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3423', '78', 'TF LE500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3424', '78', 'XPower SVR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3425', '78', 'GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3426', '78', 'TF Cool Blue SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3427', '78', 'TF 160');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3428', '78', 'XPower SV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3429', '79', 'Lamborghini Aventador');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3430', '79', 'Porsche Panamera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3431', '79', 'Maserati GranTurismo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3432', '79', 'Bugatti Veyron Linea Vincero dOro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3433', '79', 'Vitesse Rose');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3434', '79', 'Cyrus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3435', '79', 'Chopster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3436', '79', 'Bugatti Veyron Linea Vincero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3437', '79', 'Stallone');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3438', '79', 'Renovatio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3439', '79', 'Le Mansory Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3440', '79', 'Bel Air');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3441', '79', 'Rolls Royce Conquistador');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3442', '79', 'Le Mansory');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3443', '79', 'Bentley Continental GTC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3444', '79', 'Bentley Continental Flying Spur');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3445', '79', 'Aston Martin Vantage V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3446', '79', 'Bentley Continental GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3447', '79', 'Aston Martin Vanquish S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3448', '79', 'Aston Martin DB9 Volante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3449', '80', 'TSO GT2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3450', '80', 'TSO Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3451', '81', 'Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3452', '81', 'GranCabrio MC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3453', '81', 'GranCabrio Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3454', '81', 'GranSport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3455', '81', 'GranCabrio Fendi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3456', '81', 'Quattroporte Sport GT S MC Sport Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3457', '81', 'Quattroporte Sport GT S Awards Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3458', '81', 'GranCabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3459', '81', 'Quattroporte Sport GT S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3460', '81', 'GranSport MC Victory');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3461', '81', 'GranSport Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3462', '81', 'GranTurismo S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3463', '81', 'GranTurismo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3464', '81', 'GranTurismo MC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3465', '81', 'GranTurismo MC Stradale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3466', '81', 'GranTurismo S Automatic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3467', '81', 'GranTurismo Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3468', '81', 'GS Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3469', '81', 'Kubang');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3470', '81', 'Kubang Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3471', '81', 'MC12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3472', '81', 'Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3473', '81', 'MC12 Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3474', '81', 'MCC Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3475', '81', 'Quattroporte');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3476', '81', 'Quattroporte Executive GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3477', '81', 'Quattroporte Neiman Marcus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3478', '81', 'Quattroporte Sport GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3479', '81', 'Spyder 90th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3480', '81', 'Spyder Vintage package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3481', '81', 'Trofeo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3482', '81', 'Trofeo Light');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3483', '82', '62 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3484', '82', 'Zeppelin');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3485', '82', 'Xenatec Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3486', '82', 'Landaulet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3487', '82', 'Landaulet Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3488', '82', '62 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3489', '82', 'Exelero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3490', '82', '57S Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3491', '82', '62');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3492', '82', '57');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3493', '83', '2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3494', '83', '3 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3495', '83', '3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3496', '83', '6 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3497', '83', '5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3498', '83', '6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3499', '83', '323');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3500', '83', '2 3-Door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3501', '83', '3 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3502', '83', '3 Facelift');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3503', '83', '3 i-stop');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3504', '83', '3 MPS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3505', '83', '3 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3506', '83', '323F');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3507', '83', '5 European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3508', '83', '6 AWD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3509', '83', '6 Facelift');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3510', '83', '6 MPS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3511', '83', '6 MPS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3512', '83', '6 SAP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3513', '83', 'MX-5 Superlight Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3514', '83', '6 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3515', '83', '6 Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3516', '83', '6 US-spec');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3517', '83', '6 SAP Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3518', '83', '6 Wagon Facelift');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3519', '83', 'Atenza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3520', '83', 'Atenza Sport Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3521', '83', 'Kiyora Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3522', '83', 'Kazamai Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3523', '83', 'Furai Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3524', '83', '6 Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3525', '83', '2 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3526', '83', 'Taiki Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3527', '83', 'Ryuga Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3528', '83', 'Hakaze Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3529', '83', 'CX-9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3530', '83', 'CX-7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3531', '83', 'B2500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3532', '83', 'BT-50');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3533', '83', 'CX-5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3534', '83', 'CX9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3535', '83', 'Demio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3536', '83', 'Demio Stardust Pink Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3537', '83', 'Ibuki Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3538', '83', 'Kabura Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3539', '83', 'Kusabi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3540', '83', 'MazdaSpeed MX5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3541', '83', 'Minagi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3542', '83', 'MPV ES');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3543', '83', 'MPV European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3544', '83', 'MX Sport Runabout Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3545', '83', 'MX Sport Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3546', '83', 'MX Sportif Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3547', '83', 'MX5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3548', '83', 'MX-5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3549', '83', 'MX-5 GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3550', '83', 'MX-5 GT Race Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3551', '83', 'MX-5 Kuro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3552', '83', 'MX-5 Miata Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3553', '83', 'MX-5 Miata Special Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3554', '83', 'MX-5 MPS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3555', '83', 'MX-5 Niseko');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3556', '83', 'MX-5 Roadster Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3557', '83', 'MX-5 Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3558', '83', 'MXCrossport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3559', '83', 'MXFlexa Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3560', '83', 'MXMicro Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3561', '83', 'Nagare Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3562', '83', 'Premacy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3563', '83', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3564', '83', 'RX7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3565', '83', 'RX-8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3566', '83', 'RX-8 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3567', '83', 'RX-8 Dingo Art');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3568', '83', 'RX-8 Hydrogen Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3569', '83', 'RX8 XMen');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3570', '83', 'Sassou Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3571', '83', 'Senku Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3572', '83', 'Shinari Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3573', '83', 'Takeri Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3574', '83', 'Tribute');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3575', '83', 'Tribute Hybrid-Electric Vehicle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3576', '83', 'Washu Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3577', '83', 'Xedos 9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3578', '84', 'Identity i1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3579', '85', 'MP4-12C Spider');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3580', '85', 'MP4-12C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3581', '85', 'X-1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3582', '85', 'P1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3583', '85', '12C Can-Am Edition Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3584', '85', 'MP4-12C GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3585', '85', 'MP4-12C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3586', '85', 'F1 GTR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3587', '85', 'F1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3588', '85', 'M6GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3589', '86', '150');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3590', '86', '170');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3591', '86', '190');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3592', '86', 'SL65 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3593', '86', '220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3594', '86', '230');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3595', '86', '320');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3596', '86', '190 SL Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3597', '86', '190E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3598', '86', '220 a');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3599', '86', '220SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3600', '86', '230 SL Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3601', '86', 'G63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3602', '86', 'G-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3603', '86', '240 D 3.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3604', '86', 'Citan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3605', '86', 'CLS Shooting Brake');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3606', '86', '250C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3607', '86', '260D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3608', '86', '280 E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3609', '86', '280 SE 3.5 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3610', '86', '280 SE 3.5 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3611', '86', 'SLK350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3612', '86', '300 CE 6.3 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3613', '86', '300 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3614', '86', '300 SEL 6.3 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3615', '86', 'M-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3616', '86', '300 SL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3617', '86', '300 SL Gullwing');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3618', '86', '300 SLR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3619', '86', '300CD Turbodiesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3620', '86', 'CLS550');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3621', '86', 'CLS350 CDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3622', '86', '300d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3623', '86', '300D Turbodiesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3624', '86', '300SD Turbodiesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3625', '86', '450 SEL 6.9');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3626', '86', '500 K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3627', '86', '500E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3628', '86', 'C-Class UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3629', '86', 'C-Class Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3630', '86', '540 K Luxury Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3631', '86', 'C-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3632', '86', '600 Pullman Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3633', '86', 'B-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3634', '86', '770 Grand Mercedes Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3635', '86', 'A 200 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3636', '86', 'A170 Classic 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3637', '86', 'A180 CDI 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3638', '86', 'A200 Avantgarde 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3639', '86', 'A200 CDI Avantgarde 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3640', '86', 'SLS AMG GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3641', '86', 'A200 Elegance 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3642', '86', 'SL550 Night Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3643', '86', 'S63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3644', '86', 'AClass');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3645', '86', 'R-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3646', '86', 'A-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3647', '86', 'GL-Class Grand Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3648', '86', 'A-Class Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3649', '86', 'A-Class Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3650', '86', 'A-Class E-CELL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3651', '86', 'Auto 2000 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3652', '86', 'B150');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3653', '86', 'B200 CDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3654', '86', 'B200 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3655', '86', 'B-Class Electric Drive Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3656', '86', 'B-Class F-Cell');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3657', '86', 'Biome Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3658', '86', 'Bionic Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3659', '86', 'C63 AMG DTM Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3660', '86', 'Bluetec Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3661', '86', 'B55 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3662', '86', 'B-Class E-CELL Plus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3663', '86', 'BlueZero Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3664', '86', 'BlueZero E-Cell Plus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3665', '86', 'C 111-II Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3666', '86', 'C112 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3667', '86', 'C200 CGI Estate Elegance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3668', '86', 'C220 CDI Avantgarde');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3669', '86', 'C320 Sport Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3670', '86', 'C55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3671', '86', 'C63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3672', '86', 'C63 AMG Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3673', '86', 'C63 AMG Coupe Black Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3674', '86', 'C63 AMG Coupe Black Series DTM Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3675', '86', 'C63 AMG Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3676', '86', 'C63 AMG Estate F1 Medical Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3677', '86', 'CClass');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3678', '86', 'E63 AMG Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3679', '86', 'C-Class Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3680', '86', 'C-Class DR 520');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3681', '86', 'C-Class DTM AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3682', '86', 'CL 500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3683', '86', 'CL 600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3684', '86', 'E-Class AMG Sports Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3685', '86', 'CL 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3686', '86', 'CL Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3687', '86', 'CL500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3688', '86', 'CL55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3689', '86', 'CL55 AMG F1 Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3690', '86', 'CL55 AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3691', '86', 'CL600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3692', '86', 'CL63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3693', '86', 'CL65 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3694', '86', 'CL65 AMG UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3695', '86', 'CLC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3696', '86', 'CL-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3697', '86', 'CL-Class AMG Sports Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3698', '86', 'CL-Class AMG styling');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3699', '86', 'CLK 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3700', '86', 'CLK 63 AMG Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3701', '86', 'CLK Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3702', '86', 'CLK Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3703', '86', 'CLK designo by Giorgio Armani');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3704', '86', 'CLK DTM AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3705', '86', 'CLK DTM AMG Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3706', '86', 'CLK GTR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3707', '86', 'CLK320 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3708', '86', 'CLK320 CDI Cabriolet Avantgarde');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3709', '86', 'CLK320 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3710', '86', 'CLK350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3711', '86', 'CLK430 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3712', '86', 'CLK430 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3713', '86', 'CLK55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3714', '86', 'CLK55 AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3715', '86', 'CLK55 Cabriolet AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3716', '86', 'CLK63 AMG Black Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3717', '86', 'CLS 280');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3718', '86', 'CLS 350 CGI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3719', '86', 'CLS 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3720', '86', 'CLS Grand Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3721', '86', 'CLS500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3722', '86', 'CLS63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3723', '86', 'CLS63 AMG Shooting Brake');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3724', '86', 'CLS63 AMG US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3725', '86', 'CLS-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3726', '86', 'Compact Sports Tourer Vision B Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3727', '86', 'Direct Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3728', '86', 'E 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3729', '86', 'E 63 AMG Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3730', '86', 'E200 Kompressor Estate Classic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3731', '86', 'E300 BlueTEC Hybrid new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3732', '86', 'E320');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3733', '86', 'E320 CDI Estate Elegance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3734', '86', 'E320 Estate Avantgarde');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3735', '86', 'E320 Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3736', '86', 'E350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3737', '86', 'E350 4Matic Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3738', '86', 'E350 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3739', '86', 'E350 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3740', '86', 'E350 Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3741', '86', 'E350 with Sports Equipment');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3742', '86', 'E55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3743', '86', 'E550');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3744', '86', 'E550 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3745', '86', 'E550 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3746', '86', 'E63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3747', '86', 'E63 AMG Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3748', '86', 'E-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3749', '86', 'E-Class 4Matic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3750', '86', 'E-Class Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3751', '86', 'E-Class Cabriolet UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3752', '86', 'E-Class Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3753', '86', 'E-Class Coupe UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3754', '86', 'E-Class Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3755', '86', 'E-Class Estate AMG Sports Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3756', '86', 'E-Class Executive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3757', '86', 'E-Class L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3758', '86', 'F 100 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3759', '86', 'F 200 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3760', '86', 'F 300 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3761', '86', 'F 400 Carving Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3762', '86', 'F 500 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3763', '86', 'F 600 Hygenius Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3764', '86', 'F125 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3765', '86', 'F500 Mind Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3766', '86', 'F700 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3767', '86', 'F800 Style Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3768', '86', 'Fascination Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3769', '86', 'F-Cell Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3770', '86', 'G55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3771', '86', 'G55 AMG Kompressor');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3772', '86', 'G-Class BA3 Final Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3773', '86', 'G-Class Edition Select');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3774', '86', 'G-Class UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3775', '86', 'GL 420 CDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3776', '86', 'GL450');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3777', '86', 'GL550');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3778', '86', 'GL63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3779', '86', 'GL-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3780', '86', 'GLK 350 4MATIC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3781', '86', 'GLK Freeside Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3782', '86', 'GLK Townside Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3783', '86', 'GLK350 4Matic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3784', '86', 'GLK-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3785', '86', 'Grand Sports Tourer Vision R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3786', '86', 'ML 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3787', '86', 'ML320');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3788', '86', 'ML350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3789', '86', 'ML430');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3790', '86', 'ML450 Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3791', '86', 'ML500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3792', '86', 'ML55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3793', '86', 'ML63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3794', '86', 'ML63 AMG 10th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3795', '86', 'ML63 AMG Performance Studio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3796', '86', 'Ocean Drive Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3797', '86', 'R 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3798', '86', 'R500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3799', '86', 'R-Class AMG Styling');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3800', '86', 'S 500 4MATIC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3801', '86', 'S 600 Guard');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3802', '86', 'S 600 Guard Pullman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3803', '86', 'S 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3804', '86', 'S320 CDI BlueEfficiency');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3805', '86', 'S400 BlueHYBRID');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3806', '86', 'S500 4MATIC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3807', '86', 'S500 Plug-in Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3808', '86', 'S550');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3809', '86', 'S600 Pullman Guard');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3810', '86', 'S600 Pullman Limousine W140');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3811', '86', 'S65 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3812', '86', 'S-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3813', '86', 'S-Class AMG Sports Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3814', '86', 'S-Class Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3815', '86', 'S-Class Pullman Limousine W220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3816', '86', 'S-Class UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3817', '86', 'S-Class W126');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3818', '86', 'Shooting Break Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3819', '86', 'Silver Arrow Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3820', '86', 'SL 350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3821', '86', 'SL 500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3822', '86', 'SL 55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3823', '86', 'SL 600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3824', '86', 'SL 63 AMG Edition IWC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3825', '86', 'SL 63 AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3826', '86', 'SL 65 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3827', '86', 'SL350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3828', '86', 'SL350 Mille Miglia Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3829', '86', 'SL500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3830', '86', 'SL55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3831', '86', 'SL55 AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3832', '86', 'SL55 AMG with Performance Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3833', '86', 'SL550');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3834', '86', 'SL600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3835', '86', 'SL63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3836', '86', 'SL63 AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3837', '86', 'SL65 AMG Black Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3838', '86', 'SL73 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3839', '86', 'SL-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3840', '86', 'SL-Class Sports Package');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3841', '86', 'SLK 2LOOK Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3842', '86', 'SLK 55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3843', '86', 'SLK 55 AMG Black Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3844', '86', 'SLK 55 AMG SS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3845', '86', 'SLK Edition 10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3846', '86', 'SLK Final Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3847', '86', 'SLK Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3848', '86', 'SLK Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3849', '86', 'SLK200 Kompressor');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3850', '86', 'SLK250 CDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3851', '86', 'SLK32 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3852', '86', 'SLK320');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3853', '86', 'SLK55 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3854', '86', 'SLK55 AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3855', '86', 'SLKClass');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3856', '86', 'SLK-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3857', '86', 'SLKClass Special Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3858', '86', 'SLR 722 Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3859', '86', 'SLR McLaren');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3860', '86', 'SLR McLaren Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3861', '86', 'SLR McLaren Roadster 722 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3862', '86', 'SLR Stirling Moss');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3863', '86', 'SLS AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3864', '86', 'SLS AMG Coupe Electric Drive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3865', '86', 'SLS AMG E-Cell Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3866', '86', 'SLS AMG F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3867', '86', 'SLS AMG GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3868', '86', 'SLS AMG GT F1 Safety Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3869', '86', 'SLS AMG GT3 45th Anniversary new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3870', '86', 'SLS AMG Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3871', '86', 'SLS AMG UK Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3872', '86', 'SLS AMG US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3873', '86', 'Style Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3874', '86', 'Type S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3875', '86', 'Viano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3876', '86', 'Vision C 220 Bluetec Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3877', '86', 'Vision CLS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3878', '86', 'Vision GLK Bluetec Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3879', '86', 'Vision Grand Sports Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3880', '86', 'Vision GST Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3881', '86', 'Vision R 63 AMG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3882', '86', 'Vision SLA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3883', '86', 'Vision SLR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3884', '86', 'Vision SLR Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3885', '86', 'Vito');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3886', '86', 'Vito E-Cell');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3887', '87', 'Cougar C2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3888', '87', 'Cougar Zn');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3889', '87', 'Marauder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3890', '87', 'Marauder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3891', '87', 'Marauder Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3892', '87', 'Mariner Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3893', '87', 'Messenger Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3894', '87', 'Meta One Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3895', '87', 'Milan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3896', '87', 'Milan Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3897', '87', 'Milan Premier V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3898', '87', 'Montego');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3899', '87', 'Monterey Advance Trac');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3900', '87', 'Mountaineer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3901', '87', 'Sable');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3902', '88', 'E-Motion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3903', '89', 'Baker Street');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3904', '89', 'Bayswater');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3905', '89', 'Beachcomber Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3906', '89', 'Countryman John Cooper Works');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3907', '89', 'Clubman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3908', '89', 'Clubman John Cooper Works');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3909', '89', 'Clubvan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3910', '89', 'Clubvan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3911', '89', 'Concept Detroit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3912', '89', 'Concept Frankfurt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3913', '89', 'Concept Geneva');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3914', '89', 'Concept Tokyo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3915', '89', 'Convertible Highgate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3916', '89', 'Cooper');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3917', '89', 'Cooper Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3918', '89', 'Cooper D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3919', '89', 'Cooper D Clubman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3920', '89', 'Cooper John Cooper Works');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3921', '89', 'Cooper S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3922', '89', 'Cooper S Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3923', '89', 'Cooper S Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3924', '89', 'Cooper S John Cooper Challenge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3925', '89', 'Cooper S John Cooper Works');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3926', '89', 'Cooper S John Cooper Works GP Tuning Kit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3927', '89', 'Cooper S John Cooper Works Tuning Kit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3928', '89', 'Cooper S John Cooper Works with Aerodynamic Kit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3929', '89', 'Countryman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3930', '89', 'Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3931', '89', 'Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3932', '89', 'Crossover Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3933', '89', 'E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3934', '89', 'John Cooper Works Challenge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3935', '89', 'John Cooper Works Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3936', '89', 'John Cooper Works Coupe Endurance');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3937', '89', 'John Cooper Works GP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3938', '89', 'Knightsbridge');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3939', '89', 'One');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3940', '89', 'One Clubman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3941', '89', 'One D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3942', '89', 'Paceman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3943', '89', 'Paceman Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3944', '89', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3945', '89', 'Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3946', '89', 'Rocketman Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3947', '89', 'Scooter E Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3948', '89', 'Seven');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3949', '89', 'Versace Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3950', '89', 'WRC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3951', '89', 'XXL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3952', '90', 'ASX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3953', '90', 'Colt 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3954', '90', 'Colt CZ3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3955', '90', 'Colt CZC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3956', '90', 'Colt CZC Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3957', '90', 'Colt CZT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3958', '90', 'Concept-cX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3959', '90', 'Concept-ZT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3960', '90', 'CUV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3961', '90', 'Eclipse GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3962', '90', 'Eclipse Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3963', '90', 'Eclipse Spyder GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3964', '90', 'Endeavor SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3965', '90', 'Outlander GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3966', '90', 'Lancer Sportback Ralliart');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3967', '90', 'Galant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3968', '90', 'Lancer Ralliart');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3969', '90', 'Galant Fortis Ralliart');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3970', '90', 'Galant Ralliart');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3971', '90', 'i MiEV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3972', '90', 'i MiEV Sport Air Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3973', '90', 'Colt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3974', '90', 'Racing Lancer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3975', '90', 'i-MiEV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3976', '90', 'i-MiEV US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3977', '90', 'L200 Club Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3978', '90', 'L200 Double Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3979', '90', 'L200 Single Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3980', '90', 'Lancer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3981', '90', 'Lancer ES');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3982', '90', 'Lancer Evolution MR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3983', '90', 'Lancer Evolution X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3984', '90', 'Lancer Evolution X FQ-400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3985', '90', 'Lancer Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3986', '90', 'Outlander');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3987', '90', 'Outlander ES');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3988', '90', 'Outlander GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3989', '90', 'Outlander SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3990', '90', 'Outlander Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3991', '90', 'Outlander Urban');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3992', '90', 'Pajero European Specs');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3993', '90', 'Pajero Evolution');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3994', '90', 'Prototype X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3995', '90', 'Prototype-S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3996', '90', 'PX-MiEV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3997', '90', 'RA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3998', '90', 'Eclipse GS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('3999', '90', 'Raider DuroCross');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4000', '90', 'Raider LS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4001', '90', 'Raider XLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4002', '90', 'Raider XLS V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4003', '90', 'RVR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4004', '90', 'Shogun');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4005', '90', 'Raider DuroCross V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4006', '90', 'Outlander Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4007', '90', 'Lancer Evolution IX SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4008', '90', 'Galant GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4009', '90', 'Evolander Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4010', '90', 'Endeavor LTD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4011', '90', 'Eclipse GT V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4012', '90', 'Concept-CT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4013', '90', 'Street Raider Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4014', '90', 'Montero GLS 5door European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4015', '90', 'Montero GLS 3door European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4016', '90', 'Montero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4017', '90', 'Lancer Evolution Wagon GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4018', '90', 'Lancer Evolution VIII MR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4019', '90', 'Lancer Evolution IX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4020', '90', 'Eclipse Ralliart Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4021', '90', 'Concept-X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4022', '90', 'Concept-Sportback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4023', '90', 'Colt Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4024', '90', 'Sport Truck Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4025', '90', 'Outlander Turbo European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4026', '90', 'Montero Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4027', '90', 'Lancer Sportback LS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4028', '90', 'Lancer Evolution VIII European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4029', '90', 'Lancer Evolution RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4030', '90', 'Grandis European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4031', '90', 'Galant Ralliart Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4032', '90', 'Endeavor Ralliart Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4033', '90', 'Endeavor');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4034', '90', 'Eclipse ConceptE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4035', '90', 'Diamante');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4036', '90', 'i Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4037', '90', 'Outlander European Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4038', '90', 'Lancer Evolution');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4039', '90', 'Eclipse');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4040', '91', 'Galue 204');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4041', '91', 'Viewt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4042', '91', 'Ryoga');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4043', '91', 'Orochi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4044', '91', 'Galue II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4045', '91', 'Nouera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4046', '91', 'New Galue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4047', '91', 'Micro Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4048', '91', 'Le-Seyde');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4049', '91', 'Le-Seyde Convertible Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4050', '91', 'TX-I');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4051', '91', 'Zero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4052', '91', 'Yuga');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4053', '91', 'Galue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4054', '91', 'Viewt');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4055', '91', 'Type F');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4056', '91', 'Ray');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4057', '92', 'Plus 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4058', '92', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4059', '92', 'Plus E Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4060', '92', 'Plus 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4061', '92', 'EvaGT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4062', '92', 'Aero Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4063', '92', '4-4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4064', '92', '3 Wheeler');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4065', '92', '4-4 75th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4066', '92', 'SuperSports Junior');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4067', '92', 'Aero SuperSports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4068', '92', 'LifeCar Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4069', '92', 'Aero 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4070', '92', '70th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4071', '92', '4-Seater');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4072', '92', 'Aeromax');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4073', '92', 'Aero 8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4074', '92', 'plus 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4075', '92', 'Roadster 3.0 V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4076', '93', 'Nissan 370Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4077', '93', 'Nissan Skyline R34 GTR Z Tune');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4078', '93', 'Nissan Frontier King Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4079', '93', 'Nissan Frontier Crew Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4080', '93', 'Police Nissan 350Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4081', '93', 'Nissan Titan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4082', '93', 'Nissan Sentra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4083', '93', 'Nissan Altima S-Tune');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4084', '93', 'Nissan Altima R-Tune');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4085', '93', 'Nissan 350Z Drift Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4086', '93', 'Nissan 350Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4087', '94', '350Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4088', '94', '370Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4089', '94', '370Z GT Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4090', '94', '370Z Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4091', '94', 'Almera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4092', '94', 'Altima');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4093', '94', 'Altima Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4094', '94', 'TeRRA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4095', '94', 'Altima Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4096', '94', 'Altima Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4097', '94', 'Bevel Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4098', '94', 'Cube');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4099', '94', 'Denki Cube Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4100', '94', 'Ellure Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4101', '94', 'e-NV200 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4102', '94', 'Extrem Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4103', '94', 'Forum Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4104', '94', 'Frontier');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4105', '94', 'Invitation Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4106', '94', 'GT-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4107', '94', 'GT-R Egoist');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4108', '94', 'GT-R GT500 Race car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4109', '94', 'GT-R SpecV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4110', '94', 'GT-R Track Pack');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4111', '94', 'Hi-Cross Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4112', '94', 'Juke');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4113', '94', 'Juke Ministry of Sound');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4114', '94', 'Juke Nismo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4115', '94', 'Juke Nismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4116', '94', 'Juke Shiro');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4117', '94', 'Juke-R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4118', '94', 'Land Glider Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4119', '94', 'LEAF');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4120', '94', 'Leaf Nismo RC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4121', '94', 'Maxima');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4122', '94', 'Esflow Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4123', '94', 'Micra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4124', '94', 'Micra Colour Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4125', '94', 'Micra DIG-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4126', '94', 'Micra ELLE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4127', '94', 'Murano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4128', '94', 'Murano CrossCabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4129', '94', 'Navara');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4130', '94', 'Note');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4131', '94', 'Nuvu Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4132', '94', 'NV200');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4133', '94', 'NV200 Taxi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4134', '94', '370Z Black Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4135', '94', 'NV2500 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4136', '94', 'Qazana Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4137', '94', 'Qashqai+2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4138', '94', 'Pathfinder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4139', '94', 'Pathfinder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4140', '94', 'Patrol');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4141', '94', 'Pickup');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4142', '94', 'Pivo 2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4143', '94', 'Pivo 3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4144', '94', 'Pixo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4145', '94', 'Primera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4146', '94', 'Qashqai');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4147', '94', 'Quest');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4148', '94', 'Rogue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4149', '94', 'Versa Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4150', '94', 'Versa Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4151', '94', 'Round Box Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4152', '94', 'Sentra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4153', '94', 'Sentra SE-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4154', '94', 'NV200 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4155', '94', 'Mixim Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4156', '94', 'Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4157', '94', 'Intima Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4158', '94', 'Sunny');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4159', '94', 'Sylphy Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4160', '94', 'Terrano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4161', '94', 'Tiida');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4162', '94', 'Terranaut Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4163', '94', 'Townpod Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4164', '94', 'Urge Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4165', '94', 'Xterra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4166', '94', 'X-Trail');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4167', '94', 'Pivo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4168', '94', 'Zaroot Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4169', '94', 'Zaroot Concept 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4170', '94', 'Pathfinder EUR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4171', '94', 'Micra C+C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4172', '94', 'Micra 160SR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4173', '94', 'Lafesta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4174', '94', 'GT-R PROTO Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4175', '94', 'Foria Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4176', '94', 'Amenio Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4177', '94', 'Altima SER');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4178', '94', 'Almera Tino');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4179', '94', 'AZEAL Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4180', '94', '350Z Roadster EUR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4181', '94', '350Z EUR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4182', '94', '350Z 35th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4183', '94', 'Tone Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4184', '94', 'Titan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4185', '94', 'Qashqai Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4186', '94', 'Pathfinder Armada SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4187', '94', 'Pathfinder Armada');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4188', '94', 'Fuga 350GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4189', '94', 'Fairlady Z Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4190', '94', 'Actic Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4191', '94', '350Z Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4192', '94', 'Teana');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4193', '94', 'Skyline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4194', '94', 'Jikoo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4195', '94', 'Fuga Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4196', '94', 'Effis Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4197', '94', 'Dunehawk Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4198', '94', '350Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4199', '94', 'Yanya Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4200', '94', 'XTrail S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4201', '94', 'XTrail GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4202', '94', 'XTrail');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4203', '94', 'Quest Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4204', '94', 'Micra C+C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4205', '94', 'Beeline Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4206', '94', 'GT-R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4207', '94', 'Chappo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4208', '94', 'Skyline GT-R V-spec II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4209', '94', 'Fusion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4210', '94', '240Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4211', '95', 'M600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4212', '95', 'M15');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4213', '95', 'M400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4214', '95', 'M14');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4215', '95', 'M12 GTO 3R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4216', '96', 'C113 Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4217', '97', '442');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4218', '97', 'Aerotech Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4219', '97', 'Intrigue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4220', '97', 'Bravada Indy Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4221', '97', 'Alero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4222', '97', 'Alero GL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4223', '97', 'Alero Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4224', '97', 'Alero OSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4225', '97', 'Aurora');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4226', '97', 'Aurora Indy Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4227', '97', 'Intrigue OSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4228', '97', 'Bravada');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4229', '97', 'Cutlass');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4230', '97', 'Cutlass S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4231', '97', 'Profile Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4232', '97', 'Recon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4233', '97', 'Silhouette');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4234', '97', 'Silhouette OSV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4235', '98', 'Adam');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4236', '98', 'Agila');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4237', '98', 'Ampera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4238', '98', 'Antara');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4239', '98', 'Antara GTC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4240', '98', 'Astra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4241', '98', 'Astra GTC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4242', '98', 'Astra GTC with Panoramic Roof');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4243', '98', 'Astra High Performance Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4244', '98', 'Astra OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4245', '98', 'Astra Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4246', '98', 'Astra Sports Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4247', '98', 'Astra Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4248', '98', 'Astra TwinTop');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4249', '98', 'Cascada');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4250', '98', 'Combo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4251', '98', 'Concept M');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4252', '98', 'Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4253', '98', 'Corsa 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4254', '98', 'Corsa GSi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4255', '98', 'Corsa Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4256', '98', 'Corsa OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4257', '98', 'Corsa OPC Nurburgring Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4258', '98', 'CorsaVan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4259', '98', 'Eco Speedster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4260', '98', 'Flextreme Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4261', '98', 'Flextreme GT-E Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4262', '98', 'GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4263', '98', 'GTC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4264', '98', 'GTC Geneva Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4265', '98', 'GTC Paris Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4266', '98', 'GTW Geneve Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4267', '98', 'Insignia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4268', '98', 'Insignia Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4269', '98', 'Insignia Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4270', '98', 'Insignia OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4271', '98', 'Insignia OPC Sports Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4272', '98', 'Insignia Sports Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4273', '98', 'Kadett Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4274', '98', 'Kapitan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4275', '98', 'Meriva');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4276', '98', 'Meriva Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4277', '98', 'Meriva OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4278', '98', 'Mokka');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4279', '98', 'RAK e Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4280', '98', 'Signum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4281', '98', 'Signum 3.0 DTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4282', '98', 'Signum 3.2 V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4283', '98', 'Signum V6 CDTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4284', '98', 'Speedster Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4285', '98', 'Tigra Twin Top 1.8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4286', '98', 'TRIXX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4287', '98', 'Vectra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4288', '98', 'Vectra Caravan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4289', '98', 'Vectra Caravan OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4290', '98', 'Vectra GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4291', '98', 'Vectra OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4292', '98', 'Vectra OPC Twin Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4293', '98', 'Zafira');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4294', '98', 'Zafira CNG');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4295', '98', 'Zafira OPC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4296', '98', 'Zafira Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4297', '98', 'Zafira Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4298', '99', 'Speedster II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4299', '99', 'Hemera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4300', '99', 'Cevennes Ultimate Black');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4301', '99', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4302', '99', 'Hemera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4303', '99', 'Cevennes');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4304', '100', 'Huayra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4305', '100', 'Zonda Tricolore');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4306', '100', 'Zonda Cinque Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4307', '100', 'Zonda R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4308', '100', 'Zonda Cinque');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4309', '100', 'Zonda R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4310', '100', 'Zonda Roadster F');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4311', '100', 'Zonda F');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4312', '100', 'Zonda C12-S Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4313', '101', 'Esperante Jan Magnussen Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4314', '102', '107');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4315', '102', '107');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4316', '102', '206');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4317', '102', '207');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4318', '102', '301');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4319', '102', '208');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4320', '102', '107 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4321', '102', '307');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4322', '102', 'RCZ R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4323', '102', 'Onyx Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4324', '102', '308');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4325', '102', '407');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4326', '102', '3008 HYbrid4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4327', '102', '408');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4328', '102', '208 GTi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4329', '102', '508');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4330', '102', '607');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4331', '102', 'SXC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4332', '102', '807');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4333', '102', 'Hoggar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4334', '102', '1007');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4335', '102', '3008');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4336', '102', '508 China');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4337', '102', '4007');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4338', '102', '4008');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4339', '102', '308 GTi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4340', '102', 'SR1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4341', '102', '5008');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4342', '102', '1007 D-Day Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4343', '102', '1007 RC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4344', '102', '2008 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4345', '102', '407 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4346', '102', '206 CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4347', '102', '206 HDi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4348', '102', '206 Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4349', '102', '206 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4350', '102', '206 SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4351', '102', 'Ion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4352', '102', '206 SW Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4353', '102', '206 SW HDi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4354', '102', '207 CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4355', '102', '207 epure Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4356', '102', '207 RC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4357', '102', '207 Serie 64');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4358', '102', '207 Spider Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4359', '102', '207 SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4360', '102', '207 SW Outdoor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4361', '102', '908HY');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4362', '102', '207 SW RC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4363', '102', '208 GTi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4364', '102', '208 R5 Rally car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4365', '102', '208 XY Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4366', '102', '20Cup Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4367', '102', '307 Cameleo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4368', '102', '307 CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4369', '102', '307 CC Hybride HDi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4370', '102', '307 Sedan 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4371', '102', '307 SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4372', '102', '307 SW Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4373', '102', '307CC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4374', '102', '308 CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4375', '102', '308 GT THP 175');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4376', '102', '308 RC Z Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4377', '102', '308 SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4378', '102', '308 SW Prologue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4379', '102', '4002 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4380', '102', '207 RCup Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4381', '102', '4007 Holland and Holland Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4382', '102', '406 CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4383', '102', '406 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4384', '102', '406 Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4385', '102', '406 Rapier');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4386', '102', '406 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4387', '102', '407 Elixir Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4388', '102', '407 Prologue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4389', '102', '407 Silhouette Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4390', '102', '407 SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4391', '102', '5 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4392', '102', '508 RXH');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4393', '102', '508 SW');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4394', '102', '607 Feline Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4395', '102', '607 Paladine Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4396', '102', '607 Pescarolo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4397', '102', '807 Grand Tourisme Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4398', '102', '907 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4399', '102', '908 RC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4400', '102', '908 V12 HDi DPFS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4401', '102', 'BB1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4402', '102', 'Bipper Tepee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4403', '102', 'EX1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4404', '102', 'Flux Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4405', '102', 'Hoggar Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4406', '102', 'HR1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4407', '102', 'HX1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4408', '102', 'HYbrid3 Evolution Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4409', '102', 'HYmotion3 Compressor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4410', '102', 'iOn');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4411', '102', 'Moonster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4412', '102', 'Moovie Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4413', '102', 'Prologue HYmotion4 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4414', '102', 'Promethee Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4415', '102', 'Quark Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4416', '102', 'RC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4417', '102', 'RCZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4418', '102', 'RCZ Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4419', '102', 'RD Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4420', '102', 'Sesame Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4421', '102', 'Urban Crossover Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4422', '103', 'Cambiano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4423', '103', 'Nido EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4424', '103', 'B0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4425', '103', 'Sintesi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4426', '103', 'Rolls-Royce Hyperion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4427', '103', 'Ferrari P4-5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4428', '103', 'Enjoy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4429', '104', 'Hemi Barracuda');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4430', '105', 'Aztek');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4431', '105', 'Aztek Rally');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4432', '105', 'Banshee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4433', '105', 'Bonneville');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4434', '105', 'Bonneville GXP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4435', '105', 'G6 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4436', '105', 'Firebird');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4437', '105', 'G8 GT Show Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4438', '105', 'G3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4439', '105', 'G6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4440', '105', 'G6 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4441', '105', 'G6 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4442', '105', 'Solstice');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4443', '105', 'G6 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4444', '105', 'G6 GTP Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4445', '105', 'G6 GTP Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4446', '105', 'G6 GXP Show Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4447', '105', 'G8 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4448', '105', 'G8 GXP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4449', '105', 'G8 Sport Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4450', '105', 'Grand Am GT Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4451', '105', 'Grand Am GXP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4452', '105', 'Grand Prix');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4453', '105', 'Grand Prix G-Force Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4454', '105', 'Grand Prix GTP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4455', '105', 'Grand Prix GXP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4456', '105', 'GTO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4457', '105', 'Grand Am SE Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4458', '105', 'GTO 5.7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4459', '105', 'GTO Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4460', '105', 'Montana');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4461', '105', 'Firebird Trans Am Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4462', '105', 'Montana SV6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4463', '105', 'Sunfire HO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4464', '105', 'Montana Thunder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4465', '105', 'Rageous Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4466', '105', 'REV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4467', '105', 'Grand Am');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4468', '105', 'Solstice Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4469', '105', 'Aztek SRV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4470', '105', 'Solstice Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4471', '105', 'Piranha Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4472', '105', 'Solstice GXP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4473', '105', 'Solstice SD-290 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4474', '105', 'Stinger');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4475', '105', 'Sunfire');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4476', '105', 'Sunfire Accessorized');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4477', '105', 'Sunfire American Tuner');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4478', '105', 'Sunfire Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4479', '105', 'Sunfire GXP');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4480', '105', 'Torrent');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4481', '105', 'Vibe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4482', '105', 'Vibe GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4483', '106', '356');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4484', '106', '901');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4485', '106', '959');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4486', '106', '356 No 1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4487', '106', '550 Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4488', '106', '911 Black Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4489', '106', '911 Carrera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4490', '106', '911 Carrera 2 Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4491', '106', '911 Carrera 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4492', '106', '911 Carrera 4 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4493', '106', '911 Carrera 4 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4494', '106', '911 Carrera 4 GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4495', '106', '911 Carrera 4S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4496', '106', '911 Carrera 4S Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4497', '106', '911 Carrera 4S Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4498', '106', '911 Carrera Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4499', '106', '911 Carrera Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4500', '106', '911 Carrera GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4501', '106', '911 Carrera GTS Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4502', '106', '911 Carrera RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4503', '106', '911 Carrera S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4504', '106', '911 Carrera S Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4505', '106', '911 Carrera S Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4506', '106', '911 GT2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4507', '106', '911 GT2 RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4508', '106', '911 GT3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4509', '106', '911 GT3 Cup');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4510', '106', '911 GT3 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4511', '106', '911 GT3 R Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4512', '106', '911 GT3 R Hybrid 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4513', '106', '911 GT3 RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4514', '106', '911 GT3 RS 4.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4515', '106', '911 GT3 RSR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4516', '106', '911 Speedster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4517', '106', '911 Sport Classic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4518', '106', '911 Targa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4519', '106', '911 Targa 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4520', '106', '911 Targa 4S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4521', '106', '911 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4522', '106', '911 Turbo Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4523', '106', '911 Turbo Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4524', '106', '911 Turbo S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4525', '106', '911 Turbo S Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4526', '106', '918 RSR Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4527', '106', '918 Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4528', '106', '918 Spyder Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4529', '106', '930 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4530', '106', '964 Speedster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4531', '106', '968 Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4532', '106', '968 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4533', '106', 'Boxster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4534', '106', 'Boxster RS 60 Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4535', '106', 'Boxster S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4536', '106', 'Boxster S Black Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4537', '106', 'Boxster Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4538', '106', 'Carrera GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4539', '106', 'Cayenne');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4540', '106', 'Cayenne Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4541', '106', 'Cayenne GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4542', '106', 'Cayenne Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4543', '106', 'Cayenne S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4544', '106', 'Cayenne S Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4545', '106', 'Cayenne S Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4546', '106', 'Cayenne S Titanium');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4547', '106', 'Cayenne S Transsyberia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4548', '106', 'Cayenne Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4549', '106', 'Cayenne Turbo S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4550', '106', 'Cayman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4551', '106', 'Cayman R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4552', '106', 'Cayman S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4553', '106', 'Cayman S Black Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4554', '106', 'Cayman S Design Edition 1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4555', '106', 'Cayman S Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4556', '106', 'GT3 RSR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4557', '106', 'Panamera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4558', '106', 'Panamera Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4559', '106', 'Panamera GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4560', '106', 'Panamera Platinum Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4561', '106', 'Panamera S Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4562', '106', 'Panamera Sport Turismo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4563', '106', 'Panamera Turbo S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4564', '107', 'Savvy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4565', '107', 'Satria Neo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4566', '107', 'GEN-2 Persona');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4567', '107', 'GEN-2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4568', '107', 'Impian');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4569', '107', 'GEN-2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4570', '108', 'ZOE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4571', '108', '6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4572', '108', '8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4573', '108', '16');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4574', '108', '10 Automatic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4575', '108', '11 TSE Electronic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4576', '108', 'Twingo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4577', '108', 'Megane RS Trophy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4578', '108', 'Koleos');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4579', '108', 'Alpine A 110-50 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4580', '108', 'Wind');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4581', '108', 'R-Space Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4582', '108', '11 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4583', '108', '12 TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4584', '108', 'Megane GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4585', '108', '12 TL Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4586', '108', 'Megane Estate GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4587', '108', 'Megane Coupe GT Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4588', '108', 'Megane Coupe GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4589', '108', 'Megane Coupe-Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4590', '108', 'Latitude');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4591', '108', '14 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4592', '108', 'Laguna');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4593', '108', '14 TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4594', '108', '14 TS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4595', '108', 'Scenic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4596', '108', '15 GTL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4597', '108', 'Megane Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4598', '108', 'Grand Scenic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4599', '108', '15 TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4600', '108', 'DeZir Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4601', '108', 'Clio RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4602', '108', '16 TX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4603', '108', 'Zoe ZE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4604', '108', 'Twizy ZE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4605', '108', 'Twingo RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4606', '108', 'Symbol');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4607', '108', '17 TS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4608', '108', 'Megane Trophy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4609', '108', 'Megane R26.R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4610', '108', '18 GTD 4X4 Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4611', '108', '18 GTL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4612', '108', '18 TL Type 2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4613', '108', '18 TL Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4614', '108', '18 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4615', '108', 'Kangoo ZE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4616', '108', '19 16S 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4617', '108', '19 Chamade Prima');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4618', '108', 'Clio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4619', '108', 'ZE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4620', '108', '19 Convertible 16S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4621', '108', '19 TS Europa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4622', '108', 'Sand-up Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4623', '108', 'Ondelios Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4624', '108', 'Megane Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4625', '108', '20 TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4626', '108', 'Kangoo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4627', '108', '20 Turbo Diesel');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4628', '108', '20 TX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4629', '108', '21 2.0 Turbo Quadra 4-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4630', '108', '21 Turbo D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4631', '108', 'Laguna Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4632', '108', 'Kangoo Compact Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4633', '108', '25 V6 Injection');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4634', '108', '25 V6 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4635', '108', '30 TS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4636', '108', '30 TX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4637', '108', '4 Clan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4638', '108', 'Koleos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4639', '108', '4 CV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4640', '108', 'Clio Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4641', '108', '4 CV Luxe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4642', '108', 'Altica Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4643', '108', '4 CV Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4644', '108', 'Vel Satis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4645', '108', 'Modus Initiale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4646', '108', 'Laguna GT Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4647', '108', 'Egeus Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4648', '108', '4 GTL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4649', '108', 'Clio III 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4650', '108', 'Wind Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4651', '108', '4 Luxe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4652', '108', '4 Parisienne');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4653', '108', 'Megane RS 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4654', '108', '4 Van');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4655', '108', '5 Alpine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4656', '108', '5 GT Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4657', '108', '5 GTL 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4658', '108', '5 TL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4659', '108', '5 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4660', '108', '6 L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4661', '108', '8 Gordini 1300');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4662', '108', '8 Major');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4663', '108', 'Megane II Hatch');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4664', '108', 'Megane II Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4665', '108', 'Megane II CoupeCabriolet 2.0 Dynmaique Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4666', '108', 'Megane II CoupeCabriolet 1.6 Privilege Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4667', '108', 'Megane II CoupeCabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4668', '108', 'Clio V6 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4669', '108', 'Be Bop SUV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4670', '108', 'Be Bop Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4671', '108', '8 S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4672', '108', '9 GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4673', '108', 'Espace IV 2.2 dCi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4674', '108', 'Ellypse Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4675', '108', 'Avantime');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4676', '108', 'Talisman Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4677', '108', 'Vel Satis 3.5 V6 Initiale');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4678', '108', 'Modus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4679', '108', 'Laguna Initiale 3.0 V6 24V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4680', '108', '9 GTL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4681', '108', '9 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4682', '108', '9 TXE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4683', '108', 'Alpine A 110');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4684', '108', 'Scenic RX4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4685', '108', 'Megane Hatchback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4686', '108', 'Megane Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4687', '108', 'Alpine A 310 V6 Group 4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4688', '108', 'Captur Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4689', '108', 'Vel Satis Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4690', '108', 'Clio 1.5 dCi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4691', '108', 'Clio 1.6 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4692', '108', 'Clio 1.7 RT 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4693', '108', 'Clio Campus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4694', '108', 'Clio Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4695', '108', 'Fiftie Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4696', '108', 'Initiale Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4697', '108', 'Espace');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4698', '108', 'Argos Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4699', '108', '19 Baccara 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4700', '108', 'Clio Grand Tour Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4701', '108', 'Clio III 5door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4702', '108', 'Alpine A 610');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4703', '108', 'Clio RS 200');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4704', '108', 'Clio RS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4705', '108', 'Clio RS Luxe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4706', '108', 'Clio S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4707', '108', 'Clio Sport 2.0 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4708', '108', 'Dauphine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4709', '108', 'Espace 2.2 dCI 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4710', '108', 'Espace Initiale 2.2 dCI 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4711', '108', 'Espace Quadra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4712', '108', 'Floride');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4713', '108', 'Fluence');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4714', '108', 'Fluence Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4715', '108', 'Fluence ZE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4716', '108', 'Fregate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4717', '108', 'Frendzy Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4718', '108', 'Fuego');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4719', '108', 'Fuego Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4720', '108', 'Grand Espace IV 3.0 dCi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4721', '108', 'Grand Modus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4722', '108', 'Kangoo be bop');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4723', '108', 'Laguna 2.0 T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4724', '108', 'Laguna Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4725', '108', 'Laguna Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4726', '108', 'Laguna Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4727', '108', 'Laguna Estate 1.9 dCI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4728', '108', 'Laguna GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4729', '108', 'Laguna Nevada RXE 1.6 16V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4730', '108', 'Ludo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4731', '108', 'Megane');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4732', '108', 'Megane Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4733', '108', 'Megane Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4734', '108', 'Megane Estate GT Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4735', '108', 'Megane GT Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4736', '108', 'Megane II Saloon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4737', '108', 'Megane II Sport Hatch');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4738', '108', 'Megane RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4739', '108', 'Megane RS 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4740', '108', 'Megane RS N4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4741', '108', 'Modus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4742', '108', 'Nepta Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4743', '108', 'Pangea Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4744', '108', 'Racoon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4745', '108', 'Safrane');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4746', '108', 'Sandero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4747', '108', 'Scenic Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4748', '108', 'Scenic Conquest');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4749', '108', 'Scenic II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4750', '108', 'Scenic RXI 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4751', '108', 'Talisman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4752', '108', 'Thalia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4753', '108', 'Twingo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4754', '108', 'Twingo Oasis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4755', '108', 'Z17 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4756', '108', 'ZO Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4757', '109', 'Advantige R one Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4758', '109', 'BamBoo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4759', '109', 'Chopster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4760', '109', 'Dock-Go Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4761', '109', 'Dodge Viper Veleno Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4762', '109', 'E2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4763', '109', 'E-Go Rocket Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4764', '109', 'Mono Ego Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4765', '109', 'Porsche 997 Turbo Le Mans 600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4766', '109', 'Porsche Bedouin 996 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4767', '109', 'Porsche Imola Cayman 987');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4768', '109', 'Porsche Indy 4S 997');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4769', '109', 'Porsche Indy 997 Carrera S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4770', '109', 'Presto Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4771', '109', 'Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4772', '109', 'Senso Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4773', '109', 'Splash Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4774', '109', 'sQuba Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4775', '109', 'Tatooo.com Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4776', '109', 'UC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4777', '109', 'X-Trem Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4778', '109', 'Yello Talbo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4779', '109', 'zaZen Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4780', '110', '100EX Centenary Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4781', '110', '100EX Experimental Centenary Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4782', '110', '101EX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4783', '110', 'Phantom');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4784', '110', '101EX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4785', '110', '102EX Electric Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4786', '110', '200EX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4787', '110', 'Centenary Phantom');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4788', '110', 'Ghost');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4789', '110', 'Ghost Extended Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4790', '110', 'Ghost Six Senses Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4791', '110', 'Phantom Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4792', '110', 'Phantom Drophead Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4793', '110', 'Phantom Extetnded Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4794', '110', 'Phantom GCC Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4795', '110', 'Phantom in Madrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4796', '110', 'Phantom Naples Winter Wine Festival Auction');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4797', '110', 'Phantom Silver');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4798', '110', 'Phantom Tungsten');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4799', '110', 'Phantom with Extended Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4800', '110', 'RR4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4801', '111', '75 V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4802', '111', '25');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4803', '111', '45');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4804', '111', '75');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4805', '111', '100');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4806', '111', '200');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4807', '111', '600');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4808', '111', '800');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4809', '111', '75 Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4810', '111', '75 Limousine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4811', '111', '75 Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4812', '111', '75 Vanden Plas');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4813', '111', 'CityRover');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4814', '111', 'Streetwise');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4815', '111', 'TCV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4816', '112', '9-5 SportWagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4817', '112', '9-4X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4818', '112', '90');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4819', '112', '92');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4820', '112', '93');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4821', '112', '95');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4822', '112', '96');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4823', '112', '99');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4824', '112', '900');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4825', '112', '9000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4826', '112', '9-3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4827', '112', '900 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4828', '112', '900 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4829', '112', '900 Turbo 16S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4830', '112', '9-2X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4831', '112', '9-3 Aero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4832', '112', '9-3 Aero Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4833', '112', '9-3 Aero Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4834', '112', '93 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4835', '112', '9-3 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4836', '112', '9-3 Convertible 20 Years Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4837', '112', '9-3 Convertible BioPower');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4838', '112', '9-3 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4839', '112', '9-3 ePower Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4840', '112', '9-3 Sport Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4841', '112', '93 SportCombi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4842', '112', '9-3 SportCombi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4843', '112', '93 SportHatch Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4844', '112', '9-3 SportSedan Aero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4845', '112', '9-3X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4846', '112', '9-3X Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4847', '112', '9-4X BioPower Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4848', '112', '95 Aero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4849', '112', '95 Aero Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4850', '112', '95 Aero Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4851', '112', '9-5 Estate BioPower');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4852', '112', '9-5 Saloon BioPower');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4853', '112', '9-5 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4854', '112', '9-5 SportCombi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4855', '112', '9-5 SportWagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4856', '112', '97X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4857', '112', '9-7X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4858', '112', '9-7X Aero');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4859', '112', '9-X Air BioHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4860', '112', '9-X BioHybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4861', '112', '9X Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4862', '112', 'Aero X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4863', '112', 'BioPower 100 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4864', '112', 'EV-1 Concept Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4865', '112', 'PhoeniX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4866', '112', 'Sonett I');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4867', '112', 'Sonett II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4868', '112', 'Sonett III');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4869', '112', 'Turbo X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4870', '112', 'UrSaab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4871', '113', 'Ford Mustang S281 Speedster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4872', '113', 'Ford Mustang S281 Scenic Roof');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4873', '113', 'Ford Mustang 302 Parnelli Jones');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4874', '113', 'Ford F-150 S331 Sport Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4875', '113', 'S7 Twin Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4876', '113', 'Ford Mustang S281 Supercharged');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4877', '113', 'Ford Mustang S281 Extreme');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4878', '113', 'Ford Mustang S281 3 Valve');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4879', '113', 'Ford Focus S121 N2O');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4880', '113', 'S7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4881', '114', 'Vue');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4882', '114', 'Flextreme Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4883', '114', 'Astra 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4884', '114', 'Astra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4885', '114', 'Sky Red Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4886', '114', 'Sky');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4887', '114', 'Outlook');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4888', '114', 'Vue Red Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4889', '114', 'Relay');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4890', '114', 'Ion Red Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4891', '114', 'Aura Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4892', '114', 'CV1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4893', '115', 'FR-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4894', '115', '5 Axis Widebody DJ xB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4895', '115', 'FR-S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4896', '115', 'FR-S Race car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4897', '115', 'FUSE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4898', '115', 'Hako Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4899', '115', 'iQ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4900', '115', 'iQ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4901', '115', 't2B Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4902', '115', 'tC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4903', '115', 'tC Release Series 1.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4904', '115', 'tC RS 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4905', '115', 'tC RS 3.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4906', '115', 'tC Sport Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4907', '115', 'TRDEquipped xA');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4908', '115', 'TRDEquipped xA Release Series 1.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4909', '115', 'TRDEquipped xB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4910', '115', 'xA Release Series 1.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4911', '115', 'xB');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4912', '115', 'xB RS 4.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4913', '115', 'xB RS 5.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4914', '115', 'xD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4915', '116', 'Alhambra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4916', '116', 'Alhambra 4WD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4917', '116', 'Alhambra TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4918', '116', 'Altea');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4919', '116', 'Altea 1.6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4920', '116', 'Altea Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4921', '116', 'Altea FR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4922', '116', 'Altea FR Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4923', '116', 'Altea Freetrack');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4924', '116', 'Altea Freetrack Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4925', '116', 'Altea TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4926', '116', 'Altea XL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4927', '116', 'Arosa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4928', '116', 'Bocanegra SportCoupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4929', '116', 'Bolero 330 BT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4930', '116', 'Cordoba');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4931', '116', 'Cupra GT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4932', '116', 'Exeo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4933', '116', 'Exeo ST');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4934', '116', 'Formula Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4935', '116', 'IBE Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4936', '116', 'IBE Paris Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4937', '116', 'Ibiza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4938', '116', 'Ibiza 1.4 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4939', '116', 'Ibiza 2.0');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4940', '116', 'Ibiza Bocanegra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4941', '116', 'Ibiza Cupra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4942', '116', 'Ibiza Cupra 1.9 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4943', '116', 'Ibiza Cupra Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4944', '116', 'Ibiza Ecomotive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4945', '116', 'Ibiza FR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4946', '116', 'Ibiza FR TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4947', '116', 'Ibiza FR TDI SC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4948', '116', 'Ibiza IBZ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4949', '116', 'Ibiza SportCoupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4950', '116', 'Ibiza ST');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4951', '116', 'Ibiza Vaillante Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4952', '116', 'IBL Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4953', '116', 'IBX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4954', '116', 'Leon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4955', '116', 'Leon 1.9 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4956', '116', 'Leon Cupra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4957', '116', 'Leon Cupra R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4958', '116', 'Leon Ecomotive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4959', '116', 'Leon FR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4960', '116', 'Leon FR Supercopa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4961', '116', 'Leon Linea R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4962', '116', 'Leon Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4963', '116', 'Leon Sport FR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4964', '116', 'Leon WTCC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4965', '116', 'Mii');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4966', '116', 'Mii Vibora Negra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4967', '116', 'Salsa Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4968', '116', 'Salsa Emocion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4969', '116', 'Tango Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4970', '116', 'Toledo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4971', '116', 'Toledo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4972', '116', 'Toledo Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4973', '116', 'Tribu Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4974', '117', '911');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4975', '118', 'Citigo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4976', '118', 'Citigo 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4977', '118', 'Design Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4978', '118', 'Fabia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4979', '118', 'Roomster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4980', '118', 'Fabia Combi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4981', '118', 'Fabia Combi RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4982', '118', 'Fabia Combi Scout');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4983', '118', 'Fabia Combi Scout Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4984', '118', 'Fabia GreenLine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4985', '118', 'Superb Combi 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4986', '118', 'Fabia Paris Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4987', '118', 'Fabia RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4988', '118', 'Fabia Scout');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4989', '118', 'Fabia Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4990', '118', 'Superb GreenLine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4991', '118', 'Superb');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4992', '118', 'Fabia Sketches');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4993', '118', 'Fabia Super 2000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4994', '118', 'Fabia WRC 05');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4995', '118', 'Felicia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4996', '118', 'Fabia Combi GreenLine');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4997', '118', 'Roomster Scout');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4998', '118', 'Felicia Combi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('4999', '118', 'Felicia Fun');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5000', '118', 'Felicia Pickup');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5001', '118', 'Joyster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5002', '118', 'MissionL Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5003', '118', 'Octavia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5004', '118', 'Yeti Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5005', '118', 'Octavia Combi 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5006', '118', 'Octavia Business');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5007', '118', 'Octavia Combi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5008', '118', 'Octavia Combi L and K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5009', '118', 'Octavia Combi RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5010', '118', 'Octavia Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5011', '118', 'Octavia Green E Line Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5012', '118', 'Octavia L and K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5013', '118', 'Tudor Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5014', '118', 'Octavia RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5015', '118', 'Fabia Praktik');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5016', '118', 'Octavia RS Combi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5017', '118', 'Octavia RS WRC Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5018', '118', 'Octavia Scout');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5019', '118', 'Octavia SLX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5020', '118', 'Octavia TAXI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5021', '118', 'Rapid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5022', '118', 'Roomster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5023', '118', 'Octavia Elongated L and K');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5024', '118', 'Superb 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5025', '118', 'Superb Combi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5026', '118', 'Superb Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5027', '118', 'Yeti');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5028', '118', 'Yeti 2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5029', '118', 'Yeti 4x4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5030', '119', 'Crosstown Showcar');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5031', '119', 'eScooter Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5032', '119', 'forfour');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5033', '119', 'forfun2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5034', '119', 'forspeed Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5035', '119', 'forstars Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5036', '119', 'fortwo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5037', '119', 'fortwo cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5038', '119', 'fortwo cdi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5039', '119', 'fortwo coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5040', '119', 'fortwo edition red');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5041', '119', 'fortwo electric drive');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5042', '119', 'fortwo EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5043', '119', 'fortwo sharpred');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5044', '119', 'for-us Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5045', '119', 'forvision Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5046', '119', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5047', '119', 'Roadster Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5048', '120', 'Codatronca Monza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5049', '121', 'C8 Aileron Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5050', '121', 'C8 Laviolette LM85');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5051', '121', 'C8 Aileron');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5052', '121', 'C12 Zagato');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5053', '121', 'D12 Peking to Paris');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5054', '121', 'C8 Laviolette');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5055', '121', 'C12 LaTurbie');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5056', '121', 'Aeroblade');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5057', '121', 'C8 Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5058', '121', 'C8 Double 12 S Spyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5059', '121', 'C8 Double 12');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5060', '122', 'Korando Sports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5061', '122', 'Actyon Sports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5062', '122', 'e-XIV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5063', '122', 'XIV-2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5064', '122', 'XIV-1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5065', '122', 'SUT 1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5066', '122', 'Korando');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5067', '122', 'KEV2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5068', '122', 'Rexton R-Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5069', '122', 'C200 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5070', '122', 'Actyon Sports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5071', '122', 'Actyon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5072', '122', 'Rexton');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5073', '122', 'Musso Sports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5074', '122', 'Kyron');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5075', '122', 'Rodius');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5076', '123', 'Jeep Grand Cherokee');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5077', '123', 'Chrysler Crossfire Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5078', '123', 'Chrysler 300C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5079', '124', 'GTS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5080', '125', 'Nissan 350Z');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5081', '125', 'Porsche Cayenne');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5082', '126', 'Maserati Cinqueporte');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5083', '126', 'CoupeTorino');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5084', '126', 'RKcoupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5085', '126', 'RKspyder');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5086', '127', '360');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5087', '127', '1000');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5088', '127', 'Alcyone');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5089', '127', 'Alcyone SVX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5090', '127', 'B5-TPH Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5091', '127', 'B9 Tribeca');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5092', '127', 'Baja Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5093', '127', 'XV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5094', '127', 'Outback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5095', '127', 'Impreza WRX STI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5096', '127', 'BRZ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5097', '127', 'Impreza STI Cosworth CS400');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5098', '127', 'BRZ STI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5099', '127', 'Domingo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5100', '127', 'Advanced Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5101', '127', 'Exiga');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5102', '127', 'Exiga Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5103', '127', 'Legacy Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5104', '127', 'Forester');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5105', '127', 'Forester Cross Sports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5106', '127', 'Forester STI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5107', '127', 'G3X Justy 1.5L AWD Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5108', '127', 'G4e Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5109', '127', 'Hybrid Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5110', '127', 'Impreza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5111', '127', 'Impreza 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5112', '127', 'Impreza Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5113', '127', 'Impreza Japanese Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5114', '127', 'Impreza R205');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5115', '127', 'Impreza Sedan WRX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5116', '127', 'Impreza Sports Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5117', '127', 'Impreza WRC Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5118', '127', 'Impreza WRX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5119', '127', 'Impreza WRX 300');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5120', '127', 'Impreza WRX 4-Door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5121', '127', 'Impreza WRX STI 20th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5122', '127', 'Impreza WRX STI Carbon Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5123', '127', 'Impreza WRX STI Special Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5124', '127', 'Impreza XV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5125', '127', 'Justy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5126', '127', 'Legacy');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5127', '127', 'Legacy 2.5 GT spec B');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5128', '127', 'Legacy 3.0 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5129', '127', 'Legacy Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5130', '127', 'Legacy Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5131', '127', 'Legacy Station Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5132', '127', 'Legacy Wagon JDM');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5133', '127', 'Leone');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5134', '127', 'Outback 3.0 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5135', '127', 'Pleo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5136', '127', 'R1');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5137', '127', 'R-2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5138', '127', 'Traviq');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5139', '127', 'Tribeca');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5140', '127', 'VIVIO');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5141', '127', 'WRC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5142', '127', 'XV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5143', '127', 'XV Crosstrek');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5144', '128', 'Alto');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5145', '128', 'A-Star Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5146', '128', 'Equator RMZ-4 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5147', '128', 'G70 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5148', '128', 'Grand Vitara');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5149', '128', 'Grand Vitara 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5150', '128', 'Grand Vitara V6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5151', '128', 'Kizashi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5152', '128', 'Kizashi 2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5153', '128', 'Kizashi 3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5154', '128', 'Kizashi Apex Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5155', '128', 'Kizashi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5156', '128', 'Kizashi EcoCharge Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5157', '128', 'Kizashi Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5158', '128', 'S-Cross Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5159', '128', 'Splash');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5160', '128', 'Swift');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5161', '128', 'Equator Quay Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5162', '128', 'Equator Quad Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5163', '128', 'Swift Rally Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5164', '128', 'Swift S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5165', '128', 'Swift Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5166', '128', 'SX4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5167', '128', 'SX4 Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5168', '128', 'Swift VVT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5169', '128', 'SXForce Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5170', '128', 'XL7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5171', '129', 'Tuscan Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5172', '129', 'Tuscan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5173', '129', 'Sagaris');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5174', '129', 'T350C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5175', '129', 'V8S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5176', '129', 'Chimaera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5177', '129', 'S4C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5178', '129', 'Griffith 500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5179', '129', 'Cerbera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5180', '130', 'Concept One');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5181', '130', 'Porsche 911 Aerokit I');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5182', '130', 'Porsche 911 Cabrio Aerokit I');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5183', '130', 'Porsche 911 Carrera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5184', '130', 'Porsche 911 Carrera 4 997');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5185', '130', 'Porsche 911 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5186', '130', 'Porsche 911 Turbo 997');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5187', '130', 'Porsche 911 Turbo Aerokit II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5188', '130', 'Porsche 911 Turbo Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5189', '130', 'Porsche 911 Turbo GTstreet Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5190', '130', 'Porsche 911 Turbo GTstreet R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5191', '130', 'Porsche Boxster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5192', '130', 'Porsche Carrera GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5193', '130', 'Porsche Cayenne');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5194', '130', 'Porsche 911 GT2 GTstreet RS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5195', '130', 'Porsche 911 Turbo GTstreet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5196', '130', 'Porsche Cayenne Magnum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5197', '130', 'Porsche Cayman');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5198', '130', 'Porsche Cayman S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5199', '130', 'Porsche Panamera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5200', '130', 'Porsche 911 Carrera S Police Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5201', '130', 'Porsche Panamera Black Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5202', '130', 'GTsport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5203', '130', 'Porsche Panamera GrandGT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5204', '131', 'Roadster 2.5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5205', '131', 'Roadster UK-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5206', '131', 'Roadster TAG Heuer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5207', '131', 'Roadster Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5208', '131', 'Model S Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5209', '131', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5210', '132', 'city');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5211', '133', '1X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5212', '133', '4Runner');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5213', '133', 'A-BAT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5214', '133', 'Alessandro Volta Concept ItalDesign');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5215', '133', 'Aurion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5216', '133', 'Prius Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5217', '133', 'Auris');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5218', '133', 'Auris HSD Full Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5219', '133', 'Auris Space Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5220', '133', 'Auris Touring Sports');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5221', '133', 'Avalon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5222', '133', 'Avalon Limited');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5223', '133', 'Avalon Touring');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5224', '133', 'Avalon XLS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5225', '133', 'Avensis');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5226', '133', 'Tacoma');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5227', '133', 'Avensis Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5228', '133', 'NS4 Advanced Plug-in Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5229', '133', 'Avensis Liftback');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5230', '133', 'Avensis Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5231', '133', 'Avensis Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5232', '133', 'Avensis Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5233', '133', 'Aygo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5234', '133', 'Aygo Crazy Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5235', '133', '86 GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5236', '133', 'Yaris HSD Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5237', '133', 'Sienna');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5238', '133', 'Sequoia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5239', '133', 'RAV4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5240', '133', 'Prius C Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5241', '133', 'Matrix');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5242', '133', 'Highlander Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5243', '133', 'Highlander');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5244', '133', 'Fun Vii Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5245', '133', 'FT-86 II Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5246', '133', 'Corolla');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5247', '133', 'Auris HSD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5248', '133', 'iQ3');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5249', '133', 'Yaris');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5250', '133', 'Verso');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5251', '133', 'Tundra Regular Cab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5252', '133', 'Tundra CrewMax');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5253', '133', 'Tundra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5254', '133', 'RAV4 EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5255', '133', 'Prius');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5256', '133', 'Land Cruiser V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5257', '133', 'Land Cruiser');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5258', '133', 'FT-EV II Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5259', '133', 'FT-CH Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5260', '133', 'FT-86G Sports Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5261', '133', 'Camry');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5262', '133', 'iQ');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5263', '133', 'Yaris Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5264', '133', 'Yaris 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5265', '133', 'Yaris 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5266', '133', 'Venza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5267', '133', 'Urban Cruiser');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5268', '133', 'Aygo for Sport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5269', '133', 'Camry AU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5270', '133', 'Camry CNG Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5271', '133', 'Camry Daytona 500 Pace Car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5272', '133', 'Camry Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5273', '133', 'Camry SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5274', '133', 'Camry Solara Convertible V6 SE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5275', '133', 'Camry Solara Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5276', '133', 'Camry XLE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5277', '133', 'Celica');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5278', '133', 'Celica GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5279', '133', 'Celica T Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5280', '133', 'Corolla Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5281', '133', 'Corolla Verso D4D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5282', '133', 'Corolla Verso VVTi');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5283', '133', 'Crown Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5284', '133', 'CSandS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5285', '133', 'Endo Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5286', '133', 'F3R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5287', '133', 'FCV-R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5288', '133', 'FINES FuelCell Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5289', '133', 'Fine-T Fuel Cell Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5290', '133', 'FJ Cruiser');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5291', '133', 'FJ Cruiser Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5292', '133', 'FT-86 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5293', '133', 'FT-Bh Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5294', '133', 'FT-EV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5295', '133', 'FT-HS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5296', '133', 'FT-MV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5297', '133', 'FTX Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5298', '133', 'GT 86');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5299', '133', 'Hi-CT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5300', '133', 'Hilux');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5301', '133', 'Hilux High Power');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5302', '133', 'Hybrid X Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5303', '133', 'iQ Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5304', '133', 'iQ EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5305', '133', 'i-Real Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5306', '133', 'ist Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5307', '133', 'Land Cruiser 3d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5308', '133', 'Land Cruiser 5d');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5309', '133', 'Land Cruiser Amazon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5310', '133', 'Motor Triathlon Race Car Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5311', '133', 'MR2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5312', '133', 'Prius C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5313', '133', 'Prius Plug-in Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5314', '133', 'Prius Plug-in Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5315', '133', 'Prius V');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5316', '133', 'RAV4 3door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5317', '133', 'RAV4 D4D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5318', '133', 'RAV4 EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5319', '133', 'RAV4 EV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5320', '133', 'RAV4 Sports Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5321', '133', 'RAV4 X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5322', '133', 'RiN Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5323', '133', 'Supra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5324', '133', 'Tacoma XRunner');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5325', '133', 'TRD Aurion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5326', '133', 'Tundra NASCAR Craftsman Series Truck');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5327', '133', 'Verso-S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5328', '133', 'Yaris Cabrio Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5329', '133', 'Yaris Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5330', '133', 'Yaris T Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5331', '133', 'Yaris Trend');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5332', '133', 'Yaris TS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5333', '133', 'Yaris TS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5334', '133', 'Yaris Verso');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5335', '134', 'R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5336', '134', 'Tramontanat');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5337', '135', 'Thunderbird Glass Roof Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5338', '136', 'Adam');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5339', '136', 'Agila');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5340', '136', 'Antara');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5341', '136', 'Astra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5342', '136', 'Ampera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5343', '136', 'Astra 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5344', '136', 'Astra Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5345', '136', 'Astra Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5346', '136', 'Astra Coupe 888');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5347', '136', 'Astra Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5348', '136', 'Astra GTC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5349', '136', 'Astra Sport Hatch');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5350', '136', 'Insignia VXR Sports Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5351', '136', 'Astra Sports Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5352', '136', 'Astra TwinTop');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5353', '136', 'Astra VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5354', '136', 'Corsa');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5355', '136', 'VXR8 Bathurst S');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5356', '136', 'Insignia');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5357', '136', 'Corsa 3-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5358', '136', 'Corsa 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5359', '136', 'Corsa VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5360', '136', 'Corsa VXR Nurburgring Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5361', '136', 'GTC Paris Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5362', '136', 'Vectra Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5363', '136', 'Insignia Sports Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5364', '136', 'Signum');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5365', '136', 'Meriva VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5366', '136', 'Insignia VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5367', '136', 'Meriva');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5368', '136', 'Astra Panoramic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5369', '136', 'Mokka');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5370', '136', 'Monaro V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5371', '136', 'Monaro VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5372', '136', 'Omega');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5373', '136', 'Tigra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5374', '136', 'Union Jack VX220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5375', '136', 'Vectra');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5376', '136', 'Vectra VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5377', '136', 'Vectra VXR Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5378', '136', 'VX Lightning Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5379', '136', 'VX220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5380', '136', 'VX220 Turbo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5381', '136', 'VXR220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5382', '136', 'VXR8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5383', '136', 'Zafira');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5384', '136', 'Zafira Tourer');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5385', '136', 'Frontera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5386', '136', 'Zafira Tourer Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5387', '136', 'Zafira VXR');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5388', '137', 'Fetish');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5389', '137', 'America');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5390', '137', 'Volage Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5391', '137', 'Eclectic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5392', '137', 'Astrolab');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5393', '138', '411');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5394', '138', '1500');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5395', '138', '1-Litre Car Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5396', '138', 'Scirocco GTS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5397', '138', 'AAC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5398', '138', 'Amarok');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5399', '138', 'Beetle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5400', '138', 'Beetle Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5401', '138', 'Beetle Fender Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5402', '138', 'Beetle Last Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5403', '138', 'Beetle R-Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5404', '138', 'Beetle TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5405', '138', 'Bora');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5406', '138', 'Bora Variant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5407', '138', 'Buggy Up Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5408', '138', 'Caddy Cross');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5409', '138', 'CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5410', '138', 'Concept D');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5411', '138', 'Concept R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5412', '138', 'Polo R WRC Street Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5413', '138', 'Polo R WRC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5414', '138', 'Corrado SLC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5415', '138', 'Cross Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5416', '138', 'Cross Coupe TDI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5417', '138', 'Cross Up Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5418', '138', 'CrossGolf');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5419', '138', 'CrossPolo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5420', '138', 'Derby');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5421', '138', 'E-Bugster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5422', '138', 'E-Bugster Speedster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5423', '138', 'Eos');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5424', '138', 'eT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5425', '138', 'e-Up Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5426', '138', 'Touran');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5427', '138', 'Touareg');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5428', '138', 'Sharan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5429', '138', 'Gol 2-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5430', '138', 'Golf');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5431', '138', 'Golf BlueMotion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5432', '138', 'Phaeton');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5433', '138', 'Golf Cabrio');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5434', '138', 'Passat');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5435', '138', 'Golf Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5436', '138', 'Jetta EU Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5437', '138', 'Golf Cabriolet Last Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5438', '138', 'Golf eGeneration');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5439', '138', 'Golf GTI 25th Anniversary');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5440', '138', 'Golf GTI Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5441', '138', 'Golf GTI Cabriolet Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5442', '138', 'CrossTouran');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5443', '138', 'Golf GTI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5444', '138', 'Bulli Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5445', '138', 'Golf GTI Edition 35');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5446', '138', 'Beetle R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5447', '138', 'Golf GTI Pirelli');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5448', '138', 'Golf I');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5449', '138', 'Golf I GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5450', '138', 'Polo 3-Door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5451', '138', 'Polo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5452', '138', 'Golf II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5453', '138', 'Golf II GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5454', '138', 'Milano Taxi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5455', '138', 'London Taxi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5456', '138', 'Golf blue-e-motion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5457', '138', 'Golf Variant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5458', '138', 'Golf R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5459', '138', 'Golf GTI US-Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5460', '138', 'Golf GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5461', '138', 'Golf GTD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5462', '138', 'Berlin Taxi Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5463', '138', 'Up Lite Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5464', '138', 'Touareg North Sails');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5465', '138', 'Scirocco');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5466', '138', 'Routan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5467', '138', 'Polo BlueMotion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5468', '138', 'Passat CC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5469', '138', 'L1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5470', '138', 'Golf Plus');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5471', '138', 'Gol');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5472', '138', 'BlueSport Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5473', '138', 'Touareg R50');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5474', '138', 'Touareg BlueTDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5475', '138', 'Tiguan R-Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5476', '138', 'Tiguan Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5477', '138', 'Tiguan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5478', '138', 'Scirocco Studie R Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5479', '138', 'Pickup Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5480', '138', 'Passat Variant BlueMotion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5481', '138', 'Passat CC Performance Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5482', '138', 'Golf BlueMotion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5483', '138', 'Up Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5484', '138', 'Space Up Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5485', '138', 'Space Up Blue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5486', '138', 'Passat R36');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5487', '138', 'Multivan Startline');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5488', '138', 'Golf Variant RaVe 270 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5489', '138', 'Golf GTI W12 650 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5490', '138', 'Tiguan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5491', '138', 'Thunder Bunny Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5492', '138', 'Rabbit');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5493', '138', 'R GTI Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5494', '138', 'Polo GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5495', '138', 'Polo BlueMotion');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5496', '138', 'Passat Variant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5497', '138', 'Neeza Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5498', '138', 'Jetta GLI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5499', '138', 'Jetta 2.5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5500', '138', 'Jetta');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5501', '138', 'IROC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5502', '138', 'Golf GTI Edition 30');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5503', '138', 'Golf GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5504', '138', 'GX3 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5505', '138', 'Concept A');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5506', '138', 'Touareg V6 TDI with Exclusive Equipment');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5507', '138', 'Touareg V6 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5508', '138', 'Touareg R GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5509', '138', 'Touareg Expedition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5510', '138', 'Polo Fun');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5511', '138', 'Passat R GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5512', '138', 'New Beetle Ragster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5513', '138', 'New Beetle');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5514', '138', 'Jetta R GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5515', '138', 'Golf Speed');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5516', '138', 'Golf R32');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5517', '138', 'Fox 1.6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5518', '138', 'Fox 1.4');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5519', '138', 'Fox 1.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5520', '138', 'Fox');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5521', '138', 'EcoRacer Prototype');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5522', '138', 'Touareg W12 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5523', '138', 'Sharan Special');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5524', '138', 'RaceTouareg');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5525', '138', 'Phaeton with Long Wheelbase');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5526', '138', 'Phaeton V8 4.2 4MOTION');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5527', '138', 'New Beetle Cabriolet Dark Flint Limited Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5528', '138', 'Golf GTI 5-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5529', '138', 'Concept T');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5530', '138', 'Concept C');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5531', '138', 'Tarek');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5532', '138', 'Polo Sedan');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5533', '138', 'Phaeton V10 TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5534', '138', 'New Beetle Sport Edition');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5535', '138', 'Golf III');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5536', '138', 'Golf III GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5537', '138', 'Golf III VR6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5538', '138', 'Golf IV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5539', '138', 'Golf IV GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5540', '138', 'Golf R Cabriolet Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5541', '138', 'Jetta Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5542', '138', 'K70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5543', '138', 'Lavida');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5544', '138', 'Lupo');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5545', '138', 'Lupo 3L TDI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5546', '138', 'Lupo GTI');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5547', '138', 'Magellan Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5548', '138', 'Microbus Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5549', '138', 'New Beetle Cabriolet');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5550', '138', 'New Beetle Dune Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5551', '138', 'New Beetle USA Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5552', '138', 'New Compact Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5553', '138', 'NILS Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5554', '138', 'Noah');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5555', '138', 'Passat Alltrack');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5556', '138', 'Passat CC R-Line');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5557', '138', 'Passat Estate');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5558', '138', 'Passat US Version');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5559', '138', 'Passat W8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5560', '138', 'Passat W8 Variant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5561', '138', 'Polo BlueGT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5562', '138', 'Polo Classic');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5563', '138', 'Polo Saloon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5564', '138', 'Polo Variant');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5565', '138', 'Race Touareg 3 Qatar Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5566', '138', 'Santana new');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5567', '138', 'Scirocco R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5568', '138', 'Taigun Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5569', '138', 'Touareg Edition X');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5570', '138', 'Up');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5571', '138', 'Up 4-door');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5572', '138', 'Vento');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5573', '138', 'Vento VR6');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5574', '138', 'W12 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5575', '138', 'W12 Coupe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5576', '138', 'XL1 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5577', '139', '780');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5578', '139', '3CC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5579', '139', 'ACC 2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5580', '139', 'Air Motion Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5581', '139', 'C30');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5582', '139', 'C30 BEV');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5583', '139', 'C30 Design Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5584', '139', 'XC90');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5585', '139', 'C30 DRIVe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5586', '139', 'C30 Heico Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5587', '139', 'C30 Polestar Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5588', '139', 'C70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5589', '139', 'C70 Convertible');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5590', '139', 'C70 Coupe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5591', '139', 'Caresto C70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5592', '139', 'Caresto V8 Speedster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5593', '139', 'Evolve S40 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5594', '139', 'Heico C30 SEMA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5595', '139', 'Heico S80 SEMA Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5596', '139', 'PCC 2 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5597', '139', 'PV36 Carioca');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5598', '139', 'ReCharge Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5599', '139', 'S40');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5600', '139', 'S40 DRIVe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5601', '139', 'S60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5602', '139', 'S60 AWD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5603', '139', 'S60 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5604', '139', 'S60 Polestar Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5605', '139', 'S60 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5606', '139', 'S60 R-Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5607', '139', 'S80');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5608', '139', 'S80 Heico Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5609', '139', 'S80L');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5610', '139', 'SCC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5611', '139', 'T6 Roadster Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5612', '139', 'Universe Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5613', '139', 'XC90 Sport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5614', '139', 'V40');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5615', '139', 'V40 Cross Country');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5616', '139', 'V40 R-Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5617', '139', 'V50');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5618', '139', 'V50 DRIVe');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5619', '139', 'V50 Romero Britto');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5620', '139', 'V50 SV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5621', '139', 'V60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5622', '139', 'V60 Plug-in Hybrid');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5623', '139', 'V60 R-Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5624', '139', 'V70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5625', '139', 'V70 Police car');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5626', '139', 'V70 R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5627', '139', 'V70 R-Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5628', '139', 'V70 XC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5629', '139', 'VCC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5630', '139', 'XC60');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5631', '139', 'XC60 Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5632', '139', 'XC60 Plug-in Hybrid Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5633', '139', 'XC60 R-Design');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5634', '139', 'XC70');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5635', '139', 'XC70 AT Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5636', '139', 'XC70 Surf Rescue Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5637', '139', 'XC90 Lego Replica');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5638', '139', 'ACC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5639', '139', 'XC90 PUV Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5640', '139', 'PCC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5641', '139', 'XC90 Supercharged V8');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5642', '139', 'XC90 V8 AWD');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5643', '139', 'YCC Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5644', '139', 'You Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5645', '140', 'Bentley Continental Flying Spur');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5646', '140', 'Bentley Continental GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5647', '140', 'Bentley Continental GT Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5648', '140', 'Bentley Flying Spur Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5649', '140', 'BMW 3-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5650', '140', 'BMW 5-Series F10');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5651', '140', 'BMW 7-Series F01 Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5652', '140', 'BMW M5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5653', '140', 'Infiniti G Sedan V36');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5654', '140', 'Jaguar XJ X350');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5655', '140', 'Land Rover Range Rover');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5656', '140', 'Land Rover Range Rover Mk II');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5657', '140', 'Mercedes-Benz R-Class W251');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5658', '140', 'Lexus IS-F');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5659', '140', 'Lexus IS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5660', '140', 'Nissan GT-R');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5661', '140', 'Lexus LS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5662', '140', 'Lexus LS460');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5663', '140', 'Lexus LS600h');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5664', '140', 'Lexus LS600h Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5665', '140', 'Lexus LX570');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5666', '140', 'Lexus RX');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5667', '140', 'Maserati Quattroporte Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5668', '140', 'Mercedes-Benz C-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5669', '140', 'Mercedes-Benz C-Class Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5670', '140', 'Mercedes-Benz CL-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5671', '140', 'Lexus SC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5672', '140', 'Lexus GS');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5673', '140', 'Mercedes-Benz CL-Class Monster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5674', '140', 'Mercedes-Benz CL-Class W140');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5675', '140', 'Mercedes-Benz CL-Class W215');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5676', '140', 'Mercedes-Benz CLS-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5677', '140', 'Mercedes-Benz E-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5678', '140', 'BMW 7-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5679', '140', 'BMW 6-Series');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5680', '140', 'Aston Martin DB7');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5681', '140', 'Mercedes-Benz E-Class W212 Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5682', '140', 'Mercedes-Benz E-Class Wagon');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5683', '140', 'Mercedes-Benz M-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5684', '140', 'Mercedes-Benz S-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5685', '140', 'Nissan March');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5686', '140', 'Mercedes-Benz S-Class W220 Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5687', '140', 'Mercedes-Benz S-Class W140');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5688', '140', 'Mercedes-Benz S-Class W220');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5689', '140', 'Lamborghini Murcielago');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5690', '140', 'Toyota Celsior');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5691', '140', 'Mercedes-Benz S-Class W221');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5692', '140', 'Mercedes-Benz S-Class W221 Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5693', '140', 'Mercedes-Benz SL-Class');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5694', '140', 'Mercedes-Benz SL-Class R129');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5695', '140', 'Mercedes-Benz SL-Class R230');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5696', '140', 'Mercedes-Benz Viano');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5697', '140', 'Mercedes-Benz Vito');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5698', '140', 'Mercedes-Benz W124 E');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5699', '140', 'Mercedes-Benz W124 TE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5700', '140', 'Nissan Z33');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5701', '140', 'Rolls-Royce Phantom Black Bison');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5702', '140', 'Toyota Alphard');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5703', '140', 'Toyota Altezza');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5704', '140', 'Mercedes-Benz W126 SEL');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5705', '140', 'Mercedes-Benz W126 SEC');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5706', '140', 'Toyota Land Cruiser');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5707', '140', 'Toyota Vellfire');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5708', '140', 'Mercedes-Benz W124 CE');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5709', '140', 'Nissan Primera');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5710', '141', 'Spyder Concept');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5711', '141', 'Roadster MF5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5712', '141', 'GT MF5');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5713', '141', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5714', '141', 'GT');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5715', '142', 'Roadster 3.2');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5716', '142', 'Roadster');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5717', '142', 'Clubsport');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5718', '143', 'Z-One');
INSERT INTO `models` (`id`, `make_id`, `name`) VALUES ('5719', '144', 'ST1');


-- --------------------------------------------------
# -- Table structure for table `news`
-- --------------------------------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created` date NOT NULL DEFAULT '0000-00-00',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `news`
-- --------------------------------------------------

INSERT INTO `news` (`id`, `title`, `body`, `author`, `created`, `active`) VALUES ('1', 'Welcome to our Client Area!', '<p>Sis kor\'o gingivalo ho. Des zorgi nedifinita e, ro bis kroma sezononomo, he ene dume liva havi. Avio esti fine mem iu, io trans fontoj tempolongo des, celo kombi ng ari. Gh kaŭze decilitro eksteraĵo tro. Fiksi frida lo nea, arki helpa sep bv..</p>', 'admin', '2015-08-01', '1');
INSERT INTO `news` (`id`, `title`, `body`, `author`, `created`, `active`) VALUES ('2', 'New version available', '<p>\n\tEviti gramatika tuj um, fo vice komparado ili. Ar ien imaga elparolo, \nunt rilativo mallongigoj ge. Ha un\' plie timi internacia. Tuta ablativa \nprepozicio ebl dz, kasedo nedifina des ju. Kovri patro latina jes kv, \nnevo nuancado frazetvortigo go ind. Dekoj solinfano rolvorteto ha fri, \nki unuj miria supre kaj, ia tia tera iele faras. Jo devus ilion traigi \ndio, tio oj tiom volu, kuo ni deziri ipsilono propozicio.\n</p>', 'admin', '2015-08-09', '1');
INSERT INTO `news` (`id`, `title`, `body`, `author`, `created`, `active`) VALUES ('3', 'Summer Special', '<p>We are pleased to announce that we have installed <i>Car Dealer Pro</i>! We are extremely excited about this incredible <b>software!</b></p>', 'admin', '2015-08-24', '1');


-- --------------------------------------------------
# -- Table structure for table `newsletter`
-- --------------------------------------------------
DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE `newsletter` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `newsletter`
-- --------------------------------------------------



-- --------------------------------------------------
# -- Table structure for table `pages`
-- --------------------------------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `body` longtext,
  `created` date NOT NULL,
  `contact` tinyint(1) NOT NULL DEFAULT '0',
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  `custom_page` tinyint(1) NOT NULL DEFAULT '0',
  `home_page` tinyint(1) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `pages`
-- --------------------------------------------------

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `created`, `contact`, `faq`, `custom_page`, `home_page`, `active`) VALUES ('1', 'Best Way To Search & Sell Your Car & Find Your Favourite', 'welcome', '<div class="wojo secondary segment"> \n    <h2 class="wojo header secondary text content-center">Best Way To Search &amp; Sell Your Car &amp; Find Your Favourite</h2>\n    <p class="content-center wojo primary text"> Malis laudem adipisci per ea, ea doming patrioque eum. Ut duo wisi persecuti. Id delenit praesent eam. Putant animal his ut. Cum ut periculis referrentur efficiantur, sed affert partiendo percipitur ne, vim molestie principes honestatis ex. Pro ad iusto ancillae, te est diam nullam. At nec erat autem facilisis.</p>\n    <div class="wojo tripple space divider"></div>\n    <div class="columns gutters">\n      <div class="screen-50 tablet-50 phone-100">\n        <div class="wojo icon basic message"> <i class="white icon find"></i>\n          <div class="content">\n            <div class="header"> <a href="search/" class="white">Are you looking for a car?</a> </div>\n            <p class="white">Pro ad iusto ancillae, te est diam.</p>\n          </div>\n        </div>\n      </div>\n      <div class="screen-50 tablet-50 phone-100">\n        <div class="wojo icon basic message"> <i class="white car icon"></i>\n          <div class="content">\n            <div class="header"> <a href="account/" class="white">Want to sell your car?</a> </div>\n            <p class="white">Pro ad iusto ancillae, te est diam.</p>\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>', '2011-07-17', '0', '0', '0', '1', '1');
INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `created`, `contact`, `faq`, `custom_page`, `home_page`, `active`) VALUES ('2', 'About Us', 'about-us', '<h3>Ut In Nulla Enim. Phasellus</h3><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum non venenatis nisl tempor. Suspendisse dictum feugiat nisl ut dapibus. Mauris iaculis porttitor posuere. Praesent id metus massa, ut blandit odio. Proin quis tortor orci.&lt;/p&gt;&lt;p&gt;Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi dolor sit amet absidum felisiti.&lt;/p&gt;&lt;h3&gt;Ut In Nulla Enim. Phasellus&lt;/h3&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris. Vivamus hendrerit arcu sed erat molestie vehicula. Sed auctor neque eu tellus rhoncus ut eleifend nibh porttitor. Ut in nulla enim. Phasellus molestie magna non est bibendum. Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus tortor. Nulla facilisi dolor sit amet absidum felisiti.&lt;/p&gt;&lt;p&gt;Duis aliquet egestas purus in blandit. Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed. Molestie augue sit amet leo consequat posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin vel ante a orci tempus eleifend ut et magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla.</p>', '2012-11-04', '0', '0', '0', '0', '1');
INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `created`, `contact`, `faq`, `custom_page`, `home_page`, `active`) VALUES ('3', 'F.A.Q.', 'faq', 'Here you can find most common questions regarding CDP', '2010-03-18', '0', '1', '0', '0', '1');
INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `created`, `contact`, `faq`, `custom_page`, `home_page`, `active`) VALUES ('4', 'Contact Us', 'contact-us', '<p>\r\n\tLorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris congue  vehicula enim id condimentum. <br>\r\n\tInteger at leo lobortis libero fermentum  cursus. Mauris nulla nibh, condimentum ac cursus ac, ullamcorper eu  orci. <br>\r\n\t<br>\r\n\tQuisque at vehicula ante. Pellentesque habitant  morbi tristique senectus et netus et malesuada fames ac turpis egestas.  Sed turpis felis, egestas vitae tincidunt nec, ullamcorper non nisi. Vivamus venenatis consectetur libero quis consequat. Vivamus ut lorem diam. Cras interdum sem sed risus dictum fringilla. Sed sagittis turpis ut nisi faucibus pellentesque. Nunc sit amet semper erat</p>', '2010-03-02', '1', '0', '0', '0', '1');
INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `created`, `contact`, `faq`, `custom_page`, `home_page`, `active`) VALUES ('5', 'Other page', 'other-page', '<p>\r\n\tSed eu lorem ut diam feugiat vulputate sed a enim. Aenean interdum, dui a  varius facilisis, metus est imperdiet justo, pharetra auctor ipsum  lorem non mauris. Mauris laoreet lectus lacus. Maecenas ut enim diam,  non malesuada sapien. Fusce ullamcorper pretium risus, eu volutpat dolor  dapibus sit amet\r\n</p>', '2010-03-18', '0', '0', '0', '0', '1');


-- --------------------------------------------------
# -- Table structure for table `payments`
-- --------------------------------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txn_id` varchar(50) DEFAULT NULL,
  `membership_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `rate_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(4,2) NOT NULL DEFAULT '0.00',
  `coupon` decimal(4,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(4) DEFAULT NULL,
  `pp` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `muid` (`membership_id`,`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `payments`
-- --------------------------------------------------

INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('1', 'txn_4rX4ydAuaWCC3h', '3', '15', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '81.18.78.65', '2015-06-18 00:44:24', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('2', 'txn_4rX4ydAuaWCC3h', '2', '19', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '128.213.194.36', '2015-06-28 19:50:26', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('3', 'txn_4rX4ydAuaWCC3h', '2', '17', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '166.13.163.92', '2015-05-11 12:31:48', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('4', 'txn_4rX4ydAuaWCC3h', '2', '9', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '197.11.55.145', '2015-02-11 19:00:16', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('5', 'txn_4rX4ydAuaWCC3h', '4', '9', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '215.163.29.247', '2015-07-26 10:44:54', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('6', 'txn_4rX4ydAuaWCC3h', '2', '3', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '214.223.187.61', '2015-04-06 12:39:42', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('7', 'txn_4rX4ydAuaWCC3h', '3', '10', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Skrill', '158.60.19.198', '2015-06-22 22:41:56', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('8', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '123.211.222.202', '2015-05-10 19:32:47', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('9', 'txn_4rX4ydAuaWCC3h', '2', '7', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '11.157.97.230', '2015-06-28 15:22:21', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('10', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Stripe', '26.203.91.90', '2015-05-09 16:31:10', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('11', 'txn_4rX4ydAuaWCC3h', '4', '1', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '108.240.81.58', '2015-08-04 00:13:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('12', 'txn_4rX4ydAuaWCC3h', '2', '7', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '135.149.198.105', '2015-02-10 18:05:43', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('13', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '135.112.214.231', '2015-03-27 18:01:13', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('14', 'txn_4rX4ydAuaWCC3h', '4', '11', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '234.203.6.46', '2015-03-07 16:33:16', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('15', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '36.149.138.202', '2015-06-29 00:52:07', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('16', 'txn_4rX4ydAuaWCC3h', '4', '7', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '235.167.18.227', '2015-02-01 21:20:32', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('17', 'txn_4rX4ydAuaWCC3h', '3', '2', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Stripe', '243.72.67.165', '2015-05-04 12:44:03', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('18', 'txn_4rX4ydAuaWCC3h', '4', '16', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '8.36.244.4', '2015-01-03 07:00:24', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('19', 'txn_4rX4ydAuaWCC3h', '2', '16', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Skrill', '174.241.17.187', '2015-06-04 02:09:43', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('20', 'txn_4rX4ydAuaWCC3h', '2', '3', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Skrill', '106.187.158.248', '2015-04-22 21:42:39', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('21', 'txn_4rX4ydAuaWCC3h', '2', '20', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '206.148.102.218', '2015-05-03 08:04:52', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('22', 'txn_4rX4ydAuaWCC3h', '4', '15', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '4.115.165.88', '2015-04-06 15:04:30', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('23', 'txn_4rX4ydAuaWCC3h', '2', '14', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '212.248.207.70', '2015-03-24 07:09:31', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('24', 'txn_4rX4ydAuaWCC3h', '2', '9', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '213.235.51.170', '2015-06-12 11:41:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('25', 'txn_4rX4ydAuaWCC3h', '4', '6', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '97.235.159.146', '2015-05-13 23:40:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('26', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '195.68.178.221', '2015-04-16 15:13:09', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('27', 'txn_4rX4ydAuaWCC3h', '3', '15', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '141.137.115.181', '2015-04-09 01:57:21', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('28', 'txn_4rX4ydAuaWCC3h', '4', '9', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '244.26.149.14', '2015-02-09 18:01:47', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('29', 'txn_4rX4ydAuaWCC3h', '2', '20', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '242.103.81.108', '2015-07-23 06:28:54', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('30', 'txn_4rX4ydAuaWCC3h', '2', '5', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Skrill', '242.217.202.67', '2015-05-31 09:18:41', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('31', 'txn_4rX4ydAuaWCC3h', '2', '5', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '81.18.229.136', '2015-01-24 01:41:22', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('32', 'txn_4rX4ydAuaWCC3h', '4', '15', '129.99', '12.99', '0.00', '142.98', 'CAD', 'PayPal', '75.185.183.45', '2015-02-08 03:22:41', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('33', 'txn_4rX4ydAuaWCC3h', '2', '1', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Skrill', '31.18.154.166', '2015-07-12 07:17:35', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('34', 'txn_4rX4ydAuaWCC3h', '3', '7', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '140.222.107.32', '2015-03-09 13:07:50', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('35', 'txn_4rX4ydAuaWCC3h', '2', '9', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '213.73.61.167', '2015-02-21 09:04:31', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('36', 'txn_4rX4ydAuaWCC3h', '2', '20', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '215.168.214.15', '2015-06-23 17:46:48', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('37', 'txn_4rX4ydAuaWCC3h', '2', '5', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '49.25.147.50', '2015-07-22 04:47:06', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('38', 'txn_4rX4ydAuaWCC3h', '2', '6', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '179.94.253.223', '2015-02-05 06:15:37', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('39', 'txn_4rX4ydAuaWCC3h', '3', '4', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '45.110.90.244', '2015-02-11 15:23:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('40', 'txn_4rX4ydAuaWCC3h', '3', '12', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Stripe', '198.26.80.71', '2015-05-04 08:50:56', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('41', 'txn_4rX4ydAuaWCC3h', '3', '17', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '51.70.2.60', '2015-06-23 08:05:48', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('42', 'txn_4rX4ydAuaWCC3h', '4', '3', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '53.194.138.218', '2015-04-10 17:16:15', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('43', 'txn_4rX4ydAuaWCC3h', '4', '15', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Skrill', '143.119.222.31', '2015-02-26 02:04:18', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('44', 'txn_4rX4ydAuaWCC3h', '2', '4', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '54.58.52.18', '2015-03-25 09:57:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('45', 'txn_4rX4ydAuaWCC3h', '4', '12', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Skrill', '107.195.205.235', '2015-03-17 22:23:59', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('46', 'txn_4rX4ydAuaWCC3h', '4', '16', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '29.133.214.25', '2015-02-25 22:02:59', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('47', 'txn_4rX4ydAuaWCC3h', '3', '6', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '93.87.2.87', '2015-04-14 12:58:34', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('48', 'txn_4rX4ydAuaWCC3h', '2', '14', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '199.238.157.73', '2015-07-05 14:45:16', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('49', 'txn_4rX4ydAuaWCC3h', '3', '7', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '49.111.134.227', '2015-05-31 11:56:58', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('50', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '80.1.9.150', '2015-03-20 22:43:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('51', 'txn_4rX4ydAuaWCC3h', '4', '13', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Skrill', '232.96.208.11', '2015-06-10 11:45:18', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('52', 'txn_4rX4ydAuaWCC3h', '2', '20', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '118.131.129.172', '2015-06-24 01:08:54', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('53', 'txn_4rX4ydAuaWCC3h', '3', '1', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Skrill', '91.167.12.246', '2015-02-09 13:58:06', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('54', 'txn_4rX4ydAuaWCC3h', '3', '6', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Skrill', '29.76.45.129', '2015-04-24 19:40:15', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('55', 'txn_4rX4ydAuaWCC3h', '3', '11', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Skrill', '61.13.7.173', '2015-06-15 05:29:41', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('56', 'txn_4rX4ydAuaWCC3h', '4', '12', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '138.203.43.166', '2015-03-22 07:24:31', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('57', 'txn_4rX4ydAuaWCC3h', '2', '11', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '20.69.20.30', '2015-06-06 08:26:30', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('58', 'txn_4rX4ydAuaWCC3h', '3', '17', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '36.241.106.125', '2015-03-10 05:22:05', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('59', 'txn_4rX4ydAuaWCC3h', '2', '4', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '202.44.166.11', '2015-05-13 03:48:59', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('60', 'txn_4rX4ydAuaWCC3h', '3', '12', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '194.122.52.144', '2015-04-22 17:16:22', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('61', 'txn_4rX4ydAuaWCC3h', '4', '4', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '122.201.250.73', '2015-01-23 03:24:56', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('62', 'txn_4rX4ydAuaWCC3h', '4', '4', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '30.98.65.92', '2015-02-07 10:01:48', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('63', 'txn_4rX4ydAuaWCC3h', '4', '9', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '85.22.67.119', '2015-02-20 06:55:35', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('64', 'txn_4rX4ydAuaWCC3h', '2', '12', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '229.97.220.190', '2015-06-07 07:54:20', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('65', 'txn_4rX4ydAuaWCC3h', '3', '19', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '30.38.181.79', '2015-08-06 13:26:36', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('66', 'txn_4rX4ydAuaWCC3h', '4', '12', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Skrill', '46.107.52.23', '2015-01-11 07:44:30', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('67', 'txn_4rX4ydAuaWCC3h', '3', '19', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '8.31.116.216', '2015-05-13 23:54:08', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('68', 'txn_4rX4ydAuaWCC3h', '3', '7', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '186.11.208.168', '2015-06-12 09:13:35', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('69', 'txn_4rX4ydAuaWCC3h', '4', '7', '129.99', '12.99', '0.00', '142.98', 'CAD', 'PayPal', '254.250.21.157', '2015-03-04 23:40:40', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('70', 'txn_4rX4ydAuaWCC3h', '3', '1', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Stripe', '255.137.121.128', '2015-05-19 14:38:20', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('71', 'txn_4rX4ydAuaWCC3h', '4', '13', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '235.38.166.85', '2015-06-26 20:31:00', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('72', 'txn_4rX4ydAuaWCC3h', '3', '11', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '179.78.21.115', '2015-01-28 14:50:05', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('73', 'txn_4rX4ydAuaWCC3h', '4', '7', '129.99', '12.99', '0.00', '142.98', 'CAD', 'PayPal', '50.23.188.221', '2015-03-08 23:41:46', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('74', 'txn_4rX4ydAuaWCC3h', '3', '15', '19.99', '0.00', '0.00', '19.99', 'CAD', 'PayPal', '252.147.204.225', '2015-01-20 13:34:23', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('75', 'txn_4rX4ydAuaWCC3h', '2', '14', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '105.71.16.223', '2015-06-24 11:54:32', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('76', 'txn_4rX4ydAuaWCC3h', '4', '15', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '87.48.40.236', '2015-01-20 20:18:21', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('77', 'txn_4rX4ydAuaWCC3h', '2', '8', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Auth.net', '253.22.186.7', '2015-07-22 19:48:43', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('78', 'txn_4rX4ydAuaWCC3h', '2', '5', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '96.246.223.154', '2015-06-06 18:51:05', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('79', 'txn_4rX4ydAuaWCC3h', '4', '18', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '186.101.246.97', '2015-04-23 01:22:20', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('80', 'txn_4rX4ydAuaWCC3h', '3', '8', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Auth.net', '25.200.231.33', '2015-05-12 17:43:05', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('81', 'txn_4rX4ydAuaWCC3h', '2', '5', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Skrill', '91.232.51.82', '2015-07-03 16:56:07', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('82', 'txn_4rX4ydAuaWCC3h', '4', '7', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '176.244.136.13', '2015-05-20 14:57:15', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('83', 'txn_4rX4ydAuaWCC3h', '2', '19', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Skrill', '225.208.99.119', '2015-06-15 10:03:34', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('84', 'txn_4rX4ydAuaWCC3h', '4', '5', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Skrill', '232.181.154.231', '2015-06-02 18:00:06', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('85', 'txn_4rX4ydAuaWCC3h', '4', '12', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '4.142.26.45', '2015-01-08 04:29:39', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('86', 'txn_4rX4ydAuaWCC3h', '3', '9', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Skrill', '203.82.206.113', '2015-02-16 12:05:33', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('87', 'txn_4rX4ydAuaWCC3h', '4', '13', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '255.26.31.67', '2015-01-13 11:55:35', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('88', 'txn_4rX4ydAuaWCC3h', '4', '2', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Skrill', '129.10.7.189', '2015-07-15 03:53:15', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('89', 'txn_4rX4ydAuaWCC3h', '4', '20', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Auth.net', '118.167.0.174', '2015-07-21 02:51:18', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('90', 'txn_4rX4ydAuaWCC3h', '2', '2', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '204.123.19.91', '2015-04-21 12:37:05', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('91', 'txn_4rX4ydAuaWCC3h', '2', '1', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '239.172.9.146', '2015-04-27 22:12:00', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('92', 'txn_4rX4ydAuaWCC3h', '4', '9', '129.99', '12.99', '0.00', '142.98', 'CAD', 'PayPal', '168.98.11.14', '2015-04-01 12:14:35', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('93', 'txn_4rX4ydAuaWCC3h', '2', '7', '29.99', '0.00', '0.00', '29.99', 'CAD', 'PayPal', '72.62.117.184', '2015-06-13 18:23:28', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('94', 'txn_4rX4ydAuaWCC3h', '3', '2', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Skrill', '199.186.112.182', '2015-08-09 20:14:23', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('95', 'txn_4rX4ydAuaWCC3h', '3', '15', '19.99', '0.00', '0.00', '19.99', 'CAD', 'Stripe', '148.77.165.226', '2015-02-18 20:10:25', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('96', 'txn_4rX4ydAuaWCC3h', '2', '3', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '129.135.111.210', '2015-05-23 12:18:09', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('97', 'txn_4rX4ydAuaWCC3h', '2', '17', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '214.158.112.100', '2015-08-08 22:20:19', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('98', 'txn_4rX4ydAuaWCC3h', '4', '21', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '17.180.81.48', '2015-06-22 18:36:30', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('99', 'txn_4rX4ydAuaWCC3h', '2', '18', '29.99', '0.00', '0.00', '29.99', 'CAD', 'Stripe', '151.24.254.105', '2015-02-12 08:16:15', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('100', 'txn_4rX4ydAuaWCC3h', '4', '6', '129.99', '12.99', '0.00', '142.98', 'CAD', 'Stripe', '40.254.143.146', '2015-01-19 22:21:23', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('101', 'txn_78jDdLuVnvanXg', '3', '1', '19.99', '2.60', '0.00', '22.59', 'CAD', 'Stripe', 'fe80::858c:271d:bf0:', '2015-10-10 14:07:30', '1');
INSERT INTO `payments` (`id`, `txn_id`, `membership_id`, `user_id`, `rate_amount`, `tax`, `coupon`, `total`, `currency`, `pp`, `ip`, `created`, `status`) VALUES ('102', 'txn_78jEVwQXjQgqYO', '3', '1', '19.99', '2.60', '0.00', '22.59', 'CAD', 'Stripe', 'fe80::858c:271d:bf0:', '2015-10-10 14:08:31', '1');


-- --------------------------------------------------
# -- Table structure for table `privileges`
-- --------------------------------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text,
  `mode` varchar(8) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `privileges`
-- --------------------------------------------------

INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('1', 'add_menus', 'Add Menus', 'Add Menus on the site', 'add', 'Menus');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('2', 'edit_menus', 'Edit Menus', 'Edit Menus on the site', 'edit', 'Menus');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('3', 'delete_menus', 'Delete Menus', 'Delete Menus from the site', 'delete', 'Menus');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('4', 'add_pages', 'Add Pages', 'Add Pages on the site', 'add', 'Pages');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('5', 'edit_pages', 'Edit Pages', 'Edit Pages on the site', 'edit', 'Pages');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('6', 'delete_pages', 'Delete Pages', 'Delete Pages from the site', 'delete', 'Pages');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('8', 'add_members', 'Add Members', 'Add new member', 'add', 'Members');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('7', 'edit_members', 'Edit Members', 'Access edit properties for members section.', 'edit', 'Members');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('9', 'delete_members', 'Delete Members', 'Delete Members from the site', 'delete', 'Members');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('10', 'add_faq', 'Add F.A.Q.', 'Permission to add F.A.Q.', 'add', 'FAQ');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('11', 'edit_faq', 'Edit F.A.Q.', 'Edit Site F.A.Q.', 'edit', 'FAQ');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('12', 'delete_faq', 'Delete F.A.Q.', 'Delete F.A.Q.', 'delete', 'FAQ');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('13', 'manage_cats', 'Manage Categories', 'Permission to add/edit/delete categories', 'manage', 'Categories');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('14', 'add_cats', 'Add Categories', 'Permission to add new categories', 'add', 'Categories');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('15', 'delete_cats', 'Delete Categories', 'Permission to delete existing categories', 'delete', 'Categories');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('16', 'edit_items', 'Edit Listings', 'Permission to edit existing listings', 'edit', 'Listings');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('17', 'delete_items', 'Delete Listings', 'Permission to delete existing listings', 'delete', 'Listings');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('18', 'manage_trans', 'Manage Transmissions', 'Permission to add/edit/delete transmissions types', 'manage', 'Transmissions');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('19', 'manage_conditions', 'Manage Conditions', 'Permission to add/edit/delete conditions', 'manage', 'Conditions');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('20', 'add_items', 'Add Listings', 'Permission to add listings', 'add', 'Listings');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('21', 'manage_features', 'Manage Features', 'Permission to add/edit/delete features', 'manage', 'Features');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('22', 'manage_makes', 'Manage Makes', 'Permission to add/edit/delete car makes', 'manage', 'Makes');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('23', 'manage_models', 'Manage Models', 'Permission to add/edit/delete car models', 'manage', 'Models');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('24', 'manage_fuel', 'Manage Fulel', 'Permission to add/edit/delete fuel types', 'manage', 'Fuel');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('25', 'manage_gallery', 'Manage Galleries', 'Permission to add/edit/delete gallery images', 'manage', 'Gallery');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('26', 'manage_upay', 'Manage User Payments', 'Permission to access user payment history', 'manage', 'Members');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('27', 'manage_coupons', 'Manage Discounts/Coupons', 'Permission to add/edit/delete discounts/coupons', 'manage', 'Coupons');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('28', 'manage_approval', 'Manage Approvals', 'Permission to approve/reject pending listings', 'approve', 'Listings');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('29', 'manage_slider', 'Manage Slider', 'Permission to add/edit/delete slider images', 'manage', 'Slider');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('30', 'manage_reviews', 'Manage Site Reviews', 'Permission to edit/delete site reviews', 'manage', 'Reviews');
INSERT INTO `privileges` (`id`, `code`, `name`, `description`, `mode`, `type`) VALUES ('31', 'manage_news', 'Manage News Announcement', 'Permission to edit/edit/delete site annoucements', 'manage', 'News');


-- --------------------------------------------------
# -- Table structure for table `reviews`
-- --------------------------------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `twitter` varchar(50) DEFAULT NULL,
  `content` mediumtext,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `reviews`
-- --------------------------------------------------

INSERT INTO `reviews` (`id`, `user_id`, `twitter`, `content`, `created`, `status`) VALUES ('1', '10', 'maryarmstrong', 'Migas scenester literally wayfarers chambray cronut, messenger bag hoodie pickled synth stumptown asymmetrical. Hashtag jean shorts beard, blog roof party bespoke cold-pressed', '2015-08-19 22:04:53', '1');
INSERT INTO `reviews` (`id`, `user_id`, `twitter`, `content`, `created`, `status`) VALUES ('2', '20', 'catherines', 'Helvetica leggings Banksy, meh seitan cray Carles cold-pressed actually Thundercats Austin. Echo Park PBR paleo, roof party authentic cliche vegan selfies Bushwick.', '2015-08-19 22:09:21', '1');
INSERT INTO `reviews` (`id`, `user_id`, `twitter`, `content`, `created`, `status`) VALUES ('3', '14', 'Judy_Kelly', 'Hella pop-up kogi, you probably haven\'t heard of them Banksy VHS slow-carb migas typewriter seitan mustache gastropub. Twee listicle Marfa hoodie, disrupt meh bespoke cray taxidermy Pitchfork paleo mustache', '2015-08-19 22:09:25', '1');
INSERT INTO `reviews` (`id`, `user_id`, `twitter`, `content`, `created`, `status`) VALUES ('4', '5', 'johnb', 'Food truck fixie meditation iPhone crucifix Tumblr, health goth before they sold out forage pop-up cornhole authentic next level. Migas lo-fi Neutra 8-bit, fap occupy listicle farm-to-table chambray freegan small batch', '2015-08-19 22:11:40', '1');
INSERT INTO `reviews` (`id`, `user_id`, `twitter`, `content`, `created`, `status`) VALUES ('5', '9', 'sarab', 'Bottle twee cliche typewriter, bespoke pork belly slow-carb squid asymmetrical gentrify 90&#39;s umami. Before they sold out crucifix flannel.', '2015-08-19 22:11:40', '1');
INSERT INTO `reviews` (`id`, `user_id`, `twitter`, `content`, `created`, `status`) VALUES ('6', '12', 'irenehudson', 'Cronut occupy meggings, polaroid Vice mustache pug XOXO swag pork belly drinking vinegar readymade', '2015-08-19 22:11:43', '1');


-- --------------------------------------------------
# -- Table structure for table `role_privileges`
-- --------------------------------------------------
DROP TABLE IF EXISTS `role_privileges`;
CREATE TABLE `role_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(6) NOT NULL DEFAULT '0',
  `pid` int(6) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx` (`rid`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `role_privileges`
-- --------------------------------------------------

INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('1', '1', '1', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('2', '1', '2', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('3', '1', '3', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('4', '1', '4', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('5', '1', '5', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('6', '1', '6', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('7', '2', '1', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('8', '2', '2', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('9', '2', '3', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('10', '2', '4', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('11', '2', '5', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('12', '2', '6', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('13', '3', '1', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('14', '3', '2', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('15', '3', '3', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('16', '3', '4', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('17', '3', '5', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('18', '3', '6', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('27', '3', '8', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('26', '2', '8', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('25', '1', '8', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('22', '1', '7', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('23', '2', '7', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('24', '3', '7', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('28', '1', '9', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('29', '2', '9', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('30', '3', '9', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('31', '3', '10', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('32', '2', '10', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('33', '1', '10', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('34', '1', '11', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('35', '2', '11', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('36', '3', '11', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('37', '1', '12', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('38', '2', '12', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('39', '3', '12', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('40', '1', '13', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('41', '2', '13', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('42', '3', '13', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('43', '1', '14', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('44', '2', '14', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('45', '3', '14', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('46', '1', '15', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('47', '2', '15', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('48', '3', '15', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('49', '1', '16', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('50', '2', '16', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('51', '3', '16', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('52', '1', '17', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('53', '2', '17', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('54', '3', '17', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('55', '1', '18', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('56', '2', '18', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('57', '3', '18', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('58', '1', '19', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('59', '2', '19', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('60', '3', '19', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('61', '1', '20', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('62', '2', '20', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('63', '3', '20', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('64', '1', '21', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('65', '2', '21', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('66', '3', '21', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('67', '1', '22', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('68', '2', '22', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('69', '3', '22', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('70', '1', '23', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('71', '2', '23', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('72', '3', '23', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('73', '1', '24', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('74', '2', '24', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('75', '3', '24', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('76', '1', '25', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('77', '2', '25', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('78', '3', '25', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('79', '1', '26', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('80', '2', '26', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('81', '3', '26', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('82', '1', '27', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('83', '2', '27', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('84', '3', '27', '0');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('85', '1', '28', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('86', '2', '28', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('87', '3', '28', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('88', '1', '29', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('89', '2', '29', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('90', '3', '29', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('91', '1', '30', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('92', '2', '30', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('93', '3', '30', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('94', '1', '31', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('95', '2', '31', '1');
INSERT INTO `role_privileges` (`id`, `rid`, `pid`, `active`) VALUES ('96', '3', '31', '1');


-- --------------------------------------------------
# -- Table structure for table `roles`
-- --------------------------------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `roles`
-- --------------------------------------------------

INSERT INTO `roles` (`id`, `code`, `icon`, `name`, `description`) VALUES ('1', 'owner', 'badge', 'Site Owner', 'Site Owner is the owner of the site, has all privileges and could not be removed.');
INSERT INTO `roles` (`id`, `code`, `icon`, `name`, `description`) VALUES ('2', 'admin', 'trophy', 'Administrator', 'The &#34;Main Administrator&#34; user has top privileges like Site Owner and may be removed only by him.');
INSERT INTO `roles` (`id`, `code`, `icon`, `name`, `description`) VALUES ('3', 'editor', 'note', 'Editor', 'The &#34;Editor&#34; is required to assist the Main Admins, has different privileges and may be created by Site Owner or Main Admins.');


-- --------------------------------------------------
# -- Table structure for table `settings`
-- --------------------------------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` tinyint(1) unsigned NOT NULL,
  `company` varchar(75) NOT NULL,
  `site_dir` varchar(50) DEFAULT NULL,
  `site_email` varchar(100) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `fb` varchar(150) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `logo` varchar(60) DEFAULT NULL,
  `short_date` varchar(20) NOT NULL,
  `long_date` varchar(20) NOT NULL,
  `time_format` varchar(10) DEFAULT NULL,
  `dtz` varchar(200) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `weekstart` tinyint(1) NOT NULL DEFAULT '1',
  `locale` varchar(100) DEFAULT NULL,
  `theme` varchar(30) DEFAULT NULL,
  `offline` tinyint(1) NOT NULL DEFAULT '1',
  `offline_msg` text,
  `offline_d` date DEFAULT '0000-00-00',
  `offline_t` time DEFAULT '00:00:00',
  `perpage` tinyint(1) NOT NULL DEFAULT '10',
  `sperpage` tinyint(1) NOT NULL DEFAULT '30',
  `featured` tinyint(2) NOT NULL DEFAULT '0',
  `number_sold` tinyint(1) NOT NULL DEFAULT '10',
  `show_home` tinyint(1) NOT NULL DEFAULT '1',
  `home_content` text,
  `show_slider` tinyint(1) NOT NULL DEFAULT '1',
  `show_news` tinyint(1) NOT NULL DEFAULT '0',
  `autoapprove` tinyint(1) NOT NULL DEFAULT '0',
  `tax` tinyint(1) NOT NULL DEFAULT '0',
  `sbackup` varchar(50) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `eucookie` tinyint(1) NOT NULL DEFAULT '0',
  `odometer` varchar(3) NOT NULL DEFAULT 'km',
  `notify_admin` tinyint(1) NOT NULL DEFAULT '0',
  `notify_email` varchar(60) DEFAULT NULL,
  `pagesize` varchar(10) NOT NULL DEFAULT 'LETTER',
  `metakeys` text,
  `metadesc` text,
  `minprice` decimal(9,2) DEFAULT NULL,
  `maxprice` decimal(9,2) DEFAULT NULL,
  `minsprice` decimal(9,2) DEFAULT NULL,
  `maxsprice` decimal(9,2) DEFAULT NULL,
  `minyear` year(4) DEFAULT NULL,
  `maxyear` year(4) DEFAULT NULL,
  `minkm` int(4) DEFAULT '0',
  `maxkm` int(4) DEFAULT '0',
  `vinapi` varchar(100) DEFAULT NULL,
  `inv_info` text,
  `inv_note` text,
  `analytics` varchar(20) DEFAULT NULL,
  `color` blob,
  `makes` blob,
  `trans_list` tinyblob,
  `fuel_list` tinyblob,
  `cond_list` tinyblob,
  `year_list` blob,
  `category_list` blob,
  `mailer` enum('PHP','SMTP','SMAIL') NOT NULL DEFAULT 'PHP',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` smallint(3) DEFAULT NULL,
  `sendmail` varchar(60) DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `wojon` varchar(50) DEFAULT NULL,
  `wojov` decimal(4,2) DEFAULT '1.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `settings`
-- --------------------------------------------------

INSERT INTO `settings` (`id`, `company`, `site_dir`, `site_email`, `address`, `city`, `state`, `zip`, `country`, `phone`, `fax`, `fb`, `twitter`, `logo`, `short_date`, `long_date`, `time_format`, `dtz`, `lang`, `weekstart`, `locale`, `theme`, `offline`, `offline_msg`, `offline_d`, `offline_t`, `perpage`, `sperpage`, `featured`, `number_sold`, `show_home`, `home_content`, `show_slider`, `show_news`, `autoapprove`, `tax`, `sbackup`, `currency`, `eucookie`, `odometer`, `notify_admin`, `notify_email`, `pagesize`, `metakeys`, `metadesc`, `minprice`, `maxprice`, `minsprice`, `maxsprice`, `minyear`, `maxyear`, `minkm`, `maxkm`, `vinapi`, `inv_info`, `inv_note`, `analytics`, `color`, `makes`, `trans_list`, `fuel_list`, `cond_list`, `year_list`, `category_list`, `mailer`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `sendmail`, `is_ssl`, `wojon`, `wojov`) VALUES ('1', 'Car Dealer Pro', 'cdp2', 'alex.kuzmanovic@mail.com', '20 Main St', 'toronto', 'Ontario', 'M2Y 3L6', 'Canada', '+1 416 123-4768', '', 'fbuser', 'twuser', 'logo.png', 'MM-dd-yyyy', 'MMMM dd, yyyy hh:mm ', 'hh:mm a', 'America/Toronto', 'en', '1', 'en_CA', 'master', '0', 'Message about site being offline...', '2015-08-27', '16:25:00', '12', '30', '50', '10', '1', '<div class="wojo secondary segment"> \n    <h2 class="wojo header secondary text content-center">Best Way To Search &amp; Sell Your Car &amp; Find Your Favourite</h2>\n    <p class="content-center wojo primary text"> Malis laudem adipisci per ea, ea doming patrioque eum. Ut duo wisi persecuti. Id delenit praesent eam. Putant animal his ut. Cum ut periculis referrentur efficiantur, sed affert partiendo percipitur ne, vim molestie principes honestatis ex. Pro ad iusto ancillae, te est diam nullam. At nec erat autem facilisis.</p>\n    <div class="wojo tripple space divider"></div>\n    <div class="columns gutters">\n      <div class="screen-50 tablet-50 phone-100">\n        <div class="wojo icon basic message"> <i class="white icon find"></i>\n          <div class="content">\n            <div class="header"> <a href="search/" class="white">Are you looking for a car?</a> </div>\n            <p class="white">Pro ad iusto ancillae, te est diam.</p>\n          </div>\n        </div>\n      </div>\n      <div class="screen-50 tablet-50 phone-100">\n        <div class="wojo icon basic message"> <i class="white car icon"></i>\n          <div class="content">\n            <div class="header"> <a href="account/" class="white">Want to sell your car?</a> </div>\n            <p class="white">Pro ad iusto ancillae, te est diam.</p>\n          </div>\n        </div>\n      </div>\n    </div>\n  </div>', '1', '0', '0', '1', '26-Jul-2015_20-12-24.sql', 'CAD', '0', 'km', '0', '', 'LETTER', 'Site wide Meta Keywords', 'Site wide Meta Description', '7500.00', '180000.00', '0.00', '160000.00', '1990', '2015', '0', '224320', 'q4u4s3gtwvxm44wqemhdqevt', '<p>VAT : 1334567890-1478</p>', '<p>TERMS &amp; CONDITIONS<br>1. Interest may be levied on overdue accounts. <br>2. Goods sold are not returnable or refundable\n</p>', '', '[{"color_e":"Beige","total":2},{"color_e":"Black","total":4},{"color_e":"Blue","total":1},{"color_e":"Green","total":1},{"color_e":"Red","total":2},{"color_e":"Silver","total":3},{"color_e":"White","total":3}]', '[{"make_name":"Acura","total":2},{"make_name":"Aston Martin","total":1},{"make_name":"Audi","total":1},{"make_name":"BMW","total":1},{"make_name":"Chrysler","total":1},{"make_name":"Ford","total":1},{"make_name":"Honda","total":1},{"make_name":"Hyundai","total":1},{"make_name":"Infiniti","total":1},{"make_name":"Mazda","total":1},{"make_name":"Mercedes-Benz","total":3},{"make_name":"Toyota","total":2}]', '[{"id":1,"name":"Automatic"},{"id":2,"name":"Manual"},{"id":3,"name":"Tiptronic"}]', '[{"id":1,"name":"Biodiesel"},{"id":2,"name":"CNG"},{"id":3,"name":"Diesel"},{"id":4,"name":"Electric"},{"id":5,"name":"Ethanol-FFV"},{"id":6,"name":"Gasoline"},{"id":7,"name":"Hybrid-Electric"},{"id":9,"name":"Other"},{"id":8,"name":"Steam"}]', '[{"condition_name":"New","total":7},{"condition_name":"Used","total":9}]', '[{"year":1990,"total":1},{"year":2006,"total":1},{"year":2010,"total":2},{"year":2011,"total":2},{"year":2012,"total":2},{"year":2013,"total":2},{"year":2014,"total":1},{"year":2015,"total":5}]', '[{"category_name":"Coupe","total":2},{"category_name":"Luxury Car","total":1},{"category_name":"Sedan","total":6},{"category_name":"Sport Utility Vehicle","total":3},{"category_name":"Sports Car","total":1},{"category_name":"Van","total":1},{"category_name":"Wagon","total":2}]', 'PHP', '', '', '', '465', '/usr/sbin/sendmail -t -i', '1', 'CarDealerPro', '2.00');


-- --------------------------------------------------
# -- Table structure for table `slider`
-- --------------------------------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `thumb` varchar(60) DEFAULT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `body` text,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sorting` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `slider`
-- --------------------------------------------------

INSERT INTO `slider` (`id`, `thumb`, `caption`, `body`, `created`, `sorting`) VALUES ('1', 'SLIDE_2c68be7191ec700197487fba5fa0bb11.jpg', 'New Mercedes', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua.', '2013-10-22 12:36:11', '2');
INSERT INTO `slider` (`id`, `thumb`, `caption`, `body`, `created`, `sorting`) VALUES ('2', 'SLIDE_6469225fe72b43636bb2100355c85b74.jpg', 'Volvo Cupe ', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua.', '2013-10-22 12:36:13', '4');
INSERT INTO `slider` (`id`, `thumb`, `caption`, `body`, `created`, `sorting`) VALUES ('3', 'SLIDE_ea816ba22c89b77056e0fe97932ff1d5.jpg', 'Golf GTI', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua.', '2013-10-22 12:36:14', '1');
INSERT INTO `slider` (`id`, `thumb`, `caption`, `body`, `created`, `sorting`) VALUES ('4', 'SLIDE_28e18275b27230c3e83f2f654919f5e1.jpg', 'BMW M5', 'Lorem ipsum dolor sit amet, consectetur\r\nadipiscing elit, sed do eiusmod tempor\r\nincididunt ut labore et dolore magna aliqua', '2013-10-22 12:36:16', '3');


-- --------------------------------------------------
# -- Table structure for table `stats`
-- --------------------------------------------------
DROP TABLE IF EXISTS `stats`;
CREATE TABLE `stats` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `visits` int(11) NOT NULL DEFAULT '0',
  `listing_id` int(11) NOT NULL DEFAULT '0',
  `created` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `lid` (`listing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `stats`
-- --------------------------------------------------

INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('1', '6293', '5', '2015-06-21');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('2', '7360', '4', '2015-03-27');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('3', '9944', '10', '2015-07-03');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('4', '2293', '10', '2015-03-17');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('5', '4905', '9', '2015-05-25');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('6', '1534', '1', '2015-04-04');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('7', '6479', '6', '2015-05-21');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('8', '3014', '10', '2015-03-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('9', '1172', '11', '2015-03-25');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('10', '9227', '8', '2015-03-02');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('11', '8413', '3', '2015-01-04');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('12', '1204', '3', '2015-08-04');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('13', '8723', '11', '2015-02-01');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('14', '8443', '2', '2015-04-30');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('15', '7307', '8', '2015-06-19');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('16', '5309', '4', '2015-02-21');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('17', '4353', '10', '2015-07-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('18', '3980', '3', '2015-06-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('19', '1509', '6', '2015-01-10');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('20', '8057', '9', '2015-03-04');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('21', '6664', '1', '2015-02-01');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('22', '8085', '8', '2015-05-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('23', '5715', '2', '2015-01-01');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('24', '4323', '11', '2015-02-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('25', '9923', '6', '2015-04-10');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('26', '3671', '2', '2015-01-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('27', '1551', '8', '2015-02-26');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('28', '8963', '9', '2015-04-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('29', '759', '1', '2015-01-03');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('30', '3737', '7', '2015-01-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('31', '8027', '8', '2015-05-08');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('32', '8448', '3', '2015-04-19');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('33', '3813', '3', '2015-01-26');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('34', '6119', '1', '2015-05-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('35', '3867', '6', '2015-06-30');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('36', '5838', '8', '2015-07-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('37', '10087', '8', '2015-04-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('38', '7541', '4', '2015-04-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('39', '8019', '2', '2015-01-20');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('40', '1568', '1', '2015-04-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('41', '9469', '11', '2015-03-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('42', '6978', '7', '2015-06-02');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('43', '3167', '3', '2015-06-23');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('44', '5138', '4', '2015-01-26');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('45', '1861', '10', '2015-05-19');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('46', '6852', '7', '2015-03-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('47', '4243', '5', '2015-08-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('48', '3085', '10', '2015-02-08');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('49', '9612', '11', '2015-07-19');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('50', '9957', '3', '2015-02-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('51', '3398', '7', '2015-06-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('52', '2538', '4', '2015-06-04');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('53', '7161', '7', '2015-07-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('54', '7975', '5', '2015-01-30');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('55', '1440', '4', '2015-05-05');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('56', '9523', '9', '2015-03-23');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('57', '5405', '9', '2015-05-17');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('58', '3693', '11', '2015-01-16');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('59', '5567', '4', '2015-02-13');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('60', '9091', '10', '2015-05-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('61', '1016', '5', '2015-02-15');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('62', '7565', '8', '2015-01-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('63', '1254', '2', '2015-06-21');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('64', '7241', '9', '2015-03-01');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('65', '10053', '2', '2015-04-21');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('66', '4798', '1', '2015-05-03');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('67', '10020', '3', '2015-02-02');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('68', '2810', '4', '2015-03-13');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('69', '2305', '7', '2015-05-03');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('70', '4016', '6', '2015-03-13');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('71', '9885', '1', '2015-04-06');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('72', '7225', '3', '2015-06-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('73', '4513', '2', '2015-05-29');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('74', '904', '1', '2015-02-06');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('75', '8077', '8', '2015-07-13');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('76', '4901', '3', '2015-03-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('77', '7515', '6', '2015-06-17');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('78', '7198', '1', '2015-07-06');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('79', '8734', '1', '2015-04-03');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('80', '7761', '5', '2015-02-07');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('81', '1095', '3', '2015-06-23');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('82', '3016', '2', '2015-05-14');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('83', '4882', '6', '2015-02-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('84', '2714', '6', '2015-06-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('85', '5739', '7', '2015-04-13');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('86', '5256', '6', '2015-06-22');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('87', '9520', '1', '2015-01-17');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('88', '8901', '4', '2015-06-01');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('89', '1771', '5', '2015-01-06');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('90', '7106', '3', '2015-01-24');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('91', '5158', '5', '2015-02-13');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('92', '5856', '3', '2015-04-14');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('93', '9393', '4', '2015-07-26');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('94', '2388', '1', '2015-01-30');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('95', '1187', '4', '2015-01-16');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('96', '3816', '10', '2015-07-20');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('97', '988', '10', '2015-07-29');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('98', '943', '1', '2015-06-01');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('99', '9766', '3', '2015-03-20');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('100', '7667', '6', '2015-06-12');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('105', '9', '17', '2015-09-30');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('106', '2', '15', '2015-11-11');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('107', '1', '17', '2015-12-02');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('108', '1', '17', '2015-12-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('109', '1', '16', '2015-12-09');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('110', '1', '17', '2016-01-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('111', '1', '15', '2016-01-28');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('112', '1', '14', '2016-02-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('113', '5', '15', '2016-02-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('114', '1', '17', '2016-02-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('115', '1', '10', '2016-02-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('116', '1', '16', '2016-02-18');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('117', '11', '15', '2016-02-20');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('118', '1', '2', '2016-02-20');
INSERT INTO `stats` (`id`, `visits`, `listing_id`, `created`) VALUES ('119', '1', '12', '2016-02-20');


-- --------------------------------------------------
# -- Table structure for table `transmissions`
-- --------------------------------------------------
DROP TABLE IF EXISTS `transmissions`;
CREATE TABLE `transmissions` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------
# Dumping data for table `transmissions`
-- --------------------------------------------------

INSERT INTO `transmissions` (`id`, `name`) VALUES ('1', 'Automatic');
INSERT INTO `transmissions` (`id`, `name`) VALUES ('2', 'Manual');
INSERT INTO `transmissions` (`id`, `name`) VALUES ('3', 'Tiptronic');

