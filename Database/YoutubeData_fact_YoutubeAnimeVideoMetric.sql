CREATE DATABASE  IF NOT EXISTS `YoutubeData` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `YoutubeData`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: dw-youtube-data.cz9x36yympwi.us-east-2.rds.amazonaws.com    Database: YoutubeData
-- ------------------------------------------------------
-- Server version	8.0.23

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `fact_YoutubeAnimeVideoMetric`
--

DROP TABLE IF EXISTS `fact_YoutubeAnimeVideoMetric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_YoutubeAnimeVideoMetric` (
  `YoutubeAnimeVideoMetricId` int NOT NULL AUTO_INCREMENT,
  `YoutubeVideoId` int NOT NULL,
  `DateId` int NOT NULL,
  `ViewCount` int DEFAULT NULL,
  `LikeCount` int DEFAULT NULL,
  `DislikeCount` int DEFAULT NULL,
  `FavoriteCount` int DEFAULT NULL,
  `CommentCount` int DEFAULT NULL,
  `InsertedAt` datetime DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`YoutubeAnimeVideoMetricId`),
  UNIQUE KEY `UC_YoutubeVideoId_DateId` (`YoutubeVideoId`,`DateId`),
  KEY `DateId` (`DateId`),
  CONSTRAINT `fact_YoutubeAnimeVideoMetric_ibfk_1` FOREIGN KEY (`YoutubeVideoId`) REFERENCES `dim_YoutubeVideo` (`YoutubeVideoId`),
  CONSTRAINT `fact_YoutubeAnimeVideoMetric_ibfk_2` FOREIGN KEY (`DateId`) REFERENCES `dim_Date` (`DateId`)
) ENGINE=InnoDB AUTO_INCREMENT=180277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 17:36:38
