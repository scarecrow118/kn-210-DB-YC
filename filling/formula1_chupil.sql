-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Formula1_Chupil
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `car_tyres`
--

DROP TABLE IF EXISTS `car_tyres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_tyres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT NULL,
  `tyre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_tyres`
--

LOCK TABLES `car_tyres` WRITE;
/*!40000 ALTER TABLE `car_tyres` DISABLE KEYS */;
INSERT INTO `car_tyres` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,1),(7,7,2),(8,8,3);
/*!40000 ALTER TABLE `car_tyres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_name` varchar(100) DEFAULT NULL,
  `car_model` varchar(100) DEFAULT NULL,
  `car_number` varchar(100) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Mercedes W11','W11','44',1),(2,'Red Bull RB16B','RB16B','33',2),(3,'Ferrari SF21','SF21','16',3),(4,'McLaren MCL35M','MCL35M','4',4),(5,'Alpine A521','A521','14',5),(6,'Mercedes W12','W12','77',1),(7,'Red Bull RB17','RB17','11',2),(8,'Ferrari SF22','SF22','55',3),(9,'McLaren MCL36','MCL36','3',4),(10,'Alpine A522','A522','31',5),(11,'Mercedes W13','W13','63',1),(12,'Red Bull RB18','RB18','10',2),(13,'Ferrari SF23','SF23','5',3),(14,'McLaren MCL37','MCL37','20',4),(15,'Alpine A523','A523','22',5);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `championship_tracks`
--

DROP TABLE IF EXISTS `championship_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `championship_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `championship_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championship_tracks`
--

LOCK TABLES `championship_tracks` WRITE;
/*!40000 ALTER TABLE `championship_tracks` DISABLE KEYS */;
INSERT INTO `championship_tracks` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,3,1),(7,4,2),(8,5,3);
/*!40000 ALTER TABLE `championship_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `championships`
--

DROP TABLE IF EXISTS `championships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `championships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `champ_name` varchar(100) DEFAULT NULL,
  `champ_year` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championships`
--

LOCK TABLES `championships` WRITE;
/*!40000 ALTER TABLE `championships` DISABLE KEYS */;
INSERT INTO `championships` VALUES (1,'Formula 1 2020',2020),(2,'Formula 1 2021',2021),(3,'Formula 1 2022',2022),(4,'Formula 1 2023',2023),(5,'Formula 1 2024',2024);
/*!40000 ALTER TABLE `championships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_surname` varchar(50) DEFAULT NULL,
  `driver_nation` varchar(50) DEFAULT NULL,
  `driver_number` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Lewis','Hamilton','UK',44,1),(2,'Max','Verstappen','Netherlands',33,2),(3,'Charles','Leclerc','Monaco',16,3),(4,'Lando','Norris','UK',4,4),(5,'Fernando','Alonso','Spain',14,5),(6,'Valtteri','Bottas','Finland',77,1),(7,'Sergio','Perez','Mexico',11,2),(8,'Carlos','Sainz','Spain',55,3),(9,'Daniel','Ricciardo','Australia',3,4),(10,'Esteban','Ocon','France',31,5),(11,'George','Russell','UK',63,1),(12,'Pierre','Gasly','France',10,2),(13,'Sebastian','Vettel','Germany',5,3),(14,'Kevin','Magnussen','Denmark',20,4),(15,'Yuki','Tsunoda','Japan',22,5);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race_tracks`
--

DROP TABLE IF EXISTS `race_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `race_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race_tracks`
--

LOCK TABLES `race_tracks` WRITE;
/*!40000 ALTER TABLE `race_tracks` DISABLE KEYS */;
INSERT INTO `race_tracks` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,1),(7,7,2),(8,8,3);
/*!40000 ALTER TABLE `race_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `race_number` int(11) DEFAULT NULL,
  `race_name` varchar(100) DEFAULT NULL,
  `race_place` varchar(100) DEFAULT NULL,
  `race_date` date DEFAULT NULL,
  `race_time` time DEFAULT NULL,
  `race_weather` varchar(50) DEFAULT NULL,
  `championship_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES (1,1,'Monaco GP','Monaco','2020-05-24','15:10:00','Sunny',1,1),(2,2,'British GP','UK','2020-07-12','14:00:00','Rainy',1,2),(3,3,'Japanese GP','Japan','2020-10-11','07:00:00','Sunny',1,3),(4,4,'Italian GP','Italy','2020-09-06','14:10:00','Sunny',1,4),(5,5,'Belgian GP','Belgium','2020-08-30','14:10:00','Cloudy',1,5),(6,6,'Monaco GP','Monaco','2021-05-23','15:10:00','Sunny',2,1),(7,7,'British GP','UK','2021-07-18','14:00:00','Sunny',2,2),(8,8,'Japanese GP','Japan','2021-10-10','07:00:00','Cloudy',2,3),(9,9,'Italian GP','Italy','2021-09-05','14:10:00','Sunny',2,4),(10,10,'Belgian GP','Belgium','2021-08-29','14:10:00','Rainy',2,5),(11,11,'Monaco GP','Monaco','2022-05-22','15:10:00','Sunny',3,1),(12,12,'British GP','UK','2022-07-17','14:00:00','Sunny',3,2),(13,13,'Japanese GP','Japan','2022-10-09','07:00:00','Sunny',3,3),(14,14,'Italian GP','Italy','2022-09-04','14:10:00','Cloudy',3,4),(15,15,'Belgian GP','Belgium','2022-08-28','14:10:00','Sunny',3,5);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result_place` int(11) DEFAULT NULL,
  `result_score` int(11) DEFAULT NULL,
  `race_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `tyre_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,1,25,1,1,1,1),(2,2,18,2,2,2,2),(3,3,15,3,3,3,3),(4,4,12,4,4,4,4),(5,5,10,5,5,5,5),(6,6,25,6,6,6,1),(7,7,18,7,7,7,2),(8,8,15,8,8,8,3),(9,9,12,9,9,9,4),(10,10,10,10,10,10,5),(11,11,25,11,11,11,1),(12,12,18,12,12,12,2),(13,13,15,13,13,13,3),(14,14,12,14,14,14,4),(15,15,10,15,15,15,5);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) DEFAULT NULL,
  `team_country` varchar(50) DEFAULT NULL,
  `team_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Mercedes','Germany',44),(2,'Red Bull','Austria',33),(3,'Ferrari','Italy',16),(4,'McLaren','UK',4),(5,'Alpine','France',14);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_name` varchar(100) DEFAULT NULL,
  `track_place` varchar(100) DEFAULT NULL,
  `track_circles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (1,'Monaco Circuit','Monaco',78),(2,'Silverstone','UK',52),(3,'Suzuka','Japan',53),(4,'Monza','Italy',55),(5,'Spa-Francorchamps','Belgium',44);
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tyres`
--

DROP TABLE IF EXISTS `tyres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tyres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tyre_type` varchar(50) DEFAULT NULL,
  `tyre_sup` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tyres`
--

LOCK TABLES `tyres` WRITE;
/*!40000 ALTER TABLE `tyres` DISABLE KEYS */;
INSERT INTO `tyres` VALUES (1,'Soft','Pirelli'),(2,'Medium','Pirelli'),(3,'Hard','Pirelli'),(4,'Intermediate','Pirelli'),(5,'Wet','Pirelli');
/*!40000 ALTER TABLE `tyres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-29 13:06:54
