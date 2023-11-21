-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.7.43-log

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  `fecha_nacim` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nacionalidad` (`id_nacionalidad`),
  CONSTRAINT `autor_ibfk_1` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Juan','Carlos',2,'1987-12-13'),(2,'Pedro','Alfonso',1,'1978-02-17'),(3,'Raúl','Perez',2,'1987-08-06'),(5,'Romina','Moyano',1,'1967-05-13'),(6,'Teresa','Perez',3,'0971-09-14'),(7,'Juan','Carlos',2,'1987-12-13'),(8,'Pedro','Alfonso',1,'1978-02-17'),(9,'Raúl','Perez',2,'1987-08-06'),(10,'Roberto','Segura',4,'1984-07-30'),(11,'Romina','Moyano',1,'1967-05-13'),(12,'Teresa','Perez',3,'0971-09-14'),(13,'Tamara','Martinez',2,'1965-12-23'),(14,'Carolina','Colorado',1,'1970-02-21'),(15,'Tania','Cabas',2,'1975-08-08'),(16,'Maria','Recalde',4,'1984-07-30'),(17,'Camilo','Gomez',1,'1967-05-13'),(18,'Nicolas','Milanes',3,'0971-09-14'),(19,'Juan','Carlos',2,'1987-12-13'),(20,'Pedro','Alfonso',1,'1978-02-17'),(21,'Raúl','Perez',2,'1987-08-06'),(22,'Roberto','Segura',4,'1984-07-30'),(23,'Romina','Moyano',1,'1967-05-13'),(24,'Teresa','Perez',3,'0971-09-14'),(25,'Tamara','Martinez',2,'1965-12-23'),(26,'Carolina','Colorado',1,'1970-02-21'),(27,'Tania','Cabas',2,'1975-08-08'),(28,'Maria','Recalde',4,'1984-07-30'),(29,'Camilo','Gomez',1,'1967-05-13'),(30,'Nicolas','Milanes',3,'0971-09-14');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  9:22:38
