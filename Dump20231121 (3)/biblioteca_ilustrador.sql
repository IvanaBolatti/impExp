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
-- Table structure for table `ilustrador`
--

DROP TABLE IF EXISTS `ilustrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ilustrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  `fecha_nacim` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nacionalidad` (`id_nacionalidad`),
  CONSTRAINT `ilustrador_ibfk_1` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ilustrador`
--

LOCK TABLES `ilustrador` WRITE;
/*!40000 ALTER TABLE `ilustrador` DISABLE KEYS */;
INSERT INTO `ilustrador` VALUES (1,'Kerwinn','Schiementz',4,'1949-09-29'),(3,'Iver','Boken',1,'1995-03-15'),(4,'Gail','O\' Liddy',3,'1944-05-30'),(5,'Koenraad','Kopf',1,'1962-05-29'),(8,'Winifred','Goldson',4,'1934-11-19'),(9,'Clarette','Skokoe',4,'1937-02-09'),(10,'Papageno','Lewendon',1,'1950-03-22'),(13,'Inessa','Sexty',2,'1941-11-07'),(14,'Tomasine','Jurs',1,'1931-01-06'),(15,'Cynde','Wyke',4,'1946-10-03'),(16,'Kelsey','Kinnin',2,'1995-05-08'),(18,'Hartwell','Lauchlan',4,'1981-10-01'),(19,'Deny','Follit',2,'1999-03-04'),(20,'Merline','O\'Howbane',2,'2001-11-08'),(21,'Gaylor','Maty',4,'1970-08-05'),(23,'Bale','Lamerton',4,'1972-08-25'),(25,'Mace','Mearing',3,'1966-02-03'),(26,'Arlin','Ridhole',4,'1970-08-22'),(27,'Daryl','Abden',1,'1934-08-26'),(28,'Hillard','Pellett',4,'1981-03-22'),(29,'Creighton','Petri',4,'1969-04-28'),(30,'Izzy','Pruvost',1,'1950-07-19'),(31,'Lulita','Batsford',3,'1947-08-29'),(32,'Micky','Skayman',1,'1965-11-04'),(33,'Josey','Benettini',1,'1997-05-26'),(34,'Dill','Ullrich',1,'1990-10-31'),(35,'Waylon','Yusupov',3,'1963-01-19'),(36,'Teddy','Pautard',2,'1971-01-15'),(38,'Winn','Duesberry',3,'1976-10-20'),(40,'Grange','Levey',1,'1960-08-22'),(41,'Kassie','Scough',4,'2001-05-24'),(42,'Tommy','Gurley',1,'1944-05-01'),(43,'Natty','Gentiry',3,'1987-10-09'),(44,'Pammie','Georgelin',1,'1992-05-23'),(45,'Baily','Mattes',3,'1960-06-26'),(46,'Kary','Basden',3,'1949-03-28'),(47,'Woody','Imlen',2,'1950-09-10'),(48,'Vikky','Craythorn',2,'1989-03-17'),(49,'Jeannette','Kopfer',2,'1949-08-06'),(50,'Peg','Goscar',4,'1971-08-12');
/*!40000 ALTER TABLE `ilustrador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  9:22:37
