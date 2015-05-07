/*
SQLyog Ultimate v8.82 
MySQL - 5.5.40-0ubuntu0.14.04.1 : Database - bakou_pos_restaurant
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `AuthAssignment` */

DROP TABLE IF EXISTS `AuthAssignment`;

CREATE TABLE `AuthAssignment` (
  `itemname` varchar(64) CHARACTER SET latin1 NOT NULL,
  `userid` varchar(64) CHARACTER SET latin1 NOT NULL,
  `bizrule` text CHARACTER SET latin1,
  `data` text CHARACTER SET latin1,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `AuthAssignment` */

insert  into `AuthAssignment`(`itemname`,`userid`,`bizrule`,`data`) values ('employee.create','14',NULL,NULL),('employee.create','15',NULL,NULL),('employee.create','18',NULL,NULL),('employee.create','2',NULL,NULL),('employee.create','3',NULL,NULL),('employee.create','4',NULL,NULL),('employee.create','6',NULL,NULL),('employee.create','7',NULL,NULL),('employee.delete','14',NULL,NULL),('employee.delete','15',NULL,NULL),('employee.delete','18',NULL,NULL),('employee.delete','2',NULL,NULL),('employee.delete','3',NULL,NULL),('employee.delete','4',NULL,NULL),('employee.delete','6',NULL,NULL),('employee.delete','7',NULL,NULL),('employee.index','14',NULL,NULL),('employee.index','15',NULL,NULL),('employee.index','18',NULL,NULL),('employee.index','2',NULL,NULL),('employee.index','3',NULL,NULL),('employee.index','4',NULL,NULL),('employee.index','6',NULL,NULL),('employee.index','7',NULL,NULL),('employee.update','14',NULL,NULL),('employee.update','15',NULL,NULL),('employee.update','18',NULL,NULL),('employee.update','2',NULL,NULL),('employee.update','3',NULL,NULL),('employee.update','4',NULL,NULL),('employee.update','6',NULL,NULL),('employee.update','7',NULL,NULL),('item.create','11',NULL,NULL),('item.create','14',NULL,NULL),('item.create','15',NULL,NULL),('item.create','18',NULL,NULL),('item.create','2',NULL,NULL),('item.create','3',NULL,NULL),('item.create','4',NULL,NULL),('item.create','6',NULL,NULL),('item.create','7',NULL,NULL),('item.delete','11',NULL,NULL),('item.delete','14',NULL,NULL),('item.delete','15',NULL,NULL),('item.delete','18',NULL,NULL),('item.delete','2',NULL,NULL),('item.delete','3',NULL,NULL),('item.delete','4',NULL,NULL),('item.delete','6',NULL,NULL),('item.delete','7',NULL,NULL),('item.index','11',NULL,NULL),('item.index','14',NULL,NULL),('item.index','15',NULL,NULL),('item.index','18',NULL,NULL),('item.index','2',NULL,NULL),('item.index','3',NULL,NULL),('item.index','4',NULL,NULL),('item.index','6',NULL,NULL),('item.index','7',NULL,NULL),('item.update','11',NULL,NULL),('item.update','14',NULL,NULL),('item.update','15',NULL,NULL),('item.update','18',NULL,NULL),('item.update','2',NULL,NULL),('item.update','3',NULL,NULL),('item.update','4',NULL,NULL),('item.update','6',NULL,NULL),('item.update','7',NULL,NULL),('report.index','11',NULL,NULL),('report.index','14',NULL,NULL),('report.index','15',NULL,NULL),('report.index','18',NULL,NULL),('report.index','2',NULL,NULL),('report.index','3',NULL,NULL),('report.index','4',NULL,NULL),('report.index','6',NULL,NULL),('report.index','7',NULL,NULL),('sale.discount','10',NULL,NULL),('sale.discount','11',NULL,NULL),('sale.discount','12',NULL,NULL),('sale.discount','13',NULL,NULL),('sale.discount','14',NULL,NULL),('sale.discount','15',NULL,NULL),('sale.discount','16',NULL,NULL),('sale.discount','17',NULL,NULL),('sale.discount','18',NULL,NULL),('sale.discount','2',NULL,NULL),('sale.discount','3',NULL,NULL),('sale.discount','4',NULL,NULL),('sale.discount','5',NULL,NULL),('sale.discount','6',NULL,NULL),('sale.discount','7',NULL,NULL),('sale.discount','8',NULL,NULL),('sale.discount','9',NULL,NULL),('sale.edit','10',NULL,NULL),('sale.edit','11',NULL,NULL),('sale.edit','12',NULL,NULL),('sale.edit','13',NULL,NULL),('sale.edit','14',NULL,NULL),('sale.edit','15',NULL,NULL),('sale.edit','16',NULL,NULL),('sale.edit','17',NULL,NULL),('sale.edit','18',NULL,NULL),('sale.edit','2',NULL,NULL),('sale.edit','3',NULL,NULL),('sale.edit','4',NULL,NULL),('sale.edit','5',NULL,NULL),('sale.edit','6',NULL,NULL),('sale.edit','7',NULL,NULL),('sale.edit','8',NULL,NULL),('sale.edit','9',NULL,NULL),('sale.editprice','10',NULL,NULL),('sale.editprice','11',NULL,NULL),('sale.editprice','12',NULL,NULL),('sale.editprice','13',NULL,NULL),('sale.editprice','14',NULL,NULL),('sale.editprice','15',NULL,NULL),('sale.editprice','16',NULL,NULL),('sale.editprice','17',NULL,NULL),('sale.editprice','18',NULL,NULL),('sale.editprice','2',NULL,NULL),('sale.editprice','3',NULL,NULL),('sale.editprice','4',NULL,NULL),('sale.editprice','5',NULL,NULL),('sale.editprice','6',NULL,NULL),('sale.editprice','7',NULL,NULL),('sale.editprice','8',NULL,NULL),('sale.editprice','9',NULL,NULL),('store.update','11',NULL,NULL),('store.update','14',NULL,NULL),('store.update','15',NULL,NULL),('store.update','2',NULL,NULL),('store.update','3',NULL,NULL),('store.update','4',NULL,NULL),('store.update','6',NULL,NULL),('store.update','7',NULL,NULL);

/*Table structure for table `AuthItem` */

DROP TABLE IF EXISTS `AuthItem`;

CREATE TABLE `AuthItem` (
  `name` varchar(64) CHARACTER SET latin1 NOT NULL,
  `type` int(11) NOT NULL,
  `description` text CHARACTER SET latin1,
  `bizrule` text CHARACTER SET latin1,
  `data` text CHARACTER SET latin1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `AuthItem` */

insert  into `AuthItem`(`name`,`type`,`description`,`bizrule`,`data`) values ('client.create',0,'Create Client',NULL,'N;'),('client.delete',0,'Delete Client',NULL,'N;'),('client.index',0,'List Client',NULL,'N;'),('client.update',0,'Update Client',NULL,'N;'),('employee.create',0,'Create Employee',NULL,NULL),('employee.delete',0,'Delete Employee',NULL,NULL),('employee.index',0,'List Employee',NULL,NULL),('employee.update',0,'Update Employee',NULL,NULL),('item.create',0,'Create Item',NULL,NULL),('item.delete',0,'Delete Item',NULL,NULL),('item.index',0,'List Item',NULL,NULL),('item.update',0,'Update Item',NULL,NULL),('itemAdmin',1,'Administer Item',NULL,'N;'),('payment.index',0,'Invoice Payment (Debt)',NULL,NULL),('receiving.edit',0,'Process Purchase orders',NULL,'N;'),('report.index',0,'View and generate reports',NULL,'N;'),('sale.discount',0,'Sale Give Discount',NULL,'N;'),('sale.edit',0,'Edit Sale',NULL,'N;'),('sale.editprice',0,'Edit Sale Price',NULL,'N;'),('setting.exchangerate',0,'Exchange Rate',NULL,NULL),('setting.receipt',0,'Receipt Setting',NULL,NULL),('setting.sale',0,'Sale Setting',NULL,NULL),('setting.site',0,'Shop Setting',NULL,NULL),('setting.system',0,'System Setting',NULL,NULL),('store.update',0,'Change the store\'s configuration',NULL,'N;'),('supplier.create',0,'Create Supplier',NULL,NULL),('supplier.delete',0,'Delete Supplier',NULL,NULL),('supplier.index',0,'List Supplier',NULL,NULL),('supplier.update',0,'Update Supplier',NULL,NULL),('transaction.adjustin',0,'Adjustment In',NULL,NULL),('transaction.adjustout',0,'Adjustment Out',NULL,NULL),('transaction.count',0,'Physical Count',NULL,NULL),('transaction.receive',0,'Receive from Supplier',NULL,NULL),('transaction.return',0,'Return to Supplier',NULL,NULL),('transaction.transfer',0,'Transfer to (Another Branch)',NULL,NULL);

/*Table structure for table `AuthItemChild` */

DROP TABLE IF EXISTS `AuthItemChild`;

CREATE TABLE `AuthItemChild` (
  `parent` varchar(64) CHARACTER SET latin1 NOT NULL,
  `child` varchar(64) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `AuthItemChild` */

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT '0.0000',
  `date_created` datetime DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  KEY `FK_account_client_id` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`id`,`client_id`,`name`,`balance`,`date_created`,`note`) values (1,3,'sample','0.0000','2014-06-07 14:14:20',NULL),(2,4,'Rothdara','0.0000','2014-06-10 16:53:35',NULL),(3,5,'Mr. A','0.0000','2014-06-10 16:55:04',NULL),(4,1,'Lux','0.0000','2014-07-06 12:08:52',NULL);

/*Table structure for table `app_config` */

DROP TABLE IF EXISTS `app_config`;

CREATE TABLE `app_config` (
  `key` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `app_config` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`created_date`,`modified_date`) values (1,'Beverage','2014-09-14 05:09:39','2014-09-14 05:09:39'),(7,'Topping-Beverage','2014-09-14 05:09:54','2014-09-14 05:09:54'),(8,'Topping-Foods','2014-08-02 00:00:00',NULL),(9,'Foods','2014-09-14 05:09:18','2014-09-14 05:09:18'),(10,'Decoration','2014-09-17 00:00:00',NULL);

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mobile_no` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `address1` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `address2` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `notes` text CHARACTER SET utf8,
  `status` varchar(1) CHARACTER SET utf8 DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `client` */

insert  into `client`(`id`,`first_name`,`last_name`,`mobile_no`,`address1`,`address2`,`city_id`,`country_code`,`email`,`notes`,`status`) values (1,'Lux','Sok','012812812','','',NULL,NULL,NULL,'','1');

/*Table structure for table `currency_type` */

DROP TABLE IF EXISTS `currency_type`;

CREATE TABLE `currency_type` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` char(3) CHARACTER SET utf8 NOT NULL,
  `currency_name` varchar(70) CHARACTER SET utf8 NOT NULL,
  `currency_symbol` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `currency_type` */

insert  into `currency_type`(`code`,`currency_id`,`currency_name`,`currency_symbol`,`sort_order`) values (1,'USD','United States Dollar','$',NULL),(2,'KHR','Kampuchea Riel','áŸ›',NULL),(3,'THB','Thai Baht','à¸¿',NULL);

/*Table structure for table `debt_collector` */

DROP TABLE IF EXISTS `debt_collector`;

CREATE TABLE `debt_collector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `adddress1` varchar(60) DEFAULT NULL,
  `address2` varchar(60) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `debt_collector` */

/*Table structure for table `debter_client_ref` */

DROP TABLE IF EXISTS `debter_client_ref`;

CREATE TABLE `debter_client_ref` (
  `debter_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`debter_id`,`client_id`),
  KEY `FK_debter_client_ref_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `debter_client_ref` */

/*Table structure for table `desk` */

DROP TABLE IF EXISTS `desk`;

CREATE TABLE `desk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `modified_date` datetime DEFAULT NULL,
  `occupied` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_desk_zone_id` (`zone_id`),
  CONSTRAINT `FK_desk_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `desk` */

insert  into `desk`(`id`,`name`,`zone_id`,`sort_order`,`status`,`modified_date`,`occupied`) values (35,'TO 01',5,NULL,'1',NULL,0),(36,'TO 02',5,NULL,'1',NULL,0),(37,'TO 03',5,NULL,'1',NULL,0),(38,'TO 04',5,NULL,'1',NULL,0),(39,'TO 05',5,NULL,'1',NULL,0),(40,'V1',9,1,'1',NULL,0),(41,'V2',9,2,'1',NULL,0),(42,'V3',9,3,'1',NULL,0),(43,'V4',9,4,'1',NULL,0),(44,'V5',9,5,'1',NULL,0),(50,'M1',11,1,'1',NULL,0),(51,'M2',11,2,'1',NULL,0),(52,'M3',11,3,'1',NULL,0),(53,'TO1',12,1,'1',NULL,0),(54,'TO2',12,2,'1',NULL,0),(55,'V1',6,1,'1',NULL,0),(56,'V2',6,2,'1',NULL,0),(57,'TO1',13,1,'1',NULL,0),(58,'TO 02',13,2,'1',NULL,0),(59,'A1',7,1,'1',NULL,0),(60,'A2',7,2,'1',NULL,0),(61,'MB1',8,1,'1',NULL,0),(62,'MB2',8,2,'1',NULL,0),(66,'A1',1,1,'1',NULL,0),(67,'A2',1,2,'1',NULL,0),(68,'A3',1,3,'1',NULL,0),(69,'A4',1,4,'1',NULL,0),(70,'A5',1,5,'1',NULL,0),(71,'A6',1,6,'1',NULL,0),(72,'A7',1,7,'1',NULL,0),(73,'A8',1,8,'1',NULL,0),(76,'B1',2,1,'1',NULL,0),(78,'B2',2,2,'1',NULL,0),(79,'B3',2,3,'1',NULL,0),(80,'B4',2,4,'1',NULL,0),(81,'B5',2,5,'1',NULL,0),(82,'B6',2,6,'1',NULL,0),(83,'B7',2,7,'1',NULL,0),(84,'B8',2,8,'1',NULL,0),(85,'B9',2,9,'1',NULL,0),(86,'B10',2,10,'1',NULL,0),(87,'C1',3,1,'1',NULL,0),(88,'C2',3,2,'1',NULL,0),(89,'C3',3,3,'1',NULL,0),(90,'C4',3,4,'1',NULL,0),(91,'C5',3,5,'1',NULL,0),(92,'C6',3,6,'1',NULL,0),(93,'C7',3,7,'1',NULL,0),(94,'C8',3,8,'1',NULL,0),(95,'D1',14,1,'1',NULL,0),(96,'D2',14,2,'1',NULL,0),(97,'D3',14,3,'1',NULL,0),(98,'D4',14,4,'1',NULL,0),(99,'D5',14,5,'1',NULL,0),(100,'D6',14,6,'1',NULL,0),(101,'D7',14,7,'1',NULL,0),(102,'D8',14,8,'1',NULL,0),(103,'D9',14,9,'1',NULL,0),(104,'D10',14,10,'1',NULL,0),(105,'D11',14,11,'1',NULL,0),(106,'D12',14,12,'1',NULL,0),(107,'D13',14,13,'1',NULL,0),(108,'D14',14,14,'1',NULL,0),(109,'O1',15,1,'1',NULL,0),(110,'O2',15,2,'1',NULL,0),(111,'O3',15,3,'1',NULL,0);

/*Table structure for table `desk_change_log` */

DROP TABLE IF EXISTS `desk_change_log`;

CREATE TABLE `desk_change_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `cur_desk_id` int(11) NOT NULL,
  `new_desk_id` int(11) NOT NULL,
  `cur_group_id` int(11) DEFAULT NULL,
  `new_group_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `desk_change_log` */

insert  into `desk_change_log`(`id`,`sale_id`,`cur_desk_id`,`new_desk_id`,`cur_group_id`,`new_group_id`,`employee_id`,`location_id`,`modified_date`) values (1,16,67,78,1,1,38,3,'2014-12-31 13:22:26'),(2,16,78,108,1,1,38,3,'2014-12-31 13:22:45'),(3,16,108,67,1,1,38,3,'2014-12-31 13:23:24');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `adddress1` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `address2` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `notes` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee` */

insert  into `employee`(`id`,`first_name`,`last_name`,`mobile_no`,`adddress1`,`address2`,`city_id`,`country_code`,`email`,`notes`) values (37,'Owner','System','012999068','','',NULL,'','',''),(38,'super','pos','012878878','super addresss1','super address',NULL,'','',''),(39,'sarith','Y','092511662','','',NULL,'','',''),(40,'Y ','Sarith','081433343','','',NULL,'','',''),(41,'Soy','ChenDa','010 66 56 15','','',NULL,'','',''),(44,'Phoeurn','Polly','016556509','','',NULL,'','',''),(45,'Khann','sokpov','0963981293','','',NULL,'','',''),(46,'Assitant','Mamager','023222150','','',NULL,'','',''),(47,'Chan','Sreyroth','023224170','','',NULL,'','',''),(48,'Chan','Sreyra','093853333','','',NULL,'','',''),(49,'Chan','Sineth','077667786','','',NULL,'','',''),(50,'Chan','Dary','012345678','','',NULL,'','',''),(51,'Chan ','Dara','077752224','','',NULL,'','',''),(52,'Chan','reaksmey','070905640','','',NULL,'','',''),(53,'Rothdara','Vorn','077333455','','',NULL,'','','');

/*Table structure for table `employee_image` */

DROP TABLE IF EXISTS `employee_image`;

CREATE TABLE `employee_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `photo` blob NOT NULL,
  `thumbnail` blob,
  `filename` varchar(30) CHARACTER SET latin1 NOT NULL,
  `filetype` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `path` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `height` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_employee_image_emp_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee_image` */

/*Table structure for table `employee_location` */

DROP TABLE IF EXISTS `employee_location`;

CREATE TABLE `employee_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `home_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`,`location_id`),
  KEY `FK_employee_location_id` (`location_id`),
  CONSTRAINT `FK_employee_location_emp_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `FK_employee_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee_location` */

insert  into `employee_location`(`id`,`employee_id`,`location_id`,`home_status`) values (1,38,3,1),(2,39,3,1),(3,40,3,1),(4,41,3,1),(5,37,3,1),(8,44,3,1),(9,45,3,1),(10,46,3,1),(11,47,5,1),(12,48,5,1),(13,49,5,1),(14,50,4,1),(15,51,4,1),(16,52,4,1),(17,53,3,1);

/*Table structure for table `exchange_rate` */

DROP TABLE IF EXISTS `exchange_rate`;

CREATE TABLE `exchange_rate` (
  `base_currency` varchar(3) NOT NULL,
  `to_currency` varchar(3) NOT NULL,
  `base_cur_val` double(15,2) NOT NULL,
  `to_cur_val` double(15,2) NOT NULL,
  PRIMARY KEY (`base_currency`,`to_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exchange_rate` */

/*Table structure for table `giftcard` */

DROP TABLE IF EXISTS `giftcard`;

CREATE TABLE `giftcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `giftcard_number` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_amount` decimal(15,2) NOT NULL,
  `discount_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `client_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `giftcard_number` (`giftcard_number`),
  KEY `FK_giftcard_client_id` (`client_id`),
  CONSTRAINT `FK_giftcard_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `giftcard` */

insert  into `giftcard`(`id`,`giftcard_number`,`discount_amount`,`discount_type`,`status`,`client_id`) values (1,'111111','10.00',NULL,'1',NULL),(2,'2222222','50.00',NULL,'1',NULL),(3,'12345677','10.00',NULL,'1',NULL),(4,'000001','10.00',NULL,'1',NULL),(5,'VKH 10 0408','7.00',NULL,'1',NULL),(6,'VKH 10 0426','10.00',NULL,'1',NULL),(7,'VKH 10 0457','5.00',NULL,'1',NULL),(8,'VKH 10 1348','75.00',NULL,'1',NULL),(9,'VKH 10 1354','100.00',NULL,'1',NULL);

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `trans_id` int(11) NOT NULL AUTO_INCREMENT,
  `trans_items` int(11) NOT NULL,
  `trans_user` int(11) NOT NULL,
  `trans_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trans_comment` text CHARACTER SET utf8 NOT NULL,
  `trans_inventory` double(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`trans_id`),
  KEY `FK_inventory_item_id` (`trans_items`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `inventory` */

insert  into `inventory`(`trans_id`,`trans_items`,`trans_user`,`trans_date`,`trans_comment`,`trans_inventory`) values (1,1,38,'2014-06-15 12:33:01','POS 5',-1.00),(2,1,38,'2014-06-17 18:29:50','POS 1',-1.00),(3,9,38,'2014-06-21 17:40:50','POS 2',-1.00),(4,9,38,'2014-06-21 17:41:14','Change Sale 2',1.00),(5,9,38,'2014-06-21 17:41:15','POS 2',-4.00),(6,9,38,'2014-06-26 02:12:25','Receive from Supplier 2',10.00),(7,9,38,'2014-06-26 02:15:22','Receive from Supplier 5',8.00),(8,10,38,'2014-06-26 02:15:22','Receive from Supplier 5',9.00),(9,9,38,'2014-06-26 02:15:59','Receive from Supplier 6',10.00),(10,10,38,'2014-06-26 02:15:59','Receive from Supplier 6',1.00),(11,9,38,'2014-06-26 02:17:24','Receive from Supplier 7',3.00),(12,10,38,'2014-06-26 02:17:24','Receive from Supplier 7',2.00),(13,9,38,'2014-06-26 02:17:37','Receive from Supplier 8',5.00),(14,10,38,'2014-06-26 02:17:37','Receive from Supplier 8',4.00),(15,28,38,'2014-07-14 20:14:22','POS 3',-1.00),(16,22,38,'2014-07-14 20:14:22','POS 3',-2.00),(17,31,38,'2014-07-14 20:14:23','POS 3',-1.00);

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `invoice_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date_issued` date DEFAULT NULL,
  `amount` decimal(15,3) DEFAULT NULL,
  `work_description` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `payment_term` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `taxt1_rate` decimal(6,2) DEFAULT NULL,
  `tax1_desc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tax2_rate` decimal(6,2) DEFAULT NULL,
  `tax2_desc` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `day_payment_due` int(11) DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_invoice_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `invoice` */

/*Table structure for table `invoice_item` */

DROP TABLE IF EXISTS `invoice_item`;

CREATE TABLE `invoice_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `work_description` text,
  `discount` decimal(10,3) DEFAULT NULL,
  `discount_desc` varchar(400) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_invoice_item_invoice_id` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoice_item` */

/*Table structure for table `invoice_payment` */

DROP TABLE IF EXISTS `invoice_payment`;

CREATE TABLE `invoice_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `invoice_number` varchar(50) DEFAULT NULL,
  `date_paid` date DEFAULT NULL,
  `amount_paid` decimal(10,3) NOT NULL,
  `give_away` decimal(10,3) DEFAULT NULL,
  `note` text,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_invoice_payment_invoice_id` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoice_payment` */

/*Table structure for table `invoices` */

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `invoicenumber` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `client` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`branch`,`invoicenumber`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `invoices` */

insert  into `invoices`(`invoicenumber`,`branch`,`date`,`client`) values (1,'A','2014-11-16','John'),(1,'B','2014-11-16','Jack'),(2,'A','2014-11-16','Jeff'),(2,'B','2014-11-16','Joel'),(3,'A','2014-11-16','Jane'),(3,'B','2014-11-16','Joan'),(4,'A','2014-11-16','June');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `item_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `cost_price` double(15,4) DEFAULT NULL,
  `unit_price` double(15,4) DEFAULT NULL,
  `quantity` double(15,0) NOT NULL,
  `reorder_level` double(15,2) DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `allow_alt_description` tinyint(1) DEFAULT NULL,
  `is_serialized` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `deleted` tinyint(1) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `topping` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_number` (`item_number`),
  KEY `FK_item_category_id` (`category_id`),
  KEY `FK_item_supplier_id` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item` */

insert  into `item`(`id`,`name`,`item_number`,`category_id`,`supplier_id`,`cost_price`,`unit_price`,`quantity`,`reorder_level`,`location`,`allow_alt_description`,`is_serialized`,`description`,`deleted`,`created_date`,`modified_date`,`topping`) values (44,'áž˜áž¸áž”áž“áŸ’áž‘áŸ‡ážŠáŸ‚áž€','NH',9,NULL,0.0000,9500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:12:55','2014-11-10 16:36:34',0),(45,'áž€áž¶ážšáž¸ážŸáž¶áž›áž˜áž“','CRY',9,NULL,0.0000,12000.0000,0,NULL,'',NULL,NULL,'',0,'2014-09-17 16:14:01','2014-11-09 20:05:32',0),(46,'áž”áž¶áž™áž†áž¶ážáŸ’ážšáž¶ážœ','FRT',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:14:49','2014-11-10 15:40:49',0),(47,'áž”áž¶áž™áž–áž„áŸ‹áž˜áž¶áž“áŸ‹áž–áž·ážŸáŸážŸ','SPE',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:15:38','2014-11-10 15:42:33',0),(48,'áž”áž¶áž™áž†áž¶áž•áŸ’áž›áŸ‚ážˆáž¾','FFR',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:16:30','2014-11-10 15:41:17',0),(49,'áž˜áž¸ážáž‚áŸ„','MKH',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:16:58','2014-11-10 16:36:05',0),(50,'áž”áž”ážšážŸáž¶áž˜áž…áž¼áž€','RS',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:17:40','2014-11-10 15:39:39',0),(51,'ážŸáž¶áž¡áž¶ážŠ','SAM',9,NULL,0.0000,10000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:18:28','2014-11-09 19:33:42',0),(52,'áž˜áž¸ážŸáŸŠáž»áž”','NS',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:19:02','2014-11-09 19:30:14',0),(53,'áž˜áž¸áž€áŸ’ážšáž¡áž»áž€','NM',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:19:49','2014-11-10 16:34:56',0),(54,'áž”áž¶áž™ážáŸ’áž…áž”áŸ‹áž–áž„áž˜áž¶áž“áŸ‹','FRW',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:20:44','2014-11-10 15:40:02',0),(55,'ážŸáŸáž“ážœáž·áž…ážœáž·ážážƒáž¸áž„','SVK',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:23:51','2014-11-09 19:35:16',0),(56,'áž”áž¶áž™áž”áž“áŸ’áž‘áŸ‡ážŠáŸ‚áž€','RH',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:24:22','2014-11-10 15:41:41',0),(57,'ážŸáŸ’áž–áž¶áž áŸ’áž‚áŸáž‘áž¸(ážáŸ’áž‘áž¹áž˜áž”áž¶ážšáž¶áŸ†áž„)','SPA',9,NULL,0.0000,9500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:25:48','2014-11-09 19:39:01',0),(58,'áž¢áž¼áž˜áŸ‰áž¶áž¡áŸ‚ážážáŸ’áž‘áž¹áž˜áž”áž¶ážšáž¶áŸ†áž„','OM1',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:27:40','2014-11-09 19:43:01',0),(59,'áž¢áž¼áž˜áŸ‰áž¶áž¡áŸ‚ážáž áŸáž˜','OM2',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:28:32','2014-11-09 19:46:09',0),(60,'áž¢áž¼áž˜áŸ‰áž¶áž¡áŸ‚ážáž–áž·ážŸáŸážŸ','OM3',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:29:11','2014-11-09 19:45:36',0),(61,'ážŸáŸŠáž»áž”áž™áŸ‰áž·áž“ážŸáŸŠáž·áž“','GSS',9,NULL,0.0000,10000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:29:49','2014-11-17 14:46:35',0),(62,'áž”áž¶áž™ážŸáŸŠáž¼áž•áž¶áž™','SPR',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:30:25','2014-11-10 15:45:02',0),(63,'ážáž¼ážŸáž”áž¶ážšáž¶áŸ†áž„','FFT1',9,NULL,0.0000,7000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:32:42','2014-11-10 14:36:24',0),(64,'ážáž¼ážŸáž”áž¶ážšáž¶áŸ†áž„áž áŸáž˜','FFT2',9,NULL,0.0000,9000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:34:31','2014-11-10 14:37:18',0),(65,'ážáž¼ážŸáž”áž¶ážšáž¶áŸ†áž„ážˆáž¸ážŸ','FFT3',9,NULL,0.0000,9000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:36:50','2014-11-10 14:36:51',0),(66,'ážŸáž¶áŸ†áž„ážœáž·áž…','SW1',9,NULL,0.0000,5000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:37:40','2014-11-09 19:34:09',0),(67,'ážŸáž¶áŸ†áž„ážœáž·áž…áž–áž·ážŸáŸážŸ','SW2',9,NULL,0.0000,5500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:38:24','2014-11-09 19:34:48',0),(68,'áž”áŸážšáž áŸ’áž‚ážºážšážŸáŸ’áž“áž¼áž›áž•áŸ’ážŸáž·áž','BG1',9,NULL,0.0000,7500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:39:28','2014-11-10 15:46:40',0),(69,'áž”áŸážšáž áŸ’áž‚ážºáž–áž„áž˜áž¶áž“áŸ‹','BG2',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:40:18','2014-11-10 15:45:42',0),(70,'áž”áŸážšáž áŸ’áž‚ážºážšáž áŸáž˜ážˆáž¸ážŸáž–áž„áž˜áž¶áž“áŸ‹','BG3',9,NULL,0.0000,12000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:41:24','2014-11-10 15:47:47',0),(71,'áž”áŸážšáž áŸ’áž‚ážºážšáž áŸáž˜','BG4',9,NULL,0.0000,9500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:43:22','2014-11-10 15:47:12',0),(72,'áž”áŸážšáž áŸ’áž‚ážºážšážˆáž¸ážŸ','BG5',9,NULL,0.0000,9500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:44:26','2014-11-10 15:46:10',0),(73,'áž”áŸážšáž áŸ’áž‚ážºážšáž áŸáž˜áž–áž„áž˜áž¶áž“áŸ‹','BG6',9,NULL,0.0000,10000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:45:22','2014-11-10 15:48:22',0),(74,'áž áŸáž˜áž…áŸ€áž“','S1',9,NULL,0.0000,7500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:46:04','2014-11-09 19:40:05',0),(75,'áž‚áž›áŸ‹áž•áŸ’ážŸáž·ážáž…áŸ€áž“','S2',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:46:42','2014-11-09 20:12:06',0),(76,'áž‚áž¶ážœáž…áŸ†áž áŸŠáž»áž™','S3',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:47:11','2014-11-09 20:13:19',0),(77,'ážáŸ…áž áŸŠáž¼áž”áŸ†áž–áž„','S4',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:47:52','2014-11-10 14:35:09',0),(78,'ážŠáŸ†áž¡áž¼áž„áž”áž¶ážšáž¶áŸ†áž„áž”áŸ†áž–áž„','S5',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:48:26','2014-11-09 20:17:14',0),(79,'áž…áž¶áž™áŸ‰áž”áŸ†áž–áž„','S6',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:48:59','2014-11-09 20:14:35',0),(80,'áž‚áž›áŸ‹áž•áŸ’ážŸáž·ážáž¢áž¶áŸ†áž„ (áž”áž¶áž”áŸŠáž¸ážƒáŸ’áž™áž¼)','S10',9,NULL,0.0000,5000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:50:25','2014-11-09 20:12:27',0),(81,'áž†áž¶áž”áž“áŸ’áž›áŸ‚áž•áŸ’áž¢áŸ‚áž˜','FSW',9,NULL,0.0000,7500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:51:04','2014-11-09 20:16:35',0),(82,'ážáŸ’ážšáž¸áž…áŸ€áž“áž…áž½áž“','FV1',9,NULL,0.0000,11000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:52:07','2014-11-10 14:35:51',0),(83,'áž†áž¶ážáž¶ážáŸ‹ážŽáž¶áž˜áž¹áž€áž”áž½ážŸ','FV2',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:52:49','2014-11-09 20:14:57',0),(84,'áž†áž¶áž”áž“áŸ’áž›áŸ‚áž‚áŸ’ážšáž”áŸ‹áž˜áž»áž','FV3',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:53:17','2014-11-09 20:15:18',0),(85,'áž†áž¶ážŸáŸ’áž–áŸƒážáž¿áž•áŸ’ážŸáž·ážážáŸ’áž˜áŸ…','FV4',9,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:54:18','2014-11-09 20:16:12',0),(86,'ážŸáž™ážŸáŸ’áž‘áŸáž€','SS',9,NULL,0.0000,12000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:54:48','2014-11-17 14:43:16',0),(87,'ážŸáŸŠáž»áž”áž‚áž¸áž˜ážˆáž¸','KS',9,NULL,0.0000,9000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:55:23','2014-11-09 19:35:58',0),(88,'áž—áž¸áž…ážƒáž¼áž›áŸážš','PC',1,NULL,0.0000,7000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:56:12','2014-11-10 16:34:29',0),(89,'áž˜áŸáž„áž áŸ’áž‚áž¼áž•áž¶ážŸáž·áž“','MP',1,NULL,0.0000,9000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:56:56','2014-11-10 16:37:37',0),(90,'áž¢áž¼ážšáŸ‰áŸáž“áž˜áž¸áž“','ORM',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 16:58:15','2014-11-09 19:46:43',0),(91,'áž–áž¸áž„ážŸáž¶áž‚áŸ’ážšáž¶áž”áŸ‹ážªáž¡áž¹áž€','PS1',1,NULL,0.0000,8500.0000,0,NULL,'',NULL,NULL,'',0,'2014-09-17 16:59:05','2014-11-10 16:03:11',0),(92,'áž–áž¸áž„ážŸáž¶áž›áŸ’áž–áŸ…','PS2',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:06:43','2014-11-10 16:05:48',0),(93,'áž–áž¸áž„ážŸáž¶ážŸáž¼áž€áž¼áž¡áž¶','PS3',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:07:21','2014-11-10 16:06:16',0),(94,'áž–áž¸áž„ážŸáž¶ážŸáŸ’áž‘áž”ážšáž¸','PS4',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:08:53','2014-11-10 16:07:31',0),(95,'áž–áž¸áž„ážŸáž¶áž€áŸ’ážšáž¼áž…ážáŸ’áž›áž»áž„','PS5',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:10:23','2014-11-10 15:59:18',0),(96,'áž–áž¸áž„ážŸáž¶áž”áŸ‰áŸ„áž˜ážáŸ€ážœ','PS7',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:18:01','2014-11-10 16:04:40',0),(97,'áž–áž¸áž„ážŸáž¶áž˜áŸ’áž“áž¶ážŸáŸ‹','PS8',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:18:47','2014-11-10 16:05:10',0),(98,'áž–áž¸áž„ážŸáž¶áž‘áŸ†áž–áž¶áŸ†áž„áž”áž¶áž™áž‡áž¼','PS9',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:19:49','2014-11-10 16:03:41',0),(99,'áž–áž¸áž„ážŸáž¶ážáŸ’ážšáž¶ážœ','PS10',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:20:22','2014-11-10 16:02:44',0),(100,'áž–áž¸áž„ážŸáž¶áž‚áž¼áž›áŸáž“','PS11',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:24:29','2014-11-10 16:00:07',0),(101,'áž–áž¸áž„ážŸáž¶ážŸáž¼ážŠáž¶','PS12',1,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:25:01','2014-11-10 16:06:47',0),(102,'ážáŸ‚áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„','TM1',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:29:56','2014-11-09 20:18:20',0),(103,'ážáŸ‚áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„áž€áŸ’áž›áž·áž“áž˜áŸ’áž›áž·áŸ‡','TM2',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:30:43','2014-11-09 20:19:02',0),(104,'ážáŸ‚áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„ážŸážŽáŸ’ážáŸ‚áž€ážŠáž¸','TM3',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:31:29','2014-11-09 20:20:08',0),(105,'ážáŸ‚áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„áž€áŸ’áž›áž·áž“ážŠáž¼áž„','TM4',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:32:15','2014-11-09 20:18:41',0),(106,'ážáŸ‚áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„áž–áž·ážŸáŸážŸ','TM5',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:32:46','2014-11-09 20:19:48',0),(107,'ážáŸ‚áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„áž‘áž¹áž€ážƒáŸ’áž˜áŸ†','TM6',1,NULL,0.0000,6500.0000,0,NULL,'',NULL,NULL,'',0,'2014-09-17 17:33:32','2014-11-09 20:19:27',0),(108,'áž–áŸ’ážšáž·áž›ážŸáŸ’áž‘áž”ážšáž¸','SN1',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:35:59','2014-11-10 16:34:00',0),(109,'áž–áŸ’ážšáž·áž›ážŸáž¼áž€áž¼áž¡áž¶','SN2',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:36:25','2014-11-10 16:32:56',0),(110,'áž–áŸ’ážšáž·áž›ážáŸ’ážšážŸáž€áŸ‹','SN3',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:37:09','2014-11-10 16:30:01',0),(111,'áž–áŸ’ážšáž·áž›áž˜áŸ’áž“áž¶ážŸáŸ‹','SN4',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:37:40','2014-11-10 16:32:21',0),(112,'áž–áŸ’ážšáž·áž›áž”áŸ‰áŸ„áž˜ážáŸ€ážœ','SN5',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:38:10','2014-11-10 16:31:43',0),(113,'áž–áŸ’ážšáž·áž›áž‘áŸ†áž–áž¶áŸ†áž„áž”áž¶áž™áž‡áž¼','SN6',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:38:51','2014-11-10 16:31:16',0),(114,'áž–áŸ’ážšáž·áž›áž‚áž¼áž›áŸáž“','SN7',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:39:38','2014-11-10 16:29:35',0),(115,'áž–áŸ’ážšáž·áž›ážáŸ’ážšáž¶ážœ','SN8',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:40:12','2014-11-10 16:30:55',0),(116,'áž–áŸ’ážšáž·áž›ážŸáž¼ážŠáž¶','SN9',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:40:45','2014-11-10 16:33:28',0),(117,'áž˜áŸ‰áž»áž„ážáž»áž›áž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„','SN10',1,NULL,0.0000,7000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:41:31','2014-11-09 19:31:33',0),(118,'áž€áž¶ážšáŸ‰áŸáž˜ážáŸ’ážšáž¶ážœ','IC1',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:43:06','2014-11-09 20:08:02',0),(119,'áž€áž¶ážšáŸ‰áŸáž˜ážŸáŸ’áž‘áž”ážšáž¸','IC2',1,NULL,0.0000,6500.0000,0,NULL,'',NULL,NULL,'',0,'2014-09-17 17:44:11','2014-11-09 20:08:55',0),(120,'áž€áž¶ážšáŸ‰áŸáž˜ážŠáž¼áž„','IC3',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:45:35','2014-11-09 20:06:39',0),(121,'áž€áž¶ážšáŸ‰áŸáž”áŸ’áž›áž¼áž”ážšáž¸','IC4',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:46:27','2014-11-09 20:05:52',0),(122,'áž€áž¶ážšáŸ‰áŸáž˜ážŸáž¼áž€áž¼áž¡áž¶','IC5',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:47:30','2014-11-09 20:08:39',0),(123,'áž€áž¶ážšáŸ‰áŸáž˜ážœáŸ‰áž¶áž“áž¸áž¡áž¶','IC6',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:48:30','2014-11-09 20:08:20',0),(124,'áž€áž¶ážšáŸ‰áŸáž˜ ážšáŸ‰áŸáž˜áž”áž¼ážš','IC7',1,NULL,0.0000,11000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:53:34','2014-11-09 20:06:20',0),(125,'áž‘áž¹áž€ážŸáŸ’áž‘áž”ážšáž¸ážŸáŸ’ážšážŸáŸ‹','FF1',1,NULL,0.0000,10000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:54:22','2014-11-10 15:38:10',0),(126,'áž‘áž¹áž€áž€áŸ’ážšáž¼áž…áž–áŸ„áž’áž·áŸážŸáž¶ážáŸ‹ážŸáŸ’ážšážŸáŸ‹','FF2',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:55:46','2014-11-10 15:29:36',0),(127,'áž‘áž¹áž€áž€áž¶ážšáŸ‰áž»áž','FF3',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:56:23','2014-11-10 14:37:45',0),(128,'áž‘áž¹áž€ážŸáž¶ážšáž¸ážŸáŸ’ážšážŸáŸ‹','FF4',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:57:49','2014-11-10 15:33:58',0),(129,'áž‘áž¹áž€áž”áŸ‰áŸ„áž˜ážŸáŸ’ážšážŸáŸ‹','FF5',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:58:23','2014-11-10 15:33:21',0),(130,'áž‘áž¹áž€ážªáž¡áž¹áž€ážŸáŸ’ážšážŸáŸ‹','FF6',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:59:00','2014-11-10 15:38:42',0),(131,'áž‘áž¹áž€áž”áž“áŸ’áž›áŸ‚ážŸáŸ’ážšážŸáŸ‹','FF7',1,NULL,0.0000,8000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 17:59:46','2014-11-10 15:33:03',0),(132,'ážáŸ‚áž€áŸ’ážšáž áž˜áž–áž–áž»áŸ‡','IT1',1,NULL,0.0000,5500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:02:10','2014-11-10 14:34:19',0),(133,'ážáŸ‚áž”áŸƒážáž„áž–áž–áž»áŸ‡','IT2',1,NULL,0.0000,5500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:02:42','2014-11-09 20:21:24',0),(134,'ážáŸ‚áž€áŸ’ážšáž áž˜áž€áŸ’ážšáž¼áž…áž†áŸ’áž˜áž¶','IT3',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:03:25','2014-11-09 20:17:36',0),(135,'ážáŸ‚áž”áŸƒážáž„áž€áŸ’ážšáž¼áž…áž†áŸ’áž˜áž¶','IT4',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:03:58','2014-11-09 20:20:44',0),(136,'ážŸáŸ’áž‘áž”ážšáž¸áž’áŸ’ážœáž¸ážŸ','IT5',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:04:34','2014-11-09 19:37:43',0),(137,'ážáŸ‚áž”áŸƒážáž„áž•áŸ’áž›áŸ‚áž•áž¶ážŸáž·áž“','IT7',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:05:18','2014-11-09 20:21:04',0),(138,'áž€áž¶áž”áŸ‰áž¼áž‡áž¸ážŽáž¼','CF1',1,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:18:13','2014-11-09 20:04:53',0),(139,'áž€áž¶áž áŸ’áž…áŸáž‘áž¹áž€áž€áž€','CF2',1,NULL,0.0000,5500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:18:58','2014-11-09 20:09:15',0),(140,'áž€áž¶áž áŸ’ážœáŸáž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„áž‘áž¹áž€áž€áž€','CF3',1,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:19:39','2014-11-09 20:09:38',0),(141,'áž€áž¼áž€áž¶ áž€áž¼áž¡áž¶','CK1',1,NULL,0.0000,4500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:20:40','2014-11-09 20:09:57',0),(142,'áž‘áž¹áž€ážŸáž»áž‘áŸ’áž’','PD1',1,NULL,0.0000,4000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:21:24','2014-11-10 15:35:13',0),(143,'áž€áž¶áž”áŸ‰áž¼ áž‡áž¸ážŽáž¼','CPCN',1,NULL,0.0000,9000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:22:54','2014-11-09 20:04:24',0),(144,'áž¡áž¶ážáŸ','LT',1,NULL,0.0000,9000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:23:25','2014-11-09 19:40:39',0),(145,'áž¢áž¶áž˜áŸážšáž·áž…ážáŸáž“ážŽáž¼','AN',1,NULL,0.0000,7000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:23:55','2014-11-09 19:42:33',0),(146,'áž¢áŸ‚ážŸáŸ’ážáŸ’ážšáŸ‚ážŸáž¼','ESP',1,NULL,0.0000,7000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:24:35','2014-11-09 20:03:35',0),(147,'áž‚áž»áž‡','1',1,NULL,0.0000,500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:35:15','2014-11-09 20:13:52',1),(148,'áž…ážšážŽáŸƒ','2',1,NULL,0.0000,500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:36:23','2014-10-18 15:22:06',1),(149,'áž‚áž»áž‡áž…ážšážŽáŸƒ','3',1,NULL,0.0000,1000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:36:51','2014-10-18 15:21:13',1),(150,'áž‘áž¹áž€ážƒáŸ’áž˜áŸ†','4',1,NULL,0.0000,500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:37:36','2014-11-10 15:32:39',1),(151,'áž”áž¶áž™ážŸ','BS',9,NULL,0.0000,1500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:40:12','2014-11-10 15:44:00',0),(152,'áž‚áž¸áž˜ážˆáž¸','KJ',9,NULL,0.0000,2000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:41:13','2014-11-09 20:13:35',0),(153,'áž‚áž›áŸ‹áž•áŸ’ážŸáž·áž','F1',9,NULL,0.0000,1500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:44:51','2014-11-09 20:10:26',1),(154,'áž–áž„áž˜áž¶áž“áŸ‹','EGG',9,NULL,0.0000,1000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:46:03','2014-11-10 15:58:47',0),(155,'áž áŸáž˜','HAM',9,NULL,0.0000,2500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:47:53','2014-11-09 19:39:38',0),(156,'áž–áŸ„áŸ‡ážœáŸ€áž“','PV',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:50:27','2014-11-10 16:28:47',0),(157,'áž”áŸ’ážšáž áž·ážáž…áŸ€áž“','PH',9,NULL,0.0000,6000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:51:32','2014-11-10 15:58:06',0),(158,'ážŸáŸ’áž“áž¼ážšáž”áž¶áž™','SB',9,NULL,0.0000,2000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:54:58','2014-10-19 12:35:55',0),(159,'ážŸáŸ’áž“áž¼ážšáž”áŸážšáž áŸ’áž‚ážº','SBG',9,NULL,0.0000,4000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:57:45','2014-11-09 19:38:22',0),(160,'â€‹ áž–áž„áž˜áž¶áž“áŸ‹','F2',9,NULL,0.0000,1000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 18:59:21','2014-10-19 12:48:06',1),(161,' áž áŸáž˜','F3',9,NULL,0.0000,2500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 19:00:16','2014-10-18 15:05:05',1),(162,'áž•áŸ’ážŸáž·ážážáŸ’áž˜áŸ…','F4',9,NULL,0.0000,2000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 19:01:11','2014-11-09 18:23:50',1),(163,' áž–áŸ„áŸ‡ážœáŸ€áž“','F5',9,NULL,0.0000,2000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 19:02:37','2014-11-09 20:04:05',1),(164,'áž”áŸ’ážšáž áž·áž','F6',9,NULL,0.0000,2000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 19:05:47','2014-11-10 15:48:53',1),(165,'áž˜áž¸ážŒáž»áž”','F7',9,NULL,0.0000,1000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-09-17 19:07:09','2014-10-19 12:25:32',1),(167,'áž€áŸ’ážšáž¼ážŸáž„áŸ‹','cro',1,NULL,0.0000,10800.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-27 09:37:19','2014-12-27 09:37:19',0),(168,'áž€áž¼áž€áž¶áž‚áž¶áž˜áž”áž½áž™','ck2',1,NULL,0.0000,5500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-27 16:35:56','2014-12-27 16:35:56',0),(171,'áž€áž¶áž áŸ’ážœáŸáž‘áž¹áž€ážŠáŸ„áŸ‡áž‚áŸ„ážœáž·ážážƒáž¸áž„','cf4',1,NULL,0.0000,7000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:10:20','2014-12-28 15:10:20',0),(172,'.áž”áž“áŸ’áž›áŸ‚','F8',8,NULL,0.0000,1000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:46:08','2014-12-28 15:46:08',1),(173,'áž¢áž¶áž”áŸ’ážšáž¸ážáž','APR',1,NULL,0.0000,6800.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:48:39','2014-12-28 15:48:39',0),(174,'Taramisu','TRM',1,NULL,0.0000,14000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:50:27','2014-12-28 15:50:27',0),(175,'Passion Cake','PSC ',1,NULL,0.0000,14000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:52:18','2014-12-28 15:52:18',0),(176,'Cheese Cake','CHC',1,NULL,0.0000,14000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:53:21','2014-12-28 15:53:21',0),(177,'Chocolate Truffle Cake','CTC',1,NULL,0.0000,14000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:54:24','2014-12-28 15:54:24',0),(178,'Opera','OPR',1,NULL,0.0000,14000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-28 15:57:32','2014-12-28 15:57:32',0),(179,'Chocolate Eclair','CCE',1,NULL,0.0000,10800.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-29 07:41:49','2014-12-29 07:41:49',0),(180,'Caffe Eclair','CFE',1,NULL,0.0000,10800.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-29 07:43:20','2014-12-29 07:43:20',0),(181,'Black Forest','BLS',1,NULL,0.0000,14000.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-29 07:44:42','2014-12-29 07:44:42',0),(182,'ážŸáŸáž“ážœáž·áž…áž áŸáž˜','sw3',9,NULL,0.0000,6500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-29 12:44:48','2014-12-29 12:44:48',0),(183,'áž–áž¸áž„ážŸáž¶ážáŸ’ážšážŸáž€áŸ‹','ps6',9,NULL,0.0000,8500.0000,0,NULL,NULL,NULL,NULL,'',0,'2014-12-29 12:45:59','2014-12-29 12:45:59',0);

/*Table structure for table `item_expire` */

DROP TABLE IF EXISTS `item_expire`;

CREATE TABLE `item_expire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `mfd_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `quantity` decimal(15,2) DEFAULT '0.00',
  PRIMARY KEY (`id`,`item_id`,`expire_date`),
  UNIQUE KEY `item_expire` (`item_id`,`expire_date`),
  KEY `FK_item_expire_item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_expire` */

insert  into `item_expire`(`id`,`item_id`,`mfd_date`,`expire_date`,`quantity`) values (1,1,NULL,'2014-11-30','4.00'),(2,9,NULL,'2014-10-31','0.00'),(3,15,NULL,'2014-09-30','0.00'),(4,7,NULL,'2014-08-31','1.00'),(5,20,NULL,'2014-10-31','3.00'),(6,9,NULL,'2014-11-01','0.00');

/*Table structure for table `item_expire_dt` */

DROP TABLE IF EXISTS `item_expire_dt`;

CREATE TABLE `item_expire_dt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_expire_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `trans_qty` decimal(15,2) NOT NULL,
  `trans_comment` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_expire_dt` (`item_expire_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_expire_dt` */

insert  into `item_expire_dt`(`id`,`item_expire_id`,`trans_id`,`trans_qty`,`trans_comment`,`modified_date`,`employee_id`) values (1,1,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(2,2,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(3,3,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(4,4,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(6,1,2,'10.00','Adjustment In 2','2014-06-06 19:13:36',38),(7,1,1,'-1.00','POS 1','2014-06-06 19:22:17',NULL),(9,1,2,'-1.00','POS 2','2014-06-07 08:47:55',NULL),(10,1,3,'-1.00','POS 3','2014-06-07 08:17:57',NULL),(11,1,4,'-1.00','POS 4','2014-06-07 08:09:59',NULL),(12,2,5,'-1.00','POS 5','2014-06-07 09:21:21',NULL),(13,5,4,'3.00','Receive from Supplier 4','2014-06-09 13:33:20',38),(14,6,4,'3.00','Receive from Supplier 4','2014-06-09 13:33:20',38),(15,6,9,'-1.00','POS 9','2014-06-10 02:03:50',NULL),(16,3,11,'-1.00','POS 11','2014-06-10 03:24:12',NULL),(17,6,12,'-2.00','POS 12','2014-06-10 03:38:23',NULL),(18,1,5,'-1.00','POS 5','2014-06-15 05:01:33',NULL),(19,1,1,'-1.00','POS 1','2014-06-17 11:50:29',NULL);

/*Table structure for table `item_image` */

DROP TABLE IF EXISTS `item_image`;

CREATE TABLE `item_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `photo` blob NOT NULL,
  `thumbnail` blob,
  `filename` varchar(30) CHARACTER SET latin1 NOT NULL,
  `filetype` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `path` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `width` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `height` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_image_item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_image` */

insert  into `item_image`(`id`,`item_id`,`photo`,`thumbnail`,`filename`,`filetype`,`path`,`size`,`width`,`height`) values (1,9,'ÿØÿà\0JFIF\0\0H\0H\0\0ÿá(Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0ž\0\0\0\0	\0\0¤\0\0\0\0\0\0\0\Z\0\0\0\0\0\0®\0\0\0\0\0\0¶(\0\0\0\0\0\0\01\0\0\0\0.\0\0¾2\0\0\0\0\0\0ì\0\0\0\0\0\0\0‡i\0\0\0\0\0\0	\0ê\0\0\0\0\0\0’\0\0 ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Apple\0iPhone 5\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0Microsoft Windows Photo Viewer 6.2.9200.16384\02014:04:18 00:11:21\0\0‚š\0\0\0\0\0\0>‚\0\0\0\0\0\0Fˆ\"\0\0\0\0\0\0\0ˆ\'\0\0\0\0\0 \0\0\0\0\0\0\00221\0\0\0\0\0\0N\0\0\0\0\0\0b‘\0\0\0\0\0’\0\n\0\0\0\0\0v’\0\0\0\0\0\0~’\0\n\0\0\0\0\0†’\0\0\0\0\0\0\0’	\0\0\0\0\0\0\0’\n\0\0\0\0\0\0Ž’\0\0\0\0\0\0– \0\0\0\0\00100 \0\0\0\0\0\0\0 \0\0\0\0\0\0	 \0\0\0\0\0\0À¢\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0!\0\0¤\0\0\0\0\0\0\0\0ê\0\0\0\0\0\n2\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02013:05:13 09:07:26\02013:05:13 09:07:26\0\0\0×\0\0o\0\0í\0\0~\0\0Oµ\0\0-5\0\0\0\0\0d_Çqq\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0î\0\0\0\0\0\0ö(\0\0\0\0\0\0\0\0\0\0\0\0\0þ\0\0\0\0\0\0‰\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0ÿØÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0 \0x!\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ïf$oE\'ô¯nr$bGV&¹\ZÔÞŽÌM#ckî mÜJë—\02k\Z×m3X5­ÌÏÂZëWÇÌÎ©Ÿ©$× Ä›@Jé’³9™dgŠa]Ç·¥rbŸ¸o†øÄeÿ\0\Z­4Já•Àea‚§¡Jó’Ôï¹©Ú[ÙXLa/J˜•¿v[ÝWô®{Ãåm<ÝIþôYÛùs^*·†§,áftºwì›h»ŠHOr>a]÷‡5?Qš?³]Å!\'î†…vGs†¤\ZØôÕÛ\0“…š+}È½‘æ\rªYÜØNayLvîç§¥x£ØÝNs¼Œ=B×—S²”mthxcBiuÍ—p8S0ÚÜö®ªãÁÆHä×%)Í_ðÇò­.¤cRêZz?†|Eá¨æEi}®”1ÜHïÚµã×íâG¨[\\ØÉÓ÷©¹1þäîÆ•Íxç†h|È&Žhñ’Ñ¶êD”¦¹1*éa·c‰ªÒu5Ãc²ç#âû¿.É ™_‘ì+ïýBŽÃK€™®ÊQ÷R1“³0È\0sRØYüÅb¥yWeìd¬÷=_ÁšÎ¹wc4W:•Ì–ÅJ„‘÷`{¿­Õ\rbqMZLê%ð]§˜¯ïÖk|Â–_Ûãç™ØËòŠáöO¶\"ƒD·²ÉoGÚT·r*IPw®}Åh—.†OQÐ<X {\Z«®]ÙXé¯=Ú£G¡vîÜO@(¹)jy½ó‡všM<älXúþ?ýjÃ—ZÕí\\·Ú×=i(©\r8—ôßËŠ—è\Z2pd^£ë] ž;‹tš&Ž ©õÅ‰¥Éª7£>ec…ÖœßxŽ;qÊÅ…?ÌÕn}÷«û±(êkZjÖ@õ¹”ù8´, ,Š rÄWCÓB#ÜõkXF‹àï0q4 \"þ=h­e>[#™.mOPtM‡§CUL\0Ó±ÐŸf<Ui´øÜ÷¤ÕØ\\£.š‹Œ0Éè+“×lÚmbeÿ\0Qn‚@w=ÿ\0ÿ\0¡VsVF´u‘{¥C~J$ 9<\ZâµËkìCw1ºä0èÂ³ƒw:æ•Œ	R5™Z,mcÈ®»B×-¬cžÆw	j^2Ý‡qþ­j|Ð9£>Yðå™Ô®®¯ÏÌ¬Äîy5WPðÖ¤\'–TQ0v-ÇÊy®EQFm<¼Ñ1ÍÌ<\'?ÄµÓøsO7z”)·å]1´¤Œ¤ívÞ\'½†\'rmì£‚ÿ\0ú\n)VÖV(û¦—µë¿©»±¹\"è² ³dÞ³äàc¸5v/\\é:u´ž(Òe±šl„òXJ€È‚/zè9š¹‹ÿ\0	þ·w|ÿ\0bÒ KPHkØ÷Ç£gâÛ¤»ŒjP‘EÃ*g¿@GëY©š:VE?øÙìµË(ì¬d›MVÙ-ùSå=”ô8úõ¨u\'7~\"º*$1¢¨óOÝl¨ÀZš¿ðëÞ3-\"Õ¾Ü±›k³+ŸyÝŽÜbã6+Ï´’(ób!”Ö1Üë’Ðñï³LŽ0YäJ³<Ñ‹[£,@´±„ðs]Ÿ8ä¬ÎçáãFt\\€DÌ2Š»8á@\"¼Šÿ\0Ågm?—¤Ã9UxQìVºøGô›Hw¥„ê2J®Þ\nt§Ê®e[tŽjïÃ6ÅÞDˆ,XŸsE9¹JW5„Ôcc\'Æºdz­¤21Ü[Ê²Ç\"õR\rpK¬_x›Åmwy7Ú\"…<¨È]ªr½zrØã‚¼‘ÖÆ#µAõÅ:yc@pÚÀà\ZæGe“Ð~„ñëšmÇ†®eŠb–9oùç»$/¾Wÿ\0¬û«˜ÚúYîÅ,vÛñÒ®néQ¤Í;ØäÚ}qŠ—X²:¼pŒl?xûVQ7’8	ô}úËÀ–ÒCo±2}ÐÄþUÂêòF\'‘!9ˆJÛ¢ö®š.ç-ukÍðóÂ¼euæ”šëtÌxÁ8˜®’/]A ùr¹ëJæ¯C™ÜTëòèuÚ=šÆ¡šN@èj{Ëƒ$†%ÆÀFO©¬aEÇp”¹¤DØÆ(­´ÎGX?èî=«Î<=µ×n£!~k0„ó]]•‡E]Üê¯|?a©¼sÎò)ƒ\r®Tñô5[R–ÖñœKsk7)ÆÎ3íX­NŽ[³”ÔaÔ4©bd–K›ŒgUä¯\\œU1¬uvžíSÎV*Á¨wÜQi;1ÒkÙI¶ß”^\0­=;Ä7\Z”ÂÎ+GžIM«ïS\\ôW5õ\r&I4©ì§ºnš2Š-åûþ¯*ŸÂ—òÎÖkjK$§uÎýª@cÚ¶„”49ªCšÌö¯êÑéZ5Ž™“„·…P³?R5ÑÛêðIê‡½¥Ì]lÅp|€}j0SÐuªz£=˜ó‚8¢¢Æ—8-Jc4-­yÅÖ«g¦øLï\"LÌWoÊÁ_Âµš¹­\'c¦¸¹šH[ÈTí¦k‰Žç\\‹\\Ž[‹“2¼^ ¥Béô¬b´:Ò¾§S¤]HÞ&I“{,JIÂúö®{ZºþÓñì¥L*¶á*íËg¸­anMN:­óègÚ†¹`Ø\"½Â¾V£]ß…`\nÇíšÊ+Þhénñ3[Rs&v?™«	#(ëów>•ÝË°¦ì§9æˆu)ž@¡\'¥8‰´z—‡<Étd2äüÇÚµþÌ1]i{§—\'ï°òp(¥aÜòëûãm‡nq‘Š­¤hÚ‹!’´ÙRüÀA’•†{Æ=¾•WÖÆÍir„þÖôG®5Q•*Ád\n=EbÞVTsi¡^A;™“îÖ\\º1«djø\næÓM·¿‹VÕ­–êá¹Vb¥O¦zb°õ¼¶¯wöiÃH\0nÝW+ZÈ\'ë³(i6ý£&æ/´®O©®ÂE‘ô¡i\"“.÷-éíYm#I-2SæsÕÏô¨dºç±o°lImmqy\"Ç\n;³\0­wþðWKOåãpˆu?ZÞ”ÕœÕªYXïã·XÑcB¢€ŽÂ¥ÛÅt(iQE+x®£(mQ ê,Eli—\"Êú)Á\nFWqì\r`Ý¦vÆ7Ö@±ÜGËyOr	S#/;IäN“KXme·µ„[4Ž\\°Ãn\'©®›]Êv<³]øqsw¬Oq§Ïo“±.Y¹Sßÿ\0¯\\—ˆ4“¡øŽÙ#bðI	\'÷ñÁýk.V‘éNºœcÐÞ°Ô,²B•Ý[¹Cé†$Šh½‘ÉÀ,Ià\nÆl‹Ü™lîe|H6ƒƒïW¬ô›ríæ¹b9\0wõ­)Ðî&ÏBð¼–VQ…†ÑÈ¿r>µÖ¬Â@H÷µÛÊ’Ðå«`J‡ƒïS,èÕ‹9Ú¶ƒ²L\Z($ð;Y~Õ¬ÈÌsµ™­J\"–Û¶|§æô®I+Ìô£ðˆ¶—ðù¤xB…Y#m ’{æ¶¦Ôá[wHšD[yL,Ó)äOP}k®=Î9Y”–Òåæºkõ­÷-cnJãœþ5Èx¶ÒØé“Ásx‚böóÃóO¨ëS%îšÓÕØá­e´a9Š\"–ünžO—y™ô­m\ZÔ¥ÁšQò&qîkk$u»îÍÛ‡,žha»½WG}ë ûÊÀƒ]ˆ•M=¤y	V½©í]F—¨	$[¤òçÁô£Ú¶Z!ÍhÍÅ„ÊûÔRCÿ\0â\rf›™!r¤ò+9£…«²UÕ™zÑP‰å<OD™›\\ crßwW±›9‘¹VR¤W,¾3±|%ë	…ª[$-n‰~Þ9ôõ­95˜¿´míâhçóù¤|Äg¦+¥|\'$£¨Ë‹k–˜C¦Ê[³´“MÞfz€ÙàŸ¡®#^žóMMGûKf¸0€¡IR¸#êþ…M¯tÒ†’Hó»fÞì\'Ú>KhØ1_aÚ»\r1æ¸†/9Q@j¢žŸ­aJ\'§]$Ò]Y\"\0`¨Ç4Ž(îÜ5º19åù€µŽäí]BÙ­õ’_YafŒä‘ÔCZEßB\'+jmhú¹›Î6N¹ãßÔ{õkS·IÌ‚sØ3Çµ9jsµiÛ\\{ÑX1Xñï]É6»$¥‰”¨cëž•ê¶äIic\\²~ñ×R)3Íô»˜­<A{\rÛÝÏ™YB	Â€ ôÁÇóÚÃâM\"ÛD@‹wq®ño¸1ÚŸþ½lª[@­„wN;Ó<X×^*½¾7F}5 ÌQÆŸ,xõ÷ükŒñ_‹-üMp–ñ@vFÅÑ›Ôuý(•Ot¼>ûTßKsÚùþÎŠFr_ð­»I¿³,£¶˜ÜbpêÊßtý=>„TÂ|¦¸…z­[Íysn’ÙL\0@\rÔT`ÞCi¢#‚ß{‘Zè1Zšö—	~‰,L7¶E÷½¤ÝÏ£Ý)S˜¤áéøÕ%fCZXÜºŠ7	}kÄNrGüójØÓï„ê°H£“ù0þ†´ò9í¥Œ\r[N{MH…‚R]	ùqê?\n+­LäîÏ0·c±O)B´XdOñ®«KÔRKt õ\0×\rîÎé.§›øæÎâÇ_’ö(ÙgÚÅ»oïU4‹›yn’(™Ê²ì›î“ŽáZ4va«®G	nuZŒvÖ—ÚL×Án$œÄ‡fÐ¼áº*Åkm6\0nqóÆ®±\r»„ŒúÕ2ZŠ2”3*éòElIç,kv\r<jªà¸dgÞ¡÷1”®ïÜÉ{=K@º&Þr-äaòîùAþ™­í;Ævâ5º€7$|Ë×ñ®ºnè˜£´ÑãÓ<Sk4‘CöKÈÈ%£ùwÐûÒ}’ú\r»”£Cu÷ú×BÕ\nÚØÓÓh^HK~é›­ØÖ¤7qÃpaT!I:ú{U£7H¹ây¯´	–-†,˜Ë6Õ-Û>Ç½-ªhðý6êGÊRM ²¢¶t×Ž‘;Þ¾Ù¯2Öf÷æ‰§)‚îÊH.U\Z]­»§5æ~\"ðùÑïDHÛ —-=@÷­tw7´î—M‰0K;m`\\¨e=IÇ·­/ˆ„-o†hÙƒŠ1ŽsÙqÚ´µô!MÜçeÒ.ÒßÍ™d*pp½\05Õøzä(Ôÿ\0\n…üª+FÈØ¿ªÅÅ«!ç# ¦Øé¦ëNŽ+ˆ†Á‚	ê(¥+&Rv5të¡§xŽÇÉp¶ñ¡IPwSÅw:…±óh°C}EuÑøMZ³^dÐÈˆ³³\núœzÐqÑ¸Ã/Ý?îÖæ5#ÔÒŠò \Z	>mÊçøÁíE$gì¹µ<>êÎk[§È!ÃŸZtwÌLÛz©òæ¼éÇ©9t5 ¾i.Þ‹}œ°ùíW¤Ó¬n-82\' y”A\\ß—Ý¹`½¶ ´‹\'\0ô¸¦Ûxjt“ísl2(àãúV‘ÜçødX¸H6æ;(»¾PsT¿²çÑ€–=òFpÏíô¥XóDê‘­c<w$á«BF\"ùÆâ¹\"µ©“k¥ÜÜ_GpÍÄŽ¯p+¼¶¸¸6ïIÜ·ÍÏzô)«\"§+Ùe{‹‹Ù.G’@\0ÀzûÕ†¹3X$‘ð¶‘ìjî]E±hB÷VP¼y,‡9Wè¤ÈSQÐÈºÓ¡»l¨¡î+–Õ<>Öå|¢\\HJ·šäjçžŠšrýž9õÁ>ž•}õcÂ©\' ¨Z^ÓÜ/hî.^Y~}ÃŸJÖ1ŒdVˆæ›¼Žy/ímõY,e„FÎÄ¤ŸÂç®\rh¿•äJŽ€³’œóžáZ§}¸>hœì¶÷:V¢ŽÅ2”_n+nÎA©Œ¨ýÂ»jËÙûÅÃDmÙG›Ì#%.~¸â³ÿ\0µ#žù4µ$\'ñJ­ÑÇA]IhD_¿rôÍ,kr6[vGqô©tÅ—VÆTºgÔPm?#¥ðÜYGQHÀ÷¢¡³ÉÄTýã2b£h‡¥bŠ9ÍfÖ°‘DŠò|ÎEC§ø|ÜáåÊÇØw56úðXEm—ýéâ Ö¨G?â=ûF\rÐan#!‘|v5…c®›Plobu™Ër vúT·gszR¶‡Ekn549>dL£\'Óÿ\0¯[QÅoii\0Nüó]×S±laëZ±É§éì<×?¾îO©®+T¾Ô4—K²	 B	xú®=jkJÆ2ÓS_Iñ¤zœÈZ	9‰aÏÒº¸žéçVÃåbvü$úÕ)\Z©«jz•Ù´äˆ’Y@$žæŠ–Ï\ZkšM˜[\r!Ž Ø¯-Œ2È²:ËÐÔËÑ@täÔes@\nÑ†ŠÄÕ<?g¨ƒçÂ¼>†‹\\«Øãn-õÞîµ™çŒN>ð‡Ö­^x²KÈv‰äáÎîGÒ³çpV:éÔº±RÍÄ#“–c–5¢“£¬‚\ra}Jz™/£[A¨¥Å–nÜñÿ\0}«°Óu9mŸ~ÈÂ`p{â´S®¬z&“|—Ö\"TôÁ†ŠéZ«žeEË&Œí R`TšŠh+Í\04 =i…\04­Fc‹›¨ékt(úzÁ¸ðu´Ùwb$ç?—šL´ùL;¿j„˜X\\ í÷Z³EÓÛÉåÌ¯ú5sÎ7„îKöàÖµöøBÆ³F—±ßø&ërI	=W }(®Ø;Dóñ?Ä?ÿÙ\0ÿá9ghttp://ns.adobe.com/xap/1.0/\0<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.4.0\">\r\n	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\r\n		<rdf:Description rdf:about=\"\" xmlns:mwg-rs=\"http://www.metadataworkinggroup.com/schemas/regions/\" xmlns:stDim=\"http://ns.adobe.com/xap/1.0/sType/Dimensions#\" xmlns:apple-fi=\"http://ns.apple.com/faceinfo/1.0/\" xmlns:stArea=\"http://ns.adobe.com/xmp/sType/Area#\">\r\n			<mwg-rs:Regions rdf:parseType=\"Resource\">\r\n				<mwg-rs:AppliedToDimensions rdf:parseType=\"Resource\">\r\n					<stDim:w>3264</stDim:w>\r\n					<stDim:h>2448</stDim:h>\r\n					<stDim:unit>pixel</stDim:unit>\r\n				</mwg-rs:AppliedToDimensions>\r\n				<mwg-rs:RegionList>\r\n					<rdf:Bag>\r\n						<rdf:li rdf:parseType=\"Resource\">\r\n							<mwg-rs:Extensions rdf:parseType=\"Resource\">\r\n								<apple-fi:Timestamp>-264753123</apple-fi:Timestamp>\r\n								<apple-fi:ConfidenceLevel>281</apple-fi:ConfidenceLevel>\r\n								<apple-fi:FaceID>12</apple-fi:FaceID>\r\n								<apple-fi:AngleInfoRoll>270</apple-fi:AngleInfoRoll>\r\n							</mwg-rs:Extensions>\r\n							<mwg-rs:Area rdf:parseType=\"Resource\">\r\n								<stArea:y>0.802</stArea:y>\r\n								<stArea:w>0.141</stArea:w>\r\n								<stArea:unit>normalized</stArea:unit>\r\n								<stArea:x>0.342</stArea:x>\r\n								<stArea:h>0.188</stArea:h>\r\n							</mwg-rs:Area>\r\n							<mwg-rs:Type>Face</mwg-rs:Type>\r\n						</rdf:li>\r\n						<rdf:li rdf:parseType=\"Resource\">\r\n							<mwg-rs:Extensions rdf:parseType=\"Resource\">\r\n								<apple-fi:Timestamp>-264753123</apple-fi:Timestamp>\r\n								<apple-fi:FaceID>11</apple-fi:FaceID>\r\n								<apple-fi:ConfidenceLevel>277</apple-fi:ConfidenceLevel>\r\n								<apple-fi:AngleInfoYaw>45</apple-fi:AngleInfoYaw>\r\n								<apple-fi:AngleInfoRoll>270</apple-fi:AngleInfoRoll>\r\n							</mwg-rs:Extensions>\r\n							<mwg-rs:Area rdf:parseType=\"Resource\">\r\n								<stArea:y>0.618</stArea:y>\r\n								<stArea:w>0.159</stArea:w>\r\n								<stArea:unit>normalized</stArea:unit>\r\n								<stArea:x>0.273</stArea:x>\r\n								<stArea:h>0.212</stArea:h>\r\n							</mwg-rs:Area>\r\n							<mwg-rs:Type>Face</mwg-rs:Type>\r\n						</rdf:li>\r\n					</rdf:Bag>\r\n				</mwg-rs:RegionList>\r\n			</mwg-rs:Regions>\r\n		</rdf:Description>\r\n		<rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"><xmp:CreatorTool>Microsoft Windows Photo Viewer 6.2.9200.16384</xmp:CreatorTool></rdf:Description></rdf:RDF>\r\n</x:xmpmeta>\r\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                   <?xpacket end=\'w\'?>ÿÛ\0C\0		\n\n\n\n		\n\n\n	ÿÛ\0C																																																			ÿÀ\0À	\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0þ‚¡…aÚ%|yŒpGjšDòb‘°þt—0L‘[ª4»‰;GSô«QÛI=ºÄÉ¹\\|À×ã	3¡œ„ŽáË:i¤!@«»D‹nÊ\n9þÒ»)l¬­íÂÆ¸œ!îšç¤‚$Øî7°lGZÒ4û˜J]YRG&ØA«±¬.‚(ÈÃ¶3ýÓUn,§–Eû\ZªÜ¹Ú:åV„Ø[‰%¡ú×m-¢Ó3ãgS0’LB%(ã®}ñZ7z•­¹ó\\4‘…\n9äV;ÜËI5äa~Ñ À^psÚ£û\\ö³«B‹)¹R€?|×G´hÝ+ljÎm¦\'ÊCò©É5nÊÎØGæ6\\LHô÷5ÍÉo5„ÐËÙ›Í$Ê§¢ñÐS­µ	å™Äxq9¾k)Uoq¶[ŸL†;¹äUÀ\'yî)ñéI2²*™Ü·oñgµlYKeyb¢|Åv7œ|£=Ö§cˆ­ÉÂÍbÌœû4VRF%âuaHÇ‘Vh]ƒ@R5ásÐ×qwåÜ\\F±‚Ñí€zúêF†Ö|[•£ë‘Þ³’±~ÓK#…ó÷HˆÎa—ká5v]MØÂÇ¾0­O}dÊSË€¿ï¶çëQM¤Ÿ)÷’_ý‘ìi.ÆWèIc®=á„ªÝžÞõÒO¨»:[Å\'Þ_â>ÿ\0Jóßì¹,œQ¶mÀ’>òö­9\'¶`¹óQìœÞµŒzÛˆºNÉ$­è ÿ\0\nYáá›;ùÀ¹ñªJ÷‰>g„»c¿­_ŸPƒ<¿¾Îsè(ä¹´ˆ¿l-oHƒÀ3XëºuÌöSËXw›!‚É\0.xcžé_ÊÏí¨øXÞ$ˆæ4²»‚8hÁ…IèIõ¯ê‡öÔÕ-×Áú}¾ç2K©C<J£ˆ¤ÆÝÇ·?Ò¿’Ÿ—×z‡ŒüDÏre»mVpÌÝÊ¹úsÖ–%sPöoÔû>\ZÌ*ÆQ¡N7»×Éu<ši¢¹Cºmî÷¬	4YŒ“]n\nÝ÷5¨Ö‹iiºÜíÊóŸZÌŽ[ÒTO!x‰Èô×‡ì™úÌeecSŽW0jM?Éb¡\Z3ßžÕRSÛ)¸Q!+ÐöoX¶–æ6Š9<´f›Ö™§hÎöÅ­ÜN9É\'æÏÒ«ê‘IÕ{œ²Œ}¯:Ü¥,ÑËû•§¯j,ÿ\0Ð‹\rÂSÒ‹…·•Ê\"fEÀ>ø«¦?4Fá„hoÓÉ-45Qvr!–îêÚE6 21ÉÏ­k¾½<–Æ$³Øà×7m4ÑÝ,s¡{q!ÇÞÑjV0Û¤Û–·.IÈ­iI%bcRN7‰ËßjjíÑâFQ±O½Ge¨On^[ÔY[Ë%OÝ\'½X¿Ò×S$º›&\0IþµRâ5¶Ø›vó¸½v§¬fñucï\"¥î³5ç‘¶ß;0eþÓ3GlÑ£LÛDmÎ;Õ{‹½…V8ÑÜnÇLúš²~ÎÐÑ²í\'pjê¥YDàÄb§VW›Ôç¢´‚©n…°[ye8cÛ?ãS›IÃHR<µ]–òÞxVÝîöŸ”÷ªóÈb{FcòïÀ½mí5ÎG‡Œ´ln—4¹»Ðl¸8Éë[òº­Ä3ÛîŽ4$c¹ÿ\0\Z m¢¸»·™¦kt…·mñVmõ2æéÚHdb¹#æÕ‚f5p±0ïoÕnœ3:¬ãÓ êE„ËmyY>Îï*îã9í[7&Ú%Žåc-21\rŸáŽ÷*ìû!Û?JÊœb¥r)ÓŠ‘ZÞóai<Ü9«+xË›‰\\n<b ûåÕQE19©oa·\'#kÈ\0=ëÐ•TçÌÎª‘¼®d]K-ÄâdÆÔëôÍUºq©Ms®ô¥jÏoæ…Žßä…[¯÷‡¥6Sn‰`ù7‚2µÛCË¢9gsa6W,Õcóò¥ª`áÜ<¥FÓ¸Ö´¶óFË2É¿Œâ¢x’æ	.öÉmÉ@~õ{ðªùt8äôµŒ›XÅ¼ÌÉóí¬;¸I$íÈ$T^(€¬QNþsØTÖ³µæøEEUï\\Ó\\Û˜ª–0íâwmÃí2’£w¥,w/	šÖâ,™“†_á?áSK¸cœÛð3Ú eÜç!¯^ô¡æN«¾ƒd)\nþù¼»‚\0R;RÂÏ±A;åe<š‚uKÉ3˜ccwcSAn`(Bý× êèpT“Ü€¼¹ÆÒÈ¹äÿ\0\ri™Z(uË#¸¨#Y„Œ1ò¹Ç±É`ž)ZIŽQŸašÎ^k´sÆ¬ž¨æõÛ†|Å´˜¤^1é\\ÓZ\\Û*\\Â¶zJèµ’cÔ D…–$6ÞÍ*Ln`}ÐÃ^†\ZIneVR’ÔìþGk¨ø‹NfËÉu\Z7¹Ï5û5àkXŽƒfòÚ•gƒiÇÝR8ãÖ¿#>ÛJ¾\"ÑÞÎ%õ$C»¢î8ÉÇjýŠÑtû+8\"AnŠB†lr:üWÅ|T-Øûœ~á?RùÓí«-ìeÐHc×Þ©Ü¬SBýœ/©à{×M¯”§_9f`{\næ®f77ÉhÑ•Ž8Þ¿4§xË™GN|¤LñÆWóLm·ýÐ}=ªÒÇ4Ê·q¹ò±µAöëùS&ŠÒÕÚ0ßƒÀàTöÖMåIr°–·\'$/Sï]1«-Ù¯%õ1nã{Çh<£;Ê1ùÕûKÓ¡0$†w•‹³^üô¦E:™¤Hç’Ô\Z•®˜:=¼‚DÏïAïŽÂªUXãJæäb7E‘%kwdŠih&gC	n¿{ ÷ª	n[t“¿“8ÇËÔýZ²Ú„ðºÚN q×ëïŠâ–÷*Tî¹YbIá’K}Ò<_)÷5‘kÃ	%©ˆ6\0ªÌ7³A!þÏ„n˜ü¸éïZ2˜RàA)(×=8Í)b$´9%„îX‚/\"H·ÜÇÆ#Û§msþ~NÓàù¬ èÎ^áJÆ2£–=9«ñZ †+…9i\\äœW8òÉ´jE-«5Ðy&,6äc½^Ei62©¹^zNŽXbØ¨¸ôŸ=Ô1°Þ6y‹ËzzºsKrùz™·;EÊ£>É8ÚÞþÕfXçÕ¢báF_>½xª·q[êJIµ rwŽ§Ú¦±WjÄÃ’oZô)é¨:fTºuÌ¾uÝ»‡‘ÏFéžõkE³º¸yî$¸;Uvm=ãZåšÐËºÌüž1QGv‡Z§”¬H<q]N­µ´¢ y\'Ê&{šÊ}°IªÂ8¥`3Ñ½jÔæW#—1ƒÒ’R²ßIiÊÂ—íÈþ+Ï©U±°‚ÝžhÏ›²\\`ÿ\0Z¾»Ï1®HNO¨<‘Âª©æ…ÜnõVÞ8mœn”³.pÆ±r%ˆ³ÎÒl0WÔÑ=Ì±n\0~Z¿›ö¥%Æ[8?Ý©ÖTx¤åÎ7w5p—CH3š1««)>Qea“ï_ü]?¹¸ŠiHŠÝˆÈìsýkìÛÙà[yß¹ž}+àßŒº¼’Cxbƒ{½À;OSÖ½¬’Mâ ¼ÎiË.ÇÆzýÀûk=›p9þWÍß›Ï¸Œ³(u9p½½+è½V›‡Ð„\r“Å|µñ–;¨áF-7%ÏÖ¿ª²çj1‹èÃó_Þâ\'V+wsË\'ÙdRv“Þ£7oòÃëŠ°Å#lHøÏ=ê—t¢A_¥z\n7<¾[\Z-Ø’JûØšU‘_\nlçš‚&r	oF®2 Uy­7_ ¤”ÚdmÝ€ô§ˆžß³Ì2Žé`Ficf9…k:¾	=j%ätÁisÐü¦ÊdQ+mFPß}û>èòß|døkcjÎ®þ-²–\'Œd£¬ƒWÊß|»¹ÒÕÌ&2 á#¹ö¯ÐØŸÃ×Ú§íá¥«]Ûé×M<®7\nTß—*8¬uêV:”\\ý.x.Õ¤ðõƒ¡”ùQÆ®²õÞ¨3^£¦ùÜ´ð!ynU#-Ž˜õöÀiqÜizM’¾du†=Èwr~¦»m\"ì›¨äxÌz`ÖGÏÉjKñQðKÙ²‚.®â©ù‡óÅ|‘<Â‘QÜIÀ#–#®+í?Š>¤Ak}¦‰ ¸ûí\'Jà‚¿­|³<pÝ»B B&A#•ú\ZøÌÑÿ\0´HõðNÔÕŽ2×ÅW’Ánå—ÜsŸjÛµñ0Z¢\\Èf¸ÉŽ0QÕ|*ó;E\0T#$qÏ\\×>¾™Ø*<N/ÓÀ9îw¶W‘êÃq\0ýçñžâ˜ú-œÒ¼?kâLÔãÐt®F!{o+DòŒÄÃoµHÚ­úKñB¤€äûzÕs38\\Þ´µŽf´n&bÙ|òOr9ëYóøNþÌŠ€+¨8y­\r3^TdmFaåÉ)b½Nãß5×Çâ]2æ€gqïü85¤e}Í¯¹åÁ­i0N°Ú™Vb8jØë:£@`–!†@ûG9oS^©h¶$ÏÊŽ0äñS®‡b—7¾dY¦pU‡sõ©”µ$ç´Ú<°Û	ÈÂºX¼L÷÷°;\"¥´	³hêß­G\'…­üŒÛ\"Û˜ÈÜÊN}«\n]æÕËBL‹ž}Z‡P¸ÎÛ’ú®œÑ¬Q\ré7\r‚3¥f]Øi×%DlX*F:­yí¦³o¨a-åŠd£ gÜw­ÛKëØ‘7³K&ìñÓ&±4ÝÙ2ÕÜÑmä$r”Büb›wouk*$qÜì¦jõ¶¦cMÓ\"ÂêÄîç-Ÿð®ŸM¾¶¼€<ù!fÀYyõúV.š3ŠêgÙë,,!p,›\\ú‘ÁýkfÛZwHÈ“÷{‰½kHhö·Ö±Œ¬¬%Â²·ÝÇo¥Um;©Î\nGn£ˆ¿Æš)ÄÒ‹XIÿ\0ytøä.}\0¢I\"šëÍ´h?ÅXSèw©*Io\"ù88yâªOý¡k<PBIFuè\rl¤–¨å©Nç{FêÈN$”‘º¡m:Ù¦˜OiP–þ3í\\¬\ZÒº8|Âºn&\nÒ³8ž~j#$\\$Ñ‰q Â‘ÌÅC¾üˆÇjÏ¼°»0À‘©óQÉW;MwP\\éÓZÍ3\\®T³ûÂ¦7Æ. rËÀÚÝTñ©jû{Wku`×QDí9?4„«‡ÄÙ~X†€Ä»7 çüú×s}¦¤±À×VââPÙU\r‚sëíøuïYÒè6ÓDð<k±òJvç¨¥\ZZ™ÊZŸã;[ç*ìGìç¿ ­7^·‘§ò®G•°,˜=uÍyE×…–+Èã·‘¡h™Š/¯E Þ[0H¤‘Œ²(à\nì‹hÂ/±ìV·öÒ4Ú|6Àì˜ÏLôãÞµîb³¹·†)bËùà?û¾ÕäÐjgK¸hÉ0Í\Zä>ö}jsâ]WíI3/›ÁF^gòçô­%W¹¼eÜôÍ	#Ûgp8a <Šç\'Òœ½ºÆà–•Ðäß~kVÓÄm*$·W!rŽ‹=ªÜ²/š IýÃê{×,¥sNdspi÷Q¼žh\nÄmã¡\'°¦Gy¨ÛÜ%ªÀRØ‚rˆÿ\0:ím5?’e¸³]¶£ç§áVg°·+HjÇ?LÔ˜œå–¸‘ÎËuy†ÖíŽõÑ¶¯êŒbH‰ÉÏ¥dÞh+pKv$À¥²1óJã®lµH‘àÝ-šE>óå’<Üý:Ö”ÀôY †ú?*!öA/Ë!ÏoZ›(|ÈïYFÀÇ©^Õçw:–¡hUæ,îà`¦£¸×oaØÒÂË*bÎ)J¡\\Ìïî~Ìðu·c°¤Ž3õ®{SÐl¤dxÕŠ“¸ƒÁÉëëN´ÔÓPž)eˆ	%@ /85´%†åãó.>@\0\'ñPª¶Í•IÔšçÉxËO©,ŸÝ€}³ÇåP¬ZÝ¶d{/*Ýµ³œ^¯d‘¬r£lpD\rì)ŒË{äÆÖÅ#”v#­tÓ™.¬ºžO/ˆÞC<$ª08=³[Öž\'˜Ú\'+;·#w\\ÿ\0ZÜÔ4\r8>n€àcÔ7¦kŸÂþL²Î§ý°v¯9c[ÎµÖ¦J=Ž…µ¤ÝD7nŒuõõ®ÚÆöIì$y +¶!…Xzþ5ãSésÛÊ©÷q’:U_¶ÞÚBñ.é­ÕJ‘Ü×IßAj™ëSßA¨$1_…¹KF&Ë,úV]ö‘³)QÁ	Üíï\\N•âˆÈ†D\n°±#ðçñéZ«â}&âédµ¸˜É{ƒ‘±H<õù¨nû‰\"+ï‡Éoiy-¬‹Üö®ÊÀŽ™Ïzâ­´D\'yäòM¬[ŽP;W¹ÜH\'ºD7!â*>pzñO:rD ¿Ùõ©jû”|ùmâ-NØÅi°6lç`åyçÚºsã!-ÒÝOIr‘uN¤üñ^™.ax²=Ý¶ýèT‘÷—>•ÎËá\r\r„E’k‘åù’s~1UmL§.¦xšÒöV„\\±rLmÁn>•ÖE¨ZÝˆíL{ÄˆÔÿ\0ÑŸÏç^\rD†ÒKY¤ínË=}øéYÚ­¶½¡ÁöÒÓÛ:Ëû¦9åØu¼Vê£ÜZ½|imk6¢ÒÚ¤J6vrJäíÑü©WfòÀÞ®	îîæ[›èÉó8féš¶±Ilæ4mË€ÃÁ¯æ¯³ITÇ:Kd’ûŸùŸÐ~å*8ÖêÛf4vs[)•æY˜óòvúç®ÌcJÁÁeNj[–xro—8Á÷ªÑyH¡-ö.îÇÝÞ•ù\\§ÊÒîUž™ÉRaØzuRj{{˜­­Ö0¦IÂá:€i‘Ø#<K%ÙŽÙ¥Üížpk[Áms$XdSå¹êA®*õ¹®˜1·’Z¬¤r\'\0˜ëÒ¢kT•PFpb9U=ô¤š”(|´|LÔ<1ÌŠÊ%hÀ^Œ+=,l¶ÐÎ‘Q#T\'tÉ)ãÐVMÔ—;”[¹yHÊïs[q,3ÂÌÃ8=È¢æd³EVûîx­¥&Õ™¼bÌ{›i–Þ9Ba]‡Ê¿Â{ûÒÙDËt’9%ƒŽ§è*òÝ;ÂÁ£Ÿ {\nž[Y-¤†åH*#ëžC±~\rBƒ\"›\ZÄÄ\rÙæ©ý£Êic ’ˆG\0ŸzT¼g)þè±ÏÍQh¥Øù‚wŽB[#íYK%N†(«óUdX–ýñŠÓŠÕàDI$Ú{‚±c¸N>R²;+YîßÍf—äxcÎ+±$R[iZgwo%r@Í_ó~Û#Û°ù#\0`ôÅ$Q¼‘³;î‰ úŠµGa1&æn3é]4§%©jE(¬öÌNæ!¹Ó5¢Ö…­|¶Ož\nÿ\0QQ	g1ÉÍÿ\0s>µvÇíK%ÄÓFªŠƒ9Ýøz×]\\eIünæ±­%¢2îmBù»¢…$}ê­wgo5½µÊ9i\\äc¶=k¤da.ÛÌŽCòä÷=…6TµHÀÈ³ûÀŠQõdÊrz³µ°û¢ÇÈÉ9üjËÙ¬Ûòü VÃD²#G¸ª“ò°íP¬’bç|›@Bœî®ÿ\0¬Ka:ò(ËÇ°_–t:\\ŠÏ<Nc.cO4å½A®ƒìÈÿ\0g”…ÝŸ|Ó®RŽåxÁ=ÿ\0\nÊ·,ÝäsÕ—6æSi¤ÄB§ír[ê*C¥ÑvlXþÿ\0¸5¥kèI na»ê*µÌ’üî£$6ÖÏJºT\"ÑœRNå…·…¦ŒY&Ø\rÓš’Vº¶¬“¬LË¸Ï–zÆ<ÕŒ3áXöê+âãÊ™¢ÉiÜn…a‰‡2I”	müÄ+#îGrr;úqÖ›±‚àÊ¡ÒÀÿ\0lcùþtËSqu™„*›={ÖŸÎR¹R\"zþ5Ë:j÷gS­e¡t€ë²Ú|áOñÒCm.ž†agÜ?ÙÍt³¹XvÂBÓîi$MlÈì%›i š®VÎ*•/©†/¤µg)9ØëÀ#•?áÞªyÒs3ïIŠµòI#Cgf#ÞÀçŠmœP^Ú<œ˜Y¶;öÏµfè©@!0³d¸67t¬Ö¶y¥ÈVHç¹ô­»kycƒrçöj”É2Ý!òþVÀaèk7KA¹Žˆ*¿<õ¦Ï:FbÉ-.3Ç ª×0L³!…œãÐ}iñÇµçšqÁ@NzqþF„or½¡¤º„„Ff™Uº.î?úÕEÌŒäÇ\"ÀÎIÿ\0\Z$ò®|/’qœ÷ªò„@å-¾8ò+Õ¥^Q\\¦>É6îXd‚\rŽó7˜$Ü0:\Z‚þ%Ô|—îDf$ýk_	]„ÒŸ!$8céQ‰ü×/h7BŒ:ñœÕJ§6çM(òèrƒ€K&ì=«Cä*$aû¸›q>Ÿ…ei;@ðCn¾X˜¶@çuÞ)\\m%Ï5‘»+@à>7œHXw¥Ž`—!2Ldz}ÓR¸ŽYœ\0;V¬¶òÅ—ùŸwB+Ç˜â¯b´ˆ²Bï ,Êr1ÛëTZ0auPyù±ï[ev»–Ï’SÍgy¶ëpÊ(•On2+xG©ÇR™ÌIkæ¡ Âs××Ö¼¯]øaá\r`O­áø®å–Fuç÷oÙ‡¸¯}Ž%e™ÏÌ¬˜ìk.kfË²ñƒï^Æ,=ER›Ôå«…SøÎÿ\0þÆµë}VÚîÕ¯cb¨„°þØÏû]ÿ\0\nøOÆßðNÏØ^ZCá­NÓ[ÒõcçÌJ4OÝÇÍœP>•ûÜºW3²\0O(•cXÏ¢G\n¼Iæ«¹Ê?ðjý$ñ7º¤ÓO£_ågøžn#$£Q¾xÞçóãŸØ¿âÿ\0ƒ]æ¿ðúêÅ+ˆçµ‘ð2pÎdzšð½gáÞ±§Z½åå¤°¯˜c,q€Êz{Šþ¸®ü3§Ì·wPÇµç9ÿ\0\Zñ?\ZþÍ¿üP¾£á;3¶1º$k´/P@Æ2+õL§ÇJRŸ.*6^ZŸ.\0¤åh½åb=%\"’_LÔqY½¼l7Hz\nþüyÿ\0ñð´°ÝxWW‡@’+?-#–3ˆHôÁ9èµð—Ž`‰vŸm]WP¶K–Ùµ¶ÈÊ;í#w`\ZýânS‰K–¥›ï¡ó9Ÿb)Iª^ôV¿×Có¢ygž\'[w¢ãi=qSéz¶¡kå´glÐ6Dž•ê¾\'øñ;@¸KwðF¡å4†2Â\'à_—¯×æWZ|š|“Aå˜Þ+\"‘Ê‘ë_eN¼+CžéŸ\rŠÃJpš³Fö™ãísFº{‹öY§ÊÉŒe‡å_tü!ÿ\0‚™þÖ_.¬fð¯ÅÍi¬í£U0K2ìP§ŒÐ{ŠüÚšà,È™%EP–îææ	ÌhQ1Ï°ª4õ<Ê´SÔþ§~ÁÁ¿¢-¾.iPüFÓ¾ÍvÌ%Øñ\0>v\r	„~5ú«ð·þ;û.ø¿D’ë_ñ5Ç†üK˜ÓÈ»„”ºd‡Ï½>•üY]Ý[\"2NpªÖ·—ÆÃmœ¤‘¸±\\ü§=kÎ–\ZÍ´yËù9¹zŸé¡ðÓöŒðWÄô7:Ò5ql®¥$UXôÆO©\'Ò¾„}^ÇM²†âóQµ‹sÊ$_œœq_åÿ\0ð×ö…ø“ðÞñï¼\rãßÉqû¹M›`L£¡ ädvé_¤ÿ\0	ÿ\0à±ßµoÃ‹m+K¸ñGü\'ú>xe¸¶Õ‚î»^>PUT\\O½B¡+“õY­ï}jÆê[w´º_=&$íôþ\\þ5›«xÃž%Ýˆôû]zÑ†ÒŒr$Ü0C`þ•üÈ|4ÿ\0‚ìü:ÒôÅÑüiàX¬®ÌÉ-Â™Lq4Ýv`³nOwÁ¯¥¾ÁC|ñP»¹ð×Ä‰uX\'C<)ä„òØŽd@VDÇLqÇñW](É£ž­F¾#ô¯â?ìû*|Mó\\ø]i£?˜Î\r¯³êÔ×åÇø7×à7Œ§mÀ:·Ù<I©M ÚÊ\"KUr›Ir­×ºsé_¥?¿jßíí>êmgL-œ¡|Ø]LrÎ<²Ò1#¹èE}c¢øŸCÔ\'†{kÑ}¢?Èx0Îé‘[ª–4Ž+¹üC|nÿ\0‚~Ô\r K¿†Þg}IáÒŸ,¡Ñ1ŸcŸ­|)©þÆßµg…õ[ÝRøG~/ô¶E* îfn0•Iüõþ’±ëKl™öF¤þï³Cìk–Öl<ã·Ÿ_ð¥®¥4ÊLÑñŽ™0r;ƒï]ñ©ho\ZéŸç	ã¯Ø—öŒ·ÑìõCáü×6rLQ£¶pÒDÃ®äÀoÐ×#áŸØö™ñRÅq¦|:½¶Šy6¯ÛÆ\'\0’Gß¦;×úøóö_øc®Û,z7šyFøIÞ“Ü–É÷ÆûÕòGŒÿ\0b/èócÁZì:Å£nÙHrÄ(;Š7aÙqzéŽ;±¼1Vw?1ÿ\0°ý¦ì ¸Ò¬žI\"ÞÍ¡ÄgÓäßþ>Õ£¦~Áß´Þ§-×c´´ÑÚâââ]¢@£$Æ¤nlaž•ý2x—Àß<f‹Ä\ZöŸmå—iŠ7”\0í»\0dqÅ|›ûF|QºðgÃKVµ¸h.£µ’Ü¹/#}Ñ´ö=úqšÕæ6^öÇ±„ÌëNJœ#vÏÀ-^Ñô”]&ëþ>l›PMs\rt\"T,ø|ðßÝÿ\0ëÖÖ½xooÍõä%ìòìzêMV[8®Bª$\\û×æøÊÎNÝÙ\'ZRI2ç›yQ0;ZSŒ¯SF«\"G³þbÝ&˜Îš~Á1ß‚psÈ¬‹»Ã1§*Í¿ZÂUÙ…J³–åÏ\"a”«:÷ëŠÏ·kk8¤ä ,wÞ›=Üqykt¥ÎÂ9ííô¬¨ œÏ½HHØä¯­ªå£\"šÖæº›uMðÌ|æbÙn1UÖ	™™Ã£¹$zY/%¼vgc{tÚ„xïYéz \nÜ÷ª\\´+ë\nž¯©jìF\"ƒ1Ëp~ÿ\0ð¨õ5j&XÔnÃ4‡z\nÏºw¸¡LJ§9þñ­-9 ŸÉ[•>rIÇ¡®©NN¬ðq˜(U¬ç§aàÿ\0Xø£XÓôBYÛT½DdS‚ÉÕ¹9çn{WÓŸ¶‰æÓì|%àèâo/EÒáHe?òÎ ›V0>ƒ&¨~Î	¶Õ¼RÞ%1Jéá˜¼öhˆÄgœ1Ï^†¾{ý¢¼cÿ\0	?‹|Kz/d»–	Š$Ž0²Îôtâ¢ŽÊJH¬Ë\Z5Œ¯d|ã[ñ¨nD:7ë^¥û*ø\rüiñoÀº0Ô$Óïo|@’\'–lÛüàñÎ;×^Ou4ÅÝ	ß!?S_®?ðL…w÷¾4Õþ$Ìi\ZÖÐ8v÷‘pWqázòG8…}•rÃ•t>S%g\'ØýÏøw Zèz¾‰j¹³Ó,PDWøGN+Ø´«†¶…\0G ç¯5Àx~ÎêÖÖ9%˜q\0\rƒÇÓð®¦-I‹By~XáÇVÿ\0ë\näå¹ñ	BÚÜ2$è·ó<lG…Isòœ’¡Bd.z)®bÚæá¤wØ#‰8Nõ½c©­É$9À*Aô¬ý‡fe(EîmÛGä´[áp€û(ªò:©*¢S·’—¨kæÊãÐV¬S<p”(\\²a³ü5Œè¤i\ZQOBõ½ÛÞCòÂ|ëeÂ“üF¶­oXJ»m¸XñŽÀ×7mÊå	1£œqÚ¶m>Ì®ä>Í£$½ròØë.üÛ˜™ºùZIU¾pÃUYžS‚Õ2;‘UŒÞRH¶í4•É3O™­†§cN98¶;3(l¯Ö­.¡sp3ùk	Í%Œ‰¬1HJË$‡ yü;Sæ´2< 0ÁÇ±©u¯¹\\ï¨Û‡*ë$HdG$dõ–›Öf±.`ÕÍ«\Z…-ç;*\0rNÜg€3¯Níx^m¾cã>¸¤ê]ê)Jæå¤òy®÷*#É;@=?ýtûÅ0¾ÔßGz‰¢K¨™K	g*Oj©,WJ‘&á$E€988­\'šÇAá’(ZI?îÿ\0$òCpÄÚÊƒ µb­˜·I¼ù•d\0g=5rÊi-ogÌHÏ³\nÆRw»=ÍDkUˆ(¿Ÿ—û§Þ«Åqpì…ÕÎ¨f	 »–âFEV\nO=ù¢`ÖH×Ëe \r¾¾µ“•‰”nYŠxc\r2ñ.pÍü&® ¸užwTx‚¦Ã“œrOù5Vçìïk´N®ç’GLÕ›O9!¨Ê¶2	â¥O¸£Z\\º£Ë$&W€Õ§m/ÚGRÈÙýš«ªY0©’\n÷?…Ko\'”f½1ëRÙi–§\" C¢5Ü	î*w¸!‚/\'ÎÞÙnùúVHu9Ë¹iŠ\"G€rÄþ|þ5¯rÖFá¡Š6‚Xc›±#¨®¸iª&reãä²)aÀ\\{­U´_ô¢Îv«ÆQ}øTl³È†5ilc\'\0ûýjâ¶Äò‹¶Ä¡³ëVs¹;Ë»l\rp]â8Í=#ŸÈf`ØÁçüšÏ†m’+É°0bX¸=…iÇ\'™ }¡\"B@=êcžS¶¤¤xÐu†F*£#}*öÖh‘þxØêiŽÏ#K8>¸¨¢{”ó!Ý¼ã=n¢sÎµÍ2É,1ÚäÂ¬ÀöÏzÚÓQac(hã@A=ó×üæ¹¨÷Î‚à¾É#\'²ÖœW!Bb0J¬G´/Fù¥º´3-ªÀ¤1^Lƒ=j³h\"½‘Cûå1ME	\rz¯0Ù²\nût­;rÅ¤32–/€ËßjÞ¤ÊWÜµ+È¶æÇsÙ«ZrÍoæYd]Éx\\ÿ\0Ôâ„±ži|¨ØotÜIè+m’Ñ\Zço!FìqSìÌ*E	f™wx“÷/Ö?ß±­Hvy­\ZîhÆ>SÐçëUÙ6ºº6\"nm¥rJèª1ž2:×DbÑÍcZ9!†5¦ó	É#€~µ±imk+Ä×+óBÁ=Ç§áXÖ2Á\"I\nÆ]Á ú\ZÜ¶mPë…RqíŠèú5c¦ò•Œ-ŒÊY°OðñÚ¦\r¼›ä\\¾ÌûœUx$óG›\\ è;ã¯ã[×–1²[Ï“$Ž\0¿?á[)K—”N£ååèmØ™¦<ƒœu®›MFóy±•Ys×\"±ô»wÊ#à`’Ã½tö±¼“”Eùw~ƒú\ZÚ”lgZwV7¬‰W,{Ðø\néìd”‘•åp29éé\\Ìt€K:Hƒå `õãÖ»­2ªHŠÇ’[ÌÇéí^Í$yÕ$tV~íFÿ\0Ûò®ÃJ±¸ˆ€X©|~U‘cm(NÀÒ>èk©…<¹ÄŠŸ¼Ï í]tÎînÛYI-È¨m©0õú\ném-BOæKôuÇ=ª*6ÙûÃ¸¦N=+poeÊ¯9â´¹tàU[hd•C1ÚŒH¯²H|ŽFê­§Ìì%]¬§·z¿BgmÏåÈIÆ;{ÔÍè{¸Z‹kgKæ ùŠ…9ô«”€m\0ÔµÏ=¢¥QX¶\n(¢€\n(¢€\n(¢€\",ŠÈz\ZÂ¹Ò YBÏ´’NÑÐÿ\0õë ¦°-‘ž1[Ó«ÊrWÃsî~]ÜÝ[LÃím<1 #ÒIVÙv±Þ@äs‘ÛÉr\'\0™ÝžœÓÅ·Ù¤ŽÚLˆØƒŸc_’ªHõªJÆÜ:›µd‹ÌPÜÚ¬\"Á?žÒ’!Q×¸®u£08Û)ÜÌxíQ[\\‰à%‡˜Nìw>µirwWgU¼P:‘ßs­HúWšHíß$îÿ\0•Hjž—d„¶‰rýÀVÏö‹ìhgq\"ã¯p*­¥ÊÉµ„:„†$ÎÂåsýÜSåÒ³™_ÞB~F­hœ&é‚m„Ë×ÜÖë[-Í¸T>SÊ§nzïMÞ×:c+2Ø‘™‰ù\0ù˜ôƒ<SCq?ÙÔÜ×5é‚Å­”G:«æ>@åsY‘!œÙìØ œ95DlÏ>H§™™öyEr:µl[ÍwjìdB_½q]+iíöó,pl…F\nâÇëT%´k·º”P¤ü¿Êª;“8Çs9nÛÌÞX<»÷ã9ÛŸÖ¯[ê‘Á1YT™¦jÁ’ÒHˆÁÜò*½Ç™qäÏjªY’	éô§4`ÏDŽñnÕ\"t	€9õ5ZéVÔiÏ™À®M§ºX¡h˜, üØéõ§É«ÜR·#¿Ã«{Ô¤™n+æ¹wO,2	Êÿ\0Ãñ«&È­Ü’S¨#ñ¬Ø\Z)dIÔgàûæº{xQ¢y‹?–pTw1‰w£I02™ŒO;}ëŸ—O™òáÝ…v\r,·1ˆ#\\`žWÒ±Ý,ò-Üaáv;qÈP=khS5Œ‘ùóûeÛÞŸEpdcÜów\":ð£¨`Oå_ÊßÅ›ÿ\0¶x³Ä6R[,YxŠö Sø•$*yêQ_¶¹Ã!ï¤Kk;]M&ûB¶Z(H;°1×‚:9¯åCâ©s¨ø†îæÊHT™ž²€ÄøÔâ¨¯ewÜûî\rtÔ¥\'¿èy>¬uXÂ¾`*sÒ³$/K@ªË2}ÕoSÜ×Rú‚ZÏreUIvî\\ôb{}köú	U¼È—{s“ï_)*îö?Ku!Õ™Ö—©-¬–®|É‡¯sšè´ÉôË;k†kr%Ûøq1¬qNïÛ¼–ÏjÑûTGd·ùÎ\n;‘ÜÖn­Ìý¼.É\Z8%º™ä…U¹aŽÕMðy\n›\'?ÅY O=ã4n<‚Àî>•­*Z±ÂBc›Ö‡n¦q­tâŠñÈâë” zû{ÖûH¶ÈÒ·˜ŠÇ?v£ŽÙAŒùŒ§©ª×\rqyû–8úÓŠ7(ÁÄÊ¸É$É»x®xÜÍ,Ó‚Ù‰Â®É¼Ïöw¼¨e9ÏCM¸w}é\n„ò2}+¾ŒYçâ*;‘GóïE$|U‹Ö•¢Iƒ9UõÏµU»/i$–Nõ^yîf†>tD\rwÅèy‘=´´²3®%+À=êÔP-È*#É¶—#ýœÖ Ë‰žo.7Ú9“XrbwòcË;ÙïŠ™¶mJª›$¸Žx[&|9n3ïIÌ±N)W`x*8Ï½V¾‘Ÿìò4ŠÒFû€\'½&çeû™V8À¬*\\êu4|Ùg{‰î°ë&\0ö«{y‚˜0#RKc½Y¶#…¬™7\'$Ÿ­g$qEæ—fùI?Z˜ÆæoÐfÁfºˆ™e•Øz}k>hæ¾Š%’æ‡$H{VŒ‘Ê›^DÚ„ƒÍ=Ù°ñòÙO—=keÔ™ÎEUSfnYgî{U?:ÇyÒ±·žÕ5´qÊ²KyÒ6AÏEÅE!x¶íM¹pN;Ö±i3’s–æ.Ì«$›rp‹íTm–â9î#”‰°§™®ºO²<Ñ»›`PqÞ²¥®®†Æ)\nŸ™Ïp+Ö§ŠoK²Mu2o%Á\02ãŠ#´·¶F¸EÜø¯aíPÜÆ¢W[XœŽ•“…|õe†hí]\Z³’S±z›FŽOµAåäçµÇO’iJËå·WÐVï$æ,\\à·SU HþÑ#H€©RTbbæÈ|èÑíÝ,c­Mæ³7úæY£\\Ž+VÞ,0h¡ÁÎN{šÌÉ¾–IP²KÀÇ85º‘ƒÉ–o*;Ëî$1ô©í¾ÒÈešl¡pœäõêvG¹f!ÖP@SKå4®»]•™Båv­)Å-—²åZõ;»y$\07VÏj ±#‡˜¦\0ý1YzŒQÛM#Èv¹b>µjÊýZÙá•Rx>ÕßMYò«m¢~À³øŽÖmù‚POb¼×ë‡–ÐZÚEˆg¨áŽ+òçö]ÓVóÅÒOh‹L·’gÞ2¸\'{‚~•ú££Û[Meù~l3ÇŒ…~â=U}Ÿd}ç;á“~f³­Ä…¦b¬ŒÛFOLV3YÎo–íHDHðÅ»f®µ›Ã10»·‚ÀóúSšÚiG˜¬<²ü)þ#_ë­ Œ™Ì]Ivg{s	™·pTñ]SYÛ”`dNTô³Æ°dù•ˆzç5NëÎ[c<Ë·l˜¹5^ÖêÈëŒŒ’>Í¨BÐÚ\"Ip¤»¸íZþ\\1l ùÎGzÌ…dò\ZiäPÅÉ{\nî#³CºÊÊ‰:‚»»’**L»²‚¼­²¢qJ7÷\rRÔï­¦H™£o·‰ÜGß\"´\"Kˆ<Ô”	!WÈÅBòZÉt±„ê{×5J¢ ÓÙ&‰\"*DÐ@ì¹­Œïi¤Aæ.*Ë[¹ŠAj|©0X{ÕD¾e½»;˜Ã½c{êRÚ±|‰¼ÕqíZ¼blìˆ DO@;šË­g{5ÃnxösŽæ­ØÌÒùåyÎ\nÕÆ0b¾Û4kÙÕç_3hDêÆ´#™ïÄhñ}ÌYÁ9Á58„E%9vn3ü>õ‹\'ÚÖð[¼ƒç~ðÿ\0ÿ\0Z¢TP_¡m5´ÆYSiYöo¥^±º¼{‰2íYÊ²ŽqWQ¼¼ÁqyXçÓÔU	ÂöE¸lõÅlë=¯µ{2ÅôÎ¨6™ŽA\'±©të)V52ÌÈŠÝmmß{y­´Î¢Ò¯KI!‘>bN?•)Tl­¥ÖäÆ\"L$¤éTÒp\'hd\\9àIýïj›ío4ØnhÁuaþ5LEàÉ>Ù\\eG¥e)1É\Z,•¡uÎ3éP3¬OåczÆN94¶ÆéívHØ`Hü3R¨’ÝÖ@»×nw7­\"Ì§Ð±ardpUü¬vÅk¹Œ´žc.Ð£$õ\0ÖÕ¤±Èé&fï¢ƒÆjAæII(ÀgÞª1].¤z¢ÛEcz×hRÁ¹aüGÛÜWæÇÆ-M¢¼»1(qs!EìƒkôSÄr½æƒ©Yí1››vŽ?öHéšüÁñÝå¨žââõ¾xäaÏ|W»ÃØiO¹ì*µ¹`ÛÐùÒòVk+É¼à\"O3xþè¯òoŠ\\Ýß·rvHq»¸¯§5.¹£“Ú™Á5òç‰®R{ù¢‰±åŒ}+ú²…>XÙ‰Õ«}NNp\'i$eè8>•Ëï„\Z­*Ì_ÊG;œöïW¢óY–”u®øœSëˆþPcn†ÁX|cê)/6 ÄoóÛœÔ‹0+Ê6=6Ìbõ\Z“²>QF@È±­uºó ,ëûüð+.Ø<AäÆïO­Y¤i’GÅÍ`uS=§À>zZº°ýî	L{õÍ~¦ÿ\0Á64IµŸŽ\Z®´¨é†<0É#GºK—ùI\'²íçÕù…á˜Zto!å·zWí7üD´¶ºñÞºd”j¥¬qãäŸË!Ùº†\0zçÔTÏbkEÚçî¥„7	(YDQ²¿ÿ\0¬×m ZÅy²æE¸òO¸›‚ö®¥vÄÁwêØ¯CðŒß:0Vhóå¸ïžÔWVyåßµ{ãsk¦Ã\'Ú\\`üÌpr:“é^&¥qg$äo’yá¿­}ñB+	/(B}­ \\î¸<þâš–‚·VP¬²”»$6ÐzgÒ¾+Ö‘ëÐøÌÉâ»[Èðd6¿7ºæ·´Ýn³û=ó	îcRD£«ŽÞÜWþŽÓ~ÙŒ·~qÞ­¶\'íOæF€ã…rI»Ó7–Î†kÈÐHG,z“WWHAòŽ^^@=Ø××÷šff%ãD;[ë¬°Öï x\nœäñÖ”Ù\n:Ö<<°<\03üØ8èµ•.}3éàf\"¿{øòyÇ^~¼Waÿ\0	žUvÉëÞ´\ZúÖécùRè\0íU ™È[jº¥œ»eMÉ´qé]\'‡ü`²¼éu#>Çã#aô­{hìo|ËULs©Ûµ]—Â6HðªÃ¶õˆbõÁíŽ”îE ëv·0Ü,§_âÐAy¥ÞŒŠSn3žEy¢øn{y£o8ªFç8î=ë\nâÏV¶¿bšÙ_r²{Ö.DI6zÍ¼k,óÅŸ%NF{óÞœú4²Å\ZyIK¿ÃŸLçŠá,µBÝd!‰œt º¨<Q4)žI.y<rsïéÆ—´¹”¹¬ž’tÌLKnù‰¿ÿ\0\\ÖEå¶±mŠÞ’V#Üã§<ãñ®Øk0ÜZÆé\'”T`{šÔŽÿ\0N¸†9¥Ý=²W\\Q“<ÎÃP×l£•î-LŽ1”C…_§ç]™âÛøne~Ldõ•ÓIok>é!%•Ï\0ÖdþÓ§	4<2³’ÃŒbª1¸›×rK_&§raü…Û§®}+¤íré$K,rG‚½sPxr(Nè-ÃÉ\"s*÷Ç¯Ò«6›¨´ÑÈ.î¤#ƒ÷¾µN6Z”tWVvª#¹$g¨ªòhÉq±æi\0çX—“ê²©S¹vƒ³Ÿ—Ðf­¿‰R	á±‘üã¹U	ô?¥JÜ¸Å®ŸvFWù`V`:Çõ5›§¬Úi£9ó_ä	Çóé]¬^È+r×k€Of=°=i÷öðN°KÂF–R›Wøqï[¥ÐÑ-,ÊQx©Ú×z\"Î‚Ò0õÁ©­µØ.¶ÌÈ<®qÉüè—@XmÙ£Q¶lå1××ó®_ûQŠØ+Ú2 v €vŸ¡5ª‹&I‡ºuâ³ Y¯Puîƒü+^ÁGÙÝ]79n®+ÇãƒY³{ˆÕ¤†	mŠ•AËn÷ÿ\0ëÖöâMb\ZÖæ2ý¤;páô¬ù™*½Î¹ô˜34›G› 9Èë“RØxzÖâãœ*ºpçõ™ˆ§–áÛ“€îÿ\0×Ú´cÔÑdÁfiiQéïC—pl¯©xJ\'d‰ÜüÑ†p?ýuB=kO\rªn£ í ç\0wúšô	ïæÞ(„1™É8 {}jìq+[ÛÈ¤7œÇ öÇ,gœZßÜ3,’e¿1ž\0¾}kxk±¾ÈgE•‘†î>µkQÒì$‘cdáÏÌ£ ÅTŸÂ±]$WDˆÈÂ0ojÛ:4º¶—N3Bvù B£ÜV-´ù‚æó³Îz=ó\\þ¯g«Y@|¸åy #åÇÍÐŸjÈ†çX…&\"vYpLlÃ;[ééS)X‰Iž’ša“!ã^@Ïð\n†o\n[K\ZÜÂ¦æìåNî7.¥ai>!gDKéš€.ãëß5ÑZë€«´mi@Êîæ¹åP¨¶÷9ÖðuÉi’\r©%Á>¾•^[í>Ü-´eÔ™={WwÌw/åÈV%„\rül=)o\nÊ‚m‘!8²jã.§\\cÐóK=nöÊFódƒŽ…}ë£Å$6fy7ËhÄ&8=s[Sè\Z\\ê®¶þmË S!<‘éé\\½ç„n`Ùyå[<¿_Àþ½tFeÊ\nÇH÷Ðj²6ÂÉj°‡÷É«–óßgœ%‹¢…èpú†‘uj\r°•w9ÄeˆšÅƒS¾Ñ§–ÅãâX3ƒ’\'ó¦ê™»º\nÙýéoò+.k{Ó—l‰•!xÝ\\‹ø¹Ñ—Ï·*ÄHää÷­U×-®$g†vòÎçÀ8Ù#õ57êe+¶dkžƒìÜ#mýÛsŽÛ=ù®&ÇÂÚ„S¬ñ]˜£©Ô·lŽ˜¯oKÛMBÆeUY¡xóÇñÏzl–“Dëê¾c_jc~g‘¤úå”r%ÌísðÊ¬y\0‚¶­ü{¨£%Äî\nŸC“õÉÿ\0\nô	ôk7F¸K}ËŒlô>£½sóøSNÕ?ÔÌÖ[ó£ lúÒ%²;ˆ\Zt·M×mdfÚ°ã\'·éô®Æ;=¤LÊ^N¥OC^[wðÕã¸G±î\Z4Ü|Â\0>ý«>æ~	á··šE˜ï\'¿ÔÓ¹„ž§¸Û+\rDË$þE¼êJªô\rïVu¢éhDÅ\\!yÏÓÞ¾Ä^#ÒšI¤¶–ô<¤Êé÷ÈmãÖºwñóÝÆVîÝ¬ÕP6%‡½!ÆïC._ô›û¨¡@–&6uÔþ5$šzAÜ:·E9üëK»¶òâùY\"yX©é{Ô‘H’\\\\\"6C1ëßü“Äø—‰ÅÎ£îÏëÂ,>’èMv.G\"¢Ok‚÷ÏåÍQŸtP2«‰ºç¸5`ÊÂU·ÜÅ·dŠ‘-ZåÊÝ91ä…Øû×ÈVo›¹^ÆÑ•€`n¤äúÖŒN—; Œ³m|`t$zÓâ·x¤Û!Ì\0qŠÑHcŠÞIB…PÝ»×ãp{Ü­z°²ˆwî¹@»°z/¥bÉÌìðÆFÃƒëV™<ë‰.¤ÎÆŒ\0|zÕ–2¡T‚1´€wù¦©3+U·¹K‡|ÊØØÕ‰)®\nÜ)uVÈ«wbê ïaËz\nªÍ™¤iÆ±ä)þðõ¢Q:iÌcØï—pù6x54öë$fUFÈÉªÆÐÌÊby3qò€;ÖÐµh¡[{–%0Jÿ\0ö÷®yìn¼Ì! š9AÊ²óŽ\Z¨ÆLpÊŒÄîMnÏÙ¢}©\Z\0£·ñýi‘CöøÚA4qG\'\rÕ½…cìï¨Šá£UY‡f#¯sV<§¸¶œí*ˆ\0*$}jœQÛ–(£†ÈÇ¿s[Þ^a>\\¥™3¿Ó5Ñ\Z]Ì‡\nepä¯<þ5j-HÙºùàº\"óÅM{‚D¹VG9Çñ}iÒ@ÊŽV¼‹©š•÷$mN²|ÖÎx$Z°JÊ’6ÌœàVOú;Z•x™Êý­Yc\ZY!,\"ˆ÷`?­.DZ.~ëËPé“æÝ¨¹,I–óŽ*¤w‰ðÈÁùºbž.7™ðˆÊp{(«öch©ÀR¨§\'µN†¬\Z0ªGÞéÑ»´AwÜTW1ìtŠ\"f!†ì{Ö¶³jÂ_2_‘þ^€Ÿàö«7+™šW2nIö¬Ï*ÙO”¬Ø\'z½XâV°Æ6C]tüÌRIf[ˆ’Ø3[Uê*Åå“í]ÄcÎ7P/œ\"ù\Z<àž„Ÿð¨ïÚKŸ!e“>KnÝŽõ×4ÌÙRÖe†K[}Ž 	1Ÿ›ž¿þªMB/>p@AúV„·Éñ²4³¯÷W×ñ¨¥‰.$›lc¦Úå«5c^c6ß6ö¶ècÜŒ»‡­h³Š]×÷²©õæ¤u[p¢\r³¤§i^¸ªÓA´–à¯S^\\äžÂÕì@¶¢ñíáV\'85Bê0<¡åù~caIàÎ®$Ík\"ÉnN7v=ªfÝä5Ó§€ƒóÖ´§%uqJ\r•dÌP½ Q.Ü¿ÂHçóïU­àæ]ÉÛ{\Z\"p¸ÓÖ¬4›fy6¤¤—ø>”Û=­;Hç—ÝÍu$ˆ”\Z,‹uY¤}¡ð;µVš0î¾S‰ÙÅ]šG”T+$móßÚ‘c†ÕVá$ýÿ\0™÷;`T:}XŠ6Ë™D’X÷ªWsAÍ)²å½­\rž`g·]ò»’79ÿ\0\nÌÕlåßà¬‘»m#?wÞ®4Æ¼ÊR+<Ù¦FŠ°åÝ¢á¿Õm#Ÿá­Ä‹P–a”£ò°êÇéU&Ñ¤’ÛmÅËÛ‘(o/³`qžÆ´²¹¬cÔæ\'i÷¢Gmçåçp=jìÿ\0~\rÅbxH8Î¨üjeƒË?ë¼†ìÝ±ïJÚc5Ã$òyêq–=øãW§cQ¸xKŸ|[Ëa{f²àÔ®å=Äe6ž\0ô­«Ë–Ãj’qéYÐ¢åþðÊû[çµW\"ªÍ6åÙC+lBØÁô®¦9]fbpÑ0¸ÿ\0ë×,‚8!¸hÛwqÔVÌK4Á1¿•à.=sB¦‹Üé ¸ó7%Ä„@ŒH_sQËådHs0Ÿn˜÷ªm\0ŒùP*¾AÞÌx\0Tq3¶\"ß€ëž½EZÐÎP%Sö³ûËuD(ì)#ŠPIË£‘×µEsuäDîÀ¨€jœ3bH(Ï&F;æ·r2”Y~O*\')ýû‚séY’iÍpZebC?\'®Óÿ\0×«¬âiYZ\"æ<®jÔÌ!’MÞ_˜)S)8³\ZîÂÞ…ÙK6ùI¬ù£{|—{ŸJÖºûDaW~áÔñUCG§¦go—åmÉå¹ƒ=Œï4wW©]ùçÚ£Õôëµ±©i€@ëø×J¬\ZGÛ…Áõ?zÈ¾¶n»—~@¯V–!	Ò<¿Yðo†µU“KÕ´(õ+ãÛ.üå‡bÁ=ˆ¯›¾ ~Ä¿\n¼am¨­ŽŽ°I4-ÚFà-÷¿yØ\'œÃÚ¾Õ†9.šB‘fUæ¦7(D±¹¯oñ¯¨Ë8Ë‚Ÿ´¡7úv3\"Ã×ƒ§R:3ðÛÇðMOÀ¶²øGZ²¸YîšmnAr	I\'±à\nù#âì«ñGá³É«¢E}” û&ö?ˆ2)öèkúnhêVó•‘Xð}ªº†ƒãI½L–ñGØå€=G®\r}­\Z±ñŠUbŸÎÇÎTðÿ\0ÝÏãÇUðÖ±§j7séòÚ\\ÂÀ´$”ozç.­\r¶ß5~vn8ï_Ôÿ\0ŒeÏ…$Ô.À–¶:ÍñÄ—ñ¨óåÇ«œãØŒ\ZøÇâücM—K½¼ð÷‹ž-JK¿ø÷—caÜ„°íÛë_¬å^-exŠjUeÈú§ßü¼ÏÎñÞâáUª:Ç¡øT“4ohq·©4ùõyüÒ$rËÆ\0ô¯º¼wûücÑ…åÎ™§VÞÕ7cI0WÜlö¾E½ø]ã\rîçÕ|9g¨c!ž] uÆà+ô,s„ÄÇžDþhùœÃ‡±XiZ¬èq·¯vI›([Öº›OxŠÎÆ;k]A¢XáÚ«þÏ¥c\r*âÝ¼£;†áÐ\ZE€¦et;²=ë×ŠGƒ,,^çÒ¿¿k?Úá»ù>ø¯«i–’FŠmË‡‡(r¿»`ËÅ~ªü	ÿ\0‚Ù|aðUî“Œô›o\ZÄ—Ñ·VòšÚ00^%å¸ jü’åbp§ œÖu¬¦{©#1´É‚”£ÐÉà\"ô?´O†Ÿð\\†~5Ô`‹_ŽïE[N;HSB¬Üö(y?E¤Wë7ÁßÚ§áÅ§‚ÛÂ~4´Ôæ¸®%Hð\0\'HgÜëè	>Õþn±ëÚ¢J©ãÃòc\nz]‡<uãÍ\rö“âÝ>îÍƒ[ÍÎ#ŒW2Ái¹Äò›u?ÓsBñŸˆ´èotç\Z€ºfekgó˜¼0$w„íVåÔn-â•žF$·`ùé_ÀÂø*í;ðÞ]),|pÞ\"´°*\rBI“þÒ°9-îAÏzýVø/ÿ\0àº6Ö6Ÿ|,n!qöÛÛi\ZV`~î\"ÂŽß9ç¨«XvŒK©ý:ßk2ê:qƒXd¾·†wh–eÅžàã5üñÿ\0ÁbüSák/GðÞ Ûiz¾¹,ÏsUŒaNã·ý®3Ž™¾¡øwÿ\0_ý—þ*-¥’xå¼#¨Ü2Go©Eö–~~fÜÄ{áX\nü(ÿ\0‚‡ü|·øóñ§Qñ¨‹¯\néZ|VVë‚D‘Ä¬ý¢Çaõ®<ÃJR¹ípôZÆSmõ>Ô)ƒFDˆ`_JÎ±Óoœ™£®ãƒá«w7R:,q6760kWD\"Ü”9IÉÎÓ_w?oŒSF\rÅ”ñIžÆpÍœŸâÇ­Ic\r½Ô“&<‰#ÈéVo®\ZXî€ó\\öB9â¶šO42\0¹$Ç§çYò±òD¡+EsvÐ„ó^Üþõ#ÙË<öŠ€‚xÁëN·±ó®¤¸FêOëU5o-±¶=Ê2=…ŒãšIèRŽêiïM²)Ø~_«\Z·y¥<WI1]Ê @jÜV·‹l—ž@N9”GÒž÷&J™IÉ=Ï­5&pÕ÷3%»Y‚Á\ZïýçSØ×`²[†#[…@pGõ®*ÛOŽÎþníÇÞ½ÃQ-æ«mo2‰ZeHÐ¼ÇúÐæÎyÀûSá,×þ	ø!âÏ\Z\\Û‹{\rFéìau y†(‹±Éàç8ÀÎ\r~güKÖMÜÒÈ\'Þ÷Nîßð#_¢Ÿ|]k£|$ð\'Ãkke±³ðæžnJF>Y¦¹Á‘‰îÙÕù9ã	\'–rÁÎw`{Ù|VÇ‡Šn÷‘ÎªµÝÔV@ýæÉ#°ï_Ó—ìUà9<\rðgÂv»æŠoYE|ñ²í\n\' ó{ž¹ö¯ç§ösðœž<ø·àÏ	5±¼moWXÙW®ÕœSŒzþ«>hwZ.™§éW!¶³Ž.zF#\n¢Žz3ª¢¬|¾w\'È¢\\µµoÚd\'šDd÷R9ÍušzÙH‚)-ÆW¶k”ˆå†-01»UØÕ®#-åùŸÝä8ÿ\0\ZÅNñÐù˜ÅÚÖ:IæØBYÈQwa‰þ1éô­ˆ\"ˆí‘Œàf¹U`@I¸ƒÐö­;\\–D™]²p{‘Cz»:”‹k»³€`g¥nGr«´Hxqœú\Zå®\Zhâˆç,XÇaZöê%0´“l\näŒîÿ\0õV3“êi÷7šñˆœ„=Ï@knÚ{}‘Ü;,Š²œ“Ðb¹†`¨“\\E˜S?Z±:Á-º@–ð0u^íÅ)mvt¥¡Ö\\N‘9YfB8PsøñU‡•.ÉXáIÇ­eÛ·U-·yÑpðR¢Æn¦´ÈÚñ‘ó6“è+6dmÆöÒI‹‰$ŒðÃ¨Í[a4whKP¤“íXÖ³&Ÿt€G„gù½ñZ2^Kpïˆñ\n†®yne&ú—ÌË;¹ûÝíSÇ¦ÊóÃw0K¨ÉôÏëU!’\'ÞLÊ¸ÙéïøÓnfŒÈr”tªŠ¸œ™¦cr$ù‚*1éÞ©Ì&wÂåG~k.ÛÛÛÉvû40Œnë%nI{o12®n&?2ž«Žõ¿+Í)#3–·y¤gøÆ;Zd!uµå—Ž=*¨¶yËH×\r³hl}*híÎÓq¶çEv¬§¡ÌÍ9-¤µIF@~RsÚ¥¯âks,qÎŠ1ÉÁ#·OO¥fµÄñ[ÛùìåU$€{Œ:}+FÜ5ÉW‘IÉýkžIXèZÇ#Z“æ7™ =½kTÜî·óHÚCàc¹ªRíýçÆîÝMB¶ñÊA„0Ørsß5˜‹Ð33Ç#HÆÝ«^ßnæ\0U$Þþ•FÖÍ%VŒ»5£l‹„É ßœqÛ´ K¸¢F…¤Ñ¶ÁÉÚ3×¥\\¹¼ÒÇ¹“ƒÕ‰¦¥.$Žc¼Œ`÷÷ª‘y·ž`£\'/sšê&Z—à¿ƒxŒ3-ý[5«%ÍšÞ¤1äŒÀu\'±¬K[X¡ºl¢BŠTßš¹0·¹¹[¦›!ä7µmÓC’¤¤–†Ä–“Âö‹`#’ JÎ§æ$óëQ[‹Øþi”NªFÌc9HL.C;¯”¯!ükRKƒå„EÙ_½ÜÑc’¤Ù§ó½¬rˆÌWçp=Çùö«Æâk–I\Z\0 t8¬=ñL‹+yžzƒ·ëZñÈËpÑDá£q†^ }=é“kšqGmï8ïiò[9<š“ËŠF\"ÊMå]³÷ÇÓÛê*\r°D†Yäå›W?w\",°9ŸjÊ{™“›hZGA\'	ÎOÖí´¶ÌÑŒ²¨ãý“XvïhLŠ\'c‘†úÕý5¤-9¸_\"6?!Ïßýj ŒæÍ©ßÌ)åÆrŸ¥kDÏå#,\0½ÿ\0Š²’B‘…‡÷+aAïZè~BJ\0„ù{ý+¦13,ÛÈ÷Á\"mPCŽõ¾®ÙÊAe÷ª–ÞtBHÜU¶üÝñZ1}šãiSz#üŸš´05­-í µ†I<¸Bàg©=ë^Ýfb±É·q\\ƒÚ°íA‚ai>Lÿ\0Ô×I$RÜùDÃ#¸®ˆG¡•CkÊÚ²Åpð@ôú×c¼òÆ²Fš^ç§zç¡Ó%’pœÀ_\\ŸZÚ´ž+yù¬ª„ÛÜ×LbfÙÓ¨’HbÛ3”ò=k ÓâI$ŽWï·nÃÒ±,¦6ÒÆÎÒH÷®ºÞö/*xb€,ãÕ˜õü«ªœZ’5­­á>c«ïr6¨=«±Ðc™§H<ˆY—<·=Ö¹-\"ÏËžo7%§\0sÚ»{u‡Ê’\"_vF}0yÍvÆéXàªÎ§Jiîoæ<[1ãŒl ô¯@Ž;Rm•S{QX:lP,(AÞ_œ×Wg|Ÿ/œšéLÆ+S¡¶\nø¯íZpÇ#Ê#Ý·Š¥jƒÍ_,ˆ£ÀÎ;×Cjò	\0iàÑsÔÃÒ¹˜–2Ü1ófxHv²õúÿ\0…m˜Fõt*{Ó•w9%¾íOHú5QE`ÙëSˆQEŠ( Š( Š( Š( Á%È¸òˆòÕ@ ô5}£g†ÁyHéX×æò!´íG9$w«+ªý™TM~w:v;*ÃFj,1Äƒvâ\\½EQhT:„Mžh<Žæµ-1}ËH˜bùO÷úõ£[.èe‹/åŸÖ¸eR7µÎ%Eîr––TŒ®Ù’v ’zT­-¬å!q èÌW@tÄbÀÈ]d$V4–OÒFa&(Û¿FÍk	§¡¬!bŠê’ž¬˜ük«ƒ[2Fª[÷AFŽŸ×Šã?ÚÙch­w—,kj[r‚aÉFãZ8ŽRiDW©r<ÉrÆÕf;øÞ½Bˆœ‘žÂ¹(PÃM;å||Ã…ÇsRÅ<\"}¬¥Ä ûÅK€ÕVt©t…•‹DÝ:ÔwÂ3:1ƒ±¬=ÁgB¤ˆ\0ÂŽÃØ\n†ëPš+ Ê7ì^1ü>ô º–ê;\\Qc$óæp}j„VKsäÉùúzž-vÒYE¹XnÎ[–n0}3žkdËmuž\\‹²È4MÍÔæ$´I·Qk9¤È+ÎÍ£Õ¿úõ×$ÌðÉjØÞ„0<\nŽêÎC#˜cÜ±Ä0ÙûÇ¾GjÌÉ§¼.£Ëfpƒóª’IÌ(J0({úvâº6†ææÝâŒ+ÄëœýÜŽ£¥c-³À|‹„Ý“‚Ozi1W.Újh¥¶·MŒŠ0æ³oµ„‹ÎŠ;ô…CËýÒÞµ¥œ‘Í©òíeþ/é\\þ³d¦ßÆÐùÒNÍÈúôúv®˜Éu:©Àü­ý»u¸ãðÜÐÜ»œFóyC+´mÔŽq–;~‡Ú¿™ß\Z¾›kªjÚ\'Ú<û†”—þÇ?¡é_ÑGíè\r—„¥X£†K¢ÁLñæE–È$dñ×§Zþl|m;FH\"m®Ëü]r}hÄÊÔ“è}Ï	¥Ë$Ï<½‚&”Þ\\¹••È+ýìU‹¥Ý$HBžqÚµî\"ðLMpØ\0w5ÝÔ‹Ä…KÆJáˆúWÆU½t}ë­O—]ÎjÙD“29>Tkèµh[Ø˜ä\n§Öž\ZÖxL¾s@ìß<Þ©¬lb¦˜¶DÀžÂ³ºF0‡3Ñ\\ç—$ÅoyMæ3Ð\nµ&Ÿ$¶Ó·œ§\'&¡bó†š¢dmªûÕu#R\"^£\0?½T§ØÚkX³¦\"¬DHÛð€Q]ÝÛEç C–àu©m®£µ”¬k€I=*\rJÍd_5‰rFßzÍy’~í™ÉÝK<ò,Ûö®óÃwªIŽÎbq\ZH ;âº9!Å¡ó;òzšç/m%š¶µ]\\½z8Ykfqbi]h2w·¶¶Ûç$·#§¾{Vu”¥¦&\"øàŽµÐÃ£ÀmÓÍ*Ó+RÝw¹ECò+²-eZvÜŠîÜÝÎ;[€qÚ«ý™åi†æó#W½_³i9.È2BÌÜ‘Î^µi|™\'µŒFÀ’IéøÒç2•(·fs±éSOuåïo¼kY ŽK†·}Ö«\'~GûU(þÔ€Ü©&¤\\2³ßK²wlsºœ¶5T“(ds \0ˆÐœ·J¯¤ÎŒw² psí[ÑgA\Z6åQ©¬¹Õb‘ 33#.ãŽÞÔD-7qºa…|g7Ò«Kr“[5¼oºEàŸjÑò!Œ£Ls	Qz©$¶;C7|ÌSV­Ôçp}Ì©#–Îµ~VmÌËVsÄ0”cw÷Oµ=Y{w0ÙP}*)d‚VE;úü5OÈÊK£)\\ÛÎ¹s.@\'åôªñ½ÊZ\\Z<Ãd™Ûê)·WÓæyÂ\0`~ë&y.#\'æ™\nž½+¶úÎœ,Û©‘¾gŠ«<aæŽ\\¦NìÔ–×G~Xl:Žîek…»·¢Œ}«¶Ÿ7S’­—1ZëKóeA~äg>Ô—:dB0Ð¹\r\0ç?ÅZ–:ƒ_ÈÈ«±“±Ú²õK›x%y\Z|ùJ{×ZŽ‡9DÆcqæ¢‰iœp}jHä0ÊŠXyª1?Ú£žá‰*d8µ\\‡(Ì*œUj´4Z¸X¥@Þ_™ûÀFzŠ\'Xí‘A|ÊÙ u\0Qfñ‚Á×hY\\ôæ¡+Ï&P¼¸üzÖ´×qÎ\'9}š^I\0lG¥TÓ¬â¹½·\r7•nÒƒV.Ô[4«¼É¼pj–Â¨<òB«î$uß¡åT‹æ>ìýž--lõ†Ò$·’x•&›û±3uÿ\0_¢62Ãl‰\rŽ$e@£züíý˜PjW7·qnòl^52Ýºw÷¯Ñ=5VÞÑ.$`u#\'’qÔ×àž$SrÆßúÙ¥e-¬%;\Z2®È¤–w‰$Þ£„)‚ExI]¼õéíYè£PÛ,lY<Ã;\nÔ0\\˜Œfc\n°ÇËÉÅ~|éõg¯J£¹šdkR­~t-ÈÝÔTWxºhÚr²á‡÷MoE	Dãt›kéêÏ<’@ŒdýìU§‡£*°åÓr94Ø•‡–˜†P	lôÅm$ÜÚÆÁX¿ðúâ©¬~dkR6GŒ™«ö6âÆI#(ÍŒG¡þµ<Ìç”¯±L5Ã;D²,§šÎ“M¹Všõ·>¤Šé&Š0Ñ^h¼¦ÀUþ/zÏŒÍx·’™6$d Õ\næ\\2Ý\\©’ÞM€’\nûŽµ°o\"‡)rI•cÎkm/­Ê%ž<¤³á÷«ÉnHe»e•·õô¥¡\\ÅõGO,Ñ~åø~ZÚµŠhy‹¶y#§ÓÖ²´Äi\ZðcŽä¨Œõâô«/wr÷QÇäx>aŽ ®ˆ¦´cQ4.÷ºNds\Z?\'ýš«kmåŒ}ýÝ3S‹äž9RXw¬™Y3ÔÕ$žI#˜aY\n þèöª“w%Ç[	<µÏÚ¾ðÁI^´ZÅt.¦>{Kl|ŒxaçšÞo5ÀFO›Þ¡óR&Pˆ¨êú×%Föbhäu$¹šp¥ž¡b~^­]…´!¬¡6ÐmEŒÝÛž¢{‹–ŽwÃ³d:\0ÿ\0\ZÓH®bµkqIƒÇ~µ\nob£.‚òQÌÂ–äâö§ÛÛ‰.åü¸\"§[xEXåV¸ôö§^J‰:Æé‹’AÀïU6tAw-È\nàå\ZÑPô0oð¬FÔf½“ìåËŠBxO¥M$æ[‹xWr•mÇœ{S«Fï\Z™VW\ZÞ-­Ðç¨»eTXl”uª^¹³Ž\"Ïæ/Ãr´Ö{—Û<ß9v¨!}©/ -—\n;ð§¨­c/#žláü]{<>ÔçSæ¼öòF§¸f•~WüN”ÛZËouKpé¸ô&¿M¾\'H°èñ!tvîìõ¿/~%KÅì–—ñý·Ê”¾O\\ž†¾ë×ûtYågÕ-„ûâ±Zé2’[Ì·ç|™¬H—w2ÀL`¶w­_QxÖé“<J›IR ý+äí@ƒ;¸2Äcé_ÒpZ‹Ê§C>9Ìg,¥¤ÍOûœ’>v4ø­Äé™NÀ¹©VÑTƒ¸1õ®˜ìbÙÑ¸thÇÍÇáW¥ó%Ž5A¸dæ«ùo(Ržbüê×Úã\\0ÎTæ˜!±—(ª §Ìy5³m€‘”Þäçê+%\'\\Û™ÔiG?vö1¸	Î_Ž+–Wèz­Ô÷Á\Z46¬¾lwzýòÿ\0‚`xvÏLðn­®_Ûy÷\Z…ü¾PNr®v†Îzñÿ\0U~hÃi¦ÁÃ\0ÎO¡\"¿£ŸØ\'J\Z/ÁßÈ-!½´‘”mä™˜ú¶{â±ÖâÄJ>ÏCôÎ9­\'Ýåùp™;÷¯\\ðÄV·1ý²ê7VbÊáŽ0½ˆ>ýkÉíšYJÊÎdMçú×¯h–žnt²$nqwÎÜóíÎ+ÆûžGÜù\'â&¯wŠï­ÕþÙ§C3G«ê;ŸóÖ¹›mmBf‘ÍÁ›ë^Ÿ¯Xi3ÞÈüÇ¹™ÉFçnkËoôK™QÒ²Ž½p==ëóÊ«šnG¯Nê4 ¾·ÔvDdD“yA¼Œ¹†kfÆæ(Ï—\"|è0[±Þ¼WûQ¶“˜Ì¾fW<ì\"¶cÔ5»p±Ü2•,\0Ùü_Z™Ð”wêi*Mnzå•ÍÔRZ2ÎªCn„Õ]K@7‘¼†½œàs\\õ¦¸!+§–…@P¾¢ºM{ÉhËHV%o™{0¨”lG#2¥ðýÊGæF^ëfÑµ\'ôª²YêÍ,ò£¼ñŒ…_»zô?R€´Ï¹ÈÏzÒŽ™QÒé›êGÕ&/˜ñyu›K•xãck¸|Ã¨=²?úõÚiºÄÐ6òÍ\"mÎ$</°®šOYù©4 ÛD‰÷:ä“×šÍ›Ã…×È·ùÕØŒ‘ú\nw#™\0×m\Z0ñ¦Éø½jö›¨Æ`u›%rž£ð®è·©m3N®¥8P½jÅ¥í°óžÎB¸À$(õ;kLY¢˜Ì¯,Ä)þuNïF¹yÛÀ¬÷Uvæ¹ûi%äVRÆüé]E—ˆ2C1;OPübÞÅ;¯ê¶ðáUrûª{üÕJÑõK$>j2~óïŽkÔ ¾·½±óàu*å†ÒÃ9SŽÙïM‹OŠx~Ö\nùÎpc$mÿ\0Z¨Ææv<¶]VýI3î•	ìü;Öþ›ªÃ\"s‚ÍÊŽÀw­k¿AsçO\"›­Äƒfü¹¬»o	¼–®ðÎG–¿ÌæµQ±.q¦_Úº$vó)ðÊzµjGQeÐ	WÌ&@:à×”Üéš–—ûÈD™†<ý=ò)-uëûT’7&¶Rwy¦E7å¢Öð4ãä¤ƒŠâî¼\'\rÌã!ÖyÝyã¥7Jñ$·±˜®“¼¯š}GsìkzÃZÓæœYÊÁü²HÏLÓöe)3˜’ÆþÖÖ\rà¦Ó±N:~U_Ï¾·E€d°@	ÿ\0^œ·	,2ùmå¸sT?²üöiiböüiÛRã.çoâÇGlò”¼ÿ\0ÔZøÆÞæ²¹*ærú“U.¼m,òL·;nÊa\0qï\\×ü\"Ú…ä@”HæÏÞ?Ž+gæ˜ôM&x5;Iïä#Šw<(m µ7\n±ºMÑ†Èé‚+Î¢Óï­–LLwOVÙÑE.›y<Jë†Œµs™4Ï@—F{µ1ÀëHØgÂ=kOÝé’ÜÚ}µep¡‘Ô÷†Fyô¥‡Ä^R¯–:ŽAîkj-ON–™ºwl±ã>µQÈ’1¦K¨¼‘pŒ€à©=ýÅm¯ˆE³Ú­Â9.Ü2ôzÖæ¡£]Ii\ZÆ÷)\0 ñG`zþušfy¾DŽdþè}+ID¨£F=zÅ¢o:obTöùÖ„\ZsÌÊ.|¿Ýnúgüû×)ÿ\0‹‹Vygq,oœýjÇ»³Ôá²º‘ s5ª¡B1—ô¬š¶å§<ÐK±åŒÞ)‹nAÆâ}ëœŠÚ+hÃÌFwàƒ\\…¯ŠoôÑ	ÔùRª1÷sý\r:ç\\7nJËå° •=½ëß¨3¡—A±½¸YB\'aüXõ¬‹Ý>þ£šÚÝQZgRK`ñÐ‘è~µ§¦ëW3‰b0½hÉpnWeÜ{sŸ”t®nFóé.uëi\"’Wy FÝ…Ôt«Wž!ÕHLÀbÜ¿p>+Ðìà¡\"	1Ô7aíT¥±Ñä‘Ÿìøtl€zVñv6Š}N\'DñMÏ˜\"½*	;OåÒ»KmJÂõ™1·•»Y²xsO}÷VÐâEbÇ«H¿[©$ieŽ™×ÀÇ§½hæS½\\ˆÚyèÞk:q¸\Zt¶vì$1¦ï´8SJóèoîmä2¾å8ÞŠµOˆ<„e2œ‡Ý Öbg@¾Šöw‚xü±D’1¿§ç\\åç„eµ-(ûIÂtäzÖœ> ‡S‰Zi–I-ßçÚr+^UþM÷z¨ù3ü>˜¦­ÔÏ™ž{w±e$0Ïgœ£2m nosÆ+.?ÞiWp%Á\rqËØçÖ½oð4bäKÔ0ÏéXÚ¿‡,\ZánLqÌ\'eRr:qÜW\\79­?Æ°K2ÆfeIÛ=k©¶Öô©œ:ÈO Þ¸é<¦¬5¬\r\Z«°“×Ú³[EÖ>E´‘ #$f«•T=}$27ÙÏÈ r*XôŸ(¶¡+)µ\\ïÏSšðËoÄ\Z<¯oi#G|ÌŠñç;TvÇÆµ¬üK¨Ï†í\nr@qí‘Ó8¥(¢£5=ù¬o‘VE·Ú£3\\\'Šô;%²IÁs)‹¿vë[\Zo‰|ðÑ\\íÒÜî.ÝïšçüW«ZÝª6ží4ÑHÈl®ÝÄ’G#<ú~5Å™b*›è™êeIVÄÂœz´s¶±O\ZFd}û€8?Â[ò£prûYŠµ¦XÄ¶©#ÈnÆàIû§Ó•qGóÎHYUñÇ­!fM{Y)w?ª(ÙEÁ’i£\0†4>¾õ2²Ä 1dcƒëŸéW¤¼‚híÐÛïeÈsýÑIr¶ëº…·¿M£Þ¼\nü¦Å¹\\»ñµFOÒ¥ŠÙ<–‡ÍRð½ˆ>¾ô×‘#Ku’ÙžMƒ2¹©œ­¥»Hðoß‚«Ü{×/!q‰N+I/	rž1þ{ÕµI Œ|›äÃýÚ³§ÞKù¡W²zóQKw²„I‰Š79\r×žõ´bmc4É=Åœža_7íGû¾µal-ßÈG¸1áydf­ß4+´@¾``‡úÔ¸Q´ü‚³;•b„\nðÜœ–k#aˆïëšÓ»b³ÄÞkmÛLÔ,æ“lCç?^ŠÓds ]²¦qî+ž¥£Ú÷3–¸TKÉí^¿Búe£`«˜1ªŸÇW¢¶(]âb¦Qƒôô«¯e0	ƒb\\p@iFŠsF5Î›··X$óœH$ õÈéùRØG2ÇæÎ¥ôVô­;x…ä›IÙ*©9ãæ¨$Ó¥óÑ¯/|È‘yUàä×G2ìa)D§,NÒ™!C¸0%}G §]ªËµ1¶G$dvªžTRS¹vœ÷ª©m ¸7ù=¬j3Ê°Ä7üÄäöÅ\\i°¯æåFÕèâÆaòÇš_‰ñéQý…ÚèÈ¨71ÝÓëE83:Iï%‰aš]–èC…ã‚Z|TÂz`ç¸­9‘b.xÒdpzòxª—’%Æ]”Æ‹ò«Ÿãã¿Òº9ÊÓßh¾Pªzš–u†áÛdy ç©>ÕN8årÚ?Z¾·tpL¢8|±€=+:ˆ\'.„8ó\\KŒ|Ãæ=ªùˆy±+®VVÆOjk*•—aÚê2=?*ª^Gu¾äÚ0}ûÔF¯c!\'¹–ÖSÇçB¨Mf=Úòe%X|Ç=1RÜÎñÊ¢c±]°¾õs-¹œ£)”·_a[GúÆ‹6çK—`Y\\ü§½H—Æ\'H•CbNz€k%¤aåìBQOQÎÐjÊÁ.Û˜¦pó8w\0í¬å+—ÊÖÆ²ÈYÕ\"\"/0‘¿Ò¢¸I-Ð€z?cœÕUdŽ\'™ØFr*šÏ$¡–5Þ­×>¦¹¹t¸àm%º›Ì’ädg±ªRiÌT9œùÈÝB*”WVS€£¹ö§Opå­e•	ŒÀ<²·­8È±ÂIYäöäpOv©–9¦cª´;Õ¸ÒÖC•h\rÕ¾¸ª’ 4mòçëÞ»©Ì¼P@#ÞÛ¹ÇsýjŽ©Ä¸YÚBü0#š˜ËrÙQSe¤ŽòÎpx{T°A#I}!;’I<œÖÒ’Q¹<·e\r7dHfUF<zæ©^¼¡ÞtPÐD¤á»ýkRb¾$IUHd#ioóÞªy¤–?0ò6žù®JxèÉû§GÕ\ZÜhžeDhAm€Ðý*	\ZVE3“0sŽi&¼x¤ŽuI$b1šÏ/p®¦FÈó§<WVïR\\l¬‹2ÇgXÑÊ‚n}?\n¡m¢ø\\ìÿ\0FPx~‡ØUË¸þÍfe±·O/º˜·¿l¶9Ê¥e(êc=Œ{é\"¾2:Û4	 “ü]³Š‚ÛM·‡eÀ˜ýÞ„zÕ™bîþ1êÜT-‰&t‰7ã‘Ï­+™ÄÔkKMÂMØäÛß>õnTQÂ³åªšá‰åXÁÎx\0R-ÍÓ“ 9pøkU(¾¦·!»ºÙaUàž;ÓHã8PyíEË¢]«H | t$Sæ’Úò¶Ž?!¥a´žÃ5WInLÙOÄîrXä6GQS¡‰bk€sòžÂ³ÛÏÓÞâ„\\Dè@9Ç$sùÕ‘4I!¹ÉíPê#&0-ÝdÆBÌXŽÕ½EgyÚG¹–làŽ\0eg%„mh$Ï>µ]­æI_>\\OÓ±:—z$ž¤±‹»«\'•û–nXž•bT³l b$†GÁÇz°®‹ûÈ¨äíª¥Påb\nù$®:ñO™“ÈÑN³„6bûËQýi·û\" #§ â¬ä—o™å±ÐäëVmŒ52Ysös]4ê>ÀîRBžqòË*BÃõª+«¦–aå–‡¶;UÈ\'Œ¼‘Ë#Ê[<‘Wå¶µòÑƒ‡¸9ÀÍoÎ]Ì%³’o-œŸÝßÖ£PÁÞ(P–ÈëÞ¶‹­²mdûAvÉÍXóá. 9\0óI«“\'c˜ŽÕãwóÐFZBF;ýkšÔeùþÎEÈVùô®žy\'¹gÂì@ÃžÜÕìíÕÖu\'ÜVB?ˆWM8$õ8å=F+•w:lbÀ•>ÇŒûWâ?é+·kwEµ¼µ}ë¿hÊèF\r{Å­Ê7îwldÇk†™hÎ\Zõhã¥	óÁ´üŽzôáQZjèø+Æß°çÂ/¼g–ïI‘Îeœ‚Çø¾mÃ?@µò?¿à>&‚ÚæçÂ¾\"µÔ%”KiÜ±ˆ£ô¿g.me–vwa€ƒ8ô¨~Ék,MÍ¢¼9 ·qô¯Ðr3,,yc;¯=O‘Ì8GZ\\î6~Gó-ã/Ù3ã‡\'ïü.%…®Z!$/XðHL×ƒj~Öôa,ØÉmvŒAITƒú×õis Û8‘¥Óã{q1U8<÷æ>\"ø!ð¿Å¢àk^Ó®n„eIòÀ;=»sô¯Ò2ß\Ziò/­R×Ëó>cÀ0å½	ëç±ü±=½ìr6•mýMMs5Ñ	9Q÷—±û¹âØ?áˆn.¡ðòÝ<¥öHÇŒt‚¹=þn;WÉ`ˆúAy¥éÞÚ]E&\"‹‘´ã¨\\\0ÝFòµúFGÇùn:ÑŒù[èÏ—Æðf6œy’¿£ÔüÔ´¼;d$r¹â«‹ûÈí9òyï^Áâoƒ5ð~£=ž·áÙì¢im¤Æì:€øÚqìk€¿Ò\'´€Ãx›&L§¨¾ÖŒ¬Óº>G€«Mþò-\Z×u]CT´¶¹/ržb€<g¥};b%‰ùbc»ge5â_´—}ND`îº)ÿ\0\ZúQo4æÚ4/\"€\nùlþ¼£>Eµ§á\\ª3µ{¦B,£™Ñå@%É\\úRäÒX¼AŒn0Üõa¬n¢‰wcÉÇøAþ•GT–òHó#„(SŽµòW±únÆF±:^È\"‘ÎÈÀëVå‚i­–F…^Ë\0žr;Ò-°¸‚)VyBdg­W²k©\'ŽÙ×Êv…=3ZªÎÖ9¥K[¶AäI{rB<„óÞ¤[o3Í!ƒ\"(Î†´on`”dŽ˜í\\ôëºÌR„<ýá]1w9§_SMeHmg…³8\0õ³¬nMÝÊ5ÎvÁü\'¢­A£I$’Â 9Ï­jDÚ}ÂHÖò1˜œ1ÿ\0=©T›LˆûÉ2F\"»Žh‰hÀ\'ií^‘á³¾©¤Ìm¹Šñd,=žkÎâ¶Ýyk‚bÙÎ{Œt¯¤¾xüamâ\rcûCì°énÄ dÌXsÇÅqU¯«Éèo3“²<GãN¯ªx‡]hšåþÃºypç!>ŸZù[-vñmÚªNs_¬š¿ìýâ]U$ŸKÓQ¤x‚ùó}ëúWÈ~0øQâ-3\\ŸI×ü,ñêk Pnó<# æ¾“.Í0ò§Y#çñyUXÍ¦®}ÿ\0Îø3o©üBO‰7öò‹Ÿ\n\\nvå\"I÷éþE~ï-úÚ1¶ÅóŽçÿ\0¯_›ß²}Úü<ðkèº<rm[ôžê7À;ŸßØ\nû~ é7+íÂÃ6ýëž8§Öi¹M´ÏÍ©KÛÉv=­5¸´Ø^âîàÇæî@úV¶›âk™C[L\'IPCýkÆ§ñVŸ¨<oÏúç\n«ŒôªºEŒ–sN–ó²+JÏ¹OÝ$óP§cÎtÙônŸ:ý±CæN£øEuvÚœÒ:ù;ß$níŠñÍU{mÖ»1\ZÛ‰ûÌMt_Úërd “$§pzf¯Ú‡³îz“l•|Öƒ9\'¥]Œî³‡Éœ»¤ÇðÅq:n·‚;Iÿ\0yƒ•éZ«y\r»É- óî	*QþéŽkêJ‹gm#Ox‘D?v›²Øþ*Ð’HàòüÃæ)`¾k‘´Õ®d‚R¡#’G\nc\'“ô­ˆî¦#]@³GÎ	ê1í[_K—ÌŽ‰¯˜º°>\\lƒ9ÜjÂZ£–S›ž»ÇoÆ¹xnVëmÍËù(¥tê6±ÈˆÃå8^;W<ç`›4¥ÝKð¯\\÷¦Å~îòA*cæÂí5”ó»$‚3¹uÏÝ«ð=¤Ab&M«¹þ•Ì¥©Œ•ÍëËˆ­ŠÊê?Ò€ éÆ9£Ì7h\"ÙGQÔCíYZ—ïà†(üØ„?xuÉëš†9nZäj±¹Û©»W\\ŽŽÙˆ’8–=‹	![ÓëMŽí.é)žøª³jJ×Š†)eˆgžõe¥As+”‰—,ÃOô5mX¨1]<›(üÃäSÈx‰š8÷µË€GÓÔU?-4èEÂÜŸÞ¶2{š·*ÝÌ–ïfï\0uàœTI–â‰~ÐÓ‘ãsƒÁìµ³kû¸Îé	Á<õ„¬Ë>6«Ç°pÝÎyü¨”«Jó	YŸËáz¨Æ=Nj±¯g©]ÞY¤1_÷³Öµ[d	òÊrûXoÐG$3ù‘–éÕ½1Z·¤2G\"ðww­½”^¤)2õ´“*É3H[’T\nû\n­ºxåIYö¬îN¿¾*+#4®6åŠ“ÁïZÖö*ÎÒJS ÀÆHÔ8DÕ7Ô$a*‰$F<Ÿñ«6;#DÊI#V±gŽ7Ž8C®æÁ?ÅWd·–e!$0n éJ™h*ý’\'gvp¬0½T	½\0\\;’M\\ŽxÊù2HÂH›j¿©§3Ç\n	éÎMÌ‰-D¬ª|ÉÙºü z{U¨uI\'’ÊX$Ù*a\nöoz¥ºè¡™T7pj†žîá–gªÌ2Wµk¡Ç8\ZVÒÍÓ¤ÒÚ„+á«ÚtsÃ¾PÅ]Øž?MVHÜ8Ã†8MnDa]±…ÞÁäô÷¦BDÒ^›‘vÝn@\\r§½hE,Á„6ò´k*I¡`C¹ÝcÖ¶m!uXæ#™	\nIè u¤âŒæ»–•Ê3éÞ·Ck\ZÅò‡,zoSùW5cåM4åÆ$”àgœ}+}!t‰aÞU‹v¦‘ÏRæ­Š¼jÍ.\nnù7uÿ\0¯[ƒ|Ð\0¶ÞT{×?T³»¾k~›\n‘‚Ár\0«‹2žÆŒQÌÃÎc…Àmè2Ê}«f(Ýp“¶Ê2\0êMs¿k–Í·1(ç«¡³f¹·%—*«‘šÔÂNÚT+°…e1)\0äWIePâq;N‘®vb¸ûuX•œ›u!Š±àWG`·VÒ6å-?Ë·Ðô­á#\n’êu¶²ÜGÉ·yGÊ}?úÕ½¦™ÚÝbœù»›æ\'øˆõ¬Õ?,o#f#Áõµmà-‰·î“©5ßMµ$Î‚Ú;Á•·bNWµ×ÚX³!+Þ#Œ’¯õ®NÂI¡Q@*Î2Op{W¢+$p¢ÆÊ¬øÎO5ßrÎNåø¬å™™\"rÌøk¶Ò`¸0íádW·qíÍ`hÒÉÞ±ï®;×mbUx$nÛüU¼cÔälßÓìÜU}êzóë^§mŽ#ªY\00äœ×1¦Ä‹’5Úd]†›\ZH§q\0¹¶Š¹TãvlZ-¸G%‹\r¼f¶-öl\\!þu“¤Ab`óJÓ¨#]Ä|ÜUMA§w©z1Ôúš’RÖ2‘ô´ãÑQXEPEPEPEPEPà#Zˆ•¥U³¾N(…#¹fYÅ°}ìpk]T¦÷Ü&ŽVÆ\r-Ã«B‚b –N6AÒ¿4•{š{k™†V°—1Jv€?Õ_íÉpÖóLf’NóŽ§žØ¡q;Á{âIì*¼še½»¿•˜ìA>µÉì¢åÍÔÑTèZ¶Ö¼È8ßæKzãúÕéäi°»ÈŠAÆ+[LÊ±€cBÄ¶;æ u‘¢‘áÿ\0kŸç]TÄæŽŠO!1”Û±ƒ9n€U¨wYå„W=¥¾ø¦vyv•ö5nÒx>Ë½_l;È\0ÿ\0+£–ûÎ]N„´FIUS)ÃûÙ§Çio4«$Ž«u8¬{}BÝBÎÛÝæ$dŽ\0<Z¤a„‘HbvÆr9_§Ö«Ù=Ìœ™sT²¶ŠHcY\n\rÅ¾^Ù¬I­&gy`”¸@Ï¥n…ŽéùãÄç>•Py±mÉ÷µ›¦ÖæˆòëÛ´¿k¸ã	*ž3ü\'ÔT2ê—v¸\r#0 º»{ëHï\0Y CÆ;UuÒÚ:Ën#ÇÌ@:VrO¡¤n:ÇUÝJ‡—†ç½k¦²†UEÏ“.2¯½fÅ¦¤Q¾Æ>NÒ*Ï\Zd°´Òùìr7l5“ó%nt×o’9LÍ§€CTd‘Úå0Ÿ—ŸOA\\ÔÓJÏgàž€ÖmµÝè\"èÎD}ÿ\0îœûÔ¶uAž’Í¶\'~â6û×7ª\\E(c¸¦‰ªVú´BÖO2c=Áo¿!ÆâzŸ­Ey\Z}›Ìù °©­##º–ºŸŠ_·>“{¦Ü]Å<7rÚéÚ‹ÜÈ‚«\';A=Ô×½:ž;’Ö}Vâ`Áîm›Ëp>ò¯bkúXÿ\0‚†ÿ\0bÚø{[µÓfKMN}ÜIX\\ý¡„`{“†Ïç_Ì‰ŒÖWZŒ’[µÍrþg=|\ZË;«{ÂR¼&š9ðRé’Ù#i„—Y®~½+&	!Ô v¸}’‚N>”ô¼ HÉPÜœz\Z«-¥œäÇ,åGCþ\"¼¹Àû.Æ\\°C™bY\0M¥¹=sSXO…ò”™bN9íQ_½¢²@`ùsH²É¦\"*¡hçùCW©ÚZ¢ýÉ´‚2£/;¸#³VGÙíà…®DÓ7Õ\0u’#2Â&‘;¿Æ¹¶šk©\\8Ù´Ÿ•º/Ò±•3OomË3¼¶×ÎšdbHoLÖ„Ï,ˆ„LP¢gëQÚ;ÞÜ¤{qä ÉöªÚ¥Ë6ä^Ë–¦1Ô©Ôëb¸y/Æn|É <ôªòI5³«J€‚yõ5Séò ,.T9AßëZr%Íôoä¨Fá¸ô®šhå«S¡™8¸ºŒ¬\0¿RÛª­´SÞGs@$šÖ0[\'§ÓÖœ~ÛD¾\\±^õ^9îá¹WSÞ?Þ®úq<\\F!½Yb{æŽˆŒ*¨qÚ›§]ÌÑÜ¯˜b†\\¦Æþ/ÿ\0]W½™%!Ð6b#?2Ú<æ3–#Œ÷5ª¤rªÏ™j>äKmŒ¯å¶ìçÒ¨È¦tY–l~µlØÌ·\n·n\r¬‡æ^¹©šÙä¹†8`s]^ëV°ãBMß˜‰,eXS2lÏ$zæœå\"ewEyÂ`Ã4š„Ry­$ì\n3žÕ*Øˆìfi[t›1X8¦îJ–%«!2	&_4œc/j³i?4¯¶HÐµŸ°ÅÖª6¼ˆ9@¬»k&Ý¤¸“ËRûÞÕ&¥HGrä‹\Z^M\n¾wô?ÝÍ`]y°NÄÆ®AÈ÷­»ÕIdˆø8ÅS[bÛZBYÉº#¡æÔš“ÐÍ¾½‚h’ÞÞÜ«È¸lûŽjª@öö±ÂäÉ\ZÃ[·˜³rñ¢1Þ•—$Ó02p§‘Šì§Ø…AjgE,%ç¶Y‚Œ«ZˆÄU >fçÐSZW•â€†ÞwP²K*l‘O+ÔvéS¤÷9«G¢Em\nsÖ¡I±öå	îsPjVpìÓšGãªÍÄvñÚÅ4RàÊGXŠ¯u;ÅRËf\'¥n£Üò%MŒ‹L{8ˆC‘/\\ö§ÚE,M<k9•e\" –kË´G…Ãn8ØOÝ§È¯f‰–2JGZreÓƒ5î-!ŽÚ5•z>ò}jçe¶uFfÒrjUÿ\0I‚#)ß ç5Ÿsn‹nv–äÓ‹ìnè¶ŽðÇÌr>j¹$ÕÛ#væFßº2¿wÖ¬IeÌ®3¸ûö¤¶’H¤há€†CÛ¸ÓNKvyÕ©½ÐoÙnÎãOq˜I³ÔÍºï9Âº’?Í~…Z¬ÞJÅ!YU#ôè+âïÙƒH¾¶Ð,Íë¨g¹{ˆÏ÷C¨À?JûR+üÀ#9U^¹áI¯ç~3ÆªØù¾Îßv‡èÙnØxFýÛÛF¾cD¢ÉQÚ­Û;ºLq¤ã=é—M¸0”ÃžÇzhVŠhŽUÉÎkäÛMîzÌ#–Ùd\"PÝxÏ­S¼ÎÀ$²yÀ‚J¶ú\\eÅÜŒ~Óäí_OÊ«ØÙ]Ëæ-Ãˆÿ\0xT4‰’&JÆ6H¸ç=ÇµOŒ.6Ÿ2uá§½,6K¾åÆÐ>_Jš@w¤¨Û‘2hœA”«ùÏ…Á³T!Ùn$I•ž\'P§ù¶³»«+®7`óíS•iqæ7È¤ü¾´r]Ùš(µ« #HísŽ;TVv¤…’gi[pº=MO\r”I+¨Ø¯ÏÝÇ¥S»º{ËI\ZÈ$¹5QJéHÚ*7\\Û–V‰§Ës*!‘ç*XäãýkV¹–yfKcäãúÿ\0ZµQhbÝ¹”\rÌˆÓ·É±œ\0öùÕÅ¥ô1n£‘U\Zhœ7éZ“ÜÂ±hSîŽ„U‰\"]A|¸“ËÚ~ozbÛÌªñŒyÊ£ºS”ÍzêgÛ}¾ä³ˆvÆ„mÜxÅhH€Í¹€É¶*Â³$GuÆbuOSõ>õM¬b\r‘òïVr¸Ù^9 ’2¡þY\rÝi÷mwimiÁÏûÕ\ZÛBÑyŒ‹ÉÏ?\nš)ç—vòYaA†™ZØ–RvUAdØúS/nd˜€‡oEGiäªªdo<{T—R[YÛ™B1b˜Ï½z›@ŠH<ø#‘çh› Ž§~µÎ}‹S‚ØO\ZLq“Ë}}«ªÚ·6öÏ4\'$Ú1M¶µÔ.àXÕíÝ†Â:¨>µÕN¿+º75ôÙ]`‡ï6¾ç2B÷Ž×7|ã+ë´õëc[uKiÆùW%±Û>•nž8Ìê#·0ø@ô­c&ÑÃRG‡üb½º´±šÊôÇ½6ÿ\0õù¥ñåãÔ;afV>àWèÆ©o®–žb-í vÇlžæ¿0<YruH»‰l\0Øç+ô¾§Í‰‹[žW_R•Ñäþ0`Ó\'ÌÎÅŽáØWËºœb9ÙÑŽâNsÚ¾‚ø4–ì‘£™#Àô5óåË4×9QÚ¿ ©ì~9ÈC½Ê¯µ\n’>i÷íW,Žæ\nÃr#*íäê„èEtG`öehãó’7v¨~Ï€ÛäÉàÓ¢¹bÅ¿:k³¾Cƒ¸óš$ËQDéLH7môï]g†\Z[}E\'¼N@Ç¥rÐÂ£)-žµÝøh#N±\"n‡OsX\nÉß£ÝßX¤VSl¹xÀëŽONkú¹ýš´…Ñ>øf]9,mßJ‘;–B¹`sëÁ¯åÇ@³7úÎ‰¡{™5kè!UCóœœc¾ýgüÓ’?ønõây´KUœÓIí.Àœ8ìÏVV9q2J:á§\"Émr¾zàµÙ¾lôKéË|ñYË/ª½+“³³µm±Dû®žFa´û×S¬Éö?Êf‡Ê•ãÚx?>HÏµpN½“lò$ÛzÜ]j\rw¨N-Ù-ÕÞCƒÐwüê1­†µ·]ä„°\'«{\Zìoì¢†Vh\\\'Ÿ+…N ý{cüâ¹Ë¯Ü5©¾Ûæ2¶6ƒÉÏp+áÚÕ³ÛŒˆ¢Ô´»©bŠFòßv\0PqøÖ¾•§ÞO\'˜ždƒ˜Ï§­r2è×6²3¢)àýÚu¤×ÖKuæ3:)\0÷³NRn×æú”š\r¦[þÍ·\'¨ÍK¦Ü¸–<²©ŸjÑŸ^xZÚåÔ£7úVÝ†§¤Jk³ï”³nsíXÔfrék};Ð‡9=¾µ¹iâYÒ(üåÊ×Ÿþ½uksg,cŒ2ÏN§üinôû×‡yÞ‰ÈÉêyY¼XÄñ<“K¾B dtR;þ5×ZêV{#-p\0“¹®hoöI­m\\6é3†ë×µ5t\rJÁ¾Ùœ×žV‚•\n,Îq=vÚóNš7O9RTçÉéŸj·•Ô‘>@QÇ+ÛšòèËÆŠ²GæÜLw`uB é[\Zoˆ%½žîÏ-ŽÅi	8öçÓëEµ±„£czúÑ¢u*$8=F;×=¦Ou!iP¯•ÃõÐ\\k0r-òž§ïcÚ¡YYv-ÀS¼ž´ÚÒä„‚òJè‰%”à€N0\\šê-gÔÚè•r~EÁÇJÐoÙ°7\nü¾„sšèí,àKT–áÄr=¸c³Ž3ÐÓŠ`bÇu4Ló•@Næ©o¬[Kb.2qþÑª7Ú[j$JÀ lË·ÞÂ¹õðíâLyŠ\'%YÁéèqT›½™m#½}ZFE•rãïf°.´Kgº2O<P2Î<¶ìq×õ®cS‡Q!dF¹Ä«÷z¯½l¶±ª¼ÐY[æRrFTàucÔ~FZ“Eá‰äœAá‰A~qÞ«-„‘]N c•&~žæµ¶ƒ0á@F#øÀõ­È5+K¦tD@“ªåÇ\\ŠÓBÁMs¬X]4FCöYgž3þ5ªž\"–VŸ›¦Ì×i\r…Œ!šÄ]à\'ùtª×~Òî%0­¢­´²nEÿ\0ž@öÏ-š©w3´oÙÜÎ#”—óÚ9\'¶3Ô\Zèä¹†T2H‡$‡%GóÍsº¯„ y’ádXÔFy}NÞ…½ûqéYØj6îq¿Ï“\'¶{Òlwèwž]¨‰UW%Éõ5|ÙiÑØ˜DQå†wÉõéÍpñ1i—|¦p[¨¶š¬‹µÂlx³’?T£&mL¶¶…ši$È\r÷”ŸéøS£ðÒEÞBs)”nAÜzæ§Š}1µ•žVOœŸS]dWAb”9Æ:V–GŸÜ¥ÝµÛ¬ÁÒ&Aå¶8?CW¬õ³6ñ8%ÞBC\ZëÚåZÝÌivÖí¾0üì5@ZXÜÆ±¾÷»i†FÀ\n[°útªhq‰`ø†Ö;r&Ÿìèr3‚wU¨¬®Ò*}¡BƒvSÁ§Ýøoí…@¨ P?+‘ëî+]#QµÈ‰<×Lð™ç57/•w:htýWòßS‚0#œ6NÜ÷úwªÚÇ…ío€Ì\n&<™#8$g¿^?:à[Õ§y­yaMÄd‘éþ:¾šôöË1„m»©öƒ]ÄâO?…o‚Ëg´ñÉ&AéÇaYRÛø“L„Î&_´£D¼ï\\ã¸í^‡‰­G-½Á™È*½jºêvw1Ë4Ñ¼ å¹üóY¸v3R9kkífE;¦·LŽçêk^ËX†-±_¾)Ëÿ\0ŸÊº½?JÓu	 d2Ùô®cÄÞû<íS<œm\rÁSnôãL£L^XÆèa¸Þr71\'j†8Ï\0ýÚÖ·ƒj¤wßnÛ1;Ú#Ò¼–ÛKºv\ZF[f®>ñÖÕž­}Ì±,/±æ.1ŸÆ¯ÙÒšÇL’i\Zî6žÝîÂúý)÷~±šÞi`A\Z•èOy®Z×ÆV7°¼\0Ÿ,ÌÇîœã#¯çÔ¶³my¾;Wm°Gò‘ÑÏ©öªöEêyÍß…`gŽîËy¤‚§·Óüþ5•>•¯Y›¯,ãdòÚ3ÈtÇ^?\Zõ%K²b‚5!\'¯­nùp*Œ*\'qÔ{ÕFŸsÇnµmkLµ25¹Šá§ì88>Üwë[–Þ)†ê$3NŸh’3¼7\07×Ò»[ÝNÕ-àBn!WÛÎBî=³œW«xZ1î -œÕØË™^çGkynLl.vóÐžI­ÉuKyQ\".>õxÄ~½Ê3–rîèqYÒê\Z¦“$%¼Íl­ƒ´·éL|ç´´v³2CæŒ£îo`k6ÿ\0Â÷S,Ö!].b³6Ñ=Y¾Ÿyõ¿ˆ¥ûL[¼Æù7—a‚ÀŽ8õ®êÏÄPªmy›~ŠÀ§õ”Þ¦¦Eß‚] h`;âhþbÍ÷½qÅq)¢6I$YÚæÛgÊ¬»J¶+Ó\'ñ…´ÒHC[€AÏ!ˆõöük‘¹k›ù‰ƒM»j¨áTvÁ¯ÍüLÍ*a²ÿ\0Ý»]Øûÿ\0ðQ«Œr—ÙEwämò-ÌÒ>3èµ˜ œ,’–?<ŒO<ŠÙû,ÈÌUü¦QóŽÄÕMÌÐ¹?®kùš¥g+¶ÏÞãDÊ3Æ¼ç y‹Ü}+f	g‚3pê‰†b>÷Ò«´PÅÄdª6±^Äv¥–2Å-ëÒ¹Üy‘Ð©hlÅ<f%™¤,sŒw©ÒE—Ë™Ésœ=\r`ÚDDŽ.	dßÂ¯¥_¸É€¾O–ù\n½ªylh•X4ô—{ÊJ„çw¯øS³Ì¨ZG+åÈI>•VßT¹Ž(ãÞ%Hÿ\0=iñê’43[½¯”¤³y™ûÄÑ½l–ž<ä&ãÈ«Ðºª3…1¶â>µNÏÍp¡œ}ÝÇéVKb@0G¥(HM;’ýøŒR¦ö3wö«òÈª„“´aýk+SÊ@öäì\\†?^ôÔ¢–2õ«¢kÝ¹“Ù\Z¶÷6ì¥Hç†GÞ5Ñf(Ãnmç§jŠ{iVX\'Gœã¶=~µ}ddžI Ž4iÃðõ¬gÏb‰‰ì|¦<0ú\n“SžÌk\n´ÓIÇŒÔS971ÆÒ—‘Ø}*ìñl˜*\\¨ó”xçD(­ˆu.îÌ™|èí—zùb{·¹µ•\\cûØ¦É,Ë2æD`F:f­ÀY]ed(}ëo©Ü9Ê«\'–!$Õ#<ßÞ-ÆÍ}Ï‘·µ<\\½eo4—<úóéZ#ÏŽ]‡ä;ÄHÿ\0ëÔ}Q­n\nfg—ocû¹\0ÒKgÐ·!óƒý=ê+%Äo \'tNHÚ9&ª]NÒ¬h!xÕw)ÏB9ëY;¥b¹‰d†FrùH;Ô’}š{ãµ.uæ\r—Æ9ëþy¦ÛF©+ÒO±„x\\ðqéïU.+º61E»­õ©¶€çÜŸÍy#f’&8—ÀûÕJà‰Â,grG‚r0yéR†I0yÇåŒ§­eùhò±†B’3\0¦¥Ä¢{“o A\"Ÿ5µ’ö–³¹¸É-‚§®·Ip»])Ïr*¤·O4Ž°Á\ZÛÈ¼…xúÖr‹5•å<2ÈD›NUSüÓîÞxÑ%0°yÇSÚŸí“&ÉZR¸>çŠ·#ÙàC%Ã}¡Nàyõ¬½îå™[ÝÝUäù$#°¢–§@›Ñä ýÿ\0ÃÖµÙc	dó€a¿.=\rV¸¶2Élë¸‚ç­m_Bâ“*6¥ja1;0yœ„pßSW-Ú	¼µe¹U\ZÜÑå·OcRÇ$vr³‡V,¸Ú§½MJz p/Á\rÄ;Èf`Êp‡¨5U™¦åvÊÃØÓ£¹¾	—„’=Áõ>Õ2²;	ÛÉ­©FIêfÊpos$ÿ\0>zžiUÝÄ3°g‚©àçÒ¥‰’öíÖ×÷J˜ÞØÏùüéò³d¹†H®$•ÊrÛGoZëŠ¾ŒQ™+î{•Dh×y=ñþ4åŽxÑ”LJÙ8Æz~\"´etÈ”®7“Éõ¦@É&ûI[þëw_oÆ¢8jqÕ#©W}YÏ®š2ºåã}Üwª!î¦u”7•S•=­vSDñ0‚`Q†zs—1¤‘3*þñ›ŒÖ¶ìÌ¥PÌ’(ÆF»p=\0¨¥!’$!œà}ì\nÓš(\rŠÚ”3´Ç ëŸóÒ Ž$Xu¿Ì˜=x¬çM™s\'¡YSí0„WÞÈ‡“E¤ECª|Á>cŽÙ©Õ¢…‰P (w:ã>ŸçnÞràŒ,N	Ü+žHiX©mN“·+>@jƒ`Wû8;ã(7;ðZ¯Å#yAfŒ¤ìËíëUÀÁÎ>3íZ@¢£$R€\0É‰úúTÊKÍ\Z˜†ÀyaÛ³[˜‚îln…69`XUKŽG#½jéè#ÐR4òƒ§Ò[ºn‰“£cžõ {eVN_\'njA<_)/¸0kÓg;1#·½ŽâE_šÞg<à•ÐC` eÚ¨Ä–ïœÕiæ(«±|Èåôê?\n²Ê%‚8ä;C\r¾µÑFžº…Ç6ÙÕ &²nàÄm˜®ìŽ:àÕ™e•_dlQrÅU.\"œ‚&;¸ÿ\0ë×­Éû¦NRêc¤žTm²=ï÷~¸¥kufì.L´¤gÔÖå´H)^0—))Þ>ŸãXšˆÃÉ Äãþ&oJ%¶m±cåC\Z1FRãL¶µ¸Óï.Ý˜ºÈ‹€z\\ûÕ‰7ÎálgA|vkj0&F.Êz\nËÞ4ŽÅq7Ÿþ«•SùU+i?~ò]+KIÜ;ÔÌò©`°n€˜ž†©ù†6sýÔ¸Ê“À«åîEFC½äVEŒ…i˜çéPÝÅæmXæì77ùô¥š[†Ìv­å»G°>•@?“¶9di$˜ãéZF]Î\nŒGŒÁ}o*NþSü¥S¦~•&¡ij®’˜>mÎ«üf¥°hb.°4fáXîWã\'ëVeü°ÓÎX‚ðŠÒ5Ð\"×Cš–&ù¤aµdúŠÏY6‚JïPr	­»•I$&9°0>R8üë\nI„acûçr:Öñ›µÆNgÊùªfŸsŸZÆž¡’_ 4×S¦íö5»e*<Ì®‡¿b{UF9Õó*Š¸ÆOÞük^vŠ9™áû;™¥EÇýÿ\0\ZŠâ6¸¢,Q¤^qèk¡h\"•Uåsæc•šñl>T±nï]ë>æRç!ðV‡­C§Øj\ZT3ÅÎJŒ°ÏLã½|Åñ;ö:øUã¦¿þÅ:|­pÄùD³Ç»²’Gµ}¡voàò<ÄJ)o3Øú×)­ë–æÆv”ù8ÈôÀ“_Y•ñV;eJ£²èõùkÐàÄàéÕ%Et~)øÛá‡ÂßÜhšuÇÚ¡‚|øiŽ*•£ùóF»&Xúú×mñwS[ñf¥q\0Û¨Š½¶ñú×bëO©äÛ,*A¯µ~ù†ÇÎ½T›»i?¼ùá!BN4Õ‘y=Är´Hm;?Ù¬»+T½i>Þå÷(ÀëîjMN(Úá®\0/\nž­ØéN[”1‡ŽTnB°þð­y¯©Ï*šÑJšdS¼j^U(Î•I¦Û½ûM{{/—1\0p\rE-ÆÙÊ:|®N:f³®n/!qäFLGþ½iÆN¥ÝÙOZžêW[üŠN+œF‰7$›Fq×5v{Ï\"gŠH|ÙYrûµ,\n&¼äÙ*HHjëk$ŽYSm²¼	jñ\\é³Gç!‡­hÙÙÇ§ÛH°?›pSœõ8©¬n,à”?‘–cÌ:‘E´E.‹¡Änå³éSV­÷\nT¬u6’@K\0dÚ=	¯Ðÿ\0ÙÏA´Ò<\'¤ˆBO&©©¼ó’Xî\0Œ÷\0+óÛ@°½×<C§iZ}»¯¦(›¼,u¯Ô…Q¦‘o¦Ù\\ZdÓŠ,hŠøÞ.­àä¯¿ü9íeÔÜª¥kŸR_[XÅ•´U‘\n\0@cPµŽ‘sj£PÒ ¼„õŽT\r»Z{”6ááPÍ/Z,õ<µœ\0¸ÏjümâfÚwØúW†¶èÇ—Â:m´É¦éé¤,²–>H\0þ\"³×ÁnÚy¦›¾aŒJïå¹ó\\³Êêßö™eX%¸0¤õ^+è°œc˜Ó’’ŸË¡áf<9„Ä/ÞÃSÉî´BÛ÷.7ñÂ/ÝSþ{ÕH5ŸiÒÇž{XUùyÓ¦\r{&ž‘<$ê%”6y¯]éz\\Ñ9’D`r¸àšú¸ø‘R)sÂýú+à<<¯*Rqzÿ\03Ëô¯‰Z²È«zòOäLw*œn_®+Ôô\ZØÞn’	–Ø_66#åÏ®k»ðm´ó<ºvÈPƒ½{Ÿ¥c/„.\"óÝ¥XÙã–Ç­}Ž°ušŒŸ+ó>CÂXºfþ‡Óš7ˆeÜ’	P¯ú¿Qê;×E¹¶|ÊÏ\r¾ó!Ç8Ïôükã«OO¤K2_2KþçÌ…Çò®¹~(Ì¾]­â²«d«Eƒ“ñ¯´ÂbcVÒƒº>w†•ãQYŸ^Yë¤Š^`…ÉÈPk«Mi!XMÄÛÑÎBž§ßñ¯ì~$é7°<’Àï¦AÔþ¯FÑüEiv.Œ·ÊËkm¤ójï¹ç3é+mQhÍ¹\0‘¹s[ud±·™pÓ\\£…8R\0$zð>¸Íx6‰â‹g“fIu\0\0Üc=+­ƒÄÿ\0½•J	¡ügœú×-[…ºž©«nTïiÀ\Z×µž%·$`¸ÈaÖ¼Þ=^$cÌû@À#oojè%Õ­\'ŠßÉO&MÇŒõõœwÔÊ«:;id….$B6:}ÓØTÖò]ªIp«½•IÀþ/þ½`Ø€Ì×;Ûrärx\"¶í\'óšuvˆ#a<qßú×Te¡…Øô¹_+.=û{VÅ’aÔ¸ÝÎ9¬$arR<ª!È/ßó­]ÑÃrVU),@M)TfôãÕ×ºu´\"àéŠž0ö›ƒ?îåoV\\H\'ŸÍŠPÀŽ½ˆÿ\0\Z’{iAyÆr©ò«3šž}u*^fÃE¾ÓJÛšL¦ÏåIøtu;Ø ôsTã¸o ¬äå[#Ú®Ø·Êè1Ì¹ç°­ã$rÍu,I,¬„î%Õþ÷uýjXåãWýärJ>FÏÌGn9©™¹!O.Nê!VòöÞ¡$šé‹]B0¹:Is§±xNõr[µm›É£º\0äœdV÷YE.äVûÃø}ÍJÞuÄÐ¤«¶%n­Ò¢Iu6äfÝœ‰l{»ŽÜvö«‘$\"Éå\\Z´d«Æþ„ˆªñi! fØÈùºb i®|èü®™P¡ÍsÔŠ¹rZ\Z’G$¤np«+‘ßa?Ñ tÁš7Ï\0õú{Ö{,‘BÈr#<.{\nÛŽÖá­Ùìˆu‘9Y8ëD#¡Œê²/>:–EŒ}ÑÞ›¦.es$·\'%¸â›.­±Á8’:Õ¥ƒÌxÚ/’N‡?Ä+¢+C+—cÛáFÎ¥HŠK!(KHÇýÒ¥P’ÒepcReˆgŸçZðÝÙKµK34j¶:·z¤®A1ŠuòüÈ‹ùÎÏj×HÑdY±n˜U^‡5žn]îG–`hÀúcükbÑRÔ9…a“Š¸Ã¹j47-\0d‚7vaÈ®ŠÒy.ˆ’Cóý ¨®vèLr[ïå°Pö>¸®‹LƒxËÜ1ƒÛëfÎYK¡¿äH6åp8Þ­XÍqi#M$BhˆÀû¹ª««¬|žASÐV ”ÈëÐ`Vùþ‡Ö‡.d¥­˜fÛ;,êH íõ&º[iÚL¨aæqœÕ‚ÒZ¡\r4°>Sß?ýzÖ±’Þ< 1IžHî(V2œz,q›°\0æºÛBÎ¢¨	ÏN:WÎX´hH;O¡ÿ\0\ZÞµšwdD¹Éß½tS‰Í8lFY‹Ã;„W#fÃÒº«$q2œ|£ŽõÇÅml²Ç$eÙœcqþ*ê­®fÞ±F\0ù±]ð‰Ë%s´Ò7yA²[èz~5ÓYÀ…DÎ¾r“ÎþÕÌiÞt`»³ü§=‡µu°˜•”Faº»!±Å4tšJÎòÆ‘I±²}Á¯NÓá¸m˜a°H7ÜWžé0êà‰NÕ ô5èV›<Èä@7Cüë¢1ÔéÑÏç‡•ØBÂúŒ*îmáŒ±dŠä4Ùc¹(¡‰Û÷½ë´·Q–VcòŽƒ½tÇc¢’-*H—\n¾^õÛÆº/.)\0VùÈ²bB†bvdõí[0)©\'%¹¨¨}žº2WŠuŸZ+ž£>ŠêQEfhQE\0QE\0QE\0QE\0QE\0~[^C i.•\Z>6Ž~o¥ZŒÁs*Í²+óÿ\0?úÕš–¢O7ÊyÛ‚ÄsþE4Aq,Š~EÏ=+òþR½•ŽÒÖe·ŒÊÑ‡óOµEWÝ(\nžcÜõ®M/ç†Uó_äPX€zUXo»‚RÅ„W€þ÷4Òèv– wpŽòíU&q4Œª»GËõ®vï\\Ü-ìë#²g «ñ_Á;«ù‚ÚRìgŽõ´PÓYÃpêÝSæ?‰=sQÉdð€\"íA¹€=«F´;dSç$ã£{Ö¬MGH±%‘ó•ì*“-ËC\Z;¯‰@þ\\JyÞ¥m9-B\rø(NYÏ\'úV´P]F¿h	´ƒ‘Ú«ÜÙ<±­ÔÎJ#týU^Ò]Çc[Øb‘QÝ•G9^õ uë[ÞK‡óç\"ààgÞ›íÉ†?™OCŠ¥w\rµÃ\r–âåw¢Fm—¿µÒâÙXíÝÑ»ŒœzZÚ¶ºûZÈ*zóEŽåÝ¤š/%¡£\\qøÕÛmJæi#”³[‚ÛPý+77Ðô(É™d@R2:ô$ÕNÚ;…‚hÐ†cƒ…ô®NË„œ‰f8GVÆ~÷ëE5{›«…Š7H­¤‘Uøû¸ïß8¥ì›Ô¨ÁîfÞE§lH¡Ý\"¦íàŽ•˜Öv×ÀÁåˆ#\nw2Šèo® iKE!+\n^1š­k$,ŽdW˜Aeõ#¡¤é3C(hq€±D\rÈEùYÀù1Îj¶±Å²ùkö¦ÀÏ ÿ\0*é¼ç¼¯’ rX÷tò6•;’ ç×¥/fk\Z­Š?ðPyínl|C¦ÜF‰¨›(ž$UÏÊ‰¼àõÈltì}ëù³ñŒÓ> ©ÞÎVPGý Á@^MO\\Õ%·î-lü²G-\nP³¼¶ò¯çƒÆá·zÍòCswæc…=+“QFV?IàØ¹áå/?Ðòÿ\0%$1ªEÉoJ¯©LŠ•x‰ãÖ¶oÒŠc,àp=«•¼–ÚÒ%ÉiD„z×4¤™õi™ËqüåV>TäTÐƒ}(†éÕ?¸|ZÎ­nÒ\\YÊêRÇ=p¥Q„™ç`ìÑ*g½kšQîvRw:YV1o<¯”‹,qüF°>××[JH¸HAéKiœ¥ªcn[Ö­]-¯Úmîá¥¸TØÙïXÎÑ÷&‚o² XŸ÷¥NO­9 /’EÄo¾ýÉ«0[	Š™S‘ŸÂ«]äÚ”U1Æ²ã9ëB¡ÜÑÒ¾ˆË[k{—Ib9»W>ŸZ¯+Ío(Ï$«|À*y!Ž\0·1ÍóŸNÕ‘¤×™cøVô©+êy¸å(è¼F¹PƒÊ( ±?ÅŸê+*âgg$—qSWî\"‚T‚yP£ÄÄáz°ÇO¥2[hæÃ«bØAÜþ5ÝN1LðëÓ›ÐžÝ!x˜ü½ýªXç²(DJÄÜ/­B‘¡ßL\0/z£6Ëhe#ÌÎãæô§-tCTÝîÇL»%‚LiË­kÃ¨@°ÈN?*çžF1ˆäbL:Š®V·G1<|ÏÍSË¥e6¶5Ì¾mÀ³ÉéíUçÔ-â`ØQ%`ŽqøÔW{­ÙFõ\0üT³Gk¨\\Ù¢&ßó±ïŠ;šÂ¼­ û=&–Ú[b`þó×Ù­&gFËöd89ïVMÜw¦\"ÛÑ†Ü”ÙçŠ8cmÒÊä‘è+hÀçÄr½deê%¡HÚ\0xQÀ?­aÅ©µ±\0¦’U«^Úf•ØH?˜¬Ë›{{·\"50´/Èõ¢¦¶gG­ÑVv\r®3æõ×SÄ»:ÀÉ€[·°«²ÛºZãí85d¿i‚A9-²R>¤W]8‚œ‡ÄÄE&äÊíš°ÜMÂ	ŒrƒÀ‚\r\\šIíS!‹#œcûµR:@eyJÇ‘ëÍzîLæØ³Á%šÛ7•ßÇŽõSUºŽXâ…£ œò*åî¦÷lpö¬Å‰n$Ì×e¸âº:­2(‘!&o$ÐgüóR\\Ï\ZÅ¸ð3Ú¬2 -®ãƒŸJ¢ÐåÄ/ûà’žßJÆIL¯)-å¯”‰’@íQÜM;#¡ŒlNOÐÖ¤ÿ\0f0„JL¸û½ëœ¿Õ.­f¬ò“´8Tã}ˆ­;-Y‘·|à„ù‰|zVŒxØ°FŒØ$Öt7l‹*È…ÉëZþ‡dÒMx|Ëcÿ\0}rkª1i]ž|¥wcõköi´eðN‰®TMr_ý–-O¶1_][Dsç`´ŽÄWÍ\0ÄVÞµµ´ˆˆ$¹Ý†q¶Ž3èG5ô¶˜÷­Àó²Gµ0çÕTñ•gœŸæ~«‚£ËJ1}Bö×*ˆ¾jàÒzNÕ†)¸½†Wê+Fú<ðå”À÷k*Ksò\\F<ù$\0óíë^2fþÌÓƒPUäc¢mØ¨\"¸ÎÛK-€jèŠ)åÛòïÀÈ©<”öìÚÃ§½7&c(jhý.HÅÊÄý‹ÿ\0ô¬‰Ý$$','ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 95\nÿÛ\0C\0			\n\n\n\n\n\n	\n\n\nÿÛ\0C\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nÿÀ\0\0 \0x\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ûÚëRƒì(\\lŒ¶qÉâ¿¿Ewý¯sw4E¼Ë‰ óËWî~•ûO|ñ„®Fâûx/EŒÄY^f	Y‚‰ï?îçšüqÕ>|Yñcý¯Aø{©Ë-‰^ÜÆNpÏ_[‡´f¦­ÞêÇÑå*ÓUc8´ôÝzž_ðM:_\Z?ö‰hÒfwÌdãIŽƒ×õî›.™6çÓïá \'	 à}:×û~Éº¶£ûKÙéŸüö›yô;éÒÖÚñÄŠSËMÛ¡`WQß¾¶ñ_ü‹Ã:ý­Àð·‹uY#`ƒQŽ;¤BAÁB7ucXcòê9šXT³µ»­õÔo3ž³§(]oæ|gÿ\0±ðíÖ«ñ{âï.ã\r$³ÚÛ_úoq$øäzB3ô¯Ð\rM[83€:×Î?\0ÿ\0à›?¶Oìq&«¨üñç„¼ee©Ü¤·Úf­fÐ½ÑŒ‡-Ê0ÞÃå•zõ¯M_Úk]øsv–´ìûâŸ¸m¯ªØÁý¡§ë¸a”{”ô¯[Êê+l’_×üÊöu+{Ð³¿Dõû·û®{=º2„Û¸ííU§²k‰ÌŒU€;@aØ{ýk;Â¿¾\ZøûJþÓø}ñHÕâH÷ÉµÞÉÐÍ%þøÔÖ%°wÄ·c/“ÑO¦M|wó¼)%ñJþ¶_ðQïpÄ9q³œ¾Ê·Íÿ\0ÃÞÙ ‡j)N:ã\"¹ícMŠVmûv”ìGqŠéä¾´ž&’	‘û¦¹½bD.IÀõ¯Î•j}Ú©¡â\Z<ð÷À\ZÖ<i ØÍ O\r¤“ÜÜxvþ]=®]T•ˆVlœH˜¯™¿d¶´Ð5Wã–³“q¥ÊòYÜ·ð7•\'œøè~W#ñ5ë¿ðQ·‡~\ZGá«y™¬ß$e	çÊOˆÿ\0ð*ñoH>þÌvú4»ºÖ‚«Žø“ç|ÿ\0ÀßÆ¾û(©þÎŒ}¤¯9%^‰n×cçñ”°Î¬½Å¶ºoê{÷Âø,.‰nñ[|Pø{ul¹\0Ýés	ýâ­ƒùf¾ëýn¯Ùwã7ˆ,,ü)ñwH7³Ìª4ÝFémnþÙÊUˆíòƒÔWá,ñ¬ïýÕåOzµðâÆ[½h^I‘åòzqÒ¾æý’æzŸ+ˆÉpø•ËãøŸÙ†fÓôÿ\0Û]ùñ-¼vŠï\"·Ê.IÍøÿ\0¦ø—ûFj:>©£Oñ‡Åá²4K¡Ë®NÖj„c1TãºE}ÔÅRU!wÿ\0\0ù¬M:˜*¾Â->].}¿âoø\'Á+íB\rOÃ·šŽ‰$S¬¾TæÀä0<¬™ qü%i5¿Øá{úŽ§{©íFÓyH°Œù“_TßZé_cv3![æÈÀÀ9®vOÚËó+{cóÏ\'ËÜù½”oèzŸÚ˜îNWQÛÔù—Fýš¼àKûSÂ¶Ó§HÙÕ¬\n²°$¸ç9<â¤Öf:tNš¥ŸháÊmaøð¯¤WÁ¶ò1-\0V\'ˆþèw°3M	ô¬°¼¶PÑÿ\0XçÖzžá}oÃ¾BíÀYŽUÓƒø÷¬Ú_ãÃï‚¿	¯<yâ¥Žx­¼öÁL—3?	Á$û3^µâ/ƒz\rš †è+ËÄjšùCö¸øcsªümðï†üE´èú–uH­ä<My49ôÎ8¤Ç¼Ùì+š¼åB.O¡¶±˜¨ÓOsã?ºÚøæY¼O¬h¶>.êÚ}ž‰j‹21<4ÒmÛ¿Êêz×Ïþ\'ø¿ûDx\"îm[Nø©«_E\0ÒIvß!Ï¾qú\nû·â?Á|Vy48u?&iä\n“¤gåaža´ý3_\ZþØ>!þÊ>,´‹ÅV+}£ê±·Ô¡Œ„Aù‘”ý×^>£ŸZåÂbjœ³‚wî‘õx¬¶ž4$Õ¼Ù7Á¿ø*wÄÿ\0j±Y|J‰uí(0Iîcˆ%Ä+žXãï~=}kîO|HðÏÅÚxïÁú¢ÜØ_À$‚U9ô#± Ž ‚;WäW‰!Ð[Q¶×¼3Kç°DŒ0IÆx ŽkéßÙsö­ð?ÀëýSág‹ïF›¡ÉdÚ…­Ä™-åXCÈ\0IWÇ@8|qópñ\rQÅa¾³„…¦·Kªò]Îl³:ž·±ÄÏÝ}_OŸaßµÖ¥sñ?öšÒ¾[6ÛMHã˜(Èÿ\0¼ÿ\0ß?*á¿jO›ßÙøJÑ¿s¤Ú•T`	$Á#þø	ùšõ_ØÇÁ‘þÐŸ¼Oñ­]nmÃ¤\'?rY’9èQ\0GSãWìñŠ÷ÅZ§Šü+}k©-õÓÊ¶Óƒª¤ü¨	Êœ’:W›†¯…Áã¡†«%gküÏÀõê*•hº°WR};-—uYZtÑòY°yë]çÃ/\nO-ˆ¶ŠæÜ¸QÎ3Ç¹¤ÕgŒžÕAñWÃMbÒ<Ý}žëûÄ?Z÷ÏÙá÷¾%hÚjé“Qp…å0¼{ãÑOÆ¾‘8â$£MÝ>Úœ>Õa¨Ê¤ô±öçÀÏ\n[þÍ_°µï‹æQ«ªÀ¶¶?.¤[þ»åEhþÚ:Ð´X´ÿ\0‡6ÒÍ¦x\'JYµ{H‹ÉqxêBŠ¼»à*€9$‘EvfØ¥„®¨)òò«|úÿ\0—Èòrœ$ñ4w¹»üº~\Z·üwöŽñßì·¤Ëñ7àçÄMWHñË\\Á—áølóNñ0’E‰b–#dÀ°Hþlø®ŸIÿ\0‚ƒ~Ñ?²ÂêßðRÙòÏKÕuùšÛO“áþ½¥<×W™Ú¦9HWÜèí+Ë®åSOþ\nSð[Ã_´WÂˆl5‹»«Ký#S·¿Òµ]>QÍ¤ñ¸ehÜ‚ã<‚:q_ž\ZOÇO‹¿¶íªß¾%xÚÿ\0Å\Zo…ì¿±4ÛRÚ6º°ŽR±BˆˆÎêIÀÏ\'$×¡V­:4¥;},±U£O§Sëƒÿ\0Iý¼~(|H»¸øQðŸÃ\Z†‘ØCg«Á5ÝÈŒti%ŽT@øÁ* …Î2Ýk¼ðíáñãÂž0°Ô~4x~mCA¸t\ZÅÖ˜VO±ÆNþÎ\"a-ò3’\n6w/§É¤xM‚+˜D`¯Îäç$dôéš›ÄÞ,Ð4ÛX5oíO.)PùqIÉÈöë^\nÌk9ÝØú7ÃØGO•oÜµûzÿ\0ÁH~*ø;âO„<Kû;ü¿Ö~éz ‡ÄŸæ°‘ô©®åÄfRˆ÷H¾kþèÎU2JÑøÕª\\üNý¦µ=^ËK½}ÊH¼A>Ô†å¥´‰–Þ5Ý¸Y™¸NyËTß²Œ|;ñÛÃ1ý¾)xãKÐ|7{5¾µm=ó*—²7A¯m¡bÊ™‚Ç;Lò62pß<iðò/ŠÚê|Y›LŽ+—·Óü?Ðù@™Œ‘“€«´©+ÜUfˆUÂÇ•jÿ\0C—#ÀO˜Î3_\nµûÞÖüµ2<)àÚ~$Ãaomá)<1ÛniÌéwåpT®VnNsÀü:ø(çÂ=âì©Ûø–Ê¿Ó\\X>Î|Ð1€}ÆEv_\r¾,izÂ[Ê¥Y@…tÿ\0<>3xBËÃ6·¥´²æêGl\0£®kÅ£RnªiZÇÔâh¨Ó×[Ÿ‚ü5ñA¾7þ³šâiK=¶ß™@ç>ãÊº\roÅöÚO†¼C}¯ør)›XðÜºe£Í\Z»[ÈY_r‚89Ld:äâ¾Üøû1_jŸ`ð~›ðéô¿XZ^m×„âº•-šH¥VˆÂAyïŠøSöž×|<ž0×¬ü&ý ë³/j0	lY‚0ÏO”Œg‘_]ƒÄÇ\Z¥JKEgøŸ™`~ ©ÖOY_Cí_ø\"î«¡Çð7ÄV2H±´~&|ÝÌ0%-CiôÚ\0àŠûGÑ-/¦_-REl`¦5ÀÁ\ràŸš»ÿ\0óÑ~+j\Z½ÖŸ¬øËV½ÔZcµÒHVCD¦8bÎ3žsœ+ê;öñ·‡õ„šÄZßÁ¼n›O˜Ã&=J’êkà8‹!ÇVÌªâiFé¾šôí¹ëå9ÖžjNÒZk§ã±³û?üÒµ›»u“J÷á¢¯­ìåðÂžMNëá\'‡ìþmÅøÒ!³\0qûÀ»³’{×3û8|0Ò|9Ïªê×)$Ê\\Â@c%Gå]/Ä¿Ýjú£øcM¹¬§Ÿ*)Üò¹þèãñÍxùn3£vÓ‹}uM%¿Ï±–g¡‰«AÞ+3æÿ\0‰_±ÏÃÍkQ»ñ›áË8®î®\ZæYV—œîç8<ö4W¼Ý£GË,BàñEz•òÈbgÏU¶üÛ™ÙC6«†‡%;$|—ûDÌSÂ—q9ûÉ_œŸ³‡àð/íWâk%6Ïgs­ËtwG,ª®w)\0rÌä$ãƒÅ}ññ—Äw>\'Ðg†Þ2T.Ix¯Íï´OÃO´]…÷Ž#Õíuy\Zt–à5œÖóÈ¢G—$lde\' €=ñ÷yŠ©RŸ-5sƒ(ö›•gf—ùiüOý“ÿ\0g/©k®|QÑÒg°•&…Òòhæ—8ØèêS©àp\\ßÆOøÇZt?\n¼Má2y,ôÏÙÔÄY\0&ÙFrºƒ•<\0CVN½ã_Å>’ÓÁ×ª··P³¼²b5b8fÇQô¯ˆ¤ƒö¶ðÏíaãOüMÔu™¦Õ ‡UÑ\ZÎh­`‰œä’<½¨	#æ%€=N\rx¸u:iËáÚç×G	N¯4¡ôÖÖÓÏtþë¿#Ó>3|+øÍðkQÒ-¼âmÆºüà7iÚ/fµe.ÅŒJá‘9ÛžyÍk|ñÃˆš¡yñ£ÃÖéâ³\rÔ:¾ž\ZQ2×årK}¦½à7ˆ¼WâoÚÏO×ü=cª^Ãáûgšñ¬mÝÕ†ÕI\nƒ€y rxŸí‡ã½Wã§üTñô+ûÓ|&\n5¯“(ºyÉRàŒ“°Œd\"»hà+íœ¹e¯M™K/ÇûÃš6[=V‡_â?Ú7@ø{ª‹O‡Vh––üGacN~êÐ{+Ð¾~Ø?~2øªßáÇ„¾KâûÆû8´†]±Ã‘ˆÀàò;O×Ç^†çÅbMÄ*mîà¸2£Ì½Cž20Aïšûïþ	ü¾ýŸ>xÃã °Š-BÎÙíôpÊ12gŒòK@[©ÞÙëçPÃ7ŠT¥+uoÉj{xŠÔå…RQ×¥Ï@ñ¿Àx->k?¼{ñ_N·Ö.tÙlÒÓD±{Ëm!™NË$‘™Iù‚Œ‘»­~^xßþ	Õñ–ëÅw¿4ŸÚ_[E­E+xÖ}\\Á¨±0	 \n†“\'åf,ƒ°çëÝKãf¥{«!½–æîêR@\r¹årrI÷ÎI?S]ªßXÂK€×/þ¶P~èþêÿ\0žh£›UÃÎ^Ê)Eíý_ÀáÄdø|Zµm´}ûünÙ{öqðGìá¤|+²ŠÛÃZ$V×wók]\\rÓJ±…Ü»ägl61»+éßþÓ>ÕJFÈY¹ó#»WPb¿5n<vÚxcö’î3‚½WÐ¾2xŽûWM9/åPòÚ®yúÒŽiŠ”õw¹Å_‡²Å\r¼îÿ\0ÌýšðwÝü1–\ZŠËo4`¬±¨møü=j¸¿²wvòGÌäîÚ2së^[ûZø‡Rø\Z.uá,±És¶ÒI“\0|Û}GAŸQí^Ü¾€ÀÅ‚GnµîBJ´¥ÔøŒB†*pwIîfÊÐÍ))Î8R0(­FðÐ… ‘ŽâŠæxW}Ž˜ât?/>+üM½ðn‹|a¶Y\Z<ª«wëXÿ\0²ÏÂoÙ7öáµ¹øyñ_öW}3Æ7Þ¹µ_ª=ÄèÙöÑ’2ªÁº,‹ÏÊË–<÷Æý}.>1ÙxQhÄ­,Ê;•ÆæJõ„ž3µøkã½Æ«t¶†Êfå0Ž9#hˆ=@W\'Õ­lt¨c#Mí³ô>‚m•H¿{uòîxgÿ\0`OÚoö`Ö#ðOÃŸYøöÚv–ÃI¿Ôb¶ÕáµB.¨e0eIô¯ø‡àÛÆVz„_cÍeµ;g+¨_K¨ZH-Nê’“œ{#¨¯Øêš7Œ|\'gâ½OWÓou‹kÉ¶ëñëùŠŽ9Œ`\0\0ãåšúÿ\0Àû=+Ã\ZÏ„|á›_\rK¬_½Üš®“Gí3È«ºà®9rBƒ¸rsé×,ª”¥í\"´zÙ_™• «B>ÍÊÏEv¼õ}ímRI½ÏÈ¿ø%OÄŸÿ\0³Gü\'zgí[ûGi1x‡Ää­íÞ—6ÛWÈP‰pDQWËùvs“É¯+ý«o´]sã¿‰âøoãH%¿\n§Oho”ÆÑ4hTÈe‘ãÝ¸v\0:×Ò¿¶7ü_ø·ñßYø—ð‡â‡4?O;}/L¾lW<›‡Ž5Œ.{íÞ<äWÆÿ\0¶÷ìÉgû/~Ð~—Â½ÿ\0‡ï4g´µÖãf?h¸R•`I¸‘CmS·dd–ÆU}´¨¸M+Gku·è}TèðÞT1X\ZÓi¤ªBIZ-¥}RZßT½çkÝ”¾ü3ÕOÅ›Ç¸žâõcŽÜ½ÓÄDsIûÌªž˜@xöõ¯°/luKßƒ7?\r4ÍbßO–óX[»Ë›ˆŒ›¡QB°Á&<dôÐî¯/ø1ñ¯á‚ü½ðÎ§áûù¼Eá]Gtry»aKkÆ, `ò<ÈÛƒŒ3ñ÷ª8>\'ëz´íö;f¸šWÄvðòyéZññöçƒ»”¹µY*µ6µ™ÓÚh>	ð™.†{©ß\\¹ÂŽŠ¾ÃŸRkWñîç0Û2p­iZ|0ñÖ¯{·Š!þÍ’hÖA\rÃm}­Ðzg:×oðßà7€¿´æ‡Ä—×SÌ°†¶Š$«ÉÁdmß7Ý\'²çŽrÃdÙŽ1§Ëeç¡LLc¤u8¯‡þñÏÅ-rßÃþÑ//®îd\rµ¤\r#ÈÇ°Ušûûö9ÿ\0‚B6›}gãŸÚày±è0JÍŒq+/ŽGÊ>n¹*k­ý…|_ðßá•ªé~\ZðÖ™¦Oq\n¼—0 iÙ‰Ûç pAÏ\'qÚ\0Í}w¥x¾Ó^´ŽîÓQ€I°²8ýðþò÷ïïšú¬7\rC\r9>gÛ¡òùÆ#2œh+.ýàtOéš5•¾‰¡YÅigkŽhb#AÐ\0:V«YÓkFºÖm4»¯²ÝÈ¨ì àÀæ+ZËÆzUÿ\0×8ê¯šÞ¬\Z•­±ñ*•Jm©n>kT+´&xäƒúÑVRúÒáv¤èr>ë\Z+/f‹ægàoƒüI\'h;‹«Ù¼Æ†Øœ“Éf~Oé^Õñ£ÃwzÂ»ýAekeM•þÑå–ÚN^;WÉß³‡ˆ/o¿i5··¸A²ynCrNBÍ¿Jû»Çºd¾1øUscqûènlÚ\'€6” äõ¯™ÆB?_´žš£á¥(`×‘Û~ÊÖÿ\0	þ,xkþK{­KÃ¯dm­5{k™\"†Iä“Ñp\ZW.ÎÆOºð;×ºø¯ã.ƒ øWYÐt\r/^Ñ,ü\'®gÏw«é³0¹Ês-¾wI4,ÓybN™VÇ\n\r|õð»Åúg‚t}KðßŠ¼)cšÊÑZÿ\0Ê]Ñ 0©–1ˆÔ8]À‚JäkÓ¼AûQhñÃþð&¯e®=åçüOÌQ³ÈÊà¢yg…Q¼õ\'yÚE}u(Rœãe+Y6¯éÕ;\'®êþGÇb9êTPiµ/{wdÓëufÚM.šù“Yü;ñÍ÷Š<Q­|N}\'VðâG\néÚuœÌeÚ±n¸Y‰à¹fùTvUÉŽ>]ý¾üà»ß„Þ0ð?‰´-;RÑlõtÕ¼!©xrÉç¹Ó¢Xƒ³É!%xÛt¬Tccä‚GÓþ<øyã\r_øãh¼!¥Þë’j(Tðì7‘ë_wÎ…æ–Pð<˜Ø\Z5b‚&8Áñíu®|Qøªø÷[øÉ­G¨xÛZÏá½-Ä)+	-JÝÛ°ò±³”e%NâpQ^ƒ–NÚëŸèz9MgSÊK[Z:îšJËnge{n¯vŒ¼â_3k\Zž‘àëÃ‘Æc¿ñ¹kåIzÑäã2aÈSÉ;UéÍzŸìçà),üR<]«ÄŸfå­ÛÌg=UC”ðFHí_)øÏö›ð‡Ä(­¼h£OðÍÂHlíáÞ©o-°ªõÜBðsõ¯®~ø—]ñŸ…ô}kÄ£O²Óu¥Žm\nÚ”	íÙ1àÍÈ,p[ \nùÜ\nXšüÍYEŸ¤æ™wÔ8s):‘æÓ¢¿_ëÊúÕâ­Yõ]3ûb-YÄÉìˆ0WÐ7oN3ý+›²½¿ºš+øK[Ê&sÀ#\0>•¿©è6°Zy³­Ä1ŒÈñ’ÿ\0Q–ãéÐTPêÚG…Q!mno¦m‘Eqx×wüôÏAÓç\'·$}Ræ”¬Ý’<¨áà¥Í#Ñ¾ßjZ¶´÷óêÂÂÐ>d¾w Ã;‘q–a»®9èIôúOàÆ½6ËÄp|ñÆ¼-5‰a¹µHÈ2!VÂã#ž›°{|Qk®ø™üCý©pÛOerÖ±XäŒ•˜w ú¯Ö¾£ðÇ€4¯ÿ\0SÆ>Š;}{Jui¾Í6œqÉ†÷ÇP+ÕÃVŒ“Kâ_‰–2µ*Pº^ëÝö}õä}u£x]u•—Â!Õ>Ñ4P<–±±Þø<e*O?+Ùþg©x«\\ð¦ læ¹=7E È¾£Ó¡v ŽÕ‹û9þÐº´Ò§„>%Bmµhœç\0bwUÚ%‰LpÈp68\'Ñ¾.x[Lñž•¦ê6I/®\Z7¸†‘#˜«2¸“êÊ Œç9â0ê´\\£¿õ¹ñõ°SxžY«ólÖÏþþÏX||ÔìSÎXzœÑ^¨x»Æ²gÔfŠñ_5Ì%„š??a¿ø›\\ý¤æñUî‡5¾5¬¶ÝMŸr8LôÎÔlí_ªÞºM[Á^@ÆF?\nø7Á°µøgkg¡Y¥­ÍŠ$új€²\'Ìÿ\0{Þ5ôïìûñ«KÖ|+nâ|cÑŽ\n·p}Áãð¯Œ«[ÛWç>ÿ\0T©)S,z/ë¯sã_†^-ð—ÁïÛÆú7×^Ö¤ŸÄW0[ÚÏãŸ°ÚÅ˜Î±°¸a\n¼fPªqÜ“öG…?oOÙ“Â³»øoIµðþ•â«kîì<7e,W1#o”ÏqèËm•fœ\0#?ÿ\0ÁYþüFð7Çû¾Ðç—ÃZÝ­·Ûî¡„´Q]¯îÈv–QàœãœŠóOÙ×âo‚®<gc¨ø·@Ð§¹H¥ˆÙxš,ÙNÍ*³Ê	V!¶–]Ûväf½Xâ±´bšw‹ëÛî×Cè0ùñ=ÔåF´b¯¤§$µ³“²rÙ+£ô×àŸíý¨|Vý¶µ¯ŽzoµmÀ\ZƒÂYh¶:pŽÇJ™c‰œÉ¹°e2yÊ%V.V@\nìäÛ÷þ\n7áßÛgÄ¶ÿ\04ù:u¦§çÙ\\^²©kÈ÷\rèYr–YJŒõê:ŽËö?ø[áïÙøßöñoÅYdÖ<C¨(‡TðÞ3éèÛ•EÀ‰Cq›r´Hª©÷ÝyI©øGà?†f>3ŸF&M%õt…Óüèu;§W	—*¶©nê8#iÏŽÆ%ìù®¥{ÚßÕ—æÊË2<›+ÇÇS4¡ìùe8´”t|÷V‹”ÔMû·j÷>kÕ|ñOÄ‹à-7K’-Á† ùÏî×\0=€ôëßœ|ø~¿u=7\\ºÑmïÌMe~V[yÈ`””)ä.Póø\0ü)ñ‰àùnüG®O\ZOzþeÃÆ€|„ä ô½çÀ­>3xFf;^Fd‰Y7aÝÏá\\”ñøœ#J\Z/Í™çxŠY†k<JZm-h­¾ýß™ØÚø—Ç_¼eâßƒ>=¶¸Ógd†Õä04‡ø— sT¶AÈ=*+-ã/‡´Å»×ü2Ø<²[Á7›,¤}ý¹=F	éÎ+À<eðGã\'ì¯ã|aðãÆw6ºF¥2ÿ\0hÛÛÜºÛ«îÿ\0XÑî\n¤ô/ƒÛ<f½ƒáü+ãŸÃÛk[?ik{¸*xD‘L0FVNN¸ÝÏØ¯©Áâiâ©ó­¿&y´¨NzIßð¿Ç:wÅ}:×RÒïVRÕ>Ë©ÛË€ÌAà}F8¯uø1â¿~Î¾0²ñf…¨âÊä…½Èˆ‡Ì½ÕN	plÕÙk_øÿ\0Ò5kø|=â½:¸¶×-!0Éq	ÈùeLB7$6ìdqódIwð§âÏ€õy¼ˆ#Ôd´Ÿ0Ç©*«¾;‰vÈ¬§î°^sØû4iÞ*¤ÌNR¢Õ»§·Éö>„ñÝ‡‡¾ èéñƒÀ–ÉNûuÍ2/˜Ù]Ë äíÝÈõ8÷ô¯eÖmíü®[¬ð\\…K¯,3|Ù.€Ä)nxaž+çƒ³x«Á~$¾ÒSPû¥Ë­½õ„ß(ÜÀ”TÈÆv–À=BŽµêzwÄ=Âþ&þÁ°Ð–k;ÅÔL{Žìcæ<ä{ð¯FoVx²ËeN^ÊZ­ãÝÁ_¡‰ûW|Ô<!ñTx“I´hôo\\É${Ð/Ù§|Ä8à) ºŸî·µìŸü1«üQýœµM…šê]Qe{<˜ÂÊSd\n2qÔQ^u\\#ç¼Uîy2Ë1Ø—zNéi¢¹øGð/ÆÚüú-žŸã->M?S[t7V3:—‹#€Øû§%O#8<ƒ^ÑðwSÑ¼+¬ê:{2¬WR‹¸sÑY†Ägþ^AñCáG‰|	ã;Ö¹‚Xn\rËÉÄq*–$0=Á¦hŸµ[\rW•­Õ5+]-¾ÊÒ?Ë»#>‡µ~ŠÁÊg:kÝîá1‘ÅÓTçñ~gÖ÷zç†<MàíKCñœúÕ¡‹QþÑÇ”b‚On{ú×æÿ\0í»ûéÿ\0³¿ŽbOß­Ï†õï2M.##Jö¡væ6r¸#æI;°9é¸ýkàï‹Zæ©ã´Ó£Ðá»ð¦¯ábuˆ\'ut^pç;‘•Ê²Ÿî|ú)øUðk_ðZé-¥Ý=ÁH ¿s&Ž=;V¸HÔ’i„0Ž]U±ò÷ìƒ«üIÓ>Ùi–¼·sÝˆÏÚo\'Xgµve/\"D¬[(¬ñ´‘œŽ•±ûc^øTðu…·‡<o§Ü]‹£q¢iPÝFí#ª4f+uV\0.s‘ƒ‚[ /Yà?Š^\rñ-Ï…~hâ@aU‚ãnå†Â¨pÜã$ã§ƒ¿aÿ\0\ZE­7Äê6í« /\Z\\+ÌºYxˆuÁ_ºNqØú”àêK–KMŸ…WKûÏw_]?­¬|¥«~Ìÿ\0í¼)ÿ\0	Gˆtkéã”–t²ËÃó60\0€x8Ç\\òF\0¯¤¿bßÂž°Ðåa·+î|¼Â»o	u-\n=>ÞÑu[Ÿ$¶›§<¬¶öë!lM19|)sœ¨`ã›öqñ_À;5ño„ç—PŠX’}Z™AÎB–!W‘œó‚Iäišå‘ž{šŸSR‹¥i¾§¨üiÒtxB}.å]üÈˆd7±ë7àÏÁÍ_Å_!ðŸt”];qxèð\räáås×‚	1sá4oÙ®¬²$¥+uVˆ<ƒ^{rë µñ”Åå‚UÇáà*âhsB×ß¹¥)Ôk–,Îð_Œ,þ	þÐŸ®ü¬­‡†L‹©ÙÄÉ­\nˆÜ0ãwœg¨ŒWß?ü 5H¬|gá‰­ü‰£\"2ØmÑ0ŒIê£×¹ùy |ñÄ[xæûTFòí,V)1&ucŽ˜Û•æ¾íø®øÛÁv†ËJñ:[i—[çÕåš˜3Ä¤3Àí!@û¿xm¯½É©K†äŸ]OK[IQœ\ZçŠi«hÖÿ\0~ö;;ýSÂ³èÐhŸ®<FW³’1æL\n¸ÚûO7\09ÇàŽé©4Z=Ö¬iMéo&K¢&*YzÛAEÇë‘^9â[¿|EñÌßVÒ¤­°‚5…„‘Æ9q×q`H •^s×jÛÆòø£á”—z!1G¥_,d!hßÌbx?/ÝŽ½yMjŒs,}œ$´“z«è¯Ðú;Âß´/\\ÿ\0bÞ$>]Õšÿ\0fÍ7>`.ß»vè\0?.OvoQ’¼gCð®©ñ+á}½¾™m%Ìö’0n$L9Ü¤‘»©ÔV|öÖ×¹ÃK•j«Tå’vz_oF¬y¾xkÇ\ZQÒ|I¤Gqa#æŒú«E|Ãñãö:›Ã¾šæù5	Ì)j ùÓ#?3/}@¯ºG”•B~µŸy tYü+ä%ÏsóØT”‡çwÁÍ5¼	kªi×+åÌ’#\')ûÑƒŽ9Ïíf»KãG…ô˜¢°Ó¼ÙQ€«d®qÞ½[ö›ðW…´uM7BÐmmïõ&2_M\03&zî}=+Ÿø=û\"Oã]cÄQKkcœ¢*âIþ™è=ë’4\\&ÔOigU–4¬½Þ£g-ZÛÇ\ZÎ§­Imr.!|À6ìcŸÏ*?*öô[y¬üëbUÔ|ÀŽõ¹á¯„þð>œ4iÚD\\ Ë9õby\'ëW#ðüq]mgm¬0@®ºQäŠLò«â\'ˆ«Ï\'©ò~§ñ‹ÁŸ\rþ7Þü0ñO„m4á«^î²×Ôí‚[—ˆ8K€ü\0O³·v2\0;‡¤Ü^è–ºF«­£Er÷lËa,Ñº®JF§ÍåäÛ‚ðÜ±#\"ÛöR´øÙá	môt[]bØ‰tÛ÷ØêrÇU$WÍß\ri_|yþ	|[ðŒÐêVÓ¢·™w¶HíÃdˆ·)DOÌ¤A$drß]ö-*«ÝïÛÕ~§Ôå˜øW£ìfõ[\Z>6ðŽþüFÓ¼Xu+4Ó5(È¸Ól1+u$p2NAÏ$œ×±ü7×Ÿã„,¶ò.g\"¦¥xb+ÉçÉ\\ã.ÃöA$ögá®“eñÞ±^\rOL¸³aw\nÌÆnÞnÔä‘žÄ¯kÑ4/ü9ð%¯„|<–°§žFŽÔ>ÑŸ™Y¸ùò¾§Ž2\"º!—a«ÖUÖß™ô4iÆ•)[®ÆwÃ\rE(‚þêËÉm3Í»öü›QE\06œŸN•æš·í¥j?¬~\0Û™%Óî¥+­kWL½Ã2yP‚?ybÚÛ÷…Rý¦h³¥é—ÿ\0þj»5ÝCiÖoR5O„áŒ{ñË±Àï…\'¡5ñgÇÿ\0||ø5kiã\r/áå—‰4-8F×\"ÍŠÜ[9c‚”=rÆw,Ë\nîŒ§i/»Òç’ç<.#Û?²üúuÒçèï‹]Ðt¸¼7¬ëÌ×]­Õ­Üm‰%EWPÌúûýr+[àDQ]x£ÄµV[ëvrO1\0Ù:æDÀê	\n}à|û>ÿ\0ÁPÓã£j5¿ÜÇyréåÜšŠ²H0œ…8*K)c‚@-À\0WØZ>¥ãÿ\0êq|Pø|²F‘È;uùíf`.:îÊ“‘Ô`Ž0ku‹¥9>WvºyÔëSÆ¥$ÒRŽe}Ñõ×ìQáå»¸½Ö…ÊIglTÇZ²0“£œp9#Žàô\"Šï¿f¯Oà…vÚ%åÌ“Ý<K=Ôò6D’67cÐ€zEyÕ*Ê£?Ï±²Ææsš~êÑz/ó<e4÷¥6M3óýoÉh‘¯Ì1Qùpã\ZóÑÞ÷8o|3ðÇˆ5;}STÒcšæÕ³­œ¯å×ñ­{?4`öÒ[i©+y¸ü(¸´W®8^ÂªÁÍsÔt×[–,˜¡ÅPŸLpâE¡ÏÝ>Ÿœ=*Å‚.B ¸¥°Ó¹Ê]h°ÝC‰\"ÆáÐ×‘üpý•þücÓÚÃÆ¾µ¾ÆL:bXûÑÈ¸d>êE{ô¶KéTæÑÒVÈ^hi4i4ô?.þ(|ø¿û$øíu/„^.½Õm¢„g+{hœ†@Ê1ë†õÏ~ƒÆÿ\0ðQüBÐ_ÃÞ\nÐG†ï¥A þyi£ÀF¬ªbç8ÎvŒ#¯¹~0|°ñí’Ëmo^Å²H0HÁ@ÏGÿ\0^¼/ÅßðN¯‡>+g¾ñDÒµðÅ5òLGÙ‡\'ù{W,©b)ÂQ¡.U.ßÖŸ#ÝÁçU¨G–nëñ>aøumá¸Yç¸ßsq&ùä-’Çêzõ¯EÑ¼icu·™«# Ö7ÄØgã€æ{¯x5»dÎËKìCp£Ð8ù_êq^[qâ¿|;ÕKñ×‡ïô©ÀÀ°}›î‘ô5óÕ0¸ª-¶®z´ñÔ1IkæmøËörøkÄkoü6H4«×¸óµ->(¿Ñ®Xs¼ #cg©r2s_W|øÇâÝE«­…„VñZ¨(û¥2õ\';9è+ätñœWŽºœÌÏÜ#rkÑ<ñQ¯tS`±•røpç×¸¨§ŒÄ©]»~gUÒ¦¡-cØýý—þ1é_¼u[1sÇÛ˜\"?(8á‡ 8<{Q_3ÿ\0Á.|v]»ðÄ÷@}¦Ù‚.ˆ|Ãôó¢¾ÃQÖÃ©=ÏÍ3ü-<&e(ÓÒ.Í|ÿ\0àŸÿÙ','7620_IMG_0594.JPG','image/jpeg','/../ximages/item/9',2207950,NULL,NULL),(2,22,'ÿØÿà\0JFIF\0\0H\0H\0\0ÿá(Exif\0\0MM\0*\0\0\0\0\0\0\0\0\0\0ž\0\0\0\0	\0\0¤\0\0\0\0\0\0\0\Z\0\0\0\0\0\0®\0\0\0\0\0\0¶(\0\0\0\0\0\0\01\0\0\0\0.\0\0¾2\0\0\0\0\0\0ì\0\0\0\0\0\0\0‡i\0\0\0\0\0\0	\0ê\0\0\0\0\0\0’\0\0 ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Apple\0iPhone 5\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0Microsoft Windows Photo Viewer 6.2.9200.16384\02014:04:18 00:11:21\0\0‚š\0\0\0\0\0\0>‚\0\0\0\0\0\0Fˆ\"\0\0\0\0\0\0\0ˆ\'\0\0\0\0\0 \0\0\0\0\0\0\00221\0\0\0\0\0\0N\0\0\0\0\0\0b‘\0\0\0\0\0’\0\n\0\0\0\0\0v’\0\0\0\0\0\0~’\0\n\0\0\0\0\0†’\0\0\0\0\0\0\0’	\0\0\0\0\0\0\0’\n\0\0\0\0\0\0Ž’\0\0\0\0\0\0– \0\0\0\0\00100 \0\0\0\0\0\0\0 \0\0\0\0\0\0	 \0\0\0\0\0\0À¢\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0\0\0\0¤\0\0\0\0\0!\0\0¤\0\0\0\0\0\0\0\0ê\0\0\0\0\0\n2\0\0\0\0ê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02013:05:13 09:07:26\02013:05:13 09:07:26\0\0\0×\0\0o\0\0í\0\0~\0\0Oµ\0\0-5\0\0\0\0\0d_Çqq\0\0\0\0\0\0\0\0\0\0\Z\0\0\0\0\0\0î\0\0\0\0\0\0ö(\0\0\0\0\0\0\0\0\0\0\0\0\0þ\0\0\0\0\0\0‰\0\0\0\0\0\0\0H\0\0\0\0\0\0H\0\0\0ÿØÿÛ\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342ÿÛ\0C			\r\r2!!22222222222222222222222222222222222222222222222222ÿÀ\0\0 \0x!\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ïf$oE\'ô¯nr$bGV&¹\ZÔÞŽÌM#ckî mÜJë—\02k\Z×m3X5­ÌÏÂZëWÇÌÎ©Ÿ©$× Ä›@Jé’³9™dgŠa]Ç·¥rbŸ¸o†øÄeÿ\0\Z­4Já•Àea‚§¡Jó’Ôï¹©Ú[ÙXLa/J˜•¿v[ÝWô®{Ãåm<ÝIþôYÛùs^*·†§,áftºwì›h»ŠHOr>a]÷‡5?Qš?³]Å!\'î†…vGs†¤\ZØôÕÛ\0“…š+}È½‘æ\rªYÜØNayLvîç§¥x£ØÝNs¼Œ=B×—S²”mthxcBiuÍ—p8S0ÚÜö®ªãÁÆHä×%)Í_ðÇò­.¤cRêZz?†|Eá¨æEi}®”1ÜHïÚµã×íâG¨[\\ØÉÓ÷©¹1þäîÆ•Íxç†h|È&Žhñ’Ñ¶êD”¦¹1*éa·c‰ªÒu5Ãc²ç#âû¿.É ™_‘ì+ïýBŽÃK€™®ÊQ÷R1“³0È\0sRØYüÅb¥yWeìd¬÷=_ÁšÎ¹wc4W:•Ì–ÅJ„‘÷`{¿­Õ\rbqMZLê%ð]§˜¯ïÖk|Â–_Ûãç™ØËòŠáöO¶\"ƒD·²ÉoGÚT·r*IPw®}Åh—.†OQÐ<X {\Z«®]ÙXé¯=Ú£G¡vîÜO@(¹)jy½ó‡všM<älXúþ?ýjÃ—ZÕí\\·Ú×=i(©\r8—ôßËŠ—è\Z2pd^£ë] ž;‹tš&Ž ©õÅ‰¥Éª7£>ec…ÖœßxŽ;qÊÅ…?ÌÕn}÷«û±(êkZjÖ@õ¹”ù8´, ,Š rÄWCÓB#ÜõkXF‹àï0q4 \"þ=h­e>[#™.mOPtM‡§CUL\0Ó±ÐŸf<Ui´øÜ÷¤ÕØ\\£.š‹Œ0Éè+“×lÚmbeÿ\0Qn‚@w=ÿ\0ÿ\0¡VsVF´u‘{¥C~J$ 9<\ZâµËkìCw1ºä0èÂ³ƒw:æ•Œ	R5™Z,mcÈ®»B×-¬cžÆw	j^2Ý‡qþ­j|Ð9£>Yðå™Ô®®¯ÏÌ¬Äîy5WPðÖ¤\'–TQ0v-ÇÊy®EQFm<¼Ñ1ÍÌ<\'?ÄµÓøsO7z”)·å]1´¤Œ¤ívÞ\'½†\'rmì£‚ÿ\0ú\n)VÖV(û¦—µë¿©»±¹\"è² ³dÞ³äàc¸5v/\\é:u´ž(Òe±šl„òXJ€È‚/zè9š¹‹ÿ\0	þ·w|ÿ\0bÒ KPHkØ÷Ç£gâÛ¤»ŒjP‘EÃ*g¿@GëY©š:VE?øÙìµË(ì¬d›MVÙ-ùSå=”ô8úõ¨u\'7~\"º*$1¢¨óOÝl¨ÀZš¿ðëÞ3-\"Õ¾Ü±›k³+ŸyÝŽÜbã6+Ï´’(ób!”Ö1Üë’Ðñï³LŽ0YäJ³<Ñ‹[£,@´±„ðs]Ÿ8ä¬ÎçáãFt\\€DÌ2Š»8á@\"¼Šÿ\0Ågm?—¤Ã9UxQìVºøGô›Hw¥„ê2J®Þ\nt§Ê®e[tŽjïÃ6ÅÞDˆ,XŸsE9¹JW5„Ôcc\'Æºdz­¤21Ü[Ê²Ç\"õR\rpK¬_x›Åmwy7Ú\"…<¨È]ªr½zrØã‚¼‘ÖÆ#µAõÅ:yc@pÚÀà\ZæGe“Ð~„ñëšmÇ†®eŠb–9oùç»$/¾Wÿ\0¬û«˜ÚúYîÅ,vÛñÒ®néQ¤Í;ØäÚ}qŠ—X²:¼pŒl?xûVQ7’8	ô}úËÀ–ÒCo±2}ÐÄþUÂêòF\'‘!9ˆJÛ¢ö®š.ç-ukÍðóÂ¼euæ”šëtÌxÁ8˜®’/]A ùr¹ëJæ¯C™ÜTëòèuÚ=šÆ¡šN@èj{Ëƒ$†%ÆÀFO©¬aEÇp”¹¤DØÆ(­´ÎGX?èî=«Î<=µ×n£!~k0„ó]]•‡E]Üê¯|?a©¼sÎò)ƒ\r®Tñô5[R–ÖñœKsk7)ÆÎ3íX­NŽ[³”ÔaÔ4©bd–K›ŒgUä¯\\œU1¬uvžíSÎV*Á¨wÜQi;1ÒkÙI¶ß”^\0­=;Ä7\Z”ÂÎ+GžIM«ïS\\ôW5õ\r&I4©ì§ºnš2Š-åûþ¯*ŸÂ—òÎÖkjK$§uÎýª@cÚ¶„”49ªCšÌö¯êÑéZ5Ž™“„·…P³?R5ÑÛêðIê‡½¥Ì]lÅp|€}j0SÐuªz£=˜ó‚8¢¢Æ—8-Jc4-­yÅÖ«g¦øLï\"LÌWoÊÁ_Âµš¹­\'c¦¸¹šH[ÈTí¦k‰Žç\\‹\\Ž[‹“2¼^ ¥Béô¬b´:Ò¾§S¤]HÞ&I“{,JIÂúö®{ZºþÓñì¥L*¶á*íËg¸­anMN:­óègÚ†¹`Ø\"½Â¾V£]ß…`\nÇíšÊ+Þhénñ3[Rs&v?™«	#(ëów>•ÝË°¦ì§9æˆu)ž@¡\'¥8‰´z—‡<Étd2äüÇÚµþÌ1]i{§—\'ï°òp(¥aÜòëûãm‡nq‘Š­¤hÚ‹!’´ÙRüÀA’•†{Æ=¾•WÖÆÍir„þÖôG®5Q•*Ád\n=EbÞVTsi¡^A;™“îÖ\\º1«djø\næÓM·¿‹VÕ­–êá¹Vb¥O¦zb°õ¼¶¯wöiÃH\0nÝW+ZÈ\'ë³(i6ý£&æ/´®O©®ÂE‘ô¡i\"“.÷-éíYm#I-2SæsÕÏô¨dºç±o°lImmqy\"Ç\n;³\0­wþðWKOåãpˆu?ZÞ”ÕœÕªYXïã·XÑcB¢€ŽÂ¥ÛÅt(iQE+x®£(mQ ê,Eli—\"Êú)Á\nFWqì\r`Ý¦vÆ7Ö@±ÜGËyOr	S#/;IäN“KXme·µ„[4Ž\\°Ãn\'©®›]Êv<³]øqsw¬Oq§Ïo“±.Y¹Sßÿ\0¯\\—ˆ4“¡øŽÙ#bðI	\'÷ñÁýk.V‘éNºœcÐÞ°Ô,²B•Ý[¹Cé†$Šh½‘ÉÀ,Ià\nÆl‹Ü™lîe|H6ƒƒïW¬ô›ríæ¹b9\0wõ­)Ðî&ÏBð¼–VQ…†ÑÈ¿r>µÖ¬Â@H÷µÛÊ’Ðå«`J‡ƒïS,èÕ‹9Ú¶ƒ²L\Z($ð;Y~Õ¬ÈÌsµ™­J\"–Û¶|§æô®I+Ìô£ðˆ¶—ðù¤xB…Y#m ’{æ¶¦Ôá[wHšD[yL,Ó)äOP}k®=Î9Y”–Òåæºkõ­÷-cnJãœþ5Èx¶ÒØé“Ásx‚böóÃóO¨ëS%îšÓÕØá­e´a9Š\"–ünžO—y™ô­m\ZÔ¥ÁšQò&qîkk$u»îÍÛ‡,žha»½WG}ë ûÊÀƒ]ˆ•M=¤y	V½©í]F—¨	$[¤òçÁô£Ú¶Z!ÍhÍÅ„ÊûÔRCÿ\0â\rf›™!r¤ò+9£…«²UÕ™zÑP‰å<OD™›\\ crßwW±›9‘¹VR¤W,¾3±|%ë	…ª[$-n‰~Þ9ôõ­95˜¿´míâhçóù¤|Äg¦+¥|\'$£¨Ë‹k–˜C¦Ê[³´“MÞfz€ÙàŸ¡®#^žóMMGûKf¸0€¡IR¸#êþ…M¯tÒ†’Hó»fÞì\'Ú>KhØ1_aÚ»\r1æ¸†/9Q@j¢žŸ­aJ\'§]$Ò]Y\"\0`¨Ç4Ž(îÜ5º19åù€µŽäí]BÙ­õ’_YafŒä‘ÔCZEßB\'+jmhú¹›Î6N¹ãßÔ{õkS·IÌ‚sØ3Çµ9jsµiÛ\\{ÑX1Xñï]É6»$¥‰”¨cëž•ê¶äIic\\²~ñ×R)3Íô»˜­<A{\rÛÝÏ™YB	Â€ ôÁÇóÚÃâM\"ÛD@‹wq®ño¸1ÚŸþ½lª[@­„wN;Ó<X×^*½¾7F}5 ÌQÆŸ,xõ÷ükŒñ_‹-üMp–ñ@vFÅÑ›Ôuý(•Ot¼>ûTßKsÚùþÎŠFr_ð­»I¿³,£¶˜ÜbpêÊßtý=>„TÂ|¦¸…z­[Íysn’ÙL\0@\rÔT`ÞCi¢#‚ß{‘Zè1Zšö—	~‰,L7¶E÷½¤ÝÏ£Ý)S˜¤áéøÕ%fCZXÜºŠ7	}kÄNrGüójØÓï„ê°H£“ù0þ†´ò9í¥Œ\r[N{MH…‚R]	ùqê?\n+­LäîÏ0·c±O)B´XdOñ®«KÔRKt õ\0×\rîÎé.§›øæÎâÇ_’ö(ÙgÚÅ»oïU4‹›yn’(™Ê²ì›î“ŽáZ4va«®G	nuZŒvÖ—ÚL×Án$œÄ‡fÐ¼áº*Åkm6\0nqóÆ®±\r»„ŒúÕ2ZŠ2”3*éòElIç,kv\r<jªà¸dgÞ¡÷1”®ïÜÉ{=K@º&Þr-äaòîùAþ™­í;Ævâ5º€7$|Ë×ñ®ºnè˜£´ÑãÓ<Sk4‘CöKÈÈ%£ùwÐûÒ}’ú\r»”£Cu÷ú×BÕ\nÚØÓÓh^HK~é›­ØÖ¤7qÃpaT!I:ú{U£7H¹ây¯´	–-†,˜Ë6Õ-Û>Ç½-ªhðý6êGÊRM ²¢¶t×Ž‘;Þ¾Ù¯2Öf÷æ‰§)‚îÊH.U\Z]­»§5æ~\"ðùÑïDHÛ —-=@÷­tw7´î—M‰0K;m`\\¨e=IÇ·­/ˆ„-o†hÙƒŠ1ŽsÙqÚ´µô!MÜçeÒ.ÒßÍ™d*pp½\05Õøzä(Ôÿ\0\n…üª+FÈØ¿ªÅÅ«!ç# ¦Øé¦ëNŽ+ˆ†Á‚	ê(¥+&Rv5të¡§xŽÇÉp¶ñ¡IPwSÅw:…±óh°C}EuÑøMZ³^dÐÈˆ³³\núœzÐqÑ¸Ã/Ý?îÖæ5#ÔÒŠò \Z	>mÊçøÁíE$gì¹µ<>êÎk[§È!ÃŸZtwÌLÛz©òæ¼éÇ©9t5 ¾i.Þ‹}œ°ùíW¤Ó¬n-82\' y”A\\ß—Ý¹`½¶ ´‹\'\0ô¸¦Ûxjt“ísl2(àãúV‘ÜçødX¸H6æ;(»¾PsT¿²çÑ€–=òFpÏíô¥XóDê‘­c<w$á«BF\"ùÆâ¹\"µ©“k¥ÜÜ_GpÍÄŽ¯p+¼¶¸¸6ïIÜ·ÍÏzô)«\"§+Ùe{‹‹Ù.G’@\0ÀzûÕ†¹3X$‘ð¶‘ìjî]E±hB÷VP¼y,‡9Wè¤ÈSQÐÈºÓ¡»l¨¡î+–Õ<>Öå|¢\\HJ·šäjçžŠšrýž9õÁ>ž•}õcÂ©\' ¨Z^ÓÜ/hî.^Y~}ÃŸJÖ1ŒdVˆæ›¼Žy/ímõY,e„FÎÄ¤ŸÂç®\rh¿•äJŽ€³’œóžáZ§}¸>hœì¶÷:V¢ŽÅ2”_n+nÎA©Œ¨ýÂ»jËÙûÅÃDmÙG›Ì#%.~¸â³ÿ\0µ#žù4µ$\'ñJ­ÑÇA]IhD_¿rôÍ,kr6[vGqô©tÅ—VÆTºgÔPm?#¥ðÜYGQHÀ÷¢¡³ÉÄTýã2b£h‡¥bŠ9ÍfÖ°‘DŠò|ÎEC§ø|ÜáåÊÇØw56úðXEm—ýéâ Ö¨G?â=ûF\rÐan#!‘|v5…c®›Plobu™Ër vúT·gszR¶‡Ekn549>dL£\'Óÿ\0¯[QÅoii\0Nüó]×S±laëZ±É§éì<×?¾îO©®+T¾Ô4—K²	 B	xú®=jkJÆ2ÓS_Iñ¤zœÈZ	9‰aÏÒº¸žéçVÃåbvü$úÕ)\Z©«jz•Ù´äˆ’Y@$žæŠ–Ï\ZkšM˜[\r!Ž Ø¯-Œ2È²:ËÐÔËÑ@täÔes@\nÑ†ŠÄÕ<?g¨ƒçÂ¼>†‹\\«Øãn-õÞîµ™çŒN>ð‡Ö­^x²KÈv‰äáÎîGÒ³çpV:éÔº±RÍÄ#“–c–5¢“£¬‚\ra}Jz™/£[A¨¥Å–nÜñÿ\0}«°Óu9mŸ~ÈÂ`p{â´S®¬z&“|—Ö\"TôÁ†ŠéZ«žeEË&Œí R`TšŠh+Í\04 =i…\04­Fc‹›¨ékt(úzÁ¸ðu´Ùwb$ç?—šL´ùL;¿j„˜X\\ í÷Z³EÓÛÉåÌ¯ú5sÎ7„îKöàÖµöøBÆ³F—±ßø&ërI	=W }(®Ø;Dóñ?Ä?ÿÙ\0ÿá9ghttp://ns.adobe.com/xap/1.0/\0<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.4.0\">\r\n	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\r\n		<rdf:Description rdf:about=\"\" xmlns:mwg-rs=\"http://www.metadataworkinggroup.com/schemas/regions/\" xmlns:stDim=\"http://ns.adobe.com/xap/1.0/sType/Dimensions#\" xmlns:apple-fi=\"http://ns.apple.com/faceinfo/1.0/\" xmlns:stArea=\"http://ns.adobe.com/xmp/sType/Area#\">\r\n			<mwg-rs:Regions rdf:parseType=\"Resource\">\r\n				<mwg-rs:AppliedToDimensions rdf:parseType=\"Resource\">\r\n					<stDim:w>3264</stDim:w>\r\n					<stDim:h>2448</stDim:h>\r\n					<stDim:unit>pixel</stDim:unit>\r\n				</mwg-rs:AppliedToDimensions>\r\n				<mwg-rs:RegionList>\r\n					<rdf:Bag>\r\n						<rdf:li rdf:parseType=\"Resource\">\r\n							<mwg-rs:Extensions rdf:parseType=\"Resource\">\r\n								<apple-fi:Timestamp>-264753123</apple-fi:Timestamp>\r\n								<apple-fi:ConfidenceLevel>281</apple-fi:ConfidenceLevel>\r\n								<apple-fi:FaceID>12</apple-fi:FaceID>\r\n								<apple-fi:AngleInfoRoll>270</apple-fi:AngleInfoRoll>\r\n							</mwg-rs:Extensions>\r\n							<mwg-rs:Area rdf:parseType=\"Resource\">\r\n								<stArea:y>0.802</stArea:y>\r\n								<stArea:w>0.141</stArea:w>\r\n								<stArea:unit>normalized</stArea:unit>\r\n								<stArea:x>0.342</stArea:x>\r\n								<stArea:h>0.188</stArea:h>\r\n							</mwg-rs:Area>\r\n							<mwg-rs:Type>Face</mwg-rs:Type>\r\n						</rdf:li>\r\n						<rdf:li rdf:parseType=\"Resource\">\r\n							<mwg-rs:Extensions rdf:parseType=\"Resource\">\r\n								<apple-fi:Timestamp>-264753123</apple-fi:Timestamp>\r\n								<apple-fi:FaceID>11</apple-fi:FaceID>\r\n								<apple-fi:ConfidenceLevel>277</apple-fi:ConfidenceLevel>\r\n								<apple-fi:AngleInfoYaw>45</apple-fi:AngleInfoYaw>\r\n								<apple-fi:AngleInfoRoll>270</apple-fi:AngleInfoRoll>\r\n							</mwg-rs:Extensions>\r\n							<mwg-rs:Area rdf:parseType=\"Resource\">\r\n								<stArea:y>0.618</stArea:y>\r\n								<stArea:w>0.159</stArea:w>\r\n								<stArea:unit>normalized</stArea:unit>\r\n								<stArea:x>0.273</stArea:x>\r\n								<stArea:h>0.212</stArea:h>\r\n							</mwg-rs:Area>\r\n							<mwg-rs:Type>Face</mwg-rs:Type>\r\n						</rdf:li>\r\n					</rdf:Bag>\r\n				</mwg-rs:RegionList>\r\n			</mwg-rs:Regions>\r\n		</rdf:Description>\r\n		<rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"><xmp:CreatorTool>Microsoft Windows Photo Viewer 6.2.9200.16384</xmp:CreatorTool></rdf:Description></rdf:RDF>\r\n</x:xmpmeta>\r\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                   <?xpacket end=\'w\'?>ÿÛ\0C\0		\n\n\n\n		\n\n\n	ÿÛ\0C																																																			ÿÀ\0À	\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0þ‚¡…aÚ%|yŒpGjšDòb‘°þt—0L‘[ª4»‰;GSô«QÛI=ºÄÉ¹\\|À×ã	3¡œ„ŽáË:i¤!@«»D‹nÊ\n9þÒ»)l¬­íÂÆ¸œ!îšç¤‚$Øî7°lGZÒ4û˜J]YRG&ØA«±¬.‚(ÈÃ¶3ýÓUn,§–Eû\ZªÜ¹Ú:åV„Ø[‰%¡ú×m-¢Ó3ãgS0’LB%(ã®}ñZ7z•­¹ó\\4‘…\n9äV;ÜËI5äa~Ñ À^psÚ£û\\ö³«B‹)¹R€?|×G´hÝ+ljÎm¦\'ÊCò©É5nÊÎØGæ6\\LHô÷5ÍÉo5„ÐËÙ›Í$Ê§¢ñÐS­µ	å™Äxq9¾k)Uoq¶[ŸL†;¹äUÀ\'yî)ñéI2²*™Ü·oñgµlYKeyb¢|Åv7œ|£=Ö§cˆ­ÉÂÍbÌœû4VRF%âuaHÇ‘Vh]ƒ@R5ásÐ×qwåÜ\\F±‚Ñí€zúêF†Ö|[•£ë‘Þ³’±~ÓK#…ó÷HˆÎa—ká5v]MØÂÇ¾0­O}dÊSË€¿ï¶çëQM¤Ÿ)÷’_ý‘ìi.ÆWèIc®=á„ªÝžÞõÒO¨»:[Å\'Þ_â>ÿ\0Jóßì¹,œQ¶mÀ’>òö­9\'¶`¹óQìœÞµŒzÛˆºNÉ$­è ÿ\0\nYáá›;ùÀ¹ñªJ÷‰>g„»c¿­_ŸPƒ<¿¾Îsè(ä¹´ˆ¿l-oHƒÀ3XëºuÌöSËXw›!‚É\0.xcžé_ÊÏí¨øXÞ$ˆæ4²»‚8hÁ…IèIõ¯ê‡öÔÕ-×Áú}¾ç2K©C<J£ˆ¤ÆÝÇ·?Ò¿’Ÿ—×z‡ŒüDÏre»mVpÌÝÊ¹úsÖ–%sPöoÔû>\ZÌ*ÆQ¡N7»×Éu<ši¢¹Cºmî÷¬	4YŒ“]n\nÝ÷5¨Ö‹iiºÜíÊóŸZÌŽ[ÒTO!x‰Èô×‡ì™úÌeecSŽW0jM?Éb¡\Z3ßžÕRSÛ)¸Q!+ÐöoX¶–æ6Š9<´f›Ö™§hÎöÅ­ÜN9É\'æÏÒ«ê‘IÕ{œ²Œ}¯:Ü¥,ÑËû•§¯j,ÿ\0Ð‹\rÂSÒ‹…·•Ê\"fEÀ>ø«¦?4Fá„hoÓÉ-45Qvr!–îêÚE6 21ÉÏ­k¾½<–Æ$³Øà×7m4ÑÝ,s¡{q!ÇÞÑjV0Û¤Û–·.IÈ­iI%bcRN7‰ËßjjíÑâFQ±O½Ge¨On^[ÔY[Ë%OÝ\'½X¿Ò×S$º›&\0IþµRâ5¶Ø›vó¸½v§¬fñucï\"¥î³5ç‘¶ß;0eþÓ3GlÑ£LÛDmÎ;Õ{‹½…V8ÑÜnÇLúš²~ÎÐÑ²í\'pjê¥YDàÄb§VW›Ôç¢´‚©n…°[ye8cÛ?ãS›IÃHR<µ]–òÞxVÝîöŸ”÷ªóÈb{FcòïÀ½mí5ÎG‡Œ´ln—4¹»Ðl¸8Éë[òº­Ä3ÛîŽ4$c¹ÿ\0\Z m¢¸»·™¦kt…·mñVmõ2æéÚHdb¹#æÕ‚f5p±0ïoÕnœ3:¬ãÓ êE„ËmyY>Îï*îã9í[7&Ú%Žåc-21\rŸáŽ÷*ìû!Û?JÊœb¥r)ÓŠ‘ZÞóai<Ü9«+xË›‰\\n<b ûåÕQE19©oa·\'#kÈ\0=ëÐ•TçÌÎª‘¼®d]K-ÄâdÆÔëôÍUºq©Ms®ô¥jÏoæ…Žßä…[¯÷‡¥6Sn‰`ù7‚2µÛCË¢9gsa6W,Õcóò¥ª`áÜ<¥FÓ¸Ö´¶óFË2É¿Œâ¢x’æ	.öÉmÉ@~õ{ðªùt8äôµŒ›XÅ¼ÌÉóí¬;¸I$íÈ$T^(€¬QNþsØTÖ³µæøEEUï\\Ó\\Û˜ª–0íâwmÃí2’£w¥,w/	šÖâ,™“†_á?áSK¸cœÛð3Ú eÜç!¯^ô¡æN«¾ƒd)\nþù¼»‚\0R;RÂÏ±A;åe<š‚uKÉ3˜ccwcSAn`(Bý× êèpT“Ü€¼¹ÆÒÈ¹äÿ\0\ri™Z(uË#¸¨#Y„Œ1ò¹Ç±É`ž)ZIŽQŸašÎ^k´sÆ¬ž¨æõÛ†|Å´˜¤^1é\\ÓZ\\Û*\\Â¶zJèµ’cÔ D…–$6ÞÍ*Ln`}ÐÃ^†\ZIneVR’ÔìþGk¨ø‹NfËÉu\Z7¹Ï5û5àkXŽƒfòÚ•gƒiÇÝR8ãÖ¿#>ÛJ¾\"ÑÞÎ%õ$C»¢î8ÉÇjýŠÑtû+8\"AnŠB†lr:üWÅ|T-Øûœ~á?RùÓí«-ìeÐHc×Þ©Ü¬SBýœ/©à{×M¯”§_9f`{\næ®f77ÉhÑ•Ž8Þ¿4§xË™GN|¤LñÆWóLm·ýÐ}=ªÒÇ4Ê·q¹ò±µAöëùS&ŠÒÕÚ0ßƒÀàTöÖMåIr°–·\'$/Sï]1«-Ù¯%õ1nã{Çh<£;Ê1ùÕûKÓ¡0$†w•‹³^üô¦E:™¤Hç’Ô\Z•®˜:=¼‚DÏïAïŽÂªUXãJæäb7E‘%kwdŠih&gC	n¿{ ÷ª	n[t“¿“8ÇËÔýZ²Ú„ðºÚN q×ëïŠâ–÷*Tî¹YbIá’K}Ò<_)÷5‘kÃ	%©ˆ6\0ªÌ7³A!þÏ„n˜ü¸éïZ2˜RàA)(×=8Í)b$´9%„îX‚/\"H·ÜÇÆ#Û§msþ~NÓàù¬ èÎ^áJÆ2£–=9«ñZ †+…9i\\äœW8òÉ´jE-«5Ðy&,6äc½^Ei62©¹^zNŽXbØ¨¸ôŸ=Ô1°Þ6y‹ËzzºsKrùz™·;EÊ£>É8ÚÞþÕfXçÕ¢báF_>½xª·q[êJIµ rwŽ§Ú¦±WjÄÃ’oZô)é¨:fTºuÌ¾uÝ»‡‘ÏFéžõkE³º¸yî$¸;Uvm=ãZåšÐËºÌüž1QGv‡Z§”¬H<q]N­µ´¢ y\'Ê&{šÊ}°IªÂ8¥`3Ñ½jÔæW#—1ƒÒ’R²ßIiÊÂ—íÈþ+Ï©U±°‚ÝžhÏ›²\\`ÿ\0Z¾»Ï1®HNO¨<‘Âª©æ…ÜnõVÞ8mœn”³.pÆ±r%ˆ³ÎÒl0WÔÑ=Ì±n\0~Z¿›ö¥%Æ[8?Ý©ÖTx¤åÎ7w5p—CH3š1««)>Qea“ï_ü]?¹¸ŠiHŠÝˆÈìsýkìÛÙà[yß¹ž}+àßŒº¼’Cxbƒ{½À;OSÖ½¬’Mâ ¼ÎiË.ÇÆzýÀûk=›p9þWÍß›Ï¸Œ³(u9p½½+è½V›‡Ð„\r“Å|µñ–;¨áF-7%ÏÖ¿ª²çj1‹èÃó_Þâ\'V+wsË\'ÙdRv“Þ£7oòÃëŠ°Å#lHøÏ=ê—t¢A_¥z\n7<¾[\Z-Ø’JûØšU‘_\nlçš‚&r	oF®2 Uy­7_ ¤”ÚdmÝ€ô§ˆžß³Ì2Žé`Ficf9…k:¾	=j%ätÁisÐü¦ÊdQ+mFPß}û>èòß|døkcjÎ®þ-²–\'Œd£¬ƒWÊß|»¹ÒÕÌ&2 á#¹ö¯ÐØŸÃ×Ú§íá¥«]Ûé×M<®7\nTß—*8¬uêV:”\\ý.x.Õ¤ðõƒ¡”ùQÆ®²õÞ¨3^£¦ùÜ´ð!ynU#-Ž˜õöÀiqÜizM’¾du†=Èwr~¦»m\"ì›¨äxÌz`ÖGÏÉjKñQðKÙ²‚.®â©ù‡óÅ|‘<Â‘QÜIÀ#–#®+í?Š>¤Ak}¦‰ ¸ûí\'Jà‚¿­|³<pÝ»B B&A#•ú\ZøÌÑÿ\0´HõðNÔÕŽ2×ÅW’Ánå—ÜsŸjÛµñ0Z¢\\Èf¸ÉŽ0QÕ|*ó;E\0T#$qÏ\\×>¾™Ø*<N/ÓÀ9îw¶W‘êÃq\0ýçñžâ˜ú-œÒ¼?kâLÔãÐt®F!{o+DòŒÄÃoµHÚ­úKñB¤€äûzÕs38\\Þ´µŽf´n&bÙ|òOr9ëYóøNþÌŠ€+¨8y­\r3^TdmFaåÉ)b½Nãß5×Çâ]2æ€gqïü85¤e}Í¯¹åÁ­i0N°Ú™Vb8jØë:£@`–!†@ûG9oS^©h¶$ÏÊŽ0äñS®‡b—7¾dY¦pU‡sõ©”µ$ç´Ú<°Û	ÈÂºX¼L÷÷°;\"¥´	³hêß­G\'…­üŒÛ\"Û˜ÈÜÊN}«\n]æÕËBL‹ž}Z‡P¸ÎÛ’ú®œÑ¬Q\ré7\r‚3¥f]Øi×%DlX*F:­yí¦³o¨a-åŠd£ gÜw­ÛKëØ‘7³K&ìñÓ&±4ÝÙ2ÕÜÑmä$r”Büb›wouk*$qÜì¦jõ¶¦cMÓ\"ÂêÄîç-Ÿð®ŸM¾¶¼€<ù!fÀYyõúV.š3ŠêgÙë,,!p,›\\ú‘ÁýkfÛZwHÈ“÷{‰½kHhö·Ö±Œ¬¬%Â²·ÝÇo¥Um;©Î\nGn£ˆ¿Æš)ÄÒ‹XIÿ\0ytøä.}\0¢I\"šëÍ´h?ÅXSèw©*Io\"ù88yâªOý¡k<PBIFuè\rl¤–¨å©Nç{FêÈN$”‘º¡m:Ù¦˜OiP–þ3í\\¬\ZÒº8|Âºn&\nÒ³8ž~j#$\\$Ñ‰q Â‘ÌÅC¾üˆÇjÏ¼°»0À‘©óQÉW;MwP\\éÓZÍ3\\®T³ûÂ¦7Æ. rËÀÚÝTñ©jû{Wku`×QDí9?4„«‡ÄÙ~X†€Ä»7 çüú×s}¦¤±À×VââPÙU\r‚sëíøuïYÒè6ÓDð<k±òJvç¨¥\ZZ™ÊZŸã;[ç*ìGìç¿ ­7^·‘§ò®G•°,˜=uÍyE×…–+Èã·‘¡h™Š/¯E Þ[0H¤‘Œ²(à\nì‹hÂ/±ìV·öÒ4Ú|6Àì˜ÏLôãÞµîb³¹·†)bËùà?û¾ÕäÐjgK¸hÉ0Í\Zä>ö}jsâ]WíI3/›ÁF^gòçô­%W¹¼eÜôÍ	#Ûgp8a <Šç\'Òœ½ºÆà–•Ðäß~kVÓÄm*$·W!rŽ‹=ªÜ²/š IýÃê{×,¥sNdspi÷Q¼žh\nÄmã¡\'°¦Gy¨ÛÜ%ªÀRØ‚rˆÿ\0:ím5?’e¸³]¶£ç§áVg°·+HjÇ?LÔ˜œå–¸‘ÎËuy†ÖíŽõÑ¶¯êŒbH‰ÉÏ¥dÞh+pKv$À¥²1óJã®lµH‘àÝ-šE>óå’<Üý:Ö”ÀôY †ú?*!öA/Ë!ÏoZ›(|ÈïYFÀÇ©^Õçw:–¡hUæ,îà`¦£¸×oaØÒÂË*bÎ)J¡\\Ìïî~Ìðu·c°¤Ž3õ®{SÐl¤dxÕŠ“¸ƒÁÉëëN´ÔÓPž)eˆ	%@ /85´%†åãó.>@\0\'ñPª¶Í•IÔšçÉxËO©,ŸÝ€}³ÇåP¬ZÝ¶d{/*Ýµ³œ^¯d‘¬r£lpD\rì)ŒË{äÆÖÅ#”v#­tÓ™.¬ºžO/ˆÞC<$ª08=³[Öž\'˜Ú\'+;·#w\\ÿ\0ZÜÔ4\r8>n€àcÔ7¦kŸÂþL²Î§ý°v¯9c[ÎµÖ¦J=Ž…µ¤ÝD7nŒuõõ®ÚÆöIì$y +¶!…Xzþ5ãSésÛÊ©÷q’:U_¶ÞÚBñ.é­ÕJ‘Ü×IßAj™ëSßA¨$1_…¹KF&Ë,úV]ö‘³)QÁ	Üíï\\N•âˆÈ†D\n°±#ðçñéZ«â}&âédµ¸˜É{ƒ‘±H<õù¨nû‰\"+ï‡Éoiy-¬‹Üö®ÊÀŽ™Ïzâ­´D\'yäòM¬[ŽP;W¹ÜH\'ºD7!â*>pzñO:rD ¿Ùõ©jû”|ùmâ-NØÅi°6lç`åyçÚºsã!-ÒÝOIr‘uN¤üñ^™.ax²=Ý¶ýèT‘÷—>•ÎËá\r\r„E’k‘åù’s~1UmL§.¦xšÒöV„\\±rLmÁn>•ÖE¨ZÝˆíL{ÄˆÔÿ\0ÑŸÏç^\rD†ÒKY¤ínË=}øéYÚ­¶½¡ÁöÒÓÛ:Ëû¦9åØu¼Vê£ÜZ½|imk6¢ÒÚ¤J6vrJäíÑü©WfòÀÞ®	îîæ[›èÉó8féš¶±Ilæ4mË€ÃÁ¯æ¯³ITÇ:Kd’ûŸùŸÐ~å*8ÖêÛf4vs[)•æY˜óòvúç®ÌcJÁÁeNj[–xro—8Á÷ªÑyH¡-ö.îÇÝÞ•ù\\§ÊÒîUž™ÉRaØzuRj{{˜­­Ö0¦IÂá:€i‘Ø#<K%ÙŽÙ¥Üížpk[Áms$XdSå¹êA®*õ¹®˜1·’Z¬¤r\'\0˜ëÒ¢kT•PFpb9U=ô¤š”(|´|LÔ<1ÌŠÊ%hÀ^Œ+=,l¶ÐÎ‘Q#T\'tÉ)ãÐVMÔ—;”[¹yHÊïs[q,3ÂÌÃ8=È¢æd³EVûîx­¥&Õ™¼bÌ{›i–Þ9Ba]‡Ê¿Â{ûÒÙDËt’9%ƒŽ§è*òÝ;ÂÁ£Ÿ {\nž[Y-¤†åH*#ëžC±~\rBƒ\"›\ZÄÄ\rÙæ©ý£Êic ’ˆG\0ŸzT¼g)þè±ÏÍQh¥Øù‚wŽB[#íYK%N†(«óUdX–ýñŠÓŠÕàDI$Ú{‚±c¸N>R²;+YîßÍf—äxcÎ+±$R[iZgwo%r@Í_ó~Û#Û°ù#\0`ôÅ$Q¼‘³;î‰ úŠµGa1&æn3é]4§%©jE(¬öÌNæ!¹Ó5¢Ö…­|¶Ož\nÿ\0QQ	g1ÉÍÿ\0s>µvÇíK%ÄÓFªŠƒ9Ýøz×]\\eIünæ±­%¢2îmBù»¢…$}ê­wgo5½µÊ9i\\äc¶=k¤da.ÛÌŽCòä÷=…6TµHÀÈ³ûÀŠQõdÊrz³µ°û¢ÇÈÉ9üjËÙ¬Ûòü VÃD²#G¸ª“ò°íP¬’bç|›@Bœî®ÿ\0¬Ka:ò(ËÇ°_–t:\\ŠÏ<Nc.cO4å½A®ƒìÈÿ\0g”…ÝŸ|Ó®RŽåxÁ=ÿ\0\nÊ·,ÝäsÕ—6æSi¤ÄB§ír[ê*C¥ÑvlXþÿ\0¸5¥kèI na»ê*µÌ’üî£$6ÖÏJºT\"ÑœRNå…·…¦ŒY&Ø\rÓš’Vº¶¬“¬LË¸Ï–zÆ<ÕŒ3áXöê+âãÊ™¢ÉiÜn…a‰‡2I”	müÄ+#îGrr;úqÖ›±‚àÊ¡ÒÀÿ\0lcùþtËSqu™„*›={ÖŸÎR¹R\"zþ5Ë:j÷gS­e¡t€ë²Ú|áOñÒCm.ž†agÜ?ÙÍt³¹XvÂBÓîi$MlÈì%›i š®VÎ*•/©†/¤µg)9ØëÀ#•?áÞªyÒs3ïIŠµòI#Cgf#ÞÀçŠmœP^Ú<œ˜Y¶;öÏµfè©@!0³d¸67t¬Ö¶y¥ÈVHç¹ô­»kycƒrçöj”É2Ý!òþVÀaèk7KA¹Žˆ*¿<õ¦Ï:FbÉ-.3Ç ª×0L³!…œãÐ}iñÇµçšqÁ@NzqþF„or½¡¤º„„Ff™Uº.î?úÕEÌŒäÇ\"ÀÎIÿ\0\Z$ò®|/’qœ÷ªò„@å-¾8ò+Õ¥^Q\\¦>É6îXd‚\rŽó7˜$Ü0:\Z‚þ%Ô|—îDf$ýk_	]„ÒŸ!$8céQ‰ü×/h7BŒ:ñœÕJ§6çM(òèrƒ€K&ì=«Cä*$aû¸›q>Ÿ…ei;@ðCn¾X˜¶@çuÞ)\\m%Ï5‘»+@à>7œHXw¥Ž`—!2Ldz}ÓR¸ŽYœ\0;V¬¶òÅ—ùŸwB+Ç˜â¯b´ˆ²Bï ,Êr1ÛëTZ0auPyù±ï[ev»–Ï’SÍgy¶ëpÊ(•On2+xG©ÇR™ÌIkæ¡ Âs××Ö¼¯]øaá\r`O­áø®å–Fuç÷oÙ‡¸¯}Ž%e™ÏÌ¬˜ìk.kfË²ñƒï^Æ,=ER›Ôå«…SøÎÿ\0þÆµë}VÚîÕ¯cb¨„°þØÏû]ÿ\0\nøOÆßðNÏØ^ZCá­NÓ[ÒõcçÌJ4OÝÇÍœP>•ûÜºW3²\0O(•cXÏ¢G\n¼Iæ«¹Ê?ðjý$ñ7º¤ÓO£_ågøžn#$£Q¾xÞçóãŸØ¿âÿ\0ƒ]æ¿ðúêÅ+ˆçµ‘ð2pÎdzšð½gáÞ±§Z½åå¤°¯˜c,q€Êz{Šþ¸®ü3§Ì·wPÇµç9ÿ\0\Zñ?\ZþÍ¿üP¾£á;3¶1º$k´/P@Æ2+õL§ÇJRŸ.*6^ZŸ.\0¤åh½åb=%\"’_LÔqY½¼l7Hz\nþüyÿ\0ñð´°ÝxWW‡@’+?-#–3ˆHôÁ9èµð—Ž`‰vŸm]WP¶K–Ùµ¶ÈÊ;í#w`\ZýânS‰K–¥›ï¡ó9Ÿb)Iª^ôV¿×Có¢ygž\'[w¢ãi=qSéz¶¡kå´glÐ6Dž•ê¾\'øñ;@¸KwðF¡å4†2Â\'à_—¯×æWZ|š|“Aå˜Þ+\"‘Ê‘ë_eN¼+CžéŸ\rŠÃJpš³Fö™ãísFº{‹öY§ÊÉŒe‡å_tü!ÿ\0‚™þÖ_.¬fð¯ÅÍi¬í£U0K2ìP§ŒÐ{ŠüÚšà,È™%EP–îææ	ÌhQ1Ï°ª4õ<Ê´SÔþ§~ÁÁ¿¢-¾.iPüFÓ¾ÍvÌ%Øñ\0>v\r	„~5ú«ð·þ;û.ø¿D’ë_ñ5Ç†üK˜ÓÈ»„”ºd‡Ï½>•üY]Ý[\"2NpªÖ·—ÆÃmœ¤‘¸±\\ü§=kÎ–\ZÍ´yËù9¹zŸé¡ðÓöŒðWÄô7:Ò5ql®¥$UXôÆO©\'Ò¾„}^ÇM²†âóQµ‹sÊ$_œœq_åÿ\0ð×ö…ø“ðÞñï¼\rãßÉqû¹M›`L£¡ ädvé_¤ÿ\0	ÿ\0à±ßµoÃ‹m+K¸ñGü\'ú>xe¸¶Õ‚î»^>PUT\\O½B¡+“õY­ï}jÆê[w´º_=&$íôþ\\þ5›«xÃž%Ýˆôû]zÑ†ÒŒr$Ü0C`þ•üÈ|4ÿ\0‚ìü:ÒôÅÑüiàX¬®ÌÉ-Â™Lq4Ýv`³nOwÁ¯¥¾ÁC|ñP»¹ð×Ä‰uX\'C<)ä„òØŽd@VDÇLqÇñW](É£ž­F¾#ô¯â?ìû*|Mó\\ø]i£?˜Î\r¯³êÔ×åÇø7×à7Œ§mÀ:·Ù<I©M ÚÊ\"KUr›Ir­×ºsé_¥?¿jßíí>êmgL-œ¡|Ø]LrÎ<²Ò1#¹èE}c¢øŸCÔ\'†{kÑ}¢?Èx0Îé‘[ª–4Ž+¹üC|nÿ\0‚~Ô\r K¿†Þg}IáÒŸ,¡Ñ1ŸcŸ­|)©þÆßµg…õ[ÝRøG~/ô¶E* îfn0•Iüõþ’±ëKl™öF¤þï³Cìk–Öl<ã·Ÿ_ð¥®¥4ÊLÑñŽ™0r;ƒï]ñ©ho\ZéŸç	ã¯Ø—öŒ·ÑìõCáü×6rLQ£¶pÒDÃ®äÀoÐ×#áŸØö™ñRÅq¦|:½¶Šy6¯ÛÆ\'\0’Gß¦;×úøóö_øc®Û,z7šyFøIÞ“Ü–É÷ÆûÕòGŒÿ\0b/èócÁZì:Å£nÙHrÄ(;Š7aÙqzéŽ;±¼1Vw?1ÿ\0°ý¦ì ¸Ò¬žI\"ÞÍ¡ÄgÓäßþ>Õ£¦~Áß´Þ§-×c´´ÑÚâââ]¢@£$Æ¤nlaž•ý2x—Àß<f‹Ä\ZöŸmå—iŠ7”\0í»\0dqÅ|›ûF|QºðgÃKVµ¸h.£µ’Ü¹/#}Ñ´ö=úqšÕæ6^öÇ±„ÌëNJœ#vÏÀ-^Ñô”]&ëþ>l›PMs\rt\"T,ø|ðßÝÿ\0ëÖÖ½xooÍõä%ìòìzêMV[8®Bª$\\û×æøÊÎNÝÙ\'ZRI2ç›yQ0;ZSŒ¯SF«\"G³þbÝ&˜Îš~Á1ß‚psÈ¬‹»Ã1§*Í¿ZÂUÙ…J³–åÏ\"a”«:÷ëŠÏ·kk8¤ä ,wÞ›=Üqykt¥ÎÂ9ííô¬¨ œÏ½HHØä¯­ªå£\"šÖæº›uMðÌ|æbÙn1UÖ	™™Ã£¹$zY/%¼vgc{tÚ„xïYéz \nÜ÷ª\\´+ë\nž¯©jìF\"ƒ1Ëp~ÿ\0ð¨õ5j&XÔnÃ4‡z\nÏºw¸¡LJ§9þñ­-9 ŸÉ[•>rIÇ¡®©NN¬ðq˜(U¬ç§aàÿ\0Xø£XÓôBYÛT½DdS‚ÉÕ¹9çn{WÓŸ¶‰æÓì|%àèâo/EÒáHe?òÎ ›V0>ƒ&¨~Î	¶Õ¼RÞ%1Jéá˜¼öhˆÄgœ1Ï^†¾{ý¢¼cÿ\0	?‹|Kz/d»–	Š$Ž0²Îôtâ¢ŽÊJH¬Ë\Z5Œ¯d|ã[ñ¨nD:7ë^¥û*ø\rüiñoÀº0Ô$Óïo|@’\'–lÛüàñÎ;×^Ou4ÅÝ	ß!?S_®?ðL…w÷¾4Õþ$Ìi\ZÖÐ8v÷‘pWqázòG8…}•rÃ•t>S%g\'ØýÏøw Zèz¾‰j¹³Ó,PDWøGN+Ø´«†¶…\0G ç¯5Àx~ÎêÖÖ9%˜q\0\rƒÇÓð®¦-I‹By~XáÇVÿ\0ë\näå¹ñ	BÚÜ2$è·ó<lG…Isòœ’¡Bd.z)®bÚæá¤wØ#‰8Nõ½c©­É$9À*Aô¬ý‡fe(EîmÛGä´[áp€û(ªò:©*¢S·’—¨kæÊãÐV¬S<p”(\\²a³ü5Œè¤i\ZQOBõ½ÛÞCòÂ|ëeÂ“üF¶­oXJ»m¸XñŽÀ×7mÊå	1£œqÚ¶m>Ì®ä>Í£$½ròØë.üÛ˜™ºùZIU¾pÃUYžS‚Õ2;‘UŒÞRH¶í4•É3O™­†§cN98¶;3(l¯Ö­.¡sp3ùk	Í%Œ‰¬1HJË$‡ yü;Sæ´2< 0ÁÇ±©u¯¹\\ï¨Û‡*ë$HdG$dõ–›Öf±.`ÕÍ«\Z…-ç;*\0rNÜg€3¯Níx^m¾cã>¸¤ê]ê)Jæå¤òy®÷*#É;@=?ýtûÅ0¾ÔßGz‰¢K¨™K	g*Oj©,WJ‘&á$E€988­\'šÇAá’(ZI?îÿ\0$òCpÄÚÊƒ µb­˜·I¼ù•d\0g=5rÊi-ogÌHÏ³\nÆRw»=ÍDkUˆ(¿Ÿ—û§Þ«Åqpì…ÕÎ¨f	 »–âFEV\nO=ù¢`ÖH×Ëe \r¾¾µ“•‰”nYŠxc\r2ñ.pÍü&® ¸užwTx‚¦Ã“œrOù5Vçìïk´N®ç’GLÕ›O9!¨Ê¶2	â¥O¸£Z\\º£Ë$&W€Õ§m/ÚGRÈÙýš«ªY0©’\n÷?…Ko\'”f½1ëRÙi–§\" C¢5Ü	î*w¸!‚/\'ÎÞÙnùúVHu9Ë¹iŠ\"G€rÄþ|þ5¯rÖFá¡Š6‚Xc›±#¨®¸iª&reãä²)aÀ\\{­U´_ô¢Îv«ÆQ}øTl³È†5ilc\'\0ûýjâ¶Äò‹¶Ä¡³ëVs¹;Ë»l\rp]â8Í=#ŸÈf`ØÁçüšÏ†m’+É°0bX¸=…iÇ\'™ }¡\"B@=êcžS¶¤¤xÐu†F*£#}*öÖh‘þxØêiŽÏ#K8>¸¨¢{”ó!Ý¼ã=n¢sÎµÍ2É,1ÚäÂ¬ÀöÏzÚÓQac(hã@A=ó×üæ¹¨÷Î‚à¾É#\'²ÖœW!Bb0J¬G´/Fù¥º´3-ªÀ¤1^Lƒ=j³h\"½‘Cûå1ME	\rz¯0Ù²\nût­;rÅ¤32–/€ËßjÞ¤ÊWÜµ+È¶æÇsÙ«ZrÍoæYd]Éx\\ÿ\0Ôâ„±ži|¨ØotÜIè+m’Ñ\Zço!FìqSìÌ*E	f™wx“÷/Ö?ß±­Hvy­\ZîhÆ>SÐçëUÙ6ºº6\"nm¥rJèª1ž2:×DbÑÍcZ9!†5¦ó	É#€~µ±imk+Ä×+óBÁ=Ç§áXÖ2Á\"I\nÆ]Á ú\ZÜ¶mPë…RqíŠèú5c¦ò•Œ-ŒÊY°OðñÚ¦\r¼›ä\\¾ÌûœUx$óG›\\ è;ã¯ã[×–1²[Ï“$Ž\0¿?á[)K—”N£ååèmØ™¦<ƒœu®›MFóy±•Ys×\"±ô»wÊ#à`’Ã½tö±¼“”Eùw~ƒú\ZÚ”lgZwV7¬‰W,{Ðø\néìd”‘•åp29éé\\Ìt€K:Hƒå `õãÖ»­2ªHŠÇ’[ÌÇéí^Í$yÕ$tV~íFÿ\0Ûò®ÃJ±¸ˆ€X©|~U‘cm(NÀÒ>èk©…<¹ÄŠŸ¼Ï í]tÎînÛYI-È¨m©0õú\ném-BOæKôuÇ=ª*6ÙûÃ¸¦N=+poeÊ¯9â´¹tàU[hd•C1ÚŒH¯²H|ŽFê­§Ìì%]¬§·z¿BgmÏåÈIÆ;{ÔÍè{¸Z‹kgKæ ùŠ…9ô«”€m\0ÔµÏ=¢¥QX¶\n(¢€\n(¢€\n(¢€\",ŠÈz\ZÂ¹Ò YBÏ´’NÑÐÿ\0õë ¦°-‘ž1[Ó«ÊrWÃsî~]ÜÝ[LÃím<1 #ÒIVÙv±Þ@äs‘ÛÉr\'\0™ÝžœÓÅ·Ù¤ŽÚLˆØƒŸc_’ªHõªJÆÜ:›µd‹ÌPÜÚ¬\"Á?žÒ’!Q×¸®u£08Û)ÜÌxíQ[\\‰à%‡˜Nìw>µirwWgU¼P:‘ßs­HúWšHíß$îÿ\0•Hjž—d„¶‰rýÀVÏö‹ìhgq\"ã¯p*­¥ÊÉµ„:„†$ÎÂåsýÜSåÒ³™_ÞB~F­hœ&é‚m„Ë×ÜÖë[-Í¸T>SÊ§nzïMÞ×:c+2Ø‘™‰ù\0ù˜ôƒ<SCq?ÙÔÜ×5é‚Å­”G:«æ>@åsY‘!œÙìØ œ95DlÏ>H§™™öyEr:µl[ÍwjìdB_½q]+iíöó,pl…F\nâÇëT%´k·º”P¤ü¿Êª;“8Çs9nÛÌÞX<»÷ã9ÛŸÖ¯[ê‘Á1YT™¦jÁ’ÒHˆÁÜò*½Ç™qäÏjªY’	éô§4`ÏDŽñnÕ\"t	€9õ5ZéVÔiÏ™À®M§ºX¡h˜, üØéõ§É«ÜR·#¿Ã«{Ô¤™n+æ¹wO,2	Êÿ\0Ãñ«&È­Ü’S¨#ñ¬Ø\Z)dIÔgàûæº{xQ¢y‹?–pTw1‰w£I02™ŒO;}ëŸ—O™òáÝ…v\r,·1ˆ#\\`žWÒ±Ý,ò-Üaáv;qÈP=khS5Œ‘ùóûeÛÞŸEpdcÜów\":ð£¨`Oå_ÊßÅ›ÿ\0¶x³Ä6R[,YxŠö Sø•$*yêQ_¶¹Ã!ï¤Kk;]M&ûB¶Z(H;°1×‚:9¯åCâ©s¨ø†îæÊHT™ž²€ÄøÔâ¨¯ewÜûî\rtÔ¥\'¿èy>¬uXÂ¾`*sÒ³$/K@ªË2}ÕoSÜ×Rú‚ZÏreUIvî\\ôb{}köú	U¼È—{s“ï_)*îö?Ku!Õ™Ö—©-¬–®|É‡¯sšè´ÉôË;k†kr%Ûøq1¬qNïÛ¼–ÏjÑûTGd·ùÎ\n;‘ÜÖn­Ìý¼.É\Z8%º™ä…U¹aŽÕMðy\n›\'?ÅY O=ã4n<‚Àî>•­*Z±ÂBc›Ö‡n¦q­tâŠñÈâë” zû{ÖûH¶ÈÒ·˜ŠÇ?v£ŽÙAŒùŒ§©ª×\rqyû–8úÓŠ7(ÁÄÊ¸É$É»x®xÜÍ,Ó‚Ù‰Â®É¼Ïöw¼¨e9ÏCM¸w}é\n„ò2}+¾ŒYçâ*;‘GóïE$|U‹Ö•¢Iƒ9UõÏµU»/i$–Nõ^yîf†>tD\rwÅèy‘=´´²3®%+À=êÔP-È*#É¶—#ýœÖ Ë‰žo.7Ú9“XrbwòcË;ÙïŠ™¶mJª›$¸Žx[&|9n3ïIÌ±N)W`x*8Ï½V¾‘Ÿìò4ŠÒFû€\'½&çeû™V8À¬*\\êu4|Ùg{‰î°ë&\0ö«{y‚˜0#RKc½Y¶#…¬™7\'$Ÿ­g$qEæ—fùI?Z˜ÆæoÐfÁfºˆ™e•Øz}k>hæ¾Š%’æ‡$H{VŒ‘Ê›^DÚ„ƒÍ=Ù°ñòÙO—=keÔ™ÎEUSfnYgî{U?:ÇyÒ±·žÕ5´qÊ²KyÒ6AÏEÅE!x¶íM¹pN;Ö±i3’s–æ.Ì«$›rp‹íTm–â9î#”‰°§™®ºO²<Ñ»›`PqÞ²¥®®†Æ)\nŸ™Ïp+Ö§ŠoK²Mu2o%Á\02ãŠ#´·¶F¸EÜø¯aíPÜÆ¢W[XœŽ•“…|õe†hí]\Z³’S±z›FŽOµAåäçµÇO’iJËå·WÐVï$æ,\\à·SU HþÑ#H€©RTbbæÈ|èÑíÝ,c­Mæ³7úæY£\\Ž+VÞ,0h¡ÁÎN{šÌÉ¾–IP²KÀÇ85º‘ƒÉ–o*;Ëî$1ô©í¾ÒÈešl¡pœäõêvG¹f!ÖP@SKå4®»]•™Båv­)Å-—²åZõ;»y$\07VÏj ±#‡˜¦\0ý1YzŒQÛM#Èv¹b>µjÊýZÙá•Rx>ÕßMYò«m¢~À³øŽÖmù‚POb¼×ë‡–ÐZÚEˆg¨áŽ+òçö]ÓVóÅÒOh‹L·’gÞ2¸\'{‚~•ú££Û[Meù~l3ÇŒ…~â=U}Ÿd}ç;á“~f³­Ä…¦b¬ŒÛFOLV3YÎo–íHDHðÅ»f®µ›Ã10»·‚ÀóúSšÚiG˜¬<²ü)þ#_ë­ Œ™Ì]Ivg{s	™·pTñ]SYÛ”`dNTô³Æ°dù•ˆzç5NëÎ[c<Ë·l˜¹5^ÖêÈëŒŒ’>Í¨BÐÚ\"Ip¤»¸íZþ\\1l ùÎGzÌ…dò\ZiäPÅÉ{\nî#³CºÊÊ‰:‚»»’**L»²‚¼­²¢qJ7÷\rRÔï­¦H™£o·‰ÜGß\"´\"Kˆ<Ô”	!WÈÅBòZÉt±„ê{×5J¢ ÓÙ&‰\"*DÐ@ì¹­Œïi¤Aæ.*Ë[¹ŠAj|©0X{ÕD¾e½»;˜Ã½c{êRÚ±|‰¼ÕqíZ¼blìˆ DO@;šË­g{5ÃnxösŽæ­ØÌÒùåyÎ\nÕÆ0b¾Û4kÙÕç_3hDêÆ´#™ïÄhñ}ÌYÁ9Á58„E%9vn3ü>õ‹\'ÚÖð[¼ƒç~ðÿ\0ÿ\0Z¢TP_¡m5´ÆYSiYöo¥^±º¼{‰2íYÊ²ŽqWQ¼¼ÁqyXçÓÔU	ÂöE¸lõÅlë=¯µ{2ÅôÎ¨6™ŽA\'±©të)V52ÌÈŠÝmmß{y­´Î¢Ò¯KI!‘>bN?•)Tl­¥ÖäÆ\"L$¤éTÒp\'hd\\9àIýïj›ío4ØnhÁuaþ5LEàÉ>Ù\\eG¥e)1É\Z,•¡uÎ3éP3¬OåczÆN94¶ÆéívHØ`Hü3R¨’ÝÖ@»×nw7­\"Ì§Ð±ardpUü¬vÅk¹Œ´žc.Ð£$õ\0ÖÕ¤±Èé&fï¢ƒÆjAæII(ÀgÞª1].¤z¢ÛEcz×hRÁ¹aüGÛÜWæÇÆ-M¢¼»1(qs!EìƒkôSÄr½æƒ©Yí1››vŽ?öHéšüÁñÝå¨žââõ¾xäaÏ|W»ÃØiO¹ì*µ¹`ÛÐùÒòVk+É¼à\"O3xþè¯òoŠ\\Ýß·rvHq»¸¯§5.¹£“Ú™Á5òç‰®R{ù¢‰±åŒ}+ú²…>XÙ‰Õ«}NNp\'i$eè8>•Ëï„\Z­*Ì_ÊG;œöïW¢óY–”u®øœSëˆþPcn†ÁX|cê)/6 ÄoóÛœÔ‹0+Ê6=6Ìbõ\Z“²>QF@È±­uºó ,ëûüð+.Ø<AäÆïO­Y¤i’GÅÍ`uS=§À>zZº°ýî	L{õÍ~¦ÿ\0Á64IµŸŽ\Z®´¨é†<0É#GºK—ùI\'²íçÕù…á˜Zto!å·zWí7üD´¶ºñÞºd”j¥¬qãäŸË!Ùº†\0zçÔTÏbkEÚçî¥„7	(YDQ²¿ÿ\0¬×m ZÅy²æE¸òO¸›‚ö®¥vÄÁwêØ¯CðŒß:0Vhóå¸ïžÔWVyåßµ{ãsk¦Ã\'Ú\\`üÌpr:“é^&¥qg$äo’yá¿­}ñB+	/(B}­ \\î¸<þâš–‚·VP¬²”»$6ÐzgÒ¾+Ö‘ëÐøÌÉâ»[Èðd6¿7ºæ·´Ýn³û=ó	îcRD£«ŽÞÜWþŽÓ~ÙŒ·~qÞ­¶\'íOæF€ã…rI»Ó7–Î†kÈÐHG,z“WWHAòŽ^^@=Ø××÷šff%ãD;[ë¬°Öï x\nœäñÖ”Ù\n:Ö<<°<\03üØ8èµ•.}3éàf\"¿{øòyÇ^~¼Waÿ\0	žUvÉëÞ´\ZúÖécùRè\0íU ™È[jº¥œ»eMÉ´qé]\'‡ü`²¼éu#>Çã#aô­{hìo|ËULs©Ûµ]—Â6HðªÃ¶õˆbõÁíŽ”îE ëv·0Ü,§_âÐAy¥ÞŒŠSn3žEy¢øn{y£o8ªFç8î=ë\nâÏV¶¿bšÙ_r²{Ö.DI6zÍ¼k,óÅŸ%NF{óÞœú4²Å\ZyIK¿ÃŸLçŠá,µBÝd!‰œt º¨<Q4)žI.y<rsïéÆ—´¹”¹¬ž’tÌLKnù‰¿ÿ\0\\ÖEå¶±mŠÞ’V#Üã§<ãñ®Øk0ÜZÆé\'”T`{šÔŽÿ\0N¸†9¥Ý=²W\\Q“<ÎÃP×l£•î-LŽ1”C…_§ç]™âÛøne~Ldõ•ÓIok>é!%•Ï\0ÖdþÓ§	4<2³’ÃŒbª1¸›×rK_&§raü…Û§®}+¤íré$K,rG‚½sPxr(Nè-ÃÉ\"s*÷Ç¯Ò«6›¨´ÑÈ.î¤#ƒ÷¾µN6Z”tWVvª#¹$g¨ªòhÉq±æi\0çX—“ê²©S¹vƒ³Ÿ—Ðf­¿‰R	á±‘üã¹U	ô?¥JÜ¸Å®ŸvFWù`V`:Çõ5›§¬Úi£9ó_ä	Çóé]¬^È+r×k€Of=°=i÷öðN°KÂF–R›Wøqï[¥ÐÑ-,ÊQx©Ú×z\"Î‚Ò0õÁ©­µØ.¶ÌÈ<®qÉüè—@XmÙ£Q¶lå1××ó®_ûQŠØ+Ú2 v €vŸ¡5ª‹&I‡ºuâ³ Y¯Puîƒü+^ÁGÙÝ]79n®+ÇãƒY³{ˆÕ¤†	mŠ•AËn÷ÿ\0ëÖöâMb\ZÖæ2ý¤;páô¬ù™*½Î¹ô˜34›G› 9Èë“RØxzÖâãœ*ºpçõ™ˆ§–áÛ“€îÿ\0×Ú´cÔÑdÁfiiQéïC—pl¯©xJ\'d‰ÜüÑ†p?ýuB=kO\rªn£ í ç\0wúšô	ïæÞ(„1™É8 {}jìq+[ÛÈ¤7œÇ öÇ,gœZßÜ3,’e¿1ž\0¾}kxk±¾ÈgE•‘†î>µkQÒì$‘cdáÏÌ£ ÅTŸÂ±]$WDˆÈÂ0ojÛ:4º¶—N3Bvù B£ÜV-´ù‚æó³Îz=ó\\þ¯g«Y@|¸åy #åÇÍÐŸjÈ†çX…&\"vYpLlÃ;[ééS)X‰Iž’ša“!ã^@Ïð\n†o\n[K\ZÜÂ¦æìåNî7.¥ai>!gDKéš€.ãëß5ÑZë€«´mi@Êîæ¹åP¨¶÷9ÖðuÉi’\r©%Á>¾•^[í>Ü-´eÔ™={WwÌw/åÈV%„\rül=)o\nÊ‚m‘!8²jã.§\\cÐóK=nöÊFódƒŽ…}ë£Å$6fy7ËhÄ&8=s[Sè\Z\\ê®¶þmË S!<‘éé\\½ç„n`Ùyå[<¿_Àþ½tFeÊ\nÇH÷Ðj²6ÂÉj°‡÷É«–óßgœ%‹¢…èpú†‘uj\r°•w9ÄeˆšÅƒS¾Ñ§–ÅãâX3ƒ’\'ó¦ê™»º\nÙýéoò+.k{Ó—l‰•!xÝ\\‹ø¹Ñ—Ï·*ÄHää÷­U×-®$g†vòÎçÀ8Ù#õ57êe+¶dkžƒìÜ#mýÛsŽÛ=ù®&ÇÂÚ„S¬ñ]˜£©Ô·lŽ˜¯oKÛMBÆeUY¡xóÇñÏzl–“Dëê¾c_jc~g‘¤úå”r%ÌísðÊ¬y\0‚¶­ü{¨£%Äî\nŸC“õÉÿ\0\nô	ôk7F¸K}ËŒlô>£½sóøSNÕ?ÔÌÖ[ó£ lúÒ%²;ˆ\Zt·M×mdfÚ°ã\'·éô®Æ;=¤LÊ^N¥OC^[wðÕã¸G±î\Z4Ü|Â\0>ý«>æ~	á··šE˜ï\'¿ÔÓ¹„ž§¸Û+\rDË$þE¼êJªô\rïVu¢éhDÅ\\!yÏÓÞ¾Ä^#ÒšI¤¶–ô<¤Êé÷ÈmãÖºwñóÝÆVîÝ¬ÕP6%‡½!ÆïC._ô›û¨¡@–&6uÔþ5$šzAÜ:·E9üëK»¶òâùY\"yX©é{Ô‘H’\\\\\"6C1ëßü“Äø—‰ÅÎ£îÏëÂ,>’èMv.G\"¢Ok‚÷ÏåÍQŸtP2«‰ºç¸5`ÊÂU·ÜÅ·dŠ‘-ZåÊÝ91ä…Øû×ÈVo›¹^ÆÑ•€`n¤äúÖŒN—; Œ³m|`t$zÓâ·x¤Û!Ì\0qŠÑHcŠÞIB…PÝ»×ãp{Ü­z°²ˆwî¹@»°z/¥bÉÌìðÆFÃƒëV™<ë‰.¤ÎÆŒ\0|zÕ–2¡T‚1´€wù¦©3+U·¹K‡|ÊØØÕ‰)®\nÜ)uVÈ«wbê ïaËz\nªÍ™¤iÆ±ä)þðõ¢Q:iÌcØï—pù6x54öë$fUFÈÉªÆÐÌÊby3qò€;ÖÐµh¡[{–%0Jÿ\0ö÷®yìn¼Ì! š9AÊ²óŽ\Z¨ÆLpÊŒÄîMnÏÙ¢}©\Z\0£·ñýi‘CöøÚA4qG\'\rÕ½…cìï¨Šá£UY‡f#¯sV<§¸¶œí*ˆ\0*$}jœQÛ–(£†ÈÇ¿s[Þ^a>\\¥™3¿Ó5Ñ\Z]Ì‡\nepä¯<þ5j-HÙºùàº\"óÅM{‚D¹VG9Çñ}iÒ@ÊŽV¼‹©š•÷$mN²|ÖÎx$Z°JÊ’6ÌœàVOú;Z•x™Êý­Yc\ZY!,\"ˆ÷`?­.DZ.~ëËPé“æÝ¨¹,I–óŽ*¤w‰ðÈÁùºbž.7™ðˆÊp{(«öch©ÀR¨§\'µN†¬\Z0ªGÞéÑ»´AwÜTW1ìtŠ\"f!†ì{Ö¶³jÂ_2_‘þ^€Ÿàö«7+™šW2nIö¬Ï*ÙO”¬Ø\'z½XâV°Æ6C]tüÌRIf[ˆ’Ø3[Uê*Åå“í]ÄcÎ7P/œ\"ù\Z<àž„Ÿð¨ïÚKŸ!e“>KnÝŽõ×4ÌÙRÖe†K[}Ž 	1Ÿ›ž¿þªMB/>p@AúV„·Éñ²4³¯÷W×ñ¨¥‰.$›lc¦Úå«5c^c6ß6ö¶ècÜŒ»‡­h³Š]×÷²©õæ¤u[p¢\r³¤§i^¸ªÓA´–à¯S^\\äžÂÕì@¶¢ñíáV\'85Bê0<¡åù~caIàÎ®$Ík\"ÉnN7v=ªfÝä5Ó§€ƒóÖ´§%uqJ\r•dÌP½ Q.Ü¿ÂHçóïU­àæ]ÉÛ{\Z\"p¸ÓÖ¬4›fy6¤¤—ø>”Û=­;Hç—ÝÍu$ˆ”\Z,‹uY¤}¡ð;µVš0î¾S‰ÙÅ]šG”T+$móßÚ‘c†ÕVá$ýÿ\0™÷;`T:}XŠ6Ë™D’X÷ªWsAÍ)²å½­\rž`g·]ò»’79ÿ\0\nÌÕlåßà¬‘»m#?wÞ®4Æ¼ÊR+<Ù¦FŠ°åÝ¢á¿Õm#Ÿá­Ä‹P–a”£ò°êÇéU&Ñ¤’ÛmÅËÛ‘(o/³`qžÆ´²¹¬cÔæ\'i÷¢Gmçåçp=jìÿ\0~\rÅbxH8Î¨üjeƒË?ë¼†ìÝ±ïJÚc5Ã$òyêq–=øãW§cQ¸xKŸ|[Ëa{f²àÔ®å=Äe6ž\0ô­«Ë–Ãj’qéYÐ¢åþðÊû[çµW\"ªÍ6åÙC+lBØÁô®¦9]fbpÑ0¸ÿ\0ë×,‚8!¸hÛwqÔVÌK4Á1¿•à.=sB¦‹Üé ¸ó7%Ä„@ŒH_sQËådHs0Ÿn˜÷ªm\0ŒùP*¾AÞÌx\0Tq3¶\"ß€ëž½EZÐÎP%Sö³ûËuD(ì)#ŠPIË£‘×µEsuäDîÀ¨€jœ3bH(Ï&F;æ·r2”Y~O*\')ýû‚séY’iÍpZebC?\'®Óÿ\0×«¬âiYZ\"æ<®jÔÌ!’MÞ_˜)S)8³\ZîÂÞ…ÙK6ùI¬ù£{|—{ŸJÖºûDaW~áÔñUCG§¦go—åmÉå¹ƒ=Œï4wW©]ùçÚ£Õôëµ±©i€@ëø×J¬\ZGÛ…Áõ?zÈ¾¶n»—~@¯V–!	Ò<¿Yðo†µU“KÕ´(õ+ãÛ.üå‡bÁ=ˆ¯›¾ ~Ä¿\n¼am¨­ŽŽ°I4-ÚFà-÷¿yØ\'œÃÚ¾Õ†9.šB‘fUæ¦7(D±¹¯oñ¯¨Ë8Ë‚Ÿ´¡7úv3\"Ã×ƒ§R:3ðÛÇðMOÀ¶²øGZ²¸YîšmnAr	I\'±à\nù#âì«ñGá³É«¢E}” û&ö?ˆ2)öèkúnhêVó•‘Xð}ªº†ƒãI½L–ñGØå€=G®\r}­\Z±ñŠUbŸÎÇÎTðÿ\0ÝÏãÇUðÖ±§j7séòÚ\\ÂÀ´$”ozç.­\r¶ß5~vn8ï_Ôÿ\0ŒeÏ…$Ô.À–¶:ÍñÄ—ñ¨óåÇ«œãØŒ\ZøÇâücM—K½¼ð÷‹ž-JK¿ø÷—caÜ„°íÛë_¬å^-exŠjUeÈú§ßü¼ÏÎñÞâáUª:Ç¡øT“4ohq·©4ùõyüÒ$rËÆ\0ô¯º¼wûücÑ…åÎ™§VÞÕ7cI0WÜlö¾E½ø]ã\rîçÕ|9g¨c!ž] uÆà+ô,s„ÄÇžDþhùœÃ‡±XiZ¬èq·¯vI›([Öº›OxŠÎÆ;k]A¢XáÚ«þÏ¥c\r*âÝ¼£;†áÐ\ZE€¦et;²=ë×ŠGƒ,,^çÒ¿¿k?Úá»ù>ø¯«i–’FŠmË‡‡(r¿»`ËÅ~ªü	ÿ\0‚Ù|aðUî“Œô›o\ZÄ—Ñ·VòšÚ00^%å¸ jü’åbp§ œÖu¬¦{©#1´É‚”£ÐÉà\"ô?´O†Ÿð\\†~5Ô`‹_ŽïE[N;HSB¬Üö(y?E¤Wë7ÁßÚ§áÅ§‚ÛÂ~4´Ôæ¸®%Hð\0\'HgÜëè	>Õþn±ëÚ¢J©ãÃòc\nz]‡<uãÍ\rö“âÝ>îÍƒ[ÍÎ#ŒW2Ái¹Äò›u?ÓsBñŸˆ´èotç\Z€ºfekgó˜¼0$w„íVåÔn-â•žF$·`ùé_ÀÂø*í;ðÞ]),|pÞ\"´°*\rBI“þÒ°9-îAÏzýVø/ÿ\0àº6Ö6Ÿ|,n!qöÛÛi\ZV`~î\"ÂŽß9ç¨«XvŒK©ý:ßk2ê:qƒXd¾·†wh–eÅžàã5üñÿ\0ÁbüSák/GðÞ Ûiz¾¹,ÏsUŒaNã·ý®3Ž™¾¡øwÿ\0_ý—þ*-¥’xå¼#¨Ü2Go©Eö–~~fÜÄ{áX\nü(ÿ\0‚‡ü|·øóñ§Qñ¨‹¯\néZ|VVë‚D‘Ä¬ý¢Çaõ®<ÃJR¹ípôZÆSmõ>Ô)ƒFDˆ`_JÎ±Óoœ™£®ãƒá«w7R:,q6760kWD\"Ü”9IÉÎÓ_w?oŒSF\rÅ”ñIžÆpÍœŸâÇ­Ic\r½Ô“&<‰#ÈéVo®\ZXî€ó\\öB9â¶šO42\0¹$Ç§çYò±òD¡+EsvÐ„ó^Üþõ#ÙË<öŠ€‚xÁëN·±ó®¤¸FêOëU5o-±¶=Ê2=…ŒãšIèRŽêiïM²)Ø~_«\Z·y¥<WI1]Ê @jÜV·‹l—ž@N9”GÒž÷&J™IÉ=Ï­5&pÕ÷3%»Y‚Á\ZïýçSØ×`²[†#[…@pGõ®*ÛOŽÎþníÇÞ½ÃQ-æ«mo2‰ZeHÐ¼ÇúÐæÎyÀûSá,×þ	ø!âÏ\Z\\Û‹{\rFéìau y†(‹±Éàç8ÀÎ\r~güKÖMÜÒÈ\'Þ÷Nîßð#_¢Ÿ|]k£|$ð\'Ãkke±³ðæžnJF>Y¦¹Á‘‰îÙÕù9ã	\'–rÁÎw`{Ù|VÇ‡Šn÷‘ÎªµÝÔV@ýæÉ#°ï_Ó—ìUà9<\rðgÂv»æŠoYE|ñ²í\n\' ó{ž¹ö¯ç§ösðœž<ø·àÏ	5±¼moWXÙW®ÕœSŒzþ«>hwZ.™§éW!¶³Ž.zF#\n¢Žz3ª¢¬|¾w\'È¢\\µµoÚd\'šDd÷R9ÍušzÙH‚)-ÆW¶k”ˆå†-01»UØÕ®#-åùŸÝä8ÿ\0\ZÅNñÐù˜ÅÚÖ:IæØBYÈQwa‰þ1éô­ˆ\"ˆí‘Œàf¹U`@I¸ƒÐö­;\\–D™]²p{‘Cz»:”‹k»³€`g¥nGr«´Hxqœú\Zå®\Zhâˆç,XÇaZöê%0´“l\näŒîÿ\0õV3“êi÷7šñˆœ„=Ï@knÚ{}‘Ü;,Š²œ“Ðb¹†`¨“\\E˜S?Z±:Á-º@–ð0u^íÅ)mvt¥¡Ö\\N‘9YfB8PsøñU‡•.ÉXáIÇ­eÛ·U-·yÑpðR¢Æn¦´ÈÚñ‘ó6“è+6dmÆöÒI‹‰$ŒðÃ¨Í[a4whKP¤“íXÖ³&Ÿt€G„gù½ñZ2^Kpïˆñ\n†®yne&ú—ÌË;¹ûÝíSÇ¦ÊóÃw0K¨ÉôÏëU!’\'ÞLÊ¸ÙéïøÓnfŒÈr”tªŠ¸œ™¦cr$ù‚*1éÞ©Ì&wÂåG~k.ÛÛÛÉvû40Œnë%nI{o12®n&?2ž«Žõ¿+Í)#3–·y¤gøÆ;Zd!uµå—Ž=*¨¶yËH×\r³hl}*híÎÓq¶çEv¬§¡ÌÍ9-¤µIF@~RsÚ¥¯âks,qÎŠ1ÉÁ#·OO¥fµÄñ[ÛùìåU$€{Œ:}+FÜ5ÉW‘IÉýkžIXèZÇ#Z“æ7™ =½kTÜî·óHÚCàc¹ªRíýçÆîÝMB¶ñÊA„0Ørsß5˜‹Ð33Ç#HÆÝ«^ßnæ\0U$Þþ•FÖÍ%VŒ»5£l‹„É ßœqÛ´ K¸¢F…¤Ñ¶ÁÉÚ3×¥\\¹¼ÒÇ¹“ƒÕ‰¦¥.$Žc¼Œ`÷÷ª‘y·ž`£\'/sšê&Z—à¿ƒxŒ3-ý[5«%ÍšÞ¤1äŒÀu\'±¬K[X¡ºl¢BŠTßš¹0·¹¹[¦›!ä7µmÓC’¤¤–†Ä–“Âö‹`#’ JÎ§æ$óëQ[‹Øþi”NªFÌc9HL.C;¯”¯!ükRKƒå„EÙ_½ÜÑc’¤Ù§ó½¬rˆÌWçp=Çùö«Æâk–I\Z\0 t8¬=ñL‹+yžzƒ·ëZñÈËpÑDá£q†^ }=é“kšqGmï8ïiò[9<š“ËŠF\"ÊMå]³÷ÇÓÛê*\r°D†Yäå›W?w\",°9ŸjÊ{™“›hZGA\'	ÎOÖí´¶ÌÑŒ²¨ãý“XvïhLŠ\'c‘†úÕý5¤-9¸_\"6?!Ïßýj ŒæÍ©ßÌ)åÆrŸ¥kDÏå#,\0½ÿ\0Š²’B‘…‡÷+aAïZè~BJ\0„ù{ý+¦13,ÛÈ÷Á\"mPCŽõ¾®ÙÊAe÷ª–ÞtBHÜU¶üÝñZ1}šãiSz#üŸš´05­-í µ†I<¸Bàg©=ë^Ýfb±É·q\\ƒÚ°íA‚ai>Lÿ\0Ô×I$RÜùDÃ#¸®ˆG¡•CkÊÚ²Åpð@ôú×c¼òÆ²Fš^ç§zç¡Ó%’pœÀ_\\ŸZÚ´ž+yù¬ª„ÛÜ×LbfÙÓ¨’HbÛ3”ò=k ÓâI$ŽWï·nÃÒ±,¦6ÒÆÎÒH÷®ºÞö/*xb€,ãÕ˜õü«ªœZ’5­­á>c«ïr6¨=«±Ðc™§H<ˆY—<·=Ö¹-\"ÏËžo7%§\0sÚ»{u‡Ê’\"_vF}0yÍvÆéXàªÎ§Jiîoæ<[1ãŒl ô¯@Ž;Rm•S{QX:lP,(AÞ_œ×Wg|Ÿ/œšéLÆ+S¡¶\nø¯íZpÇ#Ê#Ý·Š¥jƒÍ_,ˆ£ÀÎ;×Cjò	\0iàÑsÔÃÒ¹˜–2Ü1ófxHv²õúÿ\0…m˜Fõt*{Ó•w9%¾íOHú5QE`ÙëSˆQEŠ( Š( Š( Š( Á%È¸òˆòÕ@ ô5}£g†ÁyHéX×æò!´íG9$w«+ªý™TM~w:v;*ÃFj,1Äƒvâ\\½EQhT:„Mžh<Žæµ-1}ËH˜bùO÷úõ£[.èe‹/åŸÖ¸eR7µÎ%Eîr––TŒ®Ù’v ’zT­-¬å!q èÌW@tÄbÀÈ]d$V4–OÒFa&(Û¿FÍk	§¡¬!bŠê’ž¬˜ük«ƒ[2Fª[÷AFŽŸ×Šã?ÚÙch­w—,kj[r‚aÉFãZ8ŽRiDW©r<ÉrÆÕf;øÞ½Bˆœ‘žÂ¹(PÃM;å||Ã…ÇsRÅ<\"}¬¥Ä ûÅK€ÕVt©t…•‹DÝ:ÔwÂ3:1ƒ±¬=ÁgB¤ˆ\0ÂŽÃØ\n†ëPš+ Ê7ì^1ü>ô º–ê;\\Qc$óæp}j„VKsäÉùúzž-vÒYE¹XnÎ[–n0}3žkdËmuž\\‹²È4MÍÔæ$´I·Qk9¤È+ÎÍ£Õ¿úõ×$ÌðÉjØÞ„0<\nŽêÎC#˜cÜ±Ä0ÙûÇ¾GjÌÉ§¼.£Ëfpƒóª’IÌ(J0({úvâº6†ææÝâŒ+ÄëœýÜŽ£¥c-³À|‹„Ý“‚Ozi1W.Újh¥¶·MŒŠ0æ³oµ„‹ÎŠ;ô…CËýÒÞµ¥œ‘Í©òíeþ/é\\þ³d¦ßÆÐùÒNÍÈúôúv®˜Éu:©Àü­ý»u¸ãðÜÐÜ»œFóyC+´mÔŽq–;~‡Ú¿™ß\Z¾›kªjÚ\'Ú<û†”—þÇ?¡é_ÑGíè\r—„¥X£†K¢ÁLñæE–È$dñ×§Zþl|m;FH\"m®Ëü]r}hÄÊÔ“è}Ï	¥Ë$Ï<½‚&”Þ\\¹••È+ýìU‹¥Ý$HBžqÚµî\"ðLMpØ\0w5ÝÔ‹Ä…KÆJáˆúWÆU½t}ë­O—]ÎjÙD“29>Tkèµh[Ø˜ä\n§Öž\ZÖxL¾s@ìß<Þ©¬lb¦˜¶DÀžÂ³ºF0‡3Ñ\\ç—$ÅoyMæ3Ð\nµ&Ÿ$¶Ó·œ§\'&¡bó†š¢dmªûÕu#R\"^£\0?½T§ØÚkX³¦\"¬DHÛð€Q]ÝÛEç C–àu©m®£µ”¬k€I=*\rJÍd_5‰rFßzÍy’~í™ÉÝK<ò,Ûö®óÃwªIŽÎbq\ZH ;âº9!Å¡ó;òzšç/m%š¶µ]\\½z8Ykfqbi]h2w·¶¶Ûç$·#§¾{Vu”¥¦&\"øàŽµÐÃ£ÀmÓÍ*Ó+RÝw¹ECò+²-eZvÜŠîÜÝÎ;[€qÚ«ý™åi†æó#W½_³i9.È2BÌÜ‘Î^µi|™\'µŒFÀ’IéøÒç2•(·fs±éSOuåïo¼kY ŽK†·}Ö«\'~GûU(þÔ€Ü©&¤\\2³ßK²wlsºœ¶5T“(ds \0ˆÐœ·J¯¤ÎŒw² psí[ÑgA\Z6åQ©¬¹Õb‘ 33#.ãŽÞÔD-7qºa…|g7Ò«Kr“[5¼oºEàŸjÑò!Œ£Ls	Qz©$¶;C7|ÌSV­Ôçp}Ì©#–Îµ~VmÌËVsÄ0”cw÷Oµ=Y{w0ÙP}*)d‚VE;úü5OÈÊK£)\\ÛÎ¹s.@\'åôªñ½ÊZ\\Z<Ãd™Ûê)·WÓæyÂ\0`~ë&y.#\'æ™\nž½+¶úÎœ,Û©‘¾gŠ«<aæŽ\\¦NìÔ–×G~Xl:Žîek…»·¢Œ}«¶Ÿ7S’­—1ZëKóeA~äg>Ô—:dB0Ð¹\r\0ç?ÅZ–:ƒ_ÈÈ«±“±Ú²õK›x%y\Z|ùJ{×ZŽ‡9DÆcqæ¢‰iœp}jHä0ÊŠXyª1?Ú£žá‰*d8µ\\‡(Ì*œUj´4Z¸X¥@Þ_™ûÀFzŠ\'Xí‘A|ÊÙ u\0Qfñ‚Á×hY\\ôæ¡+Ï&P¼¸üzÖ´×qÎ\'9}š^I\0lG¥TÓ¬â¹½·\r7•nÒƒV.Ô[4«¼É¼pj–Â¨<òB«î$uß¡åT‹æ>ìýž--lõ†Ò$·’x•&›û±3uÿ\0_¢62Ãl‰\rŽ$e@£züíý˜PjW7·qnòl^52Ýºw÷¯Ñ=5VÞÑ.$`u#\'’qÔ×àž$SrÆßúÙ¥e-¬%;\Z2®È¤–w‰$Þ£„)‚ExI]¼õéíYè£PÛ,lY<Ã;\nÔ0\\˜Œfc\n°ÇËÉÅ~|éõg¯J£¹šdkR­~t-ÈÝÔTWxºhÚr²á‡÷MoE	Dãt›kéêÏ<’@ŒdýìU§‡£*°åÓr94Ø•‡–˜†P	lôÅm$ÜÚÆÁX¿ðúâ©¬~dkR6GŒ™«ö6âÆI#(ÍŒG¡þµ<Ìç”¯±L5Ã;D²,§šÎ“M¹Všõ·>¤Šé&Š0Ñ^h¼¦ÀUþ/zÏŒÍx·’™6$d Õ\næ\\2Ý\\©’ÞM€’\nûŽµ°o\"‡)rI•cÎkm/­Ê%ž<¤³á÷«ÉnHe»e•·õô¥¡\\ÅõGO,Ñ~åø~ZÚµŠhy‹¶y#§ÓÖ²´Äi\ZðcŽä¨Œõâô«/wr÷QÇäx>aŽ ®ˆ¦´cQ4.÷ºNds\Z?\'ýš«kmåŒ}ýÝ3S‹äž9RXw¬™Y3ÔÕ$žI#˜aY\n þèöª“w%Ç[	<µÏÚ¾ðÁI^´ZÅt.¦>{Kl|ŒxaçšÞo5ÀFO›Þ¡óR&Pˆ¨êú×%Föbhäu$¹šp¥ž¡b~^­]…´!¬¡6ÐmEŒÝÛž¢{‹–ŽwÃ³d:\0ÿ\0\ZÓH®bµkqIƒÇ~µ\nob£.‚òQÌÂ–äâö§ÛÛ‰.åü¸\"§[xEXåV¸ôö§^J‰:Æé‹’AÀïU6tAw-È\nàå\ZÑPô0oð¬FÔf½“ìåËŠBxO¥M$æ[‹xWr•mÇœ{S«Fï\Z™VW\ZÞ-­Ðç¨»eTXl”uª^¹³Ž\"Ïæ/Ãr´Ö{—Û<ß9v¨!}©/ -—\n;ð§¨­c/#žláü]{<>ÔçSæ¼öòF§¸f•~WüN”ÛZËouKpé¸ô&¿M¾\'H°èñ!tvîìõ¿/~%KÅì–—ñý·Ê”¾O\\ž†¾ë×ûtYågÕ-„ûâ±Zé2’[Ì·ç|™¬H—w2ÀL`¶w­_QxÖé“<J›IR ý+äí@ƒ;¸2Äcé_ÒpZ‹Ê§C>9Ìg,¥¤ÍOûœ’>v4ø­Äé™NÀ¹©VÑTƒ¸1õ®˜ìbÙÑ¸thÇÍÇáW¥ó%Ž5A¸dæ«ùo(Ržbüê×Úã\\0ÎTæ˜!±—(ª §Ìy5³m€‘”Þäçê+%\'\\Û™ÔiG?vö1¸	Î_Ž+–Wèz­Ô÷Á\Z46¬¾lwzýòÿ\0‚`xvÏLðn­®_Ûy÷\Z…ü¾PNr®v†Îzñÿ\0U~hÃi¦ÁÃ\0ÎO¡\"¿£ŸØ\'J\Z/ÁßÈ-!½´‘”mä™˜ú¶{â±ÖâÄJ>ÏCôÎ9­\'Ýåùp™;÷¯\\ðÄV·1ý²ê7VbÊáŽ0½ˆ>ýkÉíšYJÊÎdMçú×¯h–žnt²$nqwÎÜóíÎ+ÆûžGÜù\'â&¯wŠï­ÕþÙ§C3G«ê;ŸóÖ¹›mmBf‘ÍÁ›ë^Ÿ¯Xi3ÞÈüÇ¹™ÉFçnkËoôK™QÒ²Ž½p==ëóÊ«šnG¯Nê4 ¾·ÔvDdD“yA¼Œ¹†kfÆæ(Ï—\"|è0[±Þ¼WûQ¶“˜Ì¾fW<ì\"¶cÔ5»p±Ü2•,\0Ùü_Z™Ð”wêi*Mnzå•ÍÔRZ2ÎªCn„Õ]K@7‘¼†½œàs\\õ¦¸!+§–…@P¾¢ºM{ÉhËHV%o™{0¨”lG#2¥ðýÊGæF^ëfÑµ\'ôª²YêÍ,ò£¼ñŒ…_»zô?R€´Ï¹ÈÏzÒŽ™QÒé›êGÕ&/˜ñyu›K•xãck¸|Ã¨=²?úõÚiºÄÐ6òÍ\"mÎ$</°®šOYù©4 ÛD‰÷:ä“×šÍ›Ã…×È·ùÕØŒ‘ú\nw#™\0×m\Z0ñ¦Éø½jö›¨Æ`u›%rž£ð®è·©m3N®¥8P½jÅ¥í°óžÎB¸À$(õ;kLY¢˜Ì¯,Ä)þuNïF¹yÛÀ¬÷Uvæ¹ûi%äVRÆüé]E—ˆ2C1;OPübÞÅ;¯ê¶ðáUrûª{üÕJÑõK$>j2~óïŽkÔ ¾·½±óàu*å†ÒÃ9SŽÙïM‹OŠx~Ö\nùÎpc$mÿ\0Z¨Ææv<¶]VýI3î•	ìü;Öþ›ªÃ\"s‚ÍÊŽÀw­k¿AsçO\"›­Äƒfü¹¬»o	¼–®ðÎG–¿ÌæµQ±.q¦_Úº$vó)ðÊzµjGQeÐ	WÌ&@:à×”Üéš–—ûÈD™†<ý=ò)-uëûT’7&¶Rwy¦E7å¢Öð4ãä¤ƒŠâî¼\'\rÌã!ÖyÝyã¥7Jñ$·±˜®“¼¯š}GsìkzÃZÓæœYÊÁü²HÏLÓöe)3˜’ÆþÖÖ\rà¦Ó±N:~U_Ï¾·E€d°@	ÿ\0^œ·	,2ùmå¸sT?²üöiiböüiÛRã.çoâÇGlò”¼ÿ\0ÔZøÆÞæ²¹*ærú“U.¼m,òL·;nÊa\0qï\\×ü\"Ú…ä@”HæÏÞ?Ž+gæ˜ôM&x5;Iïä#Šw<(m µ7\n±ºMÑ†Èé‚+Î¢Óï­–LLwOVÙÑE.›y<Jë†Œµs™4Ï@—F{µ1ÀëHØgÂ=kOÝé’ÜÚ}µep¡‘Ô÷†Fyô¥‡Ä^R¯–:ŽAîkj-ON–™ºwl±ã>µQÈ’1¦K¨¼‘pŒ€à©=ýÅm¯ˆE³Ú­Â9.Ü2ôzÖæ¡£]Ii\ZÆ÷)\0 ñG`zþušfy¾DŽdþè}+ID¨£F=zÅ¢o:obTöùÖ„\ZsÌÊ.|¿Ýnúgüû×)ÿ\0‹‹Vygq,oœýjÇ»³Ôá²º‘ s5ª¡B1—ô¬š¶å§<ÐK±åŒÞ)‹nAÆâ}ëœŠÚ+hÃÌFwàƒ\\…¯ŠoôÑ	ÔùRª1÷sý\r:ç\\7nJËå° •=½ëß¨3¡—A±½¸YB\'aüXõ¬‹Ý>þ£šÚÝQZgRK`ñÐ‘è~µ§¦ëW3‰b0½hÉpnWeÜ{sŸ”t®nFóé.uëi\"’Wy FÝ…Ôt«Wž!ÕHLÀbÜ¿p>+Ðìà¡\"	1Ô7aíT¥±Ñä‘Ÿìøtl€zVñv6Š}N\'DñMÏ˜\"½*	;OåÒ»KmJÂõ™1·•»Y²xsO}÷VÐâEbÇ«H¿[©$ieŽ™×ÀÇ§½hæS½\\ˆÚyèÞk:q¸\Zt¶vì$1¦ï´8SJóèoîmä2¾å8ÞŠµOˆ<„e2œ‡Ý Öbg@¾Šöw‚xü±D’1¿§ç\\åç„eµ-(ûIÂtäzÖœ> ‡S‰Zi–I-ßçÚr+^UþM÷z¨ù3ü>˜¦­ÔÏ™ž{w±e$0Ïgœ£2m nosÆ+.?ÞiWp%Á\rqËØçÖ½oð4bäKÔ0ÏéXÚ¿‡,\ZánLqÌ\'eRr:qÜW\\79­?Æ°K2ÆfeIÛ=k©¶Öô©œ:ÈO Þ¸é<¦¬5¬\r\Z«°“×Ú³[EÖ>E´‘ #$f«•T=}$27ÙÏÈ r*XôŸ(¶¡+)µ\\ïÏSšðËoÄ\Z<¯oi#G|ÌŠñç;TvÇÆµ¬üK¨Ï†í\nr@qí‘Ó8¥(¢£5=ù¬o‘VE·Ú£3\\\'Šô;%²IÁs)‹¿vë[\Zo‰|ðÑ\\íÒÜî.ÝïšçüW«ZÝª6ží4ÑHÈl®ÝÄ’G#<ú~5Å™b*›è™êeIVÄÂœz´s¶±O\ZFd}û€8?Â[ò£prûYŠµ¦XÄ¶©#ÈnÆàIû§Ó•qGóÎHYUñÇ­!fM{Y)w?ª(ÙEÁ’i£\0†4>¾õ2²Ä 1dcƒëŸéW¤¼‚híÐÛïeÈsýÑIr¶ëº…·¿M£Þ¼\nü¦Å¹\\»ñµFOÒ¥ŠÙ<–‡ÍRð½ˆ>¾ô×‘#Ku’ÙžMƒ2¹©œ­¥»Hðoß‚«Ü{×/!q‰N+I/	rž1þ{ÕµI Œ|›äÃýÚ³§ÞKù¡W²zóQKw²„I‰Š79\r×žõ´bmc4É=Åœža_7íGû¾µal-ßÈG¸1áydf­ß4+´@¾``‡úÔ¸Q´ü‚³;•b„\nðÜœ–k#aˆïëšÓ»b³ÄÞkmÛLÔ,æ“lCç?^ŠÓds ]²¦qî+ž¥£Ú÷3–¸TKÉí^¿Búe£`«˜1ªŸÇW¢¶(]âb¦Qƒôô«¯e0	ƒb\\p@iFŠsF5Î›··X$óœH$ õÈéùRØG2ÇæÎ¥ôVô­;x…ä›IÙ*©9ãæ¨$Ó¥óÑ¯/|È‘yUàä×G2ìa)D§,NÒ™!C¸0%}G §]ªËµ1¶G$dvªžTRS¹vœ÷ª©m ¸7ù=¬j3Ê°Ä7üÄäöÅ\\i°¯æåFÕèâÆaòÇš_‰ñéQý…ÚèÈ¨71ÝÓëE83:Iï%‰aš]–èC…ã‚Z|TÂz`ç¸­9‘b.xÒdpzòxª—’%Æ]”Æ‹ò«Ÿãã¿Òº9ÊÓßh¾Pªzš–u†áÛdy ç©>ÕN8årÚ?Z¾·tpL¢8|±€=+:ˆ\'.„8ó\\KŒ|Ãæ=ªùˆy±+®VVÆOjk*•—aÚê2=?*ª^Gu¾äÚ0}ûÔF¯c!\'¹–ÖSÇçB¨Mf=Úòe%X|Ç=1RÜÎñÊ¢c±]°¾õs-¹œ£)”·_a[GúÆ‹6çK—`Y\\ü§½H—Æ\'H•CbNz€k%¤aåìBQOQÎÐjÊÁ.Û˜¦pó8w\0í¬å+—ÊÖÆ²ÈYÕ\"\"/0‘¿Ò¢¸I-Ð€z?cœÕUdŽ\'™ØFr*šÏ$¡–5Þ­×>¦¹¹t¸àm%º›Ì’ädg±ªRiÌT9œùÈÝB*”WVS€£¹ö§Opå­e•	ŒÀ<²·­8È±ÂIYäöäpOv©–9¦cª´;Õ¸ÒÖC•h\rÕ¾¸ª’ 4mòçëÞ»©Ì¼P@#ÞÛ¹ÇsýjŽ©Ä¸YÚBü0#š˜ËrÙQSe¤ŽòÎpx{T°A#I}!;’I<œÖÒ’Q¹<·e\r7dHfUF<zæ©^¼¡ÞtPÐD¤á»ýkRb¾$IUHd#ioóÞªy¤–?0ò6žù®JxèÉû§GÕ\ZÜhžeDhAm€Ðý*	\ZVE3“0sŽi&¼x¤ŽuI$b1šÏ/p®¦FÈó§<WVïR\\l¬‹2ÇgXÑÊ‚n}?\n¡m¢ø\\ìÿ\0FPx~‡ØUË¸þÍfe±·O/º˜·¿l¶9Ê¥e(êc=Œ{é\"¾2:Û4	 “ü]³Š‚ÛM·‡eÀ˜ýÞ„zÕ™bîþ1êÜT-‰&t‰7ã‘Ï­+™ÄÔkKMÂMØäÛß>õnTQÂ³åªšá‰åXÁÎx\0R-ÍÓ“ 9pøkU(¾¦·!»ºÙaUàž;ÓHã8PyíEË¢]«H | t$Sæ’Úò¶Ž?!¥a´žÃ5WInLÙOÄîrXä6GQS¡‰bk€sòžÂ³ÛÏÓÞâ„\\Dè@9Ç$sùÕ‘4I!¹ÉíPê#&0-ÝdÆBÌXŽÕ½EgyÚG¹–làŽ\0eg%„mh$Ï>µ]­æI_>\\OÓ±:—z$ž¤±‹»«\'•û–nXž•bT³l b$†GÁÇz°®‹ûÈ¨äíª¥Påb\nù$®:ñO™“ÈÑN³„6bûËQýi·û\" #§ â¬ä—o™å±ÐäëVmŒ52Ysös]4ê>ÀîRBžqòË*BÃõª+«¦–aå–‡¶;UÈ\'Œ¼‘Ë#Ê[<‘Wå¶µòÑƒ‡¸9ÀÍoÎ]Ì%³’o-œŸÝßÖ£PÁÞ(P–ÈëÞ¶‹­²mdûAvÉÍXóá. 9\0óI«“\'c˜ŽÕãwóÐFZBF;ýkšÔeùþÎEÈVùô®žy\'¹gÂì@ÃžÜÕìíÕÖu\'ÜVB?ˆWM8$õ8å=F+•w:lbÀ•>ÇŒûWâ?é+·kwEµ¼µ}ë¿hÊèF\r{Å­Ê7îwldÇk†™hÎ\Zõhã¥	óÁ´üŽzôáQZjèø+Æß°çÂ/¼g–ïI‘Îeœ‚Çø¾mÃ?@µò?¿à>&‚ÚæçÂ¾\"µÔ%”KiÜ±ˆ£ô¿g.me–vwa€ƒ8ô¨~Ék,MÍ¢¼9 ·qô¯Ðr3,,yc;¯=O‘Ì8GZ\\î6~Gó-ã/Ù3ã‡\'ïü.%…®Z!$/XðHL×ƒj~Öôa,ØÉmvŒAITƒú×õis Û8‘¥Óã{q1U8<÷æ>\"ø!ð¿Å¢àk^Ó®n„eIòÀ;=»sô¯Ò2ß\Ziò/­R×Ëó>cÀ0å½	ëç±ü±=½ìr6•mýMMs5Ñ	9Q÷—±û¹âØ?áˆn.¡ðòÝ<¥öHÇŒt‚¹=þn;WÉ`ˆúAy¥éÞÚ]E&\"‹‘´ã¨\\\0ÝFòµúFGÇùn:ÑŒù[èÏ—Æðf6œy’¿£ÔüÔ´¼;d$r¹â«‹ûÈí9òyï^Áâoƒ5ð~£=ž·áÙì¢im¤Æì:€øÚqìk€¿Ò\'´€Ãx›&L§¨¾ÖŒ¬Óº>G€«Mþò-\Z×u]CT´¶¹/ržb€<g¥};b%‰ùbc»ge5â_´—}ND`îº)ÿ\0\ZúQo4æÚ4/\"€\nùlþ¼£>Eµ§á\\ª3µ{¦B,£™Ñå@%É\\úRäÒX¼AŒn0Üõa¬n¢‰wcÉÇøAþ•GT–òHó#„(SŽµòW±únÆF±:^È\"‘ÎÈÀëVå‚i­–F…^Ë\0žr;Ò-°¸‚)VyBdg­W²k©\'ŽÙ×Êv…=3ZªÎÖ9¥K[¶AäI{rB<„óÞ¤[o3Í!ƒ\"(Î†´on`”dŽ˜í\\ôëºÌR„<ýá]1w9§_SMeHmg…³8\0õ³¬nMÝÊ5ÎvÁü\'¢­A£I$’Â 9Ï­jDÚ}ÂHÖò1˜œ1ÿ\0=©T›LˆûÉ2F\"»Žh‰hÀ\'ií^‘á³¾©¤Ìm¹Šñd,=žkÎâ¶Ýyk‚bÙÎ{Œt¯¤¾xüamâ\rcûCì°énÄ dÌXsÇÅqU¯«Éèo3“²<GãN¯ªx‡]hšåþÃºypç!>ŸZù[-vñmÚªNs_¬š¿ìýâ]U$ŸKÓQ¤x‚ùó}ëúWÈ~0øQâ-3\\ŸI×ü,ñêk Pnó<# æ¾“.Í0ò§Y#çñyUXÍ¦®}ÿ\0Îø3o©üBO‰7öò‹Ÿ\n\\nvå\"I÷éþE~ï-úÚ1¶ÅóŽçÿ\0¯_›ß²}Úü<ðkèº<rm[ôžê7À;ŸßØ\nû~ é7+íÂÃ6ýëž8§Öi¹M´ÏÍ©KÛÉv=­5¸´Ø^âîàÇæî@úV¶›âk™C[L\'IPCýkÆ§ñVŸ¨<oÏúç\n«ŒôªºEŒ–sN–ó²+JÏ¹OÝ$óP§cÎtÙônŸ:ý±CæN£øEuvÚœÒ:ù;ß$níŠñÍU{mÖ»1\ZÛ‰ûÌMt_Úërd “$§pzf¯Ú‡³îz“l•|Öƒ9\'¥]Œî³‡Éœ»¤ÇðÅq:n·‚;Iÿ\0yƒ•éZ«y\r»É- óî	*QþéŽkêJ‹gm#Ox‘D?v›²Øþ*Ð’HàòüÃæ)`¾k‘´Õ®d‚R¡#’G\nc\'“ô­ˆî¦#]@³GÎ	ê1í[_K—ÌŽ‰¯˜º°>\\lƒ9ÜjÂZ£–S›ž»ÇoÆ¹xnVëmÍËù(¥tê6±ÈˆÃå8^;W<ç`›4¥ÝKð¯\\÷¦Å~îòA*cæÂí5”ó»$‚3¹uÏÝ«ð=¤Ab&M«¹þ•Ì¥©Œ•ÍëËˆ­ŠÊê?Ò€ éÆ9£Ì7h\"ÙGQÔCíYZ—ïà†(üØ„?xuÉëš†9nZäj±¹Û©»W\\ŽŽÙˆ’8–=‹	![ÓëMŽí.é)žøª³jJ×Š†)eˆgžõe¥As+”‰—,ÃOô5mX¨1]<›(üÃäSÈx‰š8÷µË€GÓÔU?-4èEÂÜŸÞ¶2{š·*ÝÌ–ïfï\0uàœTI–â‰~ÐÓ‘ãsƒÁìµ³kû¸Îé	Á<õ„¬Ë>6«Ç°pÝÎyü¨”«Jó	YŸËáz¨Æ=Nj±¯g©]ÞY¤1_÷³Öµ[d	òÊrûXoÐG$3ù‘–éÕ½1Z·¤2G\"ðww­½”^¤)2õ´“*É3H[’T\nû\n­ºxåIYö¬îN¿¾*+#4®6åŠ“ÁïZÖö*ÎÒJS ÀÆHÔ8DÕ7Ô$a*‰$F<Ÿñ«6;#DÊI#V±gŽ7Ž8C®æÁ?ÅWd·–e!$0n éJ™h*ý’\'gvp¬0½T	½\0\\;’M\\ŽxÊù2HÂH›j¿©§3Ç\n	éÎMÌ‰-D¬ª|ÉÙºü z{U¨uI\'’ÊX$Ù*a\nöoz¥ºè¡™T7pj†žîá–gªÌ2Wµk¡Ç8\ZVÒÍÓ¤ÒÚ„+á«ÚtsÃ¾PÅ]Øž?MVHÜ8Ã†8MnDa]±…ÞÁäô÷¦BDÒ^›‘vÝn@\\r§½hE,Á„6ò´k*I¡`C¹ÝcÖ¶m!uXæ#™	\nIè u¤âŒæ»–•Ê3éÞ·Ck\ZÅò‡,zoSùW5cåM4åÆ$”àgœ}+}!t‰aÞU‹v¦‘ÏRæ­Š¼jÍ.\nnù7uÿ\0¯[ƒ|Ð\0¶ÞT{×?T³»¾k~›\n‘‚Ár\0«‹2žÆŒQÌÃÎc…Àmè2Ê}«f(Ýp“¶Ê2\0êMs¿k–Í·1(ç«¡³f¹·%—*«‘šÔÂNÚT+°…e1)\0äWIePâq;N‘®vb¸ûuX•œ›u!Š±àWG`·VÒ6å-?Ë·Ðô­á#\n’êu¶²ÜGÉ·yGÊ}?úÕ½¦™ÚÝbœù»›æ\'øˆõ¬Õ?,o#f#Áõµmà-‰·î“©5ßMµ$Î‚Ú;Á•·bNWµ×ÚX³!+Þ#Œ’¯õ®NÂI¡Q@*Î2Op{W¢+$p¢ÆÊ¬øÎO5ßrÎNåø¬å™™\"rÌøk¶Ò`¸0íádW·qíÍ`hÒÉÞ±ï®;×mbUx$nÛüU¼cÔälßÓìÜU}êzóë^§mŽ#ªY\00äœ×1¦Ä‹’5Úd]†›\ZH§q\0¹¶Š¹TãvlZ-¸G%‹\r¼f¶-öl\\!þu“¤Ab`óJÓ¨#]Ä|ÜUMA§w©z1Ôúš’RÖ2‘ô´ãÑQXEPEPEPEPEPà#Zˆ•¥U³¾N(…#¹fYÅ°}ìpk]T¦÷Ü&ŽVÆ\r-Ã«B‚b –N6AÒ¿4•{š{k™†V°—1Jv€?Õ_íÉpÖóLf’NóŽ§žØ¡q;Á{âIì*¼še½»¿•˜ìA>µÉì¢åÍÔÑTèZ¶Ö¼È8ßæKzãúÕéäi°»ÈŠAÆ+[LÊ±€cBÄ¶;æ u‘¢‘áÿ\0kŸç]TÄæŽŠO!1”Û±ƒ9n€U¨wYå„W=¥¾ø¦vyv•ö5nÒx>Ë½_l;È\0ÿ\0+£–ûÎ]N„´FIUS)ÃûÙ§Çio4«$Ž«u8¬{}BÝBÎÛÝæ$dŽ\0<Z¤a„‘HbvÆr9_§Ö«Ù=Ìœ™sT²¶ŠHcY\n\rÅ¾^Ù¬I­&gy`”¸@Ï¥n…ŽéùãÄç>•Py±mÉ÷µ›¦ÖæˆòëÛ´¿k¸ã	*ž3ü\'ÔT2ê—v¸\r#0 º»{ëHï\0Y CÆ;UuÒÚ:Ën#ÇÌ@:VrO¡¤n:ÇUÝJ‡—†ç½k¦²†UEÏ“.2¯½fÅ¦¤Q¾Æ>NÒ*Ï\Zd°´Òùìr7l5“ó%nt×o’9LÍ§€CTd‘Úå0Ÿ—ŸOA\\ÔÓJÏgàž€ÖmµÝè\"èÎD}ÿ\0îœûÔ¶uAž’Í¶\'~â6û×7ª\\E(c¸¦‰ªVú´BÖO2c=Áo¿!ÆâzŸ­Ey\Z}›Ìù °©­##º–ºŸŠ_·>“{¦Ü]Å<7rÚéÚ‹ÜÈ‚«\';A=Ô×½:ž;’Ö}Vâ`Áîm›Ëp>ò¯bkúXÿ\0‚†ÿ\0bÚø{[µÓfKMN}ÜIX\\ý¡„`{“†Ïç_Ì‰ŒÖWZŒ’[µÍrþg=|\ZË;«{ÂR¼&š9ðRé’Ù#i„—Y®~½+&	!Ô v¸}’‚N>”ô¼ HÉPÜœz\Z«-¥œäÇ,åGCþ\"¼¹Àû.Æ\\°C™bY\0M¥¹=sSXO…ò”™bN9íQ_½¢²@`ùsH²É¦\"*¡hçùCW©ÚZ¢ýÉ´‚2£/;¸#³VGÙíà…®DÓ7Õ\0u’#2Â&‘;¿Æ¹¶šk©\\8Ù´Ÿ•º/Ò±•3OomË3¼¶×ÎšdbHoLÖ„Ï,ˆ„LP¢gëQÚ;ÞÜ¤{qä ÉöªÚ¥Ë6ä^Ë–¦1Ô©Ôëb¸y/Æn|É <ôªòI5³«J€‚yõ5Séò ,.T9AßëZr%Íôoä¨Fá¸ô®šhå«S¡™8¸ºŒ¬\0¿RÛª­´SÞGs@$šÖ0[\'§ÓÖœ~ÛD¾\\±^õ^9îá¹WSÞ?Þ®úq<\\F!½Yb{æŽˆŒ*¨qÚ›§]ÌÑÜ¯˜b†\\¦Æþ/ÿ\0]W½™%!Ð6b#?2Ú<æ3–#Œ÷5ª¤rªÏ™j>äKmŒ¯å¶ìçÒ¨È¦tY–l~µlØÌ·\n·n\r¬‡æ^¹©šÙä¹†8`s]^ëV°ãBMß˜‰,eXS2lÏ$zæœå\"ewEyÂ`Ã4š„Ry­$ì\n3žÕ*Øˆìfi[t›1X8¦îJ–%«!2	&_4œc/j³i?4¯¶HÐµŸ°ÅÖª6¼ˆ9@¬»k&Ý¤¸“ËRûÞÕ&¥HGrä‹\Z^M\n¾wô?ÝÍ`]y°NÄÆ®AÈ÷­»ÕIdˆø8ÅS[bÛZBYÉº#¡æÔš“ÐÍ¾½‚h’ÞÞÜ«È¸lûŽjª@öö±ÂäÉ\ZÃ[·˜³rñ¢1Þ•—$Ó02p§‘Šì§Ø…AjgE,%ç¶Y‚Œ«ZˆÄU >fçÐSZW•â€†ÞwP²K*l‘O+ÔvéS¤÷9«G¢Em\nsÖ¡I±öå	îsPjVpìÓšGãªÍÄvñÚÅ4RàÊGXŠ¯u;ÅRËf\'¥n£Üò%MŒ‹L{8ˆC‘/\\ö§ÚE,M<k9•e\" –kË´G…Ãn8ØOÝ§È¯f‰–2JGZreÓƒ5î-!ŽÚ5•z>ò}jçe¶uFfÒrjUÿ\0I‚#)ß ç5Ÿsn‹nv–äÓ‹ìnè¶ŽðÇÌr>j¹$ÕÛ#væFßº2¿wÖ¬IeÌ®3¸ûö¤¶’H¤há€†CÛ¸ÓNKvyÕ©½ÐoÙnÎãOq˜I³ÔÍºï9Âº’?Í~…Z¬ÞJÅ!YU#ôè+âïÙƒH¾¶Ð,Íë¨g¹{ˆÏ÷C¨À?JûR+üÀ#9U^¹áI¯ç~3ÆªØù¾Îßv‡èÙnØxFýÛÛF¾cD¢ÉQÚ­Û;ºLq¤ã=é—M¸0”ÃžÇzhVŠhŽUÉÎkäÛMîzÌ#–Ùd\"PÝxÏ­S¼ÎÀ$²yÀ‚J¶ú\\eÅÜŒ~Óäí_OÊ«ØÙ]Ëæ-Ãˆÿ\0xT4‰’&JÆ6H¸ç=ÇµOŒ.6Ÿ2uá§½,6K¾åÆÐ>_Jš@w¤¨Û‘2hœA”«ùÏ…Á³T!Ùn$I•ž\'P§ù¶³»«+®7`óíS•iqæ7È¤ü¾´r]Ùš(µ« #HísŽ;TVv¤…’gi[pº=MO\r”I+¨Ø¯ÏÝÇ¥S»º{ËI\ZÈ$¹5QJéHÚ*7\\Û–V‰§Ës*!‘ç*XäãýkV¹–yfKcäãúÿ\0ZµQhbÝ¹”\rÌˆÓ·É±œ\0öùÕÅ¥ô1n£‘U\Zhœ7éZ“ÜÂ±hSîŽ„U‰\"]A|¸“ËÚ~ozbÛÌªñŒyÊ£ºS”ÍzêgÛ}¾ä³ˆvÆ„mÜxÅhH€Í¹€É¶*Â³$GuÆbuOSõ>õM¬b\r‘òïVr¸Ù^9 ’2¡þY\rÝi÷mwimiÁÏûÕ\ZÛBÑyŒ‹ÉÏ?\nš)ç—vòYaA†™ZØ–RvUAdØúS/nd˜€‡oEGiäªªdo<{T—R[YÛ™B1b˜Ï½z›@ŠH<ø#‘çh› Ž§~µÎ}‹S‚ØO\ZLq“Ë}}«ªÚ·6öÏ4\'$Ú1M¶µÔ.àXÕíÝ†Â:¨>µÕN¿+º75ôÙ]`‡ï6¾ç2B÷Ž×7|ã+ë´õëc[uKiÆùW%±Û>•nž8Ìê#·0ø@ô­c&ÑÃRG‡üb½º´±šÊôÇ½6ÿ\0õù¥ñåãÔ;afV>àWèÆ©o®–žb-í vÇlžæ¿0<YruH»‰l\0Øç+ô¾§Í‰‹[žW_R•Ñäþ0`Ó\'ÌÎÅŽáØWËºœb9ÙÑŽâNsÚ¾‚ø4–ì‘£™#Àô5óåË4×9QÚ¿ ©ì~9ÈC½Ê¯µ\n’>i÷íW,Žæ\nÃr#*íäê„èEtG`öehãó’7v¨~Ï€ÛäÉàÓ¢¹bÅ¿:k³¾Cƒ¸óš$ËQDéLH7môï]g†\Z[}E\'¼N@Ç¥rÐÂ£)-žµÝøh#N±\"n‡OsX\nÉß£ÝßX¤VSl¹xÀëŽONkú¹ýš´…Ñ>øf]9,mßJ‘;–B¹`sëÁ¯åÇ@³7úÎ‰¡{™5kè!UCóœœc¾ýgüÓ’?ønõây´KUœÓIí.Àœ8ìÏVV9q2J:á§\"Émr¾zàµÙ¾lôKéË|ñYË/ª½+“³³µm±Dû®žFa´û×S¬Éö?Êf‡Ê•ãÚx?>HÏµpN½“lò$ÛzÜ]j\rw¨N-Ù-ÕÞCƒÐwüê1­†µ·]ä„°\'«{\Zìoì¢†Vh\\\'Ÿ+…N ý{cüâ¹Ë¯Ü5©¾Ûæ2¶6ƒÉÏp+áÚÕ³ÛŒˆ¢Ô´»©bŠFòßv\0PqøÖ¾•§ÞO\'˜ždƒ˜Ï§­r2è×6²3¢)àýÚu¤×ÖKuæ3:)\0÷³NRn×æú”š\r¦[þÍ·\'¨ÍK¦Ü¸–<²©ŸjÑŸ^xZÚåÔ£7úVÝ†§¤Jk³ï”³nsíXÔfrék};Ð‡9=¾µ¹iâYÒ(üåÊ×Ÿþ½uksg,cŒ2ÏN§üinôû×‡yÞ‰ÈÉêyY¼XÄñ<“K¾B dtR;þ5×ZêV{#-p\0“¹®hoöI­m\\6é3†ë×µ5t\rJÁ¾Ùœ×žV‚•\n,Îq=vÚóNš7O9RTçÉéŸj·•Ô‘>@QÇ+ÛšòèËÆŠ²GæÜLw`uB é[\Zoˆ%½žîÏ-ŽÅi	8öçÓëEµ±„£czúÑ¢u*$8=F;×=¦Ou!iP¯•ÃõÐ\\k0r-òž§ïcÚ¡YYv-ÀS¼ž´ÚÒä„‚òJè‰%”à€N0\\šê-gÔÚè•r~EÁÇJÐoÙ°7\nü¾„sšèí,àKT–áÄr=¸c³Ž3ÐÓŠ`bÇu4Ló•@Næ©o¬[Kb.2qþÑª7Ú[j$JÀ lË·ÞÂ¹õðíâLyŠ\'%YÁéèqT›½™m#½}ZFE•rãïf°.´Kgº2O<P2Î<¶ìq×õ®cS‡Q!dF¹Ä«÷z¯½l¶±ª¼ÐY[æRrFTàucÔ~FZ“Eá‰äœAá‰A~qÞ«-„‘]N c•&~žæµ¶ƒ0á@F#øÀõ­È5+K¦tD@“ªåÇ\\ŠÓBÁMs¬X]4FCöYgž3þ5ªž\"–VŸ›¦Ì×i\r…Œ!šÄ]à\'ùtª×~Òî%0­¢­´²nEÿ\0ž@öÏ-š©w3´oÙÜÎ#”—óÚ9\'¶3Ô\Zèä¹†T2H‡$‡%GóÍsº¯„ y’ádXÔFy}NÞ…½ûqéYØj6îq¿Ï“\'¶{Òlwèwž]¨‰UW%Éõ5|ÙiÑØ˜DQå†wÉõéÍpñ1i—|¦p[¨¶š¬‹µÂlx³’?T£&mL¶¶…ši$È\r÷”ŸéøS£ðÒEÞBs)”nAÜzæ§Š}1µ•žVOœŸS]dWAb”9Æ:V–GŸÜ¥ÝµÛ¬ÁÒ&Aå¶8?CW¬õ³6ñ8%ÞBC\ZëÚåZÝÌivÖí¾0üì5@ZXÜÆ±¾÷»i†FÀ\n[°útªhq‰`ø†Ö;r&Ÿìèr3‚wU¨¬®Ò*}¡BƒvSÁ§Ýøoí…@¨ P?+‘ëî+]#QµÈ‰<×Lð™ç57/•w:htýWòßS‚0#œ6NÜ÷úwªÚÇ…ío€Ì\n&<™#8$g¿^?:à[Õ§y­yaMÄd‘éþ:¾šôöË1„m»©öƒ]ÄâO?…o‚Ëg´ñÉ&AéÇaYRÛø“L„Î&_´£D¼ï\\ã¸í^‡‰­G-½Á™È*½jºêvw1Ë4Ñ¼ å¹üóY¸v3R9kkífE;¦·LŽçêk^ËX†-±_¾)Ëÿ\0ŸÊº½?JÓu	 d2Ùô®cÄÞû<íS<œm\rÁSnôãL£L^XÆèa¸Þr71\'j†8Ï\0ýÚÖ·ƒj¤wßnÛ1;Ú#Ò¼–ÛKºv\ZF[f®>ñÖÕž­}Ì±,/±æ.1ŸÆ¯ÙÒšÇL’i\Zî6žÝîÂúý)÷~±šÞi`A\Z•èOy®Z×ÆV7°¼\0Ÿ,ÌÇîœã#¯çÔ¶³my¾;Wm°Gò‘ÑÏ©öªöEêyÍß…`gŽîËy¤‚§·Óüþ5•>•¯Y›¯,ãdòÚ3ÈtÇ^?\Zõ%K²b‚5!\'¯­nùp*Œ*\'qÔ{ÕFŸsÇnµmkLµ25¹Šá§ì88>Üwë[–Þ)†ê$3NŸh’3¼7\07×Ò»[ÝNÕ-àBn!WÛÎBî=³œW«xZ1î -œÕØË™^çGkynLl.vóÐžI­ÉuKyQ\".>õxÄ~½Ê3–rîèqYÒê\Z¦“$%¼Íl­ƒ´·éL|ç´´v³2CæŒ£îo`k6ÿ\0Â÷S,Ö!].b³6Ñ=Y¾Ÿyõ¿ˆ¥ûL[¼Æù7—a‚ÀŽ8õ®êÏÄPªmy›~ŠÀ§õ”Þ¦¦Eß‚] h`;âhþbÍ÷½qÅq)¢6I$YÚæÛgÊ¬»J¶+Ó\'ñ…´ÒHC[€AÏ!ˆõöük‘¹k›ù‰ƒM»j¨áTvÁ¯ÍüLÍ*a²ÿ\0Ý»]Øûÿ\0ðQ«Œr—ÙEwämò-ÌÒ>3èµ˜ œ,’–?<ŒO<ŠÙû,ÈÌUü¦QóŽÄÕMÌÐ¹?®kùš¥g+¶ÏÞãDÊ3Æ¼ç y‹Ü}+f	g‚3pê‰†b>÷Ò«´PÅÄdª6±^Äv¥–2Å-ëÒ¹Üy‘Ð©hlÅ<f%™¤,sŒw©ÒE—Ë™Ésœ=\r`ÚDDŽ.	dßÂ¯¥_¸É€¾O–ù\n½ªylh•X4ô—{ÊJ„çw¯øS³Ì¨ZG+åÈI>•VßT¹Ž(ãÞ%Hÿ\0=iñê’43[½¯”¤³y™ûÄÑ½l–ž<ä&ãÈ«Ðºª3…1¶â>µNÏÍp¡œ}ÝÇéVKb@0G¥(HM;’ýøŒR¦ö3wö«òÈª„“´aýk+SÊ@öäì\\†?^ôÔ¢–2õ«¢kÝ¹“Ù\Z¶÷6ì¥Hç†GÞ5Ñf(Ãnmç§jŠ{iVX\'Gœã¶=~µ}ddžI Ž4iÃðõ¬gÏb‰‰ì|¦<0ú\n“SžÌk\n´ÓIÇŒÔS971ÆÒ—‘Ø}*ìñl˜*\\¨ó”xçD(­ˆu.îÌ™|èí—zùb{·¹µ•\\cûØ¦É,Ë2æD`F:f­ÀY]ed(}ëo©Ü9Ê«\'–!$Õ#<ßÞ-ÆÍ}Ï‘·µ<\\½eo4—<úóéZ#ÏŽ]‡ä;ÄHÿ\0ëÔ}Q­n\nfg—ocû¹\0ÒKgÐ·!óƒý=ê+%Äo \'tNHÚ9&ª]NÒ¬h!xÕw)ÏB9ëY;¥b¹‰d†FrùH;Ô’}š{ãµ.uæ\r—Æ9ëþy¦ÛF©+ÒO±„x\\ðqéïU.+º61E»­õ©¶€çÜŸÍy#f’&8—ÀûÕJà‰Â,grG‚r0yéR†I0yÇåŒ§­eùhò±†B’3\0¦¥Ä¢{“o A\"Ÿ5µ’ö–³¹¸É-‚§®·Ip»])Ïr*¤·O4Ž°Á\ZÛÈ¼…xúÖr‹5•å<2ÈD›NUSüÓîÞxÑ%0°yÇSÚŸí“&ÉZR¸>çŠ·#ÙàC%Ã}¡Nàyõ¬½îå™[ÝÝUäù$#°¢–§@›Ñä ýÿ\0ÃÖµÙc	dó€a¿.=\rV¸¶2Élë¸‚ç­m_Bâ“*6¥ja1;0yœ„pßSW-Ú	¼µe¹U\ZÜÑå·OcRÇ$vr³‡V,¸Ú§½MJz p/Á\rÄ;Èf`Êp‡¨5U™¦åvÊÃØÓ£¹¾	—„’=Áõ>Õ2²;	ÛÉ­©FIêfÊpos$ÿ\0>zžiUÝÄ3°g‚©àçÒ¥‰’öíÖ×÷J˜ÞØÏùüéò³d¹†H®$•ÊrÛGoZëŠ¾ŒQ™+î{•Dh×y=ñþ4åŽxÑ”LJÙ8Æz~\"´etÈ”®7“Éõ¦@É&ûI[þëw_oÆ¢8jqÕ#©W}YÏ®š2ºåã}Üwª!î¦u”7•S•=­vSDñ0‚`Q†zs—1¤‘3*þñ›ŒÖ¶ìÌ¥PÌ’(ÆF»p=\0¨¥!’$!œà}ì\nÓš(\rŠÚ”3´Ç ëŸóÒ Ž$Xu¿Ì˜=x¬çM™s\'¡YSí0„WÞÈ‡“E¤ECª|Á>cŽÙ©Õ¢…‰P (w:ã>ŸçnÞràŒ,N	Ü+žHiX©mN“·+>@jƒ`Wû8;ã(7;ðZ¯Å#yAfŒ¤ìËíëUÀÁÎ>3íZ@¢£$R€\0É‰úúTÊKÍ\Z˜†ÀyaÛ³[˜‚îln…69`XUKŽG#½jéè#ÐR4òƒ§Ò[ºn‰“£cžõ {eVN_\'njA<_)/¸0kÓg;1#·½ŽâE_šÞg<à•ÐC` eÚ¨Ä–ïœÕiæ(«±|Èåôê?\n²Ê%‚8ä;C\r¾µÑFžº…Ç6ÙÕ &²nàÄm˜®ìŽ:àÕ™e•_dlQrÅU.\"œ‚&;¸ÿ\0ë×­Éû¦NRêc¤žTm²=ï÷~¸¥kufì.L´¤gÔÖå´H)^0—))Þ>ŸãXšˆÃÉ Äãþ&oJ%¶m±cåC\Z1FRãL¶µ¸Óï.Ý˜ºÈ‹€z\\ûÕ‰7ÎálgA|vkj0&F.Êz\nËÞ4ŽÅq7Ÿþ«•SùU+i?~ò]+KIÜ;ÔÌò©`°n€˜ž†©ù†6sýÔ¸Ê“À«åîEFC½äVEŒ…i˜çéPÝÅæmXæì77ùô¥š[†Ìv­å»G°>•@?“¶9di$˜ãéZF]Î\nŒGŒÁ}o*NþSü¥S¦~•&¡ij®’˜>mÎ«üf¥°hb.°4fáXîWã\'ëVeü°ÓÎX‚ðŠÒ5Ð\"×Cš–&ù¤aµdúŠÏY6‚JïPr	­»•I$&9°0>R8üë\nI„acûçr:Öñ›µÆNgÊùªfŸsŸZÆž¡’_ 4×S¦íö5»e*<Ì®‡¿b{UF9Õó*Š¸ÆOÞük^vŠ9™áû;™¥EÇýÿ\0\ZŠâ6¸¢,Q¤^qèk¡h\"•Uåsæc•šñl>T±nï]ë>æRç!ðV‡­C§Øj\ZT3ÅÎJŒ°ÏLã½|Åñ;ö:øUã¦¿þÅ:|­pÄùD³Ç»²’Gµ}¡voàò<ÄJ)o3Øú×)­ë–æÆv”ù8ÈôÀ“_Y•ñV;eJ£²èõùkÐàÄàéÕ%Et~)øÛá‡ÂßÜhšuÇÚ¡‚|øiŽ*•£ùóF»&Xúú×mñwS[ñf¥q\0Û¨Š½¶ñú×bëO©äÛ,*A¯µ~ù†ÇÎ½T›»i?¼ùá!BN4Õ‘y=Är´Hm;?Ù¬»+T½i>Þå÷(ÀëîjMN(Úá®\0/\nž­ØéN[”1‡ŽTnB°þð­y¯©Ï*šÑJšdS¼j^U(Î•I¦Û½ûM{{/—1\0p\rE-ÆÙÊ:|®N:f³®n/!qäFLGþ½iÆN¥ÝÙOZžêW[üŠN+œF‰7$›Fq×5v{Ï\"gŠH|ÙYrûµ,\n&¼äÙ*HHjëk$ŽYSm²¼	jñ\\é³Gç!‡­hÙÙÇ§ÛH°?›pSœõ8©¬n,à”?‘–cÌ:‘E´E.‹¡Änå³éSV­÷\nT¬u6’@K\0dÚ=	¯Ðÿ\0ÙÏA´Ò<\'¤ˆBO&©©¼ó’Xî\0Œ÷\0+óÛ@°½×<C§iZ}»¯¦(›¼,u¯Ô…Q¦‘o¦Ù\\ZdÓŠ,hŠøÞ.­àä¯¿ü9íeÔÜª¥kŸR_[XÅ•´U‘\n\0@cPµŽ‘sj£PÒ ¼„õŽT\r»Z{”6ááPÍ/Z,õ<µœ\0¸ÏjümâfÚwØúW†¶èÇ—Â:m´É¦éé¤,²–>H\0þ\"³×ÁnÚy¦›¾aŒJïå¹ó\\³Êêßö™eX%¸0¤õ^+è°œc˜Ó’’ŸË¡áf<9„Ä/ÞÃSÉî´BÛ÷.7ñÂ/ÝSþ{ÕH5ŸiÒÇž{XUùyÓ¦\r{&ž‘<$ê%”6y¯]éz\\Ñ9’D`r¸àšú¸ø‘R)sÂýú+à<<¯*Rqzÿ\03Ëô¯‰Z²È«zòOäLw*œn_®+Ôô\ZØÞn’	–Ø_66#åÏ®k»ðm´ó<ºvÈPƒ½{Ÿ¥c/„.\"óÝ¥XÙã–Ç­}Ž°ušŒŸ+ó>CÂXºfþ‡Óš7ˆeÜ’	P¯ú¿Qê;×E¹¶|ÊÏ\r¾ó!Ç8Ïôükã«OO¤K2_2KþçÌ…Çò®¹~(Ì¾]­â²«d«Eƒ“ñ¯´ÂbcVÒƒº>w†•ãQYŸ^Yë¤Š^`…ÉÈPk«Mi!XMÄÛÑÎBž§ßñ¯ì~$é7°<’Àï¦AÔþ¯FÑüEiv.Œ·ÊËkm¤ójï¹ç3é+mQhÍ¹\0‘¹s[ud±·™pÓ\\£…8R\0$zð>¸Íx6‰â‹g“fIu\0\0Üc=+­ƒÄÿ\0½•J	¡ügœú×-[…ºž©«nTïiÀ\Z×µž%·$`¸ÈaÖ¼Þ=^$cÌû@À#oojè%Õ­\'ŠßÉO&MÇŒõõœwÔÊ«:;id….$B6:}ÓØTÖò]ªIp«½•IÀþ/þ½`Ø€Ì×;Ûrärx\"¶í\'óšuvˆ#a<qßú×Te¡…Øô¹_+.=û{VÅ’aÔ¸ÝÎ9¬$arR<ª!È/ßó­]ÑÃrVU),@M)TfôãÕ×ºu´\"àéŠž0ö›ƒ?îåoV\\H\'ŸÍŠPÀŽ½ˆÿ\0\Z’{iAyÆr©ò«3šž}u*^fÃE¾ÓJÛšL¦ÏåIøtu;Ø ôsTã¸o ¬äå[#Ú®Ø·Êè1Ì¹ç°­ã$rÍu,I,¬„î%Õþ÷uýjXåãWýärJ>FÏÌGn9©™¹!O.Nê!VòöÞ¡$šé‹]B0¹:Is§±xNõr[µm›É£º\0äœdV÷YE.äVûÃø}ÍJÞuÄÐ¤«¶%n­Ò¢Iu6äfÝœ‰l{»ŽÜvö«‘$\"Éå\\Z´d«Æþ„ˆªñi! fØÈùºb i®|èü®™P¡ÍsÔŠ¹rZ\Z’G$¤np«+‘ßa?Ñ tÁš7Ï\0õú{Ö{,‘BÈr#<.{\nÛŽÖá­Ùìˆu‘9Y8ëD#¡Œê²/>:–EŒ}ÑÞ›¦.es$·\'%¸â›.­±Á8’:Õ¥ƒÌxÚ/’N‡?Ä+¢+C+—cÛáFÎ¥HŠK!(KHÇýÒ¥P’ÒepcReˆgŸçZðÝÙKµK34j¶:·z¤®A1ŠuòüÈ‹ùÎÏj×HÑdY±n˜U^‡5žn]îG–`hÀúcükbÑRÔ9…a“Š¸Ã¹j47-\0d‚7vaÈ®ŠÒy.ˆ’Cóý ¨®vèLr[ïå°Pö>¸®‹LƒxËÜ1ƒÛëfÎYK¡¿äH6åp8Þ­XÍqi#M$BhˆÀû¹ª««¬|žASÐV ”ÈëÐ`Vùþ‡Ö‡.d¥­˜fÛ;,êH íõ&º[iÚL¨aæqœÕ‚ÒZ¡\r4°>Sß?ýzÖ±’Þ< 1IžHî(V2œz,q›°\0æºÛBÎ¢¨	ÏN:WÎX´hH;O¡ÿ\0\ZÞµšwdD¹Éß½tS‰Í8lFY‹Ã;„W#fÃÒº«$q2œ|£ŽõÇÅml²Ç$eÙœcqþ*ê­®fÞ±F\0ù±]ð‰Ë%s´Ò7yA²[èz~5ÓYÀ…DÎ¾r“ÎþÕÌiÞt`»³ü§=‡µu°˜•”Faº»!±Å4tšJÎòÆ‘I±²}Á¯NÓá¸m˜a°H7ÜWžé0êà‰NÕ ô5èV›<Èä@7Cüë¢1ÔéÑÏç‡•ØBÂúŒ*îmáŒ±dŠä4Ùc¹(¡‰Û÷½ë´·Q–VcòŽƒ½tÇc¢’-*H—\n¾^õÛÆº/.)\0VùÈ²bB†bvdõí[0)©\'%¹¨¨}žº2WŠuŸZ+ž£>ŠêQEfhQE\0QE\0QE\0QE\0QE\0~[^C i.•\Z>6Ž~o¥ZŒÁs*Í²+óÿ\0?úÕš–¢O7ÊyÛ‚ÄsþE4Aq,Š~EÏ=+òþR½•ŽÒÖe·ŒÊÑ‡óOµEWÝ(\nžcÜõ®M/ç†Uó_äPX€zUXo»‚RÅ„W€þ÷4Òèv– wpŽòíU&q4Œª»GËõ®vï\\Ü-ìë#²g «ñ_Á;«ù‚ÚRìgŽõ´PÓYÃpêÝSæ?‰=sQÉdð€\"íA¹€=«F´;dSç$ã£{Ö¬MGH±%‘ó•ì*“-ËC\Z;¯‰@þ\\JyÞ¥m9-B\rø(NYÏ\'úV´P]F¿h	´ƒ‘Ú«ÜÙ<±­ÔÎJ#týU^Ò]Çc[Øb‘QÝ•G9^õ uë[ÞK‡óç\"ààgÞ›íÉ†?™OCŠ¥w\rµÃ\r–âåw¢Fm—¿µÒâÙXíÝÑ»ŒœzZÚ¶ºûZÈ*zóEŽåÝ¤š/%¡£\\qøÕÛmJæi#”³[‚ÛPý+77Ðô(É™d@R2:ô$ÕNÚ;…‚hÐ†cƒ…ô®NË„œ‰f8GVÆ~÷ëE5{›«…Š7H­¤‘Uøû¸ïß8¥ì›Ô¨ÁîfÞE§lH¡Ý\"¦íàŽ•˜Öv×ÀÁåˆ#\nw2Šèo® iKE!+\n^1š­k$,ŽdW˜Aeõ#¡¤é3C(hq€±D\rÈEùYÀù1Îj¶±Å²ùkö¦ÀÏ ÿ\0*é¼ç¼¯’ rX÷tò6•;’ ç×¥/fk\Z­Š?ðPyínl|C¦ÜF‰¨›(ž$UÏÊ‰¼àõÈltì}ëù³ñŒÓ> ©ÞÎVPGý Á@^MO\\Õ%·î-lü²G-\nP³¼¶ò¯çƒÆá·zÍòCswæc…=+“QFV?IàØ¹áå/?Ðòÿ\0%$1ªEÉoJ¯©LŠ•x‰ãÖ¶oÒŠc,àp=«•¼–ÚÒ%ÉiD„z×4¤™õi™ËqüåV>TäTÐƒ}(†éÕ?¸|ZÎ­nÒ\\YÊêRÇ=p¥Q„™ç`ìÑ*g½kšQîvRw:YV1o<¯”‹,qüF°>××[JH¸HAéKiœ¥ªcn[Ö­]-¯Úmîá¥¸TØÙïXÎÑ÷&‚o² XŸ÷¥NO­9 /’EÄo¾ýÉ«0[	Š™S‘ŸÂ«]äÚ”U1Æ²ã9ëB¡ÜÑÒ¾ˆË[k{—Ib9»W>ŸZ¯+Ío(Ï$«|À*y!Ž\0·1ÍóŸNÕ‘¤×™cøVô©+êy¸å(è¼F¹PƒÊ( ±?ÅŸê+*âgg$—qSWî\"‚T‚yP£ÄÄáz°ÇO¥2[hæÃ«bØAÜþ5ÝN1LðëÓ›ÐžÝ!x˜ü½ýªXç²(DJÄÜ/­B‘¡ßL\0/z£6Ëhe#ÌÎãæô§-tCTÝîÇL»%‚LiË­kÃ¨@°ÈN?*çžF1ˆäbL:Š®V·G1<|ÏÍSË¥e6¶5Ì¾mÀ³ÉéíUçÔ-â`ØQ%`ŽqøÔW{­ÙFõ\0üT³Gk¨\\Ù¢&ßó±ïŠ;šÂ¼­ û=&–Ú[b`þó×Ù­&gFËöd89ïVMÜw¦\"ÛÑ†Ü”ÙçŠ8cmÒÊä‘è+hÀçÄr½deê%¡HÚ\0xQÀ?­aÅ©µ±\0¦’U«^Úf•ØH?˜¬Ë›{{·\"50´/Èõ¢¦¶gG­ÑVv\r®3æõ×SÄ»:ÀÉ€[·°«²ÛºZãí85d¿i‚A9-²R>¤W]8‚œ‡ÄÄE&äÊíš°ÜMÂ	ŒrƒÀ‚\r\\šIíS!‹#œcûµR:@eyJÇ‘ëÍzîLæØ³Á%šÛ7•ßÇŽõSUºŽXâ…£ œò*åî¦÷lpö¬Å‰n$Ì×e¸âº:­2(‘!&o$ÐgüóR\\Ï\ZÅ¸ð3Ú¬2 -®ãƒŸJ¢ÐåÄ/ûà’žßJÆIL¯)-å¯”‰’@íQÜM;#¡ŒlNOÐÖ¤ÿ\0f0„JL¸û½ëœ¿Õ.­f¬ò“´8Tã}ˆ­;-Y‘·|à„ù‰|zVŒxØ°FŒØ$Öt7l‹*È…ÉëZþ‡dÒMx|Ëcÿ\0}rkª1i]ž|¥wcõköi´eðN‰®TMr_ý–-O¶1_][Dsç`´ŽÄWÍ\0ÄVÞµµ´ˆˆ$¹Ý†q¶Ž3èG5ô¶˜÷­Àó²Gµ0çÕTñ•gœŸæ~«‚£ËJ1}Bö×*ˆ¾jàÒzNÕ†)¸½†Wê+Fú<ðå”À÷k*Ksò\\F<ù$\0óíë^2fþÌÓƒPUäc¢mØ¨\"¸ÎÛK-€jèŠ)åÛòïÀÈ©<”öìÚÃ§½7&c(jhý.HÅÊÄý‹ÿ\0ô¬‰Ý$$','ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 95\nÿÛ\0C\0			\n\n\n\n\n\n	\n\n\nÿÛ\0C\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nÿÀ\0\0 \0x\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ûÚëRƒì(\\lŒ¶qÉâ¿¿Ewý¯sw4E¼Ë‰ óËWî~•ûO|ñ„®Fâûx/EŒÄY^f	Y‚‰ï?îçšüqÕ>|Yñcý¯Aø{©Ë-‰^ÜÆNpÏ_[‡´f¦­ÞêÇÑå*ÓUc8´ôÝzž_ðM:_\Z?ö‰hÒfwÌdãIŽƒ×õî›.™6çÓïá \'	 à}:×û~Éº¶£ûKÙéŸüö›yô;éÒÖÚñÄŠSËMÛ¡`WQß¾¶ñ_ü‹Ã:ý­Àð·‹uY#`ƒQŽ;¤BAÁB7ucXcòê9šXT³µ»­õÔo3ž³§(]oæ|gÿ\0±ðíÖ«ñ{âï.ã\r$³ÚÛ_úoq$øäzB3ô¯Ð\rM[83€:×Î?\0ÿ\0à›?¶Oìq&«¨üñç„¼ee©Ü¤·Úf­fÐ½ÑŒ‡-Ê0ÞÃå•zõ¯M_Úk]øsv–´ìûâŸ¸m¯ªØÁý¡§ë¸a”{”ô¯[Êê+l’_×üÊöu+{Ð³¿Dõû·û®{=º2„Û¸ííU§²k‰ÌŒU€;@aØ{ýk;Â¿¾\ZøûJþÓø}ñHÕâH÷ÉµÞÉÐÍ%þøÔÖ%°wÄ·c/“ÑO¦M|wó¼)%ñJþ¶_ðQïpÄ9q³œ¾Ê·Íÿ\0ÃÞÙ ‡j)N:ã\"¹ícMŠVmûv”ìGqŠéä¾´ž&’	‘û¦¹½bD.IÀõ¯Î•j}Ú©¡â\Z<ð÷À\ZÖ<i ØÍ O\r¤“ÜÜxvþ]=®]T•ˆVlœH˜¯™¿d¶´Ð5Wã–³“q¥ÊòYÜ·ð7•\'œøè~W#ñ5ë¿ðQ·‡~\ZGá«y™¬ß$e	çÊOˆÿ\0ð*ñoH>þÌvú4»ºÖ‚«Žø“ç|ÿ\0ÀßÆ¾û(©þÎŒ}¤¯9%^‰n×cçñ”°Î¬½Å¶ºoê{÷Âø,.‰nñ[|Pø{ul¹\0Ýés	ýâ­ƒùf¾ëýn¯Ùwã7ˆ,,ü)ñwH7³Ìª4ÝFémnþÙÊUˆíòƒÔWá,ñ¬ïýÕåOzµðâÆ[½h^I‘åòzqÒ¾æý’æzŸ+ˆÉpø•ËãøŸÙ†fÓôÿ\0Û]ùñ-¼vŠï\"·Ê.IÍøÿ\0¦ø—ûFj:>©£Oñ‡Åá²4K¡Ë®NÖj„c1TãºE}ÔÅRU!wÿ\0\0ù¬M:˜*¾Â->].}¿âoø\'Á+íB\rOÃ·šŽ‰$S¬¾TæÀä0<¬™ qü%i5¿Øá{úŽ§{©íFÓyH°Œù“_TßZé_cv3![æÈÀÀ9®vOÚËó+{cóÏ\'ËÜù½”oèzŸÚ˜îNWQÛÔù—Fýš¼àKûSÂ¶Ó§HÙÕ¬\n²°$¸ç9<â¤Öf:tNš¥ŸháÊmaøð¯¤WÁ¶ò1-\0V\'ˆþèw°3M	ô¬°¼¶PÑÿ\0XçÖzžá}oÃ¾BíÀYŽUÓƒø÷¬Ú_ãÃï‚¿	¯<yâ¥Žx­¼öÁL—3?	Á$û3^µâ/ƒz\rš †è+ËÄjšùCö¸øcsªümðï†üE´èú–uH­ä<My49ôÎ8¤Ç¼Ùì+š¼åB.O¡¶±˜¨ÓOsã?ºÚøæY¼O¬h¶>.êÚ}ž‰j‹21<4ÒmÛ¿Êêz×Ïþ\'ø¿ûDx\"îm[Nø©«_E\0ÒIvß!Ï¾qú\nû·â?Á|Vy48u?&iä\n“¤gåaža´ý3_\ZþØ>!þÊ>,´‹ÅV+}£ê±·Ô¡Œ„Aù‘”ý×^>£ŸZåÂbjœ³‚wî‘õx¬¶ž4$Õ¼Ù7Á¿ø*wÄÿ\0j±Y|J‰uí(0Iîcˆ%Ä+žXãï~=}kîO|HðÏÅÚxïÁú¢ÜØ_À$‚U9ô#± Ž ‚;WäW‰!Ð[Q¶×¼3Kç°DŒ0IÆx ŽkéßÙsö­ð?ÀëýSág‹ïF›¡ÉdÚ…­Ä™-åXCÈ\0IWÇ@8|qópñ\rQÅa¾³„…¦·Kªò]Îl³:ž·±ÄÏÝ}_OŸaßµÖ¥sñ?öšÒ¾[6ÛMHã˜(Èÿ\0¼ÿ\0ß?*á¿jO›ßÙøJÑ¿s¤Ú•T`	$Á#þø	ùšõ_ØÇÁ‘þÐŸ¼Oñ­]nmÃ¤\'?rY’9èQ\0GSãWìñŠ÷ÅZ§Šü+}k©-õÓÊ¶Óƒª¤ü¨	Êœ’:W›†¯…Áã¡†«%gküÏÀõê*•hº°WR};-—uYZtÑòY°yë]çÃ/\nO-ˆ¶ŠæÜ¸QÎ3Ç¹¤ÕgŒžÕAñWÃMbÒ<Ý}žëûÄ?Z÷ÏÙá÷¾%hÚjé“Qp…å0¼{ãÑOÆ¾‘8â$£MÝ>Úœ>Õa¨Ê¤ô±öçÀÏ\n[þÍ_°µï‹æQ«ªÀ¶¶?.¤[þ»åEhþÚ:Ð´X´ÿ\0‡6ÒÍ¦x\'JYµ{H‹ÉqxêBŠ¼»à*€9$‘EvfØ¥„®¨)òò«|úÿ\0—Èòrœ$ñ4w¹»üº~\Z·üwöŽñßì·¤Ëñ7àçÄMWHñË\\Á—áølóNñ0’E‰b–#dÀ°Hþlø®ŸIÿ\0‚ƒ~Ñ?²ÂêßðRÙòÏKÕuùšÛO“áþ½¥<×W™Ú¦9HWÜèí+Ë®åSOþ\nSð[Ã_´WÂˆl5‹»«Ký#S·¿Òµ]>QÍ¤ñ¸ehÜ‚ã<‚:q_ž\ZOÇO‹¿¶íªß¾%xÚÿ\0Å\Zo…ì¿±4ÛRÚ6º°ŽR±BˆˆÎêIÀÏ\'$×¡V­:4¥;},±U£O§Sëƒÿ\0Iý¼~(|H»¸øQðŸÃ\Z†‘ØCg«Á5ÝÈŒti%ŽT@øÁ* …Î2Ýk¼ðíáñãÂž0°Ô~4x~mCA¸t\ZÅÖ˜VO±ÆNþÎ\"a-ò3’\n6w/§É¤xM‚+˜D`¯Îäç$dôéš›ÄÞ,Ð4ÛX5oíO.)PùqIÉÈöë^\nÌk9ÝØú7ÃØGO•oÜµûzÿ\0ÁH~*ø;âO„<Kû;ü¿Ö~éz ‡ÄŸæ°‘ô©®åÄfRˆ÷H¾kþèÎU2JÑøÕª\\üNý¦µ=^ËK½}ÊH¼A>Ô†å¥´‰–Þ5Ý¸Y™¸NyËTß²Œ|;ñÛÃ1ý¾)xãKÐ|7{5¾µm=ó*—²7A¯m¡bÊ™‚Ç;Lò62pß<iðò/ŠÚê|Y›LŽ+—·Óü?Ðù@™Œ‘“€«´©+ÜUfˆUÂÇ•jÿ\0C—#ÀO˜Î3_\nµûÞÖüµ2<)àÚ~$Ãaomá)<1ÛniÌéwåpT®VnNsÀü:ø(çÂ=âì©Ûø–Ê¿Ó\\X>Î|Ð1€}ÆEv_\r¾,izÂ[Ê¥Y@…tÿ\0<>3xBËÃ6·¥´²æêGl\0£®kÅ£RnªiZÇÔâh¨Ó×[Ÿ‚ü5ñA¾7þ³šâiK=¶ß™@ç>ãÊº\roÅöÚO†¼C}¯ør)›XðÜºe£Í\Z»[ÈY_r‚89Ld:äâ¾Üøû1_jŸ`ð~›ðéô¿XZ^m×„âº•-šH¥VˆÂAyïŠøSöž×|<ž0×¬ü&ý ë³/j0	lY‚0ÏO”Œg‘_]ƒÄÇ\Z¥JKEgøŸ™`~ ©ÖOY_Cí_ø\"î«¡Çð7ÄV2H±´~&|ÝÌ0%-CiôÚ\0àŠûGÑ-/¦_-REl`¦5ÀÁ\ràŸš»ÿ\0óÑ~+j\Z½ÖŸ¬øËV½ÔZcµÒHVCD¦8bÎ3žsœ+ê;öñ·‡õ„šÄZßÁ¼n›O˜Ã&=J’êkà8‹!ÇVÌªâiFé¾šôí¹ëå9ÖžjNÒZk§ã±³û?üÒµ›»u“J÷á¢¯­ìåðÂžMNëá\'‡ìþmÅøÒ!³\0qûÀ»³’{×3û8|0Ò|9Ïªê×)$Ê\\Â@c%Gå]/Ä¿Ýjú£øcM¹¬§Ÿ*)Üò¹þèãñÍxùn3£vÓ‹}uM%¿Ï±–g¡‰«AÞ+3æÿ\0‰_±ÏÃÍkQ»ñ›áË8®î®\ZæYV—œîç8<ö4W¼Ý£GË,BàñEz•òÈbgÏU¶üÛ™ÙC6«†‡%;$|—ûDÌSÂ—q9ûÉ_œŸ³‡àð/íWâk%6Ïgs­ËtwG,ª®w)\0rÌä$ãƒÅ}ññ—Äw>\'Ðg†Þ2T.Ix¯Íï´OÃO´]…÷Ž#Õíuy\Zt–à5œÖóÈ¢G—$lde\' €=ñ÷yŠ©RŸ-5sƒ(ö›•gf—ùiüOý“ÿ\0g/©k®|QÑÒg°•&…Òòhæ—8ØèêS©àp\\ßÆOøÇZt?\n¼Má2y,ôÏÙÔÄY\0&ÙFrºƒ•<\0CVN½ã_Å>’ÓÁ×ª··P³¼²b5b8fÇQô¯ˆ¤ƒö¶ðÏíaãOüMÔu™¦Õ ‡UÑ\ZÎh­`‰œä’<½¨	#æ%€=N\rx¸u:iËáÚç×G	N¯4¡ôÖÖÓÏtþë¿#Ó>3|+øÍðkQÒ-¼âmÆºüà7iÚ/fµe.ÅŒJá‘9ÛžyÍk|ñÃˆš¡yñ£ÃÖéâ³\rÔ:¾ž\ZQ2×årK}¦½à7ˆ¼WâoÚÏO×ü=cª^Ãáûgšñ¬mÝÕ†ÕI\nƒ€y rxŸí‡ã½Wã§üTñô+ûÓ|&\n5¯“(ºyÉRàŒ“°Œd\"»hà+íœ¹e¯M™K/ÇûÃš6[=V‡_â?Ú7@ø{ª‹O‡Vh––üGacN~êÐ{+Ð¾~Ø?~2øªßáÇ„¾KâûÆû8´†]±Ã‘ˆÀàò;O×Ç^†çÅbMÄ*mîà¸2£Ì½Cž20Aïšûïþ	ü¾ýŸ>xÃã °Š-BÎÙíôpÊ12gŒòK@[©ÞÙëçPÃ7ŠT¥+uoÉj{xŠÔå…RQ×¥Ï@ñ¿Àx->k?¼{ñ_N·Ö.tÙlÒÓD±{Ëm!™NË$‘™Iù‚Œ‘»­~^xßþ	Õñ–ëÅw¿4ŸÚ_[E­E+xÖ}\\Á¨±0	 \n†“\'åf,ƒ°çëÝKãf¥{«!½–æîêR@\r¹årrI÷ÎI?S]ªßXÂK€×/þ¶P~èþêÿ\0žh£›UÃÎ^Ê)Eíý_ÀáÄdø|Zµm´}ûünÙ{öqðGìá¤|+²ŠÛÃZ$V×wók]\\rÓJ±…Ü»ägl61»+éßþÓ>ÕJFÈY¹ó#»WPb¿5n<vÚxcö’î3‚½WÐ¾2xŽûWM9/åPòÚ®yúÒŽiŠ”õw¹Å_‡²Å\r¼îÿ\0ÌýšðwÝü1–\ZŠËo4`¬±¨møü=j¸¿²wvòGÌäîÚ2së^[ûZø‡Rø\Z.uá,±És¶ÒI“\0|Û}GAŸQí^Ü¾€ÀÅ‚GnµîBJ´¥ÔøŒB†*pwIîfÊÐÍ))Î8R0(­FðÐ… ‘ŽâŠæxW}Ž˜ât?/>+üM½ðn‹|a¶Y\Z<ª«wëXÿ\0²ÏÂoÙ7öáµ¹øyñ_öW}3Æ7Þ¹µ_ª=ÄèÙöÑ’2ªÁº,‹ÏÊË–<÷Æý}.>1ÙxQhÄ­,Ê;•ÆæJõ„ž3µøkã½Æ«t¶†Êfå0Ž9#hˆ=@W\'Õ­lt¨c#Mí³ô>‚m•H¿{uòîxgÿ\0`OÚoö`Ö#ðOÃŸYøöÚv–ÃI¿Ôb¶ÕáµB.¨e0eIô¯ø‡àÛÆVz„_cÍeµ;g+¨_K¨ZH-Nê’“œ{#¨¯Øêš7Œ|\'gâ½OWÓou‹kÉ¶ëñëùŠŽ9Œ`\0\0ãåšúÿ\0Àû=+Ã\ZÏ„|á›_\rK¬_½Üš®“Gí3È«ºà®9rBƒ¸rsé×,ª”¥í\"´zÙ_™• «B>ÍÊÏEv¼õ}ímRI½ÏÈ¿ø%OÄŸÿ\0³Gü\'zgí[ûGi1x‡Ää­íÞ—6ÛWÈP‰pDQWËùvs“É¯+ý«o´]sã¿‰âøoãH%¿\n§Oho”ÆÑ4hTÈe‘ãÝ¸v\0:×Ò¿¶7ü_ø·ñßYø—ð‡â‡4?O;}/L¾lW<›‡Ž5Œ.{íÞ<äWÆÿ\0¶÷ìÉgû/~Ð~—Â½ÿ\0‡ï4g´µÖãf?h¸R•`I¸‘CmS·dd–ÆU}´¨¸M+Gku·è}TèðÞT1X\ZÓi¤ªBIZ-¥}RZßT½çkÝ”¾ü3ÕOÅ›Ç¸žâõcŽÜ½ÓÄDsIûÌªž˜@xöõ¯°/luKßƒ7?\r4ÍbßO–óX[»Ë›ˆŒ›¡QB°Á&<dôÐî¯/ø1ñ¯á‚ü½ðÎ§áûù¼Eá]Gtry»aKkÆ, `ò<ÈÛƒŒ3ñ÷ª8>\'ëz´íö;f¸šWÄvðòyéZññöçƒ»”¹µY*µ6µ™ÓÚh>	ð™.†{©ß\\¹ÂŽŠ¾ÃŸRkWñîç0Û2p­iZ|0ñÖ¯{·Š!þÍ’hÖA\rÃm}­Ðzg:×oðßà7€¿´æ‡Ä—×SÌ°†¶Š$«ÉÁdmß7Ý\'²çŽrÃdÙŽ1§Ëeç¡LLc¤u8¯‡þñÏÅ-rßÃþÑ//®îd\rµ¤\r#ÈÇ°Ušûûö9ÿ\0‚B6›}gãŸÚày±è0JÍŒq+/ŽGÊ>n¹*k­ý…|_ðßá•ªé~\ZðÖ™¦Oq\n¼—0 iÙ‰Ûç pAÏ\'qÚ\0Í}w¥x¾Ó^´ŽîÓQ€I°²8ýðþò÷ïïšú¬7\rC\r9>gÛ¡òùÆ#2œh+.ýàtOéš5•¾‰¡YÅigkŽhb#AÐ\0:V«YÓkFºÖm4»¯²ÝÈ¨ì àÀæ+ZËÆzUÿ\0×8ê¯šÞ¬\Z•­±ñ*•Jm©n>kT+´&xäƒúÑVRúÒáv¤èr>ë\Z+/f‹ægàoƒüI\'h;‹«Ù¼Æ†Øœ“Éf~Oé^Õñ£ÃwzÂ»ýAekeM•þÑå–ÚN^;WÉß³‡ˆ/o¿i5··¸A²ynCrNBÍ¿Jû»Çºd¾1øUscqûènlÚ\'€6” äõ¯™ÆB?_´žš£á¥(`×‘Û~ÊÖÿ\0	þ,xkþK{­KÃ¯dm­5{k™\"†Iä“Ñp\ZW.ÎÆOºð;×ºø¯ã.ƒ øWYÐt\r/^Ñ,ü\'®gÏw«é³0¹Ês-¾wI4,ÓybN™VÇ\n\r|õð»Åúg‚t}KðßŠ¼)cšÊÑZÿ\0Ê]Ñ 0©–1ˆÔ8]À‚JäkÓ¼AûQhñÃþð&¯e®=åçüOÌQ³ÈÊà¢yg…Q¼õ\'yÚE}u(Rœãe+Y6¯éÕ;\'®êþGÇb9êTPiµ/{wdÓëufÚM.šù“Yü;ñÍ÷Š<Q­|N}\'VðâG\néÚuœÌeÚ±n¸Y‰à¹fùTvUÉŽ>]ý¾üà»ß„Þ0ð?‰´-;RÑlõtÕ¼!©xrÉç¹Ó¢Xƒ³É!%xÛt¬Tccä‚GÓþ<øyã\r_øãh¼!¥Þë’j(Tðì7‘ë_wÎ…æ–Pð<˜Ø\Z5b‚&8Áñíu®|Qøªø÷[øÉ­G¨xÛZÏá½-Ä)+	-JÝÛ°ò±³”e%NâpQ^ƒ–NÚëŸèz9MgSÊK[Z:îšJËnge{n¯vŒ¼â_3k\Zž‘àëÃ‘Æc¿ñ¹kåIzÑäã2aÈSÉ;UéÍzŸìçà),üR<]«ÄŸfå­ÛÌg=UC”ðFHí_)øÏö›ð‡Ä(­¼h£OðÍÂHlíáÞ©o-°ªõÜBðsõ¯®~ø—]ñŸ…ô}kÄ£O²Óu¥Žm\nÚ”	íÙ1àÍÈ,p[ \nùÜ\nXšüÍYEŸ¤æ™wÔ8s):‘æÓ¢¿_ëÊúÕâ­Yõ]3ûb-YÄÉìˆ0WÐ7oN3ý+›²½¿ºš+øK[Ê&sÀ#\0>•¿©è6°Zy³­Ä1ŒÈñ’ÿ\0Q–ãéÐTPêÚG…Q!mno¦m‘Eqx×wüôÏAÓç\'·$}Ræ”¬Ý’<¨áà¥Í#Ñ¾ßjZ¶´÷óêÂÂÐ>d¾w Ã;‘q–a»®9èIôúOàÆ½6ËÄp|ñÆ¼-5‰a¹µHÈ2!VÂã#ž›°{|Qk®ø™üCý©pÛOerÖ±XäŒ•˜w ú¯Ö¾£ðÇ€4¯ÿ\0SÆ>Š;}{Jui¾Í6œqÉ†÷ÇP+ÕÃVŒ“Kâ_‰–2µ*Pº^ëÝö}õä}u£x]u•—Â!Õ>Ñ4P<–±±Þø<e*O?+Ùþg©x«\\ð¦ læ¹=7E È¾£Ó¡v ŽÕ‹û9þÐº´Ò§„>%Bmµhœç\0bwUÚ%‰LpÈp68\'Ñ¾.x[Lñž•¦ê6I/®\Z7¸†‘#˜«2¸“êÊ Œç9â0ê´\\£¿õ¹ñõ°SxžY«ólÖÏþþÏX||ÔìSÎXzœÑ^¨x»Æ²gÔfŠñ_5Ì%„š??a¿ø›\\ý¤æñUî‡5¾5¬¶ÝMŸr8LôÎÔlí_ªÞºM[Á^@ÆF?\nø7Á°µøgkg¡Y¥­ÍŠ$új€²\'Ìÿ\0{Þ5ôïìûñ«KÖ|+nâ|cÑŽ\n·p}Áãð¯Œ«[ÛWç>ÿ\0T©)S,z/ë¯sã_†^-ð—ÁïÛÆú7×^Ö¤ŸÄW0[ÚÏãŸ°ÚÅ˜Î±°¸a\n¼fPªqÜ“öG…?oOÙ“Â³»øoIµðþ•â«kîì<7e,W1#o”ÏqèËm•fœ\0#?ÿ\0ÁYþüFð7Çû¾Ðç—ÃZÝ­·Ûî¡„´Q]¯îÈv–QàœãœŠóOÙ×âo‚®<gc¨ø·@Ð§¹H¥ˆÙxš,ÙNÍ*³Ê	V!¶–]Ûväf½Xâ±´bšw‹ëÛî×Cè0ùñ=ÔåF´b¯¤§$µ³“²rÙ+£ô×àŸíý¨|Vý¶µ¯ŽzoµmÀ\ZƒÂYh¶:pŽÇJ™c‰œÉ¹°e2yÊ%V.V@\nìäÛ÷þ\n7áßÛgÄ¶ÿ\04ù:u¦§çÙ\\^²©kÈ÷\rèYr–YJŒõê:ŽËö?ø[áïÙøßöñoÅYdÖ<C¨(‡TðÞ3éèÛ•EÀ‰Cq›r´Hª©÷ÝyI©øGà?†f>3ŸF&M%õt…Óüèu;§W	—*¶©nê8#iÏŽÆ%ìù®¥{ÚßÕ—æÊË2<›+ÇÇS4¡ìùe8´”t|÷V‹”ÔMû·j÷>kÕ|ñOÄ‹à-7K’-Á† ùÏî×\0=€ôëßœ|ø~¿u=7\\ºÑmïÌMe~V[yÈ`””)ä.Póø\0ü)ñ‰àùnüG®O\ZOzþeÃÆ€|„ä ô½çÀ­>3xFf;^Fd‰Y7aÝÏá\\”ñøœ#J\Z/Í™çxŠY†k<JZm-h­¾ýß™ØÚø—Ç_¼eâßƒ>=¶¸Ógd†Õä04‡ø— sT¶AÈ=*+-ã/‡´Å»×ü2Ø<²[Á7›,¤}ý¹=F	éÎ+À<eðGã\'ì¯ã|aðãÆw6ºF¥2ÿ\0hÛÛÜºÛ«îÿ\0XÑî\n¤ô/ƒÛ<f½ƒáü+ãŸÃÛk[?ik{¸*xD‘L0FVNN¸ÝÏØ¯©Áâiâ©ó­¿&y´¨NzIßð¿Ç:wÅ}:×RÒïVRÕ>Ë©ÛË€ÌAà}F8¯uø1â¿~Î¾0²ñf…¨âÊä…½Èˆ‡Ì½ÕN	plÕÙk_øÿ\0Ò5kø|=â½:¸¶×-!0Éq	ÈùeLB7$6ìdqódIwð§âÏ€õy¼ˆ#Ôd´Ÿ0Ç©*«¾;‰vÈ¬§î°^sØû4iÞ*¤ÌNR¢Õ»§·Éö>„ñÝ‡‡¾ èéñƒÀ–ÉNûuÍ2/˜Ù]Ë äíÝÈõ8÷ô¯eÖmíü®[¬ð\\…K¯,3|Ù.€Ä)nxaž+çƒ³x«Á~$¾ÒSPû¥Ë­½õ„ß(ÜÀ”TÈÆv–À=BŽµêzwÄ=Âþ&þÁ°Ð–k;ÅÔL{Žìcæ<ä{ð¯FoVx²ËeN^ÊZ­ãÝÁ_¡‰ûW|Ô<!ñTx“I´hôo\\É${Ð/Ù§|Ä8à) ºŸî·µìŸü1«üQýœµM…šê]Qe{<˜ÂÊSd\n2qÔQ^u\\#ç¼Uîy2Ë1Ø—zNéi¢¹øGð/ÆÚüú-žŸã->M?S[t7V3:—‹#€Øû§%O#8<ƒ^ÑðwSÑ¼+¬ê:{2¬WR‹¸sÑY†Ägþ^AñCáG‰|	ã;Ö¹‚Xn\rËÉÄq*–$0=Á¦hŸµ[\rW•­Õ5+]-¾ÊÒ?Ë»#>‡µ~ŠÁÊg:kÝîá1‘ÅÓTçñ~gÖ÷zç†<MàíKCñœúÕ¡‹QþÑÇ”b‚On{ú×æÿ\0í»ûéÿ\0³¿ŽbOß­Ï†õï2M.##Jö¡væ6r¸#æI;°9é¸ýkàï‹Zæ©ã´Ó£Ðá»ð¦¯ábuˆ\'ut^pç;‘•Ê²Ÿî|ú)øUðk_ðZé-¥Ý=ÁH ¿s&Ž=;V¸HÔ’i„0Ž]U±ò÷ìƒ«üIÓ>Ùi–¼·sÝˆÏÚo\'Xgµve/\"D¬[(¬ñ´‘œŽ•±ûc^øTðu…·‡<o§Ü]‹£q¢iPÝFí#ª4f+uV\0.s‘ƒ‚[ /Yà?Š^\rñ-Ï…~hâ@aU‚ãnå†Â¨pÜã$ã§ƒ¿aÿ\0\ZE­7Äê6í« /\Z\\+ÌºYxˆuÁ_ºNqØú”àêK–KMŸ…WKûÏw_]?­¬|¥«~Ìÿ\0í¼)ÿ\0	Gˆtkéã”–t²ËÃó60\0€x8Ç\\òF\0¯¤¿bßÂž°Ðåa·+î|¼Â»o	u-\n=>ÞÑu[Ÿ$¶›§<¬¶öë!lM19|)sœ¨`ã›öqñ_À;5ño„ç—PŠX’}Z™AÎB–!W‘œó‚Iäišå‘ž{šŸSR‹¥i¾§¨üiÒtxB}.å]üÈˆd7±ë7àÏÁÍ_Å_!ðŸt”];qxèð\räáås×‚	1sá4oÙ®¬²$¥+uVˆ<ƒ^{rë µñ”Åå‚UÇáà*âhsB×ß¹¥)Ôk–,Îð_Œ,þ	þÐŸ®ü¬­‡†L‹©ÙÄÉ­\nˆÜ0ãwœg¨ŒWß?ü 5H¬|gá‰­ü‰£\"2ØmÑ0ŒIê£×¹ùy |ñÄ[xæûTFòí,V)1&ucŽ˜Û•æ¾íø®øÛÁv†ËJñ:[i—[çÕåš˜3Ä¤3Àí!@û¿xm¯½É©K†äŸ]OK[IQœ\ZçŠi«hÖÿ\0~ö;;ýSÂ³èÐhŸ®<FW³’1æL\n¸ÚûO7\09ÇàŽé©4Z=Ö¬iMéo&K¢&*YzÛAEÇë‘^9â[¿|EñÌßVÒ¤­°‚5…„‘Æ9q×q`H •^s×jÛÆòø£á”—z!1G¥_,d!hßÌbx?/ÝŽ½yMjŒs,}œ$´“z«è¯Ðú;Âß´/\\ÿ\0bÞ$>]Õšÿ\0fÍ7>`.ß»vè\0?.OvoQ’¼gCð®©ñ+á}½¾™m%Ìö’0n$L9Ü¤‘»©ÔV|öÖ×¹ÃK•j«Tå’vz_oF¬y¾xkÇ\ZQÒ|I¤Gqa#æŒú«E|Ãñãö:›Ã¾šæù5	Ì)j ùÓ#?3/}@¯ºG”•B~µŸy tYü+ä%ÏsóØT”‡çwÁÍ5¼	kªi×+åÌ’#\')ûÑƒŽ9Ïíf»KãG…ô˜¢°Ó¼ÙQ€«d®qÞ½[ö›ðW…´uM7BÐmmïõ&2_M\03&zî}=+Ÿø=û\"Oã]cÄQKkcœ¢*âIþ™è=ë’4\\&ÔOigU–4¬½Þ£g-ZÛÇ\ZÎ§­Imr.!|À6ìcŸÏ*?*öô[y¬üëbUÔ|ÀŽõ¹á¯„þð>œ4iÚD\\ Ë9õby\'ëW#ðüq]mgm¬0@®ºQäŠLò«â\'ˆ«Ï\'©ò~§ñ‹ÁŸ\rþ7Þü0ñO„m4á«^î²×Ôí‚[—ˆ8K€ü\0O³·v2\0;‡¤Ü^è–ºF«­£Er÷lËa,Ñº®JF§ÍåäÛ‚ðÜ±#\"ÛöR´øÙá	môt[]bØ‰tÛ÷ØêrÇU$WÍß\ri_|yþ	|[ðŒÐêVÓ¢·™w¶HíÃdˆ·)DOÌ¤A$drß]ö-*«ÝïÛÕ~§Ôå˜øW£ìfõ[\Z>6ðŽþüFÓ¼Xu+4Ó5(È¸Ól1+u$p2NAÏ$œ×±ü7×Ÿã„,¶ò.g\"¦¥xb+ÉçÉ\\ã.ÃöA$ögá®“eñÞ±^\rOL¸³aw\nÌÆnÞnÔä‘žÄ¯kÑ4/ü9ð%¯„|<–°§žFŽÔ>ÑŸ™Y¸ùò¾§Ž2\"º!—a«ÖUÖß™ô4iÆ•)[®ÆwÃ\rE(‚þêËÉm3Í»öü›QE\06œŸN•æš·í¥j?¬~\0Û™%Óî¥+­kWL½Ã2yP‚?ybÚÛ÷…Rý¦h³¥é—ÿ\0þj»5ÝCiÖoR5O„áŒ{ñË±Àï…\'¡5ñgÇÿ\0||ø5kiã\r/áå—‰4-8F×\"ÍŠÜ[9c‚”=rÆw,Ë\nîŒ§i/»Òç’ç<.#Û?²üúuÒçèï‹]Ðt¸¼7¬ëÌ×]­Õ­Üm‰%EWPÌúûýr+[àDQ]x£ÄµV[ëvrO1\0Ù:æDÀê	\n}à|û>ÿ\0ÁPÓã£j5¿ÜÇyréåÜšŠ²H0œ…8*K)c‚@-À\0WØZ>¥ãÿ\0êq|Pø|²F‘È;uùíf`.:îÊ“‘Ô`Ž0ku‹¥9>WvºyÔëSÆ¥$ÒRŽe}Ñõ×ìQáå»¸½Ö…ÊIglTÇZ²0“£œp9#Žàô\"Šï¿f¯Oà…vÚ%åÌ“Ý<K=Ôò6D’67cÐ€zEyÕ*Ê£?Ï±²Ææsš~êÑz/ó<e4÷¥6M3óýoÉh‘¯Ì1Qùpã\ZóÑÞ÷8o|3ðÇˆ5;}STÒcšæÕ³­œ¯å×ñ­{?4`öÒ[i©+y¸ü(¸´W®8^ÂªÁÍsÔt×[–,˜¡ÅPŸLpâE¡ÏÝ>Ÿœ=*Å‚.B ¸¥°Ó¹Ê]h°ÝC‰\"ÆáÐ×‘üpý•þücÓÚÃÆ¾µ¾ÆL:bXûÑÈ¸d>êE{ô¶KéTæÑÒVÈ^hi4i4ô?.þ(|ø¿û$øíu/„^.½Õm¢„g+{hœ†@Ê1ë†õÏ~ƒÆÿ\0ðQüBÐ_ÃÞ\nÐG†ï¥A þyi£ÀF¬ªbç8ÎvŒ#¯¹~0|°ñí’Ëmo^Å²H0HÁ@ÏGÿ\0^¼/ÅßðN¯‡>+g¾ñDÒµðÅ5òLGÙ‡\'ù{W,©b)ÂQ¡.U.ßÖŸ#ÝÁçU¨G–nëñ>aøumá¸Yç¸ßsq&ùä-’Çêzõ¯EÑ¼icu·™«# Ö7ÄØgã€æ{¯x5»dÎËKìCp£Ð8ù_êq^[qâ¿|;ÕKñ×‡ïô©ÀÀ°}›î‘ô5óÕ0¸ª-¶®z´ñÔ1IkæmøËörøkÄkoü6H4«×¸óµ->(¿Ñ®Xs¼ #cg©r2s_W|øÇâÝE«­…„VñZ¨(û¥2õ\';9è+ätñœWŽºœÌÏÜ#rkÑ<ñQ¯tS`±•røpç×¸¨§ŒÄ©]»~gUÒ¦¡-cØýý—þ1é_¼u[1sÇÛ˜\"?(8á‡ 8<{Q_3ÿ\0Á.|v]»ðÄ÷@}¦Ù‚.ˆ|Ãôó¢¾ÃQÖÃ©=ÏÍ3ü-<&e(ÓÒ.Í|ÿ\0àŸÿÙ','307_IMG_0594.JPG','image/jpeg','/../ximages/item/22',2207950,NULL,NULL),(3,28,'ÿØÿà\0JFIF\0\0H\0H\0\0ÿÛ\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(ÿÛ\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((ÿÀ\0ôô\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0@\0\0!1AQ\"aq‘2¡±#BÁÑðRá3ñ$brCS‚%4¢’ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\07\0\0\0\0!1A\"Qaqð2‘¡±ÁÑ#áBñ3$4CRÿÚ\0\0\0?\0TÖªî›i¸ ®ä‘‰ù¡ræ¡t¹@ß¨ÄÞb‰ÔÐ‘§ Ú8þ´=»cÊmm¤(Ç¼RÞc´{ÌŠÀÆ@æ´¶Û`© À1Ÿš‰\Z’±»`$€iv¥v†R9‰Û“ß­Tu=X2J[ÉàŽZ=u‚rD²Ñ¾u{[¤:™AÒ ÏqSÅ2dˆãÈ´ÏºÊÂŠJciÇÖ­6^2$!CrºÏ¡^Åo¢eékIó’¡·ž OLMRïmFå$ÞLÇi¹Õ‘pÎSµY13Ž\r\"--Çdˆ\0ç¼ušë¬R6÷„¨5b,¶Ò»vÙ3Nìtà)8Ž‘ÞŒµ`£Ô™‰Èë÷¦m5€8F#ššëÏ&RÛ‰0jƒ	J\0œ`	íVo\r2–‘#°ûE/B u\0ž½(–TX\'`\"sõö­\\s\'xÄ?\\ºp ¡£ê08ÍUüÇr€R‰“1Þ˜¾ñudª=½â†qöÐå¡]€1žõ\rê92Q6ð\"MIK`ÆDˆŽ•Zq•’VÙ%>Ý;SmPóP‚\n‰ä)fåc€qÄw¬ÛÙYãjƒ¼Ú¶¼ž¦‡h”«oQÅp÷˜®\"y4\"Ç«ô¤˜`Â‚qµº-‘9Ï5d³¸–7$ö?J§Á\\EX4àEºSÚcÚªç	˜½ê1,z+¥oíT¸`öãšuäí(d÷ª¾šðjé%QµF	&tÿ\0Šºæ4•;“’xš]ÁuÏ´Pˆ±m§z @=?jÔ6•ß\'Ž†ŒSP¼qÏ½zƒº1Ž)\\dJÈ_¦ÅA³Æþkš6·mï–°¢—Š‰s]~Ý($¥CÐ¡tªÆ·á”;|§Z<‘Á=SÔËˆZ˜ 9ƒi·báö¸Ó‘ïÌUöÑ\0yjP@ÌDÕOIÐË/6¨“\0õãµ\\þh@¢²¹2£È–+ò±DñKü@¿àÄ¸˜¢´µl\naô¥ÚÅÔ¹µ(B’D™ŸÒ¥xõfÆÎeyK•)=c­q\r’D‰\0‚:{ÓKÍ…HZAž\'ï@ß7µç1ÈIýêŒ¹äLò6™7((•\0Rqœb„BíÆä>~(Í?Mqñ\"BfšXè¾Z†ð	dv¢Œ•Ärª]×]Ü–®ØP1µCƒˆ˜5s„»d‡$\\½T55bè ³´óþM<[Á‹4 ó‚AïPÐí\'=%9RA€¾ µDÂT9ù ]x7r°Fã#™3R¼Tó’€@êGnõå»‰	õL‰ûÏéU³s¬ ÌÛhrÌ(î{Ó+6¼»d‚>jcª©-°¥­*Q	ƒ?¥t€6è_´ÇÒ¹ŸpéˆÅDuŠ•~ÛWŠiQ$nôâ’Ü¤)õ¬Û‰ŽÔMõ¨Uùx+Ž‘ó[%’¢18Ïµ-ybGI2`$ ¥c‘ßš³Z¨_4• ‚¡‚9ÍW®Z(ƒ‰Ž”ÛÂ–Ëj[˜\0·ÅFJY·±ž“4ÔÛ[+•		ôñûPo¹½©â3îf­ÚÃmJœˆJ]å©\\!@ƒ LœäS÷A´œfU—œÅ\Zéòí…‘&9&ÒÞ[,ì*ž1Bø†éÄÞú‰âIÿ\0Aat·&xÏ<Òþ•âX.Íoq¸¡™éSiÿ\0†MÂ¼Ï/q•g?4…û)²”Lž§àTºáp,€˜ƒ1ž+‰\0!kÇ2àê@<Àù¦—DÉúÏµ*¶v€œƒÔÇÍ{jà0$ƒØÍ¦9ï ôo^‹e+ù£õªš/~é`á#\0qé®­vµ(ç~ÙŠ­ZºH R¤“ÁmI,Àg%Tž‘•õÖÖÈGæ3ÇÒ‹­Ih\nyR¨“™Ž¼Ô-,¤­ãéNB$û\nç,Ô•urZBÉLÊˆÀø¤š±ssÒ3MÎ;Gz‡Š-ÜxBÑ¸tƒÜÑžySÅ,°¤‚‡R`žõÍ™e×Þaµ­g;R\'õdÐ}¦êÜ„ì[jˆk¸áJ âwø9¤Y&âß%8Žìk’êŒ„ÈÚŒw®–ï‹î5\r)-¸ÖÕ%#q‘Ï*~Þð£È>©àŠ.2¹Š«HˆÚN!BFGÒ“ê¶e+ÜØ™Î8§á%·eCžôÇOµnéðÛ²0N>ô ÛaÕöÎ~–”Gå?jÊëªð¢àïQYWóV_íI\0~ûñ	lá[@ÁŒù¬eå·l’ `&7jF—Ižÿ\0äT—Ú£LÙ„­BDÀÏZ½*©œÀÖ Au]D¸âÑºT9?µW®Š	™\'©äÖÎ»ç’QÊŒâ¤±Ó^y`¹ùFE=áÔby¦Y;r¸JdwÕÇGðÊÊ‚ÜNÄÈ2{w¬ÓRÅ‚€µŒ${Ç4úÓWÂe8‘V~Üßñ‡³¥´Û !(’@ÌÔé….NÒIäð}©¾—x—ã#<‘MTÊV‚qñ÷jéÉÉëgiV¶`lŒŒÇ¿4RÀe‚sÔãëR^),9 ’DÐ¼^)D ä{VŠ‘Œ¹‘þ)KvÑ?3\"¤uj “žd(7.›dÁT¨dŸÓïLKWH(9ˆ½WÌçå˜Ä©jº‘¶Óî\"ª×ZµÓë‚JQ=rk§jº…+h0Ib>‘U{í¦„€ÿ\0\'4¦ 7sÄ-W Ê²U9VOSïFY%\n!%<ñí^\\Y×ƒŒç‘Þ¢eÅ2è1êIÈ rAFoé¡cp?~)MÍŠÒ³Éê*í¢ÞZ]0àuI¯o´´ÆæL§1ÉÇ½VÔ8ÌWÎ(pe6¦ÆGjÃ`å·¦7‚ZòâÌ ÂÓúŠc£in¨IÚÉ±AÀuÀ“e›Ç’¢­¿”sÚ*ç ÜmBNUïœõ¡W¢­\0,\'ô‘Å\nÅÉ°xÊB¤€\"&†«·ƒÒ-»˜ü‰\"~ßÚ§iÄžýcµ—’ãhVÑûÑ¶«	P3ƒÎzRl0Ø‘ÞlÚJWqÓ÷¨µ1$*03ôïD<6«w3zNkw\nTxâ_qÚjùÞ	ÀÄÿ\0Í9¹Nö®cŸ˜¡Û³LDøÞ‰/$798‰§Y0¼Î^81¾–B-s‰ïI/Žë—à‘Çh¦áA»d¦rGæ”òç‚£ŸÞ—\'Ò-¼(V¦Ó£b›=«X{kKL.@ âEZôÆZy²‡Rg1[¿¥Û(NÕ(Õ +œÁŠP`Ö6A¦@NI¢Ûµ“»§$š	n»c°(JAÄTkü2JNdüÕºušKxUÄOâ\0‘t€¯Ì:ÐISî%±0L¸Œu¥Ú…ùºÔPyÉ$s¥:nÝI	¸\'	#ŽhD™¶6÷&3±ÒË@œª0z0éí-µ%iuWáµ\0³ÿ\0Šl‹”-9ƒL.!ÕÀé*îè-U‡@ô¤îŽ=ªàá\rÚžÀÇïJlÖ]ÔT9H4ËTVÛF\n†)mAâY1Œˆ…–¿áTàŸëF¦ßj\n¸Äý+M!’S’i£ˆ\nQ@€8ŸéJ&_‘Û12SŽÌg¸ÊÙH±Hà/·¿jÖáöl[*Q?z¬^Ý;suæ)Gbfâ ¨dõ”beâ}\\¼Ç”Ñ9ôÈí×5Rm.‚Ûƒ‘G-^jÇót>Ôm«\06T $ä‘Þ”po³&N%_Äºs×·M%’r©1ÉÚ¦°Ð_B\nTGéV`†›\'¢rÏS[…Iãc?4êÖó9ë£ÃÏ.\nŽ\0ê+Uè®%{Hƒý*ØÅËCÒ1Üõö¬º)Bîâ$A==âŽÚzØdHÚ=â}9,(t¡K›) äýh†îD¼¢6 \0ŒDb)3ÏžRQ‘¸œqØæƒÂ ÈÏHEêÿ\0 Û|“Àà\n%›6í,Ôãñ´HèLT–Œ6ÊÕêTc¿Ú’x–îîå²Û!#\0	bhÊ¹ž¶\0”ßëkUÂÛaBO^ÃŒR¯øfçÄ7qæyML©dI=ÀZ|;pëåWäÉŽµwðÒÑ‚T„!Q€`}¨Eôuš^bV¸X×Ã¾´Ñ˜_›\nK„nR„’\'ƒCxžÆÙ-•Z²€¢$‘Ö¬\nÕÜ¼’öÀ®¡\'ÒEv”>’•	ãÚ)tõ}ãÌIî%²L¤Ø=ºP¬ÓŒSX’	X”ÁÇLZÒYCÅi09:÷z­w4f{NRà*Î	âsýRÛËqCˆ0\"µÓÖóqƒ„˜=&¬Z–‰pä¨dôþõ¦‡ ºNÝN‚•‚q×â…jõ\"8\"u_\røÛý%«›—ÔÊ×€&JÊêºIF•n‘?aYUZò•ZwÏŠ.Ð¦Y3êÛ\'µTnÔ^shç¬ÕëVAü.ø!*HëUFíGŸº0Ng4`Ê~ìf³Žaz>”­¡Åa1#tÅ:ƒ± 82xûTL:C! :ûT¬¶TByOI3š²)cìZOjÞùQyäÌu£Ð¡`@>ÝBÜ!1À\'‘ÄÔÍ¨•z€súÍh\"„,cÍÝ®îúÞ¬aÂ¤ˆô§»Õ2ÕA“¼«˜9ûS1­\"\"=@ó5.vò`ü²Ç‰>®òõ+\n<A<UkûÇ#øsì:\ncpzöõoÛ‚z2ËMm[BÐ3ÔÇÏ1HÝªÇZÕ92Žó×@•-$äž±M4®Úá\r¨íQà*àî€Ã …%_Sñ[×ü6†ZdL=&—®ò=á£.—kKÆî­Ò ©9å4±dl”ã˜ãíT»\rQû5%2T ¨sõ«\r¦¼ÒÒµ8nµ¤l[g5$‰\\¾µq·)\n‘Èçµ+}\0b8äš¼^¥§Ò=B\'¯QK¤…€”Á9	¤Z¦S„—W#¬©´µ²îöIJ†DÞŸiZË¤†Ý+ði»:\Z\0©;Hõš’ãN`\"\n=ûŒW3ÃN{U¸\"\rrëo´JFÕíVOj‹bÂ“0ÄGÕ=Ô%™ÚIˆ¦\Z:‰õÝ\0ˆþ´&·b–YEã¤èÀ °¢¢\nT0cƒ\\ÛÅÏ!-iÌ½]ìž.Û”¨¢\"x ôªG‹t{”º·†R«·ÍV»ƒ\"Y¹ Â´[£uf‚“‘ê“ß‚)Ý¹VÜžÂ©^\Z¼üâZ{þÒÌÑ&:|×IBrÝ+hŒæaUj7Ù‚dæzÚK¬z¿4d{÷¯Yh)iJ²$HïÞ¼µ–Ü!$Gô¢T’“¸P\'5EâH^ðë†B-ÀFTÏµ/·`©À`ÌÌ½êfo	PC†LÆxžâ‹¢IÆzãš}™\\fX¨c™ÚÊQ\0‘\0R¦•¸üÙ’~iÝÃG;§<üPºe“×—âÞÝ>¥J¤à$u&µÆ3%•¬`«ÉŒ4ÕŒâ:wÔrLñÏzekáÏ#%Ò \0ÀÈ;Ô\Z¾Œõ¢Kí5¡êWtûš]u(pæhÔU^â½\"‹°ÉJ„ÈÎ­\"Ômv[6dÔÕ•‹7nÚyÆà%¸“$Ò«›U‡Ô‚%díÚ&Iè)¤¼gi‰YC„Tàô2ŸmlµD1É=*Ëh mCóF\'´qPÝè×,¸¥yN\0ÚRSüÐOÏ«ì¼ÓeÒÛ©J¥”¨àžõÛ¶‚D•bg Àµí¤”à$À>þô\Zò›ô,íPÄ(ÓÆ^mÖÉZ$œ3úPÖ6¯J`¨Àf}…ºe÷ï„Ô_B®#\nÈ?X¦ºÙ*Cl§%FzóA¶Öm·¶˜çŠ%ô§ñ;Õ€šœœÇ‚mL	M­¸êúP×—ÂÖÝN(Æ	žjw”JŽ\0ç°öªæ¬ø}a¤ŸH\"sØT¥D‘í´E7woÞ¿¹_e õ>õ¦Â„Á\'#\0ŸÖ¬–ºsÜªôÞ–&ÕEò¢ÔŸÖ«b³t€ Ž½æ–Í\'z†`àW—Wà(!±TZÈIòÁÇX34µ ºà›#>*¹ØqÞXq°§ œž}€š86²@ÝÃ¿5+¡–S9žg¯½tµpH8\0bEeˆ‰Ì)¤´Ü‘ž	=zÔ:†¤d\0½\0¥$®óßèh…•à‚°ˆ¦mW=œ9æI	˜ôûR÷ï™´R\nŒ™$b¤òœRL`ÌÄŒÐ×Z@Ž¢…¸Zõ™aðôÞ²T£¾FNLûéF¼–š\'j\0ìN~ô¯Ã`Ø ¶³\rÏ¤“0#ŠwptÈ##ÍI·ØË»}\'ˆŽùÅ\r¤	ê\0úÐ–wH\0âN¼U¡»$dârOX5úR\n€ˆèéCmÍÖ˜™…€Û€?Z!·Œóé<ž¼sCÝ2¶])þYëúæ¥´HTrxô¥\\ƒ0ÀR´pÔv½¤‡3€3…\nêÂƒ$u\'æ¥Ò¥JÈç§·9ªï\"Fsµ&£¥ûK`ïl¬yhÀ°¡K<Aª.É\r¢Õeâä D€b&=©ú¥¥é›¤#ÆŸôöZ¶M“” ¹ëþEeriÊ}	wP½uë…eJB |}+)ÜÐ¼1Áùˆúé˜ŒØÊ‚®Ú¸ÒP…G*¸ÚeqÌ­hËË\rƒƒïÅok%yÄð%U{r¯LÆ6í“¬p:\ndËI@9ùŽ¢‚KÈaLDcÞ–ßëA”\'€8§­bT)n‘õÅË6þ¥ä‰â%¸ñ\na²g¬|ã•ë‡.?9;zŠƒÉ°¨kÉé•(ûÑ²õçßô·9À’jÃáÖÌy®®TrI?Ò©m$ ÌŽx§–z¡i1#©ö¡9,90‡hé:#!¸õ	&$â)­™D‚“ïØÕÏZh„î0AÌÏn”âËY@%aP8Q’~´\"´©PÂ^Ûh<‘Ó¯Ú”ø!öÐc¿Ò…·ÕÆÐa\\ óëZ]êm­93<t?5è»VD®;b’¥ccæª:®öï\nšQI¿½_5GØÅM‘N1ÓƒTGÒ_¸QHÁ8ÔÝÀ­Yïi RBPö#õ«v®°„ï°ÏéT¦©B@ö–î=h¡¸‘îyøš\ZØÃ¤ë+Wé:˜ÖmÜI$€rg¤õ¥Z–©n¤¥h€3Ú«Vn›ÏJ9ÿ\0Û<ýëgìIÇƒíT1&+å…<É¿J•9‰“<Î)Ž‹rÒ—´w‰ýEUßBÐ`‰÷ýM¤¾Y½0q>ô›¡ ‰/Œ‰Ò¬Ÿ	iãŽôä²‹Û}®	PÈž~*­nòTR©GÛÚœØ]Á\n‘4’f·Û!Oc)^&Ð.mîÔëbZ\'ÒÂO@(T¹eKÐP\"y\'žÕÐ^m«ûE…€LI=~kžjí;·AH> $w§ƒnáÖQò%êÅô>ÒT…¬DSd´f@¢\0=;W1ÐõY¹\0[\'ÈúWPðørí§È\n\0¨wäˆûP‹Œn<	z¬m€dÄ÷)So\0£¶NOsM¦ãj!dŒŸ¥;ÔtEÝ[ï`änƒÇÛþh_[©íjIOá’V pB§h‘òJ ÔÖÈYNqû©r×`ÆèUÏ…TÕYpùéRJ€ÈJI_Q3ÛO´í­.êåm¤¹	H< Iîbš¡A@”+wLw¯JB„\ZÆ7»Œg¬ôôèh¥ƒ*ò&§’#žkÔ+Ñ§5¦ï÷DŒÅ`Xm&	àqCÎØé[èkMiigò<ô„p#ö¨´[TWpâeM’ÓG°äý¸j3WcÍ°uIüí1$wûMm£¶§[&fPsÕYçëBw±ìÉöÄˆ+Ž’Ò˜¨PXùÒ´¾´fí…²úÛQ\n(<*#ö©”z‘‘Àšñn‘»“×m][“ÒT®eoÅZ/Ø]Ý’/8L\0èì}û¥MáÝ	5 ¥¥Üœ­Ò8=RžÃ÷§è™3Òj)©£¥Œë±tt‹MÁ}__¬Ñ»f’e(VVN2O&«ž ´×)qpŠÍYÁ£­*ñ=›÷Zg—l‚·Ã‰RB`N`çëš¾žâ¶Æ_§P@ŽD¨^:\r²Ò™ôœ‘ÚØ„:¬eI$ç<E[4­\Zâì).¡L7‰R†N:\ny¦xcMÓI]»%N¨ú”µ(ç<ñô­\'ñ¬mê~ÏÑáWj0[Ò>?×ýJ”!´“Èƒýi~§t†’B\"\'¬u«N§á¥–™ò<ÍÅN8N‰®w®³qn½®ƒ´œ+§=iŠõ*èJu‹êô–iŽ,E¯¸·Ÿ1É<Ž”×L²+Z\'¾ö¡ôËR²¡¶b´ñVky(*TmÀé¹õ4Hrq7Ô†œIÉ=8ªÝÅÐIQ$OLÅ¬Ý-vÊX˜€O9ªËjqÇJ©™çµ7K‡]Ë«Ln<t…;t9š\"ÞúÜ˜$ˆ$Žc‘K.­JŠÂÁõI‘çáK(˜)ÄGOµ`t®…Ycµy’JS²ÃÅnóMAÌ&`üÕ]FÜ•Ç1^ÿ\0Ô®n`73\0s?J¶ãÜ@Ù¡Œ~ò„ƒ#1ýLPÅå%^…DK<çÒ™pc%&Ji¡!.$:D¤Æh6\"·8‹Y£u]Ç¤¢¼·ZNðdð=©¦0	ñZ1n†€ç°­–°sÞ€ê@‹Èn-PêNà³íHïS*Oå˜‘`óœÇÍv”¾ ŸŠàÃA•æÐ_s#Šwcn–ÀÙízÒ¢ÒØpœ€rLô§JÞIâhXõAžc-£Ê\n‘\0sTÒ‡^Ô]x·Ô½©FÄô«T²©ì`c5LeÂÀZTv8¢I_%\"pÚµ4¸ ˜ÅŒ˜Ù–l™@KÀ<éÊ–¢y¬¤î^†–PÚärR@<ÄÖUOÝ”ÑjF?œål	@Soü:wuš\r)H 8©KÁäl\n!QÂ»u®L`1¾¾[‡cdûÐm4I’fy&Uº[õ\' þ†°$“	ëúWÂ‚\0Àš!²£\0tëG1¦8±*IŽ³FéVÍÎåŒN*ÄÚ[Rq¡ýqUÜ\"ö]·hÞ7Ž¶g9â+<Má•il— €H#‚*åá•¥§\nN\'·ïÜiZq˜Â	‘Uæ	.bØ3Œ®äŸÊ¨5%µó¬B°3hHÎ:œW€w«îP%šÏÄ+%ÅL‘3Í6{UiÖ7$Â£§nj’„o­Oæ©)Ú“ñX&\0Ç&éÛ•’žÃûS+Kh9\'¬M ÛÂ×À«*[ÚxOïWë±±Àƒ¡°@8:š†òÑ¶HæhÇ$É=*$vè\'QŒEòfž±‰Y9\n¶_Ø”F{ØR,\"ü¤ƒžõ}}ã;£Ò¡ÇÓµ\0éñ¹‰lÎw¨X‡BŽßWØÌUváµ0çþáÁã3WíA …’9\'ƒc5ZÕ-ÊÜ‘Á=©U<í2ÔÙƒƒÒî‹öÀõ\0ïÞ¬º./^-°‚µªQPH\'ÚHøªŽ’ß’áIüÓÇjìŸéC(\Z]ó©¥¿´ž° þfx‹š=`g¤sG¦\Z­@¬œ²mÃ·fÝn:°Ëí¬¥l¸&C3Ö~*·ãÏ:«bâ[)xJ’pBP\ru¡€œÆÅzÃO´¦žBÚ§pPæMs©ËŒ¯×I¿gƒTÕìCƒõÖ|Ç¤­Fä!c)$zŠï_éÛINƒh¥~wÜuGw`BGè+šøÇÃNh:Øºh-V—\n*C‘êcûóñÐÓÇÿ\0IhË&Iyð@0ô§o`úmÀðHýâCW¬eq‚–Å\0”*p‘3YbÒÒ””%8	Q\0¯“Cj)\'•QˆPJ\0jó¶_åØPvž©—Ò	›©Bv«ï5+o%hÜiêöîÈýª6p‰ô‘ïJS«Ûh§óïýÎ5ddB®W.„FU’f1P+\"# €¯­Ï¨ž°?JÔ¬Ê¿aIjuFÇbOÓ·÷,«$zãuªäú£iœN0h…ª!´©\0·:R‚²ãrD‘Ú{Qªq;ó‚DÑSZÍ^ûsõï%«Æ$ÊuAÐ³*žG¤SYä3C¸¨”ª%0 ÌñÍFµí0&?Î+†©«b¬rýJ„Ì6ÝDŸC^8|(ðGÖ´³vn ŽAåØ.Ü!fm%J©ÄSôêóNñ×ëøœkó\nmIe)[ë	Zø\n1Â§$(¨`Ç#·Í*}Õ¡ÔIqjƒº˜}ê{%î…®Ê¼µˆ$÷?j•Ô†³ËÁü~º÷Ç8ÝX\0…u5LÇ^ƒ­É…Æ+ÖÏüSLØ;`Àã3[ÂR…b!2?æ¨\Zåªo}%”—\nR@ÉÎ*ó©¸»ª<í\0u20(\r.Ä[‚ãÀ)å(«œ&{zsK©ZØû=â:í#jUtÉÉü%wFð£´*ìù2$6‘*úö£µyŒ€Ãå0I^àéƒ€#’`|U©>”ãñÜW¦0:r}þµCªºÂrxö•OÓ\"íÛŸyÇ5;G­­TÅâ<§B(Hž34‘˜àv®·ãvwE½;Fÿ\0,(àÈ\\ÎÆÀ¼µDm¢£ÀÕµá÷)öÄ]´£JŽ†Af†œ~\\‰þX’}‡Ú™?§‡Ñ)U9Ue»‹=I¦™Þ¤,òDfx«®”°Åº\\|Ì§3Nzæ%c°°	RÔ´¢€R)=;R«6µ¸IRJÀ$Û¹«n·|‚¢“å¤É Hâ3I¿î«qÊ)ùø¢‚qÌd¨=f„RR6‘$œÁéZ0§-.R´dœ(²™\0íé#<šÑI!1‚$OÅG%YL¸é×Aûtô<ÇµLñÝLñÞ«\Z=ái~Zä‡¡«W˜ÿ\0p˜çµÅ8âbj+ò›oi‹IJdøïšŒ+>óÇ¿½JL…‰MjãRe8\'Ž´¦ÎbäÍ–Ê.QÆ§½­ÉL	ç¤QVŠPTANbŒrÝ#pÎ2ïWØOiÝzLÓÕæþ^Þý*£â„©d¢!7bJ¹ià!Ý§óvþõˆ4¶µ\r…@‡	I}1HÙÖ^·Úy”„-¤$\'\'ŠÊë[¯9ÀãJJ’¢Íe;¸öŽùyæs–”…\'ié‚}ë×[Œ…Gj\ri)_¤ÄTì¨¨B¿-,9Žòr%ß4Vh«…íBdâHà|Ñ\Z^˜íáD\'§sWÝEkNm*u2@„æ;Mu–-c“ï+¬øjùI”ˆþ:ÑÖº Ø’€‘x«Q¼¹YÚÚ[l@ô5 ººléBÒyÚ”\Zªƒg/¸VeÇ,^‡ÐQ3¤ÕsÇ\ZÒ®\Z!^µFïaWŸ$\\ÚíRfO$õÇõwÑzê¬}ºSjë`ôÂÑXÝº/ÚO5êSŸóµL¦V©\0uŒV%?nõ;L{3PŸ¨­“ŒÖûdW…2>õÛes,~½@ôV°”©2’<‘<w®hÑSn§U‹JÖ””†ÜöhÈ@àÅ­¬“‘,.§ž3ÈþÔ+°ëúZÅ]!ÙR	¨=ª¬“éœ‰Í[nbø9æ\níÚí®â2¤ª~•Ñ¼?ª·{d•\"Esád·§Ó¶s4ëB²~Ì¯hqH¨H&\0É1RªWå+j†u5Q¹j=ó<{Uvå^Z¾gÞ­\Z¾™¨ÛÚ\"ñvÅvŠBV.>b\0 º2žzˆ÷¤.° “$ù¬ÖpÍ•9€zÞ¦Û`Á‰œPó’¤§ïí]³Â!?N±¾´Z^¶‡–‚IÚ½°à´‰Á®%{l¶Ö@§€Euô²ðêvÅF^³| ¿Zsó¼VGŽ»ý˜:õ}~xž‹ÿ\0òþÓ‡A8(rAB„…tãš…d¤í8÷=è-<¿øPËÃo–¨Lä”Äˆ4KÒ¡Ìß­b\rRºüþ±=VÍ­ˆ¯fÆ£`í­ÒJšw¬e¢‡¸ýx¥¾³]†•mbô-”àQYP#ØƒŠpTJT•HPçæ…uEÞ9àŸozþÁë_+ª’²é”Ùæÿ\0Ë„j\\j8ŸëE)p\0÷#4ºá{ÒÚ€ˆ<â‹Vq$AéÅ!ª¼5ŒGxV\\(ž­É™9éïQ oxÇ\'ã­há)W¨žóíÐÔ¶¤!+Qä˜þ¿Ö“ŸTìmBr¬ý}ºÔn©TsØÖÜ«Oµjà*IòÈÓÚƒËHA-É$ä$Á÷£½ÊQü»’\'ß(&G˜H!9ëSÄÀ\0äˆÚ‹»Ž¹0™”åÀÉ3Èì+[…JS•1“ÇµD•H„Ÿl\Z‘Ã¹LÞ{\n®â}0{pdvê!ä©\'‰Ÿ·²”w\rªõ&qæ´RÄ€œÄV›80&‰»n\0ænNdÀ«„—\n”Ó`œb8úšòÄÍÃ$À;\0æ9ÅC¹\"B„$âSÈ‡ÍojvÜ „íÛ8=¿ÃLoÊÍïŸoÐc‰Ûpo|¨cH¯üV¨t\0úÐ×îá¤sÖ­j•I	#š{S©>p	Øî.µúy“]¹´#ýÄÉœÀëZ2²¸þnÓBºïq1€ØÇsŸÞ¸\\Y‰„¹M«ƒmÕnçš•¢—Lœs\0œÍJ{×¹­e\n\0»ŸéDKÙq¸p`™d—–×­yW-²q¶HïšåvŽ‹;Ë‹uªTÓ«d“üÐHŸÒºÓŽ%¢\n²z&rjŠÇ‚Jîq¨_•©Å©×[eA*$ÀQ>üÅz®ªK%„JúZÐ0%cZò}·](°BF\"f‘_ëèÚ-Ð­ÊþcÀ&ºëÞÓÜ±rÝ»Všó(Fõ\"Gæ™žÕÆ¼iáôhšÃÖì©Õ2T…¹ªR	“ZÚ-mZ¢UAã3nÐ5gÌ\'0¶”âH¢f\'á„§ÊI\'‡?5VµQ.„­X$Õ’ÝGÉ\nAÌpNéO?\0„ì=25éHéÁÁŠ‡‰ ÊdGz7i‰>ð9Ðó\'¬Â[q*GC&Ÿi—éu	J¹$“2~‘J–ÐV‘÷ƒÒ±Ó’ÊJÄn#¡úU”ÔÐ-ï,¬­\0§9Ç_“ZíQ‰ã l¯Wå•J“‚9Ž¢ˆ[»T9Ïj±\nFf\rµµm´Ã¤œâ*ky‚=\0ÿ\0&‚mi0 ®{Q¶î…œ§‘WU„ 2Gy²9Q	9¢•GNÔŽÖíËu¤,Ê3´Oõ`¹Am^ã­@Õˆè!,]¸‹o­’óÁD$ b²¶x8¥Ø1ÔÅe\'’;Ë“ç7˜IHàž£¨?ÓCÐ]¸q*ZIá<}M4Ót`íÊ²A8>ýêôÓ-Û0dB ¨õé\0Õ¯¸R9ë\nÖñÄN±jÍ-¥@m+ä|\n9Q¶	àÉëR6ÈH˜Hš×j•ÏsXc;nhIë7²h)È‚OAßµ8nÑ* Ú†±`5ë#fi»0S?\'4Í*YuE7–	B%$TÍ_@mË¯3nâ1)~¦º]Ì)È9šC~®‘€F:LâŸ¡þ:I$¨È•;}…¶¶ÂB†wd}êâþÅ<ÊHH\'p¤óÔ°	\0(s1¸Ê.ìÎìÈŒçæšd(xé:«Ng K$þ¼VŠ•	LÏj`»o-Å ™ÚJcûÔÖá¶–\nŽ:Ž§¶*ä\ZÝ\0E›Ñ!£öÍl4Û’D6DqÒ\r:^³jÊv¥Tâ#C/Ä#„0O±éS¾¾¤ÊncÐB´ÍéP¥È¬¶ÚJD¸@#¼}ê¨¾ÚHC;	ê~´3Þ\"¾^R6{\nŸ5{A”v—ð–#Ž?Z²xV×\Z»å·\nomµµq¹¹)p×ó\'<Šå^xjþ1Ól5•YÝ-L”îRw¬¤ìNàAI*ˆ9\0ƒ5rÕ¼1¨ÿ\0§¾.²×ô·ßÔt[W®R í0°RàXÖ‚’a``ŒÍ#­¸=m@8b8è4Ž®·‘3±7µ	ó-Èm\0“ÆÕ3õ3=ê©â	[_ÿ\0êtÀ›K•V†À\r:™D\'ùØ=cš²6\\u¦–‡PvB±¹$|§ïPXº¤,¡@ùnHBºnÁµx$Ö]¥;ëàsí‘î>Ù_¢§UY[GhžûÂZá`Ø0Zyi }ÿ\0¥à¯\r»áÿ\0\\ªÙÿ\0?N¸· ‡ 8ÚÒ R*ÈV{€BHèr*U]¶Oå$¸¥×Äµ%Mv9 õGþ·OÅˆX{q’sÿ\0ÕYþÑ^©Glƒ#¼N;TJDàži+-#î˜EÅ Dv4;¦rGÈ©ˆéè\rBè”Ï1Ï÷ ïíœŸ©Òƒü„¨Lñš?Ž&>(L]‚x-¬ÒW§@0f¢ÁždX=X‘<Dÿ\00ÏÒ¼iPŒu$ÖÀT}=}ý«P€\'Üçú\n é#¶&û€Úf:ŸjôçÜ™=\"jHà™ö­’®•8âvÙé@Fb`ÉäûÅhRùÍxµzŽrk¬ML¸z’@Îæ¶qBR˜Ý¡ÇkMÃ*ÿ\0ÄÔhhRŒ$‚däŸŒÕ‘s;äÃb®ŠÁŸ¦+We8§cZ F`óíóRoþ\Z‡û×Òv<AÖsp\'Ø{Ôöê%×) @\"Ú ¸‘™ëÛ5»KÚÜŸaƒEq.Ã\"në…N•p\0Ú+Ò¢`ÁW·½@\'tG«·+eÀc¹¨ÜKnï ¯iêP}&‘<OÅMlúÀ•d\0$žfj\rÀìHQRŒmHãë^ ’ä\0`$úš!Ü¾ d0ÏXRÖJ§tG õíS8éBÔ!Î‰Ì~(6åXŒý³Þkk‡‹dî#ÐéR-ê{ýsS$CFIRÌ“MnËm•ùhYZˆþeI¡YÄ\0	>Ã&ˆIž¼\nf†læ	Ä™IÁ\r­i‰Õt‹«P=°â’ŸæH={{Öét)Ãœ~QF6A\0ÆNqZ”¿xê p0gñúqw¢Û9o~ÍÕ³@©Àâ|µ¤w ö’i¨ô\räOžÙWÐ7Ì»ujãl¼«`©Jl°ž»\'\0ûÁŽÕÅ¼]¦ÚhZâí,Jü„6…CŠ’	A1õú×«ÐêÞßñÛÉëøLÍE!=KÒ†’Ï¸úŠf Øgž‘#8¤Ì¼‚’\'ÕÏo­x·]R¡+12@5¡·˜ƒ\'ƒóNå{Ž†3íQ^^Ü!½¨’8&I%½«êI!$ãäš•L8-;cªdBŒÅzuÁfïÎR‰*9?ñWgÚ¹m;$Ÿ×Ïõ‹gÃ‡Ê”/ÁúVÞsPµ½KNïRIôã üÑ>3/[NNîó í)ä~(†X)Qa\'±°i+q!n¨Lb¢¹¸^7+Ó;ˆWpæo–d™¢‡ýM\nP‡\ZpÈ$O5pÔ6ª¦9ª‚Š<æŸß¤LNo^Zí<DûjùbÅ<Âí3¹¸>oðÌ$|ÖPaERF+)s	ˆ‹Im-[mJ1ÖhÁ	ŽOÍ+ÒÔ¥1\'‰Å{zó®¨3n	_Xèi[®´˜¤’ÿ\0Xm„mVp¥Œkj¤ú}ºÕƒIð[—íç¨¨æp\0Ž(CÀÍ¦TÀZy#ni…Óàs-°ã2=#ZEÂ€t€®ÊÁãâ¬-$(6AIæ?­Q.t«=ÉX”çN:õíN´=IÄ¡Ã A½h–Ž²¸=\'¹æ?ZQªÂ* IçÚš­Ä©’`w©°þâPg\0sZ\ZdÃK9æ.º¹ÜQÄgÜRëË‚›r™æIŸ¥N°	ŽUÇÒ«~)Ô“2Lf}æ˜³žUÌ\0•÷ŠÜ}Õ$T³šÙO)˜9â˜h(nù”ÆV;@š²1f¸{UE9äÃØåN1)Mi/¾¡)1ñÅ9¶ð¬¤ï“zU¶ÒÑ´™ðhÔ¶\0ÚâdÞ¸Uˆ½RWá–Ó‘0jÝ\0 0=º}*ôûd ö½/q”¬œÁàDü\Z©$JŸÞT?èÅ²•!Â…‚•¤å$RAï9®ëi©»â_[jÌš½œ¡ô¦2°äÇT¬B€®Xó%$ÇNEXÓmIZw‰SlâöÛê	ò&\\[WÏ)ÿ\0ö¬ïO>¢äMñ«Pt<K¾‚ó/±nÛi6 %„ŸÉÀâ:t£Ãê³º_ší(íqµ	Ÿù“P·\Z^°¥D[¸áÿ\0±GÔ>†§*WâíÕæ×\r€•‘üâ0ªð\ZŒÖÜžAúúï>€\0<ö0‹„\'ÊóQ[$ÉÆ—:¨ã\næ¼·}ë7`zÙ8)=ºÑ´‡ÓæÚü”pi&ÀæWË8==áÍ<m*Ü$Õ*rÚAÈ“ŠOdðgy#ØõÉ¥/=:ô 0Á0W´ñ%TDs¡99È3#½lI3Àà{VŠ‚;+ôš¨Ú|»Ä§¦@>Ä\Zj}†b´y\'Ð¿æB?X£+	H®&¬y—>®dòv¦~¿5¦à0~•êÎ9¹Ž\rFI0D3P¨m;’GÞµdÊO@08ŠÕ2’°zgVÄ¡$È\'ù•ÜÕ”v–Ça6!]\"DñXfaœ}ø¡TòÔ¹$ç?½JÃ†TU‘ü¾Õb¸„Ú@“€0AÈƒïP­Ò¥NOÞ+.W·“*VA=¨q‘ì:Í\\/QXQ#Ó“ÄÖéXIy<“‘B‘së\":&	¹ž?SSÑÂIOÁ’£RSÌ+Í+)z‡þî+B°dƒ™µóÅ¯áªyÿ\0ä;ÖÌºßVÛÞ —<äÈò°3	ZÁôÄ¬±?C<áJp}g¬d{\nÛ²‹×S»…1D­ÑçNLb0z¥y06ã=æ#qa Ó J­H	* €Áÿ\0&†·h)#w¥žäöY| mi b0:w¢&:¹À‚´î8Fä|ô»J‘¼ô$â¡Pþ\Z Ì\'Ú ar²Ÿø¡ÖáNqùÈÛ¸Õº¬· âjUzÓ	Ç¸\Ze\nÊ`~Ø£[2Fa#“Ø{Ó&ÒçlUÀÁÂ|§\nd˜žxïE%À”\0¨ðM/ó’¥¸á#$™\0ÇH¯[¹êHÝÐúM9¤±ŽL»!n²mWQFŸh§V7/†Ûœ­Q€}»öÅµÀíÍíÃ×nyÕ•©gOA]‹ÊKî¼„8±\0‘ØVŽé67\r­Ú±µÀR ”\0cägë[ºO£MÕI\'¼ÎÔi,±³»Ú|ò·—löÕ*$ÀöfÑ®ØRZVäOY‚~k¬§ÂÚ*Ñôå\"VÀQ#®LÕýAðµ½ŠU¥Z7ghÈáEð¢¥\0„dŽrq=&µhñŠun*\0©=3î$ú7©Kg2Ï¦5hmA1LóšÅÛÚ•1‚z‘\\¦×Z»°@nÞà–ŽU‘ïU·ˆ.T¥otîQyð¥„QN:Ë½Ý…ºÞüDÄq“E5bÅ¸JÜ&UoC¾vàºë†v‘y<\ZµÙ º’2 OaC$†Úbz—ÞÂµëß=±x$‚ ‘ý©zÝÝ`s ¦ÚÕ‰Dª ó4•”—HƒüÞÂ¥²DKU¥dÃ]»&é¡½[R;“Lš|´áe~ @Hš’JÐ8þôeº›d›‹’J¢ïJ)Üþ™D]ª!m¥«t…O”·,©e[¹÷éYMÿ\0Œq™ÙnÒ“§\\éU·&$éWÏ\0è‚ãeÅÂ}_˜“Þ¹·†T¼i¥IW¯ZúÂ­0Ý’’Ž}â—ÑÓë$ÀŽak·Ch@H8ö¨i\nA‘»FNAO3Þ…ZAãþ+X =§dÄ:–œÛèT§=Oz£êúY²s{`…I§s]-@L´§TµC¨PÛ&:~Ô°Âž%Êï”Öõ4¢Ü¤È€OÖ“?uæ-K\'žzýªMY“ep´$¦b1‰¥IIRŠRq‰>ýÍ: (È‚ ô2u:’¥+šxçP7A”¨’*ï®Ü.ÖÉÂ2 +‘Þ¥Õ¾·\\EF†üF´•Œî1Ž‡¬¹§<’¦qž•Õ<?©³ª2’7”×@*T}ÅXtçôÇÐe\'${Õ«ø˜Î¢ ã=çpµf¯š9\r\'§nµEÓ|`ÂŸ5pF3Þ¦»ñÅ³”¬zýi€@™žIÎ\0–«Ô£nÑ1>ôi	QŒvž”&“âf5KË{=¦Î%×¥(I8Žc8šu¯Ù_è­)íJ×m°ÂŸoÔ„ÊêŸ¨zZÛkˆôøÎ\Z[XU8aFã‘Ìdw¨`‚ÚŠI\nJÇ) ‚øŠÐëvX‡¹ïï[µ~ÃãpXt=ù®5ƒ‡3ª?pÃVº‚\'þâFv«…§újFuaô¢\n””Àçdàý?jIþžj¨N î˜µ¤±z’[Ìíq ŸÔ¼U¯Ma(Sä¤°H’žg>õóßÓ\r5§=××Ê}#ÂuŸiÒî=GLíªT	’ã ©…rè¡GAŸ¡ëGG¤™IÆkÍ†&h«‘Á<ØxîŽŒîèO¸þ´M¢Š¼À´íPŒó5ºTÄÇjŸbRŸH\0F`GÒ ·œÎ1‰‡`îFOµG¼“)˜äÇj‘ÀAÈè;T!’IÜJc€95#WæL•9¨Ú2üÿ\0³ ûÍx–‰ÿ\0¶g¾ìï5í´¨¸¡$\'·Zà¤r\'p‘ºà+P˜HÄˆí[4à’#ùA¥·W	H|îÊV©ˆœAµ© ¸‚J Açéþ})•Ó’¹Œ­— GJº\"%PHÌ	ŠÕÔ†P€’H\rÏ¨\0A9$æ–2£\n}ãå6L¶™R“š$@Ÿ½2}ÆÒnP\nI)…$G*=*áUF”d\n@ÅêÒD‰Ÿ\"{÷ÅÍâJöî@sÇZëK0²…¦çvèn„â=óšÄiÞ±åÝ¦ IqÒsö¢>Â0x“ShÊåÿ\01¤Ê•;Ag~Õîä²ÀJŒ:r¸ˆ9€;~²hE!VÌ’â \0@3óïóHÿ\0\ZyAO/bd\'=ÌTÖ‡iG˜0½v´áO¹ù·+€HÆ?N~x¨ÒóÖ×iÕyˆp6ädÇCî+K[¦ž;JJpA#Žj{ß!w•8½ìû[ %@…ztÏÄÕ2ÛZN\nœ0“¼ûÍîÜ–Ðƒ*w(žùŠ™Kd%![È‘¸É¾)Kú²-zÜBA>‘ÜÔö—$‰YÌúˆâ;UY/N$\Z\\/=!7-7/ Ne`äNÄF£ha`“:Èæ„]Â|¢…¬I € ã¿é[©.¯j†AÊ” ‚£ìïTØîr`NHŒ-+à\0I91ñZ´™ZTN73Þ†ráàRÛvû[*	HAÊ÷{æ¥CÀ«ËZƒª˜0‘Þkš ½9øöþÿ\0oŽ%v‘Ì‘÷Â-mÜç§œÔÔŠ„Ï…í¸¼i(*	%`ÈH˜í@¶I!(ç§°îh|ÄšðTŽñ«\nó\nq\0dŸ~Õµóû,ûŠ\0/°¾µ)ZZ’Ð«€{ÐŽ6¦Ì8 IÉPTÍHÊ‚ß„\0@Ï\'i;å3©×«J[sbSNsZ4½¢z‘ßÚ´.¸I9&dUGHL~ö—\0bG~æ§ì1ÖMÂ¡%G€8Íoæ)XLíÅ5Næ1vNaaBÏ¿Z‚êÒÖílªñ¦Þ\r«râB“þèâc¯JÙ ˆ$Äô&«Þ<»ÔmôŸÀ[’ÒÐRýÉZ@e¹…@™$ÌûVŽ–—µÂ‚p= -Â©&qÝU	»Ô.ße!-8êÔØJB@Nã´ÐqA!µAé=¨À ¯L0\0çBZKˆ<GÞ¾Ž\0Í·¨“ðÓëV ËIÇš@ pEtëtù@¨u!${W=ð^˜·54ÝnÚÓ3ðIéö®‚§G•»ƒñJÝ€ß•îŒv“^µø›U$§Þ«mÚ‹ ¹0µI\"¬\"íµ*NT¬GzFâ¼Å8dò}þ”îTm÷–Ô\\B¬Ñ´ÙÂz÷¯v.áakô `•¢JPdI9ŽkE>¥Æ#µ,ªXq3YÄ2\ZN\"}ÍeDÚV	ç=+(ÃOa\'nnÂP<6ÉV¢Ù@THù®±k¨®Ø\'i$Xª?,KˆóHžsïÓö«;’yé‰4õ+µ8€äs.:n®.¡*?CÒ<¡äcØ×=ÓSr3&Jº¶µ*Ù;¹ŒÑC0ÃÕÌI\nTŒÒ„½O¦cŽb(YLýf¶q[ÑžNOÏz§B‰JñE[%Ä§ÔŸPŽj ÚÆíûa\"Ië­tÝA°¶ˆßk›ë\r~\rÇQÜÈéþsF¥¸Úe,^s*þ&¸,4“ŽN*¼õ“n¤ÈyŠat¢ëËQõb}ºV­$îƒ’O<ý©¼s\n§hˆÎ’ {çµ]²šTô«Ì”¤)9é=;æ¢,…§Ô#œ˜¨Ù‰o4÷„ÿ\0§ž°ñ6¼?QÔ]´$nm¦Ò7ÜàîJp (á=ªÇ­ÿ\0£z›/¬è·Öú£iXt{„¾Å|‚*Œú¤­\nZ•¥hQ\nABèG ×eð\Zñm³\Zvºé¶Ö?úkæÎÏ4ÇXüª=GåW±Åfk[QQßW#¸šÚ§´yvð}ç0¿Ñ®ô“ø}BÑëe‘l§wÁ85nð/ô6gª‡/4à6$‘¹Ö“	>´{ pcÓ®Õ\ZÒü[^·SpØ!CÛÒiCÞðÝúÈ¼ðõ«* ‚PT€ ñ¥dj<WK}f½UgýühúxMô>ý;¯ÞWµè^&´F¡á‹‹{\'^• ´7[:{rƒßlÕ5Ì5­ÄZ®¦óJ¿CmçÎm•:Ê‡E%Ä‚#ìGP+¸èÓt;õÜèwz•˜q@»nëÂâÝØà”¨n\n#Üb®Mºã@mRí&³+ñ–Ð¹¯~ôíž£áŸûü:FmðÔ¼e—kwÇC>WðÖ·z/šzÎ\\¸iaÄ”IõŸµ}\'§ßµ¨oXZ¾h:þÕuIø Šöÿ\0IÓ.ŸUÃÖVéºPËí %jù gë4µ²ìÒ¦p¦‚ÊÐ¤ˆƒÔÓ½Åµôx•\0\'½qð÷÷÷ƒÐé¬ÐÜTòßØöÌlIžõú•· ž• Xu½ØÜ?0Ö¼m[^€e?Zò˜âocƒ8f\0Çùô­€ukÅ+za?˜dMh¤LÁPŒW\0;È\0wž¶©tNÿ\0jñK\0ò1ÇüšÒÐEÂ‘!I)#w\'Þ‡ÔœòÔO§ù½¾”@™8„UÜûDŸÎ	Y À=GnÕ­³£ñJH\0¥ÐI\'ÍÆ=é#šˆozUêÛ™™1íSƒpí•»l¥Òõüm –ÙOn&~)šêe`qú}«Ï›º»v¸U»E÷Bà˜žÁšCª›\'œaÀŸÂ¼BVÒQ³ÌmJ\0½“Ó?J#\\¹y{šÒíÝp¥IBÖ€!<ÆãÇ¹šþ†„•]ëŽ—Ò„²¢€ðU‚®‘¶)ºTW‡s×·úý£4^?¯õ°uWZÕÚ@E£lj	ßÜO;\0ÓñA2õýÞªýÊí\\jÍ’¦X„€µõVNc¿Aéwú­Ý›7á¶lœ|5mhÐJ”\'qPì\0êyÅ¿?u~ËL=ÝþZœ•™ ŽhŠ8¥ƒqùQKn ßþýä÷öÚ›**)üBR£%…‡ |@WÉˆ¢-¯/Ú³7A‡¿\n\0—\nº»ÇsÀ¯o5éïy%ä\\\\¥jóA)…I F\0ïž½¨›\rEÛ—_¼`”XØ·ê.¨’âŽ \'ü+˜XÃÄ’ÌP£¿ýý	¡¿:•“ì…0Ñp¤%÷R„*y˜ì\r@ï‡ÝB<ëÓp[”¬lRø2ŽœN	{Ð\Z·‡ÕjŸÅé® Ø¬•¸“n’p\0RG|~”÷ÃjfÊå•¯WY¥p,®`õÈ÷ý*@TPj#ëðœÍ±7Ð~‘>Žò®Þi,\0µ.\nA?˜rÅZZjÝÐ¥,‹¢@	R½(?”S=U“íUÔéwZvŸvÝËJh¼ê›*ço	&s˜±YeIeÅ#É&8ª–«|²?yk“Ï;«<	a·¬[\0…4âÓ\rùr ÉÇ?¼P*<«OÀ¥)Jå\'Ë$7\0ºrhÝ2ù7nîlˆIÁ{t¨t×Y·Ö/›cim†Äm9ÈŠL3;Ç\"*!n9ÿ\0Üð]Ú±ëJÊ–2§Ô`Œp‘Ó÷÷¯m/ÑxIg`Î÷•¤´—Rðë¨¿²i§rÑéÜµ$\0ÑòÈöïÒ‡7eÀËOŠw&@ NF8þ”)r§?Ä8ª·\\¡É2ë\nrÙÖÙQR‹gal˜™¥¶->ÝÀMÛe§(…äÄàÑšjÂÙmIL‘¡÷©ïR7²@…N;b‘ÜT”÷‰(J{Ã<ä°ÂPÚÀ=OABÚ\0”3Éé4žëSnâçÊià«v 7\nWUAM­ÒáJT[p	$‘Þ¸ÒÃŒs*j5®[¼5²\'µlêRZ•ÉšÑ	Ü9RHè¤Å	tò–KI2}Gßµi\rˆ»›‰£ŠóI“Š•¦É;€’NO·¶²uÄúvu*?H­ÔÓ¶ê‡@<¨GòØ.â8—.¿uL%¦ÒõÓ÷©@Q%)íA´êˆ6÷\"Š`…\'hârzÓ4º±\"î“m\0ÊAJ|LÍ‚ô§Ö[üE»#xgr€Zàí\0$ÏÇ>ôÑNÈØÜbLvïKu;¨„¥j\0&`1ŽHäVÖ–ªÅ™¶â)~àœ“8Ë±»¯X={TM¿˜8ŸÚ®Þ(Ðmt”6?ã×CA­‰mU3ž3T›öƒFOå8\'5í©µmPÊrÁ±\n7YÐ¼1fížºå@‡ô¤fpiëÅ6¥@Äã9¥>ÔšÔ4ÿ\0Ã:­×¦y#¡¦:’†ä4yÞ“ÔeFã1o-¸ç¬ëa ˜Ó@±qh”LdšÝ„z’Ý\n‹ZÔÍ¨ò	÷¥U7œ´†ÛZúÌõ¬¥D¸&I8­zÝ¦ÈGP3úÕYW··–„Ž¡ ã=LÐ÷–zªØß°œðÞ[xQór}¨ëåJJIP‘•J¹°ÔÃ§u«²}šÊ	ºÂgsï:×ƒMiž£êÛ¥LòGœ­±´œuëš,)KgjN?ó^!éPÌÄO&Ÿ\\*íØÆv(>rq\0óóW+p\r²Gq¥R-^i vÅ\\lTÂLÌu«ã=%×¤òPñ\"`òqÍj—$ý¹¢µFÁmJ§?Ö–6£‘×¿I¤ÜlC‰ãªÉ“ìkœ¨‰[IC­ˆÉI# âº¤gŒÕ+ý@Út×	æ\'Ž¾õ4·¯‰œÝ¥`àµ†w(*3ßëÒ gbÄ£ƒ’(¶T\0È&ö­PeZZÂG?Ò¼wIt5½\0L{EHÊÂv©$’:š{g~×•±d@È\'š­„ã\"VQ®íJÁBÌø¥÷KÒž&OXâº¾¥àÝFáé»7\nJA²•® v‚Lg¤Õ^Ó\nP´Ã‰äµ]móëôØ¤ï:Oúcþ¡5â7Q k‹Ù¨”Å•Ê¿ûøÿ\0¶£þñÐÿ\00Ç#7å2Zp¥XŽ„cä\Zù<Z,>B‚II ƒ2=+éÏÞj:–ƒnÎº¤+TmÀ.Žêîïó^kÅtTÚƒŽÿ\0^ß·Ë§§ðßX~F;`„¨§„Ÿ¦kr¾žü{ÐÉXˆ#\"AŒÔÛÖ”B¤FGzñ\Z¥]ù|¯9ž-D’NO°þ•£m:àÜ”ÂsêQ€k>öÙ\nlAPQŒâŽx¾¡=É&~h=FC6ßH€)µ´­Â}¹‘Q«×rIû\ZÝó´JLÇÞ¼´!×U („òG\\fj½³’é0>ZXõ(É# |PW—Ii°`v&fdÔ×îmlÉ€yï\\»xÝÜ±fØÞ§Ü		öœþ“E¡ratôïõ‘Å€RÚüPr$ÛjL£9ëZ^^±p•5z€QÁÚaI? Ö;¨u©@J¹	Ý$&b8)+6k½}Wz‡šÍ£­…´”,º	¢rPž¹Éš:¦IfàT@I{8ö÷ù	=ÎkvµÔÜC§hOš€âIœ’SŸ€¦^\\±xý‹åL^iŒ:Ï”’G©G¶RAóDênÚ_\\¢É‚SxâÂ\Zh\r¡_8ÏN& ¸vß@m´Z»¨ÂŸR‰Xnp”’O}¸­5Ç—´óžžÿ\0—Â32ìnIèéñÏ´WÔm­ì£å2¡ºedÄ¨’s<üP–6×š«ªzÝ)µ°PÅÝ¬¶ÒL,å_þ¸÷&ig¨:5mA¶Óon°”¶˜BnÖ“>¡¤Dñšƒ[Ôn®\\và´êÒë^ÂRƒÑ$ÄŽÕ*\0!d÷&0 ýÄà÷\'ßùúàÀ,ôMFßXiVïZ:Í²Ë†á§e\rgz“@g’x§çKÓíõ÷õ»‹«…­n²or*)	Ï^\0õŠƒ@x/GZÉQS÷w¨ŸJFqÿ\0ªî\nP@0T®#§Þ«m®ÇhëÐüg9±˜‚zqí2ãB´¼h¢È&Òá1**l‚xRI\'â\rNÍ£v\Zrl-žSáÕZ’\\V @ìzŽÕå‹4¨ó	WaŠ%„¬Á2@’Dæx“Aglm\'‰·F9i©:-ôç˜‚Ò„tâ\0ëChÏºÖæÆÊÖv¡G&>1ÍlÃ#W»[**K-(8éIÉÎÔƒÐ“úf›• !\0!¦°”¢@Hööýê¥‚.ÎòZÍ‹°u‘­—RÃ›·©\n@-@•@ÌvªŠì.ÙÔÓ§ÍÅÁH(’ âc\nã˜Žµn]Ò/<  „¦q°î~*;¯Ç]/ËKÖì5´…$)EpÝôšµÎgSkÖsÇ>ó]6ÉëK%ywM3r !!Ï,ÎI2=€\'4œË–Z¢mËÉu#Ô]”÷3Â»ŠóR°»°`°õ¤\0\\lg@™ø45Š’ËçF	3ô©p,sƒpf\rœü>Œ½@q½¦!$.I#òæ~À×;aõ\\ÝBD­EA)L\0	ãûv«Šn]kDKa\n\n¼W”¥fRfy8úM-Ðí’ÙKï\0ƒÇÚ>ø=:Šë.{ÀéVŒçðúúé-ºRm$žc¨ö¥ºúouÔÙØ6é·B6¼îßA\';AœûÇ=M\Zßš¤ð\ZOD­A*?=«e)öÄ¸e \0–ä„ûÔª†GßŽbŠÛló3ÓíØÓ‡‚ãÉÉ1Ðñö¦È¸id,-G 3PÜÛ#U³e!@…7¸â‚Ò´«fÛQiûwH	îDZ«m°sƒ!ŠØ9õG \nÏæ\0|TWî„¸ÈAQ\0\0yÁýè[çÆšÄÜ¸Ò¤œ{GzEÿ\0TvêáN¢FÔ¦8úUk¥›Ô:H§LÖã¤¶²µæÙÜÔû›RTØZ¹*Q\'zSbáZ@*ž˜3G¡Ã€1ß2z@Y^ÃéYà}d­kçþ\ZqÄ’`ûÔ.¸³÷\n1¡ýë—*w²vz¡M¸·0¥?Ú0(ÖÖpŒ@‚x \Zikãlö\'­N|V?øäS´ØãÔy>ð6éx³L·»²uIAUÙP\r¨¬€Ÿr;ÒªÞC€›µ-ÃÌ	šéfÝ*üéHà\raÓmüÖèö‰øšõâõééÙ’OÃž“]¡¶çÍD*\ZN›mbâSl„ u\0cÜõ¯n’|µÄ‘Ví1›TùÍ¼¥FD{Rk‘æ+hë\"}ëTjSV»“¤óöil©öÛÖylHmn\'œ9ô¹V!ç\nŸQQ\'4uÁ\r¶”=ÿ\0¥DØ$ÈÝGH¥­Ô”;PE.ÚçžÓvmÛe¸i!)à+E¤•IcžŸXH)ÀæHœTj@ÈíÌu¥ÙÙ¹c(WŽ þr€žÛ	ûÖVêmD©T{t¬¢lÇ@&Gp°ê´žDÐaD*	ƒÈ¨4Û å¹AÎÜúf½z@‘Þbbz\nß,ØÎD=—H;°>µ`oYnÞ×+…qõJSç‚sÄëP¹tI9\'§lWn”[6Ë;úòÝ%	„ƒÆdŠ…½X¤„ªAãßëU´=*ƒˆt¯Vàß¸HOÜŽÓR@\"ZeÎÞíœ¨š«øù‚æœæÂA(\"~kÛ;•4  G¸<ÖúÍÀºÓÖœDAÔ0€!w‚³‡ÛÝ¸Ä%gŒH¦ö÷èsÇb)f¡jSrê#…1ïKö­•JOÀ¦a\\KÝ¸+Sé=AÁÔVÒ©2AÈœÏùª¶—«\0…™u_x«@¸´fÏZ´µüB—îÛJ›Xé*	”ž™‘ïQn£ÊMÛsò‘F›Î³c0_œ×Ãž+zÁ†­¯T—íÐa¹^Õµì•{{ÕÑW:ˆ-ü»ÛvoÒGå¹hÇp¾>ÄT«qû]ª±ÒôæÚVR¶ˆÁ(Wu[õ’<À‚90GÍxíoˆi]‹Ð¬¯î?1=–‹Ãï©Zá—ØæVïüáõ]¡ë»­)ôªPÛ¤:ÔöP~!Uî¯£x¾Ù,#KzÁih‚—áii=ö¬Gêiâ/.ÊŠ\\\"á\nÁmi+ô¢í¬[éÂöÉ#!	Hú§ö4šxÖ­FÂÛ‡ÄgýÃ[á\ZG9ÆÓðúþžÅÛÇí\ZV¨‹võ \\uÙWû“#¯n‡½“¹ˆ)0G·CK¼ûÖ?å­\'ùöDý(–nI>¤6IíŠÀ»,Ä‘ÖhùETÎ!Vkõ:Ž°}êwéÆ	â€R‹kK©Ž`öê\rN•H\rÊ3ŽÆ—#0l¼î‚>¥’ÚT¨™(& ³ËÔ›BÒRW(!R2ië„%;ÐéKu<Ñê \'UÓ8«+ƒÆ!+´0ÚÂk« ©¢#GÎ8ª3Yëv¯~âí¶]†R£\'8?0æoz¼°—.¢ÿ\0–âv‚;Ä7õ¤ú¶²›\"¶[Ph6’\0Ø&\"žÒ±C°\rÑ½#° 3˜›¢¿õ¦˜ZK/•¶âáM•J»‰\0ûñVM\\—ÅÊZ»i¥¾JˆRJÐDF1ôŠÕfÃIaÛõíqM<êÒ¤Éƒ×\n¯jz“w¤¦ÊÈ()¼\nK‰ƒê@Œ×ŽGÍÕv1Â¯Ëœ}t–#Í`ç€ |ãðšøN¸Òu[•^­·RVî´¢Bäú€\"\":óQëú§|\n6`%O;¦r`qÔýhï\r°í¦–íÂÔÛË¹\\²¯.´	=DžÄžøžãPm†Pw`È‘é=Ë˜[”äŽ>‡ÆË<ÒËÉé˜EÍ7EkN}M)öÐU½¨¸DüóE//n­Åùuì¤z¤€¢:GŒÄÅVõëíï6¶S¶RG¼Àõ«½Ý™Ó4ý?Ob›m´mßJ*‘ÓÔxéÅ^á…G$ÂØ½¹¶ßñÒP››ICiA¨¯Ë	 zV·S6ëZŒsœDLÓÆ™ü\r’ÐÑ>jà­Q;LJ¹¡ü÷õK¦žÜðKg+èg·zTXwî3óâÃ¤Uh\n¬\ZX‰LŽ(âCvJR‡uIíÐþ”v›`¤íP\'r§=»V×ö“hH®O´äÕ^Õ-Œj¶ ö\r)%„íyÁæ¹\0¢xÜ}„P—%l¥)NV³€xçØE?qN¨úDäfq¯?Ì¸•r„Oûæ?SúPÖÌ¶ã(—e²bÛ&]qHKITJÜ{™§V¬¡\r€”íh@*÷¥–~b.:(î$Ž©•íëVÖÊuf@•Â¦ÒÌp!‹p$ZËÈF•wæÄ-S €=ñ4›FÓWwz…­0”¨#Þ*&wª]¶íÒŒƒ)@2–þŸ×­~—+Ó¬e\nOâ.fNÑ«½—èÏÏá„Ö¥äþ‘[®¹¬ël€´67’„ û„ž&$ý³OmÕ ²_pü]¤@ÿ\0ÚœÀ÷çö©ôÛ\"Õ\rÛ$³l ’?3‡¹4Í+KIØÏ¤‰>hVÞ¥z+.qGë˜›þªÓ*P)\ny\')Ûî£ý*A©—mßKV·(#ø@ÆFÓ»D_¶[u¶‹€Ãn)\"Rg¿¿žømÀ˜	ƒ;ÿ\0‚†\n•Î9ÖêH^GÆI§^+LÓ‹—Çc­&T‚ODž;TÚêvÔ%_˜IÏzŸQ´oSÓÝaÖ›q[	h»Âƒ\n¥.Ò™vÙ^[€·…m ‘Þ«•t>ùƒ,F\'†ÏÖ!þ e‡tµ©öÛZÒ@iKR¢D‘ÇÛƒChö¢ÞVÒÂŽNÀ•ÇíHµ¿7¨Þ±o`JíY^àêDUÄŒp:w«]‚Ih)$pFA©dzk\nýäµoM\07~Ð¥3nòBVÒ9h}ˆ¨[2–Ôâ€‘*‰¢\Zà$II	\'¨«Î!N-J)KhÁ_8êiUvÎ\"C#ŽÓG’öÙJŒ)ý\'Þ¥iÈ\0ö ;üRßÅùÏ¡0“Àì(–¡JI8\"sÓ¥0	V;xúøÂ5d/ª0\"\":ðjFT]IŽÁTƒø¡ÙPÁë‰éšŸÎKAN®`©îø£)=bÌ=¤ÉPÊg˜ïX•Äå\'þhÞ+2¥Iæ\"ŒdcqæqÔÕ«¸1Áé*É·¬òìÛ¨†¡¬HŠ¬¾„¡Â¿å‰ûÕ‹SºÚÑ`ZÓ˜þQ×ëUûÖÔm›ìœë<3p ·cÒy_¹M›S¨ë;+;£ŸµNÓgˆÅJÛa DÎ+U¨“ûZ1@¹&bbl$&@qïZIõ©\'°Š÷p\rúÈ	2c<ÕÆ.@}VV\n”§ó¬žªÕéüÒô‰8¿ñc,\\­çj0Lò{ÖW=EÛnÊçÜMej¨P0 K6e³J»KjÚ£Ž@8$S‡\\Î™?5SÓ’KˆR‡¤’~Zw[nO#˜íGÆ&	ù‘8šæI˜œdMLe$Iûz•&J¾IàqÞ¸\0zÁ°²´ðDuþ³S©\'Ê‚2=f(—\nI`ž$ÐKx´@ƒRT$Ó¹!%3ŽßÖ¥/nmH=D`ýÅ\0¡µÈLm\"DŸÐÖÈYI3Àø ä‰ÙˆµM$;pë›AÜ&F3HÞÒ•ÇLUáá¼N1\0ôÒP“¸3Õšâ;fne•=#A¶»Ö-ØÕ.Í…›„¥W@\Z1)&qÀú×Dé-’R•[xžé²Dqf‚>ácô¤µÖ÷}ø«†‹âÔ:+TRíÞR‰üCiÜÒ¦?:	1ÇhëŠÊ×ê5+‡Óöê0Úð»ô¶^«c\rðƒõÞ½~ÖãM‚n–\\…ÉpØGpH=A«mÞõ.BâGxÉþïïKÛ¹·ÚÄ¡\r¡cøwÊ!¥ò§õ3Ö:š\0sNÔò?üO%%QÔ¥Qê¯3ª¸ëIfûßÏãÓ3Úé´ÕÐ¡TñÛ=?ÌÒâé$ßS–`à£hYéë´ÑŒ­­áÄ‡À€«w\n\0÷ï4&˜^}âÍê¨ …\0Ü	ì¡ÿ\0Šrl6·m´68J\0“¹W–lcá˜Å¸_N$ê§m>{9èQ± U~¹)rÙ)3™9ý¨×Zr:HšÆDÀíðiv}Ç-É“X¬všÛ-ë—v6”€1\"BG¿ö£mï®©>ÂqÒ¼ÒY(S…BƒÞ0Em|’øÿ\08¡3z¶Ž’ŒÁœ é7+(I+8>ó;Ò]rý²Jw€`(@?Z6õñä%M™IHÏO­T„ßk–VwJq,¼èJÂL‚qýé5AŽLkI@c½ºeÀB-™Fí‰D³?Z¨ø³FµrÕ××ur‡Ta2Dž„@ýêÑ|áRVã ¹QÐš£7©µ{â«Ö¼Ë+T-õ Â€ z$}½óLé™.§£Wuí×úlR‡ÚÓtýZª¡½…µ4Ø—3‚¥\r¼ÎÙâECâõ¸ÚPT²Xøh9ÛŽ\0öé[èÌ¸Æ¬½BýÍ×Z‹\n}(Ki‘	27oÎz|Ð~ ¸- ùŠ	@$’ Ò™?ýÀ?nyÄ=kþPzÓãˆv‰©3sáÃå%-¹o,©D™å$çƒýê°óï\\TÓO- (¥µ œcÐõ¦ZEµ¶–ÍÛNÛ5¨êo©-¤ù€°Þ`\'¦ã“\'¤š´ß¹rëþ¥¬?æ($ºÍ±Ø“\rÑ#‘ôaåRå³Ò|ÁS£ žÿ\0ÀçõÄçš~ËcNK®„6«„, ,\'Ô	”õâ ÕçSºUßˆ[„Ú‘x¿Ö‡:~ˆûÊsð>cƒk¹Q;ºgj{ÆÚzèÝ2H;u™ž$´;õÀQÀþe/´;ÁŒq)Y;7$ILÁ¿÷w¾œ´~Ú¢â†÷`	=#Ûô î–Ò-íÔNæ!;ù¦ºyh)oÎq>ZIm[~°\rf•ÊâgØêW6²eÆ\Zò”[T’Rç¼fµ¸AóP²©ÜóJ¬ø†üÅ&7À¬œŽ„Ÿ¥íÃÊ·H6L¤…DO21CjÈh›™­Úƒ®[Rv v G×?Sp‹}ˆ\06„„&;UmYä…­iZÔ\\sÒ’B„ºiö«¨­¥ô§|”®$ÀÏÎh­S\0 w†+€0zÁ/nZeñnÜ8ò¨°v?Ú¢¿Ó‹—ä:¿ý:\0R@éÊ~)^ŽC…ÕA`«>¯ÔÕ‹Êzñö6-’I+$Ìq(®\rG6çËÀSøÁÖ¤Ú2BPÚ€\0Àïþu­ôÛdùiÜ!¡0$þçüÍyµsî–“ÕXŸj6ÙHq’ëd&é·äPYˆY`Þž$ËTŒàv­²1ŽÕŽ„˜$d¨ÁŠwŒ¶D¨­^ÜP‚ÚJ¡=!æòÞÙ\nq×RÐÞ¨3ÒªšÅË µÿ\01$ûfy§Ï&ÏPd\"æÙ.72å&9™¥îY·¤Y¹tßœý»\\Fô§ýÞàu=9øb­¡Jÿ\0ÈÃPQ)êe‘§[a•:á	i±¹G \0qI4WKËqòFå(¨ÆLÉ1UCZ¸¿B@fÜ-¤’UØ¨ÿ\0N)ï…Ä²7(™Æ\"¬ÚcUe›©–:SMLÍÔÂ^ðÛjOÝµtòâ‹‹\nHX+&L}3KNÙ0¥R Uzœ¬6¦P€$‘Ú;š™ýÿ\0‡x6°ÊÊHJ×Âpy¥Zærœˆ‹\\äc‘\07¥)ÚQ$îQý@¡åNíN\0\0`|Åh\r!%M	H·CM­p¨#rNfU1Ú‹³0è*Î&3nS$×š%\0\0$úx$ä}¨”\"ÙÆ÷%^BÇ1%3=º}*\'Ñ¹¢©J\\lÂŠH…\n­ˆk#~QCnóƒ5ó’‘ùNò É“óíûÔ%KuÀTg =‡`+t%˜>Ô[,£p% ƒÓéP¿œHNdvÈ88H“SºøH!¬«ýÇî+e0Û‰Îñì•P×vN\0v,­1”Žg­7F[Ã?§çºí ±Ä	Â¢ÙpJ³ùÕÊSSéÎ!ëu…O£+G_Ú¢jÍm9	™‰ë^ëL­R¨ë‰áuy–›ÜÚ%(R·#4²<´npÄsÅm¬êfÕ¢„zÕÓUv¯¸p‡Wé@Å4ô«œã,î	â­enÃ$¶ØÁ#é\\ãQgk…@H™žþõs×\Z*ÜyÉ uæ‘±j›…¥.b\'=\rUS·´]_œ˜¶Õ$²3±YV§ $lK„í¬«ùs¼ÑYØ•5	O3=þ)®’`–œiôÇ·4ÒÞÔZ[™ä|ŸŒÕnòø~)Do ã¯CL›†qÚ]—˜ÑlBÊ	ê9Á©?é÷*oÒ3ÔKíïJ]JŽdÉŠ·é—ˆu±ê@ˆÌP^ý£(•«J›úeòD†Âº`ÒÅÙ]4ä¸ÂÀä«‘ïŠê„/%(PìEzí«¤	ëèT:™o!OC9r“½9¡Œƒ<Fj2xÎF+£]èÖ×	ˆ“Áˆ?z­ÞxUæÜQeÅ”Ž@™ù£VÁÄ‡Ó°åy•â©ôçq?¥¡¾-5Vqm¶Ø%.¤¬‘@ŸŠzÈÎ;q¼sG¹@“çïWUÜ¥L\Z­ÃÓ™`N‰á½cÿ\0êÞ²‡ÕÈ¶!°zÿ\0ÛQ9øŠ\nçÀ(3gzÛ°pAIOíIÿ\0éw$e×ž>)Ž›©ë¶¥.6›ëq)òBÀî—9i+4×Ö?Âùøï™³^¯Eyÿ\0õU·=×?°ÇónÏÄžx–´Õ]Úª|Ö\ZVô,wó$û÷§š&¤ÑSi·]Åš…[Ý¶P¦•Øˆ\0¤ôROÍ:µºÉÎúæÆç­µà´O±þ¡_JÇ5ûe¦ßT²l/0´8 …ûƒþ+ÏxeÎë—\rïÈüç©ðêë©1§³r{œ|¾Œ`5Kf_çs$€•,þUöÜQo„”¥ÆÔÙáH2{Ò‚ë7…Ø…\n’àPŽüf‡jÙÛU)ZUÊØ\nÊ™_©µ{N>RA¬+ˆa¶Â>bi\näpHÕi f@¨‰#éCµ¨€vj›g\0>¡ëlüGÖ‹X° D‚‚;Ò¸<Â`¯ÞKg¼—wÿ\0)Â‡R(çÂ\\lA\nJ¢q@užFÔƒ2q[£{@ú¥$ä*‡™VPÇ ó\0y§ƒÞKhóR³1 G¿÷ •ae§^1ss.¸•nJ‰)\r˜å)ŸTLæŸ%CbTFÒá j\núÙ‹†Ý·J‰qP˜‰=¾™¦)´†ÐÉqÎÓÀïñ!-iáe02aT	èjzŠÞyn[éËmÄvƒç„ÏNêàU¢ý‡œ¹gJ¸Õ<ûgˆh”Û€´2 zã¼ž´.µ¯5§xžÓÎSˆ³iËhçËI*1ü£3ÌŠÖ£5]\\“ŸÈý&Ä¬×_$äçŸÃ¯Úmâk’ãˆe§¾iÀ¦\nS$ž6G$‚;R·ôÛË–^|4¹ARØir¦‰@$\0¨ö?z}á–üÏÇj	RK«i§åh}çžµö¢P½Ž´¹J£3ØE\r,jÿ\0Æ¢Y©òÓ ë+_‰\ríu\n‚…\r²\nH ð{QÎk©¹\0>ÂYVÿ\0O–IH“ÜZ\"ëË¸d€7 ™ ÁÌFM3ðvŒ‹vœ¿zØ…µ.íÌL	ïÌQ]ÓfHæ^Û‘{dÚvŽã7-+Wh´… îNò•	ƒ\"c™Ž±V?)›VËIH) ‚SÁzRçÛ}Æë……¨Iê½€ä	Àý©¥©]2K(YZL$)&x3ïÞ”Ë\\==?ßúùç5÷ZAcýI.Sú–¡fÒçOYIÞ…C7mÇþ(´én%M¸ëåð˜	S‰“&)vkø7A2PHóz€¨ÁŽÕx³d\0¡$ò\"Dw¡_aC…énVõ\0,Xó®(¶H;À\0\0\nØö¥Ú\n\rÓKücÍºÂ¥ `N‰íW‹ËîìŸ³x±p‚žÄÁï\\ÂþÔYÙ¼„¶mÖ¶ü’¦Ó¼„ñ\0Žä}ªú|X¥IÁÌ\n2œÔÃ‚Z¹[ë}ðÚ‚ÊRÂ\\?Ê7{Äã(‹¥¾í½½³‰Z¢R¡;B@íóÒ*µgz«GìÜ¹l›†Õ;9Ž1ÌÁ§7o»}n·Ü[Vl¨¨o>rÔ;ˆÇHûÓvTThR¤Ï¶„¦®Ÿ¸ÉqM6P„ç•?1é8ëSZß.ÇRIO©‡–q\n0$˜\n˜ÁñDxMô\\Ù\\\\¾ÆÆ–Ð\0;Îïc@ëƒpàYÉÎHêi7Á°¡…§ÔY¤›Ä–êÿ\0«¡\n¸CMl*@0H¿½Efëú5ók¸m+·p	2‡[æR{ŽD×Ž¥ëÝ‹Õ>\\uµ­$`˜IÚAúgÞ£ÑÒî¡¥ÞØ%H·æ•>¤•Ê=§>ßZ¶\n¦n±”#ÊÚÇ#¡þá7Ö¡7Ž%÷\n›ò\"~†¢J”H$«í^ê/Ü-•ZD–PRÆ7>Ô;6Îíþ=ÚÖy†Ò\0ªíÀäÂTNÑ¸Æ¬€RÌQ¯%Ë…2ÜJVS7\"€bÕ\nÌ]	Q9?;«nÎÙo:Ja;ñ\0óÀÏ‚p:ÁX ä¦R­¬QjòØxÌ8[QJLcíVm5”ÿ\0ô÷·ŒÁZÀ3É\0‰·NÓêÎÝ<Œ¼ë…h\nP)Ü¢H\nÆ9‰Ÿ¨%§}H¸JÁ ¤à¤ðd{V…¹· GY¥fmsêÌ¹éû-Ë»Z^yÉÃ³íÚ?Û(ŸÅ¡Õþ…nQ¢ €;z”µ©X©•ÈCÉÚd‡ä\ZÃÊLÀ$‚¶8úVs.àIê&Y@ÛºˆÒãNKÌ’ÈòÞÉ<,ö#úŠXÔ¤…âHÁègµ>}hC+SŠ!!0JLŒG½%m_~§æ©[’§2šwfwHÎÔÃmÁ ƒ$ž¿%âYB\0h) ,„æ@ï×Š….2ÂR·Ê˜á)*W)}Î ._I\r8Ó([Iz*ÖzrGÏâQkg|Ž‘«IÆÒyàMNÓ`å\n)ö{â—Z»)‘æ	é1#ïF¡iNBNGr*Q†0ÂRÅ\"ÒL+°­ÔB„ŽÀóZÛ\0¦„¦dNNIö5¸Zöîßþßìi¤¯812yÄÑzr@*aA8Àþ•\\×/Í’Tß™ÄÌU¨¡dÇ¥PüWj¶/B“jã-,H+p/rºâLsÇZõ>¨.æ²Ù¾ûžwÅô‰]~mcáýDËRÞqJY•+‘¥”Ü G1žµ)YJ£¡ÇÖ¤¸IR‚Ò&Fz,“Ë‘_3$’ óš#Ãz(º»u>„äŽù£íì”ðAPç·õ«V‘d›fq‚y<ý)_+/ºEk¸ó<ü\r\0”€>•”CŠ	YÏèk*ßäŽn+»Z\Zl©Ü\'·zEski©¥ÏÃ\\Nqª÷ú—âa§[-–üuJR3Ü×8ð§‰îô»•op¸…Ä(™Ÿc]°ºÃy{”ætJížSjP;Oß¥2Óõ6¤.<Lç©¤í_£ROžQW Fh©ZÚ•¤¤äP˜3Øm<KÞ©Ÿ1!GàžÕdK‰RAœ>+œéo\0úA0=óý+ Ø%·™FAÁ¥mBO•1#˜Z6È‘Q¸¡ùfq™¢›a 0@öšñÆQ>˜ç¥TTËÎa‰®-_¡¨ÿ\0lpHŠosd‡Y)0qdUEÝ5ý,8²Ú zà}xì)ªõŠws îÈÞ8UÕ´f\0=â¼næÙN\06AÄ\Z~aÔþkä+¨.6¥@¯\n´‚Gâµ$`™RGÜ\n_ÿ\0j‡ ?‘š?ú}gÿ\0ä~b9l0¸Èˆž:Ñ”)£né0cÐ¯åí«hð´«sz–¦ž¸@\0ýhÆ4†•\'R»‰áÄ¦(vx®ÛãâbŸ×RÛ‘p~bí¯w6á[sõOi­=@\"¼]«»%7{T8;gî&¤´h¤Cîy¤dØopí¥y/¦€Û¨|ƒØƒÇ×ÐžŸKuÌ¸½0}ÇC<R­´JO~\'æµ°³CEMm)2€NÐ~8©Ü$œŸÒ;V0°…U	8ö½d€v˜Ù-´&yY’=³ÏÖ„yBLž(çvç4ªí*ÉOz¢Î¤Ä\'r\\gy…-\rnI<psúRÛûµÛØ%@’A—	dÏùŠòÑï)ÀÕÃd²¹Nñd‘\'ž&}éy$“\n3Ú˜OCc´(¶õr%3ÃwBïÅ y¥BÙßJŽU O¿_‰©u-_Qÿ\0©ÜlzÙÊE³n—TÙõ•’8˜@“<ŠAq¤êÌjfïHml”8[MÀRB¸ÄOÈƒŠ½=¶!Õ4ê›@ÐˆATd„Ž9­k[Èaeg’0>¡¨;l\rYê1ñŠü1zØ±vÚè¡‡üÕ,…©)Q\0\0h\0})f¶å².1xËˆ\"O¬;âk{íE­[ÙHI4ËÃºMª­•¨Þ[²]Y„Ä9v?A8¨UÄçÅ9°÷í+–7-ºTÒœ*<ˆìM[ô‹Ç_üb\\Cm¶ÂP\ZB! Ìcúÿ\0â‚Ô’íõß™p”¸D€ ˜$NOë[*å­H}	S¥õ¥Jl¥\"wtã9¡»}+Þ/sïÇÇw¶zsA7æT£#Ó*q=6§üš[g£&öØ?|ú¿T]S±èI=ÿ\0(°¤ž%û¦ïŸS·/¯Ö¥¬ON8\0vâ¬Þ\"Ö£éq‰QuÀ?€‚à	TUËï<PYU_Su(@^I„YÛ%ÆÐ¤‰P*êàÓV’mÙ)‚´\0 ‰${\ZÃ×ÚƒWšcÉ~ÝÁ!i0êb;\Znç–Ã(qÅ¶²v€e* p~cšUh²ÝÇ¹ãó‰]f\"]OZ6òÆš\n®[q	¸/7-†ÊI +¾SÅSõ–Ze†Qä’—\rx\0æ	ž‘Š³jHtêkYh6—6•AJPå\"sóJÕ§•ê.9pãgjÊ›BKpG\'…wŒÓjû6ƒÆUX+nˆØÓ\"Ü¼Úâ˜(D’*ŸÍÏ=h%éèUÛ„¹p]*+C®	ÔÍ\\<£ä§zH)qnG–}ó=i]îš…Ý©HóVì¥OTƒc­½AÏ&0—œœ˜&‘w©Y[©\r[2õÊÖ7•¬¥.&b;Ÿjcwz—ËÅ¶ÞÚˆ!Q•ƒ<“Ò„òPÅÇðÝ³ï1+€\0’\ng=±Š>\\Ô®_°d-vàÏ0<ˆTò#ôŠ‚¡Ûv#XK>¾»F~\nJN¨¾¤ è$’°6“ŸnßZ‹Ãeõ«YRÊ	[îLä~ÑÖ¡ð­ËÌ\\ßÞ2ÔÚ8Ü‡ÜIjœ%=ù<qÞ†³umjí¼•mPp¨ü¿O©©(¾z}q4\\{ËÁ¶ÜVTúÔAô·\0bMInåŠRO”µÀü‹’N&&hm|;mª¼†ÐÚÚ -$\"zqíA7up„ÈŒæOÉæ”TÊ‚ë:´Þ ƒ×ã²ƒˆÀè9 v ugÃ¨U‹n-ÅàíLe#¤ž§ ÷àt\\]¼!Ça$J\0\0û´ÒÍ¦Û”\0gžµ\\ygqë.WaÜÜÁtW4ëä4àiL8’°áÆÝ¼…1Ìöª¦ŒÃwïî¢¤¸âŠŠÀ)D“#ïV_¾ãVLÚ´Ñ*¼•âØ€¤þS¢h}+ÃöÏÚ…8mp=Iu<Ór{}©ªßjà´=VmCsœÇåž~½£{KgìX+mÏÆ¡	$¥´€µG@*--ázÓ—òÓvµ})U×iþýê\núñ)Ro,@Gÿ\0pOÈ=GYíF¤:Îµp¶XnOœÒS\0,Æsó3J°*H=b®,÷âIr|ý%î£)Û#q\'€?È \Z¸qj(HK*…	5&ªë-éöön¡*¹r\"cÊîÄñ¨›&ÃÍ\0¹q\n2G×¥Wî®ZBz$q“õ4fÕÕ/tïQä…	úÍ2eK@	$‚9J‡ïZùNØ;’pP{\ZÝÅ-;ÒIþUvî	÷¡îÌ]ßÊL–˜ZW)m\n)$(LMxÓp¡½APyGÍhÊ¹Ä$Lƒ9öçšR©BR>„Ÿ­\\6à2~¿˜Dh…%(*P\0’N+MàªR˜§_šµ­jj&8D–ÝØC!\\ƒô4Ú¿›Çh&M°…Ü¡†·¸½‰’}€ªˆ^Uò¼Ò6¥)„v‰ÿ\0&Šºp“¹Àw…£9ö=GÚ p¡M’xžÃÞ½§…h«¡EŠwßýñþ\'¬²Ç4‘€;uýe:æP®#¸Ž\r1Ó’ÌšRq€ùÛ“ÇARé·h*;yÞ¶2Î³€q,Ì¥\nžzqŸ­ýß–ÚR#±4ºÒVdð1>ôÍ6EäG×§|×mè§EÊx¼wúOi¬­/ô«?ÒHY]µ¥ü¶÷Ÿ7x—S^­ª¿p£)*;Aí<ÒöÓ‚ªsâ_\rÜè×kÛ•ª\0Ê~iYH\rqP#\">¬â¤ëØÜˆW¢Dö®“¦]5¨0•´}DI9®>¹ßO¼+®+PiN¨ùCtfÅq@Ã™Kh2:Î°ÃD)1Àƒ}ª÷ *XHœò*¾‡lµ]9»‹E¶¥8Æî´F‰xmî6®@\'“Ó½\0ÒH_-¹—TÊ~+ÇîC`“Ò§·Zd,fsÿ\0šS|B®6ƒéLN¥	¨lñ3þ êÕèA)êzRíU\\¶@Dò ÿ\0z4;$%	€ž§\'è*f•#$Òb€Ö\"ôæTú†%0_^é÷mJ®PÒU*@V;AÅX-5Å¬ú`„¨–Õ=·e?Þ˜]Z³p«HöšGy¦`TˆÙÛµ\0èªÕž¤„oIâZw/±Ï÷ÄoøëGV“|Ùe}°[·©\'j¾õíÓWŒ6Í›[Ör›\\{!_¡¤-:¦’Ck€yƒŽ£Š*ÎðÛPçÊô‚zÊ/éIßàZ•É¥ƒcÇëþæþ›ÿ\0&Ó¶ªWõÁý!_e.Z>Ò“ ì¸P3Ú›hî ²óhó¤+r‹ÎyŠ ûöö¥ê¼·ºÎO”çdcŽTì%Lº…°:ÄÛâ¼æºFŸÓj•Ïåùô›´ê´úÄ&–Ï×´bï¸Èæ(gp8?ñDÀSŽEbZ./jH€$¨ðzÊÎ!U¶õ‘Ú=CN®[ÌÏA4UËaI dFPéRy$¦R9œ˜ïô£]\0Ø ‰p}æ¨Ç‘‰G8l‰SÕJ˜JŠNà$F*/ëj7ƒN¹õ#z\\\r“-¢›TÈ…ô=(¿$ù(NjÁºw’\\Õ½Ëy²Óh¿7¼íÄqZt²-{Ø{gÞi±C¦,Ý{|á^-eåÙ¡M6´‚DþDÇC=>ô‘ïé7ZhfúàÚÝ”þU%D#\'Óº!R ÿ\0Í;ñj]«§s™1	$í\\æÓFwT×-ìX‹Ž¢D ¸ÏÇÎ•Å&ÓÓœÂé+F«.q·˜àZ­ÄXÝ^]-\Z}ÝÀi†’ðœ¨öN	‰5{vÕ%õÒB9€Ò8ª‰-k4Óí-‘ÿ\0MÑ´÷C,€I@Sj\'Ò;©C$~µyhÊ($L|ýjšÓÓiíª±½$õÆqí“ÇãŽ±MÃe§`) g$\ZCªÆ^0Â’ãiOñ·v#Òs}jÏt‚AäwëŠ¬jÎ	}Â‰D(ÿ\0Ÿµ/¦9?¸ûÙ–[u›45l‰S×	\\:BF?SÛïN­mÐ†Ú%!)\0’:v¤º5Ó:§áo\ZBAR=(n	1‘<OëVC,yžph$ËŠ&L˜ Ú¥ˆFã¯×8kÛó•i7þ!Uî—6ï8ÚTûHsÈ.,\nH3×rrG½¥[x‰«Ï:íÊJŠ”’  I9<)¹y§.Ÿy\r„—VVÉŽ„™öøSk‚coN¼ÅµWf#r¦Ït1¶ýæ€Ù\0‚ŒryƒÄPí¶?í´P’a`‚¾ÿ\0©ö«#ªh4Ì©·ÒR0ŸcU•¶ÓÅM<‡O¥RR\nAÁ˜£X¸DbzÊf;z¡%+;ˆZL->…8qô¡ÜÉmÂ\nÖ¨XT‘·¤\ZÙ	[N-n8¢\nBPÛÄÔL‘}XŸp(KË´Ú¡>SkÊ‚]\nÀ’@\n3ÏùÖ—Û–À¼ð m&×Ìy‡-›Hp˜BS”¦ €z‰Î;ÒkÆoô«Ubë@•–ÊŠBÔ?ƒÉˆÍYlÖ„­RœI	P ƒµ	œ\"•\\²¶_zåV÷O¢¦Ô`’‚DíOòŽø&)šœ†þãšwÃsÒM¨^ê\n²h¾ÛvèuA\'häAž>ÑZYØ‡.˜ZÊ¶¨+î=©y»n½pÚ’¡\r¥ PïN¬ÞÚNÍÛbP OÌT¸(¸@ƒˆnª|û²¶Ô6€`~b:ŠŒÚy­o@!_íÁÏµD—ÒJ\0x\nÆ94ÆÚPg˜È>óJr¸ŠJ Ä[nm¶\r¯³·‘üDñ?5ö·idßðÔ›—¸KH2=·ƒõ=)&¹¥´Æ·t†[–\nÃ‰$€¨úMiejÒ\r•\rÇù$ö¦Æ>óÇÖ”p™%Š—~«‹Ç.	T\0è\0èoÞ®–€m@HÉˆ çÚ‚ÓìÚ$¤§©1Y~óß…Z4¿âÜi#øiêGut©{ŸÎm«Çí½Å¬8ò™¢í^§~í¿˜†éÚ’`õó\'4£VÖøÇÆ™bú–G’VâƒÏ\'®)¥ý¦dŸÇ>†”NÍÀ¸®¸O$š@oÔ5\'®Ô”´\\P;p{ž$÷¢T™vf¯Æš÷XÌÃ }{Ì°C®\\)W­Ü¥ÇââÓ•×üø«•‹)HŸO@{|Ðöm¬$?Å\0\'	HA€\0ïKj..xmUûøé7sqob0qéþ|P·K-Èmca8O;‡y¡®õf”¿*Ú\\	9T`ŸooÞ¡J”áÜ¥É @öª¢•LÌ\rt°n!(BÜ#kªð:Q	JÛÚV	À<‚~j6:gcŠcl¯NÕDÈ#â¥\0fÁ•µÈš¶„•%&A‚$jšá€¦‡BŠT ”(¤ÇÈÍy°!ßH!\' vö£=(G\\È­\nAÁânÝ­?lm%	uMæqïTsU>aE±ÏHÌWQ*ÉÛÐô¨~4Ñ­EëW6²ÓÎ«ø„«ÿ\0ÝÄÜuæ·¼/X¨<„^OqŸÛ·á<ßé,tóÃp;¾ÿ\0ŒªYØ8û›ÜùÁÅ:ÓôðÚÁäß¥jÀJ`&ÝÍ”–„†+m-Ø8žAW<Â\\y»]¡$?æiöœèq´‘üÜjª¼¨P?Ëúˆ¯Ôœe;\ZÎÓÃëM%ã†1‘f:ËêÒ‚FjÊ¢«[¹ëû$ŸëYMý©}¤ù‹ïêv÷í©!dÏ¼~µÊü]áG4íÎÚ ©©$£·¸«Î‰®¦òq,ÜI\nœ‚)óèCí„:&yœýk9KRpzC`Öw$ù¸0FG ÖŠ\0HÒ¼eà²Jî´àòH+Þ¹µÃ.2émä”,rÈ¦ÕƒˆíVDc£ø‚ÿ\0J1nòËS%Š¿xkÆJºq)º€£‚Oé\\ÎÚÙo(`Å?µ`[¶?<f:W5›e5\n¬9ë>Ð<DÒ˜	+é“Lmî‘pòŠV	\'+‡h×î4BB‰§5qÒµuÛº…)^ƒ\0ýùýj¡Ã)ˆ+ÃN„DŽõý&¶JÂt¨mn“tÀu³ÌLq=ëe¤‰1Ò±J¶%óˆZ(\n}çš™’$wÇ×ïA[ªÿ\0+{Ë¤Z·æ(úcœTü¡«´ÖC¯Mo¯+s@ƒÔÖ¢¶ŠüÀ$že\">ñAÿ\0Öm®ÁBã°“ÏJQypre\'\"3™êh©á\Z[Wr–àÇýÇŽê+ˆ–ý*ÒHl¸!´cÚ*&®mšQB|ˆWåòT>ÓK´víŸ…¼AŽ$ÆjÒÎ–ë¡+8Ó¡ƒ#Ø>k?[ávSY+¨b¾ÍŸ÷ŸÊkè|F»ØnÓŒû®?‘üÀ¿C®†Újåk<Úý©µ²Xß\0ìOiæ„¼¼ò÷1¦#Îq<¨ŸB¹þ”ºÎÍÆî’û—.Ü]•JH$$Óãéãì¬sž³ÓíÞ¹éûÿ\0¨êåƒ9úÒ‡ÍãFÙjIÿ\0hÈ?Jpù)làRÿ\0™a OÇµ,y¸ò\ZygcŠ	0H&z\n\Z\r§gPØŒˆ¿Ì½ò<ýL´´;èjßËœ$ÆãíØu>ÜÍ«êMÕò‘ÿ\0¥Ùå$$AÒ§½BÎ¨Ëé†ííOš´„È6¤G·AíRj¶­¹nAÒD¦H ã½r’28öý!Ã¡eÜ8#·lÄš§‰t[†e«éqõ†‚Ú”¤™\0nïÏ^•\Z­eâ4h¶éS…¶[ï¶J\nV¡bÌ„¤âM£è_ÿ\08EäÚX/ÎJ`ÂÜIAö¼}kß¹quã\rYÇ[;î*PIÊNé&=¾1Þµ6VŠ|¼çüø§D­XVrgœu?ÐŒu …°‹&ÐÃH@		™pEX,î]#ÏASå?Ä(H\0ž1óÍH–Ó<‰1Á™Àâ±÷’ÂJ—Á=\'ßûV[\\ý1˜…–›@R3|’IPÚ9\0dš£øŠÕ×ïP†Ô¥+Ò	’£“í×¥\\ZÂJ€*Qê£’éÖEï[­ÕåJ ñ¸ˆÈí“‰¤o,–¹VÏ´Uá;§î¬n\\p©K8¶	‚qÒ$ÇaúWIa´¼)a·’y\nÌoòj¹u¦\r\"è?m´ÙÜ,<µÆ=ŽcßîÁÄîRœÉI”}êú–g°7LýK0ãp0Xa\0F7ÜJÀÏôeÕ»H³ví¥­¤îPÈO8=¨Xº¿Õ^,¬2Ô€ eF~ôiÔ?\0§,îJÜmB‚còüöšk¸óÈúÇ°”°1Æ2ÄïBRA¸mVá=7wø)qÀ”%w.q8*œ…cƒûPeã…ûe)a×%Ò¨„™ŸHŒôãŠµià4‚8Y\'™îjÈ¤ñº¢[2¹{rlÞ¸CÍ<‹„ (²Ù.`½8\'ã4žîø<ë¦êÙ\rªQlÛ… º9‚I€©ŸÞ®Ú×’Ö’·’§Ð¤ÈIY>¨ žµÏŽ‚»‡Cmƒµß5Ò•Ã[dÈJyÄñLªÖ0}ÿ\0O‡Î\n´ç˜ãK»¹vÝ‡O–â¥X\0‘ß?óY{nåÃmÛÜ‹¶¤’è3ÒyëHïÕ{§ºl–°Ò@B”à¢dž’=ñLíJÕ½·×¸ÂJ—R:U\Z­‡x-DzÖ	jû@3l…\"`¨‰‚=€¦N]\'Ê†ZÚäa{6ÇÁ¢§­÷ÿ\0ÕË­ÜGå!!·e&?^EDJûeµ€`Ç¢q ¯Z:±ã˜àõtš0Û¯\\ ™ÂˆÌwÒÛrî§¡…Œ‚(v–’Rx#ƒE¤ÀƒÔDz6L)é+ºÛ›µG’a´!³=~µ–ö¬Þ¤5xÃn¤ˆ…€Hû~•±jÛzƒ…;‘½!`‚NOOÒˆÓÌ,[Þ˜‰IÏÚš\'‚§™¡)}¦xy¦@SJqL%µ¨‡¿9ûL¶CH;RtÞ¦YeL8PJ\nHQ$€y¨[¼bÆÙ&åðVS)	•|>ô±{-ôžLFËìµvžL­x—MÛ®ºú%7	K«)LÂ¢=¦\'ëEéI‚	0?ZŸNu77Ü4ß’—VTS¸“?4ÖîÁw\r)v¹lÿ\0 7·k™È>¯ŒQšÓ´VÇ‡Ô5h´±Ç^ð–šJPL@$àîj\"ó/.H\'¢\"]– ú’MÙ¸Ù$nÆ?øñL¬BÒ=\\ÇéK5aFs˜»RgvL5V,82€’8)ÄTnX­„oIÞ„ò 2Ÿ‘E4¡‡J6ÝD\rÂ#òæ ÐÐœáºEZ×NñRÀéÔÑ¶¹ s5Ú|«•¡´z) n+Ô/rHÈžsÍNÇçþä·­r!%*¸QiJTc¾{T®¼–\0îs IýèY[¨	KÎ €“ê(G|û4:‰lr´æ=ÈŠmŠ×$û.Á@Üç\0CÒ—dº™>˜ÄÏ%(mŸ9juD($D<‘ûP÷úêÒ\nm‘ÿ\02óíÅ+i*yâó¤­jä«ž2kÃü>Ôqm£n??õûÏ/âþ1KÖh î\'©ì?¹»R‘ž¼Ô¤\'ŽÃ½n†y0`ÿ\0JÛ­ª)„\0>kl!o”ò€`sa$ÎaÄûUsUº	c0 pHãÚ™®å×SÓ¿Z\ZÇMóîwP™?4Ú¨Q\' àË•%*•äw\"²¬ë·CQ\0Àö¬¡—\0Ât‘\\øOÕÊ\\	-?Ô¢?58ðÅÛ-€ÓËq)È\n‚~†­W~-«s’8¡ZzòÃÒâJ:žÕ*Ä‘€Øé)[»nµ²ú!Cx?Sñ7„­u \\JBN°ÇZëš’­u&ahÚ¾AŒsT­QcOQó\n\'‰ú\Zé9Ym…Žäë9úSºjŠŽ±¾1ZN@È˜5Ôí-mµ“´AäG šPðHKÛ­–R•rœô£Üre8ûã™G´l\'\n\"y“ý)Ã/˜ØxÚ(›ŸÜÚ¨ãx‰ã4¹À[^Õ\"gÚ™®°xƒ8c/>Õ’Ê…»Šx\'¨«‘@XÜŸRO­qí>áiX2B¹Ÿë]BÖ¦‚VGs4¶§OÇg)Ûé1Êá$f\r!ñEéq¢ÃGÔLjup‹‡Ù¶aÕ¥C\n€ø&«ÇÃºË©Ø¶@3mÊ@¤ÄÖzíS‡àC6›Q`ÅhN~¬çšÓJtŒÈÚ)ö§j\ZüâP òÈB`¨òrÅl¯´óê{^ñ\"Pƒ2Õ¢I v\n?Ñ5b}v©·²´µkW½bÕ´¡*[do	hRŒHÀ-Gˆ&™Áê3SAÿ\0ŽÛcgQ•›Kk¸=Æîo$áI)hÎJQýNMÅûúÓå×I³eNº±°¸g	HˆÛ Í+K·o¹µ7däO<œ\n²èÍ\\Ó–—RÐ)\\¨4dÏuöþÕåmÔÝig³“íÛòöØWFŸIXJ—]~r7„Ê†Æ\'üÏ&¢m2êA^É1¸˜LVÑQÚ¨\0PE«væáÄ B¹>ÀsYd9å‡_õûFâpÅH€9šNâÖÍÃo€\n% ‰‘§²ºvæé‹}‘nU»ùÔ\0&\0éõÏµrÊ\\;•ž tªòÆ[¼ä>YÚÐ]béÛ„‰õ7ÿ\0iC\nŸ˜ªîªþ«hÚÚ´}Ô±\0@^Ìô$cÚ¸âì^¥\0Ê¤ñ#°4©ªéªm~·s’Øhîˆÿ\0:Ó4d7¤dG¨?¸~sÏ‡Wá—óÎ®ãñ®«{ª+Â\0#Úi2Ú¸¶ñ{,´ÓŽ ù•7´“ßˆÔ÷Á/›«Àµ€ð-4 BÈPÊçˆ${\Zk|Å»¶O¦‚šÚIIT:„Žfe¥.lŒç·áõÄ«[å]b‘×ùš²î ë…´µolÒPI!&¤çí[¥”0!\0©Cù•“Jü½í\"êñ÷n¥Ý© ›•‡JRAœ„ñNžLçùG\0Pµ™V	íõø|¢ïé°§·´_v£´ÆzÏ\"—øuÄ¹­ºB€nwN$	£u(ò\n–=#„Œ’x(/°´k ©²\\y\nkjN	tö©Ó(aŽý¡J-š[o‚ÛÜW¼¤¨JHùª§™pêZ{\nÿ\0ÐÚy{\\#ÔJÑñ=saµy/;}pÓm7(­èIDŽýHÈçë\\ÕËëö5•^(ïvéEÛ†âéÆ#¤t=(µÒ\\²àtÀü?¸¶$|?Üè–J)u%µD&µ×ìRò|Ò¢^l …\rßÌ\"µ!±ñ’Ô”»æÚ¨`ùƒÒ=·\ntÍãz“E‹Uï”úA	ß¯R¦·¯9øó,õ°`ó[h(ÜâÔF@L\0ŸqL‹e¦\nÛ$¤G§*úžß5%»4Jw‰”¬˜ýª;å†X¸Z¡6bIJA;v ©WäŸÂŸsq\0ÕuÚ\r³æm[¾¢vƒ\0óæ”Y\"ææåå*è\0¥«\r•LÀûPV7×·ˆyµ¸¥Á*X\0qÀªÄÒ.-NëwDe0@û\Zg¥Ø90íZ§N²;ÝíÛf’ÅË*Jqn0w)0qÏ¿3UÍcÃú³ÿ\0ˆbÙ›‹güåˆÁ\\þüM^¹\\¼	B8\"´¾e•Û¹ä¶V\0*J\\sòéþÜQ¨½F}Ço¯¯hïStúý\"­H¶³h—®º¸Ý¹ÂPþ\"_Ú›)–\nÒ¨òA…8ÇíK‘r€ÀR—	ï?¥{«%T¥êj‹sÙÁý!EÎs$|3o«4Ò]’îåm1&§z<·lNAšç÷7Nj‡Îô]¤‰OÔmö«…¥Ë·©\r/kÑ\nJcö57ÒW4Ô•P	‘_).êjcp°€‚;ò¯ë}£;?–t#µ\0Õ‘YÞ´úUüÝëÐÕå¶¤Ú™¸Y´|P¥HJ€ŒvŸj` ö„`\nì´gr²Í¹Cm%ksÒL@ê£ñ@ê—Ú*ÒÚý\nBJIEÀNä7&¨F:fŒ}mÙúî”Tá¨NV£íŸÔâ‘–.uãwxØ@§0Úz$™$ÔR£«tþ`¨@Næ<ßáiöì>ö‹eéêÒÆ\r\ZT-“æ<\nP$§Õ\0Rûk’ð„×$ýh‹–ö®ÖùII	 `ûÐÜ££?_‡óhÜØ?_8-–Õ­E9AYç´˜4Ä¶	  ƒði^˜Ém)É	UÇáöÔyô˜öÿ\0\"¢ÃêÀ“\rÄ„Øñ0q¦RËHÆÉ?\\Û­ÍMÇÚ\nm¥JI0¥wŽ“Ú³¶%Û“S±G\'™ÏPÚ	0–ÙCŽÈ(œ‚2R>jrÊÙ0¨3Gw¢-˜€ûGíRïÐ¡´u\n\"iª¨`¤·ékNp9‘2”þn	ê( p¨8‰@î%)cÕ‘ÍL1íOV6/H92©â\r þ*ÛŸâ7ÛÜQKšoh	è>ø«¦ ¥·l©FðAONµQu^ZHžHÆkÑøu¯}x~ÓÆxÎ–ºn\r_ºûAßÒPœ1Ï4»>`‘y¯o2¸žIúý+-™2#ˆ’yZ{€âb1ÉÄ5¤¤ ú}]~i‹[-m‡ g1Í\nÛ!Uƒ“€:ÐúÍÁVžRŸx«w6!Tm‘=©¥n”È¬¥6Ínai?²‰´Jn\'™Ü¬u{Kó\0€®ÄT÷vÏ¦ Iû\ZæzMØV×m×èŒŽjÜÓ÷!¯5!{@äqD©ÖÑê^aÔfmªh¬4‚°°ƒÈ)ªˆ4ëk”­\nÏòàÿ\0Jk­ëW7.)¤8RHR“ƒñ5X½|6eq“œ÷ª2*œ‰&À‡\"má\r17\nB£qŒÌÕo~×vSù¢“ø-€ã…K;Gò‚jå}`Yw£œr*·­¬ÐBïk}m*Wv©â¢y‰ªŽ»¤°¹R\0Ü3ññWÝSjYP&@ª}Ã›·%Yqïþ\n:Üt1k†:JNÑnöÕ==èË-M	¹HB‚Ê<Ô×º+··2\'n09ïÍcáfšX[³#©íØÕžò[™uRë7â=IO…¥L…¨A!±$sœÕ®ÉJU°vù6ËZ€P\"*‘ul‹E#Ê ©&vÌý©¶œå¶¢ÅÊŒ\'JˆŠVý^ŸãÂŸ|ÔÑÑxÚ{3köÀýŒ´=«i–`ù÷LÛÄ‰Y	ÏÞ„kÄzEÈÿ\0ÓêVKœyÉìipð®˜HP“×š°Y\n ,ã$¥ƒ¸6sòÎf‰ÿ\0È/\rÅC?õíßA•¤ðq÷—½¥!w}½õý³©ü».Vƒì™ÿ\0ŠÝË{]9’S°)#“œE¤Y›‹TÞÜ€R£,´¡ˆŸÎG¿AÄg¨¬í_„×¦­®kOÀGtž7}ö\nÖ±ÏÇŒ~PbÞ´UµzÂü©É	õŸŠ‘,˜ )D\'j$™íîhòŒm™’zV]\0R”$BRœ3ž§æ¼±µ¬¹Î:OF,ç\0EÍÜGBÚHRÄˆQžžÔéI&dz‡ d}\rUõ‚…pby?J7N¸½´kÉq)XHÒŽYŠ¿aÒ‡e{”an§ 2ža÷m¥H&w¥	Ò˜uEë†Â™m_ÃJ²®çØ~ôeåíÁlù-6•œ	ÉŸÚy²Íª[V„„’`“ŒŸ½B–­s™@ïPž±bÛ(°KÈOžñum	B‘Áï™jUi®Ù[ßþóRq÷.R®l² úTH\'\0ƒNô§Rû¬¥ õ‚¼	Š¯ëZ®?¨¼PÅºÝ)$©Aiú9§++c”³ÛŒ|Ñÿ\0Põ,Égáü}~qÎ‹££Kvåá¼©óÿ\0o!	É;‡Ià\Zh§%<î‚@~¦«Oxh/N¹cñ6«-´òš*PATf8ÎdQéÔõ6€ë6ªq¹Eø¹1@LqïV¶®Yllî×ñéæêÛ½ûBÝ¶ÜéZÀ”‚A<6:’­Pu­eïú™U…Ái›W%§ZWç#ùç¨Î:Fiæ·w©ê.l*[%òXHJTâ$OI9ªýºƒ›Sƒ<Œž`šcIJ!ääývih8ËþRÝþ˜¾»ïú¦žù.7á´%J!dª&faõ£ÓnÖãƒr‚6Ó5UðŠÝ²ñ\r‚™;Jœ‘0•`ƒú}bºV¦‰¼}d$I˜HÅwˆ(uê??úýbš”òï taŸâT®t¶Ã.žRssSxVöÎÏNfÐ/Ê|‚¥¥r\nŽ$ƒÇJvã#ÉÈGÌÒw4¤lDÏ§)·z”s*0Tƒ,í¼%\"\'§1ó[­*KHSÅ(mÙK ÕûM-³	RÐJ‚ABˆö¡,Ù¼ÓÞYeÅ„“¸¡ÉZOÜóñÉ¦¨‚Äÿ\0b€Üƒ‰w³N–ssMíîTÚ I8ÍS¬uµ¡Ev¥*BÚÈ#™ƒŸÞš[kv¤m½i$’’•J#A\r—TÛÓ¨öÿ\0R—R[¨›ê*·!\nw|­!¤p\'j‰?°“jøˆˆù©¨±r Õ»áÍŠ2<û{Tì-!BHÈíTsÎJË„„¬ëúc×O¢êØyiB@-\'ŒúxíïA½å?ktQùIÀU_5²¢i;A™)ïóUÝOMBÉy”BÎH\'Þœóv7–N@èD%‡\0%wVÓSq`ÕË\0ÙÁØr¡ÔßïDøfùû+Äµ¨4ð·}°½†fA&0\'³DY[%Â\"0B¹ù«`¨%¸•s÷¦ªo1…\'¼bçUB­ÌÄ´9À1Ï2i\'Œ•uo¥Û®Á×Zp>¯,Á))<ö«\nSå’ƒÓ Í)Öo´ïáXÝÞ2‡¤©*3å”Gùg~\'4JévÒ2W9ü )cæŒþ²‹`ÕÊn”ãoº‡ÖeJRŽå|“ÏÖ®ºeÅöÈ¹\r¨÷(‰úƒý*vôÖÐ!M‚\"d\0qÞŽe‚€@õüª¢j5\"ÞÑ½N©,Äñ»‚¦Ò=Ä‘Z-«¥/z6A––\0àˆýE”\'¤¤öäVéH\"éô¤ƒíé3Ë€rŽÝ²ÐœÄŸ½kstÕ¶Ép%ã”ŒÁ3Ôÿ\0“Y{hÝÂœ<‘’1)í[2Ê‚Û©ÜƒÐbzïI92¼Q‚Û[\rßÁY\0’v…JFsN-\\A>3÷¥„»°€@È DŽ”Sl;·s»–÷™OÓ­;§m¶dò	×z‡;VßÍÿ\0oI¥·÷–ìK!²ê%*ƒØûÒ÷›¸X+iõ¨õmÅ“ý¿j‰+¤¸Š\nN>´åú³baóþ R&ozÂQ;ÜbL?­H5\'ÊaÅ{\0(­Œ„Á©\0ÀQÇ°²Ãéãá.ÈL)7¥kŠl¤r#õ¥w¶Í.åJaA@æ Ñ¥ØU#‘ÿ\0ŠáÏ-%Dœô0LW£ð:ßÌfn˜úúÌóÞ<È)ÆsÞÚ‚ð	ûžh†\r6ÇíêenoWN:â´¸p&g`ŽEm°ÜÞ™ãBó™¸R“?NüR«õyÐåëïÞˆ|­Ó\0½q÷¬m‚2¯®3EÜ•ð92û¤\rÒÚR d{ÖT«, €¤Iîk*<×‘±Gyç…YvÙn´}II\"zs]=­jÕ­iPÀgˆ®k£Ý7fÙEÂafsõ£/]¶TËœŒë4m5»sÞ][/¿º	R‰ÿ\0¸²IüñA3n·ÜZ§<þõ\0XS¤¨îÏ#±4m›ÁN„&p:tÍ_90?xó\Z¥åY )’Aç½ÇŠCqp	d3Þ—;õý(+¢6Ìó‰ïŠ!b¦Â!·ÚÒ.\n’d3À4ªà‚É?çÌªn“PÝ\\–F¹¤7Á³ïë\r¶¹ò–zp\'Ö‡Ö5W’‚Y\"‚jí/ žsý+iON\'§J„`§$­Œƒ¢»}Mçß>iôÎ>üS<½û¢’9ƒö .¬ËK/2 u#¥nÓÁÉ9ÝÀ=xéEµ†ßL­§w\"8µÔ.Ê‚CËÇÖ1¬>É‚­ØÈë5\\±I2FGaF–ŸRÓ¾³ï5EcÐÊaÈ1£—nÞ;ÿ\0¨qiB”\r‰19ß°ï]Q³, ye‘´\0Òˆ%8?®Y¥Ù\\Þ/{	ØÐTyÊ™žäŸŠèZ(Cí´ýã·d¾°}€ÿ\0ÉïY-ug†½§¦ð\n­ìe8=ç·lÉ”‰$\r\nñqrV}G“?Ò\\D¨„ÁR€ûf”…6òÞK.¡Å3a&BI’ýþ+ÆÝ§toH8žº«Aë¶e$Ý8t˜jÔaD[Ûƒj…ŽU*\'¹“ýª†€qguOÐT¶Wlí¸ó{·¶˜9æ`õ¡XÛ”Ú÷cp‚Ý£ÒD\0ž¢Œ°[NZ4ÛJ$´€’•eSßšËôKg äŸjU´r€‚Dðhc\02Ã\0¤âi¬Z4„)òáh·ê”e\\Ž)\'†5§®µBÏR}{nØ-Û¡rVVŸPÀÀÎ3Ó­;ÐSÿ\0¥vÑÌºÒÊó’R£3ô4®ïN~ÇW¶Ô¬Z[oÛ0U‚}	§tÖ-d¡<ö1ªö•z_“Øþ£óÿ\0§¶«µ¸ÕÂËÊe°€ZJ‰I2sÖ¤géÎ*Ä›ëu/Á\'r.JVZóR…¨)V`‘$?Z©¾nm¼BÞ­hËÍ„¬©Ä(m\nüÍâdñÍYÖ“~Í®«dÓÖ\\\nSk xRÓèi»-¯z=Šïóøþ’uIºÏ1Þ‘ÇC\n]²<ˆÂ‘<{Õ^ëKÜáX‚`LO5v¹\r¸Tãe>R–R1·ØÒm1fñ§Ú\r’õ²ËnˆŽ†ÔR+½…çåñé„žöU-)÷„‚cgç¥Zì|FÍËI¶Õ––n\nÐÚ$8£\0nùSÅlõswð–	ŽRr>ÕZÖZ56·$;nàuD§ò(~QôíMÓw™èn‡¬sê½-Ôwö—å¡\0y¢”ä‚¬ö¡¶FGsBXjÈ[©kU†Ô+[á2L˜)Ò>)•£Ö×–-ÜY-[¨Â\\IëØŽAA¥.£<Ö0>Gë©ë3X=\\0þ¿8²íÍ-$Â ¨Œ÷¯CwL¥ä€I¡Ô‚\r~\n\np íöšY`óVº›–î”]$-\n$Àq8Ûâ3ÜPÅlr£¬2å“p’¿b‚R œ§ï¦ÿ\0O\r¾—Ò=+!*ý\rZü¿QIò(gØmm‘ÒDþõZîe3’ÞeIvR\n™Iô‘9ˆïBÚêú–yøWÔn˜[óŒ«oÿ\0/ïV¤°?. tö4¯¦ËH@	¸oÔÒˆÏ¸úÓiz“¶ÁÁ+©ô¸È„1â4]Û”Û8Ó7„€”\\¬¶Ÿ Ú‰·ÔV‹tfÎâÇ0_	óYÝI˜žæªŸ€+\0) ƒÈÆ\rKnæ¡§-\'O¹u…B`¥B3#¨¢-5ÀÈúúþD“¥RO¯Çýn]ª¦ßl%Ä’Hq*Ž¿èkdëvVŽ®Ýë†Rë`nÞJf;üŽ´ŠÂþá/ùÎZ!.¬…8»e) ¾ä£)ý©µå²u.ƒÍåöËp¡ˆ0\rT2Rs¯¯qz¶¶ôúúí-Ö^sÌiä©3!IRdÿ\0ÅS|S¥#þ¢ÍÕ­ÃK}×}“”b$Ó¡š;FÑZ´	R0±:Lu«\0eL8‘ž£ƒúPþÐ+°”<E#LùC‘Ø-æ\ZB7H-¸&N:óÓâ™\"á¥@Z¼¥BŒðhKï&Á	qAÕ²HIR»aé#Ÿ¨ëXËÖï–˜\0)\nIžÙ :’wàYëÄqøgÔÁ`ägúW¢ÕÐí¨‚\"‘Ú[-!ÐË–‡ ¡.nJýñDÞ[—J<Å8¦È)PRŒw©q§èÏÌP²7}~p·”TÔ+yd@+{tÆž;Ò…)ý( 8ul³rv¬üªèLpq\"ŒoWoËôZ>¥vQ>³Aj™¾çI&¶Ûéæüƒ\n ‘?nh‹t¤z‚áCŽ”ªÙõ)Õ©ËbTHÚ@ vÍ2üS%;[iD‘¨ƒíLÕXS–#œŠÀmÄ•ap2yZ¸Ä$×Œcé^4„A\0ä{Q)VÁµY½ji­jÛzðb×V®»‘>¤·‚‘»ã${PÅRð}\'0)æ±gç1½¿Î‚q=óUÒño“ž?µz%Õj©îý\'“ÖÕn•ö«§§?¤8I$™ë4¾éDÈ’9?½óŽ:Pn§r·\'ëZVð6¨™lu€Ü¼[P=€hB•ŸRÏÇ¿µ4ü>JŽT&Oö¯ ò\0 ~Æ¨´3u’B§ÆÒ’9N:g3S(¡] }ët%¦Uµc§Ò‡¼q_Âü§ÇµA¤ æPØqÌñÄ!J)­e/ráaCšÊ¦ñæ|!\Zïá<‡_óPŽd$È\"ªö¹bÖRdŒÌŠ«øÅçQ¬\\R\nöì\0÷Š²hl©Ût-`g9£­@â]—Ò¼)+-·¸àækdÜ*ÆÝo¨ÜÇôëËAXˆ!\'äq‘Ak×\r3§¨,„¬ÀQ3Ö®zó+Ze 7>&u!eX&y<Rƒâ÷Ã†D£¦y÷ª¦©©‡Þ>Q„NU}*-ï.`±nêÁêh¹9ä=S¢[ø¡—Zþ\" 2¬U{Xñ#—nmxà«“Ô„é\Zšˆ¶u óˆ¦únœ«D½n°\0‘\"LýèyVš—˜ÇFqä¤NÓÎLÏÍXò’a_Ò«W\Z¢›• €EowtëÀ´<œPì¬8ƒ¶¥q/)q+FÕÚ£nÊÜŽ™íB°¥ù!KäŒ™¦×A)õ@ó‘Ê­3ñ	µPMÃhÄ™à|ÕÝ›e4ß›jnž€¤±Â\0è\\WëGj7¥i\0ä™ý=«¡é—Nß[Ðg*(®¤ÿ\0˜\rHpž†Æz™«áO˜EªXö¼ñw7	(d4Ú®Jv€Ùô§Ú#	ý)MÉ/Ý­H¹»\n	[ªISMÈù•ì wŠ“V»BC­Û,¶À0ûèüÎÿ\0ìIýÍ\'ÓõÂ<6¶„2%\rçhæg©ïXº\n:›.vûžÿ\0‡×ÇÚzíO‹×¡P,Æóÿ\0ÛæbßÞÞhŠEµªJ_y\'Ì½rêûSˆOÓõ§?é>³§Ûéni·71©]ß•´ÐJ–·¥…ûU’xCêæÛ_)Cé\n	;‡ Ž†¬~ð­¾‹l/íÂÿ\0\Zø*V|¦ûþQ$õ;Ö¶®6“Dë·çî~¿/i¥Öê5Ú°Û²?@>RÃxÀFNHŒŠ[lÃ†ù ”–T˜ù£ž»Z­zÇT}ª[Öš}Õ:\nåà€TfF Wƒm¥—ÒzôÞñ	}Å©²i*#¨$ô [¾.\"é€‚‘ºY§>I\\ŸÍ;{P\Zƒh·L¾óÂ:ÇŠªÖÀW‰ZÝ¤ˆÖÖêZ_Cž°B’ “#ßŠ€ëªô6»0´.’’PIžO·ëNßi)\0GÅ*q ‹¦Ÿ)¶°£<sRŒ¤á†c2¸õûO5•4Òƒ6m©i&µH<r\0MÕ¯53¨þ)/Û<‘èÚ[€ÁúÌ×E}€J€ë‘JnôÔ:¯P“<ñš>ŸR+ê!´—ÖŸxfI¢]½¨i¬Ý…ùoXy³*B¶œóÁ33ïPÜ¥.ê–É¾Ò™òÔK_ˆùLGß´â§Ò[nÅ…R‚CËþ8Ü¸ãëL.­Òû^[‚AÏÖªú‚¶ìsfT°à`ŸCÛã18Ôù7O%D\0NòH‰Ç·&‚kMi‚m€¢zäŸ“SjOØi®<¢›–Xl¬œoôÿ\0.î³ÆxÅ©\\¯NnãL\r\'Ím%.¼§)Ü;ÈÈ«à¸yÛñþ¿Ü­BÃ÷z3ÛñŠÚòßñN·ld¥€Â`‚\0ôæ?ÿ\0¡SørØÛX¾ÊÄîzëU\r:æãK¹gSQ.­ÇWçï$—RU÷ÄƒÐŠèV©fá†õ\ræÒí!~±ëIÈÈïÐŠ>®’€”û¼~œGõ@Òž‡üGîcÈ þ´›\\h8Å¸8Üèluù`Ú•ì;síÞøÐ®ßNK	x·›Zƒ´%A[ˆúJiÔ—8;“`QÖIámAÆí×ozVò^ÐNVF>Ù§{ŠÂ]\no6;Ò;uµx”êV‰!]Â\"“Ü×ÜSkfÔa\nüÆ6™€}çÞ­~w?ïë¤­áwÿ\0ÌöKksË\"HÝŽ«E¤)29»þ–Ô¢!#qžõ\ZNáq@9#‹Ó0-¿9$ûŠ„ö*ƒœV9jh u#zÖíÅi÷Lƒ´”îA’\n2ò\rK¤^›ët¢é»œÌK¸äj&ÝÀô„%€Ü;MÛµ€$ŒÑ!™\\„’I1Ò´‚ÈI)*A‚2En´ë.írÑÐà	’¤õOÅTòÝ ËOX·R[\nR\n~GéR†×ù‚3´>•ËÜÓn´íJí«îB[qH+T”ÉÛN´«WŒóò$Y\"\'æšm%iÉlý~1·Ñq»)oº,wç˜²R@i¨Þ£Žøó@é¯¸óIKì‰8)Pö)ïDÙîAB\\Q%#ÒµdÇj[v_±ÔÂ“r]Nï)Ì©#88ûi~*ZµÎS¼t\n„$6cÜãâ+vX…D‰’&zô¨Õ-²žu~Pm ¬IO¾yè)˜I\n8ƒbh>[œEÝŠðF\'[µslåµÀ*aÁ\nî“Ü{ŽETí‹¶÷/Z\\ÿ\0ßae&pH˜Ü=5oÚA€@WT÷÷¢í-ÝÝ,«}*ŒíL¡!6´¶™Ê’IŒ¨íI:õ¢›R	è¬~µ,©µ/óŽÄw¢<®â`ôÜŽd¹Â ƒ€~kp{™3C6Ø2”˜ŒóÔÅe¢ìd²S	IÁéÚ«ºý°iÄ¾„ÂTv¨‡½X©Ö•k·--£n Rä‚Pî\rnxy=vsïò37Ä‘NÁÿ\0œYip+PÜíE¥”‘é §Ú‘»lpPHHçúQ¶+A	™èNx¯b¤gxÞqˆs­‘é¡Ò•©^¨‘Ö·zåj%$GÏ	| äÉÌŠï´\"ó VLQ¨‚«‚6“ž`Á¢ÒwœLóM\rÚ\n£Ë“ÜEx\\iÙ\nIO@H·RN	•:|ó˜½µ\'hÈLsÎ}ë(‡m¶(ƒÐÖS!A”Øã‰Êõ+%]ø¹ô‘!+Úà=jãon†KjX\0\0%\'ù¤ï—µK‹–Qæ,¨Çp(‹gNý÷+Q˜*ãëJNÔ–vÏK­j–úyòíÒ]tâ$ûçéUÃ¢ê~!\\>ÃìFI=Éâ¬=fn–·Ñ¼“„¤\0Ö¬Ö:•º“ü „\'ªµ¥D¸}½%ÏÁìX;/·*$‰35`i›fvìf@Ì“\0ý*Í|ÛN0¥% ’0F3óU¢L™‘’\'ôªy¬Ý`žÇn±Ó?ƒzØ‚ÒìG–[i\"ýâ\n=\0‘ŽHéP[(¼úP™•`uëW­.Ñ,´@N#1Ò©e…\"Jz¹0oiÉl%Vè\'¯SÚˆÓ–=\r!Ø~”ù¤ \0ût©Ô”DƒƒÖ‚š›äÃ`1(ºŸ„e%vð´‰Àj§Þ²¶µÄ”(œWj@ÛÈãÞ‘ëú\Z“*RRðžÔv¹nõzsÊÎker„íÞs1ƒ÷Í\\˜ñ+K³òP%±€”¨˜OP}úÕR°{O¹So°‰ˆ¡Ò¢‚Gz*¾Á‘;O©»JI¨à™a¿¾üc‰ˆ\r§\0ö¡Ç«ƒ2yM.C“%J˜œôŸj.ÉJ¹y-[¥nº¬„6’IÈ­D)·ƒ†±½É…Ù¶ë—\r´ÊVã®(¡«¼WmXG©-ð06žÒ¹ö•§)*[ËÝtêaiGå	™Ú;ñ“ö¢ØÖ5Fòtí=…!J*RÞ%#“çµ×}½öT=ŸQà~½§«ðêÃ«ÍÇÖØôŽOÃ¤´?nz	ÄÀÄR\r^ñ»Wšµe³q|ð”2ŽBÜ£Ð|óS¿}vmJ®¯\ZH\"TîÍ­$ÿ\0íA2ýU¯5öìÛ}­©yÂTíÛò¥º¨É=ýº‚+ÎWáÂûJéÁl~óú?	è,×W¤M÷¶>åÍ—oÛ·B_»yN²® Po´Fâd“É<šsµ·šKíá)!i>Ä?zæ†Â@ø¬Ë™ÕÊ9é˜å6¯Q%´¸EÃhHXóÂñÆ@æ±ëRNÿ\0Oj–TØÞ’B‰$àŠÇ«HJÖµ“¸˜ œdìÃzOVn‡˜–0¤™X8©[p\n%GØóPY6Cäç) Q›\0@þ•V p%_j·-Í±~ãÌpNÞDç‘R‡ß³µ}Å+Í˜I™âg­1RAé$óÒ•ëÊ Ê\0*H+TwŒcõ¢£nÂžÊþaGV´åÖ¡¤!O+cnKMH\n@\'¿ÃÃ—,_i\rÛÆ°Î4@Kr\nq×“ÔSÜÛèöˆ (“×¨´}M»Æ¾¤žŒcÚœ­”«TÃŸÂ0\0¶­‹Á‘\'\ZR/4ÅÛ-N°òHä$™GJ®5¦ßèwæãNZÐ²`’™Cƒ²“Ô~Ç­_Úò¯-—¹+Œ„Dð{CB]\\4Å«ï][ºÂ[P	VàH2QQ]ì8ç¨‘V­†TŒƒÚi¢]_^i\r­ÐÑp-I}Ò˜Tô€0?ÎÕãÚKd®RTTI•dÏ½VukRÑõ¥;kjÒX-^’—á*$œ`ô«^•­Zj–¶¯´cÎâVw–RUýcŠ›©p¢äèIWm_äAé>Ð$´4v.¯@þMAPÒï<çÞ¦µS\Z•›iOÜ\"ÒåÀ€%?ÌSþÓ81×ïJ¼ilþ¢âµS†Ì&‘€é™§Ú1K¼6»­(w\Z[ÖJQRš(1ùfÁÁö«\nÃU¿>¯ŸoÚPl¯ÍÏ«ÛáýÇ—w7`?æ\\i`opÁ.ˆÎð2g0¡E²ûmÚÛÜ—’ô¥>ZJÈT¡Óµmb¶µMÞ™N‰KCÐ¤æŽÇ™IëÅÛí!HJ”S¤©(tmR»ÀþÔã‚9vn1¯ˆì}ä79BQn•A)º¬\r½@úVÍ&Ùçßaµ…8Êö©#&¸ÍzíåºU»Î$<ÓA{R	\nHÜãâi-«­êMºâˆví*[ŠN6+v>&=ÅsVNCq‰Õ©e<ãù–4¥Ð§Ì\0çÔŽ8ìJð%D‚€¤\0`¥PHýhýë-)§ö¨Å99ä‘ÏÖ¡»râéI_’**hN:™¡²ÿ\0ÇœªÔÄõ…ÝZ!Ë¥+l*Ÿx­Y´YµS\"zšÑÅ¨%«‚±ÿ\0ÜP>¬q4b’’Ø>¤»>¡Ò*=\ZÆOI‘¶‘€¡‰È\'íŠKudê/\\q×ú‰qÉˆÀÿ\01OÀ2v¦HçnDP÷ -h2c>âx¨BTâV«\n¶DXÛp f2ÇëL-Þ}¶ÂRá)\0@ –Ö¤8$…¤`‰íS¶£iIŒÕÎAÀ„±ƒakªAªPpAHÎg¥DÊFî7Ç\\Tˆá*l T‰3ÞjvÓ‰ŽùëGE,FãüÅ³·¤ŽæÜ¾ÉCO)‡PârR}ûŽâ‚nòí³åÝ4ÚÔ=*Û Í8O<L¡¯Ð%ÁÎÒµ\ZÑ¹r½¥Q†pÂxÍÀrO”¤« $s^²ñxú½+G)ê+Ût€€:´&¶°ÃIpÊIô…§”˜~±¯¦¤ÚÊ ã>Â\nû¥gö‘\\Þ¾ÃëmEµuÚ#¤æƒqôÜ*^ž„Òãv·.,¨ñ’IÓR6éP™Çé^ÞŠ îä	áõ\ZÇ¹ˆvöã	A‰éP³l¦+QÀÀþõ*fÎõ<nL}Äãâ™6t€ââ÷gh?nÔ2ÑwîsEÜ$	ôâ†\0HêOÚ²nW\'ÔdÈÌ¥Rs\'?Ò§LDÇOJÀ&`Àý+PB£\'1<PêÒÙiôŽ\'p½fÊQTmíYU;½JéoÐ!#ÖV¢é‚ŒdÊ}§Ø@/mËR’=i$™ï@\\Z\\”‚Û~Œã1õ«]Û)Ô4ÿ\0Å´%iõ(H¡lïÚ}¿.BVœŒ{Ðü—¥±@D§éÃ‚xãŠžÝòÚL…{@«Õ»é3‘€1Hn-CìY98<\Z:ú¥Ï1Î«-Ò2834=ÃÈ¨)&ö PZD:ÎzqLí’ÃÉÜ(zqÉ4E«<‰FmE7ÁJDÇ™Èâ¬ËÔJ–R•BSg3ÅWmÒ¦ÝPÙÚ^(€øäœüRÚ„Æ$ÀâXSx°ê19öéÅIHHÞdb	3ïU´<LAõíF4°¤&NyzPaåºÕàð\nIùŠ$ˆViô›LPCb)è)¢ÖTSÈ ü¡„Yâ\r­JØ˜Ó”“Òª?ý2—\'j`ðDšèŒ.e& ñÚ i-³tP VqóOéÙXaåZ ç&s—ü.ï–¯,ž$O%õÕîƒ¢Óü9f¶Ö¬½{q´¸âº£ÂLÜ×KvÝ\nõm î,PêJT€Fx[´uØ6·HJôÄµ\'soôõZµî¬ówM¼¶ÛHS×JI8I=TzWíbý:Í×Þ¨üÓ$ü1ýllfÏðö‹ ’¢QÉ&&OÒ>*½¬éÝÛ~ÒTÖ$g4•º/5°ÿ\0ttùŽ×¯\ZZóXÍ‡©ë”­\\x¡:½éB7©\0ãwßüâ‰&\0Ì\00\"ˆkÃíZe¶€Pî:{šÕöJ¿,Ç&ª…©v§c_sZåØ’Os,ñ\"Ø,Zj2Íƒ-…ùfAƒ´(Éý§¥YnõVy‹[Vž¹»|!²<´¤wYä~õGÐleÅÞ]&-­È	B°sŸÉ§þhÞ*æùn§ÔR‡@3,¨B~MyÓP×–­yQê=²z™ý§±ð;,ò¼ð~èïÇSò]c‹+¶”¢Ã¯%O™q\"#p“!#°÷éGù’©1¸©F\0ZÔÖå«Kü0@Ôµ‹kdÿ\0øÑÕð¨üQÚ¥¶a²¥´Ãa¦÷HH?½y§­pŽ³ÑçÒd÷N v…~q\"Hê=«aªëI}¯IV¡œÇ1Ú¦S@0Ú{$(ûžM@†G˜¬“÷ãö àgl¸ØWÕ&zè¤Ûdw+§À¥w\08»$É$õ>ôyISiþu”ˆê?½¦ÁV~ÕŠì N‘L\\idÂ1)Ä°¨ÐÊ.-‚V$B»û^2Kµœ‚’	0gAÞ»pÚ¦Ø†œ ‚@GÄT1ÞÄô&\r’UL!«UZ¸•²¢\0™A\'j»âi7\\[š:Zpn>…–D‰JT	ŸÐM0·ÔžK	môVƒ\nqJÃÜw÷­u›Sq¸®Á=tj‰®ÐÍÚ VÐl’ø‚Å½NÐ­	Ý½!Ä™‘<ÕÃËVŽã­Ü4Uhâ·.”#pÏß¸§ž>[oY¸\n[I.4LB{¦_½\Zí«Kõ¨0 zŠ\'åå*d­¾Zš‘7›‹påºÛu¾â‰œcÜÔFÕ	•„à“Þ”[i.[ºãÌ¼ëuED¶H0H$ö¦V÷ä©Ö.P\\òÚ”€ nžheW’­ÈSîˆ&™¤¢ÙH[@¤…3˜™Š®«SÔ-<Iqur\\½´C‹BYY)Nã´ D:\Z³j\ZÀ³i¢å»‰BÖ§’e-Œäõþœž•+Ö\0,¤ƒ\"9UŽ™w,Á&ÑœŒI»Ón·vÕ·VÛ­™PO©¢9Þžäãµe¦ëÕùåŸ.v$ŸPHïïÞ²ÚÕ½ü?D¨(¥\'<ÑiH@PÉGr&©}¡òÀc?„YŠŽõ˜ëaP²@*ôÕF:}?jÑ\r	Ç<ŽÜP^ %ŒìV×Kà¡C`ƒÿ\0ìMa¨!ÖÂoR[sŸ5\0¯u\'§Ò¨µoPAÇÎpWÙ¸Bö%I€3Òy5—ÛÜíIC‰)!yÚzæµUý¢B|ð°à%*@>zŠóÍ¬• à‘õT‡¤¨Sÿ\0!Ä•û·œ ¶×’ä¹\n?Jñ[«•-Q*\'$\n%¤£iÁàÀ2m\0(ò0÷ØÓßoÞ~_Gðƒ6*ð°WR´ÌIb±v­Ý2¤-2•œüüÔ®«pR;°H<OC5-²HCƒñP*ÿ\00âFò1ˆ²*BNÊUOzfÆ ÚÄ:•7?P~µ=ó ¨.?öœ~´(`s÷ëVu²¦*9…ÒÑ’9‡%ö‚L8“×‚»x­ò„’¤@Ptö4CIJG©#ê1óQêV«]ªü…<TÚ„`Çç÷«¡6€™ÄYØW–3Ö”¤	ÂÒ~â«ž%½Ü´¡«„©¥amà”(xž´½½}®”Ç	ÇÐÔ\"Ñdn_¥3À÷5é¼3Â›NÛÝ³ŽÂyoñ©¬×R‘žæB•îˆ<ûÑ¬¨$ƒß¥B‚Ëg\0s5\"®Qü0dNJß\0O>á‰tæ‘E[¸rxHêi[i\'b¿7¹ý¨›«’›EùÈˆ CnÈ›ÞÝ4I	ÉöæiMÅÒÒ™IƒÓ±ù­tDùËsÎ“œóS_5±Ý©æhoY#x71qÜê)’¡´pLisšÃ¤ì$„Ÿšo«4éd%-o’GÈ¤6V.¸ùÜ“ÄP÷>” òa¥ÝÉI)‰MeH Ûd ®äVRÙ³ÞSY<-jSo±Ü¤¤ƒÛâ©#±wJÖWåúU òk¦X¥,Û¤ÿ\07xéI<sb.­âD.jÙÕV‚;B¡Ús*–—KsaÜLd“Ú´Ô\Z.¸™À{ýi^šñaò•wã¤Î\rXÂC¨Ü‘ƒêŽÝé2§´3€@Ns1žâ°YeÑœ¿Ò }¯%Óˆ#¿zÙ’\n„p=@êjAö€\"Z-À¸“†	çœÐ®Ø<•ªH	™\'¾Ž÷”ïªxÉ$\Z;RÔYjA Lï¾¼°\0‰UQˆ˜¾¶ÎÂV@?ó[\"ñCÓ$wœÏj…Z£\\ížý¸¡¾`ß§ÔÒ˜õ,6z²›€L¦qÖ1V­.ù-mº\":ñ\\Õ—\'ò÷1Å[|;pÓhÜ¥	Œžø®<s	[œâZ­ªÏÒ¥¹@^Å¤ú’G¥ÍQ…¯jT‰‰ýé›žk\\ÈtD`Ê§\nù¢PÈ#ÿ\09¡SÐQ­¸QâŸ©Êðg0ÌÔÚ‚d?­hlAäH=\"™´Râr3ß­Iå(S+tƒ9•»4*D`ð9¥¯é	b\0æ2GÅ\\dæDN(gYd`}h,1#\0õ«wj[VŒ\0†€	¢q*$þôjB«t[\0Ûm,©XØÒ	€GuI\'æ‹¹\rµ¹JLîôÕ~Ãç¯´Òû”ÙCÐ¥8w8?ü‡ý§ÿ\0hý«Ïx‚„_-Ä±úþ\'ªðÒ[ü¶u#ð\n=½¹þä:Uº¯5K½MäÆÔ-[ÿ\0ñ¶rUìTû÷¦¥¢;z`þ€Tº3A6}Ô¥©džóör›õ‰&±¯ÑºÝGb½H±C¯CÓå\0Ù¹´&&\0Àæ•]ÜíÆmØ!	3—\\#Ôø¦`w;juxEµ±T\rÊ;RSU›¸vá›qêJeÕÌÎ8ýM\r|<®2=N@Éþ?*u\n’}*2çèÆÚwñt+5FÓë‘Öw¨Oé^yeF’q¨ºü%«hZw!KZÉÿ\0`Jw(šŽãYhê¶vÍî7ŠÜ^\n´‘	î{žWÄ4Ãí%áxü„¾Š÷¶•°Ž[˜mƒíÝ%öÛWñ-ÌOæAáCë#í^>ÀQãjç÷ºÕÊ³YMæý©ê	& ŽÄ×EaN;lÓÊ	%Ä%R0Œ½!©£b­ƒñÙY¤îÏ+}”(\'“€?­0¶@~Á°¬©¤†”qü§í‘R.Þr¬“ÏÅû¦Á>rcpô„«…ÐÒèùyÞ`\0u‚ºÓ¶ï%æ€+lÈH=?Öš[y/´—-ð‚Ù™höÿ\0žµ\r»ÅmKéäR?(ŠÄ\0¢’PD§$Õ$åv™ÎK¢´2I<É$ý*¯¥^)Ïê.y­Ü­³hD¼géL®PëévÜ‚”ÆæÛÔÞ•°Ù²¾¶»m©¥•ÆäõPMNŠƒ$õ†¥\0V©î=Ûlûêµ4ã…°îÃ‚¤Ïnøâ¦Mªì†ÙòÖØ(R;ÏôâµÔtÖnwvk…‚iÄ`53wŽ(Æ3¹\\ïF?Ú®È´«Vßxþ\",X²‚§#¸øÏ•ùáÀ˜!$(fyš„Ü­­ï’BW¤Nb¦MÊ‹{’ØCÇ2;z[ƒ§\\n	\nB34$ÎÌç©ý>¾R¹÷‡Â!¶·%ò£9’zri“6éNc$×ªm•:![I$ÐWŒÝ¢é-ù´ÂÄíB¬Üž‘—±›§H¨ÚÆÒ$( ô£íHÚ¾8#¿ÅÇ={T’\0‰£­Lã&s\\ÄÆ\\[;R…àð“‘D¨¹p˜Tž±P.Ô¼ÉH0¡êIÞµmçRÊ\\€cœ{Ó*ï^Î‘Räu„ìiQäãÜÑm¤!!$Dµ-eå…ÂRI!$þSóF4ú”T@i\'Çµ¦F9X+‡i«‹5Õ\nLù -î”\0#\'ªq÷\rÕÍÌ¥\n ùd‚cóê>(›bÝÂ7#ÒDH?Þ—²Æµÿ\0ÇùK¦v´-¥¡‘@œHÇÅtë­¬yjIe$ó4ó¬²ê\ZY…*`öèf¦JR¤\r¹õ5¿àþlÅÖŽ=½ÿ\0©…â¾\")ª«ö¢Õ	˜Oq@êä!³·½>\rJIQôŠ®ø™A¶Œ~l™÷¯Y´<“	•‹«¨*#¼þôVžîwrGžžô™gr‰*\r5ÓÖŸÖ,LTF/2#r1ÔûVÖ÷ÀP¡ÌÌ	P7—…±µ*³Œu íRÝL‰‚CG` ne‚Í(iâG8ˆÍGvJ®ÒzN\"‡C¤ª2•Lí^%à—€w2xè{\ZàÁ®î‘ðJÈÜ<õ¢lØik33?5¢^B’6¬`u5\\ñF¬\n?Ñ “lÈ£eBäËÕYvÄ]®9`›ò7¨c¤÷5•¢ôÐ½¥`¸¨üÓÍef—°œˆÓP Ëµ»Ýqõ¯u—¬J	…$HçŠ­ÿ\0õNÐJ…Ù)Qì&gˆ¥ú÷Š¬ÍšÙ°|­÷H w$Ö½»Jæg­OœbWm&éì˜ó	žÿ\04êÊëÊNÕ¤Ä`EU­žS™\0=sM­îƒðˆ¢ rM	Äm„cx¶Ÿ“É“tød#9G=âˆfÑ\n–¡ƒ9øš\ní>K°…oÄñ\\,½„fËÁ!&$pcšƒV>cAs$z¦OÚC«É<8©ÔðZadA$ÈíT¶±bâo0$,*\'\'F	©RÛ®e$ÏïLll­@RÜPO´æ\'#üÍks~Ý¼†S€f²þÌÀó/²†è\0ÈãÚˆe×Ð0#\'iZµeù™€‘“>*Á£jl<‡G<ÇÖ¡©eSvîœies\në]Ã÷EzO˜£¹A­Põ(<¤ qÛâ*ÙáUéÅ±A¹Dš>ñÎŸââÙq@(+m=eô8‚„\Zä!eÖuÒŠfˆÉ©ôÜÛ<›{¢vŒn¦•·b8<Ù\Zt“ÇÒnèîš£ÙkhzV	\"AéóM™¹S€yàsö4AaS/¶YÍëJ;WÒ…»y‚ ½©:“Ú•ºRTdŽôµË¥ïZT	LºÛ‰9’Š™ºBtÜ)ËÕä$–m’rV¯æ1Üð>µ#ÖŠe½×ùŠÌ(ÎÁþÐkm7PJ[BB\0C`ü¿£¨‡—qI×FbržñÛµfÅ5 À?°è>»Ãt§Ð‹u%giI#èr\"KéU·šTT\näðªú`§ßŠñej@I$\0ÌœPmÐ­Œ[v3§Äš”	·8ó{ë’ûªuRO¥\0ô÷4*.:¯Ìê·Ù9ýh‡PTÏ–fA\nQ#úÖªx3Ö=ª´R\Zãn8^÷øÉÕ^SN)ÎYýMüÛò›»kç-–„¦ÿ\0ý?iªæžM×ú†ÒÓ%¦ƒ®\0Ûµ\"¬×oÃ/;‹A)Œ’Iþ€ÖÚšmPÂÈ}ÓákøˆJ~“X¦¿;Qa‹ø™é4÷\r6ž´=H\0~\\Ê3ö¡ßÝ´”Kv‹S„O*\'Ò\'ëWý\"é-¡6‹ÉLìP÷Éë$R\r6Ûñº¥ú=fêñÇ{¶ƒ±úLôÕú“)þmÇ™Î\r;§Ò£×c°íøsûþÑO×·ŸU(zc?ÜmsslÃAw/!¤‘ ¨æ0:ÕgñKÕZ¸¸Ø[f\nXnd„ƒc©#¥â$0)=\ZzœšÚÂÜ[Ø†NBPŽØó^nÊ”:MŠÂÖÉ„éãÌÒ­]NAFÙÌÈ$S„A? ¥Þ}K³¼´uEIEÊü£Áé¹?|Št	”õãÜ{¥S¦\0îSÁý«±V*bÍEE¶i¹KŽ•%*¤„“?¥\0õÓK6©}!*;¼ÅD%&0~¼T×®•x†Êp–œeX\'õ½Õ¨XÈ\0€@öª¨Ø ‡÷Œ&\0ë!Òu¦­“p_óžâJI(3È¡\'Š‰¯1p†™C\nMÚ¸“ùR“Â§¬ŽûT—6¨N˜´-2Úáÿ\0âLOÓWÓÛvßPy¥åÆgqî7?¨¦”+Ã%…U±,:Î‡gå(©@/ªNÏJ‘÷ƒlÜÛÄ¨€‘ÌF9¥š}Êº»aÈÞÓËH\'„ÈûqLÔÚQ¸þlš¿Ùž¾`ÿ\0¹žŽ–zÈþŒ]rÉ]£€R„ù÷ ‚…„¤í-ÀIí´sJxêJˆHé9îhGØ)yP:Û¥-bl£ifx0›ƒÈ	P	Yät>âŒ)ˆIÇcJ[AJW·\n A‰úÔö·!à\\)PW¤œc¥1EÅÓæÔÖ1I\r©3ù€ÇúV¬µ‚¡È;íX„w8AŽ @ë×!™/)(APJVN=Æ)…Å˜Ï^Ýà¶Áƒa\n)ä(„$ŒõŠÀ”dû´zå»hKªÚ²’¤ƒüÑØÕ©¤ç\0K;€2LWºfÒá	z@ZdÀÏZþ¥io¹ÖV…rŽ${P> ¾¯¶´%IBæO#ô¤àŒ“ÀûûÖ½~^>Aï<Æ¯ÆìKYkÁ^ß”\"ýõ]Ü•‚JÎÙ&¬\ZMÒÚV@Èœš¬¡C9•vÿ\0ŠÄ:A”sØö­zîòp\0â`µ¬ì]ù&\\nnŒ„§ƒÅVüNÓ‹µ+H“ëRYêE%ìŽ\'¥2Ê¼`¤AsZ	rÚ8FDåh¸%f\'ãµ1´qHNãÉ•Ú™_øyi¹[p£1À4³QiËvÔ• òc@„sPÈº.8S‘?ÏK.„ñº`zIfÞ÷B ™äô>äSö¶2¹hB»~j$Î©¤\"dfg†½µ/1¹Áâbµ:Š@Q2p£ÀúTVzº]¹-®3íD]¡³¨@ÌLåõÍº¶£¡ÁúÐâã»ÖJ·`Õ«XÓRêKá|‚0NzÕ]ÖKjõ	Á#¦j·#c‰ˆé·¨lm)Þ°#œVR\'²¡×?•‹yÞ¯yÎžl°AãŸ¤Tm\\-¯Ê¬u¯ú—…VÛÎ2ìm“µDçš¥k:SúcêCÍ”„ò&@Á¦«µlSKøa«acÅ;²¿m”„¬ñ·©ë5HeÍª£ÚsjÂ’aX‘LÖÅyÌ\'CE¥Ë¡Àç0GaÓ¶sOPH•“=\'èi&›âe±n† ¶2¹Z™^$B¸Kyë“Ò‡e×gÓdlñÒ-Ê@x¬òÔ”Ê°z“Û¥FÖ°—Q$ +¥y~O¥<“Œæ†¦öûÆp¬ŽL™ëÀÊpfdâ:Òç_*99\'>‘Q#{ËÀÉ9ëMÑV£¹c‚F*ìÂ±ÌŒE¶Ö®Ü¢p)Û6¦Ý¤«ò˜\'Šqm¦¥”ÀJæbj\rUIi‚	D·4·š\\Ê·=\"«« \Z%J‚\0æ*Áþ™êßŠqÖ•ÐÁÕÍ5K¥©â¯O\'úÓÏôòüØêjŽAù<QFÜKÖ»93§ø‡MCî#±TI¯\"âAÏB9ö5tÖõ%%²R`û~ÕFÕÜ’£ÎLö=f„‡RÂ	âIk¨ºÚÒ¦ÔHÄŽzÕ·HñajùŽç¤ÕÑAI€=\\}y£[Nw§ÇÅ¶ã(	^“³Xø‘‡šÚƒ9\"·¹}•¶T\n	\"f¸Ûn8‚<¥­$`qïMí5¢’á\"88Ÿyšë:s..Äé–•³‚q¼Ø‚¿PëÉÅUìïÝa€·¦0 ÇsAÜø‰ßÎÂw#‘œûÐw…æX¤f_T¤„€“5ëdyÄt=+5ãC¸%ÖÖ“Þ3Dõ»`ÉJöŽHÈì*ÛŒ‰ÛÁ#ÊJÚTrFO÷¥öVûnžA˜…Ÿ[b½óéÜdõ¢4_XÜ\\\rËJUŒjcƒ8²çõ?KèS©Ûå$í‚xñö©Þ»ti½o—S%² ÁlTZö¯cqnÚYâ™¤Ru´„¶vÁÜ¯ØQÒ³‚ÝæþÍ¼Ä{FBé¶z-ˆ³B¥Imàÿ\03K4K¥\\x’ÝDÀQ^ó´ò)ï­×\\[¦\\R‰QâM0ðÂ§Ä69¼ƒñ´Vò…UlßÄÏûsju¢ÃÐ°ýå’áH¼ôüD)M”ƒ“ØŠòÍäºÃ®È!WIi\'¸		þô“U%‡\\QJÜ¸[Ä¦Aè9úS8+þ›¥¶Øõ=¨\"GþÔ¨“ú&±>À\ryêüOaöâúÑ¥^ˆ3ŸËÖ@Öë;Gö(¡Ç.@ÁvH?\\ºwH~Í¸ˆIS{I¸ÚGïˆ®Ê™JAÚt*x(|V–×hIif6Íî8=iÍ&ˆY¢*>ñçñ™ºÝy«Å“Âàcàzþñ¶¦‘¨³o{o\0\\´Û“Ä~”]ÛÞPp¸‚¥¥!@ É‚>õZjîæÒÝ´ €RÞÀ“ê\0IÚG~d½Y”¦î¬í–¥%%öŠR	‚¥@VÑïƒYèWÌnÐMê5ÕÝa¥áûAÊÍÂv-;R¶\'9™4+ZasPqxÜí¸BŒ2ƒúÑhÁIù\'š:ÉiA)[v.TIˆ­/§«{aºF¼Â¹ÄçÚª¬]©gÒ§–¢àI\"º$-e;‚Š@1Ò{\Zç—ŸÕn6 íó sV=ÒëZ}ÂTBí,¬ÿ\0¹µˆ\0ývý«Y¤\rZ°ê\0„òÞ«aušw=I#çže	”x¨.á È€izåÃÊeÄ†Þ@%;r1ñL™õ7\'\n\"±5u20¥ÆY¿MËbïCžÐV<È ä”™{H¥wLomM¨ÉRpxÏB>¢Ÿ­¤,&LjVêN÷ôùnžHž”\nÐÐw/c‘øB>,R­ÐñÙë·l£aPtÂÄŸ¸¯5-qû»UÛ­¶ÒÚâvÉ83Å(»„Ü¼$”y†$æ£DHäõíWOAq`PùýšÝJ«R\\‘Èìu»»0•ù¬„9\'hö35æ©­;~„%m!½ª$Ï ®}Éâ\rbŒƒÛÚ‰äÕ¿ÌÛÌ§Û¯òÍE½>Ð“p¯æ\0Œj‰Å¡dtQqÓ­hU)ãØDÔjN$Ééz‹±9„6	DHíž…j S“ php¥nIÄ&¤ó\nŒL¤ˆÅb‘‰#bn‡=PsŽat¦\\ìŒÄÅ-qDHöÿ\01õ©[qBF\'psCÁCé2ÊH2ÃrúªŸHâ¸¿|\\\\½[L¤údr1]_ºq¿Þ)T@É&:W²ðÎ¯¬<^CfAP\'ô­ZìÊÞ9PP77Ië^*º@€I1L4\rWQÕu4É>ZH*?°§\ZWú[râÒ«ÇNÓÈN*û§xV×E¶JP”ŸPÇ& “í$½yÂˆšù’Ýª³ë<ž°ªé¿6·ˆVá)P™í9ÅXüCtj	\"¹ýÊ–ãêW ™\rKì¶éï&êÉ…\'9õûÒbÀ¥£\'?1Iü«CBÙÕAéïïýêÜâwLžzÏ½40™Î66%Ö$‰‘ŽŠŠÊ°ÜÙ4]“9ëßÞ²©öy]ÒÑwbÕæâ¤¡.dOCóT/è¥æ68ÙVÐvž£Ú{Uý‡˜\\„˜3ˆ>õÛµp‚‡ÆáÑ\\Ö\nêÿ\0(`žºúûOšï´—­Qm;Ð#‘B$”˜2#¤q]¯Ä~-’ã)\nIêŸëTCAmÙôìt{`Ÿš~­Pn/†ë*öÍ—°0Š•»U‡r#ngûÑlZ½féJÄ u~h‚¢ó›RËQŒu4Øç˜R}§ˆQJ6 í=½ýè‹[W.‘ºz“Ü\ns¦øuÕ¡+xm Fb­Zv–Å‹!nDu\'ì*°8‹½£¤EÐÐÚwº‘¸ðOSÜÓ¥¥¶Q&G×›QñM,6ÀÜx$t>æ‡UúîX\'q“$¿4…™êÐExÑíE ½‰ïÇNÔ¯W³zé½í’IžL@¨PØ*ˆ#\0óG±r¤#l‰ŒýhbÝ½°iS¼ððCd¸¢…ˆ>â†°°vÝð¶Î${r*Å¬%×Ú$’Ö9ªÑº]ªÌ«\0ÉÎiÔ´8—ÜOIujù«–wGjã$øŸµ\'Õ¬VB”Ú‚ÑÐø¥lê¬Ý,!XYã¡šrÕ±u°–ÝÜT0‰ÆT©2™÷V–’•z`õMXWñL´½1¶¤,B†	ˆ Óx[*SŽ’“ž+–Ñ ‚Ý%q¶–¿Ê&x>ÕcÑô¿,ï=\0e-ž}§Ú´zæËG%*Ž\nò~‚ëZÛ÷m)\r+ÊlòR}DGz¯gÀN€rÓok‰}Õ[Z¯r	žiŸ«-—’‡IRéEÃ¢vË¤Ôe^óÞ¤¨Æ!‚g¬¼ºÓ­‡\ZP\'&pq‚iEôÙ¡^bJvŒ{Ð:uËÌ,RÁýªÂóLêÖJmÁˆr“UFòø‚áO2—¦êîD¶Vv•Iˆ«hJw…	‘Ò©êðíþ›¨y‹in0I… p=êÞÞZmDIÚ&qþsWl1È“©ÁXÿ\0Â–ª¹ÖZR‰)H$‚dsWjÀ0ÛkH˜ôªïúxÈrùÅž}æ¯Þ#@:{$íëÇqÖU\05ãÞs‡Ü½©LædûÓ	‚¿X&@ÚáQú$šYmlãî€‚YÍ0ÓžsN¿CèH.7#iÇB?­Q«Ý:ÁiÇ—bZãÓ‘úF²¯7V|	JÊF=óV] 6Ö™`êÏ¥†\\v=É3U/û®¬ÊˆïB\\ë·Œ!6ª-!¢ÒU\rÛ†f…¨Óf¥­{bkèõÂ­Eš—{8üø›êªuó½å•‘;}$>õ]¿ÕdÔÉôô=Dæiøy\rJx\"#Ú“kšWã-” æ=ŒsV¯ƒÄÊÝ¹÷9ëÐõ$\\°\nOYç§Å]tÔ\"ïF²ZÄªÊè-={Ù_¥q!û.ì²êHH9øù®­àëÅ½jûhT¡pœÎ Í/¯ÓùÕ•oÃm]. >}&Y·áÖOñ\nŠåED“ì#µlûhü2üÔÊL\'ÔzÉ5ª®‚íÖ•‚T“‚Gæ\" ¹x-\r¡³éq#©éXôèuCxÊ‰·ªñ\nþÌÌÉ¿KÄ¢áJÜI2g÷­ì™,%Ä\'ÄöP;ý*=á\nÝÐsè|‚’’If½V¶‚¸ž_O{WrÛÜÏu{£lú]e[\\Jƒˆ=;æ¬zUÛW¶é}Èç¥Iœ¡]R¥RuüÕ	™Ncë\"„¶½¹³qJ³p¡JÂ‡EÄu¤µz/´Vª~òýb;WŠ\r6¡ÈF3 7xÚ®n­–½®±\nÚLJH¯Ü\Z¬ßjÅû×m¹I$LàŠ«j·Ï\\^—_ñœ¢Œb\"ÒèöÁ-%kHý;\n\r^ªFþNû¨ñ«-*ãž¿Óg­PY*W*=~ii·Á(22`y>cjAíU$êBÛQ[+\"Ó5°ª1ÌÆoŒšJ:}Åz	’}âš¡\r¾Â#‰ê*%Ù!R’GR~ßÒ¤ÔGI\\¢“‘×Šô¨Œ’qŽq*{›d´%¦20JÒ“…nŽ¿Ú€Õ1²z²	TœždŠñ\nç0>ÄZïo£¨\n<ÜÖ¡)ê\0é\'¬1\'aÌÝ×½`F1ŸµlÊ‚¥\n¿cA=ymmêYÞ¾Ã­Ek­yŽ”!;xÛƒïVKs$´³³bÓÖÁ—€X™#¤ÓÍ;M¶a°\ZlŒ‘*¿ná	’gwzs§Þ„@&sïïOÖ `J“‘”\'\0ªö´á(\\‰í­>uä­œ~b	#þj•âkÂ–Ö„dœLõÅ^ÁŽ’j8iIÖ”§žÚßå19ëJWd¶½JNÞ†zöoÑ¬<×7¼˜˜ÄÈçþ*_Ù!6åh@˜ƒÐÿ\0˜ $f1çlNxýòì]BÚ>¤™Žãµt¯ë¬jÖM§x. ÏzãÚë„\\(}\"´ðÞ¨ö¨6¤(ùjP¸«×éàÂÙ@±>3º\\…ÐN;ÍeIfùºµiÕ)9Ö²žHÌÈ\'F‚FAÛ&g§4c+I1ˆæ@÷¥ˆºDF3ö£Rû[$ˆ÷æ3Ö¼¥j{º¹C‘ùèÛµDœA4³TÑ™¹AqƒŠS­j	 ¶Ê¥g¤æ=ê\r7T¹¶PBÔV‰àä¤wZ|Î½f’Z·òp}âûÝ1m(ÊP$Œuæj-«!x¶‚aCšº%lj“ã1È?5YÖ´°•nO¡@`ŽžÇÚˆ¡«àÊ°dá¼°†ŠB)ATïëÅÇTÅªŠRœ(¤â=«Ë]ME\nµ¸\\,~S?›Þ«7Ì®ÚáhsJŠŒç<Í2ÍæÎª½­êš%ÒOYížô[‹AN\'ü±*¢=ãëS6¸V$tÿ\0Å*ø0äK¶ JÆôäÄçô§º‡v«\'þâ©‰Yž€ýÁM­ÒÒctDIÍ\0Ö§¤ QÚ]Ê^·(à”ÀëïDÖìJVÜA çé7ë	\"D(žsIïÝ[îþi#ˆžÿ\0óE¯Ž!\0Ç&!,ù…ÉL|Å6Ò55µ~ÖåúpÍF»qÉÏP?½¥øyå^4¨!)31ÏÍ0\\(ç‰$ƒÖu[rólÝ2˜R’Þ¬\"Ø®Üèzf†ðÛ6µ2¤ŒÓK÷	‚@Ó½P¨;Êô<Nsã{&á¡üDæzjçî>K Éã\'Ú\"»f À¸´q*Íqy•ZêO´p}ªÚ{+,0LR²TN9É=»DœŽ{çô­m[.*ÁÇô§v¶°ˆW\'§Ò»“%›H­ÓÀ\0ã¥4·R›;’`ƒƒQ% ž9&Aàý¨†“# <z\nŽbì3-:.¢ÃŸÃ¸J	Ìî\0üÑ—žµ»%vjòÔrx\'½V,í^u+SM-ii;”R$§<ÓK7ïl®šCˆZ®° —*}&]˜\0WymðEà´: ¥îþ_éWK‹_Å°¤)‰ïTd©HXq\n)\n‰?í3Ö¬ú=û¬\'øž´‘ 8ö5Ôê×v,âoÙàoåo§’;DkÓœñRÖR\"dÏsAêVê“Å	ôžãœšÓÅ7®ÝÜ—AZk=;ûûQ»Úsk^V9ˆÅ_RÇÚ#õ‚Ó¢W=ëé?¡•«—P.~P¤Êa]1L¼5§7¯Ù>·„äŽäÖjö%ë\\¶yL‘ÐÕƒ@·^á„)¤ÃþIZ£’`šSí»ªfN>Xš4xb²2ª3óÌçv7ÈgR¸µmD¡·\nDžžÕgµHRcxëúW3JoFªëÉ·p«ÍQP	ã\']Ãk]ë`‡[ÓÔÖ†å“<ÓéœØv©äœOÒ˜vëÌ[aA	0œôÇµ(Ðul¼Hí¨GðÝp”ÂGZ¶ä7ÆI3ûÕ5õþ\\EÄaK!GëÅ\r70ì1`´éë«gH»jH\"H÷¡CiQ$\'ÜÔ)ºó[JÉ”‘ ûÕs^ÕFàØ)ãÚš“=c§n‚×2FOÍFõÈm&O§ž“U=/Wqõ™ALO¿üÑ¯-N;ºHöþÔFÅ|w’çÊ=c¸ÊQàp8ýj­âo3§	´\0²0G÷§>a)Á8Á#9ª4•¾¢ëiÏ2>hiŒäÀÕ´¶\ZàÝRã]ñ×é	×dBÛ¶l± @*¯œt7ot›¿ÄZ¤îj“ÄŠ²jZö·«£Ë*-nÁ<˜Š!U\'q1«*Éôô+Ä>$fÝ¥Un\\IŽ+˜_êW^þ ’•ƒ s÷©´2á>»—µw$ýh›í4Œ1A´“Ó¤]†ÓÏ2Íá/áÈ0dñÓš½Û:ÃšáL8å…ÈZ$ÁÍtß\nëbáB•*1µ\Z‹âÐdcå-Z‡Ï~>Õ^Õ4Õ2J’ŸO$ƒÿ\05ki[àŒö=ýë{–PóE*ˆ›²Ã‰]Üó9ÿ\0ý=‰Ü˜\0A÷=s@\\i/ ¬ÊÀâ$ýéž¤‡t›ð´Ï³ôŸzogrÝëbT®¤ÿ\0ZÎ(AÄ’\'<ºee*àpIÅ@òÜJ†‰ïW­kCó™RÐœóúW?½ivÏ­·s“ö º•æpæ[tËò´•Lt9éN­nå`3€1õ®¦\\–×\n3cúU†ÖåAi?Ì÷‘óL#äH ƒ‘.Åõ–Lc ?lÕ`Ú>íÙUÆQ¸”’pGÅ4´º$§Þ‹ZCÉ =bœñ8>$v©B\0|PºóÛ%Ç<Èä\Z!H-´©ÇPz\Z¨ë~ U»n ŸåÛœÈ«ü%ªBÍÄæ^&Ê™ÌPZZÇãX\nÇ<s[j÷îík™&†°ŸÆ3×Ö1õ¡ž&°é>‹Ñ\\J´›B”‚<±Éÿ\0ŠÊÃî(èöÐAôõ”ÐÏ¼À³ï˜\nîííÔ|ÇQ3‘#Þ½ÖÂÛ\"ÛÖ¢ l3žä×/óÞ}Ò§Tdœ’s=éö‘rmFõ¡Ð$ÁŽÑY¢þQ“¢UÎe¢ÆÖå÷T°ÒÖ¢r¢’VM?Ã÷wjŸ, ~ ÑÞñšú^B7w =Uáz…²B”Ò›J@™þÆµ(Ó\r¹&(û‰õJCÚ#ö©X#‚O>ÑCÞ>?µæäŒ¢µMi×5M²JSÓ5åÂQrÃëóCrŽÅG8ë:½K\'¤ò§Þs=eÏ)ÛË2SÁúT¬¨k‰asç³”?7H«•ÞŠËì”ˆÝÐõ9ªËvkÒï¿ˆAV˜\"zÐ^¦ÑÌÐlL§Q]iN[¤(£ÔGÔ¸•ÆÑÇùñW\'Ò›ÕÚ–ÊÎNAìHªž¨¥ZÞ©›²…,¡iâ–UbpzÎ¬–àõž ãÛ¨ê*d\"2® géQ5µCv?58XL@‘‚\'q\\¾Ãiö¾nVG‚j\rBÕ¦–Kk’23 P\n¼tHI À‘Ò‡[Î8}]p>(©P^gm÷›ÛÝ\\€	Ú˜À«N¨™7cyéïTõ nëÁœÓ7 zdñŸš‹+\rÖQ†gUÒõF­‚=|Æg“Æ(ýkRBíÒé<# ®PÝòÂ‚”¢@ƒ3‰î(«½i×mö)r\0J©=%V³œN—¦¾.m&w\0\"qÇjåê\Z’T9* ‘ŸóŠ°økZ-µå­} ˜Žõ^ÿ\0P_¼ˆô¨D™?jYW„_½ˆ›Nlc©9µ3J‚SœR\r>óËVÕpyž>iØq.$uI‚\"˜œBP©ù©’@ãÖ(0 ‘ƒž`þµ\"_ÈÜGÄfy5b%—]ªÏPÔZ\\BL@<UÇ–aÑl¦’6…ƒ#ÒJ iš‘²W;Ûêô«Í“êÚŽ[«{‰ô¨À¬}X50	é|&ªu5\Z	çØýt‰´­T8\rµÇ¥À`€9«•¢ÂJA;`@W\"¨öá¶µºò&áœ(æçúÕ‘ß[-m\"7zH¥ìõú’mèºoñ_Èì¹¶µj.­˜$`ûö¨4K%Û\\+¢Hy$¥Gi²RÚÐNæü¦x=«wq6ÖÅ(*SK¯ö§­k\ZžO¬Bj¼>­C;þŸ­\r.ñ,ºJ˜q$‚zŽ´ëÃ÷(u§‰†Ìâ)OŠmß¹¸³u‡[!(2•cpÄ‘úT^J“ø¶Ÿ”¥ÒSdˆ4›·ÿ\0ØO&Šð\0àbI­é¿ª¡6è@·}>h)àˆ…ó½cao§ê)U»%	-zCš—LµrÏLfÙåo,JR³É‰ý«[U•¸åÅÒán«kH&!3[ðáFÎB®ÞûŒU©¬0ëÊIôn$$UFñv÷®„$„«™3VÏ6¥7ilÐ‚êÊNÞ@äþÕU]‹mß%¦­ (žÃ «iµìoú¿Ãt÷á[´ejðfßbq\"”j**oiÎfS6Ú „`—6ˆøÍ|×–òîæz÷­Ú/£ñý\'š×é\n¿\0@üà¶IBYR$­HÛ³2x™Þ¡e@\\)¾„ö[8oHÀŠd°l4É½\n±SÚÎÕ9™\"@=	ö­µKT8±‘ÁæZ‚Ý`8™=3ŒŠ\"ñÀTÊdO_lTä%væÝ–‚‰mºƒÅ/üRT4‘‚<u§:ÃÄ‘‘Õ=MSîÛrLí9â§1šÛ\"X™¼ßHŒ‘S‡‚¤•r?¥#³t¨Èÿ\03S;vÂ ô«Œ%”#éÉ}@˜3ÔÔ¶viÏ%ÆAÚ˜ˆíÚ·Ñ/Ûqa3×iy«Ýµ“7Â\nNA«%!¢Ì\nÉ4MM\'Õ\nÄŽÆž6îü}AÒ¨:^“v\np€fó\n³hz‚.ZIÝž±Ó4ÝoÎÃ*Gy‹íK–\nZGªÿ\05@Óue0æ	*ÚRqÔâºýÃ\"âØ¡Q‘‰â{W)ñ&‚»+µ¼Ø;I“÷¡ê*Ç0Ô”aµ¥¿HÖ»f IÁ‘I|_¡¤†7LUO}m8’‚Rzöàýªßiª#ðÁ/(dfc&;P>ðÁ‘e[}K9š\ní®!i‚œ\Z{irvG#¤v?ˆ´¤:óÒA Ž~µQKÎÚ:R¢AI‚:­)†p\0‰{¶º\r¨xIþŸz{ax\n±‰à~ÕC³ÔêFåÁïÉá‡”žœ™Ï\\U·‘k\"].@yƒ³8€s\\Æ¬:‡ÜJ¥*ÜIÒtÍGpØ¾¢Yÿ\0P,V°›†„î{É¦ÕÇX]1ÃàÎJóe5¶œ¡øæwp	Mêw\"=ªv€¸n:š¹U„ìÚ.¦„i¬¦dñYUW-Û‚b1YGVàLÆÓ©2©jP9éÃm-H\0¶±€b\"¿Þº+~i³èh’ çJ44IJ&OÞ²¬Ð/­\rÂ©”Kß·RVÐXPÿ\0ÉŸµ\\týMõYŸ4œÔQÒ[BŠDvù¨/-’Ãa€Îhôë‚ Dî°YÔHíœB‚Š²µ$æ§üPj%_CÚ…BØ€31@]!Å¨­²\'$É¬Ð¦¦Ü2CGÿ\0Œ.\'p\"@?4£Pp\\\r‘$ÊAŠÕ‹‚–Ìæ`sïRY¼Ên\nÝÀä“óÅ5Vºâøâ²k9;m)Ô¸„O‰ì&†Õ|<íêÃ@À#ÞjÎ|A£6½Š¼@PÂ‡0{\ZÔø‹IZö¦åÒz`ùŽw7Xp÷»¤£+F¸¶ ‰“Z~Ô¨yˆ!]qš¿\"òÊà…!æÔ=¾µ£Œ´ä¥	8ÊsÒ»Ö!–æèÂS›^HÉ\nˆÇ½@‹R´ÊDÌvž•`ÕÛjÞÝJü„ˆ\0‰àÒ-X¶òJpéÖ®±À-OboX3ìƒ©ê(vBÒ® gæ6«GÝÚIA2B{ŸŸ­Ö˜‡@!@ÌÉ?j•b`IÖ&‰õmæN3Ö—j*q#Ñ1ÄO¯íWl¢\03Ž@¥/)*<Tn>Ð•á%ÒXD/§#šƒÄoïlHåBk})PžOÛŠZt;´2géë€ï\'n[0¨ê÷£˜»[C™\0ñÍ&RˆT~•\"] fk¹Ì¹Ydbù.G\\>ô`X)>qúÒ]ÅÝUõ´Â€RS¸öãŠeg¦_•9¹+CHVÒ®„Ô*hm¡€àÆºcbêñ\r,úHÇjèž\'M}§Pü2Ž×@GOz¨iMØ³ç¨$(OÌUÞßVÒÜCLØpn\'‚“À‘Iêk[œðÙðïÿ\01Æ=Y„kºRXYyhÞÊðÆÃÓ5T¹ÓÑåÆå©¥H)=ë£éÚ¥ž¥¤2Óþ•¬z£’#N-ÝßéÎ¤)a¢ë\nî;\ZÃ©ÈôÊz­ÂÔË¯x‚·gÊZ¿l¡´ƒ‚ŸŠ²iÁmÛ\\2ò‰\n\'Ë_B U#þ ‹7çy…·8Pˆ¤ÓûMU›Í5òÃ›–ÀÜAªk”½;Èöýâô6-gˆ›Ä×¯Ú¹¦µ\nßæí‘\'µ\\ô¤\ríˆ\0¡ßÞ’ÙÚTXÝ]$,!@€cžÿ\0¥XRØc[[)1½¢R;¬}V mZû®spr?ä3ùI.®MÂö¬nO<œRýM]æ¼ã¯¸|”\0¦ý§?Ò‡Ö˜IfVÙqå$«Ìle;LçèhßÜ84Ï8ˆRÆÔƒÚ(®æªwã§±Ì[nõ$uSø‰®»pÕ³*uI.©*Ú€’N-¶ÒFŸf§ßw¯¢9)qLÐëHbé×G˜YV&dE)Œ%Û½Mä)O	Bÿ\0Û¡F”6”3qÜÌ×wmA­{JíýÏàž@p8Þ¥t‡ÞJ‚w,¤€yƒ1F^Ø±¨-JÝQÚ\0;ûS]>Å«7)Iui%X„÷ÍGÛ¼šÀ^O1Û|<›sgÏò•è÷`*é¶V´’¢‘1þEl[1¸fc\'&zšºØßÙ&ñl¾àU£Hõ0Là|c5ZÔžiÍIÂÓ>Kj\0¥1Œ€b·<?P×.×ö÷ž_Æ´)Sy•ò;üâ!¸(t$À#÷­îÖ!#¬Žf§¾hT3‰þ‘K5P¾RLH\"0xâžÏç€“ _ŠâÅ—”T@“5ãWU8Ç`>µ)VìƒêÀ¦©™ :j„Á=yÏlE\nþp&3Ž~ÔØ(…DŸHçéÒ¥ÜIƒ3\0Ï½d†\"\"³ÓKK\n\n^à DDd\Zê\ZÌ\"Õ)+\0Ä‰ˆâ©¥³\"ITŽ:ÏJÙµ:ßäpÌtûÑë´¡œÖ\\fñEª.X*NJsÞ«úÒìî6“‰2{üÔ.jíÚU1ûqÞ…üjA\0’Ì‰&=êÎáŽéP8Äë\Z=Ày¤žãâ¶Ö´Ä][¬‰	â©>×šaIKŠÚ­^m5»GÐˆ2#\'ý6%‰µ0D9Œë)V“zâ„ò“íÚ•\rMÛ‡BRLŸŠèêN›m}j]eÀŸÊO~Æ¹Ö•d´;µÄúƒ4•ƒcb8®s-úCÄ3µÓ½&œæ:R¿è§Ï¶3ÉÛµ6m)òexŸÚžZZ©û@•úÓÆ>¢©åî‚Ýƒ™È\0q…žR¡Èâ™ZjN·Ï~sÍY|IáÕ6­¤í‘’;U8¡M/jñ˜‘‘J½l†r2%‚×XZÖ~‚œ±«æK/¤m)H˜éTöò1‰ýâ´Ym`‰‰ƒ™Ï\\P_rú‡YF^ã¬ÄZ1CªZÉ0Gz©Â™¸	RHPèq]u;n-á@*9\"ªúÖ†•¬-¤îÎ#”ýh´k<ÏKðc5j·pÐ¥2Œ‘µeF¤\\[ílà6\re7ŒÉ*	NÏU[éM\'q8šbâ‘ån*0\rWôÓàÏÇZip±·hù‚yÏZÎÓÚYI3ïpHÌ!\n		Á<¥:ónùI]±Ü¡ÈWêh æÔ’9<F*kD!nPž¢Gµ9CpCw‚6œ‚{J®ä3ê»q{¹‚`ñÚ£N«j²”H=LÌÏ4³_»ß©>„“‚Dž¿¨´¶JÖT–`N:UoTàÌÑZ]Í,Wkµò’¤úTH€x¥Ú›Ì£K}iÂŒAàœã5ò¼Å˜ÊAÄÿ\0œÒ­E›»¦ƒL¶âòI€yŠªíCÐ	zª2”ûî.íÒ•®7@ÏùÆÁ·œ!KZötÉ«àK×ˆ]Ä4	ÎìŸµZðÆ`ÚWp½ë$˜©mJœÆ¬ÕV¼™XaÃj²W\0í½nu‹¤€”®G1í3Së‰¶CÁ6È@#’)RPNF;ÏíúÔÖwz¥yƒqšu[»±Å­Cƒ©šÓÊ\\’9îc·†ü¯?bÇ¨àÐÓ[·ae\rzGXÉ,n~“›PÕ6Á+ªd´æÕ`¤ä‘þw§úÈq{]ôÄAàŒâ„U¨$¸£ê9÷ú}¨gÜÎÌ¨œdR-hrv@=‚ÞkâKûfZ,¤nR¤ÉíTGî‰R~¦ï¶nZRÉ*ÆzgU«„”:¤ž‡ü4Íg\"•\n0$¥õ“ƒûÖ»”á2dûÖéHØAZŒ.;Á=jÄÃAü’·D$™8êÉ¡øNïSRNÒ‰*ÀÇÃvJs}Ù–@=»GÒ­êñ\rdN1ž©;íeô¨æËà	&á‹Y¹s¿s¤	1‰œúÖìÝ*í…4–J@™XIçé@/ÄGSu,G òOqIñ­Ï‡µ\'Bw¶•Ê°Ž”§”öœ³[Lé«²ÞÌeŠà»¦^3rëaËW´¤	Ÿ½Xlšd¶—,›*BÆàŒÀª-ÅZˆ<§M«hH´c¦)wˆ|amgª‹]*Å%±\n^Ø3ÔÑ­ÓÚ¿üÆ8Ç^v«´e¶ÜÙÏBùe¿F¹°nîæÛQ`²Ó€Š’=\'ØÑ¨nÚÛÄM%7>rKi&J{ƒTÄöšÕðev*þr$š¹ÚÛÛ]$*ÑjCÈ$˜ ã¥ekª¶’.²¿Ä|>[K~”Ÿ.›I±•«}<\\-ÛwÒÑeDZ \'Š+Á^bÁWN›Ÿ8ºJT“ùRâ*k»‹´-•²´\\70QÂ»Pš3\Zž›~|ö^m—AQ pLqY6ëM´µa†y¥n–¯0Z¼®‘ÝÛÖz{	BB %\'P\ZžºÒuGíRµ;å”’d”Œb¬Z…m¨è›ïPî¨íWZmØ¨ÚY[np+iY’>ku5–*FH…KiÜW’Ãòh 3¥;yrñ&ád”Ž\08¦¸úô:ÕlìKa[R“É½I{áÛ–ÛQKŠQDp{Uk[¿Uî£dÍÁÚÃ\"T4zÛht9ÿ\0),Ã½A<ÿ\0ö…z”°ñºJVJÉ=f¼B—z—HòÛœÒ×îX»xùlÉÄše£ ¼¤‡3¯½Û›·è%Öº«Ó‚y„ZÙ»l<Æd¾¯Nâ?(?Ö´ñ5•Ùµe›P[mF\\WSŽ)Ž¦ó‰†íºáq`æ–êÚ­Ã­Ú0ÛUÉJ@;&&½‡xbyKuü±ý\'–ÕøÅ–_åWÐwšh\réºn›tèh\\&Ý$¸¥æWiN¨ÛšŽ˜YM–à‚PpBI\"ŒÒZ:5…ÈºRS‹.¦@\'¹ëûV–:“úŽ›©Ú]¤‡W¹-%\"dAÿ\0ŠjÕÙr¸ãž`š¦º—@3+Ï+ÌowÒ­\'Õ^\rú\nr\"N\'œÕ²×F¼nùi¤‘ÊŽgâª~-K÷\r~ÿ\0;p;úg¸§Vä°úg·Ã¯¤n°cñip/°8â~˜¯J–“ºqÄÚ„KÈëE2´/#9àÿ\0Z’¤ò\"˜Ä« £µ_­N’	2y<@JßPL	 ó¯âÊ?2§#ˆâ®	°Rð‘ œ~žÕãî\0DšV‹ ±´˜$IÏ¥J‡7HÄœ“Í[~9›y‘¼ñ\'‘ÏÒj¥ná&dpEB?@Ž1Åz—›D’>Õ;ó,™ë()#qÉàq5:Z ¥DÈI#íC&é¥¨Á93ÒˆáR#\0ãõ®Þ\'cÁtó¨-º²¶ÕÐâ~\r[BHPÈ‘aÖ´Rƒpú\'zšð=°ó\'¡Ï\\U·©ï$Ii¸‰iæ›¯4Ô%Üäâ«.K©\n\nØ˜ƒšÀÈJˆRæx¨«‹6s™AàËãºÛ$	Pˆ¾*‰®iˆyÕ.Ù’D¤Î1^¥M#Ô“Ä\0FHÿ\0>µ\"îV©$¬g3ïT·V„`‰|¾‘3zYm^µÌ	ÉƒZ6Ý–’!Dƒ8€;QŠµ\rßÌ2¨•l”ÊF?n:Ò\r¨;ÌÌ>ÉL6ÙHVÞÄd5»­!K\nB¦2í@!²	“*É$ô©™Ü\"r:€{š	uëˆ2@Œ¿n´6\\`mço5•º(	:VS««P\0Ì®O¼’É½£Ò£×µ1	”ƒ&qYYAÓýÙšýgŽ4‘9TT—d±¦¯Ë1k+)úD ê\'1òüÅ…-k*p’£Œæ›Z´ÒŠT¯LÇâ²²ªß~n[ÐA˜NåªTpb®zs(fÕ	ƒšÊÊ^ø®«îÀ¯ïîö%{¶a\"(™üQXyÇQž++)%“J€8Š®lšUÎÙPÑý©]Ã)I„“Ð|b²²µ¨û³R³ÄŸEoÿ\0ä[×ù»Õö’Iå3Ò²²«ªÿ\0æ>q-OÞÜ·µD%J&zÕzá;îâbŽÕ•”µ)é\nm„¢ÑÓ*$JsñUK¶ÇâÕ“’?jÊÊrŽñÊûÏ6§ÄqRÛ4³$ñý++*L$ŸÌq·BÔ\0\0Ö8ë› Ÿù¬¬ª‰Òá-Ïjny‹QÚ$}©Æ“m©x¹ÅãR  I•”á²&²è°}ãI”èd?ÐHŒÞ(=-_‹Rž|:£QÍee9Yâb?ywÑtË[k-Í6ŠÊ—üÇäÔ,^Ýin­VÏ­CÌ\0%ÏPIþ•••kx>ßÁ¢\'Í¢©´ÝiM¼¹CªLîF1ÒˆðËª¼²i70ä$dŒÖVWÆµq¾{«?øñŽü”0’ÓCj¤Õ–m·µÕlNâfcÞ²²³rvægvÄ>(½y†]K{D‚	Šæz…‹fîÉíînt€¡\"éYY^ÂF®&ÿ\0‡ägâ&Êe(¸Ø’B`}iŽŒêíÝmhQ&I ðqYYZäF~\"Pÿ\0ü—¶˜Ý»÷…âÈÙ+üÆ>(»·Aµ$¶Ù H”ÍeeN«Sp|o8ù˜†OVØ3òC¶‰vÂáõ-aH¥)€ŸˆŠ—ÃÍ\0‚˜ÿ\04	¬¬¢¹Ý_3RßIÚ¼	¥f”€âœujsÊöéToMaËÄZwí tø¬¬­ý?g®ÓÈx²/ÚÐc·ó+º½£v·\nm­ÛBwdÎh-” “\nô‘íYYZr€™‡ª\\6ÝpJH*`ö¯U¢Ù©±)T“ÌûVVQÊhŽLE}§2Ë¤4§½++P$YYHÙÁ„R·¸÷šô‰B‰“k+(2ÞÓÔ¦2f\'÷©Y¸p7pk+*LŽñËiJØVðšøŸ3tóYYBîd	\ZT¬äˆëõ­•)áG\nŠÊÊìÉÄÜžGíE$ŒA?µeeW¼ƒZ\0¦“=}Gæ*\'Ò\0‘‚1YYAÿ\0”ë4lÂf3ý+p\'oIT||VVTÊÉ6@I9úÖVVU`çÿÙ','ÿØÿà\0JFIF\0\0`\0`\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 95\nÿÛ\0C\0			\n\n\n\n\n\n	\n\n\nÿÛ\0C\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nÿÀ\0\0 \0 \"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ðü`Ñ|%§ê>%}rk¨âU·Ó~Ó!`«±HXÉû¸$ñë\\×ìóûe|eñ¦¹qá[O†‡ZµìKˆç*a»0¯ñ–…â=oâðF³«Í‰d¢W…Sýs•sÏ#û×­|$µ—ÁvqC K&áåÁjväz±xý}ëØÉ°IT^ÃY[Y=¯‘ùýz},-¥94­~ŸqÚë³åÿ\0ˆþ!É¯xŸÂ°Æ²É¾›“×æÀçü+Ð¼s¢|+»¸ÕthâÚÛ´LV#„sÏ¨«ÚßÆ+?xßEÑ&š¼[H ?4mŽK8éýk‡‚_ÿ\0u¤øâÏ\rØê^\Z›ßÁXc~7\0zšúz–_”ÕP«+Õ“Õöÿ\0#Çž‹¥ÍRÉ%¤[µíÑ\\ò_ŽŸ|!ã—ÃÞ€ÜÜ=Öonn…lž@\'–ú×”ø›Áþ$Ñõu(´Y`GË’\"YqÔ×Ò?üðÛã\n®½ð®k38é\Zxˆ$Ñ±ç9WBðWÅ¿xMt‰ž¶¹ÒámVá±s\0=ƒc‘ìZùüâRÄÕ”ªî¶i{­zëøšCO\rErFÏ¬[×äMû1x‚eÖ4½;_˜Ëý€ˆKü!¿„ŸNx?Z÷í+ÀÖ²Þ<Ò†h÷Çò#9íÔ×\'á-ÁÚ—ìÙywá9×ì-KÀÖ®L’0$™{÷Ûí]7ìßâkˆ>·Önï¢iN-µ+PÙš	”`î@Î}ëá1Ø(Öš«IórÉÝöÖÿ\0ƒ<D\')¹%£íæTýš~[üñ&«ocâ[‹èàµÄ81\rá‡=ð9ükÜh½Tj)gmöyXÚXÆÎaù±¼€AP:F‘¢é+\n[K©‹{ÅµÓÌ1º>˜ÓÖº†>\Zñ¿~!Ýêž\ZÒ~ÝohUe™H¨`@±³tô¯OWƒ£\nµ$’i_ïÔê¡„Åæ7ÃS‹œê5¢W}Þ‹·SÆ<û<ø‡Å–¿ÛókL–QÜI%¢G<\0@r{jOxsÅþ2ðÆ›àVá´ÛfÄ\r¸gm«ïÇò¯^øÅàoˆòi·ÖÑõ->òàÉg$±¾\\Û´u8 äuÜ:Šòë]âGÃÚYXé7zN¥jœIªÚÉ\Z\\€N˜Ž¸?ýTC—U”T\'¥­¿MìkŒËêaiÓ¦ðóŠŠ÷›OÞÕwØê~hÞ6Ð|â#ÅZrYO¤ÁžŸ3†\rîA\"£Ó|â[O[k‘ÎîY¼Û©¥N}žÜ‚k²ð>›âý_á…µ÷Ä+±Þjš—Úo! Œ\"•W g;Só®3â×Šücâãy¡ø?ÈN²P—æ,\'bp#ìŽÿ\0ýjà«Bž#Ïºp³M;»­¿àˆ¢°ôb§šWIî¯¯äs_µ_|=e­èŸ\rí®/Þ=<Ì\n|ñù»9UIÁàzšòOÙ|j·ðÕ•Å‡‚/#gYà,±?(\0õ5ÜiZ”ë®	h1¤÷®I½»nDd·?n^|Tºð…ÎnÏpæ6D‹\nw÷€\'}+ÓÂMcêNu¤ÓwÙ-;\'é÷œtýœ—¾µl—þÝOÂÚ5å²Èí-æžÞÜ6	•Ç@¹¯˜iŸŠ¿t}BÃà‡ÂÛk­KÇ:‚\"ÚØÙþñà2ÌÄœnúôÏåëžñ/ˆo¾#é²júdÑØÍŠ{ùœfÝBœžOV=*ÍÇìñgiã	þ%|<ÐmÆ¤d-.ª—l÷ì<WF&te„Tå«ŽÉë~ºüí÷¦ž?kˆ\\Ý–Òÿ\0å¹ä?<)ñ“à…üMðÇöðÞ¯j>9Ó¡k+™ÌŸL¹ˆ±JŒù°GyìËmñ7â•—Áßi÷b}WPHì–É31’C…U©$ø××k®O¨Âo<MlkVÄOq2éœ\Zî|1gðëàÿ\0<3û@ÝøFÞMgIÕ ¸´UL½Óƒ»hÉNeŽŽIÀ®&2–-{iR÷]¡×K9©W•8ÚOEný,ÌñM%¿á+ñ {éÚŽÞ5\\™F\0&³n<Kñ{ãŸcÓþÓo\nýšÅÊ*Û˜u§ü;ðO‰¾%k«á?\rè3Ivÿ\0+Æ	Ø÷Ï÷G½}ƒð‹ö.Ó¼-¥C¾#ÕMðŒèôûXÞ\0ç¶XîlwÇ§ëÕÍ0Ù}(Òså¿Kïç§CÒ­‰¥ƒWŠN}.x·Œ>.~Åzn•iã\rD!Ö 7VáÞa‘’ÍëÓƒ^«iÿ\0ðo<\0ú6µ¦†13Z:ígÁè½‰Íy/íË§ükñ¿íü¨xSP¸°ðµ•g<6ŒÂXÛ“\'r8Ç±¯Òí/4ùaºŠ3Ë6ÆLV´æç(ÔŠ¿[­F“†3\0t¹Þöè}gáëž(ºø• k3è·Ry–¢2GÉü*ØëÅzM·‡¾5|JøNÞ%Õ¼WtµËÀ`ó‹¡(pž¸5Èø?âï†|o Ae¤–úŠF[\"½XwŽE{‡ì¥£|g×?¶¾Yx\ZkëJ¸³UÚÉ;ˆHÇ$ŠëÄ¨SÃT«ZV…›m»%ë},|¦2ž;5N•;ÎéEZíù.¬ç¿cÿ\0‰>,±Ö“áýÅÕÖ¯¤°Clˆ]å20¡ˆî8Ç|Šö/ÚkàÄOÙ—ZÑþ;xkÀ­£Ûk—‘Å­E\n†&sÕÂ’?#žs\\GÀÿ\0\nø·áí_ámwÄþÔ,¬£ñ$Vwwofñ‹[·À·0¸•â8=Tú×éÿ\0Ä=3Dø—à;	xß@ŽkMJÔÅ}c6QÐƒÑ‡ ¨aƒ_†ñG\Z`øk5Œb×³©7ç­Ÿ+½®´~i®÷>ÿ\0ƒ¼<\\a“b+JNU.XÇdšIÞI«Ù½<¬ú£Îüû?iþ,°ðonõ(¼ë«k{­J×fR{rÞ,ŽùsÐƒ^óhÞÑl]´]:ÞÛ÷˜’xÂ‚IÏ`;’^ià&Ã:V™á}>WeÑôÏ²+?RªTŸ¨Îµm5).$šg”©ÞfxÈïú×áQâµzØÙFŒ½¤|·ÓâI­<ŸGØþ‡É8-Èiþâš„Ú3Þí+nï¿‘Ò™ôÝGÅVúì²°x-¤G€œüä¨WðãÜv«š˜Ð|Sl4ícO†î?–U†â0Ø‘õ8=Õ€ úŒ×ŸÃªÜØjWHÌ8@8þufãZš˜ï¢™XØm=r:þ5ò¸?±´êÂUbžÜÖÝÚÚß½–Ûv>†®Kû¯Um;z>ð…¯Åß	G£ÙëIc8\'‚aò£€2È\'¿L\ZòŠß²†|-ð¾î\0ø–þÒùÜ•žá–Q<’60@,1ŽžõÞx_Ä¿fñ,wSJi‰¶ñò…éôÏó«×>,Q‚ÎÂB›–Eî#:÷ÏOq_£äž\'ÖÂÆœ¹ÜW;|©èÒåß×šÚí­˜Îü>ÊózµgZŠu\'^gvã½šó[ÝYµ£gÈžý”>1|-øssã›¿¼º…Ü×.¬XËw¶:ŽãÓçÂþ*ñž¯vž*dÔJ4±Â’ì2œð«ëÿ\0Ö÷¯ÕË}VÛPµšÇV|—£rŽW»Ç¶1Þ¾\'øÑû\'ühðW€%ø§ðûÂZ\\ÚŸ‡Öál,à‘äºû¸Üãjá¤PÀ=9ìcà~=Àf\\ðÄU9JQQOMî­g®ö»Û^‡æøÏ\rðü=GŸMÕ•µç³µ­v´[ößM›oüOñfÇRŸÂÚú¬Í6ÆÍc)Ï9lñŠ÷_€\Z¶†ßEÖŸ‹{æbúŸ¤2=ó×Ãÿ\0ÿ\0ÂS§[Wi%¹¹ºa#3n#žþÕèÞºÔ<âW»I­¡²1fý.¦Ø6Žã=M~±‹¤±tÛ×¹ñùï\rÐÄa%<,¨µÒÊþ_åæzg‰ü2ž%ÖâÕ4ÛXã¾·mÍLõô5Oã]Íå§ƒt_ZZf;+ç·bñcÊwPÊäãåaüHïŠë4/øWUk]cN‘Z	áW¶˜g¡¿Â»+(¼=âý[Ðîôå¹±ÉŽú)”˜ÈŒIÓPk“/Êëà±+ä›WÓºI¿ÊçåzŽ–\'ÇX½Wà|“ðÇÁ_>xNØizk]ß_\0ù³€Ësu!\0ì\0d•—Lzÿ\0ìññ\'ÂšÖ£.’ö76:£0ÝgªDcvö\\ÿ\0.õèÿ\0ðK¿ü7×þ¿ÄOÍi/ˆ¯[éð]ÇÌ1Gò‘{’2kÓi€>ñM´Ú½Ž›\rž³b<ËKØ#Á9Á#¨\'¨¯\rb1\\¹Ž&§¿\'ð®‹äéÆrŸ3w—õÔù›ã¬ú&â~4è\Zy¢? ˆ3È\'°öý+à|;—_ø¡¬êŸ<\rí Ô$x\"—\râ~a×\rž+èŸÚOâ—4]^ñ£h’j61´öÌB–›T}3Í|mû)þÑ?>\nxÂâÏâ6=Þ…utòÝÀÃG+—ŒžÙí_¡RÁÓ§\Zt¯k+]}ûž††&­*Õ©4ž–MïÜö½à¯í)á«â\r(xoH’Tû–újùˆ:ðH85ô‡ü¡|K¤ëÞ#ñçŽuñn‰u,×b;œÛj:$él\0V·¹X¥Þ˜%e î\nqÎÚsáï‰|SÂ½ÁÚÇ„n¦Ž6kïéÒXÅuÌ{Ë®äV8ÈÛÈ%‚å‚X|yð‡ìÉñÃLºø¦ßé±A¨Zí‹S³•LrˆdRc™‚º³.ìäWÍq~9®S_,£ˆ´©ÊœµztMÙ®{]=4=žÇfÙPÇâð¼Ôa4¦ù_ºµ¾é­×{[¹÷õôö²XÉ\nÌ³MYYA/å[ýµÁ=ºSÕÃªÛëÖK}ØV@p}û}sšä<£èW±º²ÖEüeZ]3P‰øxI&6R:«)ûU¯§é+¤ÚHRä•²±ÀSÏOðè+üÑÍ*Kë¢ÛMI¦¼Ó±ý×8áªÒRƒ×£¶éþWôÉlæþÍÔî$Û‘,#o8äþ¿ê*k»Ø¢wXƒ“Ÿ¯ýjÎ3Î\Z8n¥ŒæUèy=?1Šáæø·\'ö¸ðýäBg ù“¤ÀðÃŒƒ‚¸ÉÀæ²Ãe˜Œd¯·_%þ]NÊX\Z˜™·lµþ¾G}>¯æÜˆ|äbT|»‡§§Ó?•T]v#zcŠF,®O°Õä­ñkK¸ñ©“Bñöšb–(äŠ+œ¢”aÊÀç¨ÿ\0ëñ?4íSÅxJw¹¶)+,3FÈ\',½7Œ.wÏ>Ô8wèöOgú£×†C[’ü·÷nôjË®ë[yÃ5å„Fk~´leRŸu{÷ö¨tûé5-],!1ås(çÛ·ôü«Ïl<QOö/iÓÈÓD!º›ß`¥Y¡Ü¿uº€zþö¾.°Ò´¥rámãT†I#¼à×\'\'Ž3Æo/«F¥¤¯ù|»¿‘…LéÆÉs7¶ß§äwÚUàk˜­§¸“ç(%N¾€gó>¼õ¶zÿ\0Ø¯£K‰ÂbÜ™<œ×˜Ù5úxŠ)šá^\'µB¼`¢sÁ÷\'5gT×\'7²ÿ\0i¯ïX¨·DbB(ïôÆy8ëÒºò¬Ýå•£5Ù«ë«[Û[úh–,EEôjçÌÿ\0·ÏÃOëŽþüÖõ8®­â]ZïM±’Qu8yŠ¨0¨A»øˆÏ=Oœx?Áÿ\0|_áéÿ\0á3ø½mg¬§·¼ÒuX<©àtÈ*Ñ¾JAã‚ê\r~ƒé\Z×”‘ùD\r™bxãéÖ¿3ÿ\0n½:ÓTýªüDñø}tImä P¸OšÞ¥ÉÈ?Ý*¿±¼/ãloµ—Ô¢©F”9”“»i4¬Ó~},•­µÆx¯‡©årúÜew)ZÍ/=­úž¡ð¯á¦§ð‹Â—z¾£ãé¼A§ÝJ­cnð–¹ônàŒp~¼×qðÿ\0]Ôîìo­ ³QSÌhÇ?&ïœ¨è»xÈþ¼Þð:nƒðRÃÁ0&{»~Ò‘^]ªx=x-ŒãµcGguknó®–ëkYˆâU2IäÎ?Â¾ãÄÊ´hÓ¼¥­ù{Y§étÚ?óJHâ>³	k\'+Å-¾Ÿ¯ðAÑ¼¦x_ÃÚ=ËÛ¾gn.–O•–~7ýyÍ}+ãÍZâÊÿ\0lÒ3ÛÞÀ\n—=X¥|]gñ\"MJoéL¯$ñ‡uÑûþµ&¯ûK|OÕõs¨ê÷*`\0¢mÂ*ŒdÝ+éêSR£Ë\r\Z¶¿#åhc)P­(Ï¿CÈ?à¥:vßl,í\"òí5HMÔ¥ÍRœzcâšoÀi<u§<z?‘=Äpsjçæ™³ü¹ö¯Iÿ\0‚Š\\x—âþá¯\Zø-\\jzI––·$†FPÛˆïÊ×/ûÅâ¯ë2ü(ñíÜzLÑ–Ö<ùí\'Îèä)±ß)9A¸c 1]ÐÌéeùCž!ü+}õè¾{[wÐú,»S6¯\nXV›“µ»w~ûz—ûþ×^oˆ´oØ·ö¼ÐdÔ¢–o²øG[Ö,’æO¥ÄR«\01ò$ØÜŸ*±òðcûÃKø1ðWHð#|>¸øa¢Ï£Ç;Éý¨Ø%Å¬.O;!”2Æ3ÎÔ\0Î®Ä\n|=â»í&÷Æž°¿Ôí‘~Å¯jÇËÕ2p<è¢‚dÂ“•=pk¼ðôVþ	Òmü4Ú¨•m¡Híç›Pžy`ùw4ù‘Ïl–b}Mx£ÅùnoQO)ö”gÞQRj_j?Mêáß©ýÂ</™åØOa˜¸V\\«–V÷íÖ2Ý4·V›ü­³káè¼§E¢é°Go\0Ú--#<@?…°\0`mÏSÄž1±ÓõÛm\"IcûHa$Í$˜TU#ŸpIUÿ\0sí{Å	i¨è’êúµì¶3À…”îÊÛÏ9r+Çþ/&‡/Ž´Í[PƒUÝ¬Z6m>dH³-Ìqàíwxc²ÜäŒþ5—áÞkŽ”ëÉ¶ù›{¶÷»wW}^º³ôLŸ‡œcJÜª1i$¬•’Û[YGeä—RoøïT¹Õâñ™{!Ó.$v{Y£òŒPƒ†ŸÍ\'x$&r6äà)ÔµÝ_Uñ]”úMÅ••ÍÍ×Ú$mRfk©¬òÛV0R4ÛŠ6‡s• /ø—Á·–ž*Õþ#Ø[Î×WiúŽcy2¶èÈ€Á€ËBgiÈn\rIðŽâÿ\0ÛøËR»´‚òæs²8¼×‚(ùèvÏ‘ÉßŽù¯Ððô°ùvÚÆ—ÃdßFÚ½¯×{>š\'é÷T0ñÂáY«-\"´_ÊÚ^}Sm+èï®•´¦Ö§Ù½ãX5k5³x5{‹;<Æfq	ùTŒ^¼µYÒôbO‘§„µ¸´žy|=%î£1–$‘”†bÌ@¨£èzs]Öƒð`Ò¦»’QäÜ]a¹<™…l`ŒPGµ7Vð|VZí§ˆ¯–Òg`°´™óPP8$c9\\\ZòžwNui»ú$¯n–VZÝ¯C–9Þu½9k{ímWK+-nÓòÓcšð—‹o|I{£ø3ÇÒÅ,“ÙÜ& É°ÊŠàÚÅG÷Ü:–ÈÈë«ðR6ú7ˆ®t’gÓL“E¡Åpçl±®à¬Iª·’=zšŠçÃz÷ÄOË»hìdh\ZUVýå©$$ËVÀvLž¤\rÝ³¢iü)î¯ÏcƒÄ¦(ÌxŸsª`¤ç$s“Àç5ÉŠ¯…/ciNÞêÙ;·Ó»²Ó¢ôfØš¸jôýŒKh¶O™»«.·I4¶¿MNÀºŽ¡§]Ëoâ‰nn.Ê,Ó]ÅlÂÌ!*7?(œñÎ\rmxWÄ~ñMÝÝåù¸a6ØîVBBã¦:;}+ŒÖïuï\nZjÞ\Z³—^2øv%´ÑdegMÎé–ìëó3Ô…#ÒºO\rËá¯x^×L–ÔA<0¡ë$G<‘ÈÏ¯§ZùüD ¿}ÞŠÉvÕÛuºK§g¡ó˜ª1”%Q\'yY.Wo7îîº.Ï[7c¬ÒüY<>\"e\'å2ý==kÃÿ\0jÏØÅ¾5xšËÅ?Óì7.Ï.©z#g™¥Jºîp	àŒ\01Ž§·°xcZ•A¸½¶[hÝËyMŽ3ÏzéôŸ[Ü¹wh­¡t¯ÕÈŸÇÒ¾û¸Û4á,\\*Q©Ìµ\\®öw¾öwi7»Ðø^)Èhf¸YP’åþò³iéµÓZíÔðÛ\rKBÔã›WUk›==F–\r›¦Y‡-‚G±®#Åÿ\0.<u¤\\¯‹¼o®\\›íÞiµ»òUAì«‚=¹ü«Ú>!hÿ\0ð“j7^&µµÅ ¼èÐüêË‚7~¾mý­ÿ\0kkzD~ðµ£]k×L#ß;láÛ=_¦ñ>‡úžO9ÅUƒ¤½Ÿ´JON¯â×]©%½áìÞ†\Z8™S„¯¶“þmw·ËÈÈÑ<;§|;¶·ð\'ˆu4†å¢Ia=ãÝÃüpkÐuÙâ/Š´øõ\nø«H¹ƒŒe™.>îpE|!âÿ\0ø)Õ×Ä‹zÝ‡Š´ÛeðtÚ’Ç ]ÇúE’©#ÌÜ9!ú‘Ø}+î_ØÇú•ö§w<ö\Z•¨’Æá%²àðÊO\rÇq_k˜ãsZ0æ§÷oäûV/)§†Å(ÔƒjV³ýÄÿ\0þ)xnâ]Rð]ì±XPÉPW?Òº_…Ÿ\rôÍY·¿ðŸ‹üQá\rnhR+¸uMÏ§^ÈHgF5ÎpÎ>\\œ0¯«|sm¡\\Xµ‘Õ¯-îÞ\"mÚ÷:8èÄŒ}kÊôŸAý¦4wâ?ˆt½NÜ\rñ^é°ˆe\'?4d¡,8Ç#½|Öm˜à±d£Ž¥-t|‰M|Ô“Mz§g©ïð¶]Z†wƒqçÞ*söz®‘š”$¥¯IkÙìw.o´’—Þ5Ò-gÕ\"‘4i¤De=%Ù2FŽr2GFr=$×\Zfµ(¼ÓâK‰#ufâ+*œänV‡âkœÓüI\r¼Øêšü÷ÄÊ¦“¦ @7bHþ_r3‘ŽGJì¶:.¦\'žÜ¸Øcªå”wôã‘_ÅœyÑ¬_iwÓ^Mm§{¿^‹û‹&­™UÁF¦2‹…[ZÎJIÛªiê¾KÑî`|[ðÃ|AÑn¬ »–Öˆ÷\\@¤	7ÿ\0uIàç§9Ç•á>=»¸ñ\'Æ_¶Å¬AžÍ`ðÆ‹8ùšîci&u\"«`\'ÈÈÀP[Úþ\"øŽßÁ\Z¼v¾)º°êR¬0Én¤”‘ŽÕäsÎqøƒ^\r®ÝAð©¥ðEæ¿kªx£HÕn&ÒIÄVo›—mÌz —ÞxUÜ§h5—\nÓšÃ¶•ïu.ûµèùT¯²zn½ÈéÕ%îš÷tÓ•Û™ÞÝ\ZŠ—[=›á‹éŸ.t¿\rEc­\\ë’É\rýê‚€ã-æÌ…NB  !Ýê¼šô›»mÃ×:oƒ4vë“HêQ§\"C‰ÝµqÁ|w\'ælàdÖ^¥ðöïáeÈñ}¤³\\jOo‡YlwwOò‚Á\0TŒ9\0\0džµé\Z\ZÇƒ´;/\ZøŸÃ‹®*Ìé¬ÜÙàÞK1Ú¨±FÊªè»J†Sòb½Ç«ÓŠ¦Ô—Âµµä½tQ[in†ÞgN­¥‡EÑ6í¥ü¶²VôíÊüa.ø# C©jóIs§ê\\»ËxÁe”*ùkÜ$t\r÷[¹¹O‡º²øëVÓÆŸ¬ùÇIÐç¹µÌ›æÉ+·óª¼aN	Á#Õ~(éQ|N‚ÖöæON°¹1ùZ~©DêÎÓ¸í›nv“ÝsÐŸ2ñ_Â´ðŽ±qâ	—RÃ&Èà›ÉÏÉ’7ªñÐÜàô<Øg…†ØÔÒ«[ÛGuþN×¾ÇÁàóŠt«:s\\²¿ßëòmokº‹$}]¥Òb[{k,Ëö ·’ëˆä`ù%¶Íòàãä õæ¤Ñ.¤ñ*Io¬i’ßÄ]]\"¼UCÃm 2Ÿ|f¹‡£W»¿Ób‚ddŽ\rBå¥’Ùã(·³ *ç92!<0áA`=ëzŽ†°ÙxËÄš}…¬°1G{¬™;‚nlç±ÀÏ#Ú¹qxztjrS·6›^û¾Ë{+ïÔý\'\nãR›Œ-{+wÑ»y·¥Þ§9ð[P}âõµÆ»qq.¯<‡O»¿!þ×k®ŠQ·|„ªñ×+Õ5WZ³µø‹c#ÛÜ\\H!rI“µwz®3×Û5ç¾Ð,¼G¯ÿ\0ÂÈðÝ´1ØYÍoa¢é÷6+‡…¥I\0#rò3)`FI®‡A¿Å^\"_i¶—òA§ÞÊ·WÒE$hv³\" w”€~cÐàdq–d•\\C­\rRæòÓgÿ\0’üïc£2J¶/Ú­RçÓd–©ôÛ–þwHô¼A¥\\]ÚXË<m8CçùH¸CÇdà’:÷î+³Ó´\'\\Ò7VÑ”\'gš¨_¡®Fm¼+,z]œÃdŒ/Î8êüõ®“J›Ä-¥L¶èWÈ…š(9,\0‚GóŒ›ž9N7RÑß[ÞËV×G«{³óüÖ•*Ø>D½Ç}ú§¾‡‡~ÕšÝ÷ƒ5cð÷CY¬ÖþÙd“R\nQ§\r•\0zd`ŸjðÏ	~Ëvÿ\0þ ÁâÇ\"é¶–ÄÞJTeÈóqœóšï¿jO\\k~3Â×\Zeå÷ˆ `ó(;º¨9‡®{×¢|$ðü¾\'ÒáºÖbÒî¥µYH~èè7tÏ=kûó$¥VQ‡§:ŠU‹n:]Û~›ßª^‹cüýÏ¥…­Ä•éP‹Œ#\'h·²¿ÂÝß_Só?ö·ýƒt?hw?fÝ!­î<ç›Uð›Æb?VòÑ°cqÞ3lwóOÙöÃý¥>ÞZx.â¸ðþ…|íž¥$öOŸš8ß†^z¡ÈÕûµã/ß5O\0Ük¾ñŽ‰¨i\"¶¬W6ØèV\\tÃf¾-°ÿ\0‚hkÄZ‡ˆl ‚çNºE±Ôô‰@iã#?½p[Œ~k®|N\Z—-M\"•Ôž¶^½}NØc¥<$¨´¤ž×z¯Nÿ\0šóG üý­4?ÚM¾×öw²ÔªH-˜ÿ\0¬Ul}?wþ$×ü†¦Õ~ ›t´´Ày&ÏÈIÂW¯¡¯‰¼]ð¿Äß²OÄ-kGñVûKYÂ¬ª‡z°þQ×#Ó­}a®x#ö˜ðÂEâjúZ,×É´HŽX\n‡3É»Çsé_?Ÿá\ZñÆÂ£jÊü—ºét£®¾G.UOÅ*4\\9ÛÓÚ8¨Ý76šnÓÒ×;O†>+Ð¼]âVð‚!‰¦1y©%¶¢í©œ‚²^ý=«Ö¼=}po×BÔ-ÅÂµ¹ÅÍ³-8Î\'/Çuù}	ÍyÂÏ	|6Ð´!áÏ‡ž$7:}‹+\\G{¦Ok5î21=Ã*ï3åí\0ðTÕ¼E«ÅÕítÓeä¸‘d^G8ýpx9¿–|[«O1Ì#8`çJ×JU%Q¹è¶çmÙ_dÝ–¬þÂðÓ/«ƒÊ>¯<e*ózµESPƒ{/r×~|ªûjaxÆ[_Ô!¹Õ¯,îc±‘äÓ\rìAV+ˆÔ.AùŽXcŽªs“Šó/øQ>2üGºÖ<GáètNûC1¼bå%.£ò™Xª†]Ñ	pA\'Öüu [x‡E7žŽÎò^Ÿd¼´rÉ\'iá—o=O\rÖ¸O3Â>Ô¼)á­mtûmKKÓác¨ÜBc‚}:2ˆ¬ÊÊ»[ÊÀc¸í ’Õð9%C(ÓÒ_\n¶Ž*Í¶—ª×O3ö\\!ÃýÇ²IkµwWµœ–ºn®ºšßt»ÿ\0xr×ÂšØ[»ë›{H¯ ]ª»˜+8$ž€ç#ÓZè¼-ˆ¥ð‘á/ÜÞ^ë–qÇ}\0š8ÚY6²»qµvñÝÁàó\\¿íãÏ\rü6\Z_õKÏ>;-N+”±·”y·;\\\0g…«3ÔŒÓ¾ñGÅGS¶ø÷á1ewg«øbÊäX\\©ó\"É# ‘&yA0áƒÅË\'Sª”W;ø•½ç¥¯¦ën—V{ždð•gFœ—Á+Ù¿æ]?_øfzV›{\'Ä-_ûË\\Û§X†6÷S½‘¬Ÿ),>éúuí^Kâ­oÄ^ñ–§ˆ´%›L·s`\'µftIRà¬xÜKí·¨ëÁô»‰>¿ðÌú~“ã[+-kSÚ3+“Î Ÿ’)0Ir3Ç<f­èþÒ|á”*šØº!oc¼´W‘ßÜY‰ÝÓŒ¹®JXÚtoL,¶W½ì´Ñ»\'kimOš–OEbY\'víg¥Þšß§ùžEá?C\rÎ­¥\\Ç%­Ôÿ\0òŽf—h\0QˆFç¸¦=­|_ðñÔ­|;dÚoÚÒ9%U2î	Óë·“žÝ+Sân³ãÏéxÂº,\Z&Ÿ\"ôË‡ˆˆ‚>~Pª1ÐßˆÉ•€ì<Oâï[kZÌ×¶º–›hñylˆKHbAÁY3×¸<œöN¥DÖ2/Eu®ú«\'§ôžŒû¼ªsÁÆ©5ké®ºÅ¥{uŸ¶“á™tÿ\0øJ/¤º\"/ìþÊ»íec· \"7|ÌŒçšÐð‹sðÙÃ0èW—3È|ëUæFVÝÉ¼\\ä‚9‘ß¾?Ã½{\\ø•­ÃâMkÃZ¾Š–eŒ6êË™÷`vr0«òíÚ=I¯D²V²Ö¦Öµ/65x‚[Û•ÜYS$•\0žI=\0NçÉÆU*oWW»ZZý,Öû¶÷W¸±µëá¢èV³oY/=,“_6÷Wná„´ý2ÝüAmªLïæ5.¥ÞÄŸF<ž{Jéâñ5æ™¦½Ü\ZeÔÈ¶Ø’X—w–£$¶Ñó ô¬o‡vVj>&ñtAD†HâžåTŸ”N:Œ×E¥øÓÃ–ÓMQH™„ÀÀ7¸Ý€ã^¶O€•LF\"¢Œe¶«™Ûµïn×kåßäó*•j¹RIÎQëgeäö½½OŸ>#x§JøâÄñf`ÂO Þ\\ \r(Ìp1Â‚N3É&¸ýf?x¦KM;ÁK*HÒ³\\ÞÈ¥R8€ã½z7ÇMq«Ïqáæ‚(onƒ´Q®Æ¹`GOsŽ9Íp¾&¼}ÃámíÌ÷*‰,±ç*›lc¦@?\\×öa°|«õtù\\Ýìž·oM~IvGùýÅ‹2©Å8Écšuyß7*²m;.UwmÝ·Ý·vOâŸÚÁ{ƒk,-¨Ú^F÷÷ˆEÔl##i\'†^ùîFkÂ_´E—ÁÏ¼ñÖk.¦›ïmoäF7,~îàÄzc§jùóÁ/«C¦kº×ˆõ‹kX¼Ö§h,üã,«šV8·¹\n>P:œí\\ÄØ¿â?¼hþ9øËâñ£i×ä5žŸ m™z4Œv–ÐcŽ½ëîiW¡B\n*\'em?/ó9iÑ´”çW•%d÷ûiñ¿í	¡Ýxâµ‹ëÕîCN m®­Û;Nvû}+²ø•ñWHñqÖ`ñEÁ–gÎŸwj¡<´Ç1œõëLø9ÿ\0¾CÀ?o¡·›µ©iëqs7N#`?\nì¾ þÉ¿¿gG¬¾«ÿ\0	.›{oo£÷ˆ3Ë:u^;ŒŠðêUÂÑRXY¦Öëí/OÕ#,nÒÃóP¨äž¯KkÝv=§à‡Œþ2k^!Ñ5?Ï%Æ…eqÔ²Þ¸D™GÝ`T†‚¨<€Q^ÙãO†5ÛÏx\'ÅöÚ¬ÐZ¥Þ¡§Ú³n†` ·PÇ§9#8¯‘&ý¨ôkÏ…úG‚|.e[Ëx<«¹æP@xcŒžXg<p}›öHÒ|!ªjZ§Æ¯M§i^-Õc[m6îY–/µÚªaŠÆNÖ$\0¹vã‚søßˆÜ5ŽÏòÚ¹¦>j1¤š¡+ÎrÝÞò³M+´’v]•Ïßü-â,§\'«C,ËêÕ«iÖœÚP¦¬—*²néÙ-Z»Þí¥êvzv‘\r­ž¯áËXkiZ) dòÃ>Â6Ž˜Îp;sŽØ¯=ñ•·Ž Õm¼G¡Û4ÖvÍ\rËè±Ì‹-¬±ÊEÄ^d„‘I0<`¼“^…£ëñx‡DÕ4Ë}*ÛPŽÎìÂ·ÔaÈwF#ïnÚHçÁgK¦xZòöÛZ’Áîm¾ÊöÞOÎªÅxçŒdsÒ¿—°øŒFOŒçš÷»5{&¯f·¿ÝäÚ?©px¸E¹5Îµ_Ítíº·]tkU}Ï<×¼#ðÇâƒâ]:á›Ski¥ÒT/ÞZÄ`2pÍ‘… Ñà}GSøAü ž-·i|;khíe~–åÚÝšV‡’ãFÀ‚qì:öðžðÞßSºÓ¼7\ZéS#\\Þ¢¶ÇiW£&:\0õÎF9ä|oeãÏ‰·ÒÙÇ®fj^ÖÍÍ•œÈ­‘yeci0‘wy‘·÷DƒÔ\Zöp˜ÚX×8\'jO¤¬ÖÉ|+g{^Û\'uµVŽ#ët%;Ð½ï\'¬[Ùévž¶íf¯½éþ\0¶¿·Ôu´µ—Mq¶âêX¾XC}Ö<p3€{aòzU|+ÕìgÙáOj61ù@Â°^±H›+*1+Ó`àç94{ñ/ÃsxTÒ´¯Ùù2Üim|·L I•ÂpLnË´ç àòA¥ðWÄ\r#Å\Z\nÚø,µÜV×íi+Ë&×€«`¶Ö26	Sœ¸9ÛÁÁõ|U\Zw†ñz«Þ6zÅÝÝ;ê*~ÒŒ‹»‹´¯fµÙÝi®¶Ý;iç‹kãoŒr¬zGÄ\rC¬Á\Zù=¬j»ö’D€aºs\0þŠí¯¡ñwŠ´·ð|Ö©i¤]iŒ–÷–ò¼W–ÌÙ¤†#ƒ¸ô¤3[i\'„j×ÆÙom›N]Èw¹r†ãÉ8aŸîƒU¼[á+ßköWÞø‡©YKb….­t½JDŽåƒ.åFÚH;¹?6	è+Xã*¥d£M5«Q¾Í=¼šZôÑR¦µHòÁAjï¯*}ì¶wÓM?OÃ?Û>	á™£“RšÖ(ÿ\0{+ìiW\0oó>‡$‚I³©x˜é÷z¶‰<z{\\l‚xdn“\nÙÛ·#8ëÐò;âêú^» jz~±¦<2m…¢»’ä—3r»Cƒ×àç<þ}UÕÓx¯@]ëHŒ	^?5KnRT†ÊŽ0A\0õÈýkÍTcŠª•“NþR¿¯¯KžN%©J5šMIêÓµµ×M¼Ö…ß3V²Û&˜7Ü9vIPmAßHç§ùÅc|NÒáµ·ÕtÑØo7’0Ñ\0Ïm§=xæ´ìlæÐõ8ôé4É\n2æÞx§x£0{w=p0¾#üFÓolî¼µ7Ì¡ffÃ¹åHàîê¿5û†X|ULò8háã8Å®e$¥[«»Êöj÷O{ì~câ%|!©Vx‰R¿Á(¶›•´^ëÕ;Yô¶ýÎ\'Æš^¯¬ÎÓYLU>YXgh=qž2xæ¸mNÞÏ@Ym\'	su¸f5C¹•º|ÕÛC>·áí\"[U¾i­Ùóæ-ÜFG=«þî¤ŸRñµªÀ¨\ZiÌAp wn¼WõN3àªªŒœÝ­Ê®—k%¥—d ×£ˆ­)O™)=[z·Ý¶Ï˜~!ü5ð†­s¨_é—7ö‰¤¹‹÷RÂãHÇÞVkÂþ\"ÖeEðµ¯LÑ-Á#Ê£1’xSëô¯Dý³>#ü3×<3áIôoéï«iú‘HÅ•ÊJcƒgÍ„ár_ïW—ëš–w<,´´xãyW\rØ‚+è¥Ãˆ”)FðOKôOSËö–4¾óÜü%ñ_Ä>±´ðü×ÓÚCio\ZFrUz@Á\'­{×Â_Š:\'|=%î§opC¢le£9ßƒ_ø“â¼^º~›áÛ´6öö¥d¨»ÿ\0ö«¾*x¯Â^&¹xHºÔb·“zK7AŽvä\0H•ðYž_Œ£¨œ,”›M_k÷=ZôZm7ëFýˆ>	ëZœ·º>€mn’àOjCG‚w/ÈÀ«€F6°*q‚ª~ ý™þ;xCá¬¾	øyã‹Ù®¦¼yî¼Eª°¸¼³dÅ \\QÔŒq€áßí}áÿ\0øÃÞ*ø—m4Qjo43_Û®øí¤GÀ,ðãœö¯¦|	ñ·á÷‹4„žÊñu(äŒ’Ñ²\\‘Ò½ú\\¯4ÃÅbá×[hü¤¿¥{=ÑïaqXœ%\'õ¸s-y]ž«\'m/½›W³hùGà„¾5ü,Öï,D†ÖÆø™$@à°Ák¤`]Ø$³*àäãÙü=qâ-nÊKkˆ¢,ÒÅm|ŠD’¢eCœ}à@oâ\n˜WMã\rSÂ¾\'¾º:]ü–öfY\'`²3dü M£Ó’?ºs\\ø×FÓ¼•¥i­öÈmV8ÎÁ´apXßÓÜ×â^$ðN#Ìç‹ÃÁ%¢rå]¯Ev¢—Äîú-,—îþñ>_Ãù0ê^m¹$ÝõoHßk»ß•Y.ªí·Ëêë©ø“D–Ê]XÝ¢ÌÐÌÁ–ÀlžqþM.½zlµˆµ‰ô%‘eoö…¼ÛZ=Ø9\\™ÇN{Ö3iÞ+km7Ið®¨b“RÖ¡:€Uû?›Ü>Hùq•¼£5Wà•üþø\Z_Æ¶wºí¼_jHL¹`³±háÊ§¦3Çø¶sÀ9Ž5ý‚æ$ìºGŸ[î¥$´?mÊø“/Æà(V“_½“Œ\"·•ùš––²q§}{«Øü2’}lßÈ°Ãâ=\"âîK+¦€2\\A<­.ÉûÊÈàð6ò\rY¿Ò,u×¿Ól´&ƒWƒ~Ÿs{£M±à3ÄŒeLß*²°S#$bºoÅq¯i÷ox¶7ÎúœÄ’\0¤òc¨ãÐû×þ!¶ð%ï›Â76²Z&£,±NXåÄˆÝCmrÔg®\0¯œ£OWÉˆmZÖù»Ù;­m®ÛÚçÖC^¼¥gyE$’ó{n½Ý[KÏO>“Ãº5§„tˆ§ñ.­á·‡göhÕç\Z \'`ÛgËŸsNÓ¼Qoi§ÚÃ¨hYßÝFAh±Œ†ÎqíAÏZÛðÎ¥kãO&®±%¹7,…JÛ’VB8\'oíPxl.ä´ñ’(ß¹œ¨\0À_aÈçó¢¦_ˆ«ˆÖ4skW¥Ÿ•´×~Úœ4ñªBr¨®ÓÕ\'m»%¥¯¿¡³g¤-í¯Ûo56ºwM¾G—‚™ð\0úÓµ?¿‡¥³Ö-5Cg-ÈÉcr#ƒÀ8ÏåZO¡[$^}•Ô4› b<Ò3“¦=øôëÆücø‘£øPÓŸP¼žòVWó-\"™X.áÔž7dŒõ}«ë°<;WÝ<5*–Ñ¦ìõMÊíß¦ß-O™Ì³ìQ‡x¬Ue\nIÙÝwÑ+[»ýt4þ#kž(Ñ-ìµ\nÚ+Ë¢|¿³Èæ5H\'Ìw€÷ó¾¡â7³ñµÔzÞ¦fÕgäh£?(brFXç¹¯Eð?Æý/P7Þ$Hc¸–ášÄ}ØÕð¤öÇ¿ZùããxÏÀßµj:96!ŒÖ×ª¤ÆèÃ€@kú§€ø;/á¼¢5#%<Díí$µ·•¼¶½•ísùÄ>4ÅñN>ôú¼¹;k-ï³½_—ÅºŽ±mm¢iÌcŽf“í²Ìx\n®TÛ\'½yŽ|ñ“Wxu#Y¹}­Þ{åk• ¢äíÚqéÞ©|2ñ,ÚŽuâk_dkŒJ¦Y06ò1Y¿~\'øëM°´ð¦£2èRºL/mNì#¤ŽÞ¾µ÷•hágJUZ~êzÇFþïëSáà¥Š³­\'½ÿ\0à$|[ûSþÆ¿?d­~ÛÄz¡s§O!ÌÖŠÙP9R9õçÖ“á¯í+*øet½kÀCUeØoüÂ¤)ètÁä{×èW‰~%øWWð5Í¯Ä±i©éÒ&Áˆ®Ý‚ç7¦9¯Ÿ|]û3ü#7_ð³¼c-þŽ\'YuM6)<™ÕUu7¹ã>µó¹>i‰Äa¹k\'Êíy+¯¾ÖûÖž‡v9Ãã°·’r·É¯U§Þ´ïcÏ<5kã?z Ñ~hekÖîñ‰Ú€ûÿ\0‡ZìµŸ„¶?|!{\'…õ¯¢€ÿ\0gùš6\'¾¹ß´ºN¡ká„ö)¢èÊgò›ÃÝ‹v‚6ãÔÓþ|qÓ.%ò<KnêÓÞKlHÝž óÞŒËˆ£Z1¦¯Òûú·«<ê$ù-Ðê>|Zñ÷ìï­|1ñîˆ’ê°ëS\\Z-Ñëó¹Á ƒÀçš­ðCãWÅ†ŽºÇƒ|Sya(¸d6…²ƒ”<WŽxáüIcñ&{Ï„sylÓîMxÔ£;©?6?:ûóá?À½PøcâGN¶Ó5FÅE¼±@5•Ã.YUŽq†çÛ¥t{UNõc³Õ®ÞeU§9É;Ùì¼ŽsÄŸ·g‰>xrÓWø±ocý£«ám­DE*õšE•B}y=jµïü^†÷·¾?øsn-/$Xa¹´¿Þ“À]Ÿ.éžã5ðÏÅkOx—âÕ÷…¼Cy4Ú†pÖ÷ÓÌÄ–db7{d{W£|2ð&®ÛÚxÆ~ÿ\0„‚Â[¸Ùt°Íæ	sò´E~e|ôÛSYS¢Ü§ïG¯EÞëÐÛžty¤å~Š×Ôûßáßí_¦üaðÔ‡ÀŸï­.t]6S­‹™Õ­Ì.Ûp¥Nî9=¸«øCâ÷‹µ½Ä~\'¼Ôüû¦ºÓàŒ4ca¸\n€p\0ÈÇ÷*Ø»Â¿¼%ˆü<—\Z­´>\"­e\Z…°X˜÷+ÆàrH\'9Çá\\ß‰´ñm¢Ê>)ºrM\rÕ„ÈVK†‰[cí©Ü­ê0àŽ||T8s…”«rò¶”ôZê¤·å“Ñ·¦º»Y•åœuN¾x®Yºwm&åÁíÍïrèÕ´WjýÇ/ø;ã¹WY¹h!€‰>Öò	™“ËÏ®aöÊ×¡ø#W³ñ×„,utýörÂéqlŒŽ\09ä\0pxù†Zùƒ]ðt\ZçÅß~Îþ2Ñõ=JÆHžËø\\‹‚öé,Á$ nÅ°sœ×iû=ø‰>Zø“áYÖæK]íçÓe•Ù¥hZ5ß»?{œ}@ô¯’Ìø\'%ÎòÊ40®*¬Uã/îß›Tž—”¯ß¡÷yOñçØÊÙœ$©:r+|VJ<­Û›–4í¦šßKž½à9µ¿‡Þ<ñ±+q¥Ý^5å²O&DGfYwyá}ëÐüAâ¯ßø$x¾ç\\¶Xo-L±¹`7ª²ƒýàJŒv\'¾S¼ý¤t¿Û\\¿‡EÀŒÎð‚Ñ•ÛŽÿ\0L×Ï·µÖ¯áÚq<;ñ#Àú„Òí$¹³¹°´’æKÛ¢«³ p€óùšô³Ÿò¬ÚtÒ|’…¯¶¶I.É=NÚjô<œ£Åë,J¦ª6ç$œ­ËÏ.{lÛøž—Û—kNø»Åþ:ÒïšÍ5­Ilmîúr%Û’Â2…8ã¦kÕ|[«ë3ÍuªkÜM)Ì“O)¾\0“ô•xwÄ_ÛCâV¥ã½+â†‹àôï[!†ëL½Á¸–\"Ã,áI\0÷\0WÓžðï‚þ=ü8·ñw€õŽIâ2E&Ðpøû§ÓÒ¾ÿ\0	”S«IÐÃµÏg¢»îÓÒ÷{÷zŸ‘c«â«Õ›­RVnö»iv²oK^Ë²8Fñùg{\"4`|Àýîx¬¿¿hOÚÓáî‹ð«áOíô&¾i5NâFó\n«±)†âOQ÷k3ÄÞ	ø«i\Z“xÄ,ú–œì·ºKÚÆ—2ç;X‘ŽAEbþÍ?´Îµ¤]\rUº•n¬®vI$„ïÆìÄóÇN}+—.£õLz•Ové­¯ÿ\0ÆYaeÏ\r×—ãcÇ¿²{þÆÿ\0¯4‹ÿ\0ˆzŸŒ|K­*Æ×wlÛ#+÷V$$àsœÕÏÙâ®ƒñ+ÀGàÄ;è‡ˆ4˜š[Ds‰%‡$ü¹êW¡˜¯oñ„¶Þ)ñdŸ¼U|·¶––ÌÖË\Zü¶ÃoÎHîÇ×ð¯ÎK¯h7ŸðQ­Zðf¥,ÚqñDÐ±BA|:ñÛœÆ¾–œ}ntý×£óG¯Bù¾tå£‚¿7™é_³‡ÅO‰sxËNñOÇßø¯L[ÓX\\E%ºÆ¾©°šúÃÆßþøšI,ô_[è\Z2Ù¥¼ijž\\êì2Û˜}ìäž(Ñ¼W¡ ZÞÞév¾l©ºo³Û„ÜsÎkÄ~0xÅü7ñAüÅ|’…º»ûA!mQÁmŸ.>`¸äúŽ+ç0øìlòÇõU+ÆZ-×òì´ÛmOƒ«ŒŽkK\rwKZÞKôO©ˆ¾é7wÚ‡‡|¢Ï¨ØÝ7œ®ñ‚Ö.Ã8Rx*ÇŒ+Ê-¾\r|Xðœë»à‰­åIï/óÁÈü8­ßGûMøýìGÀÝbóÃ\ZbÝI&§¬gìðºtT,H-Žx\0Ö~µñWãoÃ9ãðµÇÄçÕÚ$Sss™Ð±ê•F\n(T§^¢RpöuÚ^z½?­±ËÞ&³Qr„¤÷ZßN®×I¾Æ?‰!ñújÐø«Q¦†b‘HöŽ˜üëÑ4¯Ûâ×ƒ-ô­[©g³MF\"¿p/>ƒk\ZãÃW¾™<O§x‚Iwâêúg%a›r†áOQŠòÿ\0Ú7â.¥­øªÖÿ\0DÑâÓ­/!ýÖÂIb¼o|×mGCZT4mhíÓËÕ…8áq¾Zoš=ö·•‹ß¾6Ù]~Ð¾ ñ<¶ˆ‘j“,’¢œ4lQyµÙü)ø¬¿ð’iš‡†&Ž{˜¯ckTg!„¡†Üã‘Ï91šñ¯…ßü%ñ?Å-«üUø„º=ŒuÌÞYy®Ž™ÇsÒ¾¬øg{û*é:î“à¿GucÅþÂñú1ºg1ÈDŸj™Ð»‘Ó£‘Åqb±0¡%†…7;é¦Öõëèµ=ì·\'†7¤ù}šRr{hÒÝé{µúŸLê)ãßj_ðºàð«Ü?ˆmSíö¯+F±Ý…+\0£i,àÄ£Ž8ã§Ö¯4XþOâ\rÂk{­böÖ5{XUæYšh•_å=·²±›®1X¿þ-|=ñ”Zƒ4[‹‡µKøWšªÏoÌÈäf&”“Ì1ÎÖÆÒNç¶øð3ÆÚV§¨Ã£xJ÷í¶÷\"{ÝgQ/c‹]B &f\nJòÀŽ;ñÎd¸bœãŠ“§+Þ×</³¾ŽÉ¤íÍmõ?¯8–æY|\'NTÝ4ß?,àÔfâýèÙû­½íg®ÇWimçjz]Õìw××oeÜˆñ[$I\'®Á—=É.£8óŸŽ|àíZïUñ³+¦©xÐ&ÀKG“ò‚¤e’BƒÉ[ø…zïÅ)¼gð‹D¶ŸÇŸfÔ5\"¶š^¡å©š êaåÀŒA9ff3?‡|}#xËQ„öü5Ž¹n]Ê“’ÀsœôÛÈZùžâ<~+J®NU%ËY¥	5w\')^Ê+eÕr»££ˆ²l\r\\¶­l\\áõkMÉ¥ÎÛzG‘-unÎÚ¦Ú³¹òö§à?\ZxRËíZ–‡sm\0f6ÒI*3Ð†ÉÁç®3ã:Oã2K]PKKèâŒ¤™í·£óüëéÏéWž%ðïü#¦;×Õ­Z{ÔrýàeHÈ”—Ã˜NBòÀ\' ò7Å»É<5ñ6ëBó•LL‘%ÄØvÚ2F3OLŽkúO(Í±¼7-YEÖŽ’åw[h×“]íªgò\Zð­\\‡8uð´ç<ýè9+?5ÒöòÙ4szVñ\'ÃÉh·:<\ZŒ*à]sËŸzú§Ã>*ð÷ÁuÐ|Ià+˜_IÕJwM‚çq¶¨ùÂö÷â¾q·ñv¥¡±:¾r¨‡à[8w8â©kÞ0±Õ§Ib×!´Œýáù†;WÕásO«+ËIt{5câ+*˜‰.d¯ÝP~ÖžÕ¾ÞAû_|8×\'Nž8Žµ² Æ„Ä`Â¾tñë^|U†oŽßt&²¾ÌÔ4À€Ä_½2^äu­Ïükñ•Ç„.<eã››Í\ZêÝáºÓ%”¸’3Áp>”ï‡_-¾\ZÞ[ÇOšÖ\0Ñ›[Ã…PO Ï§5¾7•c§tùo«Õhû¯&8ºžÉ)¤ÜtOË³*|ý¬ô¨,¤ðça¹·1´¶³F[h#ükæˆŸ\nµo„_ôÏé¢WÓ%Õ}3R·ˆ…`X‘ŸFç§­}ã¯xCâWŒ¦ñŸ†41§O8ó.,­$Ä,ÝØdg¯°­\'IÐõ=ßÃ>&ðú\\YG6HwÜ1ÜsÓð<WÌË>§—â=œj)Âúï§š£ÐêÂf²ÙIÁ{²V’ÿ\0/?ÀÿÙ','808_image-3.jpg','image/jpeg','/../ximages/item/28',62542,NULL,NULL);

/*Table structure for table `item_price` */

DROP TABLE IF EXISTS `item_price`;

CREATE TABLE `item_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `old_price` double(15,4) DEFAULT NULL,
  `new_price` double(15,4) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_price_item_id` (`item_id`),
  KEY `FK_item_price_emp_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_price` */

insert  into `item_price`(`id`,`item_id`,`employee_id`,`old_price`,`new_price`,`modified_date`) values (1,2,38,3.0000,2.0000,'2014-05-21 13:16:40'),(2,9,38,3.0000,1.0000,'2014-06-25 21:57:24'),(3,39,38,2500.0000,1500.0000,'2014-08-30 19:00:53'),(4,36,38,2000.0000,1000.0000,'2014-08-30 19:01:11'),(5,37,38,9000.0000,9100.0000,'2014-08-30 19:01:27'),(6,40,38,9000.0000,9100.0000,'2014-08-30 19:01:43'),(7,38,38,7000.0000,7100.0000,'2014-08-30 19:02:22'),(8,35,38,9500.0000,9100.0000,'2014-08-30 19:02:46');

/*Table structure for table `item_price_promo` */

DROP TABLE IF EXISTS `item_price_promo`;

CREATE TABLE `item_price_promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `unit_price` double(15,4) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id_udx` (`item_id`),
  CONSTRAINT `FK_item_price_promo_id` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_price_promo` */

/*Table structure for table `item_price_promo_dt` */

DROP TABLE IF EXISTS `item_price_promo_dt`;

CREATE TABLE `item_price_promo_dt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_price_promo_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit_price` double(15,4) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_price_promo_dt` */

/*Table structure for table `item_price_tier` */

DROP TABLE IF EXISTS `item_price_tier`;

CREATE TABLE `item_price_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `price_tier_id` int(11) NOT NULL,
  `price` double(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`,`item_id`,`price_tier_id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_item_price_tier_item_id` (`item_id`),
  KEY `FK_item_price_tier_id` (`price_tier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_price_tier` */

insert  into `item_price_tier`(`id`,`item_id`,`price_tier_id`,`price`) values (8,1,4,1.5000),(9,1,5,1.6000),(10,1,6,1.7000),(25,22,1,5.0000),(26,10,1,1.0000),(28,9,1,4.0000),(29,34,1,2.0000),(30,34,3,3.0000),(56,40,1,10000.0000),(57,40,3,11000.0000),(64,35,1,11000.0000),(65,35,3,12000.0000),(66,36,1,2000.0000),(67,36,3,2000.0000),(68,37,1,10000.0000),(69,37,3,12000.0000),(70,38,1,8000.0000),(71,38,3,9000.0000),(72,39,1,2500.0000),(73,43,1,1500.0000),(74,41,1,10000.0000),(75,42,1,9000.0000),(119,167,1,1000.0000),(120,167,3,1000.0000),(121,167,4,1000.0000),(125,161,1,2500.0000),(126,161,3,2500.0000),(127,161,4,2500.0000),(191,149,1,1000.0000),(192,149,3,1000.0000),(193,149,4,1000.0000),(194,148,1,500.0000),(195,148,3,500.0000),(196,148,4,500.0000),(437,165,1,1000.0000),(438,165,3,1000.0000),(439,165,4,1000.0000),(473,158,1,2000.0000),(474,158,3,2000.0000),(475,158,4,2000.0000),(509,160,1,1000.0000),(510,160,3,1000.0000),(511,160,4,1000.0000),(731,162,1,2000.0000),(732,162,3,2000.0000),(733,162,4,2000.0000),(827,52,1,9000.0000),(828,52,3,9500.0000),(829,52,4,8500.0000),(833,117,1,7500.0000),(834,117,3,8000.0000),(835,117,4,7000.0000),(839,51,1,10500.0000),(840,51,3,11000.0000),(841,51,4,10000.0000),(842,66,1,5500.0000),(843,66,3,6000.0000),(844,66,4,5000.0000),(845,67,1,6000.0000),(846,67,3,6500.0000),(847,67,4,5500.0000),(848,55,1,8500.0000),(849,55,3,9000.0000),(850,55,4,8000.0000),(851,87,1,9500.0000),(852,87,3,10000.0000),(853,87,4,9000.0000),(857,136,1,7000.0000),(858,136,3,7500.0000),(859,136,4,6500.0000),(860,159,1,4500.0000),(861,159,3,5000.0000),(862,159,4,4000.0000),(863,57,1,10000.0000),(864,57,3,10500.0000),(865,57,4,9500.0000),(866,155,1,3000.0000),(867,155,3,3500.0000),(868,155,4,2500.0000),(869,74,1,8000.0000),(870,74,3,8500.0000),(871,74,4,7500.0000),(872,144,1,9500.0000),(873,144,3,10000.0000),(874,144,4,9000.0000),(875,145,1,7500.0000),(876,145,3,8000.0000),(877,145,4,7000.0000),(878,58,1,8500.0000),(879,58,3,9000.0000),(880,58,4,8000.0000),(884,60,1,8500.0000),(885,60,3,9000.0000),(886,60,4,8000.0000),(887,59,1,8500.0000),(888,59,3,9000.0000),(889,59,4,8000.0000),(890,90,1,8500.0000),(891,90,3,9000.0000),(892,90,4,8000.0000),(896,146,1,7500.0000),(897,146,3,8000.0000),(898,146,4,7000.0000),(899,163,1,2000.0000),(900,163,3,2000.0000),(901,163,4,2000.0000),(902,143,1,9500.0000),(903,143,3,10000.0000),(904,143,4,9000.0000),(905,138,1,7000.0000),(906,138,3,7500.0000),(907,138,4,6500.0000),(908,45,1,12500.0000),(909,45,3,13000.0000),(910,45,4,12000.0000),(911,121,1,7000.0000),(912,121,3,7500.0000),(913,121,4,6500.0000),(914,124,1,11500.0000),(915,124,3,12000.0000),(916,124,4,11000.0000),(917,120,1,7000.0000),(918,120,3,7500.0000),(919,120,4,6500.0000),(920,118,1,7000.0000),(921,118,3,7500.0000),(922,118,4,6500.0000),(923,123,1,7000.0000),(924,123,3,7500.0000),(925,123,4,6500.0000),(926,122,1,7000.0000),(927,122,3,7500.0000),(928,122,4,6500.0000),(929,119,1,7000.0000),(930,119,3,7500.0000),(931,119,4,6500.0000),(932,139,1,6000.0000),(933,139,3,6500.0000),(934,139,4,5500.0000),(935,140,1,6500.0000),(936,140,3,7000.0000),(937,140,4,6000.0000),(938,141,1,5000.0000),(939,141,3,5500.0000),(940,141,4,4500.0000),(941,153,1,2000.0000),(942,153,3,2500.0000),(943,153,4,1500.0000),(944,75,1,6500.0000),(945,75,3,7000.0000),(946,75,4,6000.0000),(947,80,1,5500.0000),(948,80,3,6000.0000),(949,80,4,5000.0000),(950,76,1,8500.0000),(951,76,3,9000.0000),(952,76,4,8000.0000),(953,152,1,2500.0000),(954,152,3,3000.0000),(955,152,4,2000.0000),(956,147,1,500.0000),(957,147,3,500.0000),(958,147,4,500.0000),(959,79,1,6500.0000),(960,79,3,7000.0000),(961,79,4,6000.0000),(962,83,1,8500.0000),(963,83,3,9000.0000),(964,83,4,8000.0000),(965,84,1,8500.0000),(966,84,3,9000.0000),(967,84,4,8000.0000),(971,85,1,8500.0000),(972,85,3,9000.0000),(973,85,4,8000.0000),(974,81,1,8000.0000),(975,81,3,8500.0000),(976,81,4,7500.0000),(977,78,1,6500.0000),(978,78,3,7000.0000),(979,78,4,6000.0000),(980,134,1,6500.0000),(981,134,3,7000.0000),(982,134,4,6000.0000),(986,102,1,6500.0000),(987,102,3,7000.0000),(988,102,4,6000.0000),(989,105,1,6500.0000),(990,105,3,7000.0000),(991,105,4,6000.0000),(992,103,1,6500.0000),(993,103,3,7000.0000),(994,103,4,6000.0000),(995,107,1,7000.0000),(996,107,3,7500.0000),(997,107,4,6500.0000),(998,106,1,6500.0000),(999,106,3,7000.0000),(1000,106,4,6000.0000),(1001,104,1,6500.0000),(1002,104,3,7000.0000),(1003,104,4,6000.0000),(1004,135,1,6500.0000),(1005,135,3,7000.0000),(1006,135,4,6000.0000),(1007,137,1,6500.0000),(1008,137,3,7000.0000),(1009,137,4,6000.0000),(1010,133,1,6000.0000),(1011,133,3,6500.0000),(1012,133,4,5500.0000),(1013,132,1,6000.0000),(1014,132,3,6500.0000),(1015,132,4,5500.0000),(1016,77,1,6500.0000),(1017,77,3,7000.0000),(1018,77,4,6000.0000),(1019,82,1,11500.0000),(1020,82,3,12000.0000),(1021,82,4,11000.0000),(1022,63,1,7500.0000),(1023,63,3,8000.0000),(1024,63,4,7000.0000),(1025,65,1,9500.0000),(1026,65,3,10000.0000),(1027,65,4,9000.0000),(1028,64,1,9500.0000),(1029,64,3,10000.0000),(1030,64,4,9000.0000),(1031,127,1,8500.0000),(1032,127,3,9000.0000),(1033,127,4,8000.0000),(1034,126,1,8500.0000),(1035,126,3,9000.0000),(1036,126,4,8000.0000),(1037,150,1,500.0000),(1038,150,3,500.0000),(1039,150,4,500.0000),(1040,131,1,8500.0000),(1041,131,3,9000.0000),(1042,131,4,8000.0000),(1043,129,1,8500.0000),(1044,129,3,9000.0000),(1045,129,4,8000.0000),(1046,128,1,8500.0000),(1047,128,3,9000.0000),(1048,128,4,8000.0000),(1049,142,1,4500.0000),(1050,142,3,5000.0000),(1051,142,4,4000.0000),(1052,125,1,10500.0000),(1053,125,3,11000.0000),(1054,125,4,10000.0000),(1055,130,1,8500.0000),(1056,130,3,9000.0000),(1057,130,4,8000.0000),(1058,166,1,2500.0000),(1059,166,3,3000.0000),(1060,166,4,2000.0000),(1061,50,1,8500.0000),(1062,50,3,9000.0000),(1063,50,4,8000.0000),(1064,54,1,9000.0000),(1065,54,3,9500.0000),(1066,54,4,8500.0000),(1067,46,1,9000.0000),(1068,46,3,9500.0000),(1069,46,4,8500.0000),(1070,48,1,9000.0000),(1071,48,3,9500.0000),(1072,48,4,8500.0000),(1073,56,1,9000.0000),(1074,56,3,9500.0000),(1075,56,4,8500.0000),(1076,47,1,9000.0000),(1077,47,3,9500.0000),(1078,47,4,8500.0000),(1079,151,1,2000.0000),(1080,151,3,2500.0000),(1081,151,4,1500.0000),(1082,62,1,9000.0000),(1083,62,3,9500.0000),(1084,62,4,8500.0000),(1085,69,1,8500.0000),(1086,69,3,9000.0000),(1087,69,4,8000.0000),(1088,72,1,10000.0000),(1089,72,3,10500.0000),(1090,72,4,9500.0000),(1091,68,1,8000.0000),(1092,68,3,8500.0000),(1093,68,4,7500.0000),(1094,71,1,10000.0000),(1095,71,3,10500.0000),(1096,71,4,9500.0000),(1097,70,1,12500.0000),(1098,70,3,13000.0000),(1099,70,4,12000.0000),(1100,73,1,10500.0000),(1101,73,3,11000.0000),(1102,73,4,10000.0000),(1103,164,1,2500.0000),(1104,164,3,3000.0000),(1105,164,4,2000.0000),(1106,157,1,6500.0000),(1107,157,3,7000.0000),(1108,157,4,6000.0000),(1109,154,1,1500.0000),(1110,154,3,2000.0000),(1111,154,4,1000.0000),(1112,95,1,9000.0000),(1113,95,3,9500.0000),(1114,95,4,8500.0000),(1115,100,1,9000.0000),(1116,100,3,9500.0000),(1117,100,4,8500.0000),(1124,99,1,9000.0000),(1125,99,3,9500.0000),(1126,99,4,8500.0000),(1127,91,1,9000.0000),(1128,91,3,9500.0000),(1129,91,4,8500.0000),(1130,98,1,9000.0000),(1131,98,3,9500.0000),(1132,98,4,8500.0000),(1136,96,1,9000.0000),(1137,96,3,9500.0000),(1138,96,4,8500.0000),(1139,97,1,9000.0000),(1140,97,3,9500.0000),(1141,97,4,8500.0000),(1142,92,1,9000.0000),(1143,92,3,9500.0000),(1144,92,4,8500.0000),(1145,93,1,9000.0000),(1146,93,3,9500.0000),(1147,93,4,8500.0000),(1148,101,1,9000.0000),(1149,101,3,9500.0000),(1150,101,4,8500.0000),(1151,94,1,9000.0000),(1152,94,3,9500.0000),(1153,94,4,8500.0000),(1154,156,1,6500.0000),(1155,156,3,7000.0000),(1156,156,4,6000.0000),(1157,114,1,6500.0000),(1158,114,3,7000.0000),(1159,114,4,6000.0000),(1160,110,1,6500.0000),(1161,110,3,7000.0000),(1162,110,4,6000.0000),(1166,115,1,6500.0000),(1167,115,3,7000.0000),(1168,115,4,6000.0000),(1169,113,1,6500.0000),(1170,113,3,7000.0000),(1171,113,4,6000.0000),(1172,112,1,6500.0000),(1173,112,3,7000.0000),(1174,112,4,6000.0000),(1175,111,1,6500.0000),(1176,111,3,7000.0000),(1177,111,4,6000.0000),(1178,109,1,6500.0000),(1179,109,3,7000.0000),(1180,109,4,6000.0000),(1181,116,1,6500.0000),(1182,116,3,7000.0000),(1183,116,4,6000.0000),(1184,108,1,6500.0000),(1185,108,3,7000.0000),(1186,108,4,6000.0000),(1187,88,1,7500.0000),(1188,88,3,8000.0000),(1189,88,4,7000.0000),(1190,53,1,6500.0000),(1191,53,3,7000.0000),(1192,53,4,6000.0000),(1196,49,1,9000.0000),(1197,49,3,9500.0000),(1198,49,4,8500.0000),(1199,44,1,10000.0000),(1200,44,3,10500.0000),(1201,44,4,9500.0000),(1202,89,1,9500.0000),(1203,89,3,10000.0000),(1204,89,4,9000.0000),(1208,86,1,12500.0000),(1209,86,3,13000.0000),(1210,86,4,12000.0000),(1211,61,1,10500.0000),(1212,61,3,11000.0000),(1213,61,4,10000.0000);

/*Table structure for table `item_sub_unit` */

DROP TABLE IF EXISTS `item_sub_unit`;

CREATE TABLE `item_sub_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item_sub_unit` */

/*Table structure for table `item_unit` */

DROP TABLE IF EXISTS `item_unit`;

CREATE TABLE `item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `item_unit` */

insert  into `item_unit`(`id`,`unit_name`) values (1,'áž”áž“áŸ’áž‘áŸ‡'),(2,'áž”áŸ’ážšáž¢áž”áŸ‹'),(3,'ážŠáž”'),(4,'áž€áŸ†áž”áž»áž„');

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_kh` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loc_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wifi_password` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `location` */

insert  into `location`(`id`,`name`,`name_kh`,`loc_code`,`address`,`address1`,`address2`,`phone`,`phone1`,`wifi_password`,`email`) values (3,'KIRIROM','ážŸáž¶ážáž¶áž‚áž¸ážšáž¸ážšáž˜áŸ’áž™','KRR','Add. #22A, St 276,','Beuong Kengkang 2,','Chamkamorn, PP.','023 222 150','093 851 111','vk093851111',''),(4,'SEAM REAP','ážŸáž¶ážáž¶ážáŸážáŸ’ážážŸáŸ€áž˜ážšáž¶áž”','SR','Add. WATBO Village,','SALAKOMROEK Commune,','SIEM REAP District, SIEM REAP Provine,','063 760 989','093 852 222','',''),(5,'TOUL TOMPUONG','ážŸáž¶ážáž¶áž‘áž½áž›áž‘áŸ†áž–áž¼áž„','TTP','Add. N315, St 430,   Phnom Penh,  Cambodia Kingdom Of Wonder.','SANGKAT Toul TomPong2,','KHAN Chamkamorn, PP.','023 224 170','093 853 333','',''),(6,'Olimpic','áž¢áž¼áž¡áž¶áŸ†áž–áž·áž€','','','','','','','','');

/*Table structure for table `price_tier` */

DROP TABLE IF EXISTS `price_tier`;

CREATE TABLE `price_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tier_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `price_tier` */

insert  into `price_tier`(`id`,`tier_name`,`modified_date`,`deleted`) values (1,'Price 2','2014-08-02 10:54:46',0),(2,'Normal','2014-06-21 10:38:07',1),(3,'Price 3','2014-08-02 10:54:36',0),(4,'Price 1','2014-09-01 11:33:35',0);

/*Table structure for table `price_tier_zone` */

DROP TABLE IF EXISTS `price_tier_zone`;

CREATE TABLE `price_tier_zone` (
  `zone_id` int(11) NOT NULL,
  `price_tier_id` int(11) NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `price_tier_zone` */

insert  into `price_tier_zone`(`zone_id`,`price_tier_id`) values (1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4);

/*Table structure for table `rbac_group` */

DROP TABLE IF EXISTS `rbac_group`;

CREATE TABLE `rbac_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `note` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rbac_group` */

/*Table structure for table `rbac_user` */

DROP TABLE IF EXISTS `rbac_user`;

CREATE TABLE `rbac_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `user_password` varchar(128) CHARACTER SET utf8 NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `date_entered` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_indx` (`user_name`),
  KEY `FK_rbac_user_group_id` (`group_id`),
  KEY `FK_rbac_user_employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rbac_user` */

insert  into `rbac_user`(`id`,`user_name`,`group_id`,`employee_id`,`user_password`,`deleted`,`status`,`date_entered`,`modified_date`,`created_by`) values (2,'admin',NULL,37,'$2a$08$6Bpd5qGSPhB5dehzcrje4eYbfeTmxKI6WI8AgnamWSJyC4nAYNES6',0,1,NULL,'2014-02-15 11:31:55',NULL),(3,'super',NULL,38,'$2a$08$/BW7UO.1LsTvZc5kfMtcyeFYbod45/8vM7ECJ6cYfnp8FFQ81NBlG',0,1,'2013-10-10 09:44:04','2014-05-06 16:35:34',NULL),(4,'sarith',NULL,39,'$2a$08$V8tLuAYd8U5fYCEXa9vxbuYLaihe5be/ZMdpmeWLkKUxV7xYcio3.',0,1,'2014-09-14 04:55:51','2014-09-14 04:55:51',NULL),(5,'Cashier 1',NULL,40,'$2a$08$RsxvYbAUt1GJfPFD.efHlui7Q1ao4l2Z4rxdbzIvGO5wlAFebvThG',0,1,'2014-09-14 05:04:43','2014-09-14 05:04:43',NULL),(6,'Chenda',NULL,41,'$2a$08$XyjkA9PBTDFOlPRJ1Bj7feFxvCfTOOVNuW4w3So1dPRalJRWcs1Hq',0,1,'2014-09-17 03:36:43','2014-11-16 21:41:02',NULL),(7,'Soy chenda',NULL,42,'$2a$08$Iw.A38iT2tDxt8XNHj01JuPXCtdbuPSD/vAMEgEZ/c9qnmQFS6Pw.',0,1,'2014-11-09 19:35:22','2014-11-09 19:35:22',NULL),(8,'Sokpov',NULL,43,'$2a$08$fzHlCUZNeKm4GTeAZv9HO.MtjxBhWk7bHDwaIkb4Y4ky7Z95tFnP2',0,1,'2014-11-16 20:58:57','2014-11-16 20:58:57',NULL),(9,'Cashier1',NULL,44,'$2a$08$RkB2eNCD6VHaE2Ne2RfoHO0N701P.OQWJFf5hXswS/WK4X379AL0K',0,1,'2014-11-16 21:19:52','2014-11-16 21:19:52',NULL),(10,'Cashier2',NULL,45,'$2a$08$1/9kaIf08nlzzbXYMKgy1u.Mik0H.Aok1NzfJCEP4xcF4iHzFk5du',0,1,'2014-11-16 21:36:55','2014-11-16 21:36:55',NULL),(11,'AM',NULL,46,'$2a$08$SycHxLXAiVwsQ5YQufeCueyfRgU4gOj81bjZMyS2Ru7g/3GeF4gPy',0,1,'2014-11-16 21:48:14','2014-11-16 21:48:14',NULL),(12,'TTPCashier1',NULL,47,'$2a$08$jNqYyxl3aqwfQfSL2iwm/eBahXi6VrjHrtZp5vbXzlkFVUKcPYUcu',0,1,'2014-11-16 21:57:07','2014-11-16 21:57:07',NULL),(13,'TTPCashier2',NULL,48,'$2a$08$JdXdFinMOJ9zchVCnN4tTePKgV7sdG/4mbYrOGdrEn9041sxF9R3G',0,1,'2014-11-16 22:22:58','2014-11-16 22:22:58',NULL),(14,'BM',NULL,49,'$2a$08$7i.fYMD6oPSPE2nxmYoRIeiVEW358lhTHLUEElXioCxAvrxOrWIdW',0,1,'2014-11-16 22:30:58','2014-11-16 22:30:58',NULL),(15,'GM',NULL,50,'$2a$08$B2Ef3nLgrM1YO./hXjhCeuFnBWXcTdn.jYiOOKP5sgj.JuGscJbi.',0,1,'2014-11-16 22:43:24','2014-11-16 22:43:24',NULL),(16,'SRCashier1',NULL,51,'$2a$08$OCHsndcJWJ3GkdiyBokkvODnjOWoBna0S6Qm9DasJQ7NdL1vFJyea',0,1,'2014-11-16 22:46:45','2014-11-16 22:46:45',NULL),(17,'SRCashier2',NULL,52,'$2a$08$E8Vczy.f.7O9lesdkvBfUenY2djVCpP.M9LqeQ828tE0B9fplqome',0,1,'2014-11-16 22:49:15','2014-11-16 22:49:15',NULL),(18,'Dara',NULL,53,'$2a$08$kGyximWfavv8GUBKtBqfruZXG82gbBTWmqBIGtHYeGkumo8zFoc8u',0,1,'2014-11-25 04:22:29','2014-11-25 04:22:29',NULL);

/*Table structure for table `receiving` */

DROP TABLE IF EXISTS `receiving`;

CREATE TABLE `receiving` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receive_time` datetime NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `sub_total` double(15,4) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8,
  PRIMARY KEY (`id`),
  KEY `FK_sale_emp_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `receiving` */

insert  into `receiving`(`id`,`receive_time`,`supplier_id`,`employee_id`,`sub_total`,`payment_type`,`status`,`remark`) values (2,'2014-06-25 12:12:25',NULL,38,0.0000,'','Receive from Supplier',NULL),(5,'2014-06-25 12:15:22',NULL,38,9.0000,'','Receive from Supplier',NULL),(6,'2014-06-25 12:15:58',NULL,38,1.0000,'','Receive from Supplier',NULL),(7,'2014-06-25 12:17:23',NULL,38,2.0000,'','Receive from Supplier',NULL),(8,'2014-06-25 12:17:37',NULL,38,4.0000,'','Receive from Supplier',NULL);

/*Table structure for table `receiving_item` */

DROP TABLE IF EXISTS `receiving_item`;

CREATE TABLE `receiving_item` (
  `receive_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8,
  `line` int(11) DEFAULT NULL,
  `quantity` double(15,2) DEFAULT NULL,
  `cost_price` double(15,4) DEFAULT NULL,
  `unit_price` double(15,4) DEFAULT NULL,
  `price` double(15,4) DEFAULT NULL,
  `discount_amount` double(15,2) DEFAULT NULL,
  `discount_type` varchar(2) CHARACTER SET utf8 DEFAULT '%',
  PRIMARY KEY (`receive_id`,`item_id`),
  KEY `FK_sale_item_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `receiving_item` */

insert  into `receiving_item`(`receive_id`,`item_id`,`description`,`line`,`quantity`,`cost_price`,`unit_price`,`price`,`discount_amount`,`discount_type`) values (1,1,NULL,1,1.00,1.1000,1.2000,1.1000,0.00,'%'),(1,7,NULL,7,1.00,1.0000,2.0000,1.0000,0.00,'%'),(1,8,NULL,8,1.00,1.0000,2.0000,1.0000,0.00,'%'),(1,9,NULL,9,1.00,2.0000,3.0000,2.0000,0.00,'%'),(1,11,NULL,11,1.00,2.3000,2.4000,2.3000,0.00,'%'),(1,15,NULL,15,1.00,1.0000,2.0000,1.0000,0.00,'%'),(1,16,NULL,16,1.00,1.1000,1.2000,1.1000,0.00,'%'),(1,17,NULL,17,1.00,1.2000,1.3000,1.2000,0.00,'%'),(2,1,NULL,1,9.00,1.1000,1.2000,1.1000,0.00,'%'),(2,9,NULL,9,10.00,0.0000,3.0000,0.0000,0.00,'%'),(3,1,NULL,1,1.00,1.1000,1.2000,1.1000,0.00,'%'),(3,9,NULL,9,1.00,2.0000,3.0000,2.0000,0.00,'%'),(4,9,NULL,9,3.00,2.0000,3.0000,2.0000,0.00,'%'),(4,20,NULL,20,3.00,1.0000,2.0000,1.0000,0.00,'%'),(5,9,NULL,9,8.00,0.0000,3.0000,0.0000,0.00,'%'),(5,10,NULL,10,9.00,1.0000,2.0000,1.0000,0.00,'%'),(6,9,NULL,9,10.00,0.0000,3.0000,0.0000,0.00,'%'),(6,10,NULL,10,1.00,1.0000,2.0000,1.0000,0.00,'%'),(7,9,NULL,9,3.00,0.0000,3.0000,0.0000,0.00,'%'),(7,10,NULL,10,2.00,1.0000,2.0000,1.0000,0.00,'%'),(8,9,NULL,9,5.00,0.0000,3.0000,0.0000,0.00,'%'),(8,10,NULL,10,4.00,1.0000,2.0000,1.0000,0.00,'%');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_time` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `desk_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `sub_total` double(15,4) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`location_id`),
  KEY `FK_sale_emp_id` (`employee_id`),
  KEY `FK_sale_client_id` (`client_id`),
  KEY `FK_sale_zone_id` (`zone_id`),
  CONSTRAINT `FK_sale_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale` */

/*Table structure for table `sale_item` */

DROP TABLE IF EXISTS `sale_item`;

CREATE TABLE `sale_item` (
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8,
  `line` int(11) DEFAULT NULL,
  `quantity` double(15,0) DEFAULT NULL,
  `cost_price` double(15,4) DEFAULT NULL,
  `unit_price` double(15,4) DEFAULT NULL,
  `price` double(15,4) DEFAULT NULL,
  `discount_amount` double(15,2) DEFAULT NULL,
  `discount_type` varchar(2) CHARACTER SET utf8 DEFAULT '%',
  `item_parent_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `path` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`item_parent_id`,`location_id`),
  KEY `FK_sale_item_item_id` (`item_id`),
  CONSTRAINT `FK_sale_item_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_item` */

/*Table structure for table `sale_order` */

DROP TABLE IF EXISTS `sale_order`;

CREATE TABLE `sale_order` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `sale_time` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `desk_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) NOT NULL DEFAULT '0',
  `sub_total` double(15,4) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `remark` text CHARACTER SET utf8,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giftcard_id` int(11) DEFAULT NULL,
  `empty_flag` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`,`location_id`),
  UNIQUE KEY `desk_id` (`desk_id`,`group_id`,`location_id`,`status`,`id`),
  KEY `FK_sale_emp_id` (`employee_id`),
  KEY `FK_sale_client_id` (`client_id`),
  KEY `FK_sale_zone_id` (`zone_id`),
  KEY `FK_sale_order_id` (`giftcard_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_order` */

/*Table structure for table `sale_order_audit_log` */

DROP TABLE IF EXISTS `sale_order_audit_log`;

CREATE TABLE `sale_order_audit_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `cur_desk_id` int(11) DEFAULT NULL,
  `new_desk_id` int(11) DEFAULT NULL,
  `cur_group_id` int(11) DEFAULT NULL,
  `new_group_id` int(11) DEFAULT NULL,
  `cur_employee_id` int(11) DEFAULT NULL,
  `new_employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `remark` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_order_audit_log` */

/*Table structure for table `sale_order_item` */

DROP TABLE IF EXISTS `sale_order_item`;

CREATE TABLE `sale_order_item` (
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8,
  `line` int(11) DEFAULT NULL,
  `quantity` double(15,0) DEFAULT NULL,
  `cost_price` double(15,2) DEFAULT NULL,
  `unit_price` double(15,2) DEFAULT NULL,
  `price` double(15,2) DEFAULT NULL,
  `discount_amount` double(15,2) DEFAULT NULL,
  `discount_type` varchar(2) CHARACTER SET utf8 DEFAULT '%',
  `modified_date` datetime DEFAULT NULL,
  `item_parent_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `path` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`location_id`,`item_id`,`item_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_order_item` */

/*Table structure for table `sale_order_item_print` */

DROP TABLE IF EXISTS `sale_order_item_print`;

CREATE TABLE `sale_order_item_print` (
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8,
  `line` int(11) DEFAULT NULL,
  `quantity` double(15,0) DEFAULT NULL,
  `cost_price` double(15,2) DEFAULT NULL,
  `unit_price` double(15,2) DEFAULT NULL,
  `price` double(15,2) DEFAULT NULL,
  `discount_amount` double(15,2) DEFAULT NULL,
  `discount_type` varchar(2) CHARACTER SET utf8 DEFAULT '%',
  `modified_date` datetime DEFAULT NULL,
  `item_parent_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL,
  `path` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sale_id`,`item_id`,`item_parent_id`,`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_order_item_print` */

/*Table structure for table `sale_order_old` */

DROP TABLE IF EXISTS `sale_order_old`;

CREATE TABLE `sale_order_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_time` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `desk_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `sub_total` double(15,4) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giftcard_id` int(11) DEFAULT NULL,
  `empty_flag` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `desk_id` (`desk_id`,`group_id`,`location_id`),
  KEY `FK_sale_emp_id` (`employee_id`),
  KEY `FK_sale_client_id` (`client_id`),
  KEY `FK_sale_zone_id` (`zone_id`),
  KEY `FK_sale_order_id` (`giftcard_id`),
  CONSTRAINT `FK_sale_order_desk_id` FOREIGN KEY (`desk_id`) REFERENCES `desk` (`id`),
  CONSTRAINT `FK_sale_order_id` FOREIGN KEY (`giftcard_id`) REFERENCES `giftcard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_order_old` */

/*Table structure for table `sale_payment` */

DROP TABLE IF EXISTS `sale_payment`;

CREATE TABLE `sale_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `payment_type` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `payment_amount` double NOT NULL,
  `give_away` double DEFAULT NULL,
  `date_paid` datetime DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sale_payment_sale_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_payment` */

/*Table structure for table `sale_payment_header` */

DROP TABLE IF EXISTS `sale_payment_header`;

CREATE TABLE `sale_payment_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date_paid` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sale_payment_receipt_emp_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sale_payment_header` */

/*Table structure for table `sale_suspended` */

DROP TABLE IF EXISTS `sale_suspended`;

CREATE TABLE `sale_suspended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_time` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `sub_total` double(15,4) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8,
  PRIMARY KEY (`id`),
  KEY `FK_sale_suspended_client_id` (`client_id`),
  KEY `FK_sale_suspended_emp_Id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_suspended` */

/*Table structure for table `sale_suspended_item` */

DROP TABLE IF EXISTS `sale_suspended_item`;

CREATE TABLE `sale_suspended_item` (
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8,
  `line` int(11) DEFAULT NULL,
  `quantity` double(15,2) DEFAULT NULL,
  `cost_price` double(15,4) DEFAULT NULL,
  `unit_price` double(15,4) DEFAULT NULL,
  `price` double(15,4) DEFAULT NULL,
  `discount_amount` double(15,2) DEFAULT NULL,
  `discount_type` varchar(2) CHARACTER SET utf8 DEFAULT '%',
  KEY `FK_sale_suspended_item_sale_id` (`sale_id`),
  KEY `FK_sale_suspended_item_item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_suspended_item` */

/*Table structure for table `sale_suspended_payment` */

DROP TABLE IF EXISTS `sale_suspended_payment`;

CREATE TABLE `sale_suspended_payment` (
  `sale_id` int(11) NOT NULL,
  `payment_type` varchar(40) CHARACTER SET utf8 NOT NULL,
  `payment_amount` double NOT NULL,
  PRIMARY KEY (`sale_id`,`payment_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_suspended_payment` */

/*Table structure for table `sale_table` */

DROP TABLE IF EXISTS `sale_table`;

CREATE TABLE `sale_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sale_table_id` (`sale_id`,`zone_id`,`table_id`),
  KEY `FK_sale_table_zone_id` (`zone_id`),
  KEY `FK_sale_table_table_id` (`table_id`),
  CONSTRAINT `FK_sale_table_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_sale_table_table_id` FOREIGN KEY (`table_id`) REFERENCES `desk` (`id`),
  CONSTRAINT `FK_sale_table_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_table` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`expire`,`data`) values ('37h8jrsb8b7d0f6dh2f1cr1ri4',1420010607,'d68c65150836b4aa2da690277b237eaa__isAdmin|b:1;d68c65150836b4aa2da690277b237eaa__returnUrl|s:46:\"/bakou_pos_restaurant/index.php/saleItem/index\";employeeid|s:2:\"37\";userid|s:1:\"2\";emp_fullname|s:12:\"Owner System\";location_id|s:1:\"3\";location_code|s:3:\"KRR\";location_name|s:7:\"KIRIROM\";location_namekh|s:36:\"ážŸáž¶ážáž¶áž‚áž¸ážšáž¸ážšáž˜áŸ’áž™\";location_phone|s:11:\"023 222 150\";location_phone1|s:11:\"093 851 111\";location_address|s:18:\"Add. #22A, St 276,\";location_address1|s:18:\"Beuong Kengkang 2,\";location_address2|s:15:\"Chamkamorn, PP.\";location_wifi|s:11:\"vk093851111\";location_email|s:0:\"\";d68c65150836b4aa2da690277b237eaa__id|s:1:\"2\";d68c65150836b4aa2da690277b237eaa__name|s:5:\"admin\";d68c65150836b4aa2da690277b237eaa__states|a:0:{}groupid|s:1:\"1\";saleqty|i:0;salesubtotal|i:0;saletotal|i:0;salediscount|i:0;payments|a:0:{}zoneid|s:2:\"-1\";pricetier|N;tableid|N;'),('prbph9o96udht99ad3h6n08ei7',1420010768,'d68c65150836b4aa2da690277b237eaa__isAdmin|b:0;employeeid|s:2:\"38\";userid|s:1:\"3\";emp_fullname|s:9:\"super pos\";location_id|s:1:\"3\";location_code|s:3:\"KRR\";location_name|s:7:\"KIRIROM\";location_namekh|s:36:\"ážŸáž¶ážáž¶áž‚áž¸ážšáž¸ážšáž˜áŸ’áž™\";location_phone|s:11:\"023 222 150\";location_phone1|s:11:\"093 851 111\";location_address|s:18:\"Add. #22A, St 276,\";location_address1|s:18:\"Beuong Kengkang 2,\";location_address2|s:15:\"Chamkamorn, PP.\";location_wifi|s:11:\"vk093851111\";location_email|s:0:\"\";d68c65150836b4aa2da690277b237eaa__id|s:1:\"3\";d68c65150836b4aa2da690277b237eaa__name|s:5:\"super\";d68c65150836b4aa2da690277b237eaa__states|a:0:{}groupid|s:1:\"1\";saleqty|s:1:\"5\";salesubtotal|s:8:\"60000.00\";saletotal|s:12:\"60000.000000\";customer|N;salediscount|s:8:\"0.000000\";payments|a:0:{}zoneid|s:2:\"-1\";pricetier|s:1:\"4\";tableid|s:2:\"67\";');

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT 'system',
  `key` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_key` (`category`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `settings` */

insert  into `settings`(`id`,`category`,`key`,`value`) values (32,'exchange_rate','USD2KHR','s:4:\"4000\";'),(33,'site','companyName','s:27:\"ážœáž¸ážážƒáž¸áž„áž áž¶ážœ\";'),(34,'site','companyAddress','s:36:\"ážŸáž¶ážáž¶áž‚áž¸ážšáž·ážšáž˜áŸ’áž™\";'),(35,'site','companyPhone','s:11:\"85512777007\";'),(36,'site','currencySymbol','s:3:\"áŸ›\";'),(37,'site','email','s:14:\"yoyo@gmail.com\";'),(38,'site','returnPolicy','s:26:\"(Thank you, see you again)\";'),(39,'system','language','s:2:\"en\";'),(40,'system','decimalPlace','s:1:\"0\";'),(41,'sale','saleCookie','s:1:\"0\";'),(42,'sale','receiptPrint','s:1:\"1\";'),(43,'sale','receiptPrintDraftSale','s:0:\"\";'),(44,'sale','touchScreen','s:1:\"1\";'),(45,'sale','discount','s:6:\"hidden\";'),(46,'receipt','printcompanyLogo','s:0:\"\";'),(47,'receipt','printcompanyName','s:1:\"1\";'),(48,'receipt','printcompanyAddress','s:1:\"1\";'),(49,'receipt','printcompanyPhone','s:1:\"1\";'),(50,'receipt','printtransactionTime','s:1:\"1\";'),(51,'receipt','printSignature','s:0:\"\";'),(52,'site','companyAddress1','s:20:\"Phnom Penh, Cambodia\";'),(53,'receipt','printcompanyAddress1','s:1:\"1\";');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mobile_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `address1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `country_code` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `notes` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `supplier` */

insert  into `supplier`(`id`,`company_name`,`first_name`,`last_name`,`mobile_no`,`address1`,`address2`,`city_id`,`country_code`,`email`,`notes`) values (1,'ABC Extra Stote','lux','sok','','','',NULL,NULL,NULL,'');

/*Table structure for table `tbl_audit_logs` */

DROP TABLE IF EXISTS `tbl_audit_logs`;

CREATE TABLE `tbl_audit_logs` (
  `username` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ipaddress` varchar(50) CHARACTER SET latin1 NOT NULL,
  `logtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `controller` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `action` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `details` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_audit_logs` */

insert  into `tbl_audit_logs`(`username`,`ipaddress`,`logtime`,`controller`,`action`,`details`) values ('Guest','203.144.91.4','2014-06-11 05:43:08','site','index',''),('super','203.144.91.4','2014-06-11 05:43:41','dashboard','view',''),('super','203.144.91.4','2014-06-11 05:52:17','saleItem','index',''),('super','203.144.91.4','2014-06-11 05:52:27','priceTier','admin',''),('super','203.144.91.4','2014-06-11 05:52:32','saleItem','index',''),('super','203.144.91.4','2014-06-11 05:52:53','item','admin',''),('super','203.144.91.4','2014-06-11 05:52:56','item','admin',''),('super','203.144.91.4','2014-06-11 05:52:58','item','admin',''),('super','203.144.91.4','2014-06-11 05:53:00','dashboard','view',''),('super','203.144.91.4','2014-06-11 05:53:03','saleItem','index',''),('super','203.144.91.4','2014-06-11 05:53:03','saleItem','index',''),('Guest','203.144.91.4','2014-06-11 05:53:34','site','index',''),('Guest','72.223.39.64','2014-06-11 06:04:39','site','index',''),('Guest','72.223.39.64','2014-06-11 06:05:09','site','index',''),('Guest','72.223.39.64','2014-06-11 06:05:14','site','index',''),('super','72.223.39.64','2014-06-11 06:05:30','dashboard','view',''),('super','72.223.39.64','2014-06-11 06:05:38','item','admin',''),('super','72.223.39.64','2014-06-11 06:06:06','receivingItem','index',''),('super','72.223.39.64','2014-06-11 06:06:15','item','admin',''),('super','72.223.39.64','2014-06-11 06:06:22','item','UpdateImage',''),('super','72.223.39.64','2014-06-11 06:06:28','client','admin',''),('super','72.223.39.64','2014-06-11 06:06:31','site','error',''),('super','72.223.39.64','2014-06-11 06:06:36','report','SaleInvoice',''),('super','72.223.39.64','2014-06-11 06:06:41','site','error',''),('super','72.223.39.64','2014-06-11 06:06:45','client','admin',''),('super','72.223.39.64','2014-06-11 06:06:50','settings','index',''),('super','72.223.39.64','2014-06-11 06:09:23','settings','index',''),('super','72.223.39.64','2014-06-11 06:09:52','dashboard','view',''),('super','72.223.39.64','2014-06-11 06:11:21','item','admin',''),('super','72.223.39.64','2014-06-11 06:11:28','dashboard','view',''),('super','72.223.39.64','2014-06-11 06:14:32','site','about',''),('super','72.223.39.64','2014-06-11 06:14:54','employee','admin',''),('super','72.223.39.64','2014-06-11 06:15:04','supplier','admin',''),('super','72.223.39.64','2014-06-11 06:15:09','report','SaleInvoice',''),('Guest','72.223.39.64','2014-06-11 06:15:39','site','index',''),('Guest','203.144.91.4','2014-06-11 07:01:54','site','index',''),('super','203.144.91.4','2014-06-11 07:02:02','dashboard','view',''),('super','203.144.91.4','2014-06-11 07:02:05','item','admin',''),('super','203.144.91.4','2014-06-11 07:02:08','site','about',''),('super','203.144.91.4','2014-06-11 07:02:12','employee','admin',''),('super','203.144.91.4','2014-06-11 07:02:13','supplier','admin',''),('super','203.144.91.4','2014-06-11 07:02:15','settings','index',''),('super','203.144.91.4','2014-06-11 07:02:16','priceTier','admin',''),('super','203.144.91.4','2014-06-11 07:02:19','saleItem','index',''),('super','203.144.91.4','2014-06-11 07:02:21','sale','Invoice',''),('super','203.144.91.4','2014-06-11 07:02:23','receivingItem','index',''),('super','203.144.91.4','2014-06-11 07:02:25','receivingItem','index',''),('super','203.144.91.4','2014-06-11 07:02:26','client','admin',''),('super','203.144.91.4','2014-06-11 07:02:29','receivingItem','index',''),('Guest','203.144.91.4','2014-06-11 07:02:32','site','index',''),('Guest','148.167.2.30','2014-06-11 10:40:54','site','index',''),('super','148.167.2.30','2014-06-11 10:41:31','dashboard','view',''),('super','148.167.2.30','2014-06-11 10:42:05','client','admin',''),('super','148.167.2.30','2014-06-11 10:42:06','site','error',''),('super','148.167.2.30','2014-06-11 10:42:07','report','SaleInvoice',''),('super','148.167.2.30','2014-06-11 10:42:09','settings','index',''),('super','148.167.2.30','2014-06-11 10:42:14','settings','index',''),('super','148.167.2.30','2014-06-11 10:42:16','client','admin',''),('super','148.167.2.30','2014-06-11 10:42:17','site','error',''),('super','148.167.2.30','2014-06-11 10:42:17','report','SaleInvoice',''),('super','148.167.2.30','2014-06-11 10:42:28','settings','index',''),('super','148.167.2.30','2014-06-11 10:42:33','site','about',''),('super','148.167.2.30','2014-06-11 10:42:37','report','SaleItemSummary',''),('super','148.167.2.30','2014-06-11 10:42:38','site','error',''),('super','148.167.2.30','2014-06-11 10:42:47','dashboard','view',''),('Guest','148.167.2.30','2014-06-11 10:43:11','site','index',''),('Guest','148.167.2.30','2014-06-11 10:43:24','site','index',''),('super','148.167.2.30','2014-06-11 10:45:40','dashboard','view',''),('super','148.167.2.30','2014-06-11 10:45:45','dashboard','view',''),('super','148.167.2.30','2014-06-11 10:45:46','item','admin',''),('super','148.167.2.30','2014-06-11 10:45:50','site','error',''),('super','148.167.2.30','2014-06-11 10:45:54','site','error',''),('super','148.167.2.30','2014-06-11 10:46:05','client','admin',''),('super','148.167.2.30','2014-06-11 10:46:11','client','admin',''),('super','148.167.2.30','2014-06-11 10:46:16','dashboard','view',''),('super','148.167.2.30','2014-06-11 10:46:52','dashboard','view',''),('Guest','148.167.2.30','2014-06-11 10:46:55','site','index',''),('Guest','148.167.2.30','2014-06-11 10:52:06','site','index',''),('super','148.167.2.30','2014-06-11 10:52:13','dashboard','view',''),('super','148.167.2.30','2014-06-11 10:52:17','sale','Invoice',''),('super','148.167.2.30','2014-06-11 10:52:27','receivingItem','index',''),('super','148.167.2.30','2014-06-11 10:52:30','client','admin',''),('super','148.167.2.30','2014-06-11 10:52:31','item','admin',''),('Guest','148.167.2.30','2014-06-11 10:52:37','site','index',''),('Guest','203.144.68.145','2014-06-11 18:06:35','site','index',''),('super','203.144.68.145','2014-06-11 18:06:44','dashboard','view',''),('Guest','203.144.68.145','2014-06-11 18:07:46','site','index',''),('Guest','203.144.91.4','2014-06-11 21:00:06','site','index',''),('Guest','42.115.40.103','2014-06-11 21:00:19','site','index',''),('Guest','42.115.39.160','2014-06-11 23:38:46','site','index',''),('Guest','124.248.166.17','2014-06-12 01:58:42','site','index',''),('super','124.248.166.17','2014-06-12 01:58:53','dashboard','view',''),('super','124.248.166.17','2014-06-12 01:59:01','report','Inventory',''),('super','124.248.166.17','2014-06-12 02:00:42','sale','Invoice',''),('super','124.248.166.17','2014-06-12 02:00:48','site','error',''),('super','124.248.166.17','2014-06-12 02:00:49','site','error',''),('super','124.248.166.17','2014-06-12 02:01:03','site','error',''),('super','124.248.166.17','2014-06-12 02:01:07','report','Inventory',''),('super','124.248.166.17','2014-06-12 02:07:32','saleItem','index',''),('super','124.248.166.17','2014-06-12 02:08:01','saleItem','index',''),('super','124.248.166.17','2014-06-12 02:23:51','saleItem','Complete',''),('super','124.248.166.17','2014-06-12 02:26:50','saleItem','index',''),('super','124.248.166.17','2014-06-12 02:28:08','saleItem','index',''),('Guest','203.144.91.4','2014-06-12 06:21:33','site','index',''),('super','203.144.91.4','2014-06-12 06:21:51','dashboard','view',''),('super','203.144.91.4','2014-06-12 06:21:56','saleItem','index',''),('super','203.144.91.4','2014-06-12 06:38:32','receivingItem','index',''),('super','203.144.91.4','2014-06-12 06:39:05','receivingItem','index',''),('Guest','148.167.2.30','2014-06-12 09:29:15','site','index',''),('super','148.167.2.30','2014-06-12 09:29:34','dashboard','view',''),('super','148.167.2.30','2014-06-12 09:29:44','client','admin',''),('super','148.167.2.30','2014-06-12 09:29:44','item','admin',''),('super','148.167.2.30','2014-06-12 09:29:46','sale','Invoice',''),('super','148.167.2.30','2014-06-12 09:29:47','site','about',''),('super','148.167.2.30','2014-06-12 09:29:50','saleItem','index',''),('super','148.167.2.30','2014-06-12 09:29:51','saleItem','index',''),('super','148.167.2.30','2014-06-12 09:29:52','sale','Invoice',''),('super','148.167.2.30','2014-06-12 09:29:52','client','admin',''),('super','148.167.2.30','2014-06-12 09:29:54','item','admin',''),('super','148.167.2.30','2014-06-12 09:29:54','dashboard','view',''),('super','148.167.2.30','2014-06-12 09:30:07','settings','index',''),('super','148.167.2.30','2014-06-12 09:30:08','client','admin',''),('super','148.167.2.30','2014-06-12 09:30:09','site','error',''),('super','148.167.2.30','2014-06-12 09:30:10','report','SaleInvoice',''),('super','148.167.2.30','2014-06-12 09:38:51','settings','index',''),('super','148.167.2.30','2014-06-12 09:38:52','client','admin',''),('super','148.167.2.30','2014-06-12 09:38:52','report','SaleInvoice',''),('super','148.167.2.30','2014-06-12 09:38:54','client','admin',''),('super','148.167.2.30','2014-06-12 09:38:58','dashboard','view',''),('Guest','148.167.2.30','2014-06-12 09:40:35','site','index',''),('Guest','148.167.2.30','2014-06-12 10:38:22','site','index',''),('super','148.167.2.30','2014-06-12 10:38:47','dashboard','view',''),('super','148.167.2.30','2014-06-12 10:39:04','item','admin',''),('super','148.167.2.30','2014-06-12 10:39:04','client','admin',''),('super','148.167.2.30','2014-06-12 10:39:16','receivingItem','index',''),('super','148.167.2.30','2014-06-12 10:39:19','receivingItem','index',''),('super','148.167.2.30','2014-06-12 10:39:23','sale','Invoice',''),('super','148.167.2.30','2014-06-12 10:39:33','settings','index',''),('Guest','208.80.194.127','2014-06-13 17:46:44','site','index',''),('Guest','203.144.91.4','2014-06-14 01:49:53','site','index',''),('super','203.144.91.4','2014-06-14 01:49:59','dashboard','view',''),('super','203.144.91.4','2014-06-14 01:50:05','report','itemExpiry',''),('Guest','203.144.91.4','2014-06-14 01:50:25','site','index','');

/*Table structure for table `zone` */

DROP TABLE IF EXISTS `zone`;

CREATE TABLE `zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_zone_location_id` (`location_id`),
  CONSTRAINT `FK_zone_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `zone` */

insert  into `zone`(`id`,`zone_name`,`location_id`,`sort_order`,`status`,`modified_date`) values (1,'A Zone',3,1,'1','2014-07-06 16:19:22'),(2,'B Zone',3,2,'1','2014-07-06 16:19:26'),(3,'C Zone',3,3,'1',NULL),(5,'TAKE OUT',3,6,'1',NULL),(6,'V Zone',5,1,'1',NULL),(7,'A Zone',5,2,'1',NULL),(8,'MB Zone',5,3,'1',NULL),(9,'V Zone',4,1,'1',NULL),(10,'A Zone',4,2,'1',NULL),(11,'M Zone',4,3,'1',NULL),(12,'TAKE OUT Zone',4,NULL,'1',NULL),(13,'TAKE OUT Zone',5,4,'1',NULL),(14,'D Zone',3,4,'1',NULL),(15,'O zone',3,5,'1',NULL);

/* Trigger structure for table `sale_order_item` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `set_path` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'sys'@'192.168.56.168' */ /*!50003 TRIGGER `set_path` BEFORE INSERT ON `sale_order_item` FOR EACH ROW SET NEW.path = 
  CONCAT(IFNULL((SELECT path FROM sale_order_item WHERE sale_id=New.sale_id and item_id = NEW.item_parent_id and location_id = new.location_id), '0'), '.', New.item_id) */$$


DELIMITER ;

/* Function  structure for function  `func_change_table` */

/*!50003 DROP FUNCTION IF EXISTS `func_change_table` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` FUNCTION `func_change_table`( i_desk_id INT(11),i_new_desk_id int(11), i_group_id INT(11),i_location_id INT(11),i_price_tier_id int(11),i_employee_id INT(11)) RETURNS int(11)
BEGIN
    
    DECLARE p_count smallint;
    declare p_group_id smallint;
    DECLARE p_sale_id int(11);
    declare p_employee_id int(11);
    DECLARE p_trans_time DATETIME;
    DECLARE p_status TINYINT DEFAULT 1;
    declare p_remark varchar(15) default 'CHTBL';
    
    SET p_trans_time:=NOW();
 
    SELECT id,employee_id INTO p_sale_id,p_employee_id
    FROM sale_order 
    WHERE desk_id=i_desk_id
    AND group_id=i_group_id
    AND location_id=i_location_id
    AND `status`=p_status;	
    
    -- Check if the current table there is an Item in cart
    select count(*) into p_count
    from sale_order_item
    where sale_id=p_sale_id
    and location_id=i_location_id;
    
    if p_count>0 then
     
	    -- check if the change / same table existed in Sale Ordering we have to set different group (group_id = group_id +1)
	    select count(*) into p_count 
	    from sale_order 
	    where desk_id=i_new_desk_id 
	    and group_id=i_group_id 
	    and location_id=i_location_id
	    AND `status`=p_status;
	    
	    if p_count>0 then
		select max(group_id)+1 into p_group_id 
		from sale_order 
		where desk_id=i_desk_id 
		AND group_id=i_group_id 
		AND location_id=i_location_id
		and `status`=p_status;    
	    else
		set p_group_id=i_group_id;
	    end if; 
	    
	    -- Update New Table to Sale Ordering
	    update sale_order 
	    set desk_id=i_new_desk_id,
		group_id=p_group_id,
		employee_id=i_employee_id
	    where desk_id=i_desk_id 
	    and group_id=i_group_id 
	    and location_id=i_location_id
	    and `status`=p_status;
	    
	    UPDATE sale_order_item t1	
	    JOIN (SELECT i.`id`,
		 CASE WHEN ipt.`price` IS NOT NULL THEN ipt.`price`
		      ELSE i.`unit_price`
		 END unit_price
		FROM `item` i LEFT JOIN item_price_tier ipt ON ipt.`item_id`=i.id
			  AND ipt.`price_tier_id`=i_price_tier_id
		) t2  ON t1.item_id=t2.id
	    SET t1.price=t2.unit_price
	    WHERE t1.sale_id=p_sale_id
	    AND t1.location_id=i_location_id;
	    
	    UPDATE desk
	    SET occupied=p_status
	    WHERE id=i_new_desk_id;
	    
	    -- Freeing up the old desk status and ensure not serving in other group
	    UPDATE desk
	    SET occupied=0
	    WHERE id=i_desk_id
	    AND id NOT IN (SELECT DISTINCT desk_id 
			   FROM sale_order 
			   WHERE desk_id=i_desk_id 
			   AND group_id<>i_group_id 
			   AND location_id=i_location_id 
			   AND `status`=p_status
			   AND id IN (SELECT sale_id FROM sale_order_item) );
			   
	   /**** For auditing purpose to be remove if encounter performance issue ***/
	   insert into sale_order_audit_log(sale_id,cur_desk_id,new_desk_id,cur_group_id,new_group_id,cur_employee_id,new_employee_id,location_id,remark,modified_date)
	   values(p_sale_id,i_desk_id,i_new_desk_id,i_group_id,p_group_id,p_employee_id,i_employee_id,i_location_id,p_remark,p_trans_time);
			 
    end if;
    
    return p_group_id;
    
    END */$$
DELIMITER ;

/* Function  structure for function  `func_save_sale` */

/*!50003 DROP FUNCTION IF EXISTS `func_save_sale` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` FUNCTION `func_save_sale`(i_desk_id int(11), i_group_id int(11),i_location_id INT(11),i_payment_total double,i_employee_id INT(11)) RETURNS int(11)
BEGIN
	
	declare p_sale_order_id int(11) default -1;
	declare p_sale_id int(11);
	DECLARE p_status TINYINT DEFAULT 1;
	DECLARE p_zero_status TINYINT DEFAULT 0;
	DECLARE p_trans_time DATETIME;
	declare p_count tinyint default 0;
	
	SET p_trans_time:=NOW();
	
	
	-- Check if there is an active ordering in cart
	select count(*) into p_count 
	from sale_order
	WHERE desk_id=i_desk_id 
	AND group_id=i_group_id 
	AND location_id=i_location_id 
	AND `status`=p_status;
	
	if p_count>0 then
		
		select id into p_sale_order_id 
		from sale_order 
		where desk_id=i_desk_id 
		and group_id=i_group_id 
		AND location_id=i_location_id 
		and `status`=p_status;
		
		select id into p_sale_order_id 
		from sale_order 
		where desk_id=i_desk_id 
		and group_id=i_group_id 
		AND location_id=i_location_id 
		and `status`=p_status;
		
		-- Updating [sub_total] column
		UPDATE sale_order so
		INNER JOIN (SELECT sale_id,location_id,SUM(price*quantity) sub_total
			    FROM sale_order_item
			    WHERE sale_id=p_sale_order_id
			    AND location_id=i_location_id
			    GROUP BY sale_id,location_id
			   ) soi ON soi.sale_id=so.id AND soi.`location_id`=so.`location_id`
		SET so.sub_total=soi.sub_total
		WHERE so.id=p_sale_order_id;
		
		-- Saving the employee who saving the sale i_employee_id - sometime the ordering employee is different
		INSERT INTO sale(id,sale_time,client_id,desk_id,zone_id,group_id,employee_id,location_id,sub_total,payment_type,STATUS,remark,discount_amount,discount_type)
		SELECT id,sale_time,client_id,desk_id,zone_id,group_id,i_employee_id,location_id,sub_total,payment_type,STATUS,remark,discount_amount,discount_type
		FROM sale_order
		WHERE id=p_sale_order_id
		and location_id=i_location_id
		and `status`=p_status;
		
		INSERT INTO sale_item(sale_id,item_id,description,line,quantity,cost_price,unit_price,price,discount_amount,discount_type,item_parent_id,path,location_id)
		SELECT sale_id,item_id,description,line,quantity,cost_price,unit_price,price,discount_amount,discount_type,item_parent_id,path,location_id
		FROM sale_order_item
		WHERE sale_id=p_sale_order_id
		and location_id=i_location_id; 
		
		-- Inserting payment to sale_payment table
		insert into sale_payment(`sale_id`,`payment_type`,`payment_amount`,`date_paid`,`modified_date`)
		select p_sale_order_id,'Cash' payment_type,i_payment_total,p_trans_time,p_trans_time;
		
		 -- Freeing up table to available by updating [occupied] = 0 
		 UPDATE desk
		 SET occupied=p_zero_status
		 WHERE id=i_desk_id
		 AND id NOT IN (SELECT DISTINCT desk_id 
			   FROM sale_order 
			   WHERE desk_id=i_desk_id 
			   AND group_id<>i_group_id 
			   AND location_id=i_location_id 
			   AND `status`=p_status
			   AND id IN (SELECT sale_id FROM sale_order_item) );
			   
		-- Updating sale_order status to zero - completed
		UPDATE sale_order 
		SET `status`=p_zero_status
		WHERE id=p_sale_order_id
		AND location_id=i_location_id
		AND `status`=p_status;	 
	
	end if;  
		
	return p_sale_order_id;
    
 END */$$
DELIMITER ;

/* Procedure structure for procedure `proc_add_order_item` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_add_order_item` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` PROCEDURE `proc_add_order_item`(i_item_id INT(11),i_item_number VARCHAR(10),i_desk_id INT(11),i_group_id INT(11),i_client_id INT(11),i_employee_id INT(11),i_quantity DOUBLE(15,2),i_price_tier_id INT(11),i_item_parent_id INT(11),i_location_id INT(11))
BEGIN
DECLARE p_sale_id INT(11);
DECLARE p_price DOUBLE(15,4);
DECLARE p_sale_time DATETIME;
DECLARE p_count SMALLINT;
DECLARE p_item_id INT(11);
declare p_status tinyint default 1;
   
START TRANSACTION;   
SELECT 'hi';
SET p_sale_time:=DATE_ADD(NOW(), INTERVAL 0 HOUR);
SET p_item_id=i_item_id;
SELECT COUNT(*) INTO p_count FROM item WHERE item_number=i_item_number;
IF p_count>0 THEN
   SELECT id INTO p_item_id FROM item WHERE item_number=i_item_number;
END IF;
-- We only perform the rest unless there is an Item ID exist in DB
if p_item_id >0 then  
            
	SELECT 
	    CASE WHEN ipt.`price` IS NOT NULL THEN ipt.`price`
		ELSE i.`unit_price`
	    END INTO p_price
	FROM `item` i LEFT JOIN item_price_tier ipt ON ipt.`item_id`=i_item_id
	    AND ipt.`price_tier_id`=i_price_tier_id
	WHERE i.id=p_item_id;
	
	SELECT COUNT(*) INTO p_count 
	FROM sale_order 
	WHERE desk_id=i_desk_id
	AND group_id=i_group_id
	AND location_id=i_location_id
	AND `status`=p_status;
	
	IF p_count=0 THEN 
	
		INSERT INTO sale_order (sale_time,desk_id,group_id,client_id,employee_id,location_id)
		VALUES(p_sale_time, i_desk_id,i_group_id, i_client_id,i_employee_id,i_location_id)
		ON DUPLICATE  KEY UPDATE id=LAST_INSERT_ID(id),employee_id=i_employee_id;
		
		SELECT LAST_INSERT_ID() INTO p_sale_id;
	
	ELSE 
		SELECT id INTO p_sale_id 
		FROM sale_order 
		WHERE desk_id=i_desk_id
		AND group_id=i_group_id
		AND location_id=i_location_id
		AND `status`=p_status; 
	
	END IF;
	
	-- Always update the sale_time and employee_id to the latest execute transaction - consider to create another column modified date instead
	update sale_order 
	set empty_flag=1,
	    sale_time=p_sale_time,
	    employee_id=i_employee_id
	where id=p_sale_id
	and location_id=i_location_id;
	
	update desk set occupied=p_status where id=i_desk_id;
	
	INSERT INTO sale_order_item(sale_id,item_id,quantity,price,modified_date,item_parent_id,location_id)
	VALUES(p_sale_id,p_item_id,i_quantity,p_price,p_sale_time,i_item_parent_id,i_location_id)
	ON DUPLICATE KEY UPDATE quantity=quantity+i_quantity,price=p_price;
	
	COMMIT;
	
end if;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `proc_add_order_item_old` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_add_order_item_old` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` PROCEDURE `proc_add_order_item_old`(i_item_id varchar(50),i_desk_id int(11),i_group_id INT(11),i_client_id INT(11),i_employee_id INT(11),i_quantity double(15,2),i_price_tier_id int(11),i_item_parent_id int(11),i_location_id INT(11))
BEGIN
DECLARE p_sale_id INT(11);
declare p_price double(15,4);
declare p_sale_time datetime;
declare p_count smallint;
declare p_item_id int(11);
   
START TRANSACTION;   
SELECT 'hi';
set p_sale_time:=now();
set p_item_id=i_item_id;
select count(*) into p_count from item where id=i_item_id;
if p_count=0 then
select id into p_item_id from item where item_number=i_item_id;
end if;
            
SELECT 
    CASE WHEN ipt.`price` IS NOT NULL THEN ipt.`price`
	ELSE i.`unit_price`
    END into p_price
FROM `item` i LEFT JOIN item_price_tier ipt ON ipt.`item_id`=i_item_id
    AND ipt.`price_tier_id`=i_price_tier_id
WHERE i.id=p_item_id;
select count(*) into p_count 
from sale_order 
where desk_id=i_desk_id
and group_id=i_group_id
and location_id=i_location_id
and `status`=1;
if p_count=0 then 
	INSERT INTO sale_order (sale_time,desk_id,group_id,client_id,employee_id,location_id)
	VALUES(p_sale_time, i_desk_id,i_group_id, i_client_id,i_employee_id,i_location_id)
	ON DUPLICATE  KEY UPDATE id=LAST_INSERT_ID(id),employee_id=i_employee_id;
	select LAST_INSERT_ID() into p_sale_id;
else 
	select id into p_sale_id 
	FROM sale_order 
	WHERE desk_id=i_desk_id
	AND group_id=i_group_id
	AND location_id=i_location_id
	AND `status`=1; 
end if;
INSERT INTO sale_order_item(sale_id,item_id,quantity,price,modified_date,item_parent_id,location_id)
VALUES(p_sale_id,p_item_id,i_quantity,p_price,now(),i_item_parent_id,i_location_id)
ON DUPLICATE KEY UPDATE quantity=quantity+i_quantity,price=p_price;
COMMIT;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `proc_del_item_cart` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_del_item_cart` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` PROCEDURE `proc_del_item_cart`(i_item_id int(11),i_item_parent_id int(11),i_desk_id int(11),i_group_id int(11),i_location_id INT(11))
BEGIN
	DECLARE p_sale_order_id INT(11);
	declare p_count int(11);
	declare p_status tinyint default 1;
	
	SELECT 'hi';	
	
	SELECT id INTO p_sale_order_id FROM sale_order 
	WHERE desk_id=i_desk_id 
	AND group_id=i_group_id 
	AND location_id=i_location_id 
	AND `status`=p_status;
	
	delete 
	from sale_order_item 
	where sale_id=p_sale_order_id 
	and location_id=i_location_id
	AND item_id=i_item_id 
	AND item_parent_id=i_item_parent_id;
	
	select count(*) into p_count 
	from sale_order_item 
	WHERE sale_id=p_sale_order_id
	and location_id=i_location_id;
	
	if p_count=0 then
	  
	    -- Freeing up desk status
	    update desk
	    set occupied=0
	    where id=i_desk_id
	    and id not in (select distinct desk_id 
			   from sale_order 
			   WHERE desk_id=i_desk_id 
			   and group_id<>i_group_id 
			   and location_id=i_location_id 
			   and `status`=p_status
			   and id IN (SELECT sale_id FROM sale_order_item));
	    
	end if;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `proc_del_sale_order` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_del_sale_order` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` PROCEDURE `proc_del_sale_order`(i_desk_id int(11),i_group_id int(11),i_location_id INT(11))
BEGIN
	DECLARE p_sale_order_id INT(11);
	
	SELECT 'hi';	
	
	SELECT id INTO p_sale_order_id 
	FROM sale_order 
	WHERE desk_id=i_desk_id 
	AND group_id=i_group_id 
	AND location_id=i_location_id
	and `status`=1;
	
	-- MYISAM enginne recycle / reuse ID after deleted
	-- delete from sale_order_item where sale_id=p_sale_order_id AND location_id=i_location_id;
	
	update sale_order 
	set `status`=0
	where id=p_sale_order_id
	AND location_id=i_location_id
	AND `status`=1;
	
	commit;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `proc_edit_menu_order` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_edit_menu_order` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`192.168.56.168` PROCEDURE `proc_edit_menu_order`(i_desk_id int, i_group_id INT,i_item_id INT,i_quantity double(15,2),i_price double(15,2),i_discount double(15,2), i_item_parent_id int(11),i_location_id INT(11))
BEGIN
DECLARE p_sale_id int(11);
DECLARE p_status TINYINT DEFAULT 1;
   
START TRANSACTION;   
SELECT 'hi';
       
select id into p_sale_id 
from sale_order 
where desk_id=i_desk_id 
and group_id=i_group_id 
AND location_id=i_location_id 
AND `status`=p_status;
update sale_order_item
set quantity=i_quantity
where sale_id=p_sale_id
and location_id=i_location_id
and item_id=i_item_id
and item_parent_id= i_item_parent_id;
COMMIT;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `pro_save_pkitchen` */

/*!50003 DROP PROCEDURE IF EXISTS  `pro_save_pkitchen` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`sys`@`%` PROCEDURE `pro_save_pkitchen`(i_desk_id INT(11),i_group_id INT(11),i_location_id INT(11))
BEGIN
    
	DECLARE p_sale_id INT;
	
	select 'hi';
    
	SELECT id INTO p_sale_id FROM sale_order WHERE desk_id=i_desk_id AND group_id=i_group_id AND location_id=i_location_id AND `status`=1;
	
	INSERT INTO sale_order_item_print(`sale_id`,`item_id`,`description`,`line`,`quantity`,`cost_price`,`unit_price`,`price`,`discount_amount`,`discount_type`,`modified_date`,`item_parent_id`,`path`)
	SELECT `sale_id`,`item_id`,`description`,`line`,`quantity`,`cost_price`,`unit_price`,`price`,`discount_amount`,`discount_type`,`modified_date`,`item_parent_id`,`path`
	FROM sale_order_item t1
	WHERE sale_id=p_sale_id
	and location_id=i_location_id
	ON DUPLICATE KEY UPDATE quantity=t1.quantity;
	
    END */$$
DELIMITER ;

/*Table structure for table `v_order_cart` */

DROP TABLE IF EXISTS `v_order_cart`;

/*!50001 DROP VIEW IF EXISTS `v_order_cart` */;
/*!50001 DROP TABLE IF EXISTS `v_order_cart` */;

/*!50001 CREATE TABLE  `v_order_cart`(
 `sale_id` int(8) ,
 `client_id` int(11) ,
 `desk_id` int(11) ,
 `group_id` int(11) ,
 `zone_id` int(11) ,
 `employee_id` int(11) ,
 `location_id` int(11) ,
 `item_id` int(11) ,
 `quantity` double(15,0) ,
 `price` double(15,2) ,
 `discount_amount` double(15,2) ,
 `discount_type` varchar(2) ,
 `item_number` varchar(255) ,
 `name` varchar(50) ,
 `qty_in_stock` double(15,0) ,
 `modified_date` datetime ,
 `topping` tinyint(1) ,
 `item_parent_id` int(11) ,
 `path` varchar(50) ,
 `empty_flag` tinyint(1) ,
 `category_id` int(11) ,
 `status` tinyint(4) 
)*/;

/*Table structure for table `v_order_cart_old` */

DROP TABLE IF EXISTS `v_order_cart_old`;

/*!50001 DROP VIEW IF EXISTS `v_order_cart_old` */;
/*!50001 DROP TABLE IF EXISTS `v_order_cart_old` */;

/*!50001 CREATE TABLE  `v_order_cart_old`(
 `sale_id` int(8) ,
 `client_id` int(11) ,
 `desk_id` int(11) ,
 `group_id` int(11) ,
 `zone_id` int(11) ,
 `employee_id` int(11) ,
 `location_id` int(11) ,
 `item_id` int(11) ,
 `quantity` double(15,0) ,
 `price` double(15,2) ,
 `discount_amount` double(15,2) ,
 `discount_type` varchar(2) ,
 `item_number` varchar(255) ,
 `name` varchar(50) ,
 `qty_in_stock` double(15,0) ,
 `modified_date` datetime ,
 `topping` tinyint(1) ,
 `item_parent_id` int(11) ,
 `path` varchar(50) ,
 `empty_flag` tinyint(1) ,
 `category_id` int(11) ,
 `status` tinyint(4) 
)*/;

/*Table structure for table `v_sale` */

DROP TABLE IF EXISTS `v_sale`;

/*!50001 DROP VIEW IF EXISTS `v_sale` */;
/*!50001 DROP TABLE IF EXISTS `v_sale` */;

/*!50001 CREATE TABLE  `v_sale`(
 `id` int(11) ,
 `sale_time` datetime ,
 `client_id` int(11) ,
 `employee_id` int(11) ,
 `sub_total` double(15,4) ,
 `status` varchar(20) ,
 `status_f` varchar(20) ,
 `remark` text ,
 `discount_amount` double(25,8) 
)*/;

/*Table structure for table `v_sale_cart` */

DROP TABLE IF EXISTS `v_sale_cart`;

/*!50001 DROP VIEW IF EXISTS `v_sale_cart` */;
/*!50001 DROP TABLE IF EXISTS `v_sale_cart` */;

/*!50001 CREATE TABLE  `v_sale_cart`(
 `sale_id` int(11) ,
 `client_id` int(11) ,
 `desk_id` int(11) ,
 `zone_id` int(11) ,
 `employee_id` int(11) ,
 `item_id` int(11) ,
 `quantity` double(15,0) ,
 `price` double(15,4) ,
 `discount_amount` double(15,2) ,
 `discount_type` varchar(2) ,
 `name` varchar(50) ,
 `qty_in_stock` double(15,0) ,
 `topping` tinyint(1) 
)*/;

/*Table structure for table `v_sale_item_sum` */

DROP TABLE IF EXISTS `v_sale_item_sum`;

/*!50001 DROP VIEW IF EXISTS `v_sale_item_sum` */;
/*!50001 DROP TABLE IF EXISTS `v_sale_item_sum` */;

/*!50001 CREATE TABLE  `v_sale_item_sum`(
 `sale_id` int(11) ,
 `quantity` double(17,0) ,
 `cost_price` double(21,4) ,
 `unit_price` double(21,4) ,
 `price` double(21,4) ,
 `profit` double(21,4) 
)*/;

/*View structure for view v_order_cart */

/*!50001 DROP TABLE IF EXISTS `v_order_cart` */;
/*!50001 DROP VIEW IF EXISTS `v_order_cart` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`sys`@`%` SQL SECURITY DEFINER VIEW `v_order_cart` AS select `s`.`id` AS `sale_id`,`s`.`client_id` AS `client_id`,`s`.`desk_id` AS `desk_id`,`s`.`group_id` AS `group_id`,`s`.`zone_id` AS `zone_id`,`s`.`employee_id` AS `employee_id`,`s`.`location_id` AS `location_id`,`oi`.`item_id` AS `item_id`,`oi`.`quantity` AS `quantity`,`oi`.`price` AS `price`,ifnull(`oi`.`discount_amount`,0) AS `discount_amount`,`oi`.`discount_type` AS `discount_type`,`i`.`item_number` AS `item_number`,`i`.`name` AS `name`,`i`.`quantity` AS `qty_in_stock`,`oi`.`modified_date` AS `modified_date`,`i`.`topping` AS `topping`,`oi`.`item_parent_id` AS `item_parent_id`,`oi`.`path` AS `path`,`s`.`empty_flag` AS `empty_flag`,`i`.`category_id` AS `category_id`,`s`.`status` AS `status` from ((`sale_order` `s` join `sale_order_item` `oi`) join `item` `i`) where ((`oi`.`sale_id` = `s`.`id`) and (`oi`.`location_id` = `s`.`location_id`) and (`oi`.`item_id` = `i`.`id`)) */;

/*View structure for view v_order_cart_old */

/*!50001 DROP TABLE IF EXISTS `v_order_cart_old` */;
/*!50001 DROP VIEW IF EXISTS `v_order_cart_old` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`sys`@`%` SQL SECURITY DEFINER VIEW `v_order_cart_old` AS select `s`.`id` AS `sale_id`,`s`.`client_id` AS `client_id`,`s`.`desk_id` AS `desk_id`,`s`.`group_id` AS `group_id`,`s`.`zone_id` AS `zone_id`,`s`.`employee_id` AS `employee_id`,`s`.`location_id` AS `location_id`,`oi`.`item_id` AS `item_id`,`oi`.`quantity` AS `quantity`,`oi`.`price` AS `price`,ifnull(`oi`.`discount_amount`,0) AS `discount_amount`,`oi`.`discount_type` AS `discount_type`,`i`.`item_number` AS `item_number`,`i`.`name` AS `name`,`i`.`quantity` AS `qty_in_stock`,`oi`.`modified_date` AS `modified_date`,`i`.`topping` AS `topping`,`oi`.`item_parent_id` AS `item_parent_id`,`oi`.`path` AS `path`,`s`.`empty_flag` AS `empty_flag`,`i`.`category_id` AS `category_id`,`s`.`status` AS `status` from ((`sale_order` `s` join `sale_order_item` `oi`) join `item` `i`) where ((`s`.`id` = `oi`.`sale_id`) and (`s`.`location_id` = `oi`.`location_id`) and (`oi`.`item_id` = `i`.`id`)) */;

/*View structure for view v_sale */

/*!50001 DROP TABLE IF EXISTS `v_sale` */;
/*!50001 DROP VIEW IF EXISTS `v_sale` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`sys`@`%` SQL SECURITY DEFINER VIEW `v_sale` AS select `sale`.`id` AS `id`,`sale`.`sale_time` AS `sale_time`,`sale`.`client_id` AS `client_id`,`sale`.`employee_id` AS `employee_id`,`sale`.`sub_total` AS `sub_total`,`sale`.`status` AS `status`,(case when (`sale`.`status` = '1') then 'Completed' when (`sale`.`status` = '2') then 'Suspended' when (`sale`.`status` = '0') then 'Canceled' else `sale`.`status` end) AS `status_f`,`sale`.`remark` AS `remark`,(case when ((`sale`.`discount_type` = '%') or isnull(`sale`.`discount_type`)) then ((`sale`.`sub_total` * ifnull(`sale`.`discount_amount`,0)) / 100) else ifnull(`sale`.`discount_amount`,0) end) AS `discount_amount` from `sale` */;

/*View structure for view v_sale_cart */

/*!50001 DROP TABLE IF EXISTS `v_sale_cart` */;
/*!50001 DROP VIEW IF EXISTS `v_sale_cart` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`sys`@`192.168.56.168` SQL SECURITY DEFINER VIEW `v_sale_cart` AS select `s`.`id` AS `sale_id`,`s`.`client_id` AS `client_id`,`s`.`desk_id` AS `desk_id`,`s`.`zone_id` AS `zone_id`,`s`.`employee_id` AS `employee_id`,`oi`.`item_id` AS `item_id`,`oi`.`quantity` AS `quantity`,`oi`.`price` AS `price`,ifnull(`oi`.`discount_amount`,0) AS `discount_amount`,`oi`.`discount_type` AS `discount_type`,`i`.`name` AS `name`,`i`.`quantity` AS `qty_in_stock`,`i`.`topping` AS `topping` from ((`sale` `s` join `sale_item` `oi`) join `item` `i`) where ((`s`.`id` = `oi`.`sale_id`) and (`oi`.`item_id` = `i`.`id`)) */;

/*View structure for view v_sale_item_sum */

/*!50001 DROP TABLE IF EXISTS `v_sale_item_sum` */;
/*!50001 DROP VIEW IF EXISTS `v_sale_item_sum` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`sys`@`%` SQL SECURITY DEFINER VIEW `v_sale_item_sum` AS select `sale_item`.`sale_id` AS `sale_id`,sum(`sale_item`.`quantity`) AS `quantity`,sum(`sale_item`.`cost_price`) AS `cost_price`,sum(`sale_item`.`unit_price`) AS `unit_price`,sum(`sale_item`.`price`) AS `price`,sum(((`sale_item`.`price` - `sale_item`.`cost_price`) * `sale_item`.`quantity`)) AS `profit` from `sale_item` group by `sale_item`.`sale_id` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
