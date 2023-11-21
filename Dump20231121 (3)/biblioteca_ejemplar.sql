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
-- Table structure for table `ejemplar`
--

DROP TABLE IF EXISTS `ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplar` (
  `id` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  `id_ubicacion` int(11) DEFAULT NULL,
  `estado` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplar`
--

LOCK TABLES `ejemplar` WRITE;
/*!40000 ALTER TABLE `ejemplar` DISABLE KEYS */;
INSERT INTO `ejemplar` VALUES (1,25,1,'activo'),(2,28,4,'activo'),(3,1,3,'activo'),(4,14,2,'activo'),(5,23,2,'activo'),(6,41,4,'activo'),(7,16,4,'activo'),(8,8,2,'roto'),(9,41,2,'activo'),(10,11,2,'activo'),(11,17,4,'activo'),(12,4,3,'activo'),(13,24,2,'activo'),(14,39,1,'activo'),(15,45,4,'activo'),(16,14,2,'roto'),(17,41,1,'activo'),(18,1,4,'activo'),(19,21,4,'activo'),(20,26,3,'activo'),(21,6,2,'perdido'),(22,16,2,'activo'),(23,6,1,'activo'),(24,2,2,'activo'),(25,11,3,'activo'),(26,49,2,'activo'),(27,6,2,'activo'),(28,21,3,'activo'),(29,30,1,'activo'),(30,21,2,'perdido'),(31,36,2,'activo'),(32,22,2,'activo'),(33,38,1,'activo'),(34,16,4,'activo'),(35,21,3,'activo'),(36,11,1,'activo'),(37,20,2,'activo'),(38,48,2,'activo'),(39,13,1,'activo'),(40,27,3,'activo'),(41,44,4,'activo'),(42,8,2,'roro'),(43,41,3,'activo'),(44,15,3,'activo'),(45,30,1,'activo'),(46,20,1,'activo'),(47,15,1,'activo'),(48,26,2,'activo'),(49,17,3,'activo'),(50,14,4,'activo');
/*!40000 ALTER TABLE `ejemplar` ENABLE KEYS */;
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
