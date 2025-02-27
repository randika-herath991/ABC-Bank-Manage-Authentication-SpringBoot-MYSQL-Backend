-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: abcmanagedb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `banktransaction`
--

DROP TABLE IF EXISTS `banktransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banktransaction` (
  `tId` int NOT NULL AUTO_INCREMENT,
  `transacAmount` float NOT NULL,
  `transacDecription` varchar(100) NOT NULL,
  `transacType` varchar(1) DEFAULT NULL,
  `transacTime` datetime NOT NULL,
  `aId` int DEFAULT NULL,
  `sourceAccId` int NOT NULL,
  `destinationAccId` int DEFAULT NULL,
  PRIMARY KEY (`tId`),
  KEY `FKimx7nea82ngbq8txq8euyrqb2` (`sourceAccId`),
  CONSTRAINT `FKimx7nea82ngbq8txq8euyrqb2` FOREIGN KEY (`sourceAccId`) REFERENCES `bankaccount` (`aId`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banktransaction`
--

LOCK TABLES `banktransaction` WRITE;
/*!40000 ALTER TABLE `banktransaction` DISABLE KEYS */;
INSERT INTO `banktransaction` VALUES (78,10000,'Welcome Withdraw !','w','2025-02-15 19:35:00',102,102,102),(79,25000,'Welcome Deposit !','d','2025-02-16 19:36:00',102,102,102),(80,50000,'Welcome Transfer !','t','2025-02-17 19:37:00',102,102,102),(81,30000,'Welcome Withdraw !','w','2025-02-15 20:01:00',104,104,104),(82,50000,'Welcome Transfer !','t','2025-02-16 23:38:00',106,106,106),(83,45000,'Welcome Deposit !','d','2025-02-16 23:39:00',106,106,106),(84,15000,'Welcome Withdraw !','w','2025-02-16 23:40:00',106,106,106),(85,25000,'Welcome Transfer !','t','2025-02-18 03:25:00',107,107,107),(86,60000,'Welcome Deposit !','d','2025-02-18 03:27:00',107,107,107),(88,5000,'Welcome Transfer !','t','2025-02-21 00:09:00',102,102,104);
/*!40000 ALTER TABLE `banktransaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-27 21:32:09
