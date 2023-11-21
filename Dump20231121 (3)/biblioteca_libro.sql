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
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_ilustrador` int(11) NOT NULL,
  `id_editorial` int(11) NOT NULL,
  `id_tematica` int(11) NOT NULL,
  `id_serie` int(11) NOT NULL,
  `detalle` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_autor` (`id_autor`),
  KEY `id_ilustrador` (`id_ilustrador`),
  KEY `id_editorial` (`id_editorial`),
  KEY `id_tematica` (`id_tematica`),
  KEY `id_serie` (`id_serie`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`),
  CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`id_ilustrador`) REFERENCES `ilustrador` (`id`),
  CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id`),
  CONSTRAINT `libro_ibfk_4` FOREIGN KEY (`id_tematica`) REFERENCES `tematica` (`id`),
  CONSTRAINT `libro_ibfk_5` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (12,'Planet of the Apes',9,49,19,4,6,'vel nulla eget eros elementum',NULL),(13,'Nanny McPhee',13,45,19,10,10,'gravida nisi at nibh in hac habitasse platea',NULL),(14,'Fires Were Started',3,4,14,11,2,'porttitor id consequat in consequat ut',NULL),(17,'In the Hands of the Gods',24,26,5,3,9,'nulla dapibus dolor vel',NULL),(19,'London Boulevard',28,48,16,6,11,'sollicitudin ut suscipit a feugiat et eros',NULL),(26,'Story of Us, The',16,49,9,6,1,'eleifend donec ut dolor morbi vel lectus in',NULL),(44,'Bless the Child',5,4,1,10,3,'in felis donec semper',NULL),(48,'Special 26',27,32,12,5,4,'ut dolor morbi vel lectus in quam fringilla',NULL),(49,'Captive (Cautiva) ',19,40,13,7,6,'lorem ipsum dolor sit',NULL);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
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
