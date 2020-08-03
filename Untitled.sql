-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: FactorySystem
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `custname` varchar(100) COLLATE utf8_bin NOT NULL,
  `custcontact` varchar(100) COLLATE utf8_bin NOT NULL,
  `custphone` varchar(100) COLLATE utf8_bin NOT NULL,
  `custaddress` varchar(100) COLLATE utf8_bin NOT NULL,
  `custemail` varchar(100) COLLATE utf8_bin NOT NULL,
  `custmemo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `empid` int NOT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'STM','Anna','035679508','8f no25 puding road east dist hsinchu city  taiwan','Taiwan@stm.com',NULL,2),(2,'QUALCOMM','Wendy','035476539','新竹市東區公道五路二段101號6樓','wendy@qti.com',NULL,1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `empid` int NOT NULL AUTO_INCREMENT,
  `Empname` varchar(45) COLLATE utf8_bin NOT NULL,
  `Empextension` varchar(45) COLLATE utf8_bin NOT NULL,
  `Empjobtitle` varchar(45) COLLATE utf8_bin NOT NULL,
  `Empemail` varchar(45) COLLATE utf8_bin NOT NULL,
  `Empreportto` varchar(45) COLLATE utf8_bin NOT NULL,
  `Emparea` varchar(45) COLLATE utf8_bin NOT NULL,
  `Empmemo` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Rita','1112','section manager','rita@GFC.com','CEO','Taipei',NULL),(2,'Cidy','2231','Engineer','cidy@GFC.com','Rita','Hsinchu',NULL);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machines` (
  `macid` int NOT NULL AUTO_INCREMENT,
  `macname` varchar(100) COLLATE utf8_bin NOT NULL,
  `macstatus` varchar(100) COLLATE utf8_bin NOT NULL,
  `macuser` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `macpurchase` datetime NOT NULL,
  `macmemo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`macid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES (1,'tester_01','available',NULL,'2001-01-01 00:00:00',NULL),(2,'tester_02','used','op','2005-03-01 00:00:00',NULL);
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `ordernumber` varchar(50) COLLATE utf8_bin NOT NULL,
  `custid` int NOT NULL,
  `custname` varchar(100) COLLATE utf8_bin NOT NULL,
  `device` varchar(100) COLLATE utf8_bin NOT NULL,
  `orderdate` datetime NOT NULL,
  `oquantity` int NOT NULL,
  `arriveddate` datetime NOT NULL,
  `shippeddate` datetime NOT NULL,
  `omemo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('o20201',1,'STM','STV0991','2020-07-28 00:00:00',50,'0202-08-01 00:00:00','2020-08-07 00:00:00',NULL),('o20202',2,'Qualcomm','beamer','2020-07-29 00:00:00',150,'2020-07-30 00:00:00','2020-08-08 00:00:00',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workdetail`
--

DROP TABLE IF EXISTS `workdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workdetail` (
  `workid` int NOT NULL,
  `lotnumber` varchar(50) COLLATE utf8_bin NOT NULL,
  `ordernumber` varchar(100) COLLATE utf8_bin NOT NULL,
  `macid` int NOT NULL,
  `productdate` datetime NOT NULL,
  `expectdate` datetime NOT NULL,
  `wquantity` int NOT NULL,
  `process` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` varchar(100) COLLATE utf8_bin NOT NULL,
  `priority` varchar(100) COLLATE utf8_bin NOT NULL,
  `wmemo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`workid`,`lotnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workdetail`
--

LOCK TABLES `workdetail` WRITE;
/*!40000 ALTER TABLE `workdetail` DISABLE KEYS */;
INSERT INTO `workdetail` VALUES (1,'L020701','o20202',2,'2020-07-30 00:00:00','2020-08-06 00:00:00',150,'CP1','wait','urgent',NULL);
/*!40000 ALTER TABLE `workdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-03 15:25:19
