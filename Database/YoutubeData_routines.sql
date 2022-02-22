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
-- Temporary view structure for view `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor`
--

DROP TABLE IF EXISTS `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor`;
/*!50001 DROP VIEW IF EXISTS `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor` AS SELECT 
 1 AS `YoutubeAnimeVideoMetricId`,
 1 AS `DateId`,
 1 AS `YoutubeVideoId`,
 1 AS `VideoId`,
 1 AS `VideoURL`,
 1 AS `VideoEmbed`,
 1 AS `VideoTitle`,
 1 AS `VideoDescription`,
 1 AS `VideoPublishedAt`,
 1 AS `CategoryId`,
 1 AS `ChannelId`,
 1 AS `ChannelTitle`,
 1 AS `AnimeId`,
 1 AS `AnimeName`,
 1 AS `AnimeStatus`,
 1 AS `Episode`,
 1 AS `SeasonId`,
 1 AS `SeasonName`,
 1 AS `ViewCount`,
 1 AS `LikeCount`,
 1 AS `DislikeCount`,
 1 AS `FavoriteCount`,
 1 AS `CommentCount`,
 1 AS `YearCode`,
 1 AS `YearMonthCode`,
 1 AS `YearWeekCode`,
 1 AS `MonthCode`,
 1 AS `MonthName`,
 1 AS `DayNumberOfMonth`,
 1 AS `NumberOfDaysInTheMonth`,
 1 AS `DayNumberOfYear`,
 1 AS `WeekDay`,
 1 AS `WeekNumberOfYear`,
 1 AS `DateField`,
 1 AS `InsertedAt`,
 1 AS `UpdatedAt`,
 1 AS `InitialDate`,
 1 AS `FinaleDate`,
 1 AS `InitialViewCount`,
 1 AS `FinalViewCount`,
 1 AS `InitialLikeCount`,
 1 AS `FinalLikeCount`,
 1 AS `ViewGrowth`,
 1 AS `LikeGrowth`,
 1 AS `ViewGrowthFactor`,
 1 AS `ViewGrowthRowNb`,
 1 AS `ViewGrowthFactorRowNb`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`
--

DROP TABLE IF EXISTS `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`;
/*!50001 DROP VIEW IF EXISTS `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth` AS SELECT 
 1 AS `YoutubeAnimeVideoMetricId`,
 1 AS `DateId`,
 1 AS `YoutubeVideoId`,
 1 AS `VideoId`,
 1 AS `VideoURL`,
 1 AS `VideoEmbed`,
 1 AS `VideoTitle`,
 1 AS `VideoDescription`,
 1 AS `VideoPublishedAt`,
 1 AS `CategoryId`,
 1 AS `ChannelId`,
 1 AS `ChannelTitle`,
 1 AS `AnimeId`,
 1 AS `AnimeName`,
 1 AS `AnimeStatus`,
 1 AS `Episode`,
 1 AS `SeasonId`,
 1 AS `SeasonName`,
 1 AS `ViewCount`,
 1 AS `LikeCount`,
 1 AS `DislikeCount`,
 1 AS `FavoriteCount`,
 1 AS `CommentCount`,
 1 AS `YearCode`,
 1 AS `YearMonthCode`,
 1 AS `YearWeekCode`,
 1 AS `MonthCode`,
 1 AS `MonthName`,
 1 AS `DayNumberOfMonth`,
 1 AS `NumberOfDaysInTheMonth`,
 1 AS `DayNumberOfYear`,
 1 AS `WeekDay`,
 1 AS `WeekNumberOfYear`,
 1 AS `DateField`,
 1 AS `InsertedAt`,
 1 AS `UpdatedAt`,
 1 AS `InitialDate`,
 1 AS `FinaleDate`,
 1 AS `InitialViewCount`,
 1 AS `FinalViewCount`,
 1 AS `InitialLikeCount`,
 1 AS `FinalLikeCount`,
 1 AS `ViewGrowth`,
 1 AS `LikeGrowth`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_SeasonalAnimeCurrent`
--

DROP TABLE IF EXISTS `view_SeasonalAnimeCurrent`;
/*!50001 DROP VIEW IF EXISTS `view_SeasonalAnimeCurrent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_SeasonalAnimeCurrent` AS SELECT 
 1 AS `AnimeId`,
 1 AS `AnimeName`,
 1 AS `AnimeStatus`,
 1 AS `Episode`,
 1 AS `SeasonId`,
 1 AS `SeasonName`,
 1 AS `SeasonYear`,
 1 AS `SeasonKey`,
 1 AS `SeasonStartDateId`,
 1 AS `SeasonEndDateId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_season`
--

DROP TABLE IF EXISTS `view_season`;
/*!50001 DROP VIEW IF EXISTS `view_season`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_season` AS SELECT 
 1 AS `SeasonId`,
 1 AS `SeasonName`,
 1 AS `SeasonYear`,
 1 AS `SeasonStartDateId`,
 1 AS `SeasonEndDateId`,
 1 AS `SeasonKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_SeasonalAnime`
--

DROP TABLE IF EXISTS `view_SeasonalAnime`;
/*!50001 DROP VIEW IF EXISTS `view_SeasonalAnime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_SeasonalAnime` AS SELECT 
 1 AS `AnimeId`,
 1 AS `AnimeName`,
 1 AS `AnimeStatus`,
 1 AS `Episode`,
 1 AS `SeasonId`,
 1 AS `SeasonName`,
 1 AS `SeasonYear`,
 1 AS `SeasonKey`,
 1 AS `SeasonStartDateId`,
 1 AS `SeasonEndDateId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_fact_YoutubeAnimeVideoMetricDetails`
--

DROP TABLE IF EXISTS `view_fact_YoutubeAnimeVideoMetricDetails`;
/*!50001 DROP VIEW IF EXISTS `view_fact_YoutubeAnimeVideoMetricDetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_fact_YoutubeAnimeVideoMetricDetails` AS SELECT 
 1 AS `YoutubeAnimeVideoMetricId`,
 1 AS `DateId`,
 1 AS `YoutubeVideoId`,
 1 AS `VideoId`,
 1 AS `VideoURL`,
 1 AS `VideoEmbed`,
 1 AS `VideoTitle`,
 1 AS `VideoDescription`,
 1 AS `VideoPublishedAt`,
 1 AS `CategoryId`,
 1 AS `ChannelId`,
 1 AS `ChannelTitle`,
 1 AS `AnimeId`,
 1 AS `AnimeName`,
 1 AS `AnimeStatus`,
 1 AS `Episode`,
 1 AS `SeasonId`,
 1 AS `SeasonName`,
 1 AS `ViewCount`,
 1 AS `LikeCount`,
 1 AS `DislikeCount`,
 1 AS `FavoriteCount`,
 1 AS `CommentCount`,
 1 AS `YearCode`,
 1 AS `YearMonthCode`,
 1 AS `YearWeekCode`,
 1 AS `MonthCode`,
 1 AS `MonthName`,
 1 AS `DayNumberOfMonth`,
 1 AS `NumberOfDaysInTheMonth`,
 1 AS `DayNumberOfYear`,
 1 AS `WeekDay`,
 1 AS `WeekNumberOfYear`,
 1 AS `DateField`,
 1 AS `InsertedAt`,
 1 AS `UpdatedAt`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor`
--

/*!50001 DROP VIEW IF EXISTS `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowthFactor` AS select `DATA`.`YoutubeAnimeVideoMetricId` AS `YoutubeAnimeVideoMetricId`,`DATA`.`DateId` AS `DateId`,`DATA`.`YoutubeVideoId` AS `YoutubeVideoId`,`DATA`.`VideoId` AS `VideoId`,`DATA`.`VideoURL` AS `VideoURL`,`DATA`.`VideoEmbed` AS `VideoEmbed`,`DATA`.`VideoTitle` AS `VideoTitle`,`DATA`.`VideoDescription` AS `VideoDescription`,`DATA`.`VideoPublishedAt` AS `VideoPublishedAt`,`DATA`.`CategoryId` AS `CategoryId`,`DATA`.`ChannelId` AS `ChannelId`,`DATA`.`ChannelTitle` AS `ChannelTitle`,`DATA`.`AnimeId` AS `AnimeId`,`DATA`.`AnimeName` AS `AnimeName`,`DATA`.`AnimeStatus` AS `AnimeStatus`,`DATA`.`Episode` AS `Episode`,`DATA`.`SeasonId` AS `SeasonId`,`DATA`.`SeasonName` AS `SeasonName`,`DATA`.`ViewCount` AS `ViewCount`,`DATA`.`LikeCount` AS `LikeCount`,`DATA`.`DislikeCount` AS `DislikeCount`,`DATA`.`FavoriteCount` AS `FavoriteCount`,`DATA`.`CommentCount` AS `CommentCount`,`DATA`.`YearCode` AS `YearCode`,`DATA`.`YearMonthCode` AS `YearMonthCode`,`DATA`.`YearWeekCode` AS `YearWeekCode`,`DATA`.`MonthCode` AS `MonthCode`,`DATA`.`MonthName` AS `MonthName`,`DATA`.`DayNumberOfMonth` AS `DayNumberOfMonth`,`DATA`.`NumberOfDaysInTheMonth` AS `NumberOfDaysInTheMonth`,`DATA`.`DayNumberOfYear` AS `DayNumberOfYear`,`DATA`.`WeekDay` AS `WeekDay`,`DATA`.`WeekNumberOfYear` AS `WeekNumberOfYear`,`DATA`.`DateField` AS `DateField`,`DATA`.`InsertedAt` AS `InsertedAt`,`DATA`.`UpdatedAt` AS `UpdatedAt`,`DATA`.`InitialDate` AS `InitialDate`,`DATA`.`FinaleDate` AS `FinaleDate`,`DATA`.`InitialViewCount` AS `InitialViewCount`,`DATA`.`FinalViewCount` AS `FinalViewCount`,`DATA`.`InitialLikeCount` AS `InitialLikeCount`,`DATA`.`FinalLikeCount` AS `FinalLikeCount`,`DATA`.`ViewGrowth` AS `ViewGrowth`,`DATA`.`LikeGrowth` AS `LikeGrowth`,`DATA`.`ViewGrowthFactor` AS `ViewGrowthFactor`,row_number() OVER (ORDER BY `DATA`.`ViewGrowth` desc )  AS `ViewGrowthRowNb`,row_number() OVER (ORDER BY `DATA`.`ViewGrowthFactor` desc )  AS `ViewGrowthFactorRowNb` from (select `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`YoutubeAnimeVideoMetricId` AS `YoutubeAnimeVideoMetricId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`DateId` AS `DateId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`YoutubeVideoId` AS `YoutubeVideoId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`VideoId` AS `VideoId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`VideoURL` AS `VideoURL`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`VideoEmbed` AS `VideoEmbed`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`VideoTitle` AS `VideoTitle`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`VideoDescription` AS `VideoDescription`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`VideoPublishedAt` AS `VideoPublishedAt`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`CategoryId` AS `CategoryId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`ChannelId` AS `ChannelId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`ChannelTitle` AS `ChannelTitle`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`AnimeId` AS `AnimeId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`AnimeName` AS `AnimeName`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`AnimeStatus` AS `AnimeStatus`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`Episode` AS `Episode`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`SeasonId` AS `SeasonId`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`SeasonName` AS `SeasonName`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`ViewCount` AS `ViewCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`LikeCount` AS `LikeCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`DislikeCount` AS `DislikeCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`FavoriteCount` AS `FavoriteCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`CommentCount` AS `CommentCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`YearCode` AS `YearCode`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`YearMonthCode` AS `YearMonthCode`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`YearWeekCode` AS `YearWeekCode`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`MonthCode` AS `MonthCode`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`MonthName` AS `MonthName`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`DayNumberOfMonth` AS `DayNumberOfMonth`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`NumberOfDaysInTheMonth` AS `NumberOfDaysInTheMonth`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`DayNumberOfYear` AS `DayNumberOfYear`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`WeekDay` AS `WeekDay`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`WeekNumberOfYear` AS `WeekNumberOfYear`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`DateField` AS `DateField`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`InsertedAt` AS `InsertedAt`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`UpdatedAt` AS `UpdatedAt`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`InitialDate` AS `InitialDate`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`FinaleDate` AS `FinaleDate`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`InitialViewCount` AS `InitialViewCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`FinalViewCount` AS `FinalViewCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`InitialLikeCount` AS `InitialLikeCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`FinalLikeCount` AS `FinalLikeCount`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`ViewGrowth` AS `ViewGrowth`,`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`LikeGrowth` AS `LikeGrowth`,(`view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`FinalViewCount` * `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`.`ViewGrowth`) AS `ViewGrowthFactor` from `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`) `DATA` order by `ViewGrowthFactorRowNb` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`
--

/*!50001 DROP VIEW IF EXISTS `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_fact_YoutubeAnimeVideoMetricLast7DaysGrowth` AS select `mxdt`.`YoutubeAnimeVideoMetricId` AS `YoutubeAnimeVideoMetricId`,`mxdt`.`DateId` AS `DateId`,`mxdt`.`YoutubeVideoId` AS `YoutubeVideoId`,`mxdt`.`VideoId` AS `VideoId`,`mxdt`.`VideoURL` AS `VideoURL`,`mxdt`.`VideoEmbed` AS `VideoEmbed`,`mxdt`.`VideoTitle` AS `VideoTitle`,`mxdt`.`VideoDescription` AS `VideoDescription`,`mxdt`.`VideoPublishedAt` AS `VideoPublishedAt`,`mxdt`.`CategoryId` AS `CategoryId`,`mxdt`.`ChannelId` AS `ChannelId`,`mxdt`.`ChannelTitle` AS `ChannelTitle`,`mxdt`.`AnimeId` AS `AnimeId`,`mxdt`.`AnimeName` AS `AnimeName`,`mxdt`.`AnimeStatus` AS `AnimeStatus`,`mxdt`.`Episode` AS `Episode`,`mxdt`.`SeasonId` AS `SeasonId`,`mxdt`.`SeasonName` AS `SeasonName`,`mxdt`.`ViewCount` AS `ViewCount`,`mxdt`.`LikeCount` AS `LikeCount`,`mxdt`.`DislikeCount` AS `DislikeCount`,`mxdt`.`FavoriteCount` AS `FavoriteCount`,`mxdt`.`CommentCount` AS `CommentCount`,`mxdt`.`YearCode` AS `YearCode`,`mxdt`.`YearMonthCode` AS `YearMonthCode`,`mxdt`.`YearWeekCode` AS `YearWeekCode`,`mxdt`.`MonthCode` AS `MonthCode`,`mxdt`.`MonthName` AS `MonthName`,`mxdt`.`DayNumberOfMonth` AS `DayNumberOfMonth`,`mxdt`.`NumberOfDaysInTheMonth` AS `NumberOfDaysInTheMonth`,`mxdt`.`DayNumberOfYear` AS `DayNumberOfYear`,`mxdt`.`WeekDay` AS `WeekDay`,`mxdt`.`WeekNumberOfYear` AS `WeekNumberOfYear`,`mxdt`.`DateField` AS `DateField`,`mxdt`.`InsertedAt` AS `InsertedAt`,`mxdt`.`UpdatedAt` AS `UpdatedAt`,`dates`.`minDateID` AS `InitialDate`,`dates`.`maxDateId` AS `FinaleDate`,`mndt`.`ViewCount` AS `InitialViewCount`,`mxdt`.`ViewCount` AS `FinalViewCount`,`mndt`.`LikeCount` AS `InitialLikeCount`,`mxdt`.`LikeCount` AS `FinalLikeCount`,((100 * (`mxdt`.`ViewCount` - `mndt`.`ViewCount`)) / `mndt`.`ViewCount`) AS `ViewGrowth`,((100 * (`mxdt`.`LikeCount` - `mndt`.`LikeCount`)) / `mndt`.`LikeCount`) AS `LikeGrowth` from (((select `view_fact_YoutubeAnimeVideoMetricDetails`.`YoutubeVideoId` AS `YoutubeVideoId`,min(`view_fact_YoutubeAnimeVideoMetricDetails`.`DateId`) AS `minDateID`,max(`view_fact_YoutubeAnimeVideoMetricDetails`.`DateId`) AS `maxDateId` from `view_fact_YoutubeAnimeVideoMetricDetails` where (`view_fact_YoutubeAnimeVideoMetricDetails`.`DateId` between cast((now() + interval -(7) day) as date) and cast(now() as date)) group by `view_fact_YoutubeAnimeVideoMetricDetails`.`YoutubeVideoId`) `dates` join `view_fact_YoutubeAnimeVideoMetricDetails` `mndt` on(((`dates`.`YoutubeVideoId` = `mndt`.`YoutubeVideoId`) and (`dates`.`minDateID` = `mndt`.`DateId`)))) join `view_fact_YoutubeAnimeVideoMetricDetails` `mxdt` on(((`dates`.`YoutubeVideoId` = `mxdt`.`YoutubeVideoId`) and (`dates`.`maxDateId` = `mxdt`.`DateId`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_SeasonalAnimeCurrent`
--

/*!50001 DROP VIEW IF EXISTS `view_SeasonalAnimeCurrent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_SeasonalAnimeCurrent` AS select `view_SeasonalAnime`.`AnimeId` AS `AnimeId`,`view_SeasonalAnime`.`AnimeName` AS `AnimeName`,`view_SeasonalAnime`.`AnimeStatus` AS `AnimeStatus`,`view_SeasonalAnime`.`Episode` AS `Episode`,`view_SeasonalAnime`.`SeasonId` AS `SeasonId`,`view_SeasonalAnime`.`SeasonName` AS `SeasonName`,`view_SeasonalAnime`.`SeasonYear` AS `SeasonYear`,`view_SeasonalAnime`.`SeasonKey` AS `SeasonKey`,`view_SeasonalAnime`.`SeasonStartDateId` AS `SeasonStartDateId`,`view_SeasonalAnime`.`SeasonEndDateId` AS `SeasonEndDateId` from `view_SeasonalAnime` where (date_format(now(),'%Y%m%d') between `view_SeasonalAnime`.`SeasonStartDateId` and `view_SeasonalAnime`.`SeasonEndDateId`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_season`
--

/*!50001 DROP VIEW IF EXISTS `view_season`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_season` AS select `dim_season`.`SeasonId` AS `SeasonId`,`dim_season`.`SeasonName` AS `SeasonName`,`dim_season`.`SeasonYear` AS `SeasonYear`,`dim_season`.`SeasonStartDateId` AS `SeasonStartDateId`,`dim_season`.`SeasonEndDateId` AS `SeasonEndDateId`,concat(`dim_season`.`SeasonName`,'-',cast(year(`dim_season`.`SeasonYear`) as char(4) charset utf8mb4)) AS `SeasonKey` from `dim_season` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_SeasonalAnime`
--

/*!50001 DROP VIEW IF EXISTS `view_SeasonalAnime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_SeasonalAnime` AS select `a`.`AnimeId` AS `AnimeId`,`a`.`AnimeName` AS `AnimeName`,`a`.`AnimeStatus` AS `AnimeStatus`,`a`.`Episode` AS `Episode`,`a`.`SeasonId` AS `SeasonId`,`s`.`SeasonName` AS `SeasonName`,`s`.`SeasonYear` AS `SeasonYear`,`s`.`SeasonKey` AS `SeasonKey`,`s`.`SeasonStartDateId` AS `SeasonStartDateId`,`s`.`SeasonEndDateId` AS `SeasonEndDateId` from (`dim_anime` `a` join `view_season` `s` on((`a`.`SeasonId` = `s`.`SeasonId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_fact_YoutubeAnimeVideoMetricDetails`
--

/*!50001 DROP VIEW IF EXISTS `view_fact_YoutubeAnimeVideoMetricDetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_fact_YoutubeAnimeVideoMetricDetails` AS select `fact`.`YoutubeAnimeVideoMetricId` AS `YoutubeAnimeVideoMetricId`,`fact`.`DateId` AS `DateId`,`fact`.`YoutubeVideoId` AS `YoutubeVideoId`,`vid`.`VideoId` AS `VideoId`,replace('https://www.youtube.com/watch?v={@}','{@}',`vid`.`VideoId`) AS `VideoURL`,replace('https://www.youtube.com/embed/{@}','{@}',`vid`.`VideoId`) AS `VideoEmbed`,`vid`.`VideoTitle` AS `VideoTitle`,`vid`.`VideoDescription` AS `VideoDescription`,`vid`.`VideoPublishedAt` AS `VideoPublishedAt`,`vid`.`CategoryId` AS `CategoryId`,`cha`.`ChannelId` AS `ChannelId`,`cha`.`ChannelTitle` AS `ChannelTitle`,`ani`.`AnimeId` AS `AnimeId`,`ani`.`AnimeName` AS `AnimeName`,`ani`.`AnimeStatus` AS `AnimeStatus`,`ani`.`Episode` AS `Episode`,`sea`.`SeasonId` AS `SeasonId`,`sea`.`SeasonName` AS `SeasonName`,`fact`.`ViewCount` AS `ViewCount`,`fact`.`LikeCount` AS `LikeCount`,`fact`.`DislikeCount` AS `DislikeCount`,`fact`.`FavoriteCount` AS `FavoriteCount`,`fact`.`CommentCount` AS `CommentCount`,`dat`.`YearCode` AS `YearCode`,`dat`.`YearMonthCode` AS `YearMonthCode`,`dat`.`YearWeekCode` AS `YearWeekCode`,`dat`.`MonthCode` AS `MonthCode`,`dat`.`MonthName` AS `MonthName`,`dat`.`DayNumberOfMonth` AS `DayNumberOfMonth`,`dat`.`NumberOfDaysInTheMonth` AS `NumberOfDaysInTheMonth`,`dat`.`DayNumberOfYear` AS `DayNumberOfYear`,`dat`.`WeekDay` AS `WeekDay`,`dat`.`WeekNumberOfYear` AS `WeekNumberOfYear`,`dat`.`DateField` AS `DateField`,`fact`.`InsertedAt` AS `InsertedAt`,`fact`.`UpdatedAt` AS `UpdatedAt` from (((((`fact_YoutubeAnimeVideoMetric` `fact` join `dim_YoutubeVideo` `vid` on((`fact`.`YoutubeVideoId` = `vid`.`YoutubeVideoId`))) join `dim_YoutubeChannel` `cha` on((`vid`.`YoutubeChannelId` = `cha`.`YoutubeChannelId`))) join `dim_anime` `ani` on((`vid`.`AnimeId` = `ani`.`AnimeId`))) join `dim_season` `sea` on((`ani`.`SeasonId` = `sea`.`SeasonId`))) join `dim_Date` `dat` on((`fact`.`DateId` = `dat`.`DateId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'YoutubeData'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetTopDailyAnimeVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `usp_GetTopDailyAnimeVideo`(nbVideosPerAnime int, DateId int)
SELECT * FROM
	(
		SELECT DateId,AnimeId,AnimeName,VideoTitle,ViewCount, ROW_NUMBER() OVER (PARTITION BY AnimeId ORDER by ViewCount desc) RowNum
		FROM view_fact_YoutubeAnimeVideoMetricDetails
		WHERE DateId = @DateId
	) reqData
	WHERE reqData.RowNum <= @nbVideosPerAnime ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_LoadDimAnime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `usp_LoadDimAnime`()
BEGIN
	START TRANSACTION;
    DROP TEMPORARY TABLE IF EXISTS temp_Anime;
	CREATE TEMPORARY TABLE IF NOT EXISTS temp_Anime as
    (
		SELECT mal.anime_name AnimeName, mal.Synonyms AnimeNameSynonyms, mal.Japanese AnimeNameJapanese, mal.English AnimeNameEnglish, null AnimeStatus, null Episode, sea.SeasonId, mal.anime_url SourceURL, mal.anime_img SourceImageURL, ani.AnimeId, ROW_NUMBER() OVER (PARTITION BY mal.anime_name ,mal.anime_url order by mal.InsertTimeStampUTC desc) row_num
		FROM MyAnimeListAnimes mal
		INNER JOIN view_season sea
			ON UPPER(mal.Premiered) like UPPER(REPLACE(sea.SeasonKey,'-',' '))
		LEFT JOIN dim_anime ani
			ON UPPER(mal.anime_name) like UPPER(ani.AnimeName)
	);
    
	INSERT INTO dim_anime (AnimeName, AnimeNameSynonyms, AnimeNameJapanese, AnimeNameEnglish, AnimeStatus, Episode, SeasonId, SourceURL, SourceImageURL)
	SELECT AnimeName, AnimeNameSynonyms, AnimeNameJapanese, AnimeNameEnglish, AnimeStatus, Episode, SeasonId, SourceURL, SourceImageURL
    FROM temp_Anime
    WHERE row_num = 1
    AND AnimeId IS NULL;
    
    UPDATE dim_anime ani
    INNER JOIN temp_Anime temp
		ON temp.AnimeId = ani.AnimeId
    SET ani.AnimeNameSynonyms = temp.AnimeNameSynonyms, ani.AnimeNameJapanese = temp.AnimeNameJapanese, ani.AnimeNameEnglish = temp.AnimeNameEnglish, ani.AnimeStatus = temp.AnimeStatus, ani.Episode = temp.Episode, ani.SeasonId = temp.SeasonId, ani.SourceImageURL = temp.SourceImageURL
    WHERE row_num = 1
    AND temp.AnimeId IS NOT NULL;

	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_LoadDimYoutubeChannel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `usp_LoadDimYoutubeChannel`()
BEGIN
	START TRANSACTION;
    DROP TEMPORARY TABLE IF EXISTS temp_YoutubeChannel;
	CREATE TEMPORARY TABLE IF NOT EXISTS temp_YoutubeChannel as
    (
	SELECT  dat.ChannelId, dat.ChannelTitle, ROW_NUMBER() OVER (PARTITION BY dat.ChannelId order by dat.processedAt desc) row_num
	FROM YoutubeData.YoutubeSearchAPI dat
	);
    
    #UNIQUE CONSTRAINT (YoutubeVideoId,DateID)
    #WHERE row_num = 1 inserts only the last row of that day
	INSERT INTO dim_YoutubeChannel (ChannelId,ChannelTitle,InsertedAt,UpdatedAt)
	SELECT ChannelId,ChannelTitle,utc_timestamp(),utc_timestamp() FROM temp_YoutubeChannel s where row_num = 1
	ON DUPLICATE KEY
	UPDATE ChannelId=s.ChannelId,ChannelTitle=s.ChannelTitle,UpdatedAt=utc_timestamp();
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_LoadDimYoutubeVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `usp_LoadDimYoutubeVideo`()
BEGIN
	START TRANSACTION;
    DROP TEMPORARY TABLE IF EXISTS temp_YoutubeVideo;
	CREATE TEMPORARY TABLE IF NOT EXISTS temp_YoutubeVideo as
    (
	SELECT  cha.YoutubeChannelId,dat.AnimeId,dat.CategoryId,dat.Id VideoId,dat.Title VideoTitle,dat.Description VideoDescription,dat.PublishedAt VideoPublishedAt, ROW_NUMBER() OVER (PARTITION BY dat.Id order by dat.processedAt desc) row_num
	FROM YoutubeData.YoutubeSearchAPI dat
    INNER JOIN dim_YoutubeChannel cha
		ON dat.ChannelId = cha.ChannelId
	);
    
    #UNIQUE CONSTRAINT (VideoId)
    #WHERE row_num = 1 inserts only the last row of that day
	INSERT INTO dim_YoutubeVideo (YoutubeChannelId,AnimeId,CategoryId,VideoId,VideoTitle,VideoDescription,VideoPublishedAt,InsertedAt,UpdatedAt)
	SELECT YoutubeChannelId,AnimeId,CategoryId,VideoId,VideoTitle,VideoDescription,VideoPublishedAt,utc_timestamp(),utc_timestamp() FROM temp_YoutubeVideo s where row_num = 1
	ON DUPLICATE KEY
	UPDATE YoutubeChannelId=s.YoutubeChannelId,AnimeId=s.AnimeId,CategoryId=s.CategoryId,VideoTitle=s.VideoTitle,VideoDescription=s.VideoDescription,VideoPublishedAt=s.VideoPublishedAt,UpdatedAt=utc_timestamp();
	COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_LoadDimYoutubeVideoVideoCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `usp_LoadDimYoutubeVideoVideoCategory`()
BEGIN
	START TRANSACTION;
	INSERT INTO dim_youtubeVideo_videoCategory (YoutubeVideoId,VideoCategoryId)
	SELECT ytv.YoutubeVideoId, vcat.VideoCategoryId FROM dim_YoutubeVideo ytv
	LEFT JOIN (
		SELECT * FROM ( 
		SELECT *,'Tutorial' as VideoCategoryName FROM dim_YoutubeVideo where VideoTitle like '%tutorial%' or VideoDescription like '%tutorial%'
		union
		SELECT *,'AMV' as VideoCategoryName FROM dim_YoutubeVideo where VideoTitle like '%AMV%' or VideoDescription like '%AMV%'
		union
		SELECT *,'Cover' as VideoCategoryName FROM dim_YoutubeVideo where VideoTitle like '%cover%' or VideoDescription like '%cover%'
		union
		SELECT *,'Opening' as VideoCategoryName FROM dim_YoutubeVideo where VideoTitle like '%Opening%' or VideoDescription like '%Opening%'
		union
		SELECT *,'Ending' as VideoCategoryName FROM dim_YoutubeVideo where VideoTitle like '%Ending%' or VideoDescription like '%Ending%'
		) cat) cat ON ytv.VideoId like cat.VideoId
	LEFT JOIN dim_videoCategory vcat
		ON vcat.VideoCategoryName like cat.VideoCategoryName
	LEFT JOIN dim_youtubeVideo_videoCategory br
		ON br.YoutubeVideoId = ytv.YoutubeVideoId
		AND br.VideoCategoryId = vcat.VideoCategoryId
	WHERE br.YoutubeVideoId is null
	AND vcat.VideoCategoryName is not null
	AND cat.VideoCategoryName is not null;
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_LoadFactYoutubeAnimeVideoMetric` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `usp_LoadFactYoutubeAnimeVideoMetric`()
BEGIN
	START TRANSACTION;
    DROP TEMPORARY TABLE IF EXISTS temp_YoutubeAnimeVideoMetric;
	CREATE TEMPORARY TABLE IF NOT EXISTS temp_YoutubeAnimeVideoMetric as
    (
	SELECT vid.YoutubeVideoId, dd.DateId, dat.viewCount ViewCount, dat.likeCount LikeCount, dat.dislikeCount DislikeCount, dat.favoriteCount FavoriteCount, dat.commentCount CommentCount,  ROW_NUMBER() OVER (PARTITION BY  vid.YoutubeVideoId, dd.DateId order by dat.processedAt desc) row_num
	FROM YoutubeData.YoutubeSearchAPI dat
    INNER JOIN YoutubeData.dim_YoutubeChannel cha
		ON dat.channelId = cha.channelId
	INNER JOIN YoutubeData.dim_YoutubeVideo vid
		on dat.id = vid.VideoId
	INNER JOIN YoutubeData.dim_anime ani
		on vid.AnimeId = ani.AnimeId
	INNER JOIN YoutubeData.dim_Date dd
		on DATE_FORMAT(dat.processedAt,'%Y%m%d') = dd.DateId
	);
    
    #UNIQUE CONSTRAINT (YoutubeVideoId,DateID)
    #WHERE row_num = 1 inserts only the last row of that day
	INSERT INTO fact_YoutubeAnimeVideoMetric (YoutubeVideoId,DateId,ViewCount,LikeCount,DislikeCount,FavoriteCount,CommentCount,InsertedAt,UpdatedAt)
	SELECT YoutubeVideoId,DateId,ViewCount,LikeCount,DislikeCount,FavoriteCount,CommentCount,utc_timestamp(),utc_timestamp() FROM temp_YoutubeAnimeVideoMetric s where row_num = 1
	ON DUPLICATE KEY
	UPDATE ViewCount=s.ViewCount,LikeCount=s.LikeCount,DislikeCount=s.DislikeCount,FavoriteCount=s.FavoriteCount,CommentCount=s.CommentCount,UpdatedAt=utc_timestamp();
	COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 17:36:43
