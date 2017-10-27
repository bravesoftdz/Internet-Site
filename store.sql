-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `idcomponent` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `required` tinyint(4) NOT NULL,
  PRIMARY KEY (`idcomponent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
INSERT INTO `component` VALUES (1,'Процессор',1),(2,'Охлаждение',0),(3,'Материнская плата',1),(4,'Оперативная память',1),(5,'ЖЁСТКИЙ ДИСК',1),(6,'Твердотельный накопитель (SSD)',0),(7,'Видео-карта',0),(8,'Оптический привод',0),(9,'Кард-ридер',0),(10,'Беспроводная связь',0),(11,'Корпус',0),(12,'Блок питания',1),(13,'Операционная система',0);
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `idconfiguration` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `col1` int(11) NOT NULL,
  `col2` int(11) NOT NULL,
  `col3` int(11) NOT NULL,
  `col4` int(11) NOT NULL,
  `col5` int(11) NOT NULL,
  `col6` int(11) NOT NULL,
  `col7` int(11) NOT NULL,
  `col8` int(11) NOT NULL,
  `col9` int(11) NOT NULL,
  `col10` int(11) NOT NULL,
  `col11` int(11) NOT NULL,
  `col12` int(11) NOT NULL,
  `col13` int(11) NOT NULL,
  `sum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idconfiguration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'Офисный \"Эконом\"',101,200,301,401,503,600,700,800,900,1000,1101,1202,1302,9999),(1234,'test',103,203,303,403,503,603,702,803,901,1001,1103,1203,1302,124620);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `element` (
  `idelement` int(11) NOT NULL,
  `description` varchar(90) NOT NULL,
  `price` int(11) NOT NULL,
  `component` varchar(45) NOT NULL,
  PRIMARY KEY (`idelement`),
  KEY `id_idx` (`component`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element`
--

LOCK TABLES `element` WRITE;
/*!40000 ALTER TABLE `element` DISABLE KEYS */;
INSERT INTO `element` VALUES (100,'Процессор',0,'Процессор'),(101,'Intel Celeron J1800 2410 МГц',1920,'Процессор'),(102,'Intel Pentium G4400 Skylake 3300 МГц s1151',3520,'Процессор'),(103,'Intel Core i3-7100 Kaby Lake 3900 МГц s1151',7560,'Процессор'),(200,'Охлаждение',0,'Охлаждение'),(201,'Intel E41759-002',240,'Охлаждение'),(202,'AMD DK9-9ID2A-0L-GP 65 Вт',240,'Охлаждение'),(203,'AMD DK9-9ID2A-0L-GP 95 Вт',400,'Охлаждение'),(300,'Материнская плата',0,'Материнская плата'),(301,'Intel Bay Trail-D mITX',1930,'Материнская плата'),(302,'H61 mATX s1155',2990,'Материнская плата'),(303,'H81 mATX s1150',3090,'Материнская плата'),(400,'Оперативная память',0,'Оперативная память'),(401,'2 Гб DDR3 1600МГц',930,'Оперативная память'),(402,'4 Гб DDR3 1600МГц',2180,'Оперативная память'),(403,'8 Гб DDR3 1600МГц',4170,'Оперативная память'),(500,'ЖЁСТКИЙ ДИСК',0,'ЖЁСТКИЙ ДИСК'),(501,'250 Гб 7200 rpm',2600,'ЖЁСТКИЙ ДИСК'),(502,'320 Гб 7200 rpm',2650,'ЖЁСТКИЙ ДИСК'),(503,'500 Гб 7200 rpm',2700,'ЖЁСТКИЙ ДИСК'),(600,'Твердотельный накопитель (SSD)',0,'Твердотельный накопитель (SSD)'),(601,'60 Гб SSD',2740,'Твердотельный накопитель (SSD)'),(602,'120 Гб SSD',3670,'Твердотельный накопитель (SSD)'),(603,'240 Гб SSD',5620,'Твердотельный накопитель (SSD)'),(700,'Видео-карта',0,'Видео-карта'),(701,'NVIDIA GeForce GT 610 1 Гб',1870,'Видео-карта'),(702,'NVIDIA GeForce GT 610 2 Гб',2200,'Видео-карта'),(703,'ASUS GeForce GTX 1050 Ti 4 Гб EX',1160,'Видео-карта'),(800,'Оптический привод',0,'Оптический привод'),(801,'DVD-RW',900,'Оптический привод'),(802,'Blu-Ray',4230,'Оптический привод'),(803,'Blu-Ray RW',5530,'Оптический привод'),(900,'Кард-ридер',0,'Кард-ридер'),(901,'Card Reader (all-in-1)',450,'Кард-ридер'),(1000,'Беспроводная связь',0,'Беспроводная связь'),(1001,'Wi-Fi адаптер 300 Мбит/с',800,'Беспроводная связь'),(1100,'Корпус',0,'Корпус'),(1101,'CROWN mATX CMC-400 Black',800,'Корпус'),(1102,'DEEPCOOL mATX FRAME Black',1560,'Корпус'),(1103,'NZXT ATX H440 White',8440,'Корпус'),(1200,'Блок питания',0,'Блок питания'),(1201,'БП 300 Вт',1100,'Блок питания'),(1202,'БП 500 Вт',1650,'Блок питания'),(1203,'БП 1000 Вт',20060,'Блок питания'),(1300,'Операционная система',0,'Операционная система'),(1301,'Windows 10 PRO',8700,'Операционная система'),(1302,'Windows 7 PRO',9890,'Операционная система'),(1303,'Windows 10 HOME',6130,'Операционная система');
/*!40000 ALTER TABLE `element` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-25 10:31:00
