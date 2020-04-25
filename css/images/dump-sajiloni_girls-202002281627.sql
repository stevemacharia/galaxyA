-- MySQL dump 10.17  Distrib 10.3.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sajiloni_girls
-- ------------------------------------------------------
-- Server version	10.3.21-MariaDB-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `S_FeeStructure`
--

DROP TABLE IF EXISTS `S_FeeStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `S_FeeStructure` (
  `S_FeeStructureId` int(11) NOT NULL AUTO_INCREMENT,
  `S_VoteHeads` varchar(100) NOT NULL,
  `S_Term 1` int(11) NOT NULL,
  `S_Term2` int(11) NOT NULL,
  `S_Term3` int(11) NOT NULL,
  `S_Total` int(11) NOT NULL,
  PRIMARY KEY (`S_FeeStructureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_FeeStructure`
--

LOCK TABLES `S_FeeStructure` WRITE;
/*!40000 ALTER TABLE `S_FeeStructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `S_FeeStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_Fees`
--

DROP TABLE IF EXISTS `S_Fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `S_Fees` (
  `S_Fees_id` int(11) NOT NULL AUTO_INCREMENT,
  `S_StudentAdmNo` varchar(100) NOT NULL,
  `S_StudentFirstName` varchar(100) NOT NULL,
  `S_StudentSecondName` varchar(100) NOT NULL,
  `S_StudentLastName` varchar(100) NOT NULL,
  `S_StudentClass` varchar(100) NOT NULL,
  `S_Term` varchar(100) DEFAULT NULL,
  `S_TermFee` varchar(100) DEFAULT NULL,
  `S_AmmountPayed` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`S_Fees_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_Fees`
--

LOCK TABLES `S_Fees` WRITE;
/*!40000 ALTER TABLE `S_Fees` DISABLE KEYS */;
INSERT INTO `S_Fees` VALUES (1,'5831','steve','mwangi',' macharia',' 4l',NULL,NULL,NULL),(2,'5831','steve','mwangi',' macharia',' 4l',NULL,NULL,NULL),(3,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'5000'),(4,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000'),(5,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000'),(6,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000'),(7,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000'),(8,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'33000'),(9,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'50000'),(10,'6010','Benson ','Mbithi',' Munene',' 1','Second Term',NULL,'50000'),(11,'6010','Benson ','Mbithi',' Munene',' 1','Second Term',NULL,'50000'),(12,'5825','Danson','Mungai',' Mungatana',' 4','Second Term',NULL,''),(13,'5825','Danson','Mungai',' Mungatana',' 4','Third Term',NULL,''),(14,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'50000');
/*!40000 ALTER TABLE `S_Fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_Receipts`
--

DROP TABLE IF EXISTS `S_Receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `S_Receipts` (
  `Receipt_Id` int(11) NOT NULL AUTO_INCREMENT,
  `S_StudentAdmNo` varchar(100) NOT NULL,
  `S_StudentFirstName` varchar(100) NOT NULL,
  `S_StudentSecondName` varchar(100) NOT NULL,
  `S_StudentLastName` varchar(100) NOT NULL,
  `S_StudentClass` varchar(100) NOT NULL,
  `S_Term` varchar(100) NOT NULL,
  `S_TermFee` varchar(100) DEFAULT NULL,
  `S_AmmountPayed` varchar(100) NOT NULL,
  `S_FeeBalance` varchar(100) DEFAULT NULL,
  `S_DateIssued` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `S_IssuanceName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Receipt_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_Receipts`
--

LOCK TABLES `S_Receipts` WRITE;
/*!40000 ALTER TABLE `S_Receipts` DISABLE KEYS */;
INSERT INTO `S_Receipts` VALUES (1,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000',NULL,'2020-02-09 19:39:48',NULL),(2,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000',NULL,'2020-02-09 19:41:25',NULL),(3,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000',NULL,'2020-02-09 19:57:53',''),(4,'5823','Phares','Muhinga',' Karanja',' 4','Second Term',NULL,'50000',NULL,'2020-02-09 19:58:49',''),(5,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'33000',NULL,'2020-02-11 15:05:09','steve'),(6,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'50000',NULL,'2020-02-25 21:09:15','steve'),(7,'6010','Benson ','Mbithi',' Munene',' 1','Second Term',NULL,'50000',NULL,'2020-02-26 20:35:17','steve'),(8,'6010','Benson ','Mbithi',' Munene',' 1','Second Term',NULL,'50000',NULL,'2020-02-26 20:53:12','steve'),(9,'5825','Danson','Mungai',' Mungatana',' 4','Second Term',NULL,'',NULL,'2020-02-26 21:13:39','steve'),(10,'5825','Danson','Mungai',' Mungatana',' 4','Third Term',NULL,'',NULL,'2020-02-26 21:13:53','steve'),(11,'5831','steve','mwangi',' macharia',' 4l','Second Term',NULL,'50000',NULL,'2020-02-26 21:25:08','steve');
/*!40000 ALTER TABLE `S_Receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_Students`
--

DROP TABLE IF EXISTS `S_Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `S_Students` (
  `idS_Student` int(11) NOT NULL AUTO_INCREMENT,
  `S_StudentAdmNo` varchar(45) NOT NULL,
  `S_StudentFirstName` varchar(45) NOT NULL,
  `S_StudentSecondName` varchar(45) NOT NULL,
  `S_StudentLastName` varchar(45) NOT NULL,
  `S_StudentClass` varchar(45) NOT NULL,
  PRIMARY KEY (`idS_Student`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_Students`
--

LOCK TABLES `S_Students` WRITE;
/*!40000 ALTER TABLE `S_Students` DISABLE KEYS */;
INSERT INTO `S_Students` VALUES (1,'5831','steve','mwangi',' macharia',' 4l'),(5,'5813','William','Mwangi',' Magwa',' 4L'),(6,'6010','Benson ','Mbithi',' Munene',' 1'),(7,'5816','George','Munyiri',' Githui',' 4'),(8,'5830','James','Mwangi',' Kamau',' 2'),(9,'5823','Phares','Muhinga',' Karanja',' 4'),(10,'5825','Danson','Mungai',' Mungatana',' 4');
/*!40000 ALTER TABLE `S_Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `S_Users`
--

DROP TABLE IF EXISTS `S_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `S_Users` (
  `idS_Username` int(11) NOT NULL AUTO_INCREMENT,
  `S_Username` varchar(45) NOT NULL,
  `S_Passw` varchar(100) NOT NULL,
  `S_UserRole` varchar(45) NOT NULL,
  PRIMARY KEY (`idS_Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `S_Users`
--

LOCK TABLES `S_Users` WRITE;
/*!40000 ALTER TABLE `S_Users` DISABLE KEYS */;
INSERT INTO `S_Users` VALUES (1,'steve','29546effc951f63bc87fcdecfae7a7c2','admin');
/*!40000 ALTER TABLE `S_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sajiloni_girls'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-28 16:27:43
