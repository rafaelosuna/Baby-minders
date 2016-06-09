CREATE DATABASE  IF NOT EXISTS `Alan` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Alan`;
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: Alan
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `BABY`
--

DROP TABLE IF EXISTS `BABY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BABY` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `last_name_search` (`last_name`),
  KEY `first name` (`first_name`),
  KEY `id_search` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CUSTOM_NOTIFICATIONS`
--

DROP TABLE IF EXISTS `CUSTOM_NOTIFICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOM_NOTIFICATIONS` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `user_id_list` varchar(2000) NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_cust_not_idx` (`id`),
  KEY `baby_id_cust_not_idx` (`baby_id`),
  KEY `tpt_id_cust_not_idx` (`template_id`),
  CONSTRAINT `baby_id_cust_not_fk` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `tpt_id_cust_not_fk` FOREIGN KEY (`template_id`) REFERENCES `NOTIFICATIONS_TEMPLATES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CUSTOM_NOTIFICATIONS_SETTINGS`
--

DROP TABLE IF EXISTS `CUSTOM_NOTIFICATIONS_SETTINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOM_NOTIFICATIONS_SETTINGS` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `user_id_list` varchar(1000) DEFAULT NULL,
  `frequency` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `custom_msg` varchar(5000) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`),
  KEY `id_cust_not_set_idx` (`id`),
  KEY `baby_id_cust_not_set_idx` (`baby_id`),
  CONSTRAINT `baby_id_cust_not__set_fk` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DIAPER`
--

DROP TABLE IF EXISTS `DIAPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DIAPER` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `notes` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID_UNIQUE` (`id`),
  KEY `id_idx` (`id`),
  KEY `baby_id_idx` (`baby_id`),
  CONSTRAINT `baby_id_fk` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EMAIL_NOTIFICATIONS`
--

DROP TABLE IF EXISTS `EMAIL_NOTIFICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMAIL_NOTIFICATIONS` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `user_id_list` varchar(2000) NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_eml_not_idx` (`id`),
  KEY `baby_id_eml_not_idx` (`baby_id`),
  KEY `tpt_id_eml_not_idx` (`template_id`),
  CONSTRAINT `baby_id_eml_not_fk` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `tpt_id_eml_not_fk` FOREIGN KEY (`template_id`) REFERENCES `NOTIFICATIONS_TEMPLATES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FOOD`
--

DROP TABLE IF EXISTS `FOOD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOOD` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `ounces` int(11) DEFAULT NULL,
  `side` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_idx` (`id`),
  KEY `baby_id_idx` (`baby_id`),
  CONSTRAINT `baby_id_idx` FOREIGN KEY (`id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MEDICATION`
--

DROP TABLE IF EXISTS `MEDICATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEDICATION` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `frequency` int(10) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `dosage` int(10) unsigned NOT NULL,
  `initial_capacity` int(10) unsigned NOT NULL,
  `medication_name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `med_id_idx` (`id`),
  KEY `med_baby_id_idx` (`baby_id`),
  FULLTEXT KEY `med_name_idx` (`medication_name`),
  CONSTRAINT `med_baby_id_idx` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NOTIFICATIONS_TEMPLATES`
--

DROP TABLE IF EXISTS `NOTIFICATIONS_TEMPLATES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NOTIFICATIONS_TEMPLATES` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `template` blob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_not_tpt_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PHONE_NOTIFICATIONS`
--

DROP TABLE IF EXISTS `PHONE_NOTIFICATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PHONE_NOTIFICATIONS` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `user_id_list` varchar(2000) NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `id_phone_not_idx` (`id`),
  KEY `baby_id_phone_not_idx` (`baby_id`),
  KEY `tpt_id_phone_not_idx` (`template_id`),
  CONSTRAINT `baby_id_phone_not_fk` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `tpt_id_phone_not_fk` FOREIGN KEY (`template_id`) REFERENCES `NOTIFICATIONS_TEMPLATES` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SLEEP`
--

DROP TABLE IF EXISTS `SLEEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SLEEP` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `sleep_id_idx` (`id`),
  KEY `sleep_baby_id_idx` (`baby_id`),
  CONSTRAINT `sleep_baby_id_fk` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(1000) NOT NULL,
  `password` varchar(2000) NOT NULL,
  `salt` varchar(2000) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `zip_code` int(10) unsigned DEFAULT NULL,
  `type` int(1) unsigned NOT NULL,
  `subscription` int(1) unsigned NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `email_notification` int(1) unsigned NOT NULL DEFAULT '1',
  `phone_notification` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `last_name` (`last_name`),
  KEY `first_name` (`first_name`),
  KEY `id_search` (`id`),
  FULLTEXT KEY `email_search` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_baby`
--

DROP TABLE IF EXISTS `user_baby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_baby` (
  `user_id` int(10) unsigned NOT NULL,
  `baby_id` int(10) unsigned NOT NULL,
  `relationship` int(1) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`baby_id`),
  KEY `baby_id_idx` (`baby_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `baby_id` FOREIGN KEY (`baby_id`) REFERENCES `BABY` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `USER` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'Alan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-08 20:04:35
