-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2016 at 04:06 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vidatha`
--

-- --------------------------------------------------------

--
-- Table structure for table `building_type_ref`
--

DROP TABLE IF EXISTS `building_type_ref`;
CREATE TABLE IF NOT EXISTS `building_type_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `discription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_mst`
--

DROP TABLE IF EXISTS `business_mst`;
CREATE TABLE IF NOT EXISTS `business_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ent_id` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `business_product_trn`
--

DROP TABLE IF EXISTS `business_product_trn`;
CREATE TABLE IF NOT EXISTS `business_product_trn` (
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

-- --------------------------------------------------------

--
-- Table structure for table `buss_image_mst`
--

DROP TABLE IF EXISTS `buss_image_mst`;
CREATE TABLE IF NOT EXISTS `buss_image_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buss_id` int(11) DEFAULT NULL,
  `image` longblob,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_staff_trn`
--

DROP TABLE IF EXISTS `bus_staff_trn`;
CREATE TABLE IF NOT EXISTS `bus_staff_trn` (
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

-- --------------------------------------------------------

--
-- Table structure for table `course_mst`
--

DROP TABLE IF EXISTS `course_mst`;
CREATE TABLE IF NOT EXISTS `course_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `couser_name` varchar(45) DEFAULT NULL,
  `course_discrip` varchar(75) DEFAULT NULL,
  `course_type` int(11) DEFAULT NULL,
  `course_level` tinyint(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer_type_ref`
--

DROP TABLE IF EXISTS `employer_type_ref`;
CREATE TABLE IF NOT EXISTS `employer_type_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(45) DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employe_mst`
--

DROP TABLE IF EXISTS `employe_mst`;
CREATE TABLE IF NOT EXISTS `employe_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(4) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `employe_work`
--

DROP TABLE IF EXISTS `employe_work`;
CREATE TABLE IF NOT EXISTS `employe_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `vrc_id` int(11) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enterpreneur_mst`
--

DROP TABLE IF EXISTS `enterpreneur_mst`;
CREATE TABLE IF NOT EXISTS `enterpreneur_mst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_key` varchar(45) DEFAULT NULL,
  `vrc_id` int(11) DEFAULT NULL,
  `isBenifi` tinyint(1) DEFAULT '0',
  `enter_pre_no` int(11) DEFAULT '0',
  `emp_id` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `procution_capacity_unit_ref`
--

DROP TABLE IF EXISTS `procution_capacity_unit_ref`;
CREATE TABLE IF NOT EXISTS `procution_capacity_unit_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prodctrion_patten_ref`
--

DROP TABLE IF EXISTS `prodctrion_patten_ref`;
CREATE TABLE IF NOT EXISTS `prodctrion_patten_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quality_standard_ref`
--

DROP TABLE IF EXISTS `quality_standard_ref`;
CREATE TABLE IF NOT EXISTS `quality_standard_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `standard` varchar(45) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_dsitrbution_ref`
--

DROP TABLE IF EXISTS `sales_dsitrbution_ref`;
CREATE TABLE IF NOT EXISTS `sales_dsitrbution_ref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrc_building`
--

DROP TABLE IF EXISTS `vrc_building`;
CREATE TABLE IF NOT EXISTS `vrc_building` (
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

-- --------------------------------------------------------

--
-- Table structure for table `vrc_mst`
--

DROP TABLE IF EXISTS `vrc_mst`;
CREATE TABLE IF NOT EXISTS `vrc_mst` (
  `id` int(11) NOT NULL,
  `divisional` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `province` varchar(30) NOT NULL,
  `building_status` tinyint(1) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tele` varchar(10) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vrc_rent_wp`
--

DROP TABLE IF EXISTS `vrc_rent_wp`;
CREATE TABLE IF NOT EXISTS `vrc_rent_wp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vrc_id` int(11) DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='rent and waripanam';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
