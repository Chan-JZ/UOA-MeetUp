-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: events_db
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `events_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `events_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `events_db`;

--
-- Table structure for table `Event`
--

DROP TABLE IF EXISTS `Event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_starttime` time DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `address_3` varchar(255) DEFAULT NULL,
  `event_description` varchar(1000) DEFAULT NULL,
  `event_endtime` time DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event`
--

LOCK TABLES `Event` WRITE;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` VALUES (2,'CTF','2030-01-05','00:00:00','Uni','','','','00:00:00'),(3,'Gathering','2030-05-07','00:00:00','House','','','','00:00:00'),(5,'Stats Workshop','2023-03-15','00:00:00','Brags','','','','00:00:00'),(6,'Stats Workshop 2','2023-04-13','00:00:00','Brags','','','','00:00:00'),(7,'Stats Workshop 3','2024-04-18','00:00:00','Brags','','','','00:00:00'),(8,'asdasdasda','2025-02-03','00:00:00',NULL,'','','','00:00:00'),(9,'Tsghdf','2022-02-01','02:00:00',NULL,NULL,NULL,'adasd','412:30:00'),(10,'asfdbvnm','2023-02-02','01:00:00',NULL,NULL,NULL,'dvxcbv','18:15:00'),(11,'asdgvc','2023-01-02','02:30:00',NULL,NULL,NULL,'hgfvb','14:15:00'),(12,'asdsvdfv','2023-01-02','01:00:00','adsfg','ghfvc','yrter','zxcv','14:15:00'),(13,'asd','2025-01-04','02:15:00','asd','asd','asd','asd','13:15:00'),(14,'asdfsdg','2023-02-01','02:15:00','as','as','as','as','13:15:00'),(15,'asd','2024-01-01','112:00:00','ads','ads','asd','asd','13:15:00'),(16,'as','2026-01-03','03:30:00','asd','asd','asd','asd','14:30:00'),(17,'asd','2025-01-03','04:15:00','Yeet','Yeet2','Yote','IDK','13:15:00'),(18,'asd','2022-01-03','02:45:00','Yeet','Yeet2','Yote','IDK','13:00:00'),(19,'asd','2025-01-06','01:00:00','Yeet','Yeet2','Yote','IDK','13:15:00'),(20,'asdasdasd','2025-01-06','01:00:00','Yeet','Yeet2','Yote','IDK','13:15:00'),(21,'asd','2023-03-03','312:15:00','Yeet','Yeet2','Yote','IDK','02:00:00'),(22,'ad','2023-01-02','212:30:00','Yeet','Yeet2','Yote','IDK','13:00:00'),(23,'asd','2024-01-02','212:15:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(24,'asd','2025-04-04','312:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(25,'asd','2023-02-03','02:00:00','Yeet','Yeet2','Yote','IDK','01:15:00'),(26,'asd','2024-01-03','03:15:00','Yeet','Yeet2','Yote','IDK','13:00:00'),(27,'asd','2024-01-01','02:00:00','Yeet','Yeet2','Yote','IDK','01:15:00'),(28,'asd','2023-01-03','212:15:00','Yeet','Yeet2','Yote','IDK','01:15:00'),(29,'asd','2023-02-02','212:15:00','Yeet','Yeet2','Yote','IDK','01:15:00'),(30,'asd','2024-01-02','02:15:00','Yeet','Yeet2','Yote','IDK','13:00:00'),(31,'asd','2025-02-02','02:00:00','Yeet','Yeet2','Yote','IDK','14:30:00'),(32,'as','2023-02-02','112:15:00','Yeet','Yeet2','Yote','IDK','13:15:00'),(33,'as','2023-02-02','112:15:00','Yeet','Yeet2','Yote','IDK','13:15:00'),(34,'Hub Gathering','2026-03-05','02:15:00','Yeet','Yeet2','Yote','IDK','14:15:00'),(35,'sad','2023-03-02','04:15:00','Yeet','Yeet2','Yote','IDK','15:30:00'),(36,'sad me','2023-03-02','04:15:00','Yeet','Yeet2','Yote','IDK','15:30:00'),(37,'Gitt','2023-01-02','01:00:00','Yeet','Yeet2','Yote','IDK','15:00:00'),(38,'Git2','2023-01-02','112:15:00','Yeet','Yeet2','Yote','IDK','15:15:00'),(39,'Git3','2022-12-02','03:15:00','Yeet','Yeet2','Yote','IDK','13:00:00'),(40,'Git4','2022-02-02','01:00:00','Yeet','Yeet2','Yote','IDK','02:00:00'),(41,'Git10','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','03:00:00'),(42,'Git54','2024-01-02','01:00:00','Yeet','Yeet2','Yote','IDK','02:00:00'),(43,'Git5','2024-02-05','112:15:00','Yeet','Yeet2','Yote','IDK','14:15:00'),(44,'asd','2022-02-02','312:45:00','Yeet','Yeet2','Yote','IDK','03:45:00'),(45,'wq','2023-02-02','02:45:00','Yeet','Yeet2','Yote','IDK','15:30:00'),(46,'Bob\'s Event','2026-01-03','02:00:00','Yeet','Yeet2','Yote','IDK','05:00:00'),(47,'Charles\'s event','2023-01-02','02:45:00','Yeet','Yeet2','Yote','IDK','15:45:00'),(48,'Ele\'s event','2022-02-02','01:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(49,'Ghan\'s Event','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(50,'Daniel\'s event','2022-01-01','12:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(51,'Daniel\'s event','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','12:00:00'),(52,'Duck CTF','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(53,'Testing123','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(54,'Ethereal pls','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','01:00:00'),(55,'Test event','2022-06-11','01:00:00','Yeet','Yeet2','Yote','IDK','13:15:00'),(56,'Test 2','2022-06-10','01:00:00','Yeet','Yeet2','Yote','IDK','14:00:00'),(57,'Help me','2022-06-11','02:00:00','ASD','ADSDSAD','DWDw','SDSADADSDSA','04:00:00'),(58,'GIve me your D','2022-06-10','03:15:00','Your','Class','Right now','We worked very hard for this D','13:00:00'),(59,'asdas','2022-01-01','13:15:00','Add1','Add2','ADd3','DEsc','16:15:00'),(60,'asdas','2022-01-01','13:15:00','Add1','Add2','ADd3','DEsc','16:15:00'),(61,'asdsads','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDK','02:15:00'),(62,'adsadsa','2022-01-01','02:30:00','Yeet','Yeet2','Yote','IDK','01:15:00'),(63,'jvjhvhjv','2025-04-03','19:45:00','Yeet','Yeet2','Yote','IDK','20:00:00'),(64,'hello world','2022-02-03','14:30:00','Yeet','Yeet2','Yote','IDK','16:45:00'),(65,'Name','2022-06-10','01:00:00','Address','Adress1','Address3','HA','14:00:00'),(66,'asd','2022-06-11','04:00:00','Yeet','Yeet2','Yote','IDK','15:30:00'),(67,'asdsa','2022-01-03','03:00:00','Yeet','Yeet2','Yote','IDK','14:15:00'),(68,'Name','2022-01-01','01:00:00','Yeet','Yeet2','Yote','IDKasda','02:00:00'),(69,'Abc','2022-06-08','02:15:00','Sbc','University of Adelaide','Wall Street','Hello','03:15:00'),(70,'My Event','2023-05-01','02:00:00','Address 1','Yeet 22','Yote 3','Hello!','13:00:00'),(71,'My Event','2023-05-01','02:00:00','Address 1','Yeet 2','Yote 3','Hello!','03:00:00'),(72,'Abc','2022-01-01','02:00:00','Yeet','Yeet2','Yote','Hello!','14:00:00'),(73,'My event here!','2022-01-01','01:00:00','Yeet','Yeet2','Yote','Welcome!','02:00:00'),(74,'My event here !!','2022-01-01','04:00:00','Yeet','Yeet2','Yote','Hello!','13:15:00');
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Guestlist`
--

DROP TABLE IF EXISTS `Guestlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Guestlist` (
  `guest_id` int NOT NULL,
  `event_id` int NOT NULL,
  `is_going` tinyint(1) DEFAULT NULL,
  `available_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guestlist`
--

LOCK TABLES `Guestlist` WRITE;
/*!40000 ALTER TABLE `Guestlist` DISABLE KEYS */;
INSERT INTO `Guestlist` VALUES (1,1,0,'00:00:00'),(3,-1,0,'00:00:00'),(6,-1,0,'00:00:00'),(2,-1,0,'00:00:00'),(6,-1,0,'00:00:00'),(2,-1,0,'00:00:00'),(3,-1,0,'00:00:00'),(2,33,0,'00:00:00'),(3,33,0,'00:00:00'),(4,34,0,'00:00:00'),(6,34,0,'00:00:00'),(3,36,0,'00:00:00'),(4,36,0,'00:00:00'),(6,36,0,'00:00:00'),(2,38,0,'00:00:00'),(4,38,0,'00:00:00'),(2,39,0,'00:00:00'),(4,40,1,'06:00:00'),(6,40,1,'04:00:00'),(3,41,0,'00:00:00'),(4,41,0,'00:00:00'),(2,42,1,'01:00:00'),(4,43,0,'00:00:00'),(2,45,0,'08:00:00'),(1,46,1,'05:00:00'),(3,46,0,'00:00:00'),(2,47,0,'00:00:00'),(4,47,0,'00:00:00'),(1,48,1,'22:15:00'),(4,49,0,'00:00:00'),(2,51,0,'00:00:00'),(3,52,0,'00:00:00'),(4,52,0,'00:00:00'),(2,53,0,'00:00:00'),(3,53,0,'00:00:00'),(3,54,0,'00:00:00'),(9,57,0,'00:00:00'),(2,60,0,'00:00:00'),(2,61,0,'00:00:00'),(4,62,0,'00:00:00'),(6,63,0,'00:00:00'),(4,64,0,'00:00:00'),(4,65,0,'00:00:00'),(3,65,0,'00:00:00'),(1,65,0,'00:00:00'),(3,66,0,'00:00:00'),(1,66,0,'00:00:00'),(4,66,0,'00:00:00'),(6,66,0,'00:00:00'),(1,67,0,'00:00:00'),(3,67,0,'00:00:00'),(3,68,0,'00:00:00'),(4,68,0,'00:00:00'),(1,68,0,'00:00:00'),(3,69,0,'00:00:00'),(6,69,0,'00:00:00'),(1,69,0,'00:00:00'),(4,69,0,'00:00:00'),(4,70,0,'00:00:00'),(1,70,0,'00:00:00'),(3,70,0,'00:00:00'),(6,70,0,'00:00:00'),(1,71,0,'00:00:00'),(3,71,0,'00:00:00'),(4,71,0,'00:00:00'),(1,72,0,'00:00:00'),(3,72,0,'00:00:00'),(4,72,0,'00:00:00'),(4,73,0,'00:00:00'),(3,73,0,'00:00:00'),(1,73,0,'00:00:00'),(1,74,0,'00:00:00'),(3,74,0,'00:00:00'),(4,74,0,'00:00:00');
/*!40000 ALTER TABLE `Guestlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hostlist`
--

DROP TABLE IF EXISTS `Hostlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hostlist` (
  `host_id` int NOT NULL,
  `event_id` int NOT NULL,
  KEY `host_id` (`host_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `Hostlist_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `User` (`user_id`),
  CONSTRAINT `Hostlist_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `Event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hostlist`
--

LOCK TABLES `Hostlist` WRITE;
/*!40000 ALTER TABLE `Hostlist` DISABLE KEYS */;
INSERT INTO `Hostlist` VALUES (1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(2,46),(3,47),(4,48),(6,49),(1,50),(1,51),(1,52),(1,53),(1,54),(2,55),(1,56),(8,57),(1,58),(1,59),(1,63),(1,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,71),(2,72),(2,73),(2,74);
/*!40000 ALTER TABLE `Hostlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isAdmin` tinyint NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Daniela','Cheng','DChong','123','danielchong@gmail.com',1),(2,'Alice','Bob','Abob','1234','abob@gmail.com',1),(3,'Charles','Dickson','CDickson','12345','cdickson@gmail.com',1),(4,'Elenasa','Fiona','Efio','123456','efio@gmail.com',1),(6,'Gordon','Hamsay','Gham','1234567','Gham@gmail.com',1),(8,'Alusha','Banana','randomperson.wan@gmail.com','','randomperson.wan@gmail.com',1),(9,'Banana','Nana','Banana','banana','weilongsg@gmail.com',0),(10,'Abc','D','abc','abc','abc@gmail.com',0),(11,'Abcdef','Ghi','abcd','abc','abc@gmail.com',0),(12,'asda','asdasd','asda','asdas','asdasd@gmailasda.com',0),(13,'abcdef','defghijk','abcdef','weilong','abc@gmail.com',0),(14,'Wei Long','Wan','wa','12345','we@gmial.com',0),(15,'Wei Longer','Wan','weiwei','1234','wei@gmail.com',0),(17,'Long','Longest','longer','long','long@gmail.com',0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10 14:16:31
