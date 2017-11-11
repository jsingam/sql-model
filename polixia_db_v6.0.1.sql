-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: polixia_db_v5.4_final
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `cBrokerEvent`
--

DROP TABLE IF EXISTS `cBrokerEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cBrokerEvent` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `EventType` char(20) NOT NULL,
  `CredStatus` char(50) DEFAULT NULL,
  `EventLogo` mediumblob,
  PRIMARY KEY (`Client`,`Version`,`EventType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cBrokerEvent`
--

LOCK TABLES `cBrokerEvent` WRITE;
/*!40000 ALTER TABLE `cBrokerEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `cBrokerEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cComplianceRuleDef`
--

DROP TABLE IF EXISTS `cComplianceRuleDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cComplianceRuleDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(20) NOT NULL,
  `ComplianceRule` char(50) NOT NULL,
  `Rule` int(2) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SectionID` char(50) NOT NULL,
  `PageID` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `Sign` char(2) DEFAULT NULL,
  `Value` char(100) DEFAULT NULL,
  `Operator` char(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`ComplianceRule`,`Rule`,`QuestID`,`CardID`,`SetID`,`SectionID`,`PageID`,`FieldName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cComplianceRuleDef`
--

LOCK TABLES `cComplianceRuleDef` WRITE;
/*!40000 ALTER TABLE `cComplianceRuleDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cComplianceRuleDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cComplianceRules`
--

DROP TABLE IF EXISTS `cComplianceRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cComplianceRules` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `ComplianceRule` char(50) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `ComplianceResource` mediumblob,
  `ConsentGroup` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`ComplianceRule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cComplianceRules`
--

LOCK TABLES `cComplianceRules` WRITE;
/*!40000 ALTER TABLE `cComplianceRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `cComplianceRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cEventCategory`
--

DROP TABLE IF EXISTS `cEventCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cEventCategory` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `EventCategory` char(20) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cEventCategory`
--

LOCK TABLES `cEventCategory` WRITE;
/*!40000 ALTER TABLE `cEventCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cEventCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cEventFollowUp`
--

DROP TABLE IF EXISTS `cEventFollowUp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cEventFollowUp` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `EventType` char(20) NOT NULL,
  `FollowUpEvent` char(50) NOT NULL,
  `Order` int(2) DEFAULT NULL,
  PRIMARY KEY (`Client`,`FollowUpEvent`,`EventType`,`Owner`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cEventFollowUp`
--

LOCK TABLES `cEventFollowUp` WRITE;
/*!40000 ALTER TABLE `cEventFollowUp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cEventFollowUp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cEventType`
--

DROP TABLE IF EXISTS `cEventType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cEventType` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `EventType` char(50) NOT NULL,
  `ResourceID` char(50) DEFAULT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `WalletTileID` char(50) DEFAULT NULL,
  `StoreTileID` char(50) DEFAULT NULL,
  `CreatorCode` char(50) DEFAULT NULL,
  `EventCategory` char(20) DEFAULT NULL,
  `Originator` char(20) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `Hidden` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`EventType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cEventType`
--

LOCK TABLES `cEventType` WRITE;
/*!40000 ALTER TABLE `cEventType` DISABLE KEYS */;
/*!40000 ALTER TABLE `cEventType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cFieldChoiceDef`
--

DROP TABLE IF EXISTS `cFieldChoiceDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cFieldChoiceDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `FieldCode` char(50) NOT NULL,
  `Order` int(4) DEFAULT NULL,
  `Text` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`FieldName`,`FieldCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cFieldChoiceDef`
--

LOCK TABLES `cFieldChoiceDef` WRITE;
/*!40000 ALTER TABLE `cFieldChoiceDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cFieldChoiceDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cFieldDef`
--

DROP TABLE IF EXISTS `cFieldDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cFieldDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `FieldType` char(10) DEFAULT NULL,
  `FieldLength` int(4) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `CheckTable` char(50) DEFAULT NULL,
  `DataEntryMask` char(100) DEFAULT NULL,
  `Lower` char(50) DEFAULT NULL,
  `Upper` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`FieldName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cFieldDef`
--

LOCK TABLES `cFieldDef` WRITE;
/*!40000 ALTER TABLE `cFieldDef` DISABLE KEYS */;
INSERT INTO `cFieldDef` VALUES ('','V1.0','POLIXIA','BENEFIT','CHAR',50,'NODIS',NULL,NULL,NULL,NULL),('','V1.0','POLIXIA','EMPLOYEESTATUS','CHAR',50,'NODIS',NULL,NULL,NULL,NULL),('','v1.0','POLIXIA','NAME','CHAR',50,'NODIS','',NULL,NULL,NULL),('','V1.0','POLIXIA','SAMPLEFIELD1','CHAR',50,'NODIS',NULL,NULL,NULL,NULL),('','V1.0','POLIXIA','SAMPLEFIELD2','CHAR',50,'nODIS',NULL,NULL,NULL,NULL),('','V1.0','POLIXIA','SAMPLEFIELD3','CHAR',50,'NODIS',NULL,NULL,NULL,NULL),('Dev','v1.0','polixia','field','CHAR',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cFieldDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cFieldTypeDef`
--

DROP TABLE IF EXISTS `cFieldTypeDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cFieldTypeDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `FieldType` char(10) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`FieldType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines Field Type definitions that will be hardcoded in App';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cFieldTypeDef`
--

LOCK TABLES `cFieldTypeDef` WRITE;
/*!40000 ALTER TABLE `cFieldTypeDef` DISABLE KEYS */;
INSERT INTO `cFieldTypeDef` VALUES ('','v1.0','char','letters');
/*!40000 ALTER TABLE `cFieldTypeDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cGraphicalResourceDef`
--

DROP TABLE IF EXISTS `cGraphicalResourceDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cGraphicalResourceDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `ResourceType` char(50) NOT NULL,
  `Owner` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `ResourceID` char(50) NOT NULL,
  `Platform` char(20) NOT NULL,
  `Resolution` char(10) NOT NULL,
  `FileType` char(10) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `GraphicResource` mediumblob,
  PRIMARY KEY (`Version`,`Client`,`ResourceType`,`Owner`,`StoreBrand`,`BrokerID`,`ResourceID`,`Platform`,`Resolution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cGraphicalResourceDef`
--

LOCK TABLES `cGraphicalResourceDef` WRITE;
/*!40000 ALTER TABLE `cGraphicalResourceDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cGraphicalResourceDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cGraphicalResourcesType`
--

DROP TABLE IF EXISTS `cGraphicalResourcesType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cGraphicalResourcesType` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `ResourceType` char(50) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `NormalizedResolution` char(20) DEFAULT NULL,
  `SampleResource` mediumblob,
  PRIMARY KEY (`Client`,`Version`,`ResourceType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cGraphicalResourcesType`
--

LOCK TABLES `cGraphicalResourcesType` WRITE;
/*!40000 ALTER TABLE `cGraphicalResourcesType` DISABLE KEYS */;
INSERT INTO `cGraphicalResourcesType` VALUES ('','V1.0','CARDLOGO','Logo used','Maryann',NULL);
/*!40000 ALTER TABLE `cGraphicalResourcesType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cItemCategoryDef`
--

DROP TABLE IF EXISTS `cItemCategoryDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cItemCategoryDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `ItemCategory` char(20) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`ItemCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cItemCategoryDef`
--

LOCK TABLES `cItemCategoryDef` WRITE;
/*!40000 ALTER TABLE `cItemCategoryDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cItemCategoryDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cLoBCategory`
--

DROP TABLE IF EXISTS `cLoBCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cLoBCategory` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `LoBCategory` char(50) NOT NULL,
  `ProductQuestID` char(50) DEFAULT NULL,
  `ApplicationQuestID` char(50) DEFAULT NULL,
  `StoreLoBLogo` mediumblob,
  `Title` char(100) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`LoBCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cLoBCategory`
--

LOCK TABLES `cLoBCategory` WRITE;
/*!40000 ALTER TABLE `cLoBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cLoBCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cOriginatorTypeDef`
--

DROP TABLE IF EXISTS `cOriginatorTypeDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cOriginatorTypeDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Originator` char(20) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Originator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cOriginatorTypeDef`
--

LOCK TABLES `cOriginatorTypeDef` WRITE;
/*!40000 ALTER TABLE `cOriginatorTypeDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cOriginatorTypeDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cQuest`
--

DROP TABLE IF EXISTS `cQuest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cQuest` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `Description` char(50) DEFAULT NULL,
  `FollowUpQuestID` char(50) DEFAULT NULL,
  `SourceTable` char(50) DEFAULT NULL,
  `ReviewSubmit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`QuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cQuest`
--

LOCK TABLES `cQuest` WRITE;
/*!40000 ALTER TABLE `cQuest` DISABLE KEYS */;
INSERT INTO `cQuest` VALUES ('Dev','v1.0','polixia','1','bla','1','no table',1);
/*!40000 ALTER TABLE `cQuest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cQuestCards`
--

DROP TABLE IF EXISTS `cQuestCards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cQuestCards` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `Order` int(4) DEFAULT NULL,
  `Title` char(100) DEFAULT NULL,
  `CardLogo` mediumblob,
  `NoSet` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`QuestID`,`CardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cQuestCards`
--

LOCK TABLES `cQuestCards` WRITE;
/*!40000 ALTER TABLE `cQuestCards` DISABLE KEYS */;
INSERT INTO `cQuestCards` VALUES ('Dev','v1.0','polixia','1','card',1,'title',NULL,1);
/*!40000 ALTER TABLE `cQuestCards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cQuestPageFields`
--

DROP TABLE IF EXISTS `cQuestPageFields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cQuestPageFields` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SecID` char(50) NOT NULL,
  `PageID` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `Order` int(4) DEFAULT NULL,
  `UserInput` tinyint(4) DEFAULT NULL,
  `ServerInput` tinyint(4) DEFAULT NULL,
  `MandatoryField` tinyint(4) DEFAULT NULL,
  `HiddenField` tinyint(4) DEFAULT NULL,
  `SourceTable` char(50) DEFAULT NULL,
  `SourceField` char(50) DEFAULT NULL,
  `ShowInTable` tinyint(4) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `FieldBehavior` char(10) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`QuestID`,`CardID`,`SetID`,`SecID`,`PageID`,`FieldName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cQuestPageFields`
--

LOCK TABLES `cQuestPageFields` WRITE;
/*!40000 ALTER TABLE `cQuestPageFields` DISABLE KEYS */;
INSERT INTO `cQuestPageFields` VALUES ('Dev','v1.0','polixia','1','card','set','section','page','field',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cQuestPageFields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cQuestPages`
--

DROP TABLE IF EXISTS `cQuestPages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cQuestPages` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SecID` char(50) NOT NULL,
  `PageID` char(50) NOT NULL,
  `Order` int(4) DEFAULT NULL,
  `Title` char(100) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `PageBehavior` char(10) DEFAULT NULL,
  `MainC2A` char(10) DEFAULT NULL,
  `MainC2ADescr` char(100) DEFAULT NULL,
  `MainC2ANext` char(50) DEFAULT NULL,
  `AltC2A` char(10) DEFAULT NULL,
  `AltC2ADescr` char(100) DEFAULT NULL,
  `AltC2ANext` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`QuestID`,`SetID`,`SecID`,`PageID`,`CardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cQuestPages`
--

LOCK TABLES `cQuestPages` WRITE;
/*!40000 ALTER TABLE `cQuestPages` DISABLE KEYS */;
INSERT INTO `cQuestPages` VALUES ('Dev','v1.0','polixia','1','card','set','section','page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cQuestPages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cQuestSections`
--

DROP TABLE IF EXISTS `cQuestSections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cQuestSections` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SecID` char(50) NOT NULL,
  `Title` char(100) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `SectionSet` int(2) DEFAULT NULL,
  `SectionNickNameField` char(50) DEFAULT NULL,
  `NoPage` tinyint(4) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `SectionBehavior` char(10) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`QuestID`,`CardID`,`SetID`,`SecID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cQuestSections`
--

LOCK TABLES `cQuestSections` WRITE;
/*!40000 ALTER TABLE `cQuestSections` DISABLE KEYS */;
INSERT INTO `cQuestSections` VALUES ('Dev','v1.0','polixia','1','card','set','section',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cQuestSections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cQuestSets`
--

DROP TABLE IF EXISTS `cQuestSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cQuestSets` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Owner` char(50) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SetMax` int(2) DEFAULT NULL,
  `Title` char(100) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `SetNickNameField` char(50) DEFAULT NULL,
  `NoSection` tinyint(4) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `SetBehavior` char(10) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`Owner`,`QuestID`,`CardID`,`SetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cQuestSets`
--

LOCK TABLES `cQuestSets` WRITE;
/*!40000 ALTER TABLE `cQuestSets` DISABLE KEYS */;
INSERT INTO `cQuestSets` VALUES ('Dev','v1.0','polixia','1','card','set',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cQuestSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cSettings`
--

DROP TABLE IF EXISTS `cSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cSettings` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Released` tinyint(4) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `PLXVersion` char(10) DEFAULT NULL,
  `PLXServerAddress` varchar(1024) DEFAULT NULL,
  `Password` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cSettings`
--

LOCK TABLES `cSettings` WRITE;
/*!40000 ALTER TABLE `cSettings` DISABLE KEYS */;
INSERT INTO `cSettings` VALUES ('dev','V0.9','test release',NULL,1,0,NULL,NULL,NULL),('dev','v1.0','go live release',NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cTile`
--

DROP TABLE IF EXISTS `cTile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cTile` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `TileID` char(50) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`TileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cTile`
--

LOCK TABLES `cTile` WRITE;
/*!40000 ALTER TABLE `cTile` DISABLE KEYS */;
/*!40000 ALTER TABLE `cTile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pApplication`
--

DROP TABLE IF EXISTS `pApplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pApplication` (
  `Client` char(3) NOT NULL,
  `ApplicationID` char(50) NOT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `WalletID` char(50) DEFAULT NULL,
  `UID` char(50) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `BrokerID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ApplicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pApplication`
--

LOCK TABLES `pApplication` WRITE;
/*!40000 ALTER TABLE `pApplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `pApplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pApplicationComplianceConsent`
--

DROP TABLE IF EXISTS `pApplicationComplianceConsent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pApplicationComplianceConsent` (
  `Client` char(3) NOT NULL,
  `ApplicationID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `Lob` char(50) NOT NULL,
  `ComplianceRule` char(20) NOT NULL,
  `ConsentedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`ApplicationID`,`StoreServer`,`StoreBrand`,`Lob`,`ComplianceRule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pApplicationComplianceConsent`
--

LOCK TABLES `pApplicationComplianceConsent` WRITE;
/*!40000 ALTER TABLE `pApplicationComplianceConsent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pApplicationComplianceConsent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pApplicationData`
--

DROP TABLE IF EXISTS `pApplicationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pApplicationData` (
  `Client` char(3) NOT NULL,
  `ApplicationID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `ElementID` int(10) NOT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `CardID` char(50) DEFAULT NULL,
  `SetID` char(50) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `SectionID` char(50) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `PageID` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` mediumblob,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ApplicationID`,`StoreServer`,`StoreBrand`,`LoB`,`ElementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pApplicationData`
--

LOCK TABLES `pApplicationData` WRITE;
/*!40000 ALTER TABLE `pApplicationData` DISABLE KEYS */;
/*!40000 ALTER TABLE `pApplicationData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pApplicationResult`
--

DROP TABLE IF EXISTS `pApplicationResult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pApplicationResult` (
  `Client` char(3) NOT NULL,
  `ApplicationID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `Lob` char(50) NOT NULL,
  `ObjectID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ApplicationID`,`StoreServer`,`StoreBrand`,`Lob`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pApplicationResult`
--

LOCK TABLES `pApplicationResult` WRITE;
/*!40000 ALTER TABLE `pApplicationResult` DISABLE KEYS */;
/*!40000 ALTER TABLE `pApplicationResult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pApplicationStore`
--

DROP TABLE IF EXISTS `pApplicationStore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pApplicationStore` (
  `Client` char(3) NOT NULL,
  `ApplicationID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `Lob` char(50) NOT NULL,
  `ProductQuestID` char(50) DEFAULT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `Status` char(10) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Submitted` timestamp NULL DEFAULT NULL,
  `FullFilled` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`ApplicationID`,`StoreServer`,`StoreBrand`,`Lob`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pApplicationStore`
--

LOCK TABLES `pApplicationStore` WRITE;
/*!40000 ALTER TABLE `pApplicationStore` DISABLE KEYS */;
/*!40000 ALTER TABLE `pApplicationStore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBroker`
--

DROP TABLE IF EXISTS `pBroker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBroker` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `Description` char(50) DEFAULT NULL,
  `BrokerQuestID` char(50) DEFAULT NULL,
  `BrokerColor` char(10) DEFAULT NULL,
  `ShieldLogo` mediumblob,
  `BannerLogo` mediumblob,
  `BrokerStatus` char(20) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `Archive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBroker`
--

LOCK TABLES `pBroker` WRITE;
/*!40000 ALTER TABLE `pBroker` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBroker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerEvent`
--

DROP TABLE IF EXISTS `pBrokerEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerEvent` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `EventType` char(50) DEFAULT NULL,
  `TriggerEventID` char(50) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoB` char(50) DEFAULT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `Submitted` timestamp NULL DEFAULT NULL,
  `Effective` timestamp NULL DEFAULT NULL,
  `ServerSync` timestamp NULL DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerEvent`
--

LOCK TABLES `pBrokerEvent` WRITE;
/*!40000 ALTER TABLE `pBrokerEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerEventData`
--

DROP TABLE IF EXISTS `pBrokerEventData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerEventData` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `ElementID` int(10) NOT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `CardID` char(50) DEFAULT NULL,
  `SetID` char(50) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `SectionID` char(50) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `PageID` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` mediumblob,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`EventID`,`StoreServer`,`StoreBrand`,`LoB`,`ElementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerEventData`
--

LOCK TABLES `pBrokerEventData` WRITE;
/*!40000 ALTER TABLE `pBrokerEventData` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerEventData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerLoB`
--

DROP TABLE IF EXISTS `pBrokerLoB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerLoB` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `BrokerLoB` char(50) NOT NULL,
  `BrokerStatus` char(20) DEFAULT NULL,
  `BrokerLoBLogo` mediumblob,
  `ProductQuestID` char(50) DEFAULT NULL,
  `Title` char(100) DEFAULT NULL,
  `SubTitle` char(100) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`BrokerLoB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerLoB`
--

LOCK TABLES `pBrokerLoB` WRITE;
/*!40000 ALTER TABLE `pBrokerLoB` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerLoB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerRef`
--

DROP TABLE IF EXISTS `pBrokerRef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerRef` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `SysID` char(50) NOT NULL,
  `BrokerRef` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`StoreServer`,`SysID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerRef`
--

LOCK TABLES `pBrokerRef` WRITE;
/*!40000 ALTER TABLE `pBrokerRef` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerRef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerSubscription`
--

DROP TABLE IF EXISTS `pBrokerSubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerSubscription` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `BrokerLoB` char(50) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Expiration` timestamp NULL DEFAULT NULL,
  `Submitted` timestamp NULL DEFAULT NULL,
  `CredStatus` char(20) DEFAULT NULL,
  `Approved` timestamp NULL DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `User` char(50) DEFAULT NULL,
  `Password` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`StoreServer`,`StoreBrand`,`LoB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerSubscription`
--

LOCK TABLES `pBrokerSubscription` WRITE;
/*!40000 ALTER TABLE `pBrokerSubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerSubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerSubscriptionChannel`
--

DROP TABLE IF EXISTS `pBrokerSubscriptionChannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerSubscriptionChannel` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `Channel` char(50) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`StoreServer`,`StoreBrand`,`LoB`,`Channel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerSubscriptionChannel`
--

LOCK TABLES `pBrokerSubscriptionChannel` WRITE;
/*!40000 ALTER TABLE `pBrokerSubscriptionChannel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerSubscriptionChannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pBrokerSubscriptionChannelDef`
--

DROP TABLE IF EXISTS `pBrokerSubscriptionChannelDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pBrokerSubscriptionChannelDef` (
  `Client` char(3) NOT NULL,
  `BrokerID` char(50) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `Channel` char(50) NOT NULL,
  `Rule` int(2) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SectionID` char(50) NOT NULL,
  `PageID` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `Sign` char(2) DEFAULT NULL,
  `Value` char(100) DEFAULT NULL,
  `Operator` char(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`BrokerID`,`StoreServer`,`StoreBrand`,`LoB`,`Channel`,`Rule`,`QuestID`,`CardID`,`SetID`,`SectionID`,`PageID`,`FieldName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pBrokerSubscriptionChannelDef`
--

LOCK TABLES `pBrokerSubscriptionChannelDef` WRITE;
/*!40000 ALTER TABLE `pBrokerSubscriptionChannelDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `pBrokerSubscriptionChannelDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pContent`
--

DROP TABLE IF EXISTS `pContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pContent` (
  `Client` char(3) NOT NULL,
  `WalletID` char(50) NOT NULL,
  `ObjectID` char(50) NOT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`WalletID`,`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pContent`
--

LOCK TABLES `pContent` WRITE;
/*!40000 ALTER TABLE `pContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pDashBoard`
--

DROP TABLE IF EXISTS `pDashBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pDashBoard` (
  `Client` char(3) NOT NULL,
  `ItemID` char(50) NOT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoB` char(50) DEFAULT NULL,
  `BrokerID` char(50) DEFAULT NULL,
  `Country` char(2) DEFAULT NULL,
  `Region` char(50) DEFAULT NULL,
  `Zip` char(20) DEFAULT NULL,
  `Premium` double DEFAULT NULL,
  `Currency` char(5) DEFAULT NULL,
  `Period` int(2) DEFAULT NULL,
  `Year` int(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pDashBoard`
--

LOCK TABLES `pDashBoard` WRITE;
/*!40000 ALTER TABLE `pDashBoard` DISABLE KEYS */;
/*!40000 ALTER TABLE `pDashBoard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pStores`
--

DROP TABLE IF EXISTS `pStores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pStores` (
  `Client` char(3) NOT NULL,
  `WalletID` char(50) NOT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`WalletID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pStores`
--

LOCK TABLES `pStores` WRITE;
/*!40000 ALTER TABLE `pStores` DISABLE KEYS */;
/*!40000 ALTER TABLE `pStores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pSystemEvent`
--

DROP TABLE IF EXISTS `pSystemEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pSystemEvent` (
  `Client` char(3) NOT NULL,
  `ItemID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `EventType` char(50) DEFAULT NULL,
  `TriggerEventID` char(50) DEFAULT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `Submitted` timestamp NULL DEFAULT NULL,
  `Effective` timestamp NULL DEFAULT NULL,
  `ServerSync` timestamp NULL DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`ItemID`,`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pSystemEvent`
--

LOCK TABLES `pSystemEvent` WRITE;
/*!40000 ALTER TABLE `pSystemEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pSystemEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pSystemEventData`
--

DROP TABLE IF EXISTS `pSystemEventData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pSystemEventData` (
  `Client` char(3) NOT NULL,
  `ItemID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `ElementID` int(10) NOT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `CardID` char(50) DEFAULT NULL,
  `SetID` char(50) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `SectionID` char(50) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `PageID` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` char(50) DEFAULT NULL,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ItemID`,`ElementID`,`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pSystemEventData`
--

LOCK TABLES `pSystemEventData` WRITE;
/*!40000 ALTER TABLE `pSystemEventData` DISABLE KEYS */;
/*!40000 ALTER TABLE `pSystemEventData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pSystemItem`
--

DROP TABLE IF EXISTS `pSystemItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pSystemItem` (
  `Client` char(3) NOT NULL,
  `ItemID` char(50) NOT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `WalletID` char(50) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `ItemCategory` char(20) DEFAULT NULL,
  `User` char(20) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Complete` tinyint(4) DEFAULT NULL,
  `Archive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pSystemItem`
--

LOCK TABLES `pSystemItem` WRITE;
/*!40000 ALTER TABLE `pSystemItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `pSystemItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pUID`
--

DROP TABLE IF EXISTS `pUID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pUID` (
  `Client` char(3) NOT NULL,
  `UID` char(50) NOT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `WalletID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pUID`
--

LOCK TABLES `pUID` WRITE;
/*!40000 ALTER TABLE `pUID` DISABLE KEYS */;
/*!40000 ALTER TABLE `pUID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pUIDData`
--

DROP TABLE IF EXISTS `pUIDData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pUIDData` (
  `Client` char(3) NOT NULL,
  `UID` char(50) NOT NULL,
  `Owner` char(50) NOT NULL,
  `ElementID` int(10) NOT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `CardID` char(50) DEFAULT NULL,
  `SetID` char(50) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `SectionID` char(50) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `PageID` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` mediumblob,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`UID`,`Owner`,`ElementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pUIDData`
--

LOCK TABLES `pUIDData` WRITE;
/*!40000 ALTER TABLE `pUIDData` DISABLE KEYS */;
/*!40000 ALTER TABLE `pUIDData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pWallet`
--

DROP TABLE IF EXISTS `pWallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pWallet` (
  `Client` char(3) NOT NULL,
  `WalletID` char(50) NOT NULL,
  `UID` char(50) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Password` char(20) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `ProductionType` char(10) DEFAULT NULL,
  `Country` char(3) DEFAULT NULL,
  `Status` char(10) DEFAULT NULL,
  PRIMARY KEY (`Client`,`WalletID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pWallet`
--

LOCK TABLES `pWallet` WRITE;
/*!40000 ALTER TABLE `pWallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `pWallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sAutoEventResponse`
--

DROP TABLE IF EXISTS `sAutoEventResponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sAutoEventResponse` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `TriggerEvent` char(50) NOT NULL,
  `AutoResponseRule` char(50) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `AutoEvent` char(50) DEFAULT NULL,
  `EventTemplate` char(50) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`AutoResponseRule`,`TriggerEvent`,`LoB`,`StoreBrand`,`StoreServer`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sAutoEventResponse`
--

LOCK TABLES `sAutoEventResponse` WRITE;
/*!40000 ALTER TABLE `sAutoEventResponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `sAutoEventResponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sAutoEventResponseDef`
--

DROP TABLE IF EXISTS `sAutoEventResponseDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sAutoEventResponseDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `TriggerEvent` char(50) NOT NULL,
  `AutoResponseRule` char(50) NOT NULL,
  `Rule` int(2) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SectionID` char(50) NOT NULL,
  `PageID` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `Sign` char(2) DEFAULT NULL,
  `Value` char(100) DEFAULT NULL,
  `Operator` char(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`FieldName`,`PageID`,`SectionID`,`SetID`,`CardID`,`QuestID`,`Rule`,`AutoResponseRule`,`TriggerEvent`,`LoB`,`StoreBrand`,`StoreServer`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sAutoEventResponseDef`
--

LOCK TABLES `sAutoEventResponseDef` WRITE;
/*!40000 ALTER TABLE `sAutoEventResponseDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `sAutoEventResponseDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sChannelSubscription`
--

DROP TABLE IF EXISTS `sChannelSubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sChannelSubscription` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `Channel` char(50) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`StoreBrand`,`LoB`,`Channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sChannelSubscription`
--

LOCK TABLES `sChannelSubscription` WRITE;
/*!40000 ALTER TABLE `sChannelSubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `sChannelSubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sChannelSubscriptionDef`
--

DROP TABLE IF EXISTS `sChannelSubscriptionDef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sChannelSubscriptionDef` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `Channel` char(20) NOT NULL,
  `Rule` int(2) NOT NULL,
  `QuestID` char(50) NOT NULL,
  `CardID` char(50) NOT NULL,
  `SetID` char(50) NOT NULL,
  `SectionID` char(50) NOT NULL,
  `PageID` char(50) NOT NULL,
  `FieldName` char(50) NOT NULL,
  `Sign` char(2) DEFAULT NULL,
  `Value` char(100) DEFAULT NULL,
  `Operator` char(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`StoreBrand`,`LoB`,`Channel`,`Rule`,`QuestID`,`CardID`,`SetID`,`SectionID`,`PageID`,`FieldName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sChannelSubscriptionDef`
--

LOCK TABLES `sChannelSubscriptionDef` WRITE;
/*!40000 ALTER TABLE `sChannelSubscriptionDef` DISABLE KEYS */;
/*!40000 ALTER TABLE `sChannelSubscriptionDef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sEventCompliance`
--

DROP TABLE IF EXISTS `sEventCompliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sEventCompliance` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `EventType` char(50) NOT NULL,
  `ComplianceRule` char(20) NOT NULL,
  `ConsentType` char(10) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`StoreBrand`,`LoB`,`EventType`,`ComplianceRule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sEventCompliance`
--

LOCK TABLES `sEventCompliance` WRITE;
/*!40000 ALTER TABLE `sEventCompliance` DISABLE KEYS */;
/*!40000 ALTER TABLE `sEventCompliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sEventSubscription`
--

DROP TABLE IF EXISTS `sEventSubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sEventSubscription` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `EventType` char(50) NOT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `Notification` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Version`,`Client`,`StoreServer`,`StoreBrand`,`LoB`,`EventType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sEventSubscription`
--

LOCK TABLES `sEventSubscription` WRITE;
/*!40000 ALTER TABLE `sEventSubscription` DISABLE KEYS */;
INSERT INTO `sEventSubscription` VALUES ('DEV','v1.0','polixia','StateFarm','AUTO','application',NULL,NULL);
/*!40000 ALTER TABLE `sEventSubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sLoBSubscription`
--

DROP TABLE IF EXISTS `sLoBSubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sLoBSubscription` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `LoB` char(50) NOT NULL,
  `LoBCategory` char(50) DEFAULT NULL,
  `SalesType` char(20) DEFAULT NULL,
  `LoBLogo` mediumblob,
  `Title` char(100) DEFAULT NULL,
  `SubTitle` char(100) DEFAULT NULL,
  `LoBStatus` char(20) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `Bundle` tinyint(4) DEFAULT NULL,
  `Expiration` int(11) DEFAULT NULL,
  `ApplePay` tinyint(4) DEFAULT NULL,
  `ACH` tinyint(4) DEFAULT NULL,
  `CreditCard` tinyint(4) DEFAULT NULL,
  `ProductQuestID` char(50) DEFAULT NULL,
  `BuildQuestID` char(50) DEFAULT NULL,
  `BrokerQuestID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`StoreBrand`,`LoB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sLoBSubscription`
--

LOCK TABLES `sLoBSubscription` WRITE;
/*!40000 ALTER TABLE `sLoBSubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `sLoBSubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sStoreBrand`
--

DROP TABLE IF EXISTS `sStoreBrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sStoreBrand` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `StoreBrand` char(50) NOT NULL,
  `StoreBrandStatus` char(20) DEFAULT NULL,
  `SalesType` char(20) DEFAULT NULL,
  `BrandColor` char(10) DEFAULT NULL,
  `ShieldLogo` mediumblob,
  `BannerLogo` mediumblob,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`,`StoreBrand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sStoreBrand`
--

LOCK TABLES `sStoreBrand` WRITE;
/*!40000 ALTER TABLE `sStoreBrand` DISABLE KEYS */;
/*!40000 ALTER TABLE `sStoreBrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sStoreServer`
--

DROP TABLE IF EXISTS `sStoreServer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sStoreServer` (
  `Client` char(3) NOT NULL,
  `Version` char(10) NOT NULL,
  `StoreServer` char(50) NOT NULL,
  `ServerAddress` varchar(1024) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Version`,`StoreServer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sStoreServer`
--

LOCK TABLES `sStoreServer` WRITE;
/*!40000 ALTER TABLE `sStoreServer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sStoreServer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrAuthActivity`
--

DROP TABLE IF EXISTS `svrAuthActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrAuthActivity` (
  `Client` char(3) NOT NULL,
  `AuthProfile` char(50) NOT NULL,
  `AuthObjectType` char(50) NOT NULL,
  `AuthActivityType` char(50) NOT NULL,
  PRIMARY KEY (`Client`,`AuthProfile`,`AuthObjectType`,`AuthActivityType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrAuthActivity`
--

LOCK TABLES `svrAuthActivity` WRITE;
/*!40000 ALTER TABLE `svrAuthActivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrAuthActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrAuthActivityType`
--

DROP TABLE IF EXISTS `svrAuthActivityType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrAuthActivityType` (
  `Client` char(3) NOT NULL,
  `AuthObjectType` char(50) NOT NULL,
  `AuthActivityType` char(50) NOT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`AuthObjectType`,`AuthActivityType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrAuthActivityType`
--

LOCK TABLES `svrAuthActivityType` WRITE;
/*!40000 ALTER TABLE `svrAuthActivityType` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrAuthActivityType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrAuthObject`
--

DROP TABLE IF EXISTS `svrAuthObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrAuthObject` (
  `Client` char(3) NOT NULL,
  `AuthProfile` char(50) NOT NULL,
  `AuthObjectType` char(50) NOT NULL,
  `AllowPLXEdit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`AuthProfile`,`AuthObjectType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrAuthObject`
--

LOCK TABLES `svrAuthObject` WRITE;
/*!40000 ALTER TABLE `svrAuthObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrAuthObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrAuthObjectType`
--

DROP TABLE IF EXISTS `svrAuthObjectType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrAuthObjectType` (
  `Client` char(3) NOT NULL,
  `AuthObjectType` char(50) NOT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`AuthObjectType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrAuthObjectType`
--

LOCK TABLES `svrAuthObjectType` WRITE;
/*!40000 ALTER TABLE `svrAuthObjectType` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrAuthObjectType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrAuthProfile`
--

DROP TABLE IF EXISTS `svrAuthProfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrAuthProfile` (
  `Client` char(3) NOT NULL,
  `AuthProfile` char(50) NOT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`AuthProfile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrAuthProfile`
--

LOCK TABLES `svrAuthProfile` WRITE;
/*!40000 ALTER TABLE `svrAuthProfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrAuthProfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrClient`
--

DROP TABLE IF EXISTS `svrClient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrClient` (
  `Client` int(3) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `Provider` tinyint(4) DEFAULT NULL,
  `Producer` tinyint(4) DEFAULT NULL,
  `IMPortal` tinyint(4) DEFAULT NULL,
  `IMProfile` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrClient`
--

LOCK TABLES `svrClient` WRITE;
/*!40000 ALTER TABLE `svrClient` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrClient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrCountry`
--

DROP TABLE IF EXISTS `svrCountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrCountry` (
  `Client` char(3) NOT NULL,
  `Country` char(3) NOT NULL,
  `Version` char(10) DEFAULT NULL,
  `UIDQuestID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrCountry`
--

LOCK TABLES `svrCountry` WRITE;
/*!40000 ALTER TABLE `svrCountry` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrCountry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrMenu`
--

DROP TABLE IF EXISTS `svrMenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrMenu` (
  `Client` char(3) NOT NULL,
  `Menu` char(20) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `MenuQuestID` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`Menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrMenu`
--

LOCK TABLES `svrMenu` WRITE;
/*!40000 ALTER TABLE `svrMenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrMenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrUsers`
--

DROP TABLE IF EXISTS `svrUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrUsers` (
  `Client` char(3) NOT NULL,
  `UserID` char(50) NOT NULL,
  `Usertype` char(20) DEFAULT NULL,
  `SystemEntity` char(50) DEFAULT NULL,
  `Email` char(100) DEFAULT NULL,
  `Phone` char(20) DEFAULT NULL,
  `DashboardColor` char(10) DEFAULT NULL,
  `AuthProfile` char(50) DEFAULT NULL,
  `Menu` char(20) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Password` char(50) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `SyncFile` blob,
  `Sync` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrUsers`
--

LOCK TABLES `svrUsers` WRITE;
/*!40000 ALTER TABLE `svrUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uEvent`
--

DROP TABLE IF EXISTS `uEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uEvent` (
  `Client` char(3) NOT NULL,
  `ObjectID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `EventType` char(50) DEFAULT NULL,
  `TriggerEventID` char(50) DEFAULT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `User` char(50) DEFAULT NULL,
  `ServerSync` timestamp NULL DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Submitted` timestamp NULL DEFAULT NULL,
  `Effective` timestamp NULL DEFAULT NULL,
  `Compliance` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`EventID`,`Client`,`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uEvent`
--

LOCK TABLES `uEvent` WRITE;
/*!40000 ALTER TABLE `uEvent` DISABLE KEYS */;
INSERT INTO `uEvent` VALUES ('','1111','1111','APPLICATION',NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL,NULL),('','1111','2222','APPLICATIO',NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL,NULL),('','2222','3333','APPLICATION',NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL,NULL),('','2222','4444','APPLICATION',NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL,NULL),('','1111','5555','APPLICATION',NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL,NULL),('','1111','6666','APPLICATION',NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `uEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uEventComplianceConsent`
--

DROP TABLE IF EXISTS `uEventComplianceConsent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uEventComplianceConsent` (
  `Client` char(3) NOT NULL,
  `ObjectID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `ComplianceRule` char(50) NOT NULL,
  `ConsentedOn` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Client`,`ObjectID`,`EventID`,`ComplianceRule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this might be changed to u event complaiance as sarindu has added cevent as uevent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uEventComplianceConsent`
--

LOCK TABLES `uEventComplianceConsent` WRITE;
/*!40000 ALTER TABLE `uEventComplianceConsent` DISABLE KEYS */;
/*!40000 ALTER TABLE `uEventComplianceConsent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uEventData`
--

DROP TABLE IF EXISTS `uEventData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uEventData` (
  `Client` char(3) NOT NULL,
  `ObjectID` char(50) NOT NULL,
  `EventID` char(50) NOT NULL,
  `ElementID` int(10) NOT NULL,
  `QuestID` char(50) DEFAULT NULL,
  `CardID` char(50) DEFAULT NULL,
  `SetID` char(50) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `SectionID` char(50) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `PageID` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` mediumblob,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ObjectID`,`EventID`,`ElementID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sarindu has ignored uPolicy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uEventData`
--

LOCK TABLES `uEventData` WRITE;
/*!40000 ALTER TABLE `uEventData` DISABLE KEYS */;
/*!40000 ALTER TABLE `uEventData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uObject`
--

DROP TABLE IF EXISTS `uObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uObject` (
  `Client` char(3) NOT NULL,
  `ObjectID` char(50) NOT NULL,
  `Version` char(10) DEFAULT NULL,
  `Location` char(10) DEFAULT NULL,
  `Type` char(10) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `Lob` char(50) DEFAULT NULL,
  `AuditItem` char(50) DEFAULT NULL,
  `WalletID` char(50) DEFAULT NULL,
  `InviteCode` char(10) DEFAULT NULL,
  `ApplicationID` char(50) DEFAULT NULL,
  `BrokerID` char(50) DEFAULT NULL,
  `BrokerRef` char(50) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `User` char(50) DEFAULT NULL,
  `ShieldResourceID` char(50) DEFAULT NULL,
  `FileTypeLogo` char(50) DEFAULT NULL,
  `Created` timestamp NULL DEFAULT NULL,
  `Expires` timestamp NULL DEFAULT NULL,
  `Accepted` timestamp NULL DEFAULT NULL,
  `Rejected` timestamp NULL DEFAULT NULL,
  `Archive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ObjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uObject`
--

LOCK TABLES `uObject` WRITE;
/*!40000 ALTER TABLE `uObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `uObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uObjectRef`
--

DROP TABLE IF EXISTS `uObjectRef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uObjectRef` (
  `Client` char(3) NOT NULL,
  `ObjectID` char(50) NOT NULL,
  `SysID` char(50) NOT NULL,
  `ObjectRef` char(50) DEFAULT NULL,
  PRIMARY KEY (`Client`,`ObjectID`,`SysID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uObjectRef`
--

LOCK TABLES `uObjectRef` WRITE;
/*!40000 ALTER TABLE `uObjectRef` DISABLE KEYS */;
/*!40000 ALTER TABLE `uObjectRef` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-10 11:12:28
