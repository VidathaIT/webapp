-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: vidatha
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
-- Table structure for table `buildingtyps`
--

DROP TABLE IF EXISTS `buildingtyps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildingtyps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(75) NOT NULL,
  `discription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bus_staff_trn`
--

DROP TABLE IF EXISTS `bus_staff_trn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_staff_trn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) DEFAULT NULL,
  `family_staff` int(11) DEFAULT NULL,
  `daily_pay_staff` int(11) DEFAULT NULL,
  `piece_rate_staff` int(11) DEFAULT NULL,
  `casual_staff` int(11) DEFAULT NULL,
  `permanat_staff` int(11) DEFAULT NULL,
  `tot_staff` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `business_product_trn`
--

DROP TABLE IF EXISTS `business_product_trn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_product_trn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) DEFAULT NULL,
  `prodution_patten` tinyint(1) DEFAULT NULL,
  `production_capacity` float DEFAULT NULL,
  `sales_distribution` tinyint(1) DEFAULT NULL,
  `quality_standard` tinyint(1) DEFAULT NULL,
  `direct_benefi` int(11) DEFAULT NULL,
  `indirect_benefi` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enterpreneur_id` int(11) DEFAULT NULL,
  `name_of_business` varchar(75) DEFAULT NULL,
  `business_type` tinyint(1) DEFAULT NULL,
  `name_of_pro_ser` varchar(45) DEFAULT NULL,
  `type_of_pro_ser` int(11) DEFAULT NULL,
  `pro_ser_description` varchar(100) DEFAULT NULL,
  `business_reg_no` varchar(45) DEFAULT NULL,
  `savings` float DEFAULT NULL,
  `machinaery_inv` float DEFAULT NULL,
  `raw_inv` float DEFAULT NULL,
  `building_inv` float DEFAULT NULL,
  `tot_inv` float DEFAULT NULL,
  `production_capacity_unit` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `buss_image_mst`
--

DROP TABLE IF EXISTS `buss_image_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buss_image_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buss_id` int(11) DEFAULT NULL,
  `image` longblob,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `course_mst`
--

DROP TABLE IF EXISTS `course_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `couser_name` varchar(45) DEFAULT NULL,
  `course_discrip` varchar(75) DEFAULT NULL,
  `course_type` int(11) DEFAULT NULL,
  `course_level` tinyint(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(4) DEFAULT NULL,
  `employertype_id` tinyint(1) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile1` varchar(10) DEFAULT NULL,
  `mobile2` varchar(10) DEFAULT NULL,
  `tele` varchar(10) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `dobirth` date DEFAULT NULL,
  `jonit_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employertypes`
--

DROP TABLE IF EXISTS `employertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(45) DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employeworks`
--

DROP TABLE IF EXISTS `employeworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `vrc_id` int(11) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enterpreneurs`
--

DROP TABLE IF EXISTS `enterpreneurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enterpreneurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_key` varchar(45) DEFAULT NULL,
  `vrc_id` int(11) DEFAULT NULL,
  `isBenifi` tinyint(1) DEFAULT '0',
  `enter_pre_no` int(11) DEFAULT '0',
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `dobirth` date DEFAULT NULL,
  `mobile1` varchar(10) DEFAULT NULL,
  `mobile2` varchar(10) DEFAULT NULL,
  `tele` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `vidatha_reg_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_key_UNIQUE` (`unique_key`),
  UNIQUE KEY `city_UNIQUE` (`city`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `procution_capacity_unit_ref`
--

DROP TABLE IF EXISTS `procution_capacity_unit_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procution_capacity_unit_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prodctrion_patten_ref`
--

DROP TABLE IF EXISTS `prodctrion_patten_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodctrion_patten_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quality_standard_ref`
--

DROP TABLE IF EXISTS `quality_standard_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_standard_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standard` varchar(45) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_dsitrbution_ref`
--

DROP TABLE IF EXISTS `sales_dsitrbution_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_dsitrbution_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vrc_building`
--

DROP TABLE IF EXISTS `vrc_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrc_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrc_id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `owner_tel` varchar(10) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vrc_rent_wp`
--

DROP TABLE IF EXISTS `vrc_rent_wp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrc_rent_wp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrc_id` int(11) DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='rent and waripanam';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vrcs`
--

DROP TABLE IF EXISTS `vrcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `divisional` varchar(40) NOT NULL,
  `district` varchar(40) NOT NULL,
  `province` varchar(40) NOT NULL,
  `buildingtyp_id` tinyint(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tele` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=332 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-09 10:58:13
