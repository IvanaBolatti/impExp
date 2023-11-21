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
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `contacto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Monkswort','49754 Lukken Junction'),(2,'Florida Beaksedge','5 Hudson Street'),(3,'Konor Rhododendron','52 Sugar Place'),(4,'Supine Bluegrass','9050 Mallory Terrace'),(5,'Organ Mountain Foxtail Cactus','466 Farwell Parkway'),(6,'Zedoary','7 Mayfield Place'),(7,'Shield Nasturtium','36 Meadow Valley Lane'),(8,'Fuzzytongue Penstemon','64212 Rigney Trail'),(9,'Porterweed','7695 Eliot Place'),(10,'Hairy-pod Milkvetch','6167 Waubesa Plaza'),(11,'Hairy Fleabane','0 Bartelt Hill'),(12,'Ladder Spleenwort','275 Northfield Drive'),(13,'Thickpod Milkvetch','40300 Boyd Parkway'),(14,'Roundhead Prairie Clover','50 Weeping Birch Terrace'),(15,'Richard\'s Yelloweyed Grass','74 Redwing Lane'),(16,'Oldplainsman','69 Blue Bill Park Alley'),(17,'Clubhair Mariposa Lily','27379 Lunder Trail'),(18,'Skin Lichen','2425 Merchant Road'),(19,'Otton\'s Pygmymelon','55741 Fieldstone Trail'),(20,'Leavenworth\'s Eryngo','31982 Burning Wood Alley'),(21,'Brickellbush','481 Blaine Plaza'),(22,'Mountain Heartleaf','1923 Clarendon Junction'),(23,'Toano Milkvetch','6 Anniversary Parkway'),(24,'Savin','867 Westport Hill'),(25,'Rattan','35 Steensland Pass'),(26,'Hairy Lady\'s Mantle','0 Center Street'),(27,'Acuna\'s Star Orchid','0 Kings Lane'),(28,'Paiute Suncup','66 Grasskamp Court'),(29,'Fernleaf Yellow False Foxglove','6 Lukken Road'),(30,'Vernal Pool Bentgrass','8 Hollow Ridge Center'),(31,'Quillwort','90 Hallows Road'),(32,'Wright\'s Stonecrop','80 Saint Paul Place'),(33,'Lake Willow Dock','86 Ohio Junction'),(34,'Sundial Lupine','66999 Mandrake Lane'),(35,'Kuhi\'aikamo\'owahie','22827 Crescent Oaks Avenue'),(36,'Anticosti Island Aster','294 Vernon Plaza'),(37,'Gumweed','093 Mccormick Junction'),(38,'Pacific Fawnlily','721 Hudson Circle'),(39,'Forster\'s Maiden Fern','24004 Aberg Place'),(40,'Gordon\'s Bladderpod','0 Eagan Pass');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
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
