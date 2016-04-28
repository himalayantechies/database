-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: lalitpur_napi_naksha
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

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
-- Table structure for table `building_types`
--

DROP TABLE IF EXISTS `building_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building_types` (
  `building_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `building_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`building_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_types`
--

LOCK TABLES `building_types` WRITE;
/*!40000 ALTER TABLE `building_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `building_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `building_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(255) DEFAULT NULL,
  `building_type_id` int(255) DEFAULT NULL,
  `ground_coverage` varchar(255) DEFAULT NULL,
  `total_floor` varchar(255) DEFAULT NULL,
  `total_floor_area` varchar(255) DEFAULT NULL,
  `designed_by` varchar(255) DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `no_objection_date` date DEFAULT NULL,
  `drawing` varchar(255) DEFAULT NULL,
  `completion_certificate` varchar(255) DEFAULT NULL,
  `land_id` int(255) NOT NULL,
  PRIMARY KEY (`building_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_areas`
--

DROP TABLE IF EXISTS `land_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land_areas` (
  `land_area_id` int(11) NOT NULL AUTO_INCREMENT,
  `land_id` int(11) NOT NULL,
  `ropani` int(11) DEFAULT NULL,
  `ana` int(11) DEFAULT NULL,
  `paisa` int(11) DEFAULT NULL,
  `daam` int(11) DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  PRIMARY KEY (`land_area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_areas`
--

LOCK TABLES `land_areas` WRITE;
/*!40000 ALTER TABLE `land_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_buildings`
--

DROP TABLE IF EXISTS `land_buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land_buildings` (
  `land_id` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_buildings`
--

LOCK TABLES `land_buildings` WRITE;
/*!40000 ALTER TABLE `land_buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_deposit_taxes`
--

DROP TABLE IF EXISTS `land_deposit_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `land_deposit_taxes` (
  `land_deposit_tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `land_id` int(11) NOT NULL,
  `additional_deposit` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `additional_tax` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`land_deposit_tax_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_deposit_taxes`
--

LOCK TABLES `land_deposit_taxes` WRITE;
/*!40000 ALTER TABLE `land_deposit_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_deposit_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lands`
--

DROP TABLE IF EXISTS `lands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lands` (
  `land_id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_date` date DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `plot_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `past_ward_no` varchar(255) DEFAULT NULL,
  `current_ward_no` varchar(255) DEFAULT NULL,
  `road_access` varchar(255) DEFAULT NULL,
  `gld_road` varchar(255) DEFAULT NULL,
  `naksha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`land_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lands`
--

LOCK TABLES `lands` WRITE;
/*!40000 ALTER TABLE `lands` DISABLE KEYS */;
/*!40000 ALTER TABLE `lands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `land_id` int(11) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `transfer_date` date DEFAULT NULL,
  `transfer_tax` varchar(255) DEFAULT NULL,
  `transfer_certificate` varchar(255) DEFAULT NULL,
  `owner_certificate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warish_namas`
--

DROP TABLE IF EXISTS `warish_namas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warish_namas` (
  `warish_nama_id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`warish_nama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warish_namas`
--

LOCK TABLES `warish_namas` WRITE;
/*!40000 ALTER TABLE `warish_namas` DISABLE KEYS */;
/*!40000 ALTER TABLE `warish_namas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-20 14:32:12
