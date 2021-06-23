CREATE DATABASE  IF NOT EXISTS `root` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `root`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: root
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cp`
--

DROP TABLE IF EXISTS `cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `humanaim` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `part` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp`
--

LOCK TABLES `cp` WRITE;
/*!40000 ALTER TABLE `cp` DISABLE KEYS */;
INSERT INTO `cp` VALUES (1,'IoT/모바일/웹 분야 소프트웨어 개발자 양성 ,네트워크/보안/클라우드 분야 시스템 엔지니어 양성','C/Java 프로그래밍 학습, 안드로이드, JSP 등 모바일 및 웹 기반 응용 SW 개발','IoT/모바일/웹 분야 SW 개발자 양성 및 NW/보안/클라우드 분야 시스템 엔지니어 양성을 위한 SW와 시스템 통합 교육과정으로 편성');
/*!40000 ALTER TABLE `cp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eotrmfs`
--

DROP TABLE IF EXISTS `eotrmfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eotrmfs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(40) NOT NULL,
  `content` varchar(500) NOT NULL,
  `postId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postId` (`postId`),
  CONSTRAINT `eotrmfs_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eotrmfs`
--

LOCK TABLES `eotrmfs` WRITE;
/*!40000 ALTER TABLE `eotrmfs` DISABLE KEYS */;
INSERT INTO `eotrmfs` VALUES (4,'asd@asd','asd',3),(5,'asd@asd','ㅇㅇㅇㅇㅇ',3),(6,'asd@asd','',3),(7,'asd@asd','',3),(8,'asd@asd','',3),(9,'asd@asd','',3),(10,'asd@asd','',3),(11,'asd@asd','',3),(12,'asd@asd','',3),(13,'asd@asd','',3),(14,'asd@asd','',3),(15,'asd@asd','',3),(16,'asd@asd','',3),(17,'asd@asd','',3),(18,'asd@asd','',3),(19,'asd@asd','',3),(20,'asd@asd','',3),(21,'asd@asd','',3),(22,'asd@asd','',3),(23,'asd@asd','',3),(24,'asd@asd','',3),(25,'asd@asd','',3),(26,'asd@asd','',3),(27,'asd@asd','',3),(28,'asd@asd','',3),(29,'asd@asd','',3),(30,'asd@asd','asd',3),(31,'asd@asd','asd',3),(32,'123','sd',4),(33,'123','asd',3),(34,'123','ddd',4),(35,'123','ddddd',4),(36,'123','asdasd',4),(37,'123','asdasdasdasd',4),(38,'123','s',5),(39,'123','sd',5),(40,'123','dd',5),(41,'123','d',5),(42,'123','ds',5),(43,'123','dsd',5),(44,'123','a',5),(45,'123','d',5),(46,'123','ds',5),(47,'123','dsd',5),(48,'123','s',5),(49,'123','sd',5),(50,'123','sdd',5),(51,'123','sdda',5),(52,'123','d',5),(53,'123','asd',5),(54,'123','asdd',5),(55,'123','asddd',5),(56,'123','sd',5),(57,'123','asd',5),(58,'123','asddd',5),(59,'123','1',6),(60,'123','12',6),(61,'123','1',6),(62,'123','12',6),(63,'123','123',6),(64,'123','14',6),(65,'123','146',6),(66,'123','33',6),(67,'123','3322',6);
/*!40000 ALTER TABLE `eotrmfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gc`
--

DROP TABLE IF EXISTS `gc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `humanaim` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `part` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gc`
--

LOCK TABLES `gc` WRITE;
/*!40000 ALTER TABLE `gc` DISABLE KEYS */;
INSERT INTO `gc` VALUES (1,'IT융합(VR/AR, 게임) 및 응용프로그램(스마트폰 앱, 웹) 개발능력을 갖춘 전문 개발자 양성 , 소프트웨어(게임) 산업의 최신 트렌드를 이해하는 QA/GM/CS 실무인력 양성','유니티 및 C#을 통한 게임 제작 프로세스 학습, 게임 기초 이론 안드로이드 플랫폼 학습 및 관련 프로젝트 진행','IT융합(VR/AR, 게임) 및 응용프로그램(스마트폰 앱, 웹) 개발능력을 갖춘 전문 개발자 양성과 소프트웨어(게임) 산업의 최신 트렌드를 이해하는 QA/GM/CS 실무인력 양성을 위한 교육과정으로 편성');
/*!40000 ALTER TABLE `gc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postTiltle` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `writer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (3,'saas','asa','asd@asd','2021-06-08 07:23:34','2021-06-08 07:23:34',NULL),(4,'dd','dsd','123','2021-06-13 05:02:43','2021-06-13 05:02:43','2021-06-13 05:57:14'),(5,'s','d','123','2021-06-13 06:38:46','2021-06-13 06:38:46','2021-06-13 06:51:41'),(6,'ㄴㅇ','ㄴㅇㄴㅇ','123','2021-06-13 06:51:48','2021-06-13 06:51:48',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `work` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Back-End',23,'010-4065-8016','blackfeather227@gmail.com'),(2,'Front-End',25,'010-8797-6313','endgus112@naver.com'),(3,'Front-End',23,'010-3263-5210','skyfms123@gmail.com'),(4,'Back-End',23,'010-2391-7568','alskdj990119@gmail.com'),(5,'Back-End',21,'010-5201-0350','dptmftkdghk1@gmail.com');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `nick` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `introduce` varchar(500) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'asd@asd','asd@asd','$2b$12$q5v.y7g9nG5g2auYRTt76eY7xYcJ7lplB19bcxJx0wdPuuoDACLfa','asd','2021-06-07 10:43:38','2021-06-07 10:43:38',NULL),(2,'123@123','123','$2b$12$/CvgxQ8hmeaNw2zBA9FszONHufNH2gPyAD.tHx4dgdlVeorDfQ8.a','123','2021-06-13 05:02:30','2021-06-13 05:02:30',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wdb`
--

DROP TABLE IF EXISTS `wdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wdb` (
  `id` int NOT NULL AUTO_INCREMENT,
  `humanaim` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `part` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wdb`
--

LOCK TABLES `wdb` WRITE;
/*!40000 ALTER TABLE `wdb` DISABLE KEYS */;
INSERT INTO `wdb` VALUES (1,'웹2.0 기반의 실무형 웹 솔루션 개발자 양성 ,기업과 조직의 다양하고 방대한 데이터를 통합 관리하는 데이터베이스 관리자, 데이터베이스 응용프로그램 개발자 양성 ,IoT기반 모바일 앱 개발자 양성  ','데이터베이스 관리자와 개발자, 웹 솔루션 개발자, 모바일 앱 개발자 양성을 목표로 IT직무의 기초에서부터 심화과정까지 실무능력을 배양할 수 있는 교육과정으로 편성','삼성, 포스코, 국민은행 등 기업 전산 시스템 개발 능력을 배양하는 곳 ');
/*!40000 ALTER TABLE `wdb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-13 16:01:32
