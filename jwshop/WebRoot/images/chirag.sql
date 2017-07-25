/*
SQLyog Ultimate v8.32 
MySQL - 5.5.36 : Database - chirag
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chirag` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `chirag`;

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `p_id` int(30) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) DEFAULT NULL,
  `p_code` varchar(100) DEFAULT NULL,
  `p_price` varchar(100) DEFAULT NULL,
  `p_image` varchar(100) DEFAULT NULL,
  `p_desc` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `collection` */

insert  into `collection`(`p_id`,`p_name`,`p_code`,`p_price`,`p_image`,`p_desc`) values (1,'fern Clamper 1','BBCA','1799','iteam1.jpg',' Mexican Silver Fern Clamper Bracelet 1'),(2,'fern clamper 2','BCHA','1900','iteam2.jpg',' Mexican Silver Fern Clamper Bracelet 2'),(3,'fern clamper 3','BERD','2000','iteam3.jpg',' Mexican Silver Fern Clamper Bracelet 3'),(4,'fern clamper 4','BTYP','2500','iteam4.jpg',' Mexican Silver Fern Clamper Bracelet 4'),(5,'fern clamper 5','BHIP','2200','iteam5.jpg',' Mexican Silver Fern Clamper Bracelet 5'),(6,'fern clamper 6','BHTR','3000','iteam6.jpg',' Mexican Silver Fern Clamper Bracelet 6'),(7,'fern clamper 7','BTEI','1600','iteam7.jpg',' Mexican Silver Fern Clamper Bracelet 7'),(8,'fern clamper 8','BFGH','2100','iteam8.jpg',' Mexican Silver Fern Clamper Bracelet 8'),(9,'fern clamper 9','BHKI','2500','iteam9.jpeg',' Mexican Silver Fern Clamper Bracelet 9'),(10,'fern clamper 10','FTUH','2000','iteam10.jpeg',' Mexican Silver Fern Clamper Bracelet 10'),(11,'fern clamper 11','OOPO','4500','iteam11.jpeg',' Mexican Silver Fern Clamper Bracelet 11'),(12,'fern clamper 12','QWED','4858','iteam12.jpeg',' Mexican Silver Fern Clamper Bracelet 12'),(13,'fern clamper 13','AEDF','4850','iteam13.jpeg',' Mexican Silver Fern Clamper Bracelet 13'),(14,'fern clamper 14','PIUY','4780','iteam14.jpeg',' Mexican Silver Fern Clamper Bracelet 14'),(15,'fern clamper 15','KIKI','2500','iteam15.jpeg',' Mexican Silver Fern Clamper Bracelet 15'),(16,'fern clamper 16','NHJI','2100','iteam16.jpeg',' Mexican Silver Fern Clamper Bracelet 16');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`id`,`name`,`email`,`subject`,`message`) values (1,NULL,NULL,NULL,NULL),(2,'dfgg','somani.chirag1@gmail.com','bjs','jhjsdf  '),(3,'fg','somani.chirag1@gmail.com','hsjd','hjddv  ');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `mobile` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`,`email`,`address`,`mobile`) values (1,'aa@gmail.com','aa',NULL,NULL,NULL),(2,'somani.chirag1@gmail','chirag',NULL,NULL,NULL),(3,'ss','aa','somani.chirag1@gmail.com','sdsds',1212121212),(4,'ss','ansh','somani.chirag1@gmail.com','sdsds',1212121212),(5,'anshul','anshul','anshul@gmail.com','sdsds',1212121212),(6,'anshul','anshul','anshul@gmail.com','sdsds',1212121212),(7,'xdf','dd','dsfsdf@gmail.com','gits',26554),(8,'chirag','123','somani.chirag1@gmail.com','gits',468445464),(9,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL),(15,'varun','varun','varun@gmail.com','varun',0),(16,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `newsletter` */

DROP TABLE IF EXISTS `newsletter`;

CREATE TABLE `newsletter` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `newsletter` */

insert  into `newsletter`(`id`,`emailid`) values (1,'s'),(2,'somani.chirag1@gmail.com'),(3,'churag1@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
