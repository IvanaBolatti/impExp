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
-- Table structure for table `lector`
--

DROP TABLE IF EXISTS `lector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `contacto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lector`
--

LOCK TABLES `lector` WRITE;
/*!40000 ALTER TABLE `lector` DISABLE KEYS */;
INSERT INTO `lector` VALUES (1,'Lanni','Roly','54 2nd Plaza'),(2,'Margarethe','Coveney','16 Hoffman Street'),(3,'Marchelle','Chilley','62 Golf Terrace'),(4,'Kori','Dibson','496 Artisan Alley'),(5,'Jehanna','Imlock','460 Columbus Pass'),(6,'Zelig','Rustan','4 Gale Drive'),(7,'Janel','Sockell','467 Ruskin Way'),(8,'Trever','Zorzini','379 Atwood Hill'),(9,'Hortensia','Blaxlande','2 Mcbride Center'),(10,'Dall','Elie','4 Spohn Place'),(11,'Amelie','Llewellin','71018 Warner Road'),(12,'Mirelle','Lohoar','138 Clarendon Terrace'),(13,'Joleen','Blankley','6035 Commercial Terrace'),(14,'Kendell','Felkin','62428 Anzinger Avenue'),(15,'Norrie','Pynner','30135 Ramsey Place'),(16,'Allx','Nuscha','36236 Reindahl Crossing'),(17,'Josi','Drinkel','826 Wayridge Plaza'),(18,'Cam','Leyton','4 Prairieview Parkway'),(19,'Debora','Wellbank','62400 Pine View Point'),(20,'Bidget','Anthona','2851 Scott Lane'),(21,'Norrie','Dell \'Orto','6 Westend Hill'),(22,'Izak','Stroton','1672 Morrow Circle'),(23,'Peirce','Witterick','51 Doe Crossing Point'),(24,'Guthrie','Adamik','40 Bayside Crossing'),(25,'Ariela','Clemetts','4565 Dottie Trail'),(26,'Allister','Burds','3 Starling Terrace'),(27,'Therine','McNutt','082 Transport Park'),(28,'Evonne','Wondraschek','7 Dawn Hill'),(29,'Lydon','Grivori','74 Carpenter Crossing'),(30,'Thia','Gribbins','6 Valley Edge Avenue'),(31,'Bernadine','Pellew','6277 Iowa Lane'),(32,'Moselle','Furminger','482 Atwood Center'),(33,'Gareth','Gile','350 Declaration Road'),(34,'Dame','Sutworth','8 Meadow Ridge Pass'),(35,'Hayden','Devereux','69 Lakewood Point'),(36,'Dela','Stutter','1 Clemons Plaza'),(37,'Suzy','Battman','102 Vernon Crossing'),(38,'Marylin','Mac Giany','112 Eggendart Road'),(39,'Tracie','Casella','7109 Raven Place'),(40,'Patsy','Brimming','79 Roth Street'),(41,'Dun','Greenwell','82 Elmside Avenue'),(42,'Arabela','Lantiffe','45 Declaration Center'),(43,'Merwyn','Fullard','019 Green Ridge Place'),(44,'Vladimir','Scorthorne','08323 Fisk Lane'),(45,'Pamelina','Navaro','7204 Hermina Street'),(46,'Lilyan','Geane','967 Armistice Drive'),(47,'Bobbette','Barkshire','36371 Buena Vista Terrace'),(48,'Ferrel','Wilbraham','586 Harper Crossing'),(49,'Innis','Antosik','701 Scott Plaza'),(50,'Sadie','Dahlgren','800 Wayridge Avenue'),(60,'Romina','Tome','Los Talas 543');
/*!40000 ALTER TABLE `lector` ENABLE KEYS */;
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
