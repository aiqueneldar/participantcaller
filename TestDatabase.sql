-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: partcaller-dev-1.cxieqhsuon07.eu-west-1.rds.amazonaws.com    Database: PartcallerTest
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Abilities`
--

DROP TABLE IF EXISTS `Abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Abilities` (
  `abilityID` smallint(6) NOT NULL AUTO_INCREMENT,
  `abilityName` varchar(45) NOT NULL,
  `abilityDescription` text NOT NULL,
  PRIMARY KEY (`abilityID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='Here we define abilities.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Abilities`
--

LOCK TABLES `Abilities` WRITE;
/*!40000 ALTER TABLE `Abilities` DISABLE KEYS */;
INSERT INTO `Abilities` VALUES (1,'sit','lectus. Cum sociis natoque penatibus et magnis dis parturient'),(2,'parturient','Duis ac arcu. Nunc mauris. Morbi'),(3,'aliquet','orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,'),(4,'augue','justo. Praesent luctus. Curabitur egestas nunc sed'),(5,'quis','Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent'),(6,'aliquet,','tincidunt vehicula risus. Nulla eget metus eu erat'),(7,'dapibus','in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis.'),(8,'sit','rutrum. Fusce dolor quam, elementum at,'),(9,'id','mollis. Duis sit amet diam eu dolor egestas rhoncus.'),(10,'enim','risus. Donec nibh enim, gravida sit'),(11,'non','ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.'),(12,'malesuada.','molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla'),(13,'egestas','Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam'),(14,'aliquam','ultricies dignissim lacus. Aliquam rutrum lorem'),(15,'erat,','mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus'),(16,'eleifend','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac'),(17,'et','mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris'),(18,'dui.','tempus non, lacinia at, iaculis quis,'),(19,'Fusce','Integer in magna. Phasellus dolor elit, pellentesque a, facilisis'),(20,'eu','In tincidunt congue turpis. In condimentum. Donec at'),(21,'diam.','egestas. Aliquam fringilla cursus purus. Nullam scelerisque'),(22,'scelerisque','luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum.'),(23,'tellus.','tellus sem mollis dui, in sodales elit erat vitae'),(24,'scelerisque','Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus'),(25,'Cum','venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,'),(26,'posuere,','pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id'),(27,'semper','fringilla purus mauris a nunc. In at pede. Cras vulputate velit'),(28,'at','ac nulla. In tincidunt congue turpis. In condimentum. Donec'),(29,'Integer','Pellentesque habitant morbi tristique senectus et'),(30,'quis,','tristique ac, eleifend vitae, erat. Vivamus'),(31,'senectus','tellus non magna. Nam ligula elit, pretium et, rutrum'),(32,'sit','Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus'),(33,'Quisque','justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.'),(34,'vel','nisi. Aenean eget metus. In nec orci. Donec'),(35,'lectus','amet lorem semper auctor. Mauris vel turpis. Aliquam'),(36,'at','ullamcorper viverra. Maecenas iaculis aliquet diam. Sed'),(37,'sollicitudin','malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim'),(38,'sit','blandit enim consequat purus. Maecenas libero'),(39,'Maecenas','adipiscing elit. Curabitur sed tortor. Integer aliquam'),(40,'molestie','id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim'),(41,'dapibus','id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum'),(42,'sollicitudin','ornare lectus justo eu arcu. Morbi sit'),(43,'malesuada.','aliquet. Proin velit. Sed malesuada augue ut lacus.'),(44,'blandit','id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus'),(45,'orci','elit pede, malesuada vel, venenatis vel,'),(46,'porttitor','pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat'),(47,'magnis','a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget,'),(48,'tristique','est, mollis non, cursus non, egestas a, dui.'),(49,'tellus.','a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque'),(50,'Curabitur','aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae'),(51,'Praesent','justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.'),(52,'arcu.','consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus'),(53,'elit,','Donec est. Nunc ullamcorper, velit in aliquet lobortis,'),(54,'dictum.','in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae'),(55,'Aliquam','sed pede nec ante blandit viverra.'),(56,'tellus.','sapien. Nunc pulvinar arcu et pede. Nunc sed orci'),(57,'sit','luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede'),(58,'pharetra','consequat purus. Maecenas libero est, congue a, aliquet'),(59,'fringilla.','Aenean sed pede nec ante blandit viverra.'),(60,'arcu.','aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque'),(61,'faucibus','eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis.'),(62,'lobortis','id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend'),(63,'scelerisque,','velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis'),(64,'quam.','In at pede. Cras vulputate velit eu sem.'),(65,'dapibus','tortor. Integer aliquam adipiscing lacus. Ut'),(66,'vehicula','elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in'),(67,'ipsum','et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.'),(68,'aliquet','Nam interdum enim non nisi. Aenean eget metus. In nec orci.'),(69,'malesuada','Aenean eget metus. In nec orci.'),(70,'purus','tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla'),(71,'mi','urna convallis erat, eget tincidunt dui augue'),(72,'vitae','vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non'),(73,'nonummy','arcu. Vivamus sit amet risus. Donec egestas.'),(74,'vel,','tortor at risus. Nunc ac sem ut dolor dapibus gravida.'),(75,'quam,','sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.'),(76,'tellus.','ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo'),(77,'amet','ante blandit viverra. Donec tempus, lorem fringilla ornare'),(78,'dictum','a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,'),(79,'facilisis','cursus non, egestas a, dui. Cras'),(80,'velit.','condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et'),(81,'semper','elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.'),(82,'nibh.','lacinia orci, consectetuer euismod est arcu'),(83,'Morbi','eu, eleifend nec, malesuada ut, sem.'),(84,'tellus','lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis'),(85,'eu,','ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac,'),(86,'ac,','ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est'),(87,'Donec','ornare, elit elit fermentum risus, at fringilla'),(88,'imperdiet','elit elit fermentum risus, at fringilla purus'),(89,'nec','lobortis risus. In mi pede, nonummy'),(90,'neque','fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris'),(91,'metus','Nulla eget metus eu erat semper rutrum. Fusce'),(92,'ac,','cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris'),(93,'risus.','lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem'),(94,'eu','Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget'),(95,'dui,','nonummy ac, feugiat non, lobortis quis,'),(96,'a,','leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.'),(97,'Nulla','dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque'),(98,'metus.','neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum'),(99,'nascetur','enim diam vel arcu. Curabitur ut odio vel'),(100,'orci.','ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci');
/*!40000 ALTER TABLE `Abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attributes`
--

DROP TABLE IF EXISTS `Attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attributes` (
  `attributeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `attributeName` varchar(45) NOT NULL COMMENT 'Exempelvis:\nNamn\nBeskrivning\nMax Antal Deltagare',
  `parentAttribute` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`attributeID`),
  KEY `fkIdx_162` (`parentAttribute`),
  CONSTRAINT `FK_162` FOREIGN KEY (`parentAttribute`) REFERENCES `Attributes` (`attributeID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='Defines available attributes and hierarchy.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attributes`
--

LOCK TABLES `Attributes` WRITE;
/*!40000 ALTER TABLE `Attributes` DISABLE KEYS */;
INSERT INTO `Attributes` VALUES (1,'mi. Duis risus',NULL),(2,'augue, eu tempor',NULL),(3,'vitae purus gravida',NULL),(4,'ipsum sodales purus,',NULL),(5,'aliquet magna a',NULL),(6,'ullamcorper, velit in',NULL),(7,'sem. Nulla interdum.',NULL),(8,'tincidunt tempus risus.',NULL),(9,'nisi a odio',NULL),(10,'eleifend nec, malesuada',NULL),(11,'elit. Etiam laoreet,',NULL),(12,'ornare, elit elit',NULL),(13,'quam dignissim pharetra.',NULL),(14,'Nunc lectus pede,',NULL),(15,'est tempor bibendum.',NULL),(16,'metus vitae velit',NULL),(17,'erat. Sed nunc',NULL),(18,'non, lacinia at,',NULL),(19,'consequat purus. Maecenas',NULL),(20,'id risus quis',NULL),(21,'magna. Nam ligula',NULL),(22,'metus sit amet',NULL),(23,'id, mollis nec,',NULL),(24,'libero at auctor',NULL),(25,'Nam ac nulla.',NULL),(26,'mi enim, condimentum',NULL),(27,'orci, in consequat',NULL),(28,'tempor, est ac',NULL),(29,'Donec porttitor tellus',NULL),(30,'Quisque nonummy ipsum',NULL),(31,'Cras pellentesque. Sed',NULL),(32,'dolor. Nulla semper',NULL),(33,'Phasellus in felis.',NULL),(34,'consequat nec, mollis',NULL),(35,'tristique pharetra. Quisque',NULL),(36,'elit fermentum risus,',NULL),(37,'dapibus quam quis',NULL),(38,'scelerisque scelerisque dui.',NULL),(39,'arcu. Morbi sit',NULL),(40,'arcu imperdiet ullamcorper.',NULL),(41,'sapien, cursus in,',NULL),(42,'est, vitae sodales',NULL),(43,'tristique aliquet. Phasellus',NULL),(44,'Donec egestas. Duis',NULL),(45,'elit. Nulla facilisi.',NULL),(46,'pede. Nunc sed',NULL),(47,'mauris a nunc.',NULL),(48,'lorem, auctor quis,',NULL),(49,'dui. Cras pellentesque.',NULL),(50,'elit pede, malesuada',NULL),(51,'Nam porttitor scelerisque',NULL),(52,'velit. Cras lorem',NULL),(53,'egestas. Aliquam nec',NULL),(54,'a, aliquet vel,',NULL),(55,'feugiat nec, diam.',NULL),(56,'et magnis dis',NULL),(57,'non lorem vitae',NULL),(58,'amet, consectetuer adipiscing',NULL),(59,'auctor ullamcorper, nisl',NULL),(60,'egestas. Aliquam fringilla',NULL),(61,'ornare, lectus ante',NULL),(62,'Duis at lacus.',NULL),(63,'velit eu sem.',NULL),(64,'vel lectus. Cum',NULL),(65,'venenatis lacus. Etiam',NULL),(66,'Aenean gravida nunc',NULL),(67,'diam vel arcu.',NULL),(68,'ut nisi a',NULL),(69,'orci luctus et',NULL),(70,'nascetur ridiculus mus.',NULL),(71,'ac, fermentum vel,',NULL),(72,'magna tellus faucibus',NULL),(73,'venenatis vel, faucibus',NULL),(74,'tincidunt, neque vitae',NULL),(75,'Proin vel arcu',NULL),(76,'urna et arcu',NULL),(77,'eu enim. Etiam',NULL),(78,'Integer aliquam adipiscing',NULL),(79,'porta elit, a',NULL),(80,'nec urna et',NULL),(81,'lobortis, nisi nibh',NULL),(82,'diam nunc, ullamcorper',NULL),(83,'gravida sit amet,',NULL),(84,'ultricies ornare, elit',NULL),(85,'vitae risus. Duis',NULL),(86,'interdum libero dui',NULL),(87,'laoreet, libero et',NULL),(88,'justo. Proin non',NULL),(89,'lacus pede sagittis',NULL),(90,'tempor bibendum. Donec',NULL),(91,'amet diam eu',NULL),(92,'tellus. Suspendisse sed',NULL),(93,'rutrum urna, nec',NULL),(94,'dolor. Fusce mi',NULL),(95,'Fusce mi lorem,',NULL),(96,'odio, auctor vitae,',NULL),(97,'commodo hendrerit. Donec',NULL),(98,'pede. Praesent eu',NULL),(99,'fermentum risus, at',NULL),(100,'eu nulla at',NULL);
/*!40000 ALTER TABLE `Attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entities`
--

DROP TABLE IF EXISTS `Entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entities` (
  `entityID` bigint(20) NOT NULL AUTO_INCREMENT,
  `entityTypeID` tinyint(4) NOT NULL,
  `parentEntity` bigint(20) DEFAULT NULL,
  `token` varchar(255) NOT NULL COMMENT 'Frslagsvis ett UUID',
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'This need to be updated by all events which the entity is assigned to and any admin action to this entity.',
  `confirmed` tinyint NOT NULL DEFAULT 0
  PRIMARY KEY (`entityID`),
  KEY `fkIdx_20` (`entityTypeID`),
  KEY `fkIdx_23` (`parentEntity`),
  CONSTRAINT `FK_20` FOREIGN KEY (`entityTypeID`) REFERENCES `EntityTypes` (`entityTypeID`),
  CONSTRAINT `FK_23` FOREIGN KEY (`parentEntity`) REFERENCES `Entities` (`entityID`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=latin1 COMMENT='En entity kan exempelvis vara en api, en user, en organisation, ett lag, en telefon, en dator eller vad man n kan tnkas vilja ha i framtiden.\n\nDenna tabell kan d hlla alla typer av entiteter. Man kan ocks hr koppla flera entiteter tilla samma token om man skulle vilja i framtiden. Det skulle kunna vara ett led i att filtrera inlogningar till enbart i frvg godknta enheter eller automatiskt logga in personer p vissa enheter.\n\nMan kan ocks koppla flera tokens till ett lag som i sin tur har en egen token osv. Man kan p detta stt skapa hiriarkier med godtyckligt antal steg eller hlla allt helt platt.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entities`
--

LOCK TABLES `Entities` WRITE;
/*!40000 ALTER TABLE `Entities` DISABLE KEYS */;
INSERT INTO `Entities` VALUES (1,4,NULL,'5715599B-DDF5-0641-02A6-F23B70AF42CA','2018-10-09 10:34:25'),(2,4,NULL,'8BD6F65C-E477-1C54-CCEA-EECA7B24DC3F','2018-11-10 07:23:30'),(3,4,NULL,'973EA62D-51E8-FA9A-128A-3EAA6FB75B8C','2019-06-11 13:31:16'),(4,4,NULL,'825202F0-F5B6-2621-CC77-0C52FFD57908','2020-05-21 09:45:36'),(5,4,NULL,'E237CFAB-6BA0-3527-EC42-4B09774DBBFD','2018-09-12 06:12:57'),(6,4,NULL,'1332A160-B17B-F255-A8B3-B290F9F5ACF5','2018-07-23 12:45:13'),(7,4,NULL,'21CC9E48-85D6-3547-43D3-641E92480075','2018-10-07 17:49:10'),(8,4,NULL,'EEF25C03-AA18-4F5C-EB5D-C192A41C1B93','2020-05-15 14:52:05'),(9,4,NULL,'FA4F6EEC-DFF9-51AD-A3B5-4CD571CCD60E','2018-12-18 21:29:36'),(10,4,NULL,'10CCE65E-63FD-90FD-1551-65C1E290571E','2018-07-07 23:29:26'),(11,4,NULL,'172D53A1-99A6-8813-7E88-47ABB36B6B44','2020-01-24 00:37:22'),(12,4,NULL,'CB2022E9-F34E-40BD-F406-6F47441C8047','2018-06-24 21:28:09'),(13,4,NULL,'C2B1BE69-574F-0FE7-0CDE-37E3273CDECD','2019-09-05 19:12:57'),(14,4,NULL,'DEE03DD1-673D-C9CC-F4BD-36B31B61FC99','2020-01-15 15:52:52'),(15,4,NULL,'E142EBEA-2E67-B8C1-A3F4-AC517C14DC6D','2019-03-24 08:11:02'),(16,4,NULL,'AD505BAF-6B41-2DF2-F110-BAA5F510C5F6','2018-06-13 03:57:29'),(17,4,NULL,'7A3F3B95-CBC5-E14A-2625-016B5B6F0206','2019-03-08 06:33:25'),(18,4,NULL,'6C6527F2-1EB1-336D-059C-B6D20F724102','2018-07-28 05:13:19'),(19,4,NULL,'E16CE543-9E0C-FE3D-B45C-04AAAE0C5B9D','2018-12-08 21:30:35'),(20,4,NULL,'2E6EE70F-F852-C0A7-DF9C-D0EDE914EF15','2019-08-20 03:28:43'),(21,4,NULL,'03912889-6FDA-5731-A928-80374DF7AF71','2019-05-23 22:16:23'),(22,4,NULL,'CC1EA1D1-5C16-9A00-EFCB-62238B3F21BB','2019-12-12 10:10:06'),(23,4,NULL,'02A19453-AC6C-AE43-F12C-C8E2A678E657','2019-08-06 14:16:19'),(24,4,NULL,'DF7D413B-BD15-DA8C-F6CF-FEB0C5F01510','2019-01-13 19:03:46'),(25,4,NULL,'D3A8305B-CDE6-FE7D-7B04-07DC4A8E89D2','2019-10-22 05:57:28'),(26,4,NULL,'623D6C37-9F3D-EA4D-BFF4-082F45F57C4E','2018-07-11 04:24:06'),(27,4,NULL,'64BCF06D-C9C0-F907-8187-5D102B692BDE','2019-10-03 09:24:14'),(28,4,NULL,'9C34669D-93F8-36F6-8073-30AE1B802803','2019-08-05 02:54:38'),(29,4,NULL,'F6D9EE24-F1A6-1401-D36F-9F6BBF4F2A8F','2020-04-08 17:09:03'),(30,4,NULL,'8685F8F0-A260-E595-3908-2378F80FDAB0','2019-07-28 01:46:19'),(31,4,NULL,'DC1F9B00-D4F6-8F9F-ADB3-3F8A3A6159A1','2019-08-23 14:40:50'),(32,4,NULL,'445F0A82-1ED2-5457-7DAB-5FE4AA917D58','2020-04-14 11:59:27'),(33,4,NULL,'E609E963-29C7-20A0-5EB7-9B69A63C28CB','2018-10-26 10:45:00'),(34,4,NULL,'8EFEB0E7-AA81-626D-92B4-B9FA06888B0D','2018-07-27 18:02:28'),(35,4,NULL,'061322B7-E71A-4B7B-D342-3399E0E717F7','2018-08-07 23:10:01'),(36,4,NULL,'F280F5E5-5110-2972-FEAF-E34EBB18AED9','2020-04-03 04:30:03'),(37,4,NULL,'8CB84269-FD2F-E7FE-A8E6-5F3062EEC9BE','2018-07-27 17:06:23'),(38,4,NULL,'FE73B627-3EAF-4897-2F42-63B5F3CDB397','2019-08-25 11:00:22'),(39,4,NULL,'02E19842-2E90-6AE1-FD5B-B8893A7B9AD7','2020-03-21 20:32:42'),(40,4,NULL,'9468520A-BB96-F323-26FC-2CF049A5ED93','2019-08-09 11:00:36'),(41,4,NULL,'94975760-7CD1-BE69-528D-9DA2D7DAB177','2018-06-27 06:40:24'),(42,4,NULL,'7FFFDB59-6E16-CA15-9974-DDD8020D32B3','2019-06-29 15:12:56'),(43,4,NULL,'3E43C86E-A487-178A-A0F2-A3F7EA522CC3','2020-02-08 19:07:33'),(44,4,NULL,'B8D61A56-E269-DFC2-E3FE-3C3872115029','2020-01-03 17:09:09'),(45,4,NULL,'8CB6AA29-7150-D38E-A80A-FAF0C6E24F8C','2018-08-25 01:17:12'),(46,4,NULL,'514D58A6-58F8-F0EB-1F99-9E4B6A215FD9','2019-09-18 22:57:43'),(47,4,NULL,'7F355657-DF33-B504-2C9C-814E667F1666','2019-09-22 21:03:05'),(48,4,NULL,'93303F06-AC39-9F86-7B56-6F6ECCC917D4','2019-10-08 18:03:26'),(49,4,NULL,'D313EB39-3297-7697-ED45-91002A3EEA93','2018-12-05 04:20:09'),(50,4,NULL,'842C42B1-C959-2BFA-9DE2-0345726DB5EA','2019-11-02 02:54:36'),(51,4,NULL,'CE7D1EC3-A463-3AE4-7E15-F0330A0D3E0D','2019-02-24 23:15:09'),(52,4,NULL,'ECB8BDCA-CED9-20B4-1E38-69DBFDEC4E12','2018-08-07 21:11:27'),(53,4,NULL,'3DF4B17C-846C-9EEA-056D-8A8B1FE9D4BD','2018-12-29 00:42:07'),(54,4,NULL,'DFA4EB64-B0E2-C5C7-89A4-220CB9E2C524','2019-05-29 10:41:10'),(55,4,NULL,'E8157C33-C9F2-C71B-EAF5-98E7473890F9','2019-10-30 06:47:33'),(56,4,NULL,'0ECFF314-45AD-1565-E416-3A24930C3BCD','2019-01-24 23:01:19'),(57,4,NULL,'952EDF16-91C0-79D3-A98A-38211910D162','2020-03-25 15:23:36'),(58,4,NULL,'54C6466E-987D-DCD8-6A43-5021546BF8AE','2019-02-06 15:12:51'),(59,4,NULL,'1BBB2639-ACD1-C258-8949-97A8AB2F5DAA','2019-04-19 07:48:53'),(60,4,NULL,'6A84A24F-3CC8-F88A-2907-09F0E59F76A3','2020-03-18 09:16:20'),(61,4,NULL,'3A26A7B0-119A-64E5-151C-765B30A0BFD2','2019-11-22 03:58:07'),(62,4,NULL,'9B86E5A9-FFF0-8CDF-48A6-E3EAB2335D70','2018-11-22 06:43:30'),(63,4,NULL,'92F2A0F6-0056-E8DE-055F-ACB503F8D127','2018-09-22 03:32:56'),(64,4,NULL,'246E46C1-230F-F14B-4671-80B1618ABE67','2019-09-01 06:06:40'),(65,4,NULL,'CCCDB894-F60F-AC86-1606-BA0C09A5E12B','2019-02-11 09:25:49'),(66,4,NULL,'DB6255ED-DC5A-8447-A225-538A564745D7','2018-10-10 18:03:37'),(67,4,NULL,'B591EE71-E697-AD93-237B-D683C9067F12','2019-02-19 08:51:34'),(68,4,NULL,'3CF11147-C0F7-A249-5AE7-65829F1C7B03','2018-09-27 03:33:44'),(69,4,NULL,'5D7A492B-5F32-6C80-733A-213EA3347434','2018-08-05 21:56:38'),(70,4,NULL,'EBF8F48C-9FAE-65A5-743E-5C52E570A773','2019-02-05 02:54:29'),(71,4,NULL,'01ABFD94-8261-7123-4F48-D5DDB02327E8','2018-09-26 11:48:32'),(72,4,NULL,'228DEE89-730D-6411-2DC0-F8B8115C9100','2019-04-01 15:50:07'),(73,4,NULL,'87C3C815-B1CD-6F71-7402-F42258075BD8','2019-04-28 09:39:26'),(74,4,NULL,'FECC8C02-66BC-469C-E47F-9F5548907C49','2020-04-14 04:34:58'),(75,4,NULL,'F2D3F9A5-ECAE-D2E3-3AAE-222178515556','2020-02-19 03:15:24'),(76,4,NULL,'5904426F-A5C3-672C-EBA5-56551AC43CEB','2020-01-11 07:05:31'),(77,4,NULL,'E3702650-B5C7-FED7-85DE-5D6A6AE79557','2019-02-26 18:41:23'),(78,4,NULL,'032BD1E3-8568-2015-86E5-926DDD79C54D','2019-09-07 10:15:25'),(79,4,NULL,'3AC2DED3-6F1E-2359-FB97-5BAFBD862DB1','2019-04-27 14:21:16'),(80,3,NULL,'E1EDCA97-1342-31EA-E290-92BE146043A5','2020-03-06 08:33:51'),(81,4,NULL,'742CAD4F-D463-8DAD-3A5B-CC38023B0692','2018-05-26 05:40:31'),(82,4,NULL,'38A9AB1E-9E82-A254-C13D-C1C6135AB0F7','2019-01-24 22:06:47'),(83,4,NULL,'CD0AC044-F597-3BE6-0AA8-32CC56896AA8','2018-12-27 22:30:53'),(84,4,NULL,'B368945D-954B-F58B-844F-8AB18510A74E','2020-03-25 07:29:52'),(85,4,NULL,'CC097203-52D4-AEAA-AB17-9457BB5F55C1','2018-05-31 21:54:30'),(86,4,NULL,'585570C2-1518-F3F9-9613-F332177B47A2','2018-07-24 01:58:10'),(87,4,NULL,'68009AAD-ED24-FC32-7D60-9619CC555D23','2018-08-19 10:17:47'),(88,4,NULL,'66A3761B-D3C0-5009-B3C5-4AAA0A0CCD71','2020-04-15 07:09:56'),(89,4,NULL,'7C641E3B-3848-5B53-0F06-9D04BD37ECD3','2019-08-26 16:40:20'),(90,4,NULL,'93F39ADE-5285-BA11-2A44-0385F32FFD53','2019-08-07 03:31:49'),(91,4,NULL,'364FC6ED-92AE-E205-CBA0-EE468133A283','2019-10-04 14:11:47'),(92,4,NULL,'11CBA33F-E524-BE8B-C6D6-571D86D1366A','2019-08-26 11:15:06'),(93,4,NULL,'0F3A024C-74DF-DBD4-C893-8802C7E16386','2019-08-22 23:41:52'),(94,4,NULL,'A8E8209C-0309-39CB-3921-3533EA175857','2020-02-04 15:53:56'),(95,4,NULL,'454179EB-7841-5601-E2E8-9C99E42F05D2','2018-10-10 01:11:45'),(96,4,NULL,'79EDA6A7-CFA4-F0B4-0418-287A1A7A7ACE','2018-12-16 19:37:12'),(97,4,NULL,'0722B72C-C3B9-8444-8442-EC88215F604C','2020-01-24 14:58:06'),(98,4,NULL,'7F5889E2-E0E8-BE11-652F-1049CF824A8C','2019-07-15 10:18:32'),(99,4,NULL,'CFE0A5F3-1328-AE8D-4695-9E14DF923C0F','2019-04-30 19:09:17'),(100,4,NULL,'7E6D779C-1CDF-02AE-A799-064C76465B1D','2019-03-12 18:11:36'),(101,1,80,'60DEEA06-F481-E205-BD4C-0D6F23119DF0','2019-07-04 00:24:12'),(102,4,46,'12EC7C32-E1B1-FE23-0ABB-0765FE82606B','2020-05-10 11:25:17'),(103,6,24,'6846902C-76EB-A6D2-8410-D79E5DD41C81','2018-10-04 17:52:36'),(104,2,49,'1F79E103-D719-915F-43E4-B608F1154E17','2020-02-21 18:31:37'),(105,5,63,'0B4B4F55-B024-9B88-5C54-78AB103AD583','2018-09-01 10:05:45'),(106,3,100,'092EE90B-8F96-A203-1C2D-926CE1A0B48E','2018-08-05 06:45:34'),(107,2,47,'CE80373B-AE14-D533-2A33-B0E01E905165','2019-03-25 00:29:31'),(108,7,27,'B2738262-E4C2-5687-2053-660E89ED8937','2019-04-06 05:26:06'),(109,3,19,'4020EE98-3F62-3A69-84E0-C9D4ED8691E1','2020-01-07 10:06:23'),(110,3,46,'066DED5C-6606-1AA5-7FFC-D92D5D6E0AEB','2020-03-06 03:20:45'),(111,7,20,'AC55DB3F-E84A-3C08-517F-E547136B3028','2020-01-04 15:10:06'),(112,3,63,'721FF776-9877-08E6-11BB-59C5A1F458BD','2019-08-01 00:56:11'),(113,2,62,'55B30D53-D2B6-56C3-8088-D67FD7815242','2019-03-09 16:36:29'),(114,3,79,'3145F9E7-DDA9-027D-7590-4DB403419DE4','2018-12-15 14:51:50'),(115,7,91,'7D0CD555-D586-7F7D-7B27-EBD637860700','2019-12-28 14:12:06'),(116,1,66,'ECD7D54D-F45A-FCF0-F219-B7EFB3720FC1','2020-02-19 16:39:49'),(117,3,8,'EE2D69D2-6966-6247-7FAC-DA3FFCD4FA84','2019-03-05 02:22:30'),(118,1,33,'8B8193B0-27FA-A5E0-2F4D-19054969EE5A','2019-09-20 14:32:57'),(119,1,77,'97D9F044-3AF6-8088-43C5-378FBFECA826','2020-02-28 06:45:11'),(120,4,76,'C8AC9F9B-A8F9-FBF7-74CE-4E67C2CEBFA5','2020-01-23 20:57:53'),(121,5,32,'0C16B1D1-8CFF-F84E-0E72-309AF3C3578C','2019-04-20 19:46:08'),(122,5,7,'11809B0B-D9A0-A2D5-4FF7-AE4F943F8271','2019-04-30 13:33:09'),(123,5,69,'EA8A758F-6D55-E6DE-4A96-A3F6CF07F583','2020-05-02 12:21:44'),(124,6,35,'F67134E4-FF01-7C6D-F993-284EB06E20AF','2020-05-11 10:52:37'),(125,7,91,'87C4FD2B-E55E-B2A3-B68C-40A9C38CA637','2018-09-13 20:18:17'),(126,5,94,'65CC722A-1666-6C3C-BC6D-A19CEE6B5A9D','2018-11-13 22:09:19'),(127,2,56,'292CC62B-5790-FE3C-7E40-D784CD6070F3','2018-05-31 15:58:38'),(128,5,7,'9C146DEE-F73A-7CCD-3085-A8675C861CF7','2018-12-27 07:01:35'),(129,6,79,'8228FD03-71AF-8C33-0358-50D0A1E81705','2019-12-30 16:19:23'),(130,1,50,'66AB2CE3-A4A8-40AC-4102-625353716C78','2019-11-23 20:25:14'),(131,2,1,'33082B61-B77D-D6A1-CC0E-6FE822020E2C','2018-09-17 08:11:59'),(132,1,80,'A1F50F8B-C8DF-B8B1-FD17-B4255C3C1346','2019-01-12 07:43:46'),(133,6,100,'00E9E2F8-4D24-1C70-3C16-2C82351B14EB','2020-01-09 13:13:33'),(134,1,46,'FC115391-74CD-A0CE-BC8D-A57A744BBC40','2019-01-04 11:07:45'),(135,5,19,'ABF396B5-2CB9-978B-9855-264401904A4A','2019-03-07 05:09:23'),(136,1,68,'5B0F059E-BC41-C512-318E-F8130BB4718D','2018-08-24 06:47:42'),(137,4,68,'16544E08-D844-4D10-7BCD-55F265779436','2019-12-02 10:53:46'),(138,4,91,'CDF610DC-70E0-D94B-D08D-EE3CE1A6DB4A','2018-09-21 10:45:45'),(139,1,26,'850DFAF1-C8F7-56CD-397F-C84FAA344F25','2020-03-30 10:40:56'),(140,3,7,'D94ABBE0-0FF1-A362-5AEC-6FAAA1601A50','2019-06-14 00:53:11'),(141,1,90,'996875AF-F7E2-6D7E-B383-DDEE55D036AF','2019-11-23 08:02:01'),(142,4,80,'FC42C2C4-BA44-1F75-0D9A-5AC7C14458FE','2018-12-30 14:28:24'),(143,5,18,'9F2D9135-563E-665C-7005-4A0E0F23AC30','2019-01-23 16:51:18'),(144,1,82,'4EA01AAA-3840-AF3F-46F3-DB85FFFE6194','2018-12-15 07:46:38'),(145,3,73,'F0309E15-670E-82D6-9225-84218FA36BD1','2020-04-19 19:02:46'),(146,4,84,'BF914887-7B24-91D9-B9D1-2584AB2F2EDA','2020-01-08 11:12:21'),(147,5,67,'EA50EB6A-5977-0160-F068-E7B251CCC1E5','2019-03-25 23:00:54'),(148,1,87,'FF5A1A04-9812-4A4B-3710-B60A4B2EB68E','2019-04-28 12:15:03'),(149,2,66,'9284ADFF-EB51-50FA-7B33-55D6E30946F3','2018-12-31 03:51:17'),(150,7,9,'8C62781B-E7C4-B970-D087-A911B4877C62','2020-01-17 22:58:03'),(151,4,71,'FE4BAB8C-8D0D-8845-570A-CFAA8C7B18E2','2018-06-25 02:04:14'),(152,4,58,'1351099B-275F-2009-3537-F1E30AABC185','2019-10-30 03:44:10'),(153,7,2,'C8B9DF30-B84C-287F-7A3D-3AA7F5C21377','2018-07-26 03:49:20'),(154,5,15,'342DDCA4-88BF-6DC6-B3BD-84B1D3EC4D87','2019-06-02 05:31:24'),(155,2,14,'8AF3559F-0BFC-6E1A-7B9C-AB544165013A','2019-10-11 03:47:54'),(156,3,90,'CF453A21-181F-9684-79FF-6BBB2F229856','2019-01-02 01:08:48'),(157,1,56,'A7F74BA1-03D6-39F6-C009-5503B7E4F8C9','2019-12-02 02:24:50'),(158,4,59,'27526347-64FA-69AF-C8CF-1D85F752F526','2019-05-31 16:47:06'),(159,6,27,'938663BA-7199-6689-183C-19FAAAE34078','2019-12-24 23:43:04'),(160,6,4,'463A37F0-ECB4-10F8-9440-5F9C2AF6C09F','2019-03-08 03:01:47'),(161,7,60,'DF6C8D8B-46F9-F75E-B447-5B673BA7F409','2020-04-04 07:59:30'),(162,4,9,'E5048110-4865-C3DB-35C9-6110A7009F5E','2019-07-17 04:01:52'),(163,4,1,'886FC13C-18E4-FECB-4582-79240D6A2BBC','2018-09-13 23:25:13'),(164,6,59,'8403AA03-139C-F1E5-6044-2C649A8B109B','2018-10-05 02:43:43'),(165,6,29,'7A744081-CC0B-7B83-9C86-B752F0CCC319','2020-02-06 09:55:26'),(166,4,57,'1A1535CC-D418-B177-42AC-AAEF5BDD75AB','2020-01-16 09:33:36'),(167,5,61,'809FBD04-B3F2-BE01-8C2A-46A637B8F586','2019-06-16 04:40:58'),(168,1,98,'0FAEE343-2F96-DBE1-944B-0BBB750B740E','2018-07-17 18:12:04'),(169,1,1,'5DF65E8C-2D30-F75C-1EAA-A6AD279C6AE3','2019-03-21 10:26:23'),(170,3,52,'FED74C5A-E420-61A1-B4FB-CE9D01C4E340','2018-08-04 04:50:03'),(171,4,72,'01757FE6-A7DF-0BF7-AEE7-6708AABB0565','2018-09-29 09:52:54'),(172,4,51,'21D13826-6B09-35D4-77DE-360309D2DF66','2018-08-11 08:20:24'),(173,1,95,'A66A3449-03A7-AC14-022C-D4E6B2F188BA','2019-06-26 15:51:43'),(174,3,97,'A686BBC7-6E46-AD7F-4B20-DAEA2BE46920','2018-09-21 19:43:24'),(175,5,35,'557E6F8B-BD41-FCD1-DD57-873E30BDDC5F','2019-03-05 07:27:59'),(176,6,50,'DC798AFB-6423-5E5F-5D9F-9E3EDBCE6BF1','2018-07-14 22:40:47'),(177,4,29,'840D19C8-BA35-535F-B2A2-B6925AB38A4E','2019-12-14 14:02:14'),(178,7,37,'55739A1F-D0EC-FF29-9225-7FFE4DA2C157','2019-01-28 04:32:53'),(179,7,54,'3F90C37C-9E7E-5A9E-8DC7-BE12ED434D22','2019-04-26 18:33:12'),(180,6,25,'43DA6426-35D6-98DF-E199-52020BCA60B2','2020-04-09 09:17:52'),(181,1,54,'5902CDEE-1C5E-515B-339B-B5E392E9B021','2019-12-02 05:52:48'),(182,6,59,'EAD734C4-4152-15E3-3FE0-3236CD9F032F','2019-05-30 11:56:04'),(183,1,76,'8BDE049B-729E-9E39-A4E7-3A8A89A1ACA8','2020-05-16 20:23:46'),(184,2,94,'4DE004BC-E5FA-A068-F0BC-9279534B59A3','2019-01-27 00:12:26'),(185,7,6,'A9926B00-2585-3920-EECC-0B62DDF21432','2019-11-08 22:12:38'),(186,5,16,'5C5F0047-DEFE-EAD0-8BC9-1923B2C85969','2019-08-03 00:56:57'),(187,3,2,'79826041-BDEA-7E5E-A59B-CAA8C2475DC4','2018-09-26 00:50:48'),(188,2,87,'6BF1BF70-101F-8B6C-CEC4-D4E170CE54B7','2020-01-14 00:46:06'),(189,4,39,'78A1D1BC-B989-268B-7837-7AFC8FD9A5C1','2019-01-17 03:16:37'),(190,2,18,'6185751B-611F-7179-AAEB-23986A047BE4','2019-12-21 00:23:57'),(191,5,93,'0D02F5AC-885D-E1B5-1D4A-664AB8D3052E','2018-06-25 10:17:06'),(192,3,65,'56AEA9F9-8D6E-10B5-AA4D-538A7F8F525B','2018-09-14 17:04:33'),(193,2,63,'287FAC46-27DE-45F5-2319-E6F81C37048B','2019-11-20 06:13:54'),(194,7,43,'649A88D8-9206-9A48-573E-524D6B9C38B7','2020-01-17 00:44:33'),(195,4,31,'4347BE5C-1A07-8044-1905-57E42562A421','2019-05-13 00:49:14'),(196,3,21,'D3A0BCEC-204B-8E2E-D600-27DED2ECEA03','2019-12-14 00:12:11'),(197,1,29,'A600602A-692E-4EC9-7B77-EC572AFD598E','2020-01-13 04:44:53'),(198,1,22,'27743BAA-2ADC-3889-4416-7B74185E6713','2018-08-22 18:00:13'),(199,4,13,'E3419633-8985-3FD7-C63E-C2EDD9FB3F1B','2020-04-19 16:24:56'),(200,7,44,'D2A6C127-E5F4-B1D2-57D2-F2136657B65E','2019-02-15 08:04:59'),(201,2,192,'BC4D1EE5-95A8-99DD-A32F-924A07B5022C','2020-02-27 22:03:52'),(202,3,90,'68DBC1FB-A763-CBE8-A380-7DF2845EE596','2018-10-02 02:24:45'),(203,3,49,'13050A0F-3AE2-73E8-45BB-8D3C8B81CFEA','2019-08-23 04:24:49'),(204,5,197,'E8200581-CD99-3852-033F-DA30A449EB36','2018-08-21 19:59:14'),(205,6,7,'1DFD8EF2-EB00-173C-FD83-CE39C8F57E34','2019-10-09 15:07:22'),(206,1,85,'94F19A3A-BDE8-262A-87F3-9A83E412D59B','2020-05-01 07:08:32'),(207,3,171,'445FD77D-3910-316D-699E-80E4782796CE','2019-01-18 05:18:35'),(208,7,100,'2D6E9A55-859D-E019-C3D3-FFC0A6680087','2018-08-21 11:25:07'),(209,7,159,'E3C8DF0F-924D-BE30-6A28-1A7CF9A334BE','2020-02-08 19:31:49'),(210,5,165,'633DCEFD-49D5-49D4-032B-9B2BFFDD1CC1','2019-01-02 22:52:39'),(211,5,107,'EB40AD9C-095D-A050-A210-48328F29DB29','2019-02-23 11:43:52'),(212,1,179,'C79203C6-B4D5-C6A7-9C19-B92821BDDFBF','2019-06-27 15:52:47'),(213,3,47,'06339014-6001-F04E-1848-111C7D2609C0','2020-02-15 10:20:43'),(214,5,89,'EFA9279F-52CD-A99F-74D1-DE8942F4926D','2018-09-16 20:29:57'),(215,5,89,'54898C0D-1229-92F8-BCBA-62A77CB62B49','2019-08-15 05:08:27'),(216,3,143,'E4FFD09B-95CA-C33D-A349-C618C42D4FA1','2019-10-22 05:09:36'),(217,7,22,'89496569-5DC2-BC55-5459-39457345B6C1','2020-02-19 16:00:11'),(218,5,37,'4F836327-132E-3B07-C9CB-CC982507DE54','2018-09-13 19:20:08'),(219,6,169,'BAE63B09-6031-5350-A556-48F7F15F9046','2019-08-26 11:24:45'),(220,3,22,'0517E401-984E-4146-72D6-16DF400861CD','2019-09-06 14:13:51'),(221,7,166,'01755A70-A3E2-0FFF-6C31-5E270ED3B227','2019-10-08 13:24:14'),(222,7,9,'DAF4AA35-45CF-00D9-5106-1133254986A0','2018-10-23 09:55:22'),(223,3,79,'AE0896B1-B406-0BF1-7067-6D4A5DE0F1AD','2019-06-16 05:22:18'),(224,7,160,'DC16258C-17DD-6718-64E5-FE62A287CDC8','2018-08-28 18:47:47'),(225,2,181,'20B35D8B-6526-53D0-042F-3533995AD353','2019-12-22 06:48:34'),(226,4,136,'FDCCA63B-72EC-C455-5F4B-BA8CA8CD3471','2019-10-22 19:00:36'),(227,2,127,'CCFB0964-C2F5-4C22-FAE5-AEFE86A87C62','2019-02-10 09:49:26'),(228,7,181,'6B55A08A-8431-8F88-90F0-8A10E0B64FA3','2019-06-28 00:32:33'),(229,7,151,'08EB241A-52FC-2014-DA6A-016158AC53C0','2019-11-12 23:53:03'),(230,2,47,'5C0C0D96-4305-6D50-2022-817EE7E4E9BC','2020-04-02 15:32:39'),(231,4,91,'CA5545E3-01B3-E603-61AF-BAE8C3C2D238','2018-09-21 10:16:38'),(232,3,120,'DFCA6BD3-7AF2-00CE-CD06-46171DD1C694','2018-09-24 19:04:14'),(233,6,124,'06EFF90C-8E76-23E1-EF9A-08AFDC3C090D','2018-11-07 06:32:10'),(234,5,61,'47DEEA03-5F30-17AC-E446-B19580BB971C','2018-08-10 03:43:30'),(235,4,30,'023B66C9-84C0-290B-68E1-6915FC01B34F','2019-08-13 05:51:36'),(236,3,138,'E265A3C1-57D0-D6C3-400C-5D9CE085C765','2019-03-06 16:46:41'),(237,4,86,'65DE1E00-5B44-C385-B146-E02F3A546355','2019-02-10 13:34:00'),(238,2,102,'458FD2F0-1C42-F81D-EAF8-B51BD7F7AA35','2019-05-22 17:33:46'),(239,7,187,'EEE8C67B-29F4-3C0B-5A63-1F4B211ED573','2019-03-21 14:51:17'),(240,5,141,'0FC9AE31-1423-40EC-E0BA-840CADE0215C','2018-05-22 00:53:51'),(241,3,82,'D374427F-36B2-5C3B-8FFC-8E51A2645D69','2019-06-12 07:16:20'),(242,3,102,'45F6B9E7-0746-B562-4F23-24B0515E94E8','2019-01-25 12:39:50'),(243,4,32,'6C3F44F7-E2AB-1E77-0A0E-802C9C367F61','2018-12-16 03:43:12'),(244,1,45,'ECCE0D68-C509-85A7-60E4-6D47C9960D7F','2018-10-04 03:36:43'),(245,5,17,'B51B6214-4018-1D24-34B1-C33E564DB4AD','2019-05-26 12:17:11'),(246,5,8,'AAF3B9FF-6A38-540A-8806-7E4ED5D2E10B','2019-04-05 14:02:41'),(247,3,159,'5B39EE4C-5C1C-C2B5-ABF9-B8E090283F71','2019-12-15 19:27:20'),(248,1,78,'A613348E-3E1C-BE91-77CD-91F793B87C61','2019-12-28 13:17:47'),(249,7,197,'6D92ADE3-D88E-A498-EA30-AC4406E2D6FD','2020-01-27 21:04:23'),(250,7,155,'B592FFD7-60A9-1A2B-FD50-9CF384EFA73D','2020-02-20 22:43:13'),(251,7,73,'D7887BF6-94CC-8160-C21F-6DDE89928FB4','2019-06-11 08:28:24'),(252,5,20,'6EBEC426-FD65-752F-AB34-F0E6880FBFE6','2019-06-16 17:05:29'),(253,3,117,'FFE0F090-E085-A4D5-5CBE-D55B6DCF5556','2018-09-24 05:09:08'),(254,4,120,'76A087D1-7F33-3E4C-ED40-85F03A097C1B','2018-08-20 08:44:36'),(255,1,104,'4E42D3D3-443B-A0D3-D916-EBBB433296B7','2018-09-23 15:46:23'),(256,3,179,'C46E72DA-3555-3A7A-1D91-42F27B349E3E','2019-09-30 18:56:30'),(257,6,121,'378AE763-551D-0432-964A-6AA60815EF3D','2020-03-11 08:11:48'),(258,4,197,'3EDF505A-AC3A-0919-AC8A-AABC1B2BA70C','2018-07-25 01:43:31'),(259,4,141,'7A231FC7-8084-4CFB-E16E-408B8479A766','2019-10-22 02:11:18'),(260,4,170,'615109E4-AB04-E302-7583-6898FB1175D0','2019-07-01 02:43:04'),(261,5,75,'5038A055-8C21-9E71-83D5-E7B5669543D2','2019-04-18 20:38:52'),(262,6,49,'701DBAA3-728D-2437-C33B-55DCDB1B6D63','2018-06-16 04:54:22'),(263,7,120,'CBDA6E9F-F299-50C1-0256-8E6AA90E1415','2018-05-28 02:44:03'),(264,4,62,'8126A1A3-679A-C210-8C08-C17F53B345F3','2019-04-05 11:17:09'),(265,1,96,'692FEAE9-59EB-D075-FBB3-024A9E12873E','2018-11-02 18:47:23'),(266,5,58,'721C66F5-46BC-B6A8-E2BD-ED8C02E30B0A','2020-05-11 01:24:01'),(267,3,164,'67597081-D999-7893-3D90-E00C1C95231E','2019-12-06 03:22:24'),(268,1,199,'EEAC0D46-6BD7-8696-4BC7-0BE371700126','2019-04-26 05:43:56'),(269,6,142,'5F0D0E9C-833E-0027-A4ED-C934D2F08B05','2019-05-28 13:15:13'),(270,1,82,'F658E50B-D51A-C723-A432-E957B65A79AD','2019-09-03 22:46:57'),(271,5,114,'0DD788F9-6052-B69C-C0A2-560A6A42E362','2018-10-12 22:37:21'),(272,1,152,'79D29A26-2E14-0F5E-277C-709B0DD9EEC9','2019-09-26 01:17:27'),(273,4,124,'83D6CA7D-EB7D-45A5-643E-690A8BA0856D','2019-06-23 22:47:15'),(274,6,127,'A7F11439-1967-87E2-090E-F1662DBB5BEB','2018-11-30 10:44:55'),(275,7,67,'DFACD2C9-40E7-965E-29B7-AC5952C59CA4','2020-03-13 01:13:51'),(276,3,116,'D6138B59-CDE6-0FDA-A7F0-793C86B398B8','2019-09-14 18:58:04'),(277,1,160,'BC489361-8656-E0EF-8518-5FD4174CD5BB','2020-03-19 14:32:20'),(278,7,88,'55FC4E34-FEBF-6FE3-AECA-3DA9B6C3B8C1','2018-12-05 18:32:56'),(279,5,26,'23A2918B-458C-56E6-3EAE-D67C9434F5E6','2019-06-07 07:21:44'),(280,3,105,'D0F1B9C6-DAD9-A85A-E4BF-DFF3DF3EA83D','2018-08-28 22:21:09'),(281,5,195,'26BC3734-DA66-FB00-65B3-D3F6F29AEF11','2020-01-21 21:43:47'),(282,3,190,'A0C65BED-8425-5A91-8F7A-28130439B3EB','2019-02-17 10:57:51'),(283,6,52,'22E0E22B-ED00-D036-778C-7B3429EF33F0','2018-06-08 08:34:04'),(284,3,153,'86BA3714-6082-9975-9B1B-D84C5BDDC1D3','2020-05-15 21:18:41'),(285,7,43,'A791E89B-DA16-9CE2-9139-E4CF4E4DCBCC','2019-02-25 11:44:28'),(286,7,59,'BFB156F3-BF45-FB7B-DCFD-84D858261679','2019-11-15 21:02:14'),(287,4,21,'08C33C26-44BC-7816-23AE-3E289F9EA710','2018-11-29 22:11:29'),(288,6,70,'72613ACA-D449-5C30-91D2-8ECCD6B51933','2018-06-28 14:51:09'),(289,5,150,'C63D59B5-2964-4941-A9AC-9D897F02E31E','2018-11-09 22:10:35'),(290,4,51,'634DA98B-668D-85CC-68BD-4981F9601A68','2020-01-21 07:46:57'),(291,5,163,'8C8E0355-8302-1086-1D1A-F769A2496193','2019-03-14 05:30:24'),(292,4,199,'E2F9DFB2-7FD0-882C-9F23-7AC100757993','2019-06-02 18:46:08'),(293,6,173,'BD50EE33-35EA-6436-9781-E0C03B9CE2F7','2018-08-05 13:32:01'),(294,1,15,'EEA65BBB-29DF-601E-C4A9-B0FE99A16C3E','2020-01-01 11:29:09'),(295,7,10,'9910616E-5E3A-D324-F20E-19B1E48F0A88','2018-06-02 03:58:01'),(296,2,67,'513D8CA2-12C2-92FA-F2C8-4C30A2E58154','2020-05-03 05:57:31'),(297,2,58,'10EC1893-9152-DD23-678C-3BD8AE854103','2020-03-02 07:31:11'),(298,2,4,'B9C5188A-4E2C-08BA-AF4E-8DDA5CA2B47C','2019-03-25 09:31:46'),(299,1,110,'783AE674-7908-89A0-EBE3-FFB92A9F5295','2019-09-30 04:55:57'),(300,5,57,'85087D9A-D207-4399-2727-ED2142A0CC20','2018-12-07 12:52:28');
/*!40000 ALTER TABLE `Entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityType_Abilities`
--

DROP TABLE IF EXISTS `EntityType_Abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityType_Abilities` (
  `abilityID` smallint(6) NOT NULL,
  `entityTypeID` tinyint(4) NOT NULL,
  PRIMARY KEY (`entityTypeID`,`abilityID`),
  KEY `fkIdx_166` (`abilityID`),
  KEY `fkIdx_169` (`entityTypeID`),
  CONSTRAINT `FK_166` FOREIGN KEY (`abilityID`) REFERENCES `Abilities` (`abilityID`),
  CONSTRAINT `FK_169` FOREIGN KEY (`entityTypeID`) REFERENCES `EntityTypes` (`entityTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Default abilities for new entities depending on entity types.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EntityType_Abilities`
--

LOCK TABLES `EntityType_Abilities` WRITE;
/*!40000 ALTER TABLE `EntityType_Abilities` DISABLE KEYS */;
INSERT INTO `EntityType_Abilities` VALUES (1,1),(2,1),(3,1),(9,1),(11,1),(13,1),(19,1),(24,1),(30,1),(34,1),(47,1),(56,1),(66,1),(83,1),(91,1),(96,1),(97,1),(11,2),(18,2),(33,2),(44,2),(53,2),(54,2),(56,2),(68,2),(70,2),(75,2),(76,2),(77,2),(98,2),(6,3),(13,3),(25,3),(38,3),(41,3),(42,3),(67,3),(75,3),(76,3),(79,3),(83,3),(89,3),(91,3),(16,4),(20,4),(23,4),(26,4),(30,4),(32,4),(34,4),(36,4),(50,4),(53,4),(64,4),(65,4),(68,4),(1,5),(2,5),(14,5),(25,5),(27,5),(28,5),(35,5),(47,5),(54,5),(55,5),(56,5),(74,5),(80,5),(84,5),(88,5),(89,5),(94,5),(97,5),(7,6),(12,6),(13,6),(18,6),(24,6),(30,6),(34,6),(44,6),(66,6),(72,6),(83,6),(92,6),(94,6),(2,7),(3,7),(9,7),(24,7),(28,7),(33,7),(36,7),(41,7),(44,7),(55,7),(59,7),(70,7),(82,7);
/*!40000 ALTER TABLE `EntityType_Abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityType_Attributes`
--

DROP TABLE IF EXISTS `EntityType_Attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityType_Attributes` (
  `attributeID` bigint(20) NOT NULL,
  `entityTypeID` tinyint(4) NOT NULL,
  `value` varchar(1000) NOT NULL,
  PRIMARY KEY (`attributeID`,`entityTypeID`),
  KEY `fkIdx_43` (`attributeID`),
  KEY `fkIdx_50` (`entityTypeID`),
  CONSTRAINT `FK_43` FOREIGN KEY (`attributeID`) REFERENCES `Attributes` (`attributeID`),
  CONSTRAINT `FK_50` FOREIGN KEY (`entityTypeID`) REFERENCES `EntityTypes` (`entityTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Describes what attributes are required for all entitytypes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EntityType_Attributes`
--

LOCK TABLES `EntityType_Attributes` WRITE;
/*!40000 ALTER TABLE `EntityType_Attributes` DISABLE KEYS */;
INSERT INTO `EntityType_Attributes` VALUES (3,1,'326'),(4,5,'531'),(5,2,'216'),(5,4,'304'),(6,6,'983'),(7,4,'912'),(7,5,'909'),(8,4,'715'),(8,7,'544'),(9,1,'329'),(10,1,'506'),(10,3,'583'),(10,4,'832'),(11,2,'321'),(11,5,'274'),(13,4,'343'),(13,7,'235'),(14,2,'392'),(15,7,'166'),(19,1,'642'),(19,3,'88'),(20,1,'387'),(20,6,'938'),(21,7,'248'),(22,5,'421'),(23,5,'694'),(24,6,'458'),(25,1,'673'),(26,1,'463'),(27,1,'829'),(28,4,'502'),(29,3,'523'),(30,2,'928'),(31,7,'573'),(32,7,'389'),(37,1,'852'),(38,3,'160'),(40,2,'130'),(46,1,'55'),(47,2,'76'),(48,4,'821'),(49,6,'894'),(50,7,'667'),(51,3,'979'),(51,4,'711'),(51,5,'868'),(52,4,'24'),(54,3,'433'),(54,4,'46'),(54,6,'287'),(55,2,'736'),(55,5,'231'),(56,1,'122'),(57,3,'456'),(57,6,'616'),(58,4,'461'),(59,2,'623'),(60,3,'432'),(60,4,'930'),(61,5,'295'),(63,1,'323'),(64,5,'440'),(65,5,'243'),(68,1,'528'),(70,6,'320'),(70,7,'601'),(71,6,'282'),(73,3,'502'),(73,5,'106'),(73,7,'611'),(74,5,'302'),(76,3,'919'),(76,7,'466'),(77,3,'542'),(77,7,'343'),(78,2,'245'),(80,7,'646'),(84,7,'399'),(85,7,'403'),(87,6,'387'),(87,7,'950'),(88,2,'478'),(89,2,'188'),(90,1,'42'),(91,3,'640'),(92,3,'777'),(92,6,'714'),(93,7,'325'),(94,2,'659'),(95,1,'352'),(95,2,'364'),(96,1,'686'),(97,2,'948'),(97,6,'592'),(98,2,'848'),(98,7,'226'),(99,2,'404'),(99,5,'871'),(100,1,'122'),(100,4,'634');
/*!40000 ALTER TABLE `EntityType_Attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityType_Roles`
--

DROP TABLE IF EXISTS `EntityType_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityType_Roles` (
  `entityTypeID` tinyint(4) NOT NULL,
  `roleID` smallint(6) NOT NULL,
  PRIMARY KEY (`entityTypeID`,`roleID`),
  KEY `fkIdx_113` (`entityTypeID`),
  KEY `fkIdx_117` (`roleID`),
  CONSTRAINT `FK_113` FOREIGN KEY (`entityTypeID`) REFERENCES `EntityTypes` (`entityTypeID`),
  CONSTRAINT `FK_117` FOREIGN KEY (`roleID`) REFERENCES `Roles` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Defines what roles are default for new entities of a certain entity type.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EntityType_Roles`
--

LOCK TABLES `EntityType_Roles` WRITE;
/*!40000 ALTER TABLE `EntityType_Roles` DISABLE KEYS */;
INSERT INTO `EntityType_Roles` VALUES (1,16),(1,19),(1,20),(1,24),(1,26),(1,28),(1,39),(1,40),(1,61),(1,62),(1,67),(1,86),(1,92),(1,93),(1,95),(2,18),(2,33),(2,35),(2,50),(2,52),(2,76),(3,1),(3,18),(3,19),(3,22),(3,26),(3,29),(3,36),(3,41),(3,44),(3,47),(3,61),(3,75),(4,32),(4,64),(4,65),(4,70),(4,80),(4,83),(5,19),(5,33),(5,36),(5,41),(5,68),(5,69),(5,76),(5,79),(5,91),(5,92),(5,93),(5,99),(6,29),(6,59),(6,61),(6,79),(6,83),(6,94),(6,96),(6,98),(7,9),(7,21),(7,38),(7,41),(7,42),(7,49),(7,54),(7,56),(7,65),(7,72),(8,14),(8,21),(8,26),(8,28),(8,55),(8,57),(8,58),(8,62),(8,64),(8,65),(8,68),(8,70),(8,78),(8,81),(8,91),(8,96),(9,4),(9,5),(9,6),(9,50),(9,75),(9,76),(9,90),(9,93),(10,17),(10,24),(10,31),(10,49),(10,81),(10,98),(10,100);
/*!40000 ALTER TABLE `EntityType_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityTypes`
--

DROP TABLE IF EXISTS `EntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityTypes` (
  `entityTypeID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `entityTypeName` varchar(45) DEFAULT NULL,
  `entityTypeDescription` varchar(45) DEFAULT NULL,
  `parentEntityType` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entityTypeID`),
  KEY `fkIdx_106` (`parentEntityType`),
  CONSTRAINT `FK_106` FOREIGN KEY (`parentEntityType`) REFERENCES `EntityTypes` (`entityTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='An entity can be a user, an organization, a phone, an application, and so on. This table defines what entity types we have in our application.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EntityTypes`
--

LOCK TABLES `EntityTypes` WRITE;
/*!40000 ALTER TABLE `EntityTypes` DISABLE KEYS */;
INSERT INTO `EntityTypes` VALUES (1,'tellus id nunc','69',NULL),(2,'Cum sociis natoque','4',NULL),(3,'et ultrices posuere','1',NULL),(4,'eros non enim','86',1),(5,'erat vel pede','98',3),(6,'congue turpis. In','27',2),(7,'neque vitae semper','76',1),(8,'pede, malesuada vel,','64',1),(9,'Sed malesuada augue','28',1),(10,'vitae dolor. Donec','44',1);
/*!40000 ALTER TABLE `EntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EntityTypes_AllowedChildren`
--

DROP TABLE IF EXISTS `EntityTypes_AllowedChildren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EntityTypes_AllowedChildren` (
  `entityTypeID` tinyint(4) NOT NULL,
  `allowedChild` tinyint(4) NOT NULL,
  `maxChildren` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entityTypeID`,`allowedChild`),
  KEY `fkIdx_249` (`entityTypeID`),
  KEY `fkIdx_252` (`allowedChild`),
  CONSTRAINT `FK_249` FOREIGN KEY (`entityTypeID`) REFERENCES `EntityTypes` (`entityTypeID`),
  CONSTRAINT `FK_252` FOREIGN KEY (`allowedChild`) REFERENCES `EntityTypes` (`entityTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Restricts what entities can have children of a certain type and how many.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EntityTypes_AllowedChildren`
--

LOCK TABLES `EntityTypes_AllowedChildren` WRITE;
/*!40000 ALTER TABLE `EntityTypes_AllowedChildren` DISABLE KEYS */;
INSERT INTO `EntityTypes_AllowedChildren` VALUES (1,3,94),(1,6,48),(1,9,66),(1,10,13),(2,3,2),(2,4,35),(2,7,37),(3,9,11),(4,2,24),(4,4,23),(4,8,5),(5,1,70),(5,3,74),(5,4,12),(5,5,36),(5,6,13),(5,9,53),(5,10,77),(6,4,17),(7,1,76),(7,4,33),(7,5,94),(7,8,55),(7,10,67),(8,3,74),(8,4,4),(8,6,10),(8,8,70),(8,10,71),(9,2,14),(9,3,80),(9,8,43),(10,2,26),(10,4,67),(10,8,83);
/*!40000 ALTER TABLE `EntityTypes_AllowedChildren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entity_Abilities`
--

DROP TABLE IF EXISTS `Entity_Abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity_Abilities` (
  `abilityID` smallint(6) NOT NULL,
  `entityID` bigint(20) NOT NULL,
  `assignedBy` bigint(20) NOT NULL,
  PRIMARY KEY (`abilityID`,`entityID`),
  KEY `fkIdx_242_global` (`assignedBy`),
  KEY `fkIdx_91_global` (`abilityID`),
  KEY `fkIdx_94_global` (`entityID`),
  CONSTRAINT `FK_242` FOREIGN KEY (`assignedBy`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_91` FOREIGN KEY (`abilityID`) REFERENCES `Abilities` (`abilityID`),
  CONSTRAINT `FK_94` FOREIGN KEY (`entityID`) REFERENCES `Entities` (`entityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a list of abilities assigned to an entity and who assigned it. These abilities are global.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity_Abilities`
--

LOCK TABLES `Entity_Abilities` WRITE;
/*!40000 ALTER TABLE `Entity_Abilities` DISABLE KEYS */;
INSERT INTO `Entity_Abilities` VALUES (24,281,1),(79,245,1),(24,71,2),(16,177,3),(91,234,3),(37,194,4),(4,125,6),(81,257,6),(78,17,7),(30,221,8),(48,85,8),(60,194,9),(77,262,12),(59,22,14),(53,117,15),(90,208,16),(22,297,17),(75,61,17),(9,17,18),(57,41,18),(20,284,19),(79,155,19),(78,274,21),(92,137,22),(50,58,25),(97,208,26),(39,90,27),(12,47,28),(99,50,28),(74,204,30),(23,99,31),(86,54,31),(18,71,33),(51,26,33),(43,166,34),(42,245,36),(29,188,38),(72,140,38),(95,296,40),(81,53,41),(86,25,41),(22,195,42),(58,92,42),(85,29,43),(85,225,43),(28,242,47),(64,92,48),(72,93,48),(100,37,49),(11,112,50),(50,195,53),(38,274,54),(76,189,54),(37,146,55),(54,232,56),(7,199,57),(13,239,57),(22,156,58),(93,160,58),(41,154,60),(100,134,60),(52,63,62),(52,185,63),(33,112,64),(83,204,65),(21,71,66),(75,278,67),(19,288,68),(75,262,68),(52,171,70),(21,270,71),(5,178,72),(20,63,75),(34,199,75),(87,212,77),(67,162,78),(77,5,78),(17,111,79),(64,59,79),(33,284,82),(53,50,82),(55,248,84),(49,165,85),(40,256,86),(72,269,86),(50,37,87),(89,6,87),(39,226,89),(49,177,89),(32,279,92),(39,206,92),(34,202,94),(51,47,94),(28,184,95),(54,247,96),(36,136,98),(95,77,99),(8,43,100),(67,241,100),(72,22,100);
/*!40000 ALTER TABLE `Entity_Abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entity_Attributes`
--

DROP TABLE IF EXISTS `Entity_Attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity_Attributes` (
  `value` varchar(1000) NOT NULL,
  `entityID` bigint(20) NOT NULL,
  `attributeID` bigint(20) NOT NULL,
  PRIMARY KEY (`entityID`,`attributeID`),
  KEY `fkIdx_308` (`entityID`),
  KEY `fkIdx_311` (`attributeID`),
  CONSTRAINT `FK_308` FOREIGN KEY (`entityID`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_311` FOREIGN KEY (`attributeID`) REFERENCES `Attributes` (`attributeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Associates attributes with entities and gives them values. I was worried about performance of a varchar column for all datatypes. But according to a few different stack exchange posts this can be mitigated by the right views and indexes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity_Attributes`
--

LOCK TABLES `Entity_Attributes` WRITE;
/*!40000 ALTER TABLE `Entity_Attributes` DISABLE KEYS */;
INSERT INTO `Entity_Attributes` VALUES ('269',3,95),('46',12,97),('60',15,22),('588',15,53),('197',17,66),('439',17,89),('152',23,78),('84',23,87),('381',25,41),('119',26,40),('628',33,33),('683',43,30),('331',54,78),('918',58,16),('49',61,2),('591',62,88),('268',64,19),('92',68,86),('38',73,22),('423',73,43),('566',73,44),('253',82,25),('936',88,81),('116',90,19),('866',90,88),('930',91,62),('284',92,19),('832',93,16),('632',94,34),('869',96,1),('690',105,55),('912',110,29),('960',111,58),('676',115,57),('221',116,41),('347',120,76),('152',123,73),('217',125,74),('336',127,23),('736',127,48),('83',127,78),('658',127,92),('147',132,76),('812',140,64),('888',144,80),('460',152,41),('578',155,16),('953',155,78),('715',156,68),('498',160,47),('191',164,57),('350',171,74),('37',172,81),('558',175,36),('381',181,4),('422',183,39),('718',186,9),('21',188,63),('22',189,36),('38',191,24),('386',196,34),('471',197,1),('650',198,94),('941',202,66),('24',202,85),('834',210,63),('413',212,76),('545',214,71),('628',221,63),('429',223,54),('23',224,26),('146',226,59),('546',227,28),('639',234,78),('287',236,56),('398',246,83),('321',247,90),('532',250,30),('97',251,19),('553',253,34),('424',258,62),('133',258,74),('990',259,12),('6',263,19),('955',265,77),('777',266,51),('681',268,61),('853',269,83),('559',270,15),('444',270,30),('7',274,70),('465',279,59),('731',279,68),('150',282,39),('938',282,45),('288',290,94),('18',290,96),('374',294,1),('260',295,2),('37',296,74);
/*!40000 ALTER TABLE `Entity_Attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entity_Event_Abilities`
--

DROP TABLE IF EXISTS `Entity_Event_Abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity_Event_Abilities` (
  `abilityID` smallint(6) NOT NULL,
  `entityID` bigint(20) NOT NULL,
  `eventID` int(11) NOT NULL,
  `assignedBy` bigint(20) NOT NULL,
  PRIMARY KEY (`abilityID`,`entityID`,`eventID`),
  KEY `fkIdx_242_aee` (`assignedBy`),
  KEY `fkIdx_268_aee` (`eventID`),
  KEY `fkIdx_91_aee` (`abilityID`),
  KEY `fkIdx_94_aee` (`entityID`),
  CONSTRAINT `FK_242_aee` FOREIGN KEY (`assignedBy`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_268_aee` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  CONSTRAINT `FK_91_aee` FOREIGN KEY (`abilityID`) REFERENCES `Abilities` (`abilityID`),
  CONSTRAINT `FK_94_aee` FOREIGN KEY (`entityID`) REFERENCES `Entities` (`entityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a list of abilities assigned to an entity and who assigned it. These abilities are event specific.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity_Event_Abilities`
--

LOCK TABLES `Entity_Event_Abilities` WRITE;
/*!40000 ALTER TABLE `Entity_Event_Abilities` DISABLE KEYS */;
INSERT INTO `Entity_Event_Abilities` VALUES (22,149,31,7),(45,263,41,8),(32,221,22,10),(57,228,4,29),(34,190,82,36),(33,265,20,37),(71,203,40,40),(78,139,15,40),(33,60,78,41),(82,285,36,46),(38,279,88,47),(11,105,78,49),(45,90,24,49),(74,128,64,49),(23,234,73,51),(65,47,54,58),(83,109,71,59),(95,72,94,60),(28,32,35,61),(45,196,18,68),(96,235,92,68),(91,198,54,70),(1,130,12,73),(45,102,33,75),(35,140,49,78),(78,167,22,81),(44,63,5,85),(89,204,81,95),(19,88,84,97),(92,198,15,97),(94,42,78,100),(26,41,10,101),(19,55,29,103),(8,134,12,108),(39,119,48,108),(19,238,58,115),(70,74,2,117),(61,136,7,119),(84,63,64,119),(48,102,24,123),(88,163,22,124),(20,220,70,125),(25,269,56,131),(51,190,83,131),(15,194,35,137),(72,108,75,141),(64,10,5,143),(39,55,90,146),(37,204,10,150),(65,45,31,150),(23,275,94,151),(98,57,50,151),(25,154,89,154),(31,115,30,155),(54,85,55,158),(69,298,25,162),(25,88,1,165),(4,21,88,167),(40,250,35,173),(45,54,55,174),(88,120,63,181),(33,80,62,184),(40,18,78,184),(84,114,84,193),(70,43,75,196),(16,146,87,199),(7,205,9,205),(59,278,99,210),(91,243,84,212),(53,32,7,214),(36,292,73,215),(53,123,66,218),(35,173,22,219),(97,280,43,222),(75,211,4,224),(79,295,31,224),(40,173,86,226),(99,151,30,226),(7,169,92,234),(51,227,1,237),(85,66,2,237),(99,289,84,239),(89,199,59,242),(49,280,94,249),(71,169,63,250),(82,124,83,250),(7,244,35,252),(18,211,14,255),(52,113,96,259),(55,211,83,263),(81,166,56,266),(95,162,46,270),(91,221,8,274),(95,126,29,279),(63,149,82,281),(97,200,10,283),(93,227,43,289),(84,82,51,295),(11,185,22,296),(61,16,61,298);
/*!40000 ALTER TABLE `Entity_Event_Abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entity_Event_Roles`
--

DROP TABLE IF EXISTS `Entity_Event_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity_Event_Roles` (
  `entityID` bigint(20) NOT NULL,
  `roleID` smallint(6) NOT NULL,
  `assignedBy` bigint(20) NOT NULL COMMENT 'Tracks who assigned a role to an entity.',
  `eventID` int(11) NOT NULL,
  PRIMARY KEY (`entityID`,`roleID`,`eventID`),
  KEY `fkIdx_239` (`assignedBy`),
  KEY `fkIdx_256` (`eventID`),
  KEY `fkIdx_78` (`entityID`),
  KEY `fkIdx_81` (`roleID`),
  CONSTRAINT `FK_239` FOREIGN KEY (`assignedBy`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_256` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  CONSTRAINT `FK_78` FOREIGN KEY (`entityID`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_81` FOREIGN KEY (`roleID`) REFERENCES `Roles` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a list of all roles given to an entity and who assigned it. These roles are event specific.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity_Event_Roles`
--

LOCK TABLES `Entity_Event_Roles` WRITE;
/*!40000 ALTER TABLE `Entity_Event_Roles` DISABLE KEYS */;
INSERT INTO `Entity_Event_Roles` VALUES (285,86,4,89),(248,33,5,21),(102,37,12,64),(219,72,12,10),(69,5,17,88),(80,59,17,77),(160,61,17,39),(24,37,21,45),(71,99,24,86),(282,85,24,63),(273,45,26,43),(35,74,27,85),(80,8,34,33),(100,58,35,36),(56,30,36,25),(200,5,37,84),(257,73,37,6),(30,20,41,13),(54,61,41,2),(59,19,48,63),(168,92,52,52),(84,1,53,25),(148,69,54,28),(161,7,58,16),(209,9,58,90),(59,51,61,49),(53,77,64,41),(237,51,64,8),(212,53,67,88),(210,7,74,90),(102,15,75,100),(155,21,77,49),(138,64,82,8),(148,36,82,12),(178,36,86,23),(277,67,90,99),(186,74,91,7),(262,7,98,19),(167,44,101,85),(223,80,101,3),(137,76,106,8),(94,31,108,53),(240,62,108,52),(224,41,116,99),(157,100,121,56),(299,63,121,32),(33,15,126,90),(161,53,130,96),(269,73,130,12),(194,25,137,92),(295,18,137,23),(187,52,139,56),(211,57,149,88),(244,25,150,19),(173,86,163,97),(275,66,165,25),(198,90,166,74),(292,39,167,67),(36,86,174,96),(182,65,176,56),(234,89,176,5),(279,97,182,94),(122,6,189,84),(155,32,199,96),(36,12,206,23),(79,10,206,93),(56,46,208,100),(4,51,211,73),(78,11,213,87),(116,34,217,20),(276,72,218,21),(252,43,220,10),(80,4,221,73),(189,52,223,36),(129,69,225,98),(193,96,225,69),(289,71,228,84),(211,32,232,94),(90,42,233,91),(287,45,234,49),(12,72,236,61),(235,10,238,40),(184,34,240,9),(213,60,243,48),(152,60,245,45),(259,17,248,5),(246,60,253,56),(296,44,262,99),(40,64,268,67),(53,48,268,91),(256,89,271,75),(190,45,272,95),(25,91,273,76),(41,66,273,21),(228,31,274,86),(295,84,277,52),(53,49,286,34),(39,70,287,42),(189,32,287,6),(129,39,296,32);
/*!40000 ALTER TABLE `Entity_Event_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entity_Roles`
--

DROP TABLE IF EXISTS `Entity_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity_Roles` (
  `entityID` bigint(20) NOT NULL,
  `roleID` smallint(6) NOT NULL,
  `assignedBy` bigint(20) NOT NULL COMMENT 'Tracks who assigned a role to an entity.',
  PRIMARY KEY (`entityID`,`roleID`),
  KEY `fkIdx_239_er` (`assignedBy`),
  KEY `fkIdx_78_er` (`entityID`),
  KEY `fkIdx_81_er` (`roleID`),
  CONSTRAINT `FK_239_er` FOREIGN KEY (`assignedBy`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_78_er` FOREIGN KEY (`entityID`) REFERENCES `Entities` (`entityID`),
  CONSTRAINT `FK_81_er` FOREIGN KEY (`roleID`) REFERENCES `Roles` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a list of all roles given to an entity and who assigned it. These roles are global.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity_Roles`
--

LOCK TABLES `Entity_Roles` WRITE;
/*!40000 ALTER TABLE `Entity_Roles` DISABLE KEYS */;
INSERT INTO `Entity_Roles` VALUES (216,47,2),(42,34,6),(76,49,7),(21,87,11),(239,33,11),(243,35,12),(264,45,18),(120,81,26),(60,91,27),(102,69,27),(203,90,30),(72,33,31),(107,86,31),(104,70,36),(181,60,37),(284,54,38),(114,53,51),(74,60,54),(29,12,59),(222,72,60),(192,89,62),(285,62,64),(241,99,77),(115,63,81),(206,16,84),(10,14,89),(67,86,90),(120,87,90),(19,47,91),(231,51,94),(131,38,95),(168,2,98),(180,25,98),(200,48,102),(101,99,107),(120,68,107),(288,98,118),(2,15,126),(82,52,126),(63,18,129),(67,66,129),(42,1,130),(85,62,130),(239,85,133),(11,25,139),(65,7,143),(37,43,145),(49,90,148),(5,4,150),(43,46,150),(299,7,151),(17,81,154),(204,15,159),(72,2,171),(258,85,176),(108,86,180),(274,35,181),(231,23,185),(190,75,187),(223,74,187),(84,84,188),(227,32,189),(151,8,190),(97,23,196),(127,25,197),(149,47,197),(114,23,207),(22,76,209),(42,40,210),(207,2,211),(182,48,212),(237,69,214),(8,61,218),(222,75,219),(89,98,221),(186,34,221),(300,61,223),(274,87,225),(51,75,226),(289,34,226),(38,49,227),(190,9,233),(110,94,239),(56,13,251),(265,81,251),(58,76,253),(43,81,258),(127,5,259),(58,53,260),(297,93,262),(117,70,263),(244,82,268),(195,25,270),(142,91,272),(150,48,275),(166,4,276),(26,13,278),(136,4,298),(151,37,299),(157,62,299);
/*!40000 ALTER TABLE `Entity_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entity_Thresholds`
--

DROP TABLE IF EXISTS `Entity_Thresholds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Entity_Thresholds` (
  `thresholdID` smallint(6) NOT NULL,
  `value` int(11) NOT NULL,
  `entityID` bigint(20) NOT NULL,
  PRIMARY KEY (`thresholdID`,`entityID`),
  KEY `fkIdx_230` (`thresholdID`),
  KEY `fkIdx_234` (`entityID`),
  CONSTRAINT `FK_230` FOREIGN KEY (`thresholdID`) REFERENCES `Thresholds` (`thresholdID`),
  CONSTRAINT `FK_234` FOREIGN KEY (`entityID`) REFERENCES `Entities` (`entityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps track of how long entities should be kept if they are abandoned.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entity_Thresholds`
--

LOCK TABLES `Entity_Thresholds` WRITE;
/*!40000 ALTER TABLE `Entity_Thresholds` DISABLE KEYS */;
INSERT INTO `Entity_Thresholds` VALUES (2,29,67),(4,863,52),(5,333,120),(6,547,148),(6,307,240),(7,994,95),(7,272,163),(8,64,263),(10,474,53),(10,56,119),(11,511,1),(12,190,87),(12,556,135),(12,497,174),(12,552,232),(13,172,233),(14,506,49),(14,742,227),(15,120,36),(15,406,78),(16,77,168),(17,833,42),(17,83,44),(17,899,57),(18,29,168),(18,446,182),(19,578,135),(20,639,89),(20,638,155),(20,345,298),(21,830,205),(22,371,125),(23,229,86),(24,811,117),(24,580,249),(25,798,55),(25,801,231),(26,988,76),(26,569,222),(26,945,295),(27,706,97),(27,773,254),(28,829,74),(34,193,169),(37,233,2),(37,243,296),(40,584,116),(42,253,250),(43,549,134),(44,138,193),(48,878,103),(48,636,112),(49,221,121),(53,30,285),(54,319,125),(55,190,92),(55,581,228),(56,277,175),(56,358,176),(58,954,85),(58,200,295),(59,166,126),(60,234,151),(61,764,45),(61,623,83),(61,21,221),(62,616,215),(63,380,226),(66,494,68),(66,244,165),(66,454,170),(67,21,155),(71,134,85),(72,683,17),(72,607,86),(74,394,18),(74,74,41),(74,935,150),(74,601,189),(75,349,112),(75,458,254),(76,774,195),(77,444,165),(78,775,113),(81,765,215),(82,505,167),(83,512,68),(85,913,97),(87,172,155),(88,495,230),(89,179,59),(91,952,241),(92,737,113),(92,845,207),(93,82,58),(97,211,185),(98,203,300),(99,478,2),(100,847,56),(100,388,154);
/*!40000 ALTER TABLE `Entity_Thresholds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Attributes`
--

DROP TABLE IF EXISTS `Event_Attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Attributes` (
  `value` varchar(1000) NOT NULL,
  `attributeID` bigint(20) NOT NULL,
  `eventID` int(11) NOT NULL,
  PRIMARY KEY (`eventID`,`attributeID`),
  KEY `fkIdx_317` (`attributeID`),
  KEY `fkIdx_320` (`eventID`),
  CONSTRAINT `FK_317` FOREIGN KEY (`attributeID`) REFERENCES `Attributes` (`attributeID`),
  CONSTRAINT `FK_320` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Event attributes. Required attributes are stored in the events table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Attributes`
--

LOCK TABLES `Event_Attributes` WRITE;
/*!40000 ALTER TABLE `Event_Attributes` DISABLE KEYS */;
INSERT INTO `Event_Attributes` VALUES ('625',1,1),('927',59,1),('771',18,2),('367',86,2),('751',20,4),('143',39,4),('23',30,6),('942',60,6),('373',92,7),('286',98,8),('94',54,9),('112',56,9),('1000',29,10),('264',37,10),('993',38,13),('423',76,13),('744',17,15),('794',38,16),('957',49,17),('68',69,17),('307',63,22),('385',84,26),('823',45,30),('585',37,32),('645',38,32),('301',5,33),('970',33,33),('118',10,35),('78',80,38),('78',76,39),('202',96,39),('236',72,41),('280',73,41),('725',74,42),('589',15,43),('983',16,43),('649',59,43),('51',28,44),('658',59,45),('640',73,45),('73',44,47),('741',1,50),('789',2,51),('889',74,51),('558',59,54),('760',42,55),('663',49,55),('307',56,55),('188',84,57),('862',100,60),('557',65,61),('898',65,62),('340',76,62),('189',97,62),('11',48,63),('520',16,64),('18',42,66),('732',77,67),('794',37,68),('841',46,68),('792',75,69),('100',97,69),('248',71,70),('415',100,70),('886',16,71),('682',93,72),('670',15,73),('325',63,73),('670',15,74),('781',77,74),('647',83,77),('722',52,78),('289',70,78),('321',9,80),('579',45,80),('199',19,81),('493',42,81),('974',90,84),('207',96,84),('585',76,85),('813',10,87),('693',34,87),('984',48,87),('643',72,88),('221',74,90),('356',93,91),('312',39,93),('666',9,94),('725',43,94),('225',85,94),('82',92,94),('208',51,95),('942',37,96),('298',58,97),('950',69,97),('13',19,98),('884',52,100),('594',71,100),('55',72,100),('91',75,100);
/*!40000 ALTER TABLE `Event_Attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Locations`
--

DROP TABLE IF EXISTS `Event_Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Locations` (
  `eventID` int(11) NOT NULL,
  `locationID` bigint(20) NOT NULL,
  PRIMARY KEY (`locationID`,`eventID`),
  KEY `fkIdx_140_el` (`eventID`),
  KEY `fkIdx_143_el` (`locationID`),
  CONSTRAINT `FK_140_el` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  CONSTRAINT `FK_143_el` FOREIGN KEY (`locationID`) REFERENCES `Locations` (`locationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Couples events with their locations.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Locations`
--

LOCK TABLES `Event_Locations` WRITE;
/*!40000 ALTER TABLE `Event_Locations` DISABLE KEYS */;
INSERT INTO `Event_Locations` VALUES (1,1),(1,6),(1,8),(1,69),(4,34),(4,43),(5,15),(5,48),(6,13),(7,3),(8,87),(9,5),(10,82),(13,39),(13,58),(15,13),(16,86),(18,20),(18,77),(18,94),(19,33),(21,75),(22,41),(24,87),(25,8),(25,62),(27,65),(27,89),(28,35),(30,91),(32,45),(33,68),(36,32),(36,46),(36,84),(37,92),(39,37),(40,12),(43,20),(44,53),(44,73),(45,8),(45,49),(47,42),(48,2),(48,36),(48,54),(48,78),(49,40),(49,73),(51,23),(51,35),(53,63),(54,38),(54,43),(55,24),(55,46),(55,81),(56,69),(57,47),(57,60),(57,100),(59,36),(60,29),(60,60),(61,63),(62,47),(62,54),(65,19),(66,52),(71,86),(72,76),(73,28),(73,86),(74,14),(75,42),(76,69),(77,78),(77,96),(78,56),(81,50),(84,45),(84,80),(85,55),(88,11),(88,93),(89,44),(89,60),(91,72),(92,11),(92,78),(93,32),(93,77),(95,97),(96,37),(96,75),(97,1),(97,39),(99,10),(99,38);
/*!40000 ALTER TABLE `Event_Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Thresholds`
--

DROP TABLE IF EXISTS `Event_Thresholds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Thresholds` (
  `eventID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `thresholdID` smallint(6) NOT NULL,
  PRIMARY KEY (`eventID`,`thresholdID`),
  KEY `fkIdx_153` (`eventID`),
  KEY `fkIdx_157` (`thresholdID`),
  CONSTRAINT `FK_153` FOREIGN KEY (`eventID`) REFERENCES `Events` (`eventID`),
  CONSTRAINT `FK_157` FOREIGN KEY (`thresholdID`) REFERENCES `Thresholds` (`thresholdID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a list of thresholds per event and their value.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Thresholds`
--

LOCK TABLES `Event_Thresholds` WRITE;
/*!40000 ALTER TABLE `Event_Thresholds` DISABLE KEYS */;
INSERT INTO `Event_Thresholds` VALUES (1,148,26),(1,45,43),(1,51,85),(3,40,28),(3,141,80),(4,159,97),(5,45,85),(9,37,73),(10,109,92),(13,174,1),(13,44,60),(14,83,38),(16,168,59),(17,186,39),(17,30,47),(19,98,92),(20,153,83),(21,136,23),(21,152,45),(23,58,43),(23,150,68),(24,61,11),(24,48,20),(26,124,54),(26,75,70),(28,35,2),(31,106,14),(31,24,18),(34,79,63),(34,65,100),(35,118,64),(35,120,73),(36,69,73),(39,58,13),(39,49,15),(40,57,60),(40,129,98),(41,147,44),(42,99,57),(45,185,80),(47,87,20),(47,77,86),(48,121,92),(49,107,64),(51,122,95),(52,192,4),(52,30,23),(53,147,28),(54,38,47),(54,57,49),(54,105,99),(55,189,1),(55,190,20),(56,31,44),(57,45,16),(58,49,11),(59,29,83),(60,183,7),(61,129,7),(61,123,26),(61,118,55),(62,87,65),(63,162,92),(65,83,19),(65,33,88),(67,152,34),(67,104,56),(67,164,68),(67,70,87),(68,143,37),(68,129,54),(69,181,4),(69,50,63),(70,124,3),(72,148,64),(73,121,35),(76,87,35),(77,131,99),(78,165,78),(79,188,13),(80,70,30),(80,118,68),(81,129,42),(83,179,57),(85,53,7),(85,111,21),(88,39,96),(89,95,27),(90,177,40),(91,56,37),(91,124,69),(92,108,46),(92,160,80),(94,35,70),(94,50,99),(95,126,20),(95,74,46),(96,112,69),(99,177,20),(100,88,36);
/*!40000 ALTER TABLE `Event_Thresholds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Events`
--

DROP TABLE IF EXISTS `Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Events` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(45) NOT NULL,
  `completed` tinyint(4) NOT NULL DEFAULT '0',
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='Event information.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Events`
--

LOCK TABLES `Events` WRITE;
/*!40000 ALTER TABLE `Events` DISABLE KEYS */;
INSERT INTO `Events` VALUES (1,'mauris',0,'2019-05-23 06:02:21'),(2,'elementum, lorem ut',1,'2019-05-23 06:02:21'),(3,'torquent',1,'2019-05-23 06:02:21'),(4,'at,',0,'2019-05-23 06:02:21'),(5,'ipsum',0,'2019-05-23 06:02:21'),(6,'aliquam',0,'2019-05-23 06:02:21'),(7,'placerat eget,',1,'2019-05-23 06:02:21'),(8,'non, lacinia at,',1,'2019-05-23 06:02:21'),(9,'volutpat. Nulla',1,'2019-05-23 06:02:21'),(10,'Ut nec urna',1,'2019-05-23 06:02:21'),(11,'senectus et',0,'2019-05-23 06:02:21'),(12,'turpis',1,'2019-05-23 06:02:21'),(13,'at, velit.',1,'2019-05-23 06:02:21'),(14,'tempor,',0,'2019-05-23 06:02:21'),(15,'neque.',1,'2019-05-23 06:02:21'),(16,'Integer vulputate,',0,'2019-05-23 06:02:21'),(17,'ac mattis',1,'2019-05-23 06:02:21'),(18,'non sapien',0,'2019-05-23 06:02:21'),(19,'imperdiet, erat',1,'2019-05-23 06:02:21'),(20,'lorem tristique aliquet.',0,'2019-05-23 06:02:21'),(21,'eu,',1,'2019-05-23 06:02:21'),(22,'arcu. Sed et',0,'2019-05-23 06:02:21'),(23,'malesuada vel, convallis',0,'2019-05-23 06:02:21'),(24,'montes,',1,'2019-05-23 06:02:21'),(25,'dictum',0,'2019-05-23 06:02:21'),(26,'facilisis vitae,',0,'2019-05-23 06:02:21'),(27,'non, vestibulum nec,',0,'2019-05-23 06:02:21'),(28,'condimentum eget, volutpat',0,'2019-05-23 06:02:21'),(29,'ipsum ac',0,'2019-05-23 06:02:21'),(30,'congue turpis. In',1,'2019-05-23 06:02:21'),(31,'malesuada ut,',0,'2019-05-23 06:02:21'),(32,'Cras eget',0,'2019-05-23 06:02:21'),(33,'risus',1,'2019-05-23 06:02:21'),(34,'sem ut',1,'2019-05-23 06:02:21'),(35,'eu nibh',1,'2019-05-23 06:02:21'),(36,'sit',0,'2019-05-23 06:02:21'),(37,'Aliquam nec',1,'2019-05-23 06:02:21'),(38,'mauris id sapien.',0,'2019-05-23 06:02:21'),(39,'convallis, ante',1,'2019-05-23 06:02:21'),(40,'lorem',0,'2019-05-23 06:02:21'),(41,'Proin sed',0,'2019-05-23 06:02:21'),(42,'taciti sociosqu ad',1,'2019-05-23 06:02:21'),(43,'est. Nunc',0,'2019-05-23 06:02:21'),(44,'Sed molestie. Sed',0,'2019-05-23 06:02:21'),(45,'Curabitur ut',1,'2019-05-23 06:02:21'),(46,'orci.',0,'2019-05-23 06:02:21'),(47,'lorem, vehicula et,',1,'2019-05-23 06:02:21'),(48,'tortor, dictum eu,',1,'2019-05-23 06:02:21'),(49,'arcu',0,'2019-05-23 06:02:21'),(50,'tortor, dictum',1,'2019-05-23 06:02:21'),(51,'Cras dolor dolor,',0,'2019-05-23 06:02:21'),(52,'ac',0,'2019-05-23 06:02:21'),(53,'nulla.',1,'2019-05-23 06:02:21'),(54,'tristique aliquet.',0,'2019-05-23 06:02:21'),(55,'sed orci',1,'2019-05-23 06:02:21'),(56,'Nam',0,'2019-05-23 06:02:21'),(57,'Cras lorem',0,'2019-05-23 06:02:21'),(58,'orci quis lectus.',1,'2019-05-23 06:02:21'),(59,'elit. Curabitur sed',0,'2019-05-23 06:02:21'),(60,'Aliquam ultrices',0,'2019-05-23 06:02:21'),(61,'eget tincidunt',1,'2019-05-23 06:02:21'),(62,'a,',0,'2019-05-23 06:02:21'),(63,'tempor, est',0,'2019-05-23 06:02:21'),(64,'dolor.',1,'2019-05-23 06:02:21'),(65,'luctus, ipsum leo',0,'2019-05-23 06:02:21'),(66,'eu, placerat',1,'2019-05-23 06:02:21'),(67,'posuere',0,'2019-05-23 06:02:21'),(68,'massa. Mauris vestibulum,',1,'2019-05-23 06:02:21'),(69,'vel arcu.',1,'2019-05-23 06:02:21'),(70,'Quisque ac',0,'2019-05-23 06:02:21'),(71,'mi,',0,'2019-05-23 06:02:21'),(72,'In',1,'2019-05-23 06:02:21'),(73,'eu, euismod',0,'2019-05-23 06:02:21'),(74,'mollis',1,'2019-05-23 06:02:21'),(75,'nisl arcu',1,'2019-05-23 06:02:21'),(76,'cursus non,',0,'2019-05-23 06:02:21'),(77,'a tortor. Nunc',1,'2019-05-23 06:02:21'),(78,'Donec',1,'2019-05-23 06:02:21'),(79,'Cras pellentesque. Sed',1,'2019-05-23 06:02:21'),(80,'elementum at, egestas',0,'2019-05-23 06:02:21'),(81,'sagittis felis. Donec',0,'2019-05-23 06:02:21'),(82,'vel',1,'2019-05-23 06:02:21'),(83,'aliquet molestie tellus.',0,'2019-05-23 06:02:21'),(84,'torquent per',0,'2019-05-23 06:02:21'),(85,'fringilla,',1,'2019-05-23 06:02:21'),(86,'mauris. Morbi non',0,'2019-05-23 06:02:21'),(87,'Phasellus dolor',0,'2019-05-23 06:02:21'),(88,'tristique ac, eleifend',0,'2019-05-23 06:02:21'),(89,'magna. Sed eu',1,'2019-05-23 06:02:21'),(90,'massa.',0,'2019-05-23 06:02:21'),(91,'consectetuer',1,'2019-05-23 06:02:21'),(92,'libero',1,'2019-05-23 06:02:21'),(93,'ut quam vel',1,'2019-05-23 06:02:21'),(94,'commodo',0,'2019-05-23 06:02:21'),(95,'eu dolor',0,'2019-05-23 06:02:21'),(96,'egestas. Aliquam nec',0,'2019-05-23 06:02:21'),(97,'lobortis',0,'2019-05-23 06:02:21'),(98,'turpis nec',1,'2019-05-23 06:02:21'),(99,'Nunc sed',1,'2019-05-23 06:02:21'),(100,'tincidunt, neque',1,'2019-05-23 06:02:21');
/*!40000 ALTER TABLE `Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locations`
--

DROP TABLE IF EXISTS `Locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Locations` (
  `locationID` bigint(20) NOT NULL AUTO_INCREMENT,
  `locationName` varchar(45) NOT NULL,
  `locationDescription` text NOT NULL,
  `reusable` tinyint(1) NOT NULL,
  PRIMARY KEY (`locationID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='Location definitions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locations`
--

LOCK TABLES `Locations` WRITE;
/*!40000 ALTER TABLE `Locations` DISABLE KEYS */;
INSERT INTO `Locations` VALUES (1,'ultrices. Vivamus','nunc ac mattis ornare, lectus ante dictum mi,',0),(2,'mauris erat','magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus',0),(3,'dolor sit amet,','mi tempor lorem, eget mollis lectus pede',1),(4,'Aenean gravida nunc','metus urna convallis erat, eget tincidunt dui augue eu tellus.',0),(5,'consectetuer rhoncus.','malesuada fames ac turpis egestas. Fusce aliquet magna',1),(6,'consequat purus.','vitae risus. Duis a mi',1),(7,'a, scelerisque','et nunc. Quisque ornare tortor at risus. Nunc ac',1),(8,'Integer','enim. Nunc ut erat. Sed',1),(9,'eu dui. Cum','vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.',1),(10,'Sed eu eros.','euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut,',1),(11,'a, magna. Lorem','Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,',0),(12,'at risus. Nunc','vel quam dignissim pharetra. Nam ac nulla. In',1),(13,'faucibus lectus, a','odio sagittis semper. Nam tempor diam dictum',1),(14,'velit','turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed',0),(15,'arcu et','viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis,',1),(16,'molestie','imperdiet, erat nonummy ultricies ornare, elit',1),(17,'lobortis','leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,',0),(18,'sed','elit pede, malesuada vel, venenatis',0),(19,'in faucibus','Morbi non sapien molestie orci tincidunt',1),(20,'sem, consequat','purus, in molestie tortor nibh sit amet orci.',1),(21,'luctus','adipiscing lobortis risus. In mi pede, nonummy ut,',0),(22,'Cras interdum. Nunc','elit fermentum risus, at fringilla purus mauris a nunc.',1),(23,'Integer id','sapien, cursus in, hendrerit consectetuer,',0),(24,'Morbi quis urna.','ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper',0),(25,'placerat eget,','sem ut cursus luctus, ipsum leo elementum sem,',0),(26,'neque et','iaculis odio. Nam interdum enim',1),(27,'Duis cursus,','at, libero. Morbi accumsan laoreet',0),(28,'eu arcu. Morbi','egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla',0),(29,'ultricies ligula. Nullam','fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra',0),(30,'Nulla facilisi. Sed','mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis',0),(31,'id,','nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.',0),(32,'libero. Donec','gravida mauris ut mi. Duis risus',1),(33,'metus facilisis lorem','metus urna convallis erat, eget tincidunt dui augue eu',0),(34,'Integer sem elit,','dui. Fusce aliquam, enim nec',1),(35,'ac, feugiat','Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut',1),(36,'imperdiet ornare.','adipiscing, enim mi tempor lorem,',0),(37,'a, magna. Lorem','ante, iaculis nec, eleifend non, dapibus',0),(38,'ac','mi lorem, vehicula et, rutrum eu, ultrices sit amet,',1),(39,'quis, pede. Praesent','dui. Fusce aliquam, enim nec tempus scelerisque,',1),(40,'velit','hendrerit id, ante. Nunc mauris',0),(41,'Sed','tortor at risus. Nunc ac sem ut dolor',0),(42,'molestie','Duis risus odio, auctor vitae, aliquet nec, imperdiet nec,',1),(43,'In condimentum. Donec','lacus. Mauris non dui nec urna',1),(44,'diam vel','dignissim tempor arcu. Vestibulum ut eros non',1),(45,'habitant morbi tristique','diam. Pellentesque habitant morbi tristique senectus et netus et',0),(46,'Donec consectetuer mauris','Suspendisse aliquet, sem ut cursus luctus, ipsum leo',0),(47,'fermentum','Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae',1),(48,'Pellentesque habitant','morbi tristique senectus et netus et malesuada fames',0),(49,'diam.','volutpat nunc sit amet metus.',1),(50,'Donec','vitae aliquam eros turpis non enim. Mauris quis turpis',0),(51,'nunc. Quisque ornare','ut, molestie in, tempus eu, ligula. Aenean euismod mauris',0),(52,'odio a','dolor dolor, tempus non, lacinia at, iaculis',0),(53,'nec, euismod','tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget',0),(54,'sem','In lorem. Donec elementum, lorem ut',0),(55,'Aliquam ornare,','per conubia nostra, per inceptos hymenaeos.',1),(56,'et','In at pede. Cras vulputate',0),(57,'ante','ornare sagittis felis. Donec tempor, est ac mattis semper, dui',0),(58,'quis diam. Pellentesque','accumsan neque et nunc. Quisque',0),(59,'et, euismod','ante ipsum primis in faucibus orci',1),(60,'Fusce feugiat. Lorem','Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.',0),(61,'Lorem ipsum dolor','orci. Ut semper pretium neque. Morbi',0),(62,'a, dui. Cras','nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu.',0),(63,'at augue id','a neque. Nullam ut nisi a odio semper cursus.',0),(64,'convallis erat, eget','eu lacus. Quisque imperdiet, erat',1),(65,'magna a neque.','turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi',1),(66,'justo sit amet','arcu et pede. Nunc sed orci lobortis',1),(67,'Nunc','dapibus rutrum, justo. Praesent luctus. Curabitur',0),(68,'orci.','ac turpis egestas. Fusce aliquet magna a neque.',0),(69,'Donec','mattis ornare, lectus ante dictum mi, ac mattis velit',1),(70,'arcu. Nunc mauris.','cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula',1),(71,'ad litora','ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci',0),(72,'tincidunt vehicula','libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet',0),(73,'nisl.','Sed auctor odio a purus. Duis elementum, dui quis',0),(74,'est tempor bibendum.','pharetra nibh. Aliquam ornare, libero at auctor',1),(75,'a','Proin vel nisl. Quisque fringilla',0),(76,'vehicula risus.','Duis volutpat nunc sit amet metus.',1),(77,'sit','aliquet magna a neque. Nullam ut nisi a odio',0),(78,'ut mi. Duis','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,',0),(79,'amet metus.','id magna et ipsum cursus vestibulum. Mauris magna. Duis',0),(80,'Donec feugiat','enim, gravida sit amet, dapibus id, blandit at, nisi. Cum',1),(81,'dignissim lacus.','bibendum fermentum metus. Aenean sed pede nec',0),(82,'quis','porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor',0),(83,'consectetuer','vel sapien imperdiet ornare. In faucibus. Morbi',1),(84,'at auctor','fames ac turpis egestas. Aliquam fringilla',1),(85,'nec,','malesuada vel, venenatis vel, faucibus id, libero. Donec',1),(86,'risus odio, auctor','quam. Curabitur vel lectus. Cum sociis natoque',0),(87,'Nam','condimentum. Donec at arcu. Vestibulum ante ipsum primis',0),(88,'dolor.','tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,',0),(89,'arcu. Morbi sit','ipsum ac mi eleifend egestas. Sed pharetra, felis',1),(90,'bibendum','adipiscing non, luctus sit amet, faucibus ut, nulla. Cras',1),(91,'consequat','dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare,',1),(92,'eget','Suspendisse sagittis. Nullam vitae diam.',1),(93,'interdum','semper. Nam tempor diam dictum sapien.',0),(94,'placerat, augue.','quam, elementum at, egestas a, scelerisque sed, sapien.',1),(95,'felis','Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,',1),(96,'non','Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.',0),(97,'et, lacinia vitae,','blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci',1),(98,'sed','conubia nostra, per inceptos hymenaeos. Mauris',0),(99,'Nullam lobortis quam','semper rutrum. Fusce dolor quam, elementum at, egestas a,',0),(100,'consequat','dapibus id, blandit at, nisi. Cum sociis natoque',1);
/*!40000 ALTER TABLE `Locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role_Abilities`
--

DROP TABLE IF EXISTS `Role_Abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_Abilities` (
  `roleID` smallint(6) NOT NULL,
  `abilityID` smallint(6) NOT NULL,
  PRIMARY KEY (`abilityID`,`roleID`),
  KEY `fkIdx_102` (`abilityID`),
  KEY `fkIdx_99` (`roleID`),
  CONSTRAINT `FK_102` FOREIGN KEY (`abilityID`) REFERENCES `Abilities` (`abilityID`),
  CONSTRAINT `FK_99` FOREIGN KEY (`roleID`) REFERENCES `Roles` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a list of abilities that are connected to each role.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_Abilities`
--

LOCK TABLES `Role_Abilities` WRITE;
/*!40000 ALTER TABLE `Role_Abilities` DISABLE KEYS */;
INSERT INTO `Role_Abilities` VALUES (56,1),(60,1),(52,3),(74,3),(50,5),(56,5),(5,6),(33,6),(83,8),(40,9),(48,9),(21,10),(26,10),(65,10),(65,11),(92,11),(52,14),(79,16),(16,18),(19,18),(85,18),(20,19),(1,20),(33,21),(61,21),(17,22),(55,23),(60,23),(74,23),(52,25),(67,26),(89,26),(15,27),(53,28),(90,28),(29,29),(67,29),(49,31),(1,32),(44,33),(28,36),(7,37),(3,38),(41,40),(81,41),(53,43),(34,44),(77,45),(75,46),(28,48),(97,49),(82,51),(18,54),(1,55),(88,55),(83,56),(57,58),(53,59),(45,63),(56,63),(45,64),(34,65),(37,65),(71,65),(39,66),(61,67),(66,68),(43,70),(53,74),(2,75),(12,75),(86,75),(14,76),(18,76),(45,76),(89,79),(22,80),(5,81),(10,81),(9,82),(65,82),(2,84),(42,84),(71,84),(60,87),(3,88),(7,88),(53,88),(67,91),(39,92),(58,93),(100,93),(12,94),(30,94),(18,95),(73,95),(20,97),(91,97),(99,97),(9,99);
/*!40000 ALTER TABLE `Role_Abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Roles` (
  `roleID` smallint(6) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(45) NOT NULL,
  `roleDescription` text NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='Role definitions and names. Each role is meant to be a collection of abilities with a name that binds the abilities together into a cohesive group.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (1,'sodales','velit in aliquet lobortis, nisi nibh'),(2,'hendrerit','laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,'),(3,'dictum.','dui. Cras pellentesque. Sed dictum. Proin eget'),(4,'Praesent','dolor sit amet, consectetuer adipiscing elit. Aliquam auctor,'),(5,'dolor','at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas'),(6,'Aliquam','pede, ultrices a, auctor non, feugiat nec,'),(7,'Lorem','lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus.'),(8,'a,','Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,'),(9,'egestas.','nonummy ultricies ornare, elit elit fermentum risus, at fringilla'),(10,'tincidunt','ornare. Fusce mollis. Duis sit amet diam eu dolor'),(11,'Proin','elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum'),(12,'nec,','velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae'),(13,'sed','sit amet ornare lectus justo eu arcu.'),(14,'lectus','Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus.'),(15,'nec,','nulla at sem molestie sodales. Mauris blandit enim consequat'),(16,'Vivamus','leo. Vivamus nibh dolor, nonummy ac, feugiat non,'),(17,'fringilla.','Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis'),(18,'odio.','vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,'),(19,'lacus,','mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris'),(20,'Vivamus','Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non,'),(21,'lacinia.','aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,'),(22,'orci.','dictum ultricies ligula. Nullam enim. Sed'),(23,'Fusce','sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum'),(24,'pede.','eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu.'),(25,'dolor','interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac'),(26,'aliquet','ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis'),(27,'sed','Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus'),(28,'vel,','Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur'),(29,'convallis','pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus.'),(30,'volutpat','a, enim. Suspendisse aliquet, sem ut cursus'),(31,'tellus.','mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam'),(32,'sapien.','odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis'),(33,'aliquam,','parturient montes, nascetur ridiculus mus. Aenean eget'),(34,'Nulla','varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In'),(35,'neque','sed, hendrerit a, arcu. Sed et'),(36,'est','sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices'),(37,'elementum,','faucibus leo, in lobortis tellus justo sit'),(38,'fermentum','mollis nec, cursus a, enim. Suspendisse aliquet, sem'),(39,'Curabitur','risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc'),(40,'Vivamus','sapien, cursus in, hendrerit consectetuer, cursus et, magna.'),(41,'dictum','elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.'),(42,'ipsum','risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi'),(43,'at,','et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu'),(44,'erat','at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu'),(45,'ipsum','justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris'),(46,'eu','tellus id nunc interdum feugiat. Sed'),(47,'ligula','lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede'),(48,'non,','dis parturient montes, nascetur ridiculus mus. Donec dignissim'),(49,'sodales','Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis'),(50,'pede.','imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,'),(51,'Duis','nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam'),(52,'Nam','fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci'),(53,'est,','adipiscing. Mauris molestie pharetra nibh. Aliquam'),(54,'fames','enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate'),(55,'Sed','erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer'),(56,'magna.','lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec'),(57,'dolor','ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer'),(58,'ultricies','Aenean gravida nunc sed pede. Cum sociis natoque'),(59,'nonummy','mi lacinia mattis. Integer eu lacus. Quisque imperdiet,'),(60,'Fusce','Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus'),(61,'arcu','litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut'),(62,'dictum','eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat'),(63,'quis,','Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis'),(64,'urna.','senectus et netus et malesuada fames ac'),(65,'diam','et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin'),(66,'nec,','et, eros. Proin ultrices. Duis volutpat nunc sit amet metus.'),(67,'convallis','a, enim. Suspendisse aliquet, sem ut'),(68,'sed','sit amet ornare lectus justo eu arcu. Morbi sit'),(69,'interdum.','orci. Ut semper pretium neque. Morbi'),(70,'Praesent','ligula. Nullam feugiat placerat velit. Quisque varius. Nam'),(71,'magna','dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.'),(72,'erat','cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In'),(73,'enim,','in, cursus et, eros. Proin ultrices. Duis volutpat nunc'),(74,'Donec','felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis,'),(75,'Fusce','ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a'),(76,'vel','augue. Sed molestie. Sed id risus'),(77,'velit.','tempor, est ac mattis semper, dui'),(78,'lorem','dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.'),(79,'mollis.','Phasellus dapibus quam quis diam. Pellentesque habitant'),(80,'magnis','a mi fringilla mi lacinia mattis.'),(81,'tellus.','nulla magna, malesuada vel, convallis in,'),(82,'In','Nunc quis arcu vel quam dignissim pharetra. Nam ac'),(83,'eu','Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,'),(84,'id','est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed'),(85,'odio.','elit. Curabitur sed tortor. Integer aliquam'),(86,'Fusce','quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia'),(87,'Cras','eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam'),(88,'ut','egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper'),(89,'nascetur','Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales'),(90,'non','ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae'),(91,'pharetra','lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus'),(92,'dictum','Mauris blandit enim consequat purus. Maecenas libero'),(93,'libero.','consequat nec, mollis vitae, posuere at, velit. Cras lorem'),(94,'ut','ipsum ac mi eleifend egestas. Sed'),(95,'molestie.','pretium neque. Morbi quis urna. Nunc quis arcu vel quam'),(96,'Integer','erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus'),(97,'orci','sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat'),(98,'dictum','dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing'),(99,'Phasellus','convallis convallis dolor. Quisque tincidunt pede ac urna. Ut'),(100,'mi,','auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum.');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Thresholds`
--

DROP TABLE IF EXISTS `Thresholds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Thresholds` (
  `thresholdID` smallint(6) NOT NULL AUTO_INCREMENT,
  `thresholdName` varchar(45) NOT NULL,
  `thresholdDescription` text NOT NULL,
  PRIMARY KEY (`thresholdID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1 COMMENT='Different thresholds and their definitions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Thresholds`
--

LOCK TABLES `Thresholds` WRITE;
/*!40000 ALTER TABLE `Thresholds` DISABLE KEYS */;
INSERT INTO `Thresholds` VALUES (1,'scelerisque sed,','sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum'),(2,'id','Proin velit. Sed malesuada augue ut lacus.'),(3,'sed','Aliquam adipiscing lobortis risus. In mi pede,'),(4,'adipiscing lobortis','tristique ac, eleifend vitae, erat.'),(5,'tristique','luctus. Curabitur egestas nunc sed libero.'),(6,'quis, pede.','dolor dapibus gravida. Aliquam tincidunt, nunc ac'),(7,'vitae, orci.','Nunc ullamcorper, velit in aliquet'),(8,'Suspendisse','sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh'),(9,'volutpat. Nulla','nibh. Quisque nonummy ipsum non arcu.'),(10,'varius.','quis turpis vitae purus gravida sagittis. Duis gravida.'),(11,'porttitor tellus','diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus'),(12,'Curae;','consectetuer adipiscing elit. Aliquam auctor, velit eget'),(13,'pede,','mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus'),(14,'montes,','vulputate eu, odio. Phasellus at augue id ante'),(15,'orci luctus','dui nec urna suscipit nonummy. Fusce fermentum fermentum'),(16,'nibh.','Vivamus euismod urna. Nullam lobortis quam a felis'),(17,'nulla. Integer','egestas a, dui. Cras pellentesque. Sed dictum.'),(18,'arcu.','Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non,'),(19,'iaculis','erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor.'),(20,'Nam ac','lectus rutrum urna, nec luctus felis purus ac'),(21,'semper','urna et arcu imperdiet ullamcorper. Duis at'),(22,'Quisque','sit amet lorem semper auctor. Mauris vel'),(23,'interdum. Nunc','ac orci. Ut semper pretium neque. Morbi quis urna.'),(24,'egestas a,','sit amet ante. Vivamus non lorem vitae odio sagittis semper.'),(25,'et ultrices','Nunc quis arcu vel quam dignissim pharetra. Nam ac'),(26,'mi lorem,','est arcu ac orci. Ut semper pretium'),(27,'odio vel','urna justo faucibus lectus, a sollicitudin orci sem'),(28,'Integer','ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,'),(29,'ac turpis','ante lectus convallis est, vitae'),(30,'laoreet','nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,'),(31,'mattis ornare,','ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat'),(32,'aliquet,','dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies'),(33,'amet, dapibus','faucibus. Morbi vehicula. Pellentesque tincidunt'),(34,'ullamcorper.','Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu'),(35,'Donec non','ornare tortor at risus. Nunc ac sem'),(36,'a,','ultrices sit amet, risus. Donec nibh enim,'),(37,'non, cursus','Lorem ipsum dolor sit amet, consectetuer adipiscing'),(38,'lacinia mattis.','Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean'),(39,'sit amet','eu dui. Cum sociis natoque penatibus et magnis dis parturient'),(40,'consequat','Quisque fringilla euismod enim. Etiam'),(41,'Praesent','sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet'),(42,'tempus, lorem','ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper'),(43,'sociis natoque','ac tellus. Suspendisse sed dolor.'),(44,'Cum sociis','nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras'),(45,'tristique aliquet.','placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna'),(46,'luctus et','varius. Nam porttitor scelerisque neque. Nullam nisl.'),(47,'nibh. Donec','elit. Etiam laoreet, libero et tristique'),(48,'dignissim','mauris ut mi. Duis risus odio, auctor vitae,'),(49,'neque.','risus. Quisque libero lacus, varius et,'),(50,'In','nisl elementum purus, accumsan interdum'),(51,'Phasellus','luctus et ultrices posuere cubilia Curae; Donec'),(52,'Nulla','dolor elit, pellentesque a, facilisis non, bibendum'),(53,'tortor','purus, in molestie tortor nibh sit amet'),(54,'lacus.','pellentesque a, facilisis non, bibendum sed, est.'),(55,'amet,','et, rutrum eu, ultrices sit amet, risus. Donec'),(56,'nonummy','sem. Nulla interdum. Curabitur dictum. Phasellus in felis.'),(57,'purus. Nullam','In ornare sagittis felis. Donec'),(58,'scelerisque','non enim commodo hendrerit. Donec porttitor tellus non magna. Nam'),(59,'ipsum porta','enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum'),(60,'quam','dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor'),(61,'magnis','dui. Cum sociis natoque penatibus et magnis dis parturient'),(62,'vulputate dui,','elementum purus, accumsan interdum libero dui nec'),(63,'Curae;','posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum.'),(64,'nec','Phasellus dapibus quam quis diam. Pellentesque'),(65,'penatibus et','commodo tincidunt nibh. Phasellus nulla.'),(66,'rutrum urna,','justo eu arcu. Morbi sit amet massa. Quisque porttitor'),(67,'ipsum. Suspendisse','fringilla est. Mauris eu turpis. Nulla'),(68,'inceptos','arcu. Vivamus sit amet risus. Donec egestas. Aliquam'),(69,'felis.','nec mauris blandit mattis. Cras'),(70,'vestibulum nec,','eu neque pellentesque massa lobortis ultrices.'),(71,'sit amet','Suspendisse non leo. Vivamus nibh dolor, nonummy'),(72,'ut','Aliquam ultrices iaculis odio. Nam'),(73,'sagittis.','vulputate eu, odio. Phasellus at'),(74,'viverra.','Integer in magna. Phasellus dolor'),(75,'Ut semper','pede et risus. Quisque libero lacus, varius et, euismod'),(76,'magna nec','Donec nibh enim, gravida sit amet, dapibus'),(77,'posuere vulputate,','libero lacus, varius et, euismod'),(78,'non, feugiat','Quisque porttitor eros nec tellus. Nunc lectus'),(79,'Duis risus','Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,'),(80,'dui lectus','eu enim. Etiam imperdiet dictum magna.'),(81,'varius','molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis'),(82,'Donec','pellentesque massa lobortis ultrices. Vivamus rhoncus.'),(83,'Vestibulum ante','vitae odio sagittis semper. Nam tempor diam'),(84,'massa. Integer','ipsum. Curabitur consequat, lectus sit amet'),(85,'sed','Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque'),(86,'quis','enim. Etiam imperdiet dictum magna. Ut'),(87,'netus','aliquam, enim nec tempus scelerisque, lorem'),(88,'neque.','mauris. Integer sem elit, pharetra ut,'),(89,'sit','dolor quam, elementum at, egestas a,'),(90,'mi','non magna. Nam ligula elit, pretium et, rutrum non,'),(91,'In ornare','magna. Nam ligula elit, pretium et, rutrum non, hendrerit id,'),(92,'ultrices iaculis','velit egestas lacinia. Sed congue, elit'),(93,'eget,','Nunc laoreet lectus quis massa.'),(94,'nec tempus','lobortis. Class aptent taciti sociosqu ad litora torquent'),(95,'ligula.','enim nisl elementum purus, accumsan interdum'),(96,'mauris','ligula tortor, dictum eu, placerat eget, venenatis'),(97,'sociis natoque','dui quis accumsan convallis, ante'),(98,'scelerisque, lorem','blandit viverra. Donec tempus, lorem'),(99,'Quisque','arcu vel quam dignissim pharetra. Nam ac nulla. In'),(100,'magnis dis','fermentum vel, mauris. Integer sem elit, pharetra ut,');
/*!40000 ALTER TABLE `Thresholds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'PartcallerTest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-24 15:15:14
