-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.37-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ebdb
--

CREATE DATABASE IF NOT EXISTS ebdb;
USE ebdb;


--
-- Definition of table `ref_carebundle`
--

DROP TABLE IF EXISTS `ref_carebundle`;
CREATE TABLE `ref_carebundle` (
  `cb_code` varchar(45) DEFAULT NULL,
  `cb_name` varchar(145) DEFAULT NULL,
  `cb_desc` varchar(245) DEFAULT NULL,
  `cb_desc_uri` varchar(245) DEFAULT NULL,
  `consumer_info` varchar(700) DEFAULT NULL,
  `main_cpt_code` varchar(45) DEFAULT NULL,
  `simple_complex` varchar(45) DEFAULT NULL,
  `cb_category` varchar(85) DEFAULT NULL,
  `main_facility` varchar(45) DEFAULT NULL,
  `health_category_name` varchar(45) DEFAULT NULL,
  `icd9` varchar(45) DEFAULT NULL,
  `icd10` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_carebundle`
--

/*!40000 ALTER TABLE `ref_carebundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_carebundle` ENABLE KEYS */;


--
-- Definition of table `ref_carebundlestep`
--

DROP TABLE IF EXISTS `ref_carebundlestep`;
CREATE TABLE `ref_carebundlestep` (
  `cb_code` varchar(45) DEFAULT NULL,
  `cb_step_code` varchar(45) DEFAULT NULL,
  `cb_step_name` varchar(145) DEFAULT NULL,
  `cb_step_desc` varchar(245) DEFAULT NULL,
  `service_category` varchar(45) DEFAULT NULL,
  `provider_type` varchar(45) DEFAULT NULL,
  `icd9` varchar(45) DEFAULT NULL,
  `icd10` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_carebundlestep`
--

/*!40000 ALTER TABLE `ref_carebundlestep` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_carebundlestep` ENABLE KEYS */;


--
-- Definition of table `ref_carebundlestepservice`
--

DROP TABLE IF EXISTS `ref_carebundlestepservice`;
CREATE TABLE `ref_carebundlestepservice` (
  `cb_code` varchar(45) DEFAULT NULL,
  `cb_step_code` varchar(45) DEFAULT NULL,
  `service_code` varchar(45) DEFAULT NULL,
  `service_code_type` varchar(45) DEFAULT NULL,
  `step_service_name` varchar(145) DEFAULT NULL,
  `health_service_type` varchar(45) DEFAULT NULL,
  `primary_facility` varchar(45) DEFAULT NULL,
  `prim4step` varchar(45) DEFAULT NULL,
  `cpt4rev_rev4drg` varchar(45) DEFAULT NULL,
  `icd9` varchar(45) DEFAULT NULL,
  `icd10` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_carebundlestepservice`
--

/*!40000 ALTER TABLE `ref_carebundlestepservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_carebundlestepservice` ENABLE KEYS */;


--
-- Definition of table `ref_cbcodecategory`
--

DROP TABLE IF EXISTS `ref_cbcodecategory`;
CREATE TABLE `ref_cbcodecategory` (
  `cb_code_cat` varchar(45) DEFAULT NULL,
  `cb_code_cat_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_cbcodecategory`
--

/*!40000 ALTER TABLE `ref_cbcodecategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_cbcodecategory` ENABLE KEYS */;


--
-- Definition of table `ref_servicename`
--

DROP TABLE IF EXISTS `ref_servicename`;
CREATE TABLE `ref_servicename` (
  `service_code` varchar(45) DEFAULT NULL,
  `service_name_display` varchar(145) DEFAULT NULL,
  `service_desc` varchar(245) DEFAULT NULL,
  `service_code_type` varchar(45) DEFAULT NULL,
  `service_tech_name` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_servicename`
--

/*!40000 ALTER TABLE `ref_servicename` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_servicename` ENABLE KEYS */;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
