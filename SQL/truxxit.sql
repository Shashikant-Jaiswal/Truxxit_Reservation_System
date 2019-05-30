DROP DATABASE truxxit;

CREATE DATABASE  IF NOT EXISTS `truxxit` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `truxxit`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: truxxit
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `card_details`
--

DROP TABLE IF EXISTS `card_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_details` (
  `cust_id` int(11) NOT NULL,
  `card_no` varchar(45) NOT NULL,
  `card_cvv` int(11) NOT NULL,
  `card_expiry` varchar(30) NOT NULL,
  PRIMARY KEY (`cust_id`,`card_no`),
  CONSTRAINT `card_details_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_details`
--

LOCK TABLES `card_details` WRITE;
/*!40000 ALTER TABLE `card_details` DISABLE KEYS */;
INSERT INTO `card_details` VALUES (2,'5114 8139 1910 3083',693,'2018-12'),(4,'5489 0969 4312 2892',664,'2017-12'),(6,'5583 9407 0476 8317',475,'2017-10'),(8,'5515 3828 2375 9450',673,'2019-02'),(10,'5232 0711 9946 1252',520,'2018-10'),(12,'5129 4603 6495 9438',687,'2019-03'),(14,'5521 3729 0183 5910',460,'2018-03'),(16,'5156 9562 6146 1408',124,'2017-12'),(18,'5494 3453 3810 9458',904,'2017-12'),(20,'5351 0758 7354 5756',123,'2018-07'),(22,'5598 4404 1095 7612',161,'2017-06'),(24,'5110 4509 0668 6087',737,'2017-09'),(26,'5425 3472 7270 2409',990,'2017-04'),(28,'5284 9858 2034 0386',139,'2018-07'),(30,'5388 5915 5976 0268',554,'2019-01'),(32,'5241 1546 7782 6094',178,'2017-04'),(34,'5136 9823 2207 5776',278,'2019-02'),(36,'5597 9153 4324 6655',803,'2018-07'),(38,'5545 2283 8978 4198',924,'2017-05'),(40,'5401 8347 5624 3560',705,'2019-03'),(42,'5592 2429 5384 5865',908,'2018-12'),(44,'5314 1254 8645 2431',164,'2017-04'),(46,'5359 1009 2582 3654',857,'2018-05'),(48,'5420 9408 6753 4792',401,'2018-05'),(50,'5130 1281 2200 8874',338,'2019-04'),(51,'5306 2021 3492 1172',383,'2018-11'),(51,'5348 2827 7775 0211',237,'2018-08'),(51,'5489 6866 0464 4026',509,'2018-11'),(52,'5148 6665 3623 9676',457,'2017-06'),(52,'5175 0156 1208 8621',505,'2017-10'),(52,'5269 4183 4167 3613',509,'2018-10'),(53,'5455 1117 6627 3597',618,'2017-11'),(53,'5503 9072 2244 4652',735,'2018-06'),(53,'5583 7947 3760 6873',957,'2018-07'),(54,'5249 3968 0142 2595',761,'2019-02'),(54,'5398 3183 4736 9535',516,'2018-10'),(55,'5561 7989 8072 5518',699,'2018-01'),(56,'5239 5182 0441 4794',254,'2018-04'),(56,'5351 9569 6773 1701',739,'2018-04'),(56,'5482 9394 3935 8875',358,'2017-12'),(56,'5554 7826 1665 6718',717,'2018-08'),(58,'5195 3526 3029 5201',762,'2017-05'),(58,'5446 5208 0961 0247',133,'2017-07'),(58,'5549 8276 4476 2760',184,'2018-11'),(59,'5256 6144 8547 5097',444,'2018-04'),(60,'5113 2702 5889 2167',789,'2017-12'),(60,'5244 3601 7320 4796',294,'2019-01'),(60,'5464 2123 7406 1819',786,'2018-05'),(61,'5105 1315 6540 0021',267,'2017-05'),(61,'5158 6849 7280 7457',833,'2017-08'),(61,'5193 2180 9350 1207',576,'2018-05'),(61,'5202 1952 3155 9124',365,'2018-03'),(61,'5356 9727 9222 7653',606,'2019-01'),(62,'5158 8856 9354 2881',115,'2017-09'),(62,'5485 0420 1225 0820',141,'2017-06'),(63,'5435 3860 7044 3756',988,'2018-12'),(63,'5490 6157 8401 1372',311,'2017-07'),(63,'5583 7461 5741 7314',393,'2017-10'),(64,'5269 4084 5427 6825',731,'2018-06'),(64,'5394 0714 6247 1537',416,'2019-01'),(64,'5556 4272 8418 5446',483,'2019-01'),(65,'5307 2026 9429 1643',848,'2018-11'),(66,'5353 4245 5078 8032',337,'2017-05'),(66,'5366 2370 4731 1449',715,'2017-07'),(68,'5231 5945 3916 2372',499,'2017-10'),(68,'5260 4044 1063 3539',311,'2018-09'),(68,'5380 0253 0040 4429',521,'2017-04'),(68,'5446 0946 0858 4482',598,'2017-06'),(68,'5468 4891 3554 6645',213,'2018-03'),(68,'5565 6103 2815 7344',455,'2017-05'),(69,'5405 6196 4962 1379',534,'2019-03'),(70,'5156 3631 9608 6832',477,'2018-03'),(70,'5234 5729 6098 7878',525,'2018-04'),(70,'5588 2930 9780 6871',195,'2018-11'),(71,'5277 7409 0343 7222',810,'2019-01'),(72,'5158 1410 4270 1764',267,'2018-03'),(72,'5248 7594 0216 7920',716,'2019-01'),(72,'5403 6725 3371 9165',884,'2018-03'),(73,'5168 0640 1636 9731',564,'2018-06'),(73,'5174 5482 9444 0000',197,'2018-03'),(73,'5432 8036 7116 3644',705,'2019-02'),(73,'5566 8467 4172 2228',244,'2017-12'),(74,'5243 5669 1619 2012',593,'2018-05'),(74,'5355 8885 2157 4028',718,'2018-02'),(74,'5388 7827 0877 6145',996,'2018-08'),(74,'5409 1672 1314 4614',610,'2017-04'),(75,'5128 7808 6675 3984',766,'2017-05'),(75,'5150 3383 6222 7416',118,'2018-01'),(75,'5381 5583 9954 8762',893,'2017-06'),(75,'5560 3508 4111 6825',402,'2017-05'),(76,'5163 6753 3864 1971',284,'2017-07'),(76,'5450 8836 0088 9474',282,'2017-04'),(77,'5114 6256 2170 3475',349,'2018-07'),(77,'5135 0486 5206 8004',753,'2018-08'),(77,'5373 0454 8058 6315',185,'2018-11'),(78,'5261 7727 8070 7813',134,'2017-10'),(78,'5365 3546 0257 5671',791,'2019-01'),(79,'5391 5892 2505 8633',751,'2019-03'),(79,'5574 0176 2072 6272',565,'2019-03'),(80,'5301 5775 1368 4185',451,'2018-03'),(80,'5405 5524 6659 9248',614,'2018-12'),(80,'5425 0689 0842 4297',194,'2017-05'),(82,'5302 2530 2516 1794',876,'2018-05'),(82,'5394 0588 7136 8438',176,'2018-01'),(83,'5246 5679 4675 2442',874,'2019-04'),(83,'5289 6071 7734 1586',832,'2018-12'),(83,'5552 0374 5534 6935',508,'2017-06'),(83,'5562 9258 4752 8772',782,'2019-04'),(84,'5167 1968 9383 0368',520,'2018-08'),(84,'5175 2017 2638 1694',459,'2017-09'),(84,'5330 1308 9258 9404',165,'2017-11'),(85,'5226 7786 7918 6534',427,'2017-06'),(85,'5256 2093 0759 1823',119,'2017-05'),(86,'5141 4580 4408 3490',887,'2017-04'),(86,'5195 7317 6132 6598',145,'2019-01'),(86,'5308 9296 3843 3456',360,'2017-08'),(86,'5503 2868 5652 6286',543,'2017-12'),(87,'5274 4926 5936 1411',268,'2018-01'),(88,'5113 5652 7934 9646',154,'2019-03'),(88,'5214 5890 2739 7127',693,'2017-05'),(88,'5310 5119 8495 2952',746,'2019-03'),(88,'5365 7644 7264 8103',809,'2017-10'),(89,'5214 5873 9694 5864',889,'2018-05'),(89,'5242 3162 7383 8968',899,'2018-01'),(90,'5152 5350 6718 7070',255,'2017-11'),(90,'5252 3654 9032 0281',977,'2017-10'),(90,'5370 2633 9712 8963',694,'2017-05'),(90,'5497 2193 7490 2067',812,'2017-10'),(91,'5167 6050 0234 3691',413,'2017-07'),(91,'5249 5576 3661 6939',666,'2018-01'),(91,'5324 4778 5269 7752',862,'2017-10'),(92,'5218 8010 8942 7304',813,'2018-09'),(93,'5496 0112 5723 8268',277,'2017-09'),(94,'5447 6642 6985 7929',976,'2017-04'),(94,'5571 4117 2318 7669',417,'2018-04'),(96,'5230 7556 5911 0720',899,'2018-02'),(96,'5235 9836 5345 1834',619,'2018-10'),(97,'5125 8925 4736 6921',956,'2018-02'),(97,'5316 5968 8014 1705',374,'2018-02'),(98,'5205 5534 5940 2145',407,'2019-02'),(98,'5515 7329 2152 2293',265,'2017-06'),(99,'5237 4618 3977 3635',701,'2018-10'),(99,'5318 2642 1187 6303',502,'2018-12'),(99,'5337 8946 1701 5614',177,'2017-05'),(99,'5396 5317 4496 4508',732,'2018-10'),(99,'5398 6554 9341 0435',695,'2017-06'),(100,'5262 9829 9553 2943',238,'2018-04'),(100,'5372 5790 6602 9903',644,'2017-06'),(100,'5491 7436 3383 0666',903,'2018-02'),(100,'5548 6297 2879 9499',165,'2018-01');
/*!40000 ALTER TABLE `card_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `membership_type` varchar(20) NOT NULL DEFAULT 'BRONZE',
  PRIMARY KEY (`cust_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `user` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'BRONZE'),(4,'SILVER'),(6,'GOLD'),(8,'PLATINUM'),(10,'BRONZE'),(12,'SILVER'),(14,'GOLD'),(16,'PLATINUM'),(18,'BRONZE'),(20,'SILVER'),(22,'GOLD'),(24,'PLATINUM'),(26,'BRONZE'),(28,'SILVER'),(30,'GOLD'),(32,'PLATINUM'),(34,'BRONZE'),(36,'SILVER'),(38,'GOLD'),(40,'PLATINUM'),(42,'BRONZE'),(44,'SILVER'),(46,'GOLD'),(48,'PLATINUM'),(50,'BRONZE'),(51,'SILVER'),(52,'GOLD'),(53,'PLATINUM'),(54,'BRONZE'),(55,'SILVER'),(56,'GOLD'),(57,'PLATINUM'),(58,'BRONZE'),(59,'SILVER'),(60,'GOLD'),(61,'PLATINUM'),(62,'BRONZE'),(63,'SILVER'),(64,'GOLD'),(65,'PLATINUM'),(66,'BRONZE'),(67,'SILVER'),(68,'GOLD'),(69,'PLATINUM'),(70,'BRONZE'),(71,'SILVER'),(72,'GOLD'),(73,'PLATINUM'),(74,'BRONZE'),(75,'SILVER'),(76,'GOLD'),(77,'PLATINUM'),(78,'BRONZE'),(79,'SILVER'),(80,'GOLD'),(81,'PLATINUM'),(82,'BRONZE'),(83,'SILVER'),(84,'GOLD'),(85,'PLATINUM'),(86,'BRONZE'),(87,'SILVER'),(88,'GOLD'),(89,'PLATINUM'),(90,'BRONZE'),(91,'SILVER'),(92,'GOLD'),(93,'PLATINUM'),(94,'BRONZE'),(95,'SILVER'),(96,'GOLD'),(97,'PLATINUM'),(98,'BRONZE'),(99,'SILVER'),(100,'GOLD');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `ssn` varchar(20) NOT NULL,
  `license_no` varchar(45) NOT NULL,
  PRIMARY KEY (`driver_id`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `user` (`sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'1644010983899','ASVVTRQWRJeDoJUR'),(3,'1688062068199','ASWSTRQWDJVBIJUR'),(5,'1695080580599','ASPKTRQWyJMCUJUR'),(7,'1614112190499','ASKmTRQWSJj2IJUR'),(9,'1629100453599','ASjhTRQWbJPEUJUR'),(11,'1653072316299','ASusTRQWNJx0uJUR'),(13,'1653110180599','ASzdTRQWcJZEEJUR'),(15,'1673032123999','ASiwTRQWpJh7oJUR'),(17,'1680111936099','ASnDTRQWmJD8iJUR'),(19,'1635060883799','ASAfTRQWDJm6eJUR');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_truck`
--

DROP TABLE IF EXISTS `driver_truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_truck` (
  `driver_id` int(11) NOT NULL,
  `truck_id` int(11) NOT NULL,
  PRIMARY KEY (`driver_id`,`truck_id`),
  KEY `truck_id` (`truck_id`),
  CONSTRAINT `driver_truck_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `driver_truck_ibfk_2` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`truck_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_truck`
--

LOCK TABLES `driver_truck` WRITE;
/*!40000 ALTER TABLE `driver_truck` DISABLE KEYS */;
INSERT INTO `driver_truck` VALUES (1,1),(11,1),(1,2),(11,2),(1,3),(3,3),(5,3),(11,3),(15,3),(1,4),(3,4),(5,4),(7,4),(11,4),(15,4),(17,4),(13,5),(3,6),(9,6),(13,6),(3,7),(5,7),(7,7),(11,7),(17,7),(19,7),(3,8),(9,8),(13,8),(3,9),(5,9),(7,9),(11,9),(13,9),(17,9),(5,10),(7,10),(13,10);
/*!40000 ALTER TABLE `driver_truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_details`
--

DROP TABLE IF EXISTS `plan_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_details` (
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(20) DEFAULT NULL,
  `plan_rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`plan_id`),
  UNIQUE KEY `plan_name` (`plan_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_details`
--

LOCK TABLES `plan_details` WRITE;
/*!40000 ALTER TABLE `plan_details` DISABLE KEYS */;
INSERT INTO `plan_details` VALUES (1,'Super Saver',25),(2,'Maximum Benefits',35);
/*!40000 ALTER TABLE `plan_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `truck` (
  `truck_id` int(11) NOT NULL,
  `truck_type` varchar(45) NOT NULL,
  `license_plate_number` varchar(45) NOT NULL,
  PRIMARY KEY (`truck_id`),
  UNIQUE KEY `license_plate_number` (`license_plate_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
INSERT INTO `truck` VALUES (1,'MiniTruck','MHZ8978'),(2,'MiniTruck','UHZ0378'),(3,'MediumTruck','YIC3478'),(4,'MediumTruck','JHD5648'),(5,'HeavyTruck','GHT6879'),(6,'HeavyTruck','MHK8978'),(7,'HeavyTruck','UHT0378'),(8,'MediumTruck','YYC3478'),(9,'MediumTruck','JID5648'),(10,'HeavyTruck','GPT6879');
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `sys_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `acc_created_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sys_id`),
  CONSTRAINT constraint_unique_email_id UNIQUE (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

create unique index idx_unique_login_id ON `user`(login_id);
--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'N2M4H2','Vivien','Holman','dictum.placerat.augue@diamnuncullamcorper.com','EAY27JGF8YV','Ap #560-8398 Odio. Street','Rueil-Malmaison','Île-de-France','5451','2016-09-06','Male','2018-04-06 14:56:25'),(2,'C1I2S6','Britanney','Potter','eget@non.co.uk','JLA25FVF3XK','Ap #823-8656 Duis Av.','Boston','MA','29358-421','2004-05-31','Male','2018-04-06 14:56:25'),(3,'F8V2Y9','Constance','Barnett','semper@eratvitae.net','LGF51JZA2NH','P.O. Box 643, 2380 Vestibulum Rd.','Zandhoven','Antwerpen','T8R 3M2','2006-07-18','Female','2018-04-06 14:56:25'),(4,'C0Z8N5','Wing','Rodgers','pede@Aenean.ca','SPZ98SVB2VC','P.O. Box 603, 3169 Nunc Avenue','Berlin','Berlin','24745','1999-10-28','Female','2018-04-06 14:56:25'),(5,'I2T0J7','Aubrey','Morris','turpis@Morbinonsapien.net','AGL19RZA7WB','892-4043 Sociis St.','Speyer','Rhineland-Palatinate','739554','2016-06-23','Female','2018-04-06 14:56:25'),(6,'D7H4O4','Sylvia','Goodwin','Sed@magnaUt.com','DOC71IAH7OA','Ap #545-4667 Integer St.','Tresigallo','ERM','AJ4F 2GZ','2008-10-03','Male','2018-04-06 14:56:25'),(7,'Q2K1K2','Genevieve','Kramer','turpis@ligulaNullam.com','NHY71CWS1JB','P.O. Box 225, 1427 Pharetra Avenue','Berlin','Berlin','4015','1991-03-21','Male','2018-04-06 14:56:26'),(8,'W0G4V1','Athena','Perkins','tristique.neque@Sednunc.ca','MQG72WAD1DD','Ap #769-2053 Metus Road','Columbia','MD','25-671','2000-11-15','Female','2018-04-06 14:56:26'),(9,'R1N1Z2','Madison','Boone','dictum.ultricies@dignissim.com','MPF96PEZ4WW','P.O. Box 692, 9205 Vitae Av.','San Pedro','Metropolitana de Santiago','21010','2012-08-27','Female','2018-04-06 14:56:26'),(10,'M4L5Q0','Alice','Sweet','Morbi.metus.Vivamus@euismodin.net','KAA59GWI8XI','5886 Congue, Av.','Ovalle','Coquimbo','40505','2013-06-08','Male','2018-04-06 14:56:26'),(11,'I4L0S0','Nyssa','Head','interdum@arcu.net','AGV27XVB9AJ','931-1066 Urna Avenue','Broken Hill','New South Wales','34018-410','2014-05-27','Female','2018-04-06 14:56:26'),(12,'O2Z8X8','Kai','Mason','leo.Vivamus.nibh@mauris.org','OFD23BNJ8JX','P.O. Box 909, 8566 Orci. Street','Veere','Zl','2318','1996-06-05','Female','2018-04-06 14:56:26'),(13,'B0D2T5','Zelenia','Hammond','id@at.co.uk','BXJ28NVK3LF','250-2030 In Avenue','Okene','Kogi','P7H 6GM','2013-05-30','Female','2018-04-06 14:56:26'),(14,'E6H3C0','Wallace','Mcknight','placerat.velit.Quisque@mi.co.uk','SZY20MIF4NM','7732 Tortor. Road','Cerrillos','RM','4072','2017-09-02','Male','2018-04-06 14:56:26'),(15,'L1L9Z1','Fallon','Ratliff','ac@nibh.edu','XKE30ISK4WN','Ap #807-5077 Aliquam Avenue','Norderstedt','SH','J1Y 6S5','2009-07-15','Male','2018-04-06 14:56:26'),(16,'U7W8E8','Azalia','Battle','cursus.Integer@lacusQuisquepurus.ca','MTR11YCW8ZC','6540 Purus Rd.','Beho','LX','71874-915','1999-01-31','Female','2018-04-06 14:56:26'),(17,'D7K2E9','Britanni','Snyder','porta@sedleo.com','RRX42EDT9SX','P.O. Box 967, 5732 Conubia Avenue','Parauapebas','PA','24943','1990-09-14','Female','2018-04-06 14:56:26'),(18,'W1O5R3','Jorden','Cameron','Duis@malesuadamalesuada.edu','JGM47YPI2IR','P.O. Box 376, 2904 Nam Rd.','Tokoroa','North Island','2836','2000-11-19','Female','2018-04-06 14:56:26'),(19,'O4C3X4','Malachi','Short','elit@Quisquepurussapien.ca','HAN99LEX5OA','P.O. Box 250, 6522 Quis, Road','Quilicura','RM','59007','1997-08-30','Female','2018-04-06 14:56:26'),(20,'P1A7N5','Hammett','Kidd','at@etultricesposuere.org','KLW25HZS3GH','6019 Lacinia St.','Flushing','Zl','32383','2002-03-31','Male','2018-04-06 14:56:26'),(21,'K1B1Z5','Quemby','Fuentes','lorem.sit.amet@hendrerit.org','ANP14HAA5FM','Ap #933-7875 Enim. Rd.','San José de Alajuela','A','20512','2005-02-01','Male','2018-04-06 14:56:26'),(22,'G8Q0L3','Nomlanga','Mason','tristique.neque.venenatis@pharetraQuisqueac.com','HUV82NAD0UX','566-1741 Consequat St.','Futaleufú','X','809008','2013-01-10','Male','2018-04-06 14:56:27'),(23,'R0K4E1','Addison','Hall','Vivamus@orciluctuset.ca','MHT63VUC1EU','165-7214 Tristique Ave','Silvassa','DN','394462','1996-09-15','Male','2018-04-06 14:56:27'),(24,'H1I1M2','Olivia','Norris','Quisque.porttitor@Sed.com','JLU59HBU7KF','Ap #546-9995 Felis St.','Massa e Cozzile','Toscana','41409','2017-09-26','Male','2018-04-06 14:56:27'),(25,'R8Z9E7','Martina','Carr','sapien.Cras@commodo.ca','UCO32RYU0SE','Ap #901-2661 Nec, St.','Prestatyn','FL','37611-388','1998-10-18','Male','2018-04-06 14:56:27'),(26,'V0W6N2','Karly','Ryan','gravida.sagittis.Duis@nisl.org','QZZ69TAR6XW','9467 Netus Rd.','Lang','SK','244775','2012-06-24','Female','2018-04-06 14:56:27'),(27,'X3G3C2','Lilah','Vaughn','vitae.nibh.Donec@nec.org','OOZ47KGM8DF','Ap #362-5164 Ligula. St.','Laken','Brussels Hoofdstedelijk Gewest','00153','1993-06-01','Female','2018-04-06 14:56:27'),(28,'K6P6L1','Aquila','Mann','rhoncus@diamnuncullamcorper.org','BHP30EOP7OZ','P.O. Box 760, 6905 Magna Avenue','Eindhoven','Noord Brabant','8896 PE','1994-10-02','Male','2018-04-06 14:56:27'),(29,'U8D0F2','Baxter','Diaz','penatibus@Quisquetinciduntpede.com','CBR39MHL5PB','162-2736 Eu St.','Peine','Lower Saxony','J4E 4N8','1997-07-16','Male','2018-04-06 14:56:27'),(30,'C3I1M4','Hop','Robbins','hendrerit.Donec.porttitor@felisullamcorperviverra.co.uk','QPV27EJZ4IR','Ap #437-3386 Pede. Street','Colmar','AL','732152','2000-03-28','Female','2018-04-06 14:56:27'),(31,'Y3J5U7','Basia','Sparks','blandit@sedpedeCum.ca','ZBA18GRW4QP','3121 Ullamcorper Ave','Kawartha Lakes','Ontario','503117','2011-01-06','Male','2018-04-06 14:56:27'),(32,'G7H5F7','Rama','Blackwell','nisl.Quisque@sit.com','NIF46OKC3ZE','P.O. Box 822, 1053 Quis Street','Okigwe','Imo','07891','2009-12-31','Male','2018-04-06 14:56:27'),(33,'R5H7K9','Ali','Berg','accumsan.laoreet@quisaccumsanconvallis.com','XXX49GCR1GY','536-2157 Tincidunt Road','Ciudad Real','CM','88711','2012-01-02','Female','2018-04-06 14:56:27'),(34,'Y3P7J3','Penelope','Foster','amet@Nunccommodo.net','EDV48LPB3HK','Ap #411-9317 Proin Street','Estación Central','Metropolitana de Santiago','58480','2013-11-04','Female','2018-04-06 14:56:27'),(35,'R8U5N0','Blake','Coleman','risus.Donec@vitae.com','DVQ02XYK8UU','Ap #536-856 Tincidunt, Road','Whithorn','Wigtownshire','40500','2016-12-10','Female','2018-04-06 14:56:27'),(36,'F1N0Y5','Sharon','Dean','Proin.dolor@Cras.com','PEW27QYI8RE','858-6372 Dui Rd.','Mauá','SP','475670','1994-09-17','Male','2018-04-06 14:56:28'),(37,'H6O3P9','Noah','Padilla','id.risus@eget.co.uk','YZO57THT3CR','P.O. Box 444, 3353 Massa. Rd.','Hamburg','Hamburg','11930','2004-10-06','Female','2018-04-06 14:56:28'),(38,'L1J9U2','Vielka','Short','erat@necimperdiet.ca','RFD44MFJ3ER','Ap #592-2240 Mi St.','Milwaukee','Wisconsin','1024','2014-09-05','Female','2018-04-06 14:56:28'),(39,'P2X5C6','Shana','Riddle','Vestibulum.accumsan@ligulatortor.edu','OYG55YCR2NY','Ap #427-7305 Ipsum. Av.','Bonneville','NA','1381','1995-11-05','Female','2018-04-06 14:56:28'),(40,'X3P9B5','Ashely','Ayala','mauris@egetmetuseu.edu','CTN60JOU0RT','P.O. Box 581, 1859 Ante St.','Valley East','ON','7622 VN','2001-09-12','Male','2018-04-06 14:56:28'),(41,'X7G1F6','Ava','Barnett','est.Nunc.ullamcorper@pellentesque.net','MMR06DZP2RZ','888-1798 Proin Rd.','Portland','Oregon','358078','2010-11-04','Female','2018-04-06 14:56:28'),(42,'W1Y6S3','Shafira','Briggs','Curae@Suspendissealiquetsem.ca','YNU38KZP7QD','2070 Sem Street','Vichte','West-Vlaanderen','K6 0XH','1990-06-24','Male','2018-04-06 14:56:28'),(43,'Y2K6E7','Upton','Villarreal','sed.libero.Proin@venenatislacusEtiam.net','QAB03ZLD6QI','P.O. Box 376, 1908 A, Av.','Saint-Prime','Quebec','06514-333','2013-08-16','Male','2018-04-06 14:56:28'),(44,'G0B1Z4','William','Kent','bibendum.ullamcorper@leo.com','VFK27OMX1RX','861-8571 Vitae, Av.','Felixstowe','Suffolk','9038','2012-09-20','Male','2018-04-06 14:56:28'),(45,'A4G2Q6','Amena','Everett','tincidunt.congue@tellusPhaselluselit.org','HKG03ISO9GY','195-3325 In Ave','Vienna','Vienna','69266','2005-01-27','Female','2018-04-06 14:56:28'),(46,'B4I7J9','Lillian','Pickett','tincidunt.aliquam@dignissimlacusAliquam.net','TGW12BGW9QI','260-9875 Et Rd.','De Klinge','Oost-Vlaanderen','67344','2003-05-16','Female','2018-04-06 14:56:28'),(47,'O5P6Y6','Erasmus','Rogers','est@dolorQuisque.ca','EJI42QZC6KJ','126 Cursus Road','Radicofani','Toscana','67730','2004-11-16','Female','2018-04-06 14:56:28'),(48,'E1L5K2','Quon','Mcdonald','enim@mollisnon.org','JFG80LBZ0KX','949-3089 Accumsan Av.','Pukekohe','North Island','868396','2014-09-04','Male','2018-04-06 14:56:29'),(49,'K4H9W9','Reese','Pace','ornare.egestas@ultricesiaculis.edu','BVM97UQP1BY','Ap #655-3858 Et Ave','Pickering','Ontario','4777','2015-01-07','Male','2018-04-06 14:56:29'),(50,'T3Z0P2','Colorado','Hood','amet@Aeneaneuismodmauris.ca','BXV09AWX6JO','575-4667 Tempor Street','Wageningen','Gelderland','285832','2011-04-10','Male','2018-04-06 14:56:29'),(51,'U3F4T2','Emerson','Clarke','ipsum@diamnunc.edu','YGS61YSI4ZW','Ap #999-4879 Mauris Rd.','Des Moines','IA','696685','1990-09-22','Female','2018-04-06 14:56:29'),(52,'N0P9N0','Connor','Harding','eleifend@ante.net','QBZ31PJH6SU','P.O. Box 706, 5428 Urna Rd.','Castelvecchio Calvisio','Abruzzo','70550','1990-01-01','Male','2018-04-06 14:56:29'),(53,'U8S6Q3','Ingrid','Briggs','erat.neque.non@mi.co.uk','VTZ73GJW9UZ','7437 Lacus. Avenue','Bremerhaven','Bremen','5655','2010-12-13','Male','2018-04-06 14:56:29'),(54,'C6K5L3','Gabriel','Little','turpis.In@ultrices.net','ITS36QPY8GD','Ap #852-5361 Mauris Road','Ulloa (Barrial)','H','BO8 3ZE','2008-12-16','Female','2018-04-06 14:56:29'),(55,'B9C1E4','Kevin','James','Phasellus.libero@iaculisneceleifend.org','LDY33ZWI7IB','P.O. Box 223, 3116 Enim. Street','Whittlesey','Cambridgeshire','32651-592','1994-06-15','Female','2018-04-06 14:56:29'),(56,'U4Y3V5','Ian','Sargent','molestie.pharetra.nibh@Vivamusmolestie.co.uk','EHP99TRU5YM','Ap #916-5744 Risus Av.','Turrialba','C','33603','2005-02-18','Male','2018-04-06 14:56:29'),(57,'E8K9B5','Janna','Glenn','Pellentesque.tincidunt@maurisut.net','LNX92YXR5IN','8102 Lobortis. St.','Caloundra','Queensland','P36 7BI','2011-12-25','Male','2018-04-06 14:56:29'),(58,'X0V6P7','Sydney','Wallace','Donec.nibh@nequesedsem.edu','SMC48YUS8OX','159-8231 Elit. Av.','Llangefni','AG','A2L 3QF','1995-08-08','Female','2018-04-06 14:56:29'),(59,'D5L0Y4','Pearl','Walton','Donec@ultriciesadipiscing.com','CIZ73QIY4MI','991-1653 Sit Av.','Birmingham','Alabama','50114','2012-02-18','Male','2018-04-06 14:56:29'),(60,'O4O0O7','Kasimir','Richardson','et.rutrum.eu@enim.co.uk','FUS14ADZ3YH','P.O. Box 535, 5896 Mauris Avenue','Elversele','Oost-Vlaanderen','31315','1999-11-19','Female','2018-04-06 14:56:29'),(61,'D9R6I0','Fritz','Kirkland','nec@nonsollicitudin.co.uk','BOG89ZYR8LU','901-942 Tempus, Street','Oxford','OX','42-968','1994-05-25','Male','2018-04-06 14:56:30'),(62,'J4T1A7','Inez','Carter','amet.faucibus.ut@nonmagnaNam.ca','TBM09IDV8UA','341-9831 Nullam Street','Bursa','Bursa','969271','1998-08-04','Female','2018-04-06 14:56:30'),(63,'Q1Q6U4','Zena','Lawson','ultricies.ligula@semconsequatnec.edu','XMD88KRQ1KQ','Ap #433-6064 Magna. Street','Awka','Anambra','02358','1999-07-16','Male','2018-04-06 14:56:30'),(64,'K6K7D4','Gavin','Cannon','Nullam@eu.co.uk','SCL02GCF2OS','Ap #417-1424 Quis St.','Avesta','W','X1P 0N1','2007-11-10','Male','2018-04-06 14:56:30'),(65,'J7Q3D9','Pamela','Clayton','tincidunt@imperdietdictum.com','BAC85XMN7NW','8025 Mi Rd.','Bendigo','VIC','12991','1990-07-22','Male','2018-04-06 14:56:30'),(66,'T7J5A3','Keith','Ray','mi.felis.adipiscing@volutpatornare.ca','FLY02MNN7XJ','Ap #917-270 Nulla Road','Vienna','Vienna','45330','2012-06-30','Male','2018-04-06 14:56:30'),(67,'J3D7M6','Imelda','Blanchard','non@Pellentesquehabitant.co.uk','MLI14TFN1NB','7614 Magna Street','Vienna','Wie','400429','2000-06-21','Female','2018-04-06 14:56:30'),(68,'X6S9L0','Zephr','Sheppard','tempus@lectuspede.co.uk','UJC48FLP0WB','Ap #641-4776 Nunc Road','Cholet','Pays de la Loire','B1S 8J0','2004-12-27','Female','2018-04-06 14:56:30'),(69,'I3V6X5','Cathleen','Oneill','erat.nonummy@nonhendrerit.com','YXL94CMI9WB','652-125 Integer Avenue','Penco','Biobío','60701','2010-01-10','Female','2018-04-06 14:56:30'),(70,'D5G5Z2','Cruz','Barton','a@Maurisblandit.org','GDC59FIZ1DW','341-1034 Faucibus. St.','Denver','Colorado','54997','2006-08-31','Female','2018-04-06 14:56:30'),(71,'V7I9N2','Sonya','Davidson','ac.sem@blanditmattisCras.net','ILN97NBP7VR','P.O. Box 582, 440 Sed, Rd.','Koszalin','Zachodniopomorskie','314452','2004-02-02','Female','2018-04-06 14:56:30'),(72,'C3S3L1','Jana','Martin','ligula@nisimagnased.ca','VOF03UFW3ZX','Ap #920-4217 Vulputate Ave','Hulshout','AN','79525-906','2016-05-28','Female','2018-04-06 14:56:30'),(73,'J4R0X3','Robert','Romero','lobortis.mauris.Suspendisse@feugiatSednec.edu','RZV30OQM4CZ','873 Sem St.','Kusadasi','Aydin','LY79 4NL','1993-12-21','Female','2018-04-06 14:56:31'),(74,'X5B2Z4','Sean','Gentry','In.ornare@PhasellusnullaInteger.ca','NYQ40BTN8XR','3426 Sodales Street','Winchester','Hampshire','32-740','2003-03-16','Male','2018-04-06 14:56:31'),(75,'E0L0O7','Kaden','Douglas','mauris.Integer.sem@non.net','RIU40NUM0FD','1914 Sapien. Road','Belford Roxo','RJ','20301','2002-08-02','Female','2018-04-06 14:56:31'),(76,'S8K0E6','Flynn','Kaufman','lobortis@ipsumnunc.org','JXY56IPA6ZU','542-3275 Eu, St.','Santa Flavia','SIC','14533','2008-05-14','Male','2018-04-06 14:56:31'),(77,'F1H9R7','Garrett','Parker','et.rutrum@nunc.com','IZE51GCN6VY','P.O. Box 417, 9963 Etiam Av.','Acquafredda','Lombardia','36144','1993-10-16','Male','2018-04-06 14:56:31'),(78,'F4L2Y2','Bryar','Olsen','Etiam.imperdiet.dictum@eutellusPhasellus.ca','SGN48IGB7NH','P.O. Box 415, 448 Nulla Ave','Åkersberga','Stockholms län','31925','2004-02-20','Male','2018-04-06 14:56:31'),(79,'U7S4W0','Nasim','Boone','consectetuer.cursus@feugiattellus.org','UYS72HWY1NS','604-3173 Eget Rd.','Providencia','Metropolitana de Santiago','15-817','2012-10-13','Male','2018-04-06 14:56:31'),(80,'X6R1D5','Kaitlin','Hampton','id.nunc@AeneanmassaInteger.net','GLG23FOA8KT','P.O. Box 100, 9209 Ultrices Street','Nässjö','Jönköpings län','31756','1999-02-24','Female','2018-04-06 14:56:31'),(81,'C2J3Y3','Alexandra','Burks','ac@et.com','IBN75QSP2PH','Ap #379-5855 Malesuada Rd.','San Antonio','SJ','458469','1995-12-31','Male','2018-04-06 14:56:31'),(82,'T6Y6N0','Chaim','Todd','neque.Sed@consectetuercursuset.org','QIH68INC9MQ','Ap #325-143 Facilisis. St.','Goes','Zl','479861','2009-12-05','Female','2018-04-06 14:56:31'),(83,'O4N6V7','Edan','Contreras','purus.gravida.sagittis@velfaucibus.com','TQY68TNE0VB','845-5737 Dolor Av.','Lige','Luik','99799','2014-02-01','Female','2018-04-06 14:56:31'),(84,'D4U9S9','Freya','Camacho','Cum.sociis@adipiscing.org','CEW34VXS0RC','P.O. Box 407, 1216 Enim. Avenue','Polatli','Ankara','2226','2005-09-28','Female','2018-04-06 14:56:31'),(85,'D0C5W2','Chaim','Snyder','elit@ullamcorper.org','NEG73JNY0JJ','404-4131 Vestibulum Ave','Saharanpur','Uttar Pradesh','80273','2011-05-17','Female','2018-04-06 14:56:31'),(86,'C9M4X9','Cally','Rose','dui.Fusce.aliquam@Aliquamtinciduntnunc.co.uk','OYJ46FUC3RJ','3462 Nunc, Street','Dublin','Leinster','0076','1994-07-29','Male','2018-04-06 14:56:32'),(87,'S4B9X4','Shea','Henderson','Vivamus@Innec.edu','GNR40PQU4XC','844 Erat Avenue','San Diego','CA','ZS2 0CF','2011-12-22','Female','2018-04-06 14:56:32'),(88,'S3D2D5','Plato','Gilmore','nisl@Aliquamrutrum.edu','GKO75WDL3SY','P.O. Box 851, 4692 Nonummy Rd.','Gougnies','Henegouwen','12898','2017-04-21','Female','2018-04-06 14:56:32'),(89,'W3T3Z6','Elaine','Harris','dictum@velitAliquam.com','YGR15FCD4US','P.O. Box 562, 9429 Mi, Rd.','Davenport','Iowa','988981','1997-02-16','Female','2018-04-06 14:56:32'),(90,'Z2I1D8','Ashely','Gilliam','In@Integereulacus.edu','GUO09DTD9RI','428-8297 Convallis Ave','Vienna','Vienna','25452','1996-09-29','Male','2018-04-06 14:56:32'),(91,'Y8T1R3','Ryan','Foreman','arcu.ac.orci@milaciniamattis.com','XCD33JRZ3YR','457-8410 Metus. Avenue','North Las Vegas','NV','06618-201','1990-02-05','Female','2018-04-06 14:56:32'),(92,'W4U6D4','Maxine','Church','ante.dictum@acsemut.co.uk','GVH84AXF9BC','5592 Euismod Street','Hamilton','ON','406998','1990-07-30','Male','2018-04-06 14:56:32'),(93,'D3U9U2','Blythe','Stanton','purus.Nullam@non.co.uk','QCH08VBQ7FY','5724 Integer Avenue','Dublin','Leinster','H5N 9S3','1995-02-15','Female','2018-04-06 14:56:32'),(94,'J1M4Z0','Sydnee','Drake','Ut@vulputate.edu','NFQ96SFC6QB','644-6107 Velit Avenue','Gresham','Oregon','50342','2017-09-30','Female','2018-04-06 14:56:32'),(95,'R4C1V1','Roanna','Smith','vel.turpis@atvelit.com','GHU89HJH5SM','Ap #497-6827 Ac Road','Helmond','N.','40429-190','1995-11-21','Female','2018-04-06 14:56:32'),(96,'Y9U2F2','Hiram','Petty','at.sem.molestie@urna.com','LFF94TVB8UB','P.O. Box 583, 8596 Malesuada Street','Saint-Louis','AL','70369','2004-05-02','Female','2018-04-06 14:56:33'),(97,'D8T2W6','Ima','Monroe','eu.odio@tellus.net','GBJ51PLF1EF','P.O. Box 204, 747 Elit Av.','Grafton','NSW','4335 AQ','1995-12-21','Female','2018-04-06 14:56:33'),(98,'O5C0I0','Aristotle','Young','aliquet.odio.Etiam@actellus.org','FLN06MKX1DN','P.O. Box 556, 821 Tempus Ave','Sosnowiec','SL','23096','2013-08-02','Male','2018-04-06 14:56:33'),(99,'C4A2L4','Stella','Buchanan','Quisque.porttitor@facilisis.org','QFF60VFI3ZF','646-5150 Mi. Rd.','Millet','Alberta','89315','2016-04-22','Male','2018-04-06 14:56:33'),(100,'I7V1F2','Hamilton','Sweet','ut.erat@sodalesMauris.co.uk','SBM52VNM6LU','7259 Dui. Rd.','Berlin','Berlin','20033','1990-09-20','Male','2018-04-06 14:56:33');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'truxxit'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-24 16:08:11


--
-- Table structure for table `reservation`
--

/* DROP TABLE IF EXISTS `reservation`; */
/* !40101 SET @saved_cs_client     = @@character_set_client */;
/* !40101 SET character_set_client = utf8 */;
/*
CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `toll_amount` int(11) DEFAULT NULL,
  `parking_charge` int(11) DEFAULT NULL,
  `load_size` int(11) DEFAULT NULL,
  `travel_date` date DEFAULT NULL,
  `travel_time` time DEFAULT NULL,
  `estimated_trip_duration` int(11) DEFAULT NULL,
  `actual_trip_duration` int(11) DEFAULT NULL,
  `time_to_load_unload` int(11) DEFAULT NULL,
  `estimated_cost` int(11) DEFAULT NULL,
  `actual_total_cost` int(11) DEFAULT NULL,
  `actual_distance` int(11) DEFAULT NULL,
  `reservation_status` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `source_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `truck_id` (`truck_id`,`driver_id`),
  KEY `cust_id` (`cust_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`truck_id`, `driver_id`) REFERENCES `driver_truck` (`truck_id`, `driver_id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`plan_id`) REFERENCES `plan_details` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


/* ****************************** NEW RESERVATION table ************************************* */

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
 -- `toll_amount` int(11) DEFAULT NULL,
 -- `parking_charge` int(11) DEFAULT NULL,
 -- `load_size` int(11) DEFAULT NULL,
 -- `travel_date` date DEFAULT NULL,
 -- `travel_time` time DEFAULT NULL,
 -- `estimated_trip_duration` int(11) DEFAULT NULL,
 -- `actual_trip_duration` int(11) DEFAULT NULL,
 -- `time_to_load_unload` int(11) DEFAULT NULL,
 -- `estimated_cost` int(11) DEFAULT NULL,
 -- `actual_total_cost` int(11) DEFAULT NULL,
 -- `actual_distance` int(11) DEFAULT NULL,
  `reservation_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `truck_id` (`truck_id`,`driver_id`),
  KEY `cust_id` (`cust_id`),
  KEY `plan_id` (`plan_id`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`truck_id`, `driver_id`) REFERENCES `driver_truck` (`truck_id`, `driver_id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`plan_id`) REFERENCES `plan_details` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


INSERT INTO RESERVATION VALUES (1, 1, 2, 1, 1, 'CHARLOTTE', 'NEW YORK', 'PENDING');
INSERT INTO RESERVATION VALUES (2, 3, 2, 3, 2, 'NEW YORK', 'CHARLOTTE', 'PENDING');
INSERT INTO RESERVATION VALUES (3, 7, 2, 5, 1, 'MIAMI', 'DALLAS', 'PENDING');
INSERT INTO RESERVATION VALUES (4, 9, 2, 7, 2, 'SAN FRANSICO', 'CARY', 'PENDING');
INSERT INTO RESERVATION VALUES (5, 1, 2, 11, 2, 'RALEIGH', 'GREENS BORO', 'PENDING');
INSERT INTO RESERVATION VALUES (6, 9, 2, 13, 2, 'BATHESDA', 'TRENTON', 'PENDING');
INSERT INTO RESERVATION VALUES (7, 3, 2, 15, 1, 'CHICAGO', 'BOSTON', 'PENDING');
INSERT INTO RESERVATION VALUES (8, 9, 2, 17, 1, 'DALLAS', 'MIAMI', 'PENDING');
INSERT INTO RESERVATION VALUES (9, 7, 2, 19, 2, 'RALEIGH', 'GREENS BORO', 'PENDING');


--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;



CREATE TABLE TEMP_TABLE (
sys_id int(11),
lgnid VARCHAR(25),
fname VARCHAR(25),
lname VARCHAR(25),
email VARCHAR(25),
pwd VARCHAR(25),
strt VARCHAR(25),
city VARCHAR(25),
state VARCHAR(25),
zip VARCHAR(25),
dob VARCHAR(25),
sex VARCHAR(25),
membership VARCHAR(25),
cardno VARCHAR(25),
cardcvv VARCHAR(25),
cardexp VARCHAR(25)
);