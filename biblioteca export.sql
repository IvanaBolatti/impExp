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

--
-- Temporary view structure for view `autores_argentinos`
--

DROP TABLE IF EXISTS `autores_argentinos`;
/*!50001 DROP VIEW IF EXISTS `autores_argentinos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `autores_argentinos` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `autores_nacionalidad`
--

DROP TABLE IF EXISTS `autores_nacionalidad`;
/*!50001 DROP VIEW IF EXISTS `autores_nacionalidad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `autores_nacionalidad` AS SELECT 
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Temporary view structure for view `ejemplar_perdidos`
--

DROP TABLE IF EXISTS `ejemplar_perdidos`;
/*!50001 DROP VIEW IF EXISTS `ejemplar_perdidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ejemplar_perdidos` AS SELECT 
 1 AS `id`,
 1 AS `id_libro`,
 1 AS `id_ubicacion`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `nacionalidad`
--

DROP TABLE IF EXISTS `nacionalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nacionalidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nacionalidad`
--

LOCK TABLES `nacionalidad` WRITE;
/*!40000 ALTER TABLE `nacionalidad` DISABLE KEYS */;
INSERT INTO `nacionalidad` VALUES (1,'argentino'),(2,'brasilero'),(3,'peruano'),(4,'mexicano');
/*!40000 ALTER TABLE `nacionalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_autor`
--

DROP TABLE IF EXISTS `new_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(24) NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  `fecha_nacim` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nacionalidad` (`id_nacionalidad`),
  CONSTRAINT `new_autor_ibfk_1` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_autor`
--

LOCK TABLES `new_autor` WRITE;
/*!40000 ALTER TABLE `new_autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_autor_mayor`
--

DROP TABLE IF EXISTS `new_autor_mayor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_autor_mayor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `id_nacionalidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nacionalidad` (`id_nacionalidad`),
  CONSTRAINT `new_autor_mayor_ibfk_1` FOREIGN KEY (`id_nacionalidad`) REFERENCES `nacionalidad` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_autor_mayor`
--

LOCK TABLES `new_autor_mayor` WRITE;
/*!40000 ALTER TABLE `new_autor_mayor` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_autor_mayor` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` VALUES (1,'\"animalotes\"'),(2,'\"los buscapistas\"'),(3,'\"los futbolisimos\"'),(4,'\"Geronimo Stilson\"'),(5,'\"Agus y los monstruos\"'),(6,'\"El diario de Greg\"'),(7,'\"El diario de Niki\"'),(8,'\"El club de las zapatillas rojas\"'),(9,'\"Sara y las goleadoras\"'),(10,'\"Cazadores de sombras\"'),(11,'\"Enfrentdos\"');
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tematica`
--

DROP TABLE IF EXISTS `tematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tematica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tematica`
--

LOCK TABLES `tematica` WRITE;
/*!40000 ALTER TABLE `tematica` DISABLE KEYS */;
INSERT INTO `tematica` VALUES (1,'Comedy'),(2,'Comedy|Drama'),(3,'Comedy|Western'),(4,'Comedy|Drama|Fantasy'),(5,'Drama'),(6,'War'),(7,'Musical'),(9,'Horror|Thriller'),(10,'Drama|Romance|War'),(11,'Animation|Comedy|Sci-Fi'),(12,'Action|Drama|Romance|War'),(13,'Drama'),(14,'Documentary'),(15,'Comedy|Horror|Thriller'),(16,'Action|Crime|Thriller'),(17,'Comedy|Sci-Fi'),(18,'Adventure|Children|Comedy|Mystery'),(19,'Romance|Western'),(20,'Comedy'),(21,'Drama'),(22,'Documentary'),(23,'Horror'),(24,'Action|Comedy|Fantasy|Horror'),(25,'Documentary'),(26,'Action|Crime|Drama|Thriller'),(27,'Drama'),(28,'Crime|Drama'),(29,'Drama'),(31,'Comedy|Drama|Mystery'),(32,'Comedy'),(33,'Drama|Thriller'),(34,'Comedy'),(35,'Action|Adventure|Sci-Fi|IMAX'),(36,'Drama'),(37,'Drama'),(38,'Comedy|Drama'),(40,'Drama'),(41,'Comedy'),(42,'Adventure|Drama|Romance'),(43,'Drama'),(44,'Comedy|Drama'),(45,'Comedy|Crime|Mystery'),(46,'Drama'),(47,'Drama'),(48,'(no genres listed)'),(49,'Documentary'),(50,'Action|Comedy|Crime|Drama|Thriller'),(51,'Horror'),(52,'Documentary'),(53,'Drama'),(54,'Documentary'),(55,'Fantasy'),(56,'Sci-Fi'),(57,'Drama|Romance'),(58,'Crime|Drama|Thriller'),(59,'Drama'),(60,'Comedy'),(61,'Crime|Thriller'),(62,'Action|Drama|War'),(63,'Crime|Drama'),(64,'Drama'),(65,'Documentary'),(66,'Comedy|Drama'),(67,'Documentary'),(68,'Drama'),(69,'Comedy|Drama'),(70,'Action|Comedy|Crime|Thriller'),(71,'Children|Comedy'),(72,'Action|Thriller'),(73,'Drama|Romance'),(74,'Documentary'),(75,'Crime|Drama'),(76,'Fantasy'),(77,'Comedy|Romance'),(78,'Crime|Drama|Thriller'),(79,'Comedy|Horror|Mystery'),(80,'Comedy|Drama'),(81,'Comedy'),(82,'Drama|War'),(83,'Comedy|Drama|Romance|Sci-Fi'),(84,'Drama|War'),(85,'Drama|War'),(86,'Drama|Sci-Fi'),(87,'Action|Adventure|Fantasy'),(88,'Drama|Romance|Thriller|War'),(89,'Children|Comedy'),(90,'Romance|Western'),(91,'Action|Comedy|Crime|Fantasy'),(92,'Action|Drama'),(93,'Drama|Horror|Thriller'),(94,'Documentary'),(95,'Comedy|Documentary'),(96,'Drama|Romance'),(97,'Drama'),(98,'Children|Comedy'),(99,'Action|Adventure|Crime|Thriller'),(100,'Drama'),(101,'Adventure|Children|Comedy|Drama'),(102,'Comedy'),(103,'Action|Adventure|Crime|Drama'),(104,'Western'),(105,'Comedy|Musical'),(106,'Documentary|Drama'),(107,'Documentary'),(108,'Comedy|Documentary'),(109,'Comedy|Thriller'),(110,'Action|Adventure|Thriller'),(111,'Comedy|Drama'),(112,'Comedy|Drama|Romance'),(113,'Comedy|Crime|Mystery|Thriller'),(114,'Comedy'),(115,'Comedy|Drama'),(116,'Comedy'),(117,'Action|Drama|War'),(118,'Action|Adventure|War'),(119,'Animation|Children|Comedy|Crime'),(120,'Documentary'),(121,'Comedy|Romance'),(122,'Documentary|War'),(123,'Comedy|Drama|Romance'),(124,'Drama|Romance'),(125,'Comedy|Horror'),(126,'Comedy'),(127,'Comedy'),(128,'Drama'),(129,'Documentary'),(130,'Thriller'),(131,'Comedy|Romance'),(132,'Children|Comedy|Drama|Fantasy'),(133,'Drama'),(134,'Animation|Fantasy|Thriller'),(135,'Drama'),(136,'Drama|Romance'),(137,'Crime|Drama'),(138,'Comedy|Romance|Western'),(139,'Drama'),(140,'Comedy'),(141,'Horror'),(142,'Documentary'),(143,'Children|Drama'),(144,'Action|Crime|Drama'),(145,'Comedy|Drama|Mystery|Romance|Thriller'),(146,'Adventure|Drama'),(147,'Comedy|Drama'),(148,'Mystery|Thriller'),(149,'Drama|Mystery'),(150,'Documentary|War'),(151,'Drama|Romance'),(152,'Crime|Drama|Romance'),(153,'Action|Comedy|Sci-Fi'),(154,'Romance'),(155,'Sci-Fi'),(156,'Comedy|Drama|Horror'),(157,'Comedy|Crime'),(158,'Crime'),(159,'Drama|Romance'),(160,'Comedy|Drama|Film-Noir'),(161,'Adventure|Comedy|Musical'),(162,'Drama|Fantasy'),(163,'Action|Comedy'),(164,'Comedy'),(165,'Drama|Thriller'),(166,'Drama'),(167,'Documentary'),(168,'Thriller'),(169,'Documentary'),(170,'Comedy|Romance'),(171,'Action|Horror|Thriller'),(172,'Horror|Thriller'),(173,'Drama'),(174,'Drama'),(175,'Drama'),(176,'Children|Comedy|Fantasy'),(177,'Crime|Drama|Romance'),(178,'Drama|Romance'),(179,'Comedy|Drama|Romance'),(181,'Drama|War'),(182,'Action|Romance|War|Western'),(183,'Comedy'),(184,'Drama|Thriller'),(185,'Crime|Mystery'),(186,'Comedy|Drama|Musical|Mystery'),(187,'Comedy|Drama'),(188,'Action|Animation|Children|Comedy|Fantasy'),(189,'Drama'),(190,'Comedy'),(191,'Action|Drama|Thriller'),(192,'Comedy'),(193,'Comedy'),(194,'Horror'),(195,'Drama'),(196,'Horror|Mystery|Thriller'),(197,'Documentary|Sci-Fi'),(198,'Drama|Thriller'),(199,'Drama'),(200,'Animation|Drama|Fantasy'),(201,'Horror|Thriller'),(202,'Drama|Thriller'),(203,'Drama'),(204,'Horror'),(205,'Documentary|Thriller'),(206,'Crime|Horror|Thriller'),(207,'Drama'),(208,'Action|Adventure|Sci-Fi'),(209,'Crime|Drama|Romance'),(210,'Action|Thriller'),(211,'Documentary'),(212,'Action'),(213,'Drama'),(214,'Horror'),(215,'Drama'),(216,'Crime|Drama'),(217,'(no genres listed)'),(218,'Animation|Drama'),(219,'Drama'),(220,'Comedy|Drama'),(221,'Drama'),(222,'Comedy|Romance'),(223,'Drama|Sci-Fi'),(224,'Action|Adventure|Sci-Fi|Thriller'),(225,'Documentary'),(226,'Comedy|Drama'),(227,'Action|Comedy|Horror|Thriller'),(228,'Comedy|Crime'),(229,'Action|Thriller'),(230,'Western'),(231,'Comedy|Drama'),(232,'Drama|Romance|War'),(233,'Horror|Sci-Fi|Thriller'),(234,'Drama'),(235,'Documentary'),(236,'Documentary'),(237,'Action|Drama'),(238,'Crime|Thriller'),(239,'Drama'),(240,'Drama|Thriller'),(241,'Action|Drama'),(242,'Drama'),(243,'Horror'),(244,'Documentary|Sci-Fi'),(245,'Comedy|Musical'),(246,'Comedy|Drama'),(247,'Action|Adventure|Thriller'),(248,'Comedy'),(249,'Comedy|Romance|Sci-Fi'),(250,'Comedy|Drama|Romance'),(251,'Drama'),(252,'Sci-Fi'),(253,'Documentary'),(254,'Documentary|War'),(255,'Drama|Romance'),(256,'Comedy|Drama|Romance'),(257,'Action|Crime|Thriller'),(258,'Drama'),(259,'Horror|Thriller'),(260,'Documentary'),(261,'Drama'),(262,'Drama'),(263,'Drama'),(264,'Adventure|Documentary|Western'),(265,'Drama|War'),(266,'Drama'),(267,'Horror|Thriller'),(268,'Comedy|Fantasy'),(269,'Drama|Romance'),(270,'Adventure|Crime|Mystery|Romance'),(271,'Crime|Mystery|Thriller'),(272,'Drama'),(273,'Documentary'),(274,'Drama|Thriller'),(275,'Drama|Romance'),(276,'Drama|Thriller'),(277,'Comedy'),(278,'Drama'),(279,'Drama|Thriller'),(280,'Documentary'),(281,'Drama'),(282,'Comedy|Drama|Romance'),(283,'Drama|War'),(284,'Drama|Romance'),(285,'Drama'),(286,'Action'),(287,'Comedy'),(288,'Documentary'),(289,'Comedy|Drama|Romance'),(290,'Action|Drama|War'),(291,'Animation|Comedy|Fantasy'),(292,'Drama'),(293,'Drama|Western'),(294,'Documentary|Drama|War'),(295,'Drama'),(296,'Comedy|Drama'),(297,'Documentary|Drama|Sci-Fi'),(298,'Drama'),(299,'Comedy|Crime'),(300,'Action|Adventure|Sci-Fi'),(301,'Comedy'),(302,'Drama'),(303,'Drama'),(304,'Action|Adventure|Fantasy'),(305,'Action|Comedy|Fantasy|Horror'),(306,'Action|Adventure|Animation|Sci-Fi'),(307,'Action|Drama'),(308,'Comedy|Drama'),(309,'Horror|Mystery|Thriller'),(310,'Drama|Romance'),(311,'Comedy|Romance'),(312,'Crime|Drama'),(313,'Animation|Children|Comedy'),(314,'Drama'),(315,'Horror|Thriller'),(316,'Drama|Romance'),(317,'Film-Noir|Horror|Thriller'),(318,'Comedy|Documentary|Romance'),(319,'Drama|Romance'),(320,'Drama'),(321,'Romance'),(322,'Drama'),(323,'Comedy|Crime'),(324,'Drama'),(325,'Documentary'),(326,'Drama'),(327,'Drama|Horror|Sci-Fi'),(328,'Drama'),(329,'Comedy|Drama'),(330,'Action|Drama|Horror|Thriller'),(331,'Action|Drama'),(332,'Drama'),(333,'Comedy|Documentary'),(334,'Thriller'),(335,'Action|Adventure|Mystery|Thriller'),(336,'Comedy|Musical'),(337,'Documentary'),(338,'Horror|Sci-Fi'),(339,'Comedy|Drama'),(340,'Comedy'),(341,'Crime|Thriller'),(342,'Drama|Romance'),(343,'Horror|Thriller'),(344,'Action|Adventure|Drama'),(345,'Drama'),(346,'Comedy|Romance'),(347,'Action|Adventure|Horror|Sci-Fi'),(348,'Drama'),(349,'Comedy'),(351,'Drama'),(352,'Adventure|Romance'),(353,'Crime|Thriller'),(354,'Drama'),(355,'Drama'),(356,'Adventure'),(357,'Documentary'),(358,'Drama'),(359,'Comedy'),(360,'Comedy|Horror|Thriller'),(361,'Comedy|Drama|Musical'),(362,'Drama|Romance'),(363,'Drama'),(364,'Crime|Thriller'),(365,'Drama'),(366,'Comedy'),(367,'Drama|Mystery|Thriller'),(368,'Drama'),(369,'Adventure|Sci-Fi'),(370,'Action|Comedy|Sci-Fi'),(371,'Comedy'),(372,'Drama'),(373,'Comedy|Drama|Musical'),(374,'Crime|Drama|Thriller'),(375,'Crime|Drama|Thriller'),(376,'Comedy|Horror|Sci-Fi'),(377,'Comedy|Horror|Sci-Fi|Thriller'),(378,'Adventure|Comedy|Mystery|Western'),(379,'Comedy|Drama'),(380,'Sci-Fi|Thriller|War'),(381,'Drama|Fantasy|Romance'),(382,'Drama'),(383,'Drama|Romance|Thriller'),(384,'Documentary'),(385,'Documentary'),(386,'Comedy|Horror'),(387,'Animation|Fantasy'),(388,'Action|Adventure|Drama'),(389,'Mystery|Thriller'),(390,'Adventure|Animation|Children|Comedy'),(391,'Drama|Horror|Thriller'),(392,'Drama|Horror|Thriller'),(393,'Documentary'),(394,'Drama|Romance'),(395,'Drama'),(396,'Drama'),(397,'Documentary'),(398,'Comedy|War'),(399,'Comedy'),(400,'Action|Drama|Horror|Romance|Sci-Fi'),(401,'Animation|Children'),(402,'(no genres listed)'),(403,'Comedy|Romance'),(404,'Horror|Romance|Thriller'),(405,'Comedy'),(406,'Comedy|Drama'),(407,'Comedy'),(408,'Drama'),(409,'Drama'),(410,'Documentary'),(411,'Drama'),(412,'Drama'),(413,'Drama'),(414,'Action|Comedy|Horror'),(415,'Action|Adventure|Sci-Fi|Thriller|IMAX'),(416,'Drama|Romance'),(417,'Documentary'),(418,'Action|Adventure|Fantasy'),(419,'Drama|Musical|Romance'),(420,'Drama'),(421,'Comedy|Romance'),(422,'Horror|Thriller'),(423,'Drama|Sci-Fi|Thriller'),(424,'Comedy|Romance'),(425,'(no genres listed)'),(426,'Action|Horror|Sci-Fi|IMAX'),(427,'Drama'),(428,'Action|Drama|Thriller'),(429,'(no genres listed)'),(430,'Action|Drama|Mystery'),(431,'Comedy'),(432,'Action|Adventure|Comedy'),(433,'Drama'),(434,'Comedy|Romance'),(435,'Comedy'),(436,'Horror|Mystery|Thriller'),(437,'Action|Comedy|Musical'),(438,'Drama'),(439,'Drama|Fantasy|Mystery|Romance'),(440,'Comedy'),(441,'Action|Drama|War'),(442,'Comedy'),(443,'Comedy|Romance'),(444,'Documentary|Musical'),(445,'Drama'),(446,'Crime|Drama|Thriller'),(447,'Comedy|Romance'),(448,'Drama|Fantasy|Romance|Thriller'),(449,'Comedy'),(450,'Drama'),(451,'Crime|Drama'),(452,'Crime|Drama|Mystery|Thriller'),(453,'Children'),(454,'Drama'),(455,'Drama'),(456,'Western'),(457,'Drama'),(458,'Adventure|Drama'),(459,'Action|Children|Fantasy'),(460,'Documentary'),(461,'Children'),(462,'Children|Drama'),(463,'Comedy|Sci-Fi'),(464,'Drama|Romance'),(465,'Documentary'),(466,'Drama|Romance'),(467,'Action|Sci-Fi'),(468,'Drama|War'),(470,'Crime|Drama|Thriller'),(471,'Action|Mystery'),(472,'Drama'),(473,'Drama|Romance'),(474,'Drama'),(475,'Thriller'),(476,'Comedy|Drama'),(477,'Adventure|Animation|Children|Musical'),(478,'Mystery|Thriller'),(479,'Horror|Thriller'),(480,'Children|Drama'),(481,'Adventure|Animation|Children|Comedy'),(482,'Animation|Comedy'),(483,'Comedy'),(484,'Comedy|Western'),(485,'Drama|Musical'),(486,'Horror|Sci-Fi'),(487,'Adventure|Comedy|Drama'),(488,'Mystery|Thriller'),(489,'Comedy'),(490,'Crime|Drama|Thriller'),(491,'Comedy|Crime|Drama|Thriller'),(492,'Comedy|Drama|Musical|Romance'),(493,'Drama|War'),(494,'Comedy|Fantasy|Horror'),(495,'Horror'),(496,'Drama|Sci-Fi'),(497,'Comedy|Drama|Romance'),(498,'Drama|Thriller'),(499,'Action|Drama|War'),(500,'Drama'),(501,'Comedy|Musical'),(502,'Drama|Romance'),(503,'Comedy|Crime|Drama'),(504,'Comedy'),(505,'Mystery'),(506,'Comedy'),(507,'Comedy|Drama|Romance'),(508,'Documentary'),(509,'Comedy|Fantasy|Romance'),(510,'Horror|Thriller'),(511,'Action|Comedy|Romance'),(512,'Drama'),(513,'Documentary|Drama'),(514,'Adventure|Children'),(515,'Action|Comedy|Crime'),(516,'Action|Drama|Sci-Fi'),(517,'Animation|Children|Fantasy|Musical'),(518,'Horror|Sci-Fi'),(519,'Drama|War'),(520,'Horror|Mystery|Thriller'),(521,'Action|Fantasy|Thriller'),(522,'Crime|Drama|Thriller'),(523,'Comedy|Drama|Romance'),(524,'Drama'),(525,'Documentary|IMAX'),(526,'Comedy|Drama'),(527,'Comedy|Romance'),(528,'Action|Crime|Thriller'),(529,'Comedy|Horror|Mystery|Thriller'),(530,'Drama'),(531,'Comedy|Horror|Mystery|Thriller'),(532,'Drama|Romance|Western'),(533,'Action'),(534,'Drama'),(535,'Documentary|Drama|Thriller'),(536,'War'),(537,'Drama'),(538,'Action|Adventure|Comedy|Western'),(539,'Action|War'),(540,'Children|Comedy|Fantasy'),(541,'Adventure|Animation|Children|Comedy|IMAX'),(542,'Drama'),(543,'Drama'),(544,'Children|Drama'),(545,'Drama'),(546,'Documentary'),(547,'Action|Adventure|Fantasy'),(548,'Western'),(549,'Comedy|Drama|Thriller'),(550,'Documentary'),(551,'Documentary'),(552,'Drama'),(553,'Crime|Drama|Mystery'),(554,'Drama|Musical'),(555,'Comedy|Drama|Romance'),(556,'Documentary'),(557,'Adventure|Romance|Sci-Fi'),(558,'Comedy'),(559,'Documentary'),(560,'Drama'),(561,'Action|Adventure|Sci-Fi|Thriller|IMAX'),(562,'Adventure|Comedy'),(563,'Drama|Horror|Thriller'),(564,'Adventure|Children|Comedy|Drama'),(565,'Drama'),(566,'Action|Comedy'),(567,'Drama'),(568,'Documentary'),(569,'Horror|Thriller'),(570,'Drama|Thriller'),(571,'Comedy'),(572,'Drama|Fantasy'),(573,'Crime|Drama|Film-Noir'),(574,'Horror|Sci-Fi|Thriller'),(575,'Drama'),(577,'Fantasy|Musical'),(578,'Drama'),(579,'Action|Crime|Drama|Thriller'),(580,'Comedy|Crime|Romance'),(581,'Drama'),(582,'Drama|Mystery'),(583,'Documentary'),(584,'Comedy'),(585,'Crime|Horror|Thriller'),(586,'Comedy|Drama|Romance'),(587,'Drama'),(588,'Comedy|Drama|Romance'),(589,'Crime'),(590,'Comedy|Drama|Romance'),(591,'Drama'),(592,'Action|Adventure|Sci-Fi|Thriller|War'),(593,'Drama'),(594,'Drama'),(595,'Action|Animation|Crime|Sci-Fi|Thriller'),(596,'Drama'),(597,'Drama|War'),(598,'Drama'),(599,'Comedy|Drama'),(600,'Drama|Romance'),(601,'Comedy'),(602,'Comedy|Crime'),(603,'Crime|Drama|Mystery'),(604,'Horror|Sci-Fi'),(605,'Crime|Drama|Thriller'),(606,'Comedy'),(607,'Drama|Western'),(608,'Drama|Musical'),(609,'(no genres listed)'),(610,'Drama|Romance'),(611,'Action|Adventure|Sci-Fi'),(612,'Comedy|Horror'),(613,'Action|Thriller'),(614,'Comedy|Crime|Drama|Romance'),(615,'Drama'),(616,'Documentary'),(617,'Documentary'),(618,'Documentary'),(619,'Adventure|Thriller'),(620,'Comedy'),(621,'Documentary'),(622,'Comedy'),(623,'Drama'),(624,'Comedy'),(625,'Drama'),(626,'Comedy'),(627,'Drama|Mystery|Thriller'),(628,'Comedy|Drama|Fantasy'),(629,'Animation'),(630,'Comedy'),(631,'Adventure|Comedy'),(632,'Children|Comedy|Mystery'),(633,'Crime'),(634,'Drama'),(635,'Comedy'),(636,'Drama|Romance'),(637,'Thriller'),(638,'Drama|Mystery'),(639,'Drama'),(640,'Drama'),(641,'Drama'),(642,'Children|Comedy'),(643,'Adventure|Comedy'),(644,'Comedy|Drama|Romance'),(645,'Action|Comedy|Drama|Romance'),(646,'Drama'),(647,'Animation|Children|Musical'),(648,'Drama|Romance'),(649,'Crime|Drama'),(650,'Action|Comedy|Musical'),(651,'Action|Horror'),(652,'Documentary'),(653,'Action|Crime'),(654,'Comedy'),(655,'Comedy|Documentary'),(656,'Drama|Romance'),(657,'(no genres listed)'),(658,'Comedy|Drama|Thriller'),(659,'Documentary'),(660,'Crime|Drama'),(661,'Thriller'),(662,'Drama|Fantasy|Mystery|Romance'),(663,'Comedy|Musical'),(664,'Animation|Comedy|Fantasy|Musical|Romance'),(665,'Comedy|Musical'),(666,'Action|Adventure|Comedy'),(667,'Horror|Thriller'),(668,'Drama|Romance'),(669,'Musical'),(670,'Musical|Romance'),(671,'Adventure|Animation|Children|Musical'),(672,'Comedy'),(673,'Drama'),(674,'Sci-Fi'),(675,'Action|Crime|Drama|Thriller'),(676,'Horror'),(677,'Animation|Children|Fantasy'),(678,'Drama'),(679,'Drama'),(680,'Comedy|Drama|Romance'),(681,'Drama'),(682,'Documentary'),(683,'Animation|Comedy'),(684,'Western'),(685,'Action|Adventure|Comedy'),(686,'Documentary'),(687,'Action|Comedy|Crime'),(688,'Action|Crime|Thriller|IMAX'),(689,'Action|Drama|Thriller'),(690,'Comedy|Drama|Romance'),(691,'Comedy|Musical'),(692,'Action|Drama|War'),(693,'Drama|Horror|Thriller'),(694,'Comedy'),(695,'Crime|Drama'),(696,'Horror'),(697,'Horror|Sci-Fi'),(698,'Drama'),(699,'Action|Horror'),(700,'Documentary'),(701,'Drama'),(702,'Drama|Thriller'),(703,'Documentary'),(704,'Drama|Romance'),(705,'Drama|War'),(706,'Drama'),(707,'Documentary'),(708,'Documentary'),(709,'Comedy|Mystery'),(710,'Adventure|Animation|Comedy'),(711,'Action|Horror|Sci-Fi'),(712,'Comedy|Crime'),(713,'Adventure|Comedy|Fantasy|Sci-Fi'),(714,'Comedy|Romance'),(715,'Drama'),(716,'Drama|Romance'),(717,'Comedy'),(718,'Crime|Drama'),(719,'Comedy|Drama|Romance'),(720,'Drama|Romance'),(721,'Adventure|Drama'),(722,'Action|Thriller'),(723,'Comedy'),(724,'Crime|Thriller'),(725,'Documentary'),(726,'Action|Western'),(727,'Drama|Thriller'),(728,'Action|Crime|Drama|Thriller'),(729,'Drama'),(730,'Drama'),(731,'Comedy|Drama|Fantasy|Romance'),(732,'Drama'),(733,'Drama'),(734,'Drama'),(735,'Animation|Comedy|Sci-Fi'),(736,'Drama'),(737,'Fantasy|Horror|Sci-Fi|Thriller'),(738,'Crime|Drama|Thriller'),(739,'Comedy|Drama'),(740,'Comedy|Drama'),(741,'Animation|Drama|Fantasy'),(742,'Drama|Sci-Fi'),(743,'Documentary'),(744,'Action|Thriller'),(745,'Comedy'),(746,'Action|Drama|War'),(747,'Comedy'),(748,'Drama'),(749,'Drama'),(750,'Comedy|Drama|Romance'),(751,'Drama|Mystery|Romance'),(752,'Comedy|Mystery'),(753,'Comedy'),(754,'Drama|Fantasy'),(755,'Comedy|Mystery'),(756,'Drama'),(757,'Crime|Drama|Mystery|Thriller'),(758,'Action|Comedy|Crime'),(759,'Documentary'),(760,'Action'),(761,'Action|Comedy|Romance|Western'),(762,'Documentary'),(763,'Children'),(764,'Drama|Romance|War'),(765,'Comedy|Drama'),(766,'Drama|Thriller|War'),(767,'Documentary'),(768,'Drama'),(769,'Comedy'),(770,'Western'),(771,'Drama|Fantasy|Romance'),(772,'Drama'),(773,'Action|Thriller'),(774,'Documentary'),(775,'Adventure|War'),(776,'Crime|Drama'),(777,'Drama'),(778,'Drama|Sci-Fi|Thriller'),(779,'Comedy|Drama|Romance'),(780,'Comedy|Mystery|Thriller'),(781,'Drama|War'),(782,'Comedy'),(783,'Documentary'),(784,'Drama|War'),(785,'Horror|Mystery|Sci-Fi|Thriller'),(786,'Drama'),(787,'Crime|Drama|Film-Noir|Thriller'),(788,'Drama|Thriller'),(789,'Horror|Thriller'),(791,'Drama|Romance'),(792,'Comedy'),(793,'Drama|Film-Noir|Thriller'),(794,'Documentary'),(795,'Crime'),(796,'Drama'),(797,'Action|Sci-Fi|Thriller'),(798,'Drama'),(799,'Action|Crime|Drama|Thriller'),(800,'Comedy'),(801,'Comedy'),(802,'Horror'),(803,'Drama|Romance'),(804,'Documentary'),(805,'Drama'),(806,'Romance|Thriller'),(807,'Comedy'),(808,'Children|Drama'),(810,'Comedy'),(811,'Drama|Mystery'),(812,'Horror'),(813,'Romance'),(814,'Drama'),(815,'Comedy'),(816,'Comedy|Crime'),(817,'Action|Fantasy|Western'),(818,'Action'),(819,'Drama'),(820,'Comedy|Drama'),(821,'Comedy|Drama|Romance'),(822,'Comedy'),(823,'Drama|Mystery|Thriller'),(824,'Documentary'),(825,'Action|Crime'),(826,'Drama'),(827,'Comedy|Thriller'),(828,'Comedy|Romance'),(829,'Action|Thriller'),(830,'Drama|Horror|Thriller'),(831,'Action|Comedy'),(832,'Comedy|Drama|Romance'),(833,'Drama'),(834,'Drama|Musical'),(835,'Comedy|Romance'),(836,'Drama'),(837,'Action|Thriller'),(838,'Crime|Drama|Thriller'),(839,'Comedy'),(840,'Action|Adventure|Fantasy'),(841,'Comedy|Romance'),(842,'Documentary'),(843,'Drama|Horror'),(844,'Drama'),(845,'Adventure|Children'),(846,'Crime|Mystery'),(847,'Drama'),(848,'Mystery|Thriller'),(849,'Documentary'),(850,'Documentary'),(851,'Crime|Mystery|Thriller'),(852,'Documentary'),(853,'Fantasy|Romance|Sci-Fi'),(854,'Drama|Mystery|Thriller'),(855,'Comedy|Drama|Romance'),(856,'Crime|Drama|Film-Noir'),(857,'Horror|Thriller'),(858,'Romance|Thriller'),(859,'Adventure|Fantasy|Thriller'),(860,'Comedy|Drama'),(861,'Comedy'),(862,'Drama'),(863,'Comedy|Romance'),(864,'Crime|Drama|Sci-Fi|Thriller'),(865,'Comedy|Horror'),(866,'Comedy|Drama|Musical|IMAX'),(867,'Children|Comedy|Drama'),(868,'Drama'),(869,'Drama'),(870,'Comedy'),(871,'Drama'),(872,'Comedy'),(873,'Comedy'),(874,'Action|Crime|Thriller'),(875,'Comedy|Drama'),(876,'Comedy'),(877,'Documentary'),(878,'Drama|Romance'),(879,'Documentary'),(880,'Drama'),(881,'Children|Comedy|Drama'),(882,'Crime|Drama|Film-Noir'),(883,'Comedy|Romance'),(884,'Drama'),(885,'Comedy|Drama|Romance'),(886,'Action|Crime|Drama|Thriller'),(887,'Drama'),(888,'Comedy|Drama|Romance'),(889,'Comedy|Drama|Romance'),(890,'Action|Horror'),(891,'Horror|Sci-Fi'),(892,'Comedy|Drama'),(893,'Drama|Thriller|War'),(894,'Documentary|Musical'),(895,'Documentary'),(896,'Drama|Mystery'),(897,'Crime|Drama|Thriller'),(898,'Comedy'),(899,'Crime|Drama|Thriller'),(900,'Drama'),(901,'Adventure|Romance|War|Western'),(902,'Fantasy|Horror'),(903,'Drama'),(904,'Action|Thriller'),(905,'Sci-Fi'),(906,'Documentary'),(907,'Comedy|Drama|Romance'),(908,'Children|Comedy|Fantasy|Romance'),(909,'Drama'),(910,'Horror|Thriller'),(911,'Documentary|Musical'),(912,'Musical|Romance'),(913,'Drama'),(914,'Drama'),(915,'Musical|Romance'),(916,'Drama|Thriller'),(917,'Comedy'),(918,'Adventure|Children|Drama'),(919,'Adventure|Children'),(920,'Drama|Romance'),(921,'Drama'),(922,'Drama'),(923,'Drama'),(924,'Horror'),(925,'Horror'),(926,'Drama'),(927,'Comedy|Crime'),(928,'Action|Thriller'),(929,'Action|Crime|Drama|Thriller'),(930,'Drama'),(931,'Drama|War'),(932,'Thriller'),(933,'Drama|Mystery|Sci-Fi|Thriller'),(934,'Comedy|Drama'),(935,'Crime|Drama'),(936,'Drama|Romance'),(937,'Drama'),(938,'Drama'),(939,'Documentary'),(940,'Crime|Drama|Thriller'),(941,'Drama'),(942,'Adventure|Children'),(943,'Action|Crime|Drama'),(944,'Drama'),(945,'Comedy'),(946,'Comedy'),(947,'Action|Crime|Drama'),(948,'Horror|Sci-Fi|Thriller'),(949,'Horror|Thriller'),(950,'Drama|War'),(951,'Drama'),(952,'Drama|War|Western'),(953,'Drama'),(954,'Comedy'),(955,'Horror'),(956,'Drama|Romance'),(957,'Action|Comedy|Crime'),(958,'Drama'),(959,'Crime|Drama'),(960,'Comedy'),(961,'Drama'),(962,'Drama|Romance'),(963,'Drama|War'),(964,'Drama|Sci-Fi|Thriller'),(965,'Horror'),(966,'Comedy'),(967,'Action|Crime'),(968,'Drama'),(969,'Horror'),(970,'Action|Comedy|Crime'),(971,'Comedy'),(972,'Comedy'),(973,'Documentary'),(974,'Comedy|Crime|Drama'),(975,'Comedy|Drama'),(976,'Adventure|Comedy|Drama'),(977,'Horror|Romance'),(978,'Action|Sci-Fi|Thriller'),(979,'Crime|Drama|Thriller'),(980,'Comedy|Crime'),(981,'Animation|Children|Comedy'),(982,'Drama'),(983,'Comedy'),(984,'Drama'),(985,'Drama'),(986,'Comedy|Drama'),(987,'Action|Drama'),(988,'Drama'),(989,'Horror|Sci-Fi'),(990,'Action'),(991,'Crime|Film-Noir'),(992,'Comedy|Drama'),(993,'Documentary'),(994,'Comedy|Romance'),(995,'Comedy|Drama|Romance'),(996,'Children|Fantasy|Musical|Romance'),(997,'Action|Comedy'),(998,'Drama'),(999,'Action|Drama'),(1000,'Comedy|Drama|Romance');
/*!40000 ALTER TABLE `tematica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,'zona verde'),(2,'zona azul'),(3,'zona amarilla'),(4,'zona roja');
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'biblioteca'
--

--
-- Dumping routines for database 'biblioteca'
--
/*!50003 DROP FUNCTION IF EXISTS `buscar_autor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `buscar_autor`(clave int) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE nombre_encontrado VARCHAR (20);
SET nombre_encontrado="inexistente";
SELECT autor.nombre into nombre_encontrado FROM autor WHERE autor.id=clave;
RETURN nombre_encontrado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `edad`(fecha DATE) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE edad int;
SET edad=YEAR(NOW()) - YEAR(fecha);
RETURN edad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `rango_edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `rango_edad`(edad int) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE rango VARCHAR (20);
SET rango="";
CASE 
WHEN edad <=30 THEN RETURN "menor de 30";
WHEN edad >30 AND edad <60 THEN RETURN "entre 30 y 60";
WHEN edad >60 THEN RETURN "mayor a 60";
END CASE;
RETURN rango;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminar_autor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar_autor`(IN id_eliminar int)
BEGIN
 DELETE FROM autor WHERE autor.id=id_eliminar;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ordenar_autores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenar_autores`(IN campo char(20))
BEGIN
if campo<>' ' then
  SET  @orden= CONCAT ('ORDER BY ', campo);
  ELSE 
    SET @orden=' ';
 END IF;
 
 SET @clausula= CONCAT ('SELECT * FROM autor ', @orden );
 PREPARE runSQL FROM @clausula;
 EXECUTE runSQL;
 DEALLOCATE PREPARE runSQL;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `autores_argentinos`
--

/*!50001 DROP VIEW IF EXISTS `autores_argentinos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `autores_argentinos` AS (select `a`.`nombre` AS `nombre`,`a`.`apellido` AS `apellido` from (`autor` `a` join `nacionalidad` `n` on((`a`.`id_nacionalidad` = '2')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `autores_nacionalidad`
--

/*!50001 DROP VIEW IF EXISTS `autores_nacionalidad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `autores_nacionalidad` AS (select `a`.`nombre` AS `nombre` from (`autor` `a` join `nacionalidad` `n` on((`a`.`id_nacionalidad` = `n`.`id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ejemplar_perdidos`
--

/*!50001 DROP VIEW IF EXISTS `ejemplar_perdidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ejemplar_perdidos` AS (select `ejemplar`.`id` AS `id`,`ejemplar`.`id_libro` AS `id_libro`,`ejemplar`.`id_ubicacion` AS `id_ubicacion`,`ejemplar`.`estado` AS `estado` from `ejemplar` where (`ejemplar`.`estado` like 'perdido')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21  9:35:21
