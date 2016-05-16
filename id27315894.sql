CREATE DATABASE  IF NOT EXISTS `id27315894` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `id27315894`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: id27315894
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `foodid` int(11) NOT NULL,
  `foodname` varchar(45) NOT NULL,
  `foodfat` varchar(45) NOT NULL,
  `foodserving` varchar(45) NOT NULL,
  `foodcol` varchar(45) NOT NULL,
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'Apple butter','0','1 Tbsp','34'),(2,'Bacon','2','1 slice','32'),(3,'beef','18','1 med','396'),(4,'Beans,mung','0','1/2 cup','139'),(5,'Beets','0','1/2 cup','37'),(6,'Broccoli','0','1/2 cup','26'),(7,'Butter','4','1 tsp','34'),(8,'chicken,plain','5','1 each','190'),(9,'Carrots','0','1/2 cup','35'),(10,'Celery','0','1/2 cup','13'),(11,'Caviar','3','1Tbsp','40'),(12,'Ricotta','16','1/2 cup','214'),(13,'Mozzarella','7','1 oz','90'),(14,'Coconut milk','51','1 cup','473'),(15,'Oreo','4','2pcs','104'),(16,'Oyster','3','20 pcs','84'),(17,'Croutons','0','1/4 cup','31'),(18,'Friut ice ','0','1/2 cup','124'),(19,'Guacamole','8','1/4 cup','93'),(20,'Honey','0','1 Tbsp','64'),(21,'Kiwi','0','1 med','46'),(22,'Lobster','0','3 oz','83'),(23,'Lime juice','0','1 Tbsp','3'),(24,'Oxtail','13','3 oz','211'),(25,'Parsnips','0','1/2 cup','63'),(26,'Popover','3','1 each','121'),(27,'Quinoa','1','1/2 cup','79'),(28,'Rutabaga','0','1/2 cup','33'),(29,'Sorbet','0','1/2 cup','129'),(30,'Vinegar','0','1 Tbsp','2');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_consumed`
--

DROP TABLE IF EXISTS `food_consumed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_consumed` (
  `consumedid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`consumedid`),
  KEY `userid_idx` (`userid`),
  KEY `foodid_idx` (`foodid`),
  CONSTRAINT `foodid` FOREIGN KEY (`foodid`) REFERENCES `food` (`foodid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_consumed`
--

LOCK TABLES `food_consumed` WRITE;
/*!40000 ALTER TABLE `food_consumed` DISABLE KEYS */;
INSERT INTO `food_consumed` VALUES (1,1,22,'2016-03-28 13:31:35'),(2,2,21,'2016-03-28 13:31:35'),(3,3,23,'2016-03-29 15:15:41'),(4,5,23,'2014-02-12 12:12:12'),(5,5,23,'2014-03-23 12:32:22'),(6,1,2,'2016-03-29 22:25:28'),(7,1,12,'2016-03-29 22:25:44'),(8,2,14,'2016-03-29 22:25:52'),(9,4,4,'2016-03-30 21:41:42'),(10,6,4,'2016-03-30 21:42:08'),(11,1,1,'2016-03-30 21:42:14'),(12,2,3,'2016-03-30 21:42:18'),(13,1,12,'2016-03-30 21:42:28');
/*!40000 ALTER TABLE `food_consumed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `reportid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `calorie_consumed` double DEFAULT NULL,
  `calorie_burned` double DEFAULT NULL,
  `total_steps` double NOT NULL,
  `calorie_set_goal` double DEFAULT NULL,
  `remaining` double DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`reportid`),
  KEY `userid_idx` (`userid`),
  CONSTRAINT `userid1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,1,'Alex',12,23,21212,2323,12,'2016-03-29 00:00:00'),(2,3,'Nick',12,1,213,23,1,'2010-03-08 23:36:42'),(3,4,'Amy',12,21,123,2,2,'2016-03-01 23:36:56'),(4,6,'Castiel',21,12,412,12,3,'2016-03-29 23:37:00'),(5,1,'Alex',21,23,34,24,4,'2011-03-29 23:38:00'),(6,1,'Alex',12,32,243,23,23,'2015-03-29 23:38:32'),(7,1,'Alex',83,2719.9341,12122,21212,-18575.0659,'2016-03-28 00:00:00');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `userage` varchar(45) NOT NULL,
  `userheight` varchar(45) NOT NULL,
  `userweight` varchar(45) NOT NULL,
  `usergender` varchar(45) NOT NULL,
  `levelOfActivity` varchar(45) NOT NULL,
  `stepsPerMile` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Alex','24','170','55','male','3','1900'),(2,'Sam','24','170','76','male','2','1920'),(3,'Nick','23','172','65','male','3','1950'),(4,'Amy','24','165','55','female','2','1870'),(5,'Rebecca','23','170','50','female','3','1910'),(6,'Castiel','22','175','55','male','4','2010'),(7,'Hunter','21','180','77','male','5','2050'),(8,'Nina','26','175','55','female','3','1920');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-31 22:04:03
