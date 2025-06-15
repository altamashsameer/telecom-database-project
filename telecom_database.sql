-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: telecom
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `BillID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `BillingDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`BillID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (301,1,'2024-12-01',9.99),(302,2,'2024-12-01',29.99),(303,3,'2024-12-01',19.99),(304,4,'2024-12-01',39.99),(305,5,'2024-12-01',29.99),(306,6,'2024-12-01',9.99),(307,7,'2024-12-01',29.99),(308,8,'2024-12-01',9.99),(309,9,'2024-12-01',39.99),(310,10,'2024-12-01',9.99);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ahmed Mehmood','ahmed@berlinsbi.com','9291470365','Carolin-Dehmel-Straße 144, Charlottenburg, Berlin, Germany'),(2,'Fatima Malik','fatimamalik@gmail.com','2398032376','Kata-Schwital-Allee 184, Mitte, Berlin, Germany'),(3,'Ali Rehman','alirehmanali@gmail.com','3921224241','Werneckeplatz 128, Kreuzberg, Berlin, Germany'),(4,'Aman Petwal','Aman@berlinsbi.com','9107492157','Wolfhard-Geisel-Gasse 6, Charlottenburg, Berlin, Germany'),(5,'Priya Sharma','psharma@bluemel.net','3570446491','Löwergasse 134, Mitte, Berlin, Germany'),(6,'Tabassum Eqbal','eqbal@aol.de','3428414739','Hans-Martin-Bohlander-Weg 117, Kreuzberg, Berlin, Germany'),(7,'Meinhard Krause','Meinhard@gmail.com','4401953658','Kensyring 138, Charlottenburg, Berlin, Germany'),(8,'Hubertine Sauer','Hsauer@boerner.org','4054892484','Hans-Dieter-Dobes-Weg 145, Prenzlauer Berg, Berlin, Germany'),(9,'Damian Möchlichen','Damian@yahoo.com','2139479692','Albertine-Losekann-Ring 78, Mitte, Berlin, Germany'),(10,'Prof. Walentina Jockel','Wjockel@hotmail.de','2136356874','Oderwaldstr. 19, Kreuzberg, Berlin, Germany');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customersupport`
--

DROP TABLE IF EXISTS `customersupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customersupport` (
  `CaseID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `IssueDescription` text,
  `Status` varchar(20) DEFAULT NULL,
  `DateOpened` date DEFAULT NULL,
  PRIMARY KEY (`CaseID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `customersupport_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersupport`
--

LOCK TABLES `customersupport` WRITE;
/*!40000 ALTER TABLE `customersupport` DISABLE KEYS */;
INSERT INTO `customersupport` VALUES (501,1,'Network connectivity issues in my area','Open','2024-11-28'),(502,2,'Billing inquiry about premium plan charges','Closed','2024-11-25'),(503,3,'Data speed slower than expected','Open','2024-11-29'),(504,4,'Unable to make international calls','Closed','2024-11-20'),(505,5,'Account setup assistance needed','Closed','2024-11-30'),(506,6,'SMS not working properly','Closed','2024-11-22'),(507,7,'Plan upgrade information required','Closed','2024-12-01'),(508,8,'Payment method update needed','Closed','2024-11-18'),(509,9,'Family plan configuration help','Closed','2024-11-27'),(510,10,'Signal strength issues at home','Closed','2024-11-15');
/*!40000 ALTER TABLE `customersupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `NetworkID` int NOT NULL,
  `NetworkName` varchar(50) DEFAULT NULL,
  `TechnologyType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`NetworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES (201,'Berlin Central Network','5G'),(202,'Berlin East Network','4G'),(203,'Berlin West Network','5G'),(204,'Berlin North Network','4G'),(205,'Berlin South Network','5G'),(206,'Berlin Metro Network','4G'),(207,'Berlin Business Network','5G'),(208,'Berlin Residential Network','4G'),(209,'Berlin Emergency Network','5G'),(210,'Berlin Backup Network','4G');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networkperformance`
--

DROP TABLE IF EXISTS `networkperformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networkperformance` (
  `NetworkID` int NOT NULL,
  `LogTimestamp` datetime NOT NULL,
  `AvailabilityPercent` decimal(5,2) DEFAULT NULL,
  `AvgLatency` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`NetworkID`,`LogTimestamp`),
  CONSTRAINT `networkperformance_ibfk_1` FOREIGN KEY (`NetworkID`) REFERENCES `network` (`NetworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networkperformance`
--

LOCK TABLES `networkperformance` WRITE;
/*!40000 ALTER TABLE `networkperformance` DISABLE KEYS */;
INSERT INTO `networkperformance` VALUES (201,'2024-12-01 08:00:00',99.50,12.50),(202,'2024-12-01 08:00:00',98.20,15.80),(203,'2024-12-01 08:00:00',97.10,18.20),(204,'2024-12-01 08:00:00',99.10,14.30),(205,'2024-12-01 08:00:00',99.80,11.70),(206,'2024-12-01 08:00:00',98.90,13.40),(207,'2024-12-01 08:00:00',99.60,10.90),(208,'2024-12-01 08:00:00',96.80,19.50),(209,'2024-12-01 08:00:00',99.90,9.80),(210,'2024-12-01 08:00:00',98.50,16.20);
/*!40000 ALTER TABLE `networkperformance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `networktower`
--

DROP TABLE IF EXISTS `networktower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `networktower` (
  `TowerID` int NOT NULL,
  `NetworkID` int DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TowerID`),
  KEY `NetworkID` (`NetworkID`),
  CONSTRAINT `networktower_ibfk_1` FOREIGN KEY (`NetworkID`) REFERENCES `network` (`NetworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `networktower`
--

LOCK TABLES `networktower` WRITE;
/*!40000 ALTER TABLE `networktower` DISABLE KEYS */;
INSERT INTO `networktower` VALUES (601,201,'Alexanderplatz, Berlin','Active'),(602,202,'Friedrichshain, Berlin','Active'),(603,203,'Charlottenburg, Berlin','Maintenance'),(604,204,'Prenzlauer Berg, Berlin','Active'),(605,205,'Kreuzberg, Berlin','Active'),(606,206,'Mitte, Berlin','Active'),(607,207,'Wilmersdorf, Berlin','Active'),(608,208,'Neukölln, Berlin','Inactive'),(609,209,'Tempelhof, Berlin','Active'),(610,210,'Spandau, Berlin','Active');
/*!40000 ALTER TABLE `networktower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satisfactionsurvey`
--

DROP TABLE IF EXISTS `satisfactionsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfactionsurvey` (
  `CustomerID` int NOT NULL,
  `SurveyDate` date NOT NULL,
  `SatisfactionRating` int DEFAULT NULL,
  `Remarks` text,
  PRIMARY KEY (`CustomerID`,`SurveyDate`),
  CONSTRAINT `satisfactionsurvey_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfactionsurvey`
--

LOCK TABLES `satisfactionsurvey` WRITE;
/*!40000 ALTER TABLE `satisfactionsurvey` DISABLE KEYS */;
INSERT INTO `satisfactionsurvey` VALUES (1,'2024-11-30',4,'Good service overall, minor network issues'),(2,'2024-11-30',5,'Very happy with premium plan benefits'),(3,'2024-11-30',3,'Data speeds could be better for the price'),(4,'2024-11-30',5,'Family saver plan works perfectly for us'),(5,'2024-11-30',4,'Premium features are worth the cost'),(6,'2024-11-30',4,'Basic plan meets my simple needs'),(7,'2024-11-30',5,'Excellent network coverage in business area'),(8,'2024-11-30',3,'Basic plan is okay but limited features'),(9,'2024-11-30',4,'Family plan sharing works well'),(10,'2024-11-30',4,'Reliable service, good value for money');
/*!40000 ALTER TABLE `satisfactionsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceplan`
--

DROP TABLE IF EXISTS `serviceplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceplan` (
  `PlanID` int NOT NULL,
  `PlanName` varchar(100) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `Validity` int DEFAULT NULL,
  PRIMARY KEY (`PlanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceplan`
--

LOCK TABLES `serviceplan` WRITE;
/*!40000 ALTER TABLE `serviceplan` DISABLE KEYS */;
INSERT INTO `serviceplan` VALUES (101,'Basic Plan','Prepaid',9.99,28),(102,'Premium Plan','Postpaid',29.99,30),(103,'Data Max','Prepaid',19.99,28),(104,'Family Saver','Postpaid',39.99,30),(105,'Premium Plan','Postpaid',29.99,30),(106,'Basic Plan','Prepaid',9.99,28),(107,'Premium Plan','Postpaid',29.99,30),(108,'Basic Plan','Prepaid',9.99,28),(109,'Family Saver','Postpaid',39.99,30),(110,'Basic Plan','Prepaid',9.99,28);
/*!40000 ALTER TABLE `serviceplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceplanreview`
--

DROP TABLE IF EXISTS `serviceplanreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceplanreview` (
  `CustomerID` int NOT NULL,
  `PlanID` int NOT NULL,
  `ReviewDate` date NOT NULL,
  `Rating` int DEFAULT NULL,
  `Review` text,
  PRIMARY KEY (`CustomerID`,`PlanID`,`ReviewDate`),
  KEY `PlanID` (`PlanID`),
  CONSTRAINT `serviceplanreview_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `serviceplanreview_ibfk_2` FOREIGN KEY (`PlanID`) REFERENCES `serviceplan` (`PlanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceplanreview`
--

LOCK TABLES `serviceplanreview` WRITE;
/*!40000 ALTER TABLE `serviceplanreview` DISABLE KEYS */;
INSERT INTO `serviceplanreview` VALUES (1,101,'2024-11-25',4,'Good basic plan for light users'),(2,102,'2024-11-25',5,'Premium plan has excellent features'),(3,103,'2024-11-25',3,'Data max is decent but could be faster'),(4,104,'2024-11-25',5,'Family saver is perfect for large families'),(5,105,'2024-11-25',4,'Premium plan offers good value'),(6,106,'2024-11-25',4,'Basic plan covers all my needs'),(7,107,'2024-11-25',5,'Premium features justify the cost'),(8,108,'2024-11-25',3,'Basic plan is limited but affordable'),(9,109,'2024-11-25',4,'Family saver works well for our usage'),(10,110,'2024-11-25',4,'Basic plan is reliable and cheap');
/*!40000 ALTER TABLE `serviceplanreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supportfeedback`
--

DROP TABLE IF EXISTS `supportfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supportfeedback` (
  `CaseID` int NOT NULL,
  `Rating` int DEFAULT NULL,
  `Comment` text,
  KEY `CaseID` (`CaseID`),
  CONSTRAINT `supportfeedback_ibfk_1` FOREIGN KEY (`CaseID`) REFERENCES `customersupport` (`CaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportfeedback`
--

LOCK TABLES `supportfeedback` WRITE;
/*!40000 ALTER TABLE `supportfeedback` DISABLE KEYS */;
INSERT INTO `supportfeedback` VALUES (501,4,'Response was quick but issue not fully resolved'),(502,5,'Excellent service, billing explained clearly'),(503,3,'Still waiting for technical team response'),(504,5,'Problem solved immediately, very satisfied'),(505,4,'Helpful support agent, setup completed'),(506,5,'SMS issue fixed quickly, great service'),(507,4,'Good information provided about upgrades'),(508,5,'Payment update was smooth and fast'),(509,3,'Family plan setup was complicated'),(510,4,'Signal issue addressed, improvement noted');
/*!40000 ALTER TABLE `supportfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `towerperformancelog`
--

DROP TABLE IF EXISTS `towerperformancelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `towerperformancelog` (
  `TowerID` int NOT NULL,
  `LogTimestamp` datetime NOT NULL,
  `SignalStrength` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`TowerID`,`LogTimestamp`),
  CONSTRAINT `towerperformancelog_ibfk_1` FOREIGN KEY (`TowerID`) REFERENCES `networktower` (`TowerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `towerperformancelog`
--

LOCK TABLES `towerperformancelog` WRITE;
/*!40000 ALTER TABLE `towerperformancelog` DISABLE KEYS */;
INSERT INTO `towerperformancelog` VALUES (601,'2024-12-01 08:00:00',-65.20),(602,'2024-12-01 08:00:00',-72.80),(603,'2024-12-01 08:00:00',-85.10),(604,'2024-12-01 08:00:00',-68.50),(605,'2024-12-01 08:00:00',-63.90),(606,'2024-12-01 08:00:00',-67.30),(607,'2024-12-01 08:00:00',-61.70),(608,'2024-12-01 08:00:00',-95.20),(609,'2024-12-01 08:00:00',-59.80),(610,'2024-12-01 08:00:00',-74.60);
/*!40000 ALTER TABLE `towerperformancelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usagerecord`
--

DROP TABLE IF EXISTS `usagerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usagerecord` (
  `UsageID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `NetworkID` int DEFAULT NULL,
  `UsageType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`UsageID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `NetworkID` (`NetworkID`),
  CONSTRAINT `usagerecord_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `usagerecord_ibfk_2` FOREIGN KEY (`NetworkID`) REFERENCES `network` (`NetworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usagerecord`
--

LOCK TABLES `usagerecord` WRITE;
/*!40000 ALTER TABLE `usagerecord` DISABLE KEYS */;
INSERT INTO `usagerecord` VALUES (401,1,201,'Call'),(402,2,202,'Data'),(403,3,203,'SMS'),(404,4,204,'Call'),(405,5,205,'Data'),(406,6,206,'SMS'),(407,7,207,'Call'),(408,8,208,'Data'),(409,9,209,'SMS'),(410,10,210,'Call');
/*!40000 ALTER TABLE `usagerecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-15 14:51:51
