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
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `id` int(11) DEFAULT NULL,
  `id_ejemplar` int(11) DEFAULT NULL,
  `id_lector` int(11) DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `fecha_devolucion` datetime DEFAULT NULL,
  `detalle` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (1,50,1,'2022-11-12 00:00:00','2023-08-12 00:00:00','at'),(2,20,3,'2022-11-08 00:00:00','2023-01-16 00:00:00','amet'),(3,10,2,'2023-06-24 00:00:00','2023-09-12 00:00:00','non'),(4,22,1,'2022-12-04 00:00:00','2023-10-24 00:00:00','ut at dolor'),(5,23,2,'2023-10-30 00:00:00','2023-07-10 00:00:00','vestibulum ac est'),(6,20,3,'2023-04-07 00:00:00','2023-05-14 00:00:00','sed interdum'),(7,8,3,'2023-02-05 00:00:00','2023-05-21 00:00:00','pede justo'),(8,9,4,'2022-12-07 00:00:00','2023-09-20 00:00:00','gravida nisi'),(9,15,4,'2023-09-29 00:00:00','2023-09-02 00:00:00','orci'),(10,50,2,'2023-03-31 00:00:00','2022-11-27 00:00:00','sit amet sem'),(11,3,2,'2023-05-03 00:00:00','2023-03-28 00:00:00','in lacus'),(12,35,2,'2023-07-09 00:00:00','2022-11-21 00:00:00','vestibulum ante ipsum'),(13,20,4,'2023-01-14 00:00:00','2023-09-23 00:00:00','quam fringilla rhoncus'),(14,14,1,'2023-01-16 00:00:00','2023-08-06 00:00:00','pretium'),(15,30,4,'2023-10-28 00:00:00','2023-03-14 00:00:00','etiam pretium'),(16,3,1,'2023-09-04 00:00:00','2022-12-28 00:00:00','accumsan tortor quis'),(17,36,1,'2023-04-18 00:00:00','2023-08-15 00:00:00','tortor eu'),(18,18,3,'2023-08-18 00:00:00','2023-05-20 00:00:00','nullam varius nulla'),(19,1,2,'2022-11-21 00:00:00','2023-11-18 00:00:00','cursus id turpis'),(20,1,3,'2023-04-18 00:00:00','2022-11-16 00:00:00','sit amet'),(21,46,2,'2022-12-02 00:00:00','2023-01-14 00:00:00','quam pede'),(22,31,2,'2023-06-25 00:00:00','2023-01-25 00:00:00','consequat'),(23,8,1,'2022-11-02 00:00:00','2023-02-15 00:00:00','mauris eget massa'),(24,25,2,'2023-03-01 00:00:00','2022-11-23 00:00:00','nulla'),(25,35,1,'2023-01-09 00:00:00','2022-12-14 00:00:00','lectus'),(26,30,4,'2023-03-22 00:00:00','2023-09-21 00:00:00','vel'),(27,47,1,'2023-09-06 00:00:00','2023-01-19 00:00:00','urna pretium'),(28,25,3,'2023-05-21 00:00:00','2023-10-20 00:00:00','felis sed'),(29,13,3,'2023-09-27 00:00:00','2023-04-02 00:00:00','quisque'),(30,39,4,'2023-10-03 00:00:00','2023-07-29 00:00:00','vestibulum'),(31,35,2,'2023-05-05 00:00:00','2023-06-11 00:00:00','convallis tortor'),(32,21,2,'2023-10-04 00:00:00','2022-12-10 00:00:00','vel accumsan'),(33,25,1,'2023-10-18 00:00:00','2023-10-14 00:00:00','quam nec dui'),(34,13,1,'2023-04-23 00:00:00','2023-05-04 00:00:00','neque libero convallis'),(35,25,1,'2023-10-16 00:00:00','2023-08-25 00:00:00','sit amet justo'),(36,13,3,'2022-11-27 00:00:00','2023-09-16 00:00:00','porta'),(37,40,1,'2022-12-22 00:00:00','2023-03-09 00:00:00','ut massa quis'),(38,50,1,'2023-09-13 00:00:00','2023-08-09 00:00:00','mattis egestas metus'),(39,36,2,'2022-11-07 00:00:00','2022-11-03 00:00:00','enim leo'),(40,19,1,'2023-08-03 00:00:00','2023-03-18 00:00:00','quisque'),(41,47,4,'2023-04-30 00:00:00','2023-03-10 00:00:00','pellentesque quisque porta'),(42,17,4,'2023-06-04 00:00:00','2023-04-25 00:00:00','lectus pellentesque at'),(43,23,3,'2022-11-26 00:00:00','2023-11-27 00:00:00','accumsan odio curabitur'),(44,13,3,'2023-08-01 00:00:00','2023-08-10 00:00:00','tincidunt in'),(45,39,2,'2023-08-04 00:00:00','2023-07-19 00:00:00','aliquet'),(46,43,3,'2023-08-25 00:00:00','2023-08-02 00:00:00','at'),(47,18,3,'2023-02-12 00:00:00','2023-05-24 00:00:00','ut rhoncus aliquet'),(48,28,2,'2023-03-30 00:00:00','2023-01-11 00:00:00','ultrices mattis'),(49,47,3,'2023-09-28 00:00:00','2022-12-23 00:00:00','odio'),(50,15,3,'2023-06-20 00:00:00','2023-02-14 00:00:00','volutpat convallis');
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
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
