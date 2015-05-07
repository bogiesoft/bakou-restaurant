/*
SQLyog Ultimate v8.82 
MySQL - 5.5.37-0ubuntu0.14.04.1 : Database - cam_province
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `commune` */

DROP TABLE IF EXISTS `commune`;

CREATE TABLE `commune` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_commune_district_id` (`district_id`),
  CONSTRAINT `FK_commune_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `commune` */

insert  into `commune`(`id`,`name`,`district_id`) values (1,'Banteay Neang',1);

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_district_province_id` (`province_id`),
  CONSTRAINT `FK_district_province_id` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `district` */

insert  into `district`(`id`,`name`,`province_id`) values (1,'មង្គលបុរី',2),(2,'ភ្នំស្រុក',2),(3,'ព្រះនេត្រព្រះ',2),(4,'អូរជ្រៅ',2),(5,'សិរីសោភ័ណ',2),(6,'ថ្មពួក',2),(7,'ស្វាយចេក',2),(8,'មាល័យ',2),(9,'ស្រុកកណ្តាលស្ទឹង',9),(10,'ស្រុកគៀនស្វាយ',9),(11,'ស្រុកខ្សាច់កណ្តាល',9),(12,'ស្រុកកោះធំ',9),(13,'ស្រុកល្វាឯម',9),(14,'ស្រុកមុខកំពូល',9),(15,'ស្រុកអង្គស្នួល',9),(16,'ស្រុកពញ្ញាឮ',9),(17,'ស្រុកស្អាង',9),(18,'ក្រុងតាខ្មៅ',9),(19,'ស្រុកលើកដែក',9),(20,'អង្គរបុរី',24),(21,'បាទី',24),(22,'បុរីជលសារ',24),(23,'គីរីវង្ស',24),(24,'កោះអណ្តែត',24),(25,'ព្រៃកប្បាស',24),(26,'សំរោង',24),(27,'ដូនកែវ',24),(28,'ត្រាំកក់',24),(29,'ទ្រាំង',24),(30,'Chamkarmon',1),(31,'បាណន់',3),(32,'ថ្មគោល',3),(33,'បាត់ដំបង',3),(34,'បវេល',3),(35,'ឯកភ្នំ',3),(36,'មោងឫស្សី',3),(37,'រតនមណ្ឌល',3),(38,'សង្កែ',3),(39,'សំឡូត',3),(40,'សំពៅលូន',3),(41,'ភ្នំព្រឹក',3),(42,'កំរៀង',3),(43,'គាស់ក្រឡ',3),(44,'រុក្ខគិរី',3),(45,'បាធាយ',4),(46,'ចំការលើ',4),(47,'ជើងព្រៃ',4),(48,'កំពង់ចាម',4),(49,'កំពង់សៀម',4),(50,'កងមាស',4),(51,'កោះសូទិន',4),(52,'ព្រៃឈរ',4),(53,'ស្រីសន្ធរ',4),(54,'ស្ទឹងត្រង់',4);

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `province` */

insert  into `province`(`id`,`name`) values (1,'ភ្នំពេញ'),(2,'បន្ទាយមានជ័យ'),(3,'បាត់ដំបង'),(4,'កំពង់ចាម'),(5,'កំពង់ឆ្នាំង'),(6,'កំពង់ស្ពឺ'),(7,'កំពង់ធំ'),(8,'កំពត'),(9,'កណ្តាល'),(10,'កោះកុង'),(11,'កែប'),(12,'ក្រចេះ'),(13,'មណ្ឌលគីរី'),(14,'ឧត្តរមានជ័យ'),(15,'បៃលិន'),(16,'ព្រះសីហនុ'),(17,'ព្រះវិហារ'),(18,'ពោធិ៍សាត់'),(19,'ព្រៃវែង'),(20,'រតនគីរី'),(21,'សៀមរាប'),(22,'ស្ទឹងត្រែង'),(23,'ស្វាយរៀង'),(24,'តាកែវ'),(25,'ត្បូងឃ្មុំ');

/*Table structure for table `village` */

DROP TABLE IF EXISTS `village`;

CREATE TABLE `village` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `commune_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_village_commune_id` (`commune_id`),
  CONSTRAINT `FK_village_commune_id` FOREIGN KEY (`commune_id`) REFERENCES `commune` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `village` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
