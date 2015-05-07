/*
SQLyog Ultimate v8.82 
MySQL - 5.5.35-0ubuntu0.12.04.2 : Database - bakou_pos
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
  PRIMARY KEY (`itemname`,`userid`),
  CONSTRAINT `FK_AuthAssignment` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `AuthAssignment` */

insert  into `AuthAssignment`(`itemname`,`userid`,`bizrule`,`data`) values ('client.create','2',NULL,NULL),('client.create','3',NULL,NULL),('client.delete','2',NULL,NULL),('client.delete','3',NULL,NULL),('client.index','2',NULL,NULL),('client.index','3',NULL,NULL),('client.update','2',NULL,NULL),('client.update','3',NULL,NULL),('employee.create','2',NULL,NULL),('employee.create','3',NULL,NULL),('employee.delete','2',NULL,NULL),('employee.delete','3',NULL,NULL),('employee.index','2',NULL,NULL),('employee.index','3',NULL,NULL),('employee.update','2',NULL,NULL),('employee.update','3',NULL,NULL),('item.create','2',NULL,NULL),('item.create','3',NULL,NULL),('item.delete','2',NULL,NULL),('item.delete','3',NULL,NULL),('item.index','2',NULL,NULL),('item.index','3',NULL,NULL),('item.update','2',NULL,NULL),('item.update','3',NULL,NULL),('payment.index','3',NULL,NULL),('receiving.edit','2',NULL,NULL),('report.index','2',NULL,NULL),('report.index','3',NULL,NULL),('sale.discount','2',NULL,NULL),('sale.discount','3',NULL,NULL),('sale.edit','2',NULL,NULL),('sale.edit','3',NULL,NULL),('sale.editprice','2',NULL,NULL),('sale.editprice','3',NULL,NULL),('store.update','2',NULL,NULL),('store.update','3',NULL,NULL),('supplier.create','2',NULL,NULL),('supplier.create','3',NULL,NULL),('supplier.delete','2',NULL,NULL),('supplier.delete','3',NULL,NULL),('supplier.index','2',NULL,NULL),('supplier.index','3',NULL,NULL),('supplier.update','2',NULL,NULL),('supplier.update','3',NULL,NULL),('transaction.adjustin','3',NULL,NULL),('transaction.adjustout','3',NULL,NULL),('transaction.count','3',NULL,NULL),('transaction.receive','3',NULL,NULL),('transaction.return','3',NULL,NULL),('transaction.transfer','3',NULL,NULL);

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

insert  into `AuthItem`(`name`,`type`,`description`,`bizrule`,`data`) values ('client.create',0,'Create Client',NULL,'N;'),('client.delete',0,'Delete Client',NULL,'N;'),('client.index',0,'List Client',NULL,'N;'),('client.update',0,'Update Client',NULL,'N;'),('employee.create',0,'Create Employee',NULL,NULL),('employee.delete',0,'Delete Employee',NULL,NULL),('employee.index',0,'List Employee',NULL,NULL),('employee.update',0,'Update Employee',NULL,NULL),('item.create',0,'Create Item',NULL,NULL),('item.delete',0,'Delete Item',NULL,NULL),('item.index',0,'List Item',NULL,NULL),('item.update',0,'Update Item',NULL,NULL),('itemAdmin',1,'Administer Item',NULL,'N;'),('payment.index',0,'Invoice Payment (Debt)',NULL,NULL),('receiving.edit',0,'Process Purchase orders',NULL,'N;'),('report.index',0,'View and generate reports',NULL,'N;'),('sale.discount',0,'Sale Give Discount',NULL,'N;'),('sale.edit',0,'Edit Sale',NULL,'N;'),('sale.editprice',0,'Edit Sale Price',NULL,'N;'),('store.update',0,'Change the store\'s configuration',NULL,'N;'),('supplier.create',0,'Create Supplier',NULL,NULL),('supplier.delete',0,'Delete Supplier',NULL,NULL),('supplier.index',0,'List Supplier',NULL,NULL),('supplier.update',0,'Update Supplier',NULL,NULL),('transaction.adjustin',0,'Adjustment In',NULL,NULL),('transaction.adjustout',0,'Adjustment Out',NULL,NULL),('transaction.count',0,'Physical Count',NULL,NULL),('transaction.receive',0,'Receive from Supplier',NULL,NULL),('transaction.return',0,'Return to Supplier',NULL,NULL),('transaction.transfer',0,'Transfer to (Another Branch)',NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`id`,`client_id`,`name`,`balance`,`date_created`,`note`) values (1,3,'sample','0.0000','2014-06-07 14:14:20',NULL),(2,4,'Rothdara','0.0000','2014-06-10 16:53:35',NULL),(3,5,'Mr. A','0.0000','2014-06-10 16:55:04',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`created_date`,`modified_date`) values (1,'Drink','2014-05-19 00:00:00',NULL),(2,'Fruit','2014-05-19 00:00:00',NULL),(3,'Alcahol','2014-05-19 00:00:00',NULL),(4,'Groccery','2014-05-19 00:00:00',NULL),(5,'Meat','2014-05-19 00:00:00',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `client` */

/*Table structure for table `currency_type` */

DROP TABLE IF EXISTS `currency_type`;

CREATE TABLE `currency_type` (
  `code` int(11) NOT NULL DEFAULT '0',
  `currency_id` char(3) NOT NULL DEFAULT '',
  `currency_name` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `currency_type` */

insert  into `currency_type`(`code`,`currency_id`,`currency_name`) values (76,'KHR','Kampuchea Riel'),(142,'THB','Thai Baht'),(151,'USD','United States Dollar');

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee` */

insert  into `employee`(`id`,`first_name`,`last_name`,`mobile_no`,`adddress1`,`address2`,`city_id`,`country_code`,`email`,`notes`) values (37,'Owner','System','012999068','','',NULL,'','',''),(38,'super','pos','012878878','super addresss','super address2',NULL,'','','');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `inventory` */

insert  into `inventory`(`trans_id`,`trans_items`,`trans_user`,`trans_date`,`trans_comment`,`trans_inventory`) values (1,1,38,'2014-06-15 05:33:01','POS 5',-1.00);

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
  `quantity` double(15,2) NOT NULL,
  `reorder_level` double(15,2) DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `allow_alt_description` tinyint(1) DEFAULT NULL,
  `is_serialized` tinyint(1) DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `deleted` tinyint(1) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item_category_id` (`category_id`),
  KEY `FK_item_supplier_id` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item` */

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

insert  into `item_expire`(`id`,`item_id`,`mfd_date`,`expire_date`,`quantity`) values (1,1,NULL,'2014-11-30','5.00'),(2,9,NULL,'2014-10-31','0.00'),(3,15,NULL,'2014-09-30','0.00'),(4,7,NULL,'2014-08-31','1.00'),(5,20,NULL,'2014-10-31','3.00'),(6,9,NULL,'2014-11-01','0.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_expire_dt` */

insert  into `item_expire_dt`(`id`,`item_expire_id`,`trans_id`,`trans_qty`,`trans_comment`,`modified_date`,`employee_id`) values (1,1,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(2,2,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(3,3,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(4,4,1,'1.00','Receive from Supplier 1','2014-06-06 19:11:03',38),(6,1,2,'10.00','Adjustment In 2','2014-06-06 19:13:36',38),(7,1,1,'-1.00','POS 1','2014-06-06 19:22:17',NULL),(9,1,2,'-1.00','POS 2','2014-06-07 08:47:55',NULL),(10,1,3,'-1.00','POS 3','2014-06-07 08:17:57',NULL),(11,1,4,'-1.00','POS 4','2014-06-07 08:09:59',NULL),(12,2,5,'-1.00','POS 5','2014-06-07 09:21:21',NULL),(13,5,4,'3.00','Receive from Supplier 4','2014-06-09 13:33:20',38),(14,6,4,'3.00','Receive from Supplier 4','2014-06-09 13:33:20',38),(15,6,9,'-1.00','POS 9','2014-06-10 02:03:50',NULL),(16,3,11,'-1.00','POS 11','2014-06-10 03:24:12',NULL),(17,6,12,'-2.00','POS 12','2014-06-10 03:38:23',NULL),(18,1,5,'-1.00','POS 5','2014-06-15 05:01:33',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_image` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_price` */

insert  into `item_price`(`id`,`item_id`,`employee_id`,`old_price`,`new_price`,`modified_date`) values (1,2,38,3.0000,2.0000,'2014-05-21 13:16:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `item_price_tier` */

insert  into `item_price_tier`(`id`,`item_id`,`price_tier_id`,`price`) values (8,1,4,1.5000),(9,1,5,1.6000),(10,1,6,1.7000);

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

insert  into `item_unit`(`id`,`unit_name`) values (1,'បន្ទះ'),(2,'ប្រអប់'),(3,'ដប'),(4,'កំបុង');

/*Table structure for table `item_unit_quantity` */

DROP TABLE IF EXISTS `item_unit_quantity`;

CREATE TABLE `item_unit_quantity` (
  `item_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `quantity` double(15,2) NOT NULL,
  `cost_price` double(15,2) DEFAULT NULL,
  `unit_price` double(15,2) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FK_item_unit_quantity_unit_id` (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item_unit_quantity` */

/*Table structure for table `price_tier` */

DROP TABLE IF EXISTS `price_tier`;

CREATE TABLE `price_tier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tier_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `price_tier` */

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rbac_user` */

insert  into `rbac_user`(`id`,`user_name`,`group_id`,`employee_id`,`user_password`,`deleted`,`status`,`date_entered`,`modified_date`,`created_by`) values (2,'admin',NULL,37,'$2a$08$6Bpd5qGSPhB5dehzcrje4eYbfeTmxKI6WI8AgnamWSJyC4nAYNES6',0,1,NULL,'2014-02-15 11:31:55',NULL),(3,'super',NULL,38,'$2a$08$/BW7UO.1LsTvZc5kfMtcyeFYbod45/8vM7ECJ6cYfnp8FFQ81NBlG',0,1,'2013-10-10 09:44:04','2014-05-06 16:35:34',NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `receiving` */

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

insert  into `receiving_item`(`receive_id`,`item_id`,`description`,`line`,`quantity`,`cost_price`,`unit_price`,`price`,`discount_amount`,`discount_type`) values (1,1,NULL,1,1.00,1.1000,1.2000,1.1000,0.00,'%'),(1,7,NULL,7,1.00,1.0000,2.0000,1.0000,0.00,'%'),(1,8,NULL,8,1.00,1.0000,2.0000,1.0000,0.00,'%'),(1,9,NULL,9,1.00,2.0000,3.0000,2.0000,0.00,'%'),(1,11,NULL,11,1.00,2.3000,2.4000,2.3000,0.00,'%'),(1,15,NULL,15,1.00,1.0000,2.0000,1.0000,0.00,'%'),(1,16,NULL,16,1.00,1.1000,1.2000,1.1000,0.00,'%'),(1,17,NULL,17,1.00,1.2000,1.3000,1.2000,0.00,'%'),(2,1,NULL,1,9.00,1.1000,1.2000,1.1000,0.00,'%'),(3,1,NULL,1,1.00,1.1000,1.2000,1.1000,0.00,'%'),(3,9,NULL,9,1.00,2.0000,3.0000,2.0000,0.00,'%'),(4,9,NULL,9,3.00,2.0000,3.0000,2.0000,0.00,'%'),(4,20,NULL,20,3.00,1.0000,2.0000,1.0000,0.00,'%');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_time` datetime NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `sub_total` double(15,4) DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sale_emp_id` (`employee_id`),
  KEY `FK_sale_client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale` */

/*Table structure for table `sale_amount` */

DROP TABLE IF EXISTS `sale_amount`;

CREATE TABLE `sale_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `sub_total` decimal(15,4) DEFAULT NULL,
  `tax_total` decimal(15,4) DEFAULT NULL,
  `total` decimal(15,4) DEFAULT NULL,
  `paid` decimal(15,4) DEFAULT NULL,
  `balance` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `FK_sale_amount_salie_id` (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sale_amount` */

/*Table structure for table `sale_client_cookie` */

DROP TABLE IF EXISTS `sale_client_cookie`;

CREATE TABLE `sale_client_cookie` (
  `client_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text,
  `quantity` double(15,2) NOT NULL,
  `cost_price` double(15,4) DEFAULT NULL,
  `unit_price` double(15,4) DEFAULT NULL,
  `price` double(15,4) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `discount_type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`client_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sale_client_cookie` */

/*Table structure for table `sale_item` */

DROP TABLE IF EXISTS `sale_item`;

CREATE TABLE `sale_item` (
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
  PRIMARY KEY (`sale_id`,`item_id`),
  KEY `FK_sale_item_item_id` (`item_id`),
  CONSTRAINT `FK_sale_item_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_item` */

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sale_payment` */

insert  into `sale_payment`(`id`,`sale_id`,`payment_type`,`payment_amount`,`give_away`,`date_paid`,`note`,`modified_date`) values (16,5,'Cash',2,NULL,'2014-06-15 05:33:01',NULL,'2014-06-14 22:33:01');

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

insert  into `settings`(`id`,`category`,`key`,`value`) values (32,'exchange_rate','USD2KHR','s:4:\"4000\";'),(33,'site','companyName','s:12:\"Bakou System\";'),(34,'site','companyAddress','s:26:\"St. Fortune, Ratana Plazza\";'),(35,'site','companyPhone','s:11:\"85512777007\";'),(36,'site','currencySymbol','s:3:\"USD\";'),(37,'site','email','s:14:\"yoyo@gmail.com\";'),(38,'site','returnPolicy','s:93:\"ទំនិញដែលទិញហើយមិនអាចដូរវិញបានទេ\";'),(39,'system','language','s:2:\"en\";'),(40,'system','decimalPlace','s:1:\"2\";'),(41,'sale','saleCookie','s:1:\"0\";'),(42,'sale','receiptPrint','s:1:\"1\";'),(43,'sale','receiptPrintDraftSale','s:0:\"\";'),(44,'sale','touchScreen','s:0:\"\";'),(45,'sale','discount','s:6:\"hidden\";'),(46,'receipt','printcompanyLogo','s:0:\"\";'),(47,'receipt','printcompanyName','s:1:\"1\";'),(48,'receipt','printcompanyAddress','s:1:\"1\";'),(49,'receipt','printcompanyPhone','s:1:\"1\";'),(50,'receipt','printtransactionTime','s:1:\"1\";'),(51,'receipt','printSignature','s:0:\"\";'),(52,'site','companyAddress1','s:20:\"Phnom Penh, Cambodia\";'),(53,'receipt','printcompanyAddress1','s:1:\"1\";');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `supplier` */

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

insert  into `tbl_audit_logs`(`username`,`ipaddress`,`logtime`,`controller`,`action`,`details`) values ('Guest','203.144.91.4','2014-06-10 22:43:08','site','index',''),('super','203.144.91.4','2014-06-10 22:43:41','dashboard','view',''),('super','203.144.91.4','2014-06-10 22:52:17','saleItem','index',''),('super','203.144.91.4','2014-06-10 22:52:27','priceTier','admin',''),('super','203.144.91.4','2014-06-10 22:52:32','saleItem','index',''),('super','203.144.91.4','2014-06-10 22:52:53','item','admin',''),('super','203.144.91.4','2014-06-10 22:52:56','item','admin',''),('super','203.144.91.4','2014-06-10 22:52:58','item','admin',''),('super','203.144.91.4','2014-06-10 22:53:00','dashboard','view',''),('super','203.144.91.4','2014-06-10 22:53:03','saleItem','index',''),('super','203.144.91.4','2014-06-10 22:53:03','saleItem','index',''),('Guest','203.144.91.4','2014-06-10 22:53:34','site','index',''),('Guest','72.223.39.64','2014-06-10 23:04:39','site','index',''),('Guest','72.223.39.64','2014-06-10 23:05:09','site','index',''),('Guest','72.223.39.64','2014-06-10 23:05:14','site','index',''),('super','72.223.39.64','2014-06-10 23:05:30','dashboard','view',''),('super','72.223.39.64','2014-06-10 23:05:38','item','admin',''),('super','72.223.39.64','2014-06-10 23:06:06','receivingItem','index',''),('super','72.223.39.64','2014-06-10 23:06:15','item','admin',''),('super','72.223.39.64','2014-06-10 23:06:22','item','UpdateImage',''),('super','72.223.39.64','2014-06-10 23:06:28','client','admin',''),('super','72.223.39.64','2014-06-10 23:06:31','site','error',''),('super','72.223.39.64','2014-06-10 23:06:36','report','SaleInvoice',''),('super','72.223.39.64','2014-06-10 23:06:41','site','error',''),('super','72.223.39.64','2014-06-10 23:06:45','client','admin',''),('super','72.223.39.64','2014-06-10 23:06:50','settings','index',''),('super','72.223.39.64','2014-06-10 23:09:23','settings','index',''),('super','72.223.39.64','2014-06-10 23:09:52','dashboard','view',''),('super','72.223.39.64','2014-06-10 23:11:21','item','admin',''),('super','72.223.39.64','2014-06-10 23:11:28','dashboard','view',''),('super','72.223.39.64','2014-06-10 23:14:32','site','about',''),('super','72.223.39.64','2014-06-10 23:14:54','employee','admin',''),('super','72.223.39.64','2014-06-10 23:15:04','supplier','admin',''),('super','72.223.39.64','2014-06-10 23:15:09','report','SaleInvoice',''),('Guest','72.223.39.64','2014-06-10 23:15:39','site','index',''),('Guest','203.144.91.4','2014-06-11 00:01:54','site','index',''),('super','203.144.91.4','2014-06-11 00:02:02','dashboard','view',''),('super','203.144.91.4','2014-06-11 00:02:05','item','admin',''),('super','203.144.91.4','2014-06-11 00:02:08','site','about',''),('super','203.144.91.4','2014-06-11 00:02:12','employee','admin',''),('super','203.144.91.4','2014-06-11 00:02:13','supplier','admin',''),('super','203.144.91.4','2014-06-11 00:02:15','settings','index',''),('super','203.144.91.4','2014-06-11 00:02:16','priceTier','admin',''),('super','203.144.91.4','2014-06-11 00:02:19','saleItem','index',''),('super','203.144.91.4','2014-06-11 00:02:21','sale','Invoice',''),('super','203.144.91.4','2014-06-11 00:02:23','receivingItem','index',''),('super','203.144.91.4','2014-06-11 00:02:25','receivingItem','index',''),('super','203.144.91.4','2014-06-11 00:02:26','client','admin',''),('super','203.144.91.4','2014-06-11 00:02:29','receivingItem','index',''),('Guest','203.144.91.4','2014-06-11 00:02:32','site','index',''),('Guest','148.167.2.30','2014-06-11 03:40:54','site','index',''),('super','148.167.2.30','2014-06-11 03:41:31','dashboard','view',''),('super','148.167.2.30','2014-06-11 03:42:05','client','admin',''),('super','148.167.2.30','2014-06-11 03:42:06','site','error',''),('super','148.167.2.30','2014-06-11 03:42:07','report','SaleInvoice',''),('super','148.167.2.30','2014-06-11 03:42:09','settings','index',''),('super','148.167.2.30','2014-06-11 03:42:14','settings','index',''),('super','148.167.2.30','2014-06-11 03:42:16','client','admin',''),('super','148.167.2.30','2014-06-11 03:42:17','site','error',''),('super','148.167.2.30','2014-06-11 03:42:17','report','SaleInvoice',''),('super','148.167.2.30','2014-06-11 03:42:28','settings','index',''),('super','148.167.2.30','2014-06-11 03:42:33','site','about',''),('super','148.167.2.30','2014-06-11 03:42:37','report','SaleItemSummary',''),('super','148.167.2.30','2014-06-11 03:42:38','site','error',''),('super','148.167.2.30','2014-06-11 03:42:47','dashboard','view',''),('Guest','148.167.2.30','2014-06-11 03:43:11','site','index',''),('Guest','148.167.2.30','2014-06-11 03:43:24','site','index',''),('super','148.167.2.30','2014-06-11 03:45:40','dashboard','view',''),('super','148.167.2.30','2014-06-11 03:45:45','dashboard','view',''),('super','148.167.2.30','2014-06-11 03:45:46','item','admin',''),('super','148.167.2.30','2014-06-11 03:45:50','site','error',''),('super','148.167.2.30','2014-06-11 03:45:54','site','error',''),('super','148.167.2.30','2014-06-11 03:46:05','client','admin',''),('super','148.167.2.30','2014-06-11 03:46:11','client','admin',''),('super','148.167.2.30','2014-06-11 03:46:16','dashboard','view',''),('super','148.167.2.30','2014-06-11 03:46:52','dashboard','view',''),('Guest','148.167.2.30','2014-06-11 03:46:55','site','index',''),('Guest','148.167.2.30','2014-06-11 03:52:06','site','index',''),('super','148.167.2.30','2014-06-11 03:52:13','dashboard','view',''),('super','148.167.2.30','2014-06-11 03:52:17','sale','Invoice',''),('super','148.167.2.30','2014-06-11 03:52:27','receivingItem','index',''),('super','148.167.2.30','2014-06-11 03:52:30','client','admin',''),('super','148.167.2.30','2014-06-11 03:52:31','item','admin',''),('Guest','148.167.2.30','2014-06-11 03:52:37','site','index',''),('Guest','203.144.68.145','2014-06-11 11:06:35','site','index',''),('super','203.144.68.145','2014-06-11 11:06:44','dashboard','view',''),('Guest','203.144.68.145','2014-06-11 11:07:46','site','index',''),('Guest','203.144.91.4','2014-06-11 14:00:06','site','index',''),('Guest','42.115.40.103','2014-06-11 14:00:19','site','index',''),('Guest','42.115.39.160','2014-06-11 16:38:46','site','index',''),('Guest','124.248.166.17','2014-06-11 18:58:42','site','index',''),('super','124.248.166.17','2014-06-11 18:58:53','dashboard','view',''),('super','124.248.166.17','2014-06-11 18:59:01','report','Inventory',''),('super','124.248.166.17','2014-06-11 19:00:42','sale','Invoice',''),('super','124.248.166.17','2014-06-11 19:00:48','site','error',''),('super','124.248.166.17','2014-06-11 19:00:49','site','error',''),('super','124.248.166.17','2014-06-11 19:01:03','site','error',''),('super','124.248.166.17','2014-06-11 19:01:07','report','Inventory',''),('super','124.248.166.17','2014-06-11 19:07:32','saleItem','index',''),('super','124.248.166.17','2014-06-11 19:08:01','saleItem','index',''),('super','124.248.166.17','2014-06-11 19:23:51','saleItem','Complete',''),('super','124.248.166.17','2014-06-11 19:26:50','saleItem','index',''),('super','124.248.166.17','2014-06-11 19:28:08','saleItem','index',''),('Guest','203.144.91.4','2014-06-11 23:21:33','site','index',''),('super','203.144.91.4','2014-06-11 23:21:51','dashboard','view',''),('super','203.144.91.4','2014-06-11 23:21:56','saleItem','index',''),('super','203.144.91.4','2014-06-11 23:38:32','receivingItem','index',''),('super','203.144.91.4','2014-06-11 23:39:05','receivingItem','index',''),('Guest','148.167.2.30','2014-06-12 02:29:15','site','index',''),('super','148.167.2.30','2014-06-12 02:29:34','dashboard','view',''),('super','148.167.2.30','2014-06-12 02:29:44','client','admin',''),('super','148.167.2.30','2014-06-12 02:29:44','item','admin',''),('super','148.167.2.30','2014-06-12 02:29:46','sale','Invoice',''),('super','148.167.2.30','2014-06-12 02:29:47','site','about',''),('super','148.167.2.30','2014-06-12 02:29:50','saleItem','index',''),('super','148.167.2.30','2014-06-12 02:29:51','saleItem','index',''),('super','148.167.2.30','2014-06-12 02:29:52','sale','Invoice',''),('super','148.167.2.30','2014-06-12 02:29:52','client','admin',''),('super','148.167.2.30','2014-06-12 02:29:54','item','admin',''),('super','148.167.2.30','2014-06-12 02:29:54','dashboard','view',''),('super','148.167.2.30','2014-06-12 02:30:07','settings','index',''),('super','148.167.2.30','2014-06-12 02:30:08','client','admin',''),('super','148.167.2.30','2014-06-12 02:30:09','site','error',''),('super','148.167.2.30','2014-06-12 02:30:10','report','SaleInvoice',''),('super','148.167.2.30','2014-06-12 02:38:51','settings','index',''),('super','148.167.2.30','2014-06-12 02:38:52','client','admin',''),('super','148.167.2.30','2014-06-12 02:38:52','report','SaleInvoice',''),('super','148.167.2.30','2014-06-12 02:38:54','client','admin',''),('super','148.167.2.30','2014-06-12 02:38:58','dashboard','view',''),('Guest','148.167.2.30','2014-06-12 02:40:35','site','index',''),('Guest','148.167.2.30','2014-06-12 03:38:22','site','index',''),('super','148.167.2.30','2014-06-12 03:38:47','dashboard','view',''),('super','148.167.2.30','2014-06-12 03:39:04','item','admin',''),('super','148.167.2.30','2014-06-12 03:39:04','client','admin',''),('super','148.167.2.30','2014-06-12 03:39:16','receivingItem','index',''),('super','148.167.2.30','2014-06-12 03:39:19','receivingItem','index',''),('super','148.167.2.30','2014-06-12 03:39:23','sale','Invoice',''),('super','148.167.2.30','2014-06-12 03:39:33','settings','index',''),('Guest','208.80.194.127','2014-06-13 10:46:44','site','index',''),('Guest','203.144.91.4','2014-06-13 18:49:53','site','index',''),('super','203.144.91.4','2014-06-13 18:49:59','dashboard','view',''),('super','203.144.91.4','2014-06-13 18:50:05','report','itemExpiry',''),('Guest','203.144.91.4','2014-06-13 18:50:25','site','index','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
