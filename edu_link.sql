-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: edu
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link` (
  `sub` varchar(25) NOT NULL,
  `link` varchar(205) DEFAULT NULL,
  PRIMARY KEY (`sub`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES ('apti_fri',NULL),('apti_mon','https://www.javatpoint.com/PreparedStatement-interface'),('apti_wed',NULL),('hu503_fri',NULL),('hu503_tue',NULL),('hu503-t_sat',NULL),('it501_fri',NULL),('it501_thu',NULL),('it501_tue',NULL),('it501-t_sat',NULL),('it502_fri',NULL),('it502_mon','https://www.youtube.com/watch?v=zDo0H8Fm7d0&list=RDFG9M0aEpJGE&index=17'),('it502_wed',NULL),('it502-t_thu',NULL),('it503_mon',NULL),('it503_thu','http://mi.com/'),('it503_wed','https://marketplace.zoom.us/docs/api-reference/zoom-api/meetings/meetingcreate'),('it503-t_fri',NULL),('it504a_fri','https://www.youtube.com/'),('it504a_thu',NULL),('it504a_tue','https://zoom.us/j/4551668544?pwd=YnV4Q1ZPVDRpKzA3WlVmVDFYVU1JUT09'),('it504a-t_wed',NULL),('it591_tue','https://www.youtube.com/'),('it592_thu','https://www.netflix.com/in/'),('it593_wed','http://gmail.com/'),('it594a_mon','https://www.youtube.com/'),('mc501_mon',NULL),('mc501_tue',NULL),('mc501_wed',NULL),('mc501-t_sat',NULL),('pr591_sat','http://mi.com/'),('technicalt_tue','https://www.youtube.com/watch?v=zDo0H8Fm7d0&list=RDFG9M0aEpJGE&index=17');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-19 17:11:34
