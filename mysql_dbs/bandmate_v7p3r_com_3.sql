-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bandmate_v7p3r_com_3
-- ------------------------------------------------------
-- Server version	5.1.56-log

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
-- Table structure for table `AreaGroupBlockTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaGroupBlockTypes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`gID`,`uID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaGroupBlockTypes`
--

LOCK TABLES `AreaGroupBlockTypes` WRITE;
/*!40000 ALTER TABLE `AreaGroupBlockTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaGroupBlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaGroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaGroups` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `agPermissions` varchar(64) NOT NULL,
  PRIMARY KEY (`cID`,`arHandle`,`gID`,`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaGroups`
--

LOCK TABLES `AreaGroups` WRITE;
/*!40000 ALTER TABLE `AreaGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,96,'Header',0,0,0),(2,96,'Column 1',0,0,0),(3,96,'Column 2',0,0,0),(4,96,'Column 3',0,0,0),(5,96,'Column 4',0,0,0),(6,95,'Primary',0,0,0),(7,95,'Secondary 1',0,0,0),(8,95,'Secondary 2',0,0,0),(9,95,'Secondary 3',0,0,0),(10,95,'Secondary 4',0,0,0),(11,95,'Secondary 5',0,0,0),(12,111,'Main',0,0,0),(13,112,'Main',0,0,0),(14,113,'Main',0,0,0),(15,114,'Main',0,0,0),(16,114,'Sidebar',0,0,0),(17,114,'Thumbnail Image',0,0,0),(18,114,'Header Image',0,0,0),(19,115,'Header Image',0,0,0),(20,116,'Header Image',0,0,0),(21,117,'Header Image',0,0,0),(22,1,'Header',0,0,0),(23,1,'Sidebar',0,0,0),(24,1,'Main',0,0,0),(25,1,'Header Image',0,0,0),(26,118,'Header',0,0,0),(27,118,'Sidebar',0,0,0),(28,118,'Main',0,0,0),(29,118,'Header Image',0,0,0),(30,122,'Header',0,0,0),(31,122,'Sidebar',0,0,0),(32,122,'Main',0,0,0),(33,122,'Header Image',0,0,0),(34,121,'Header',0,0,0),(35,121,'Sidebar',0,0,0),(36,121,'Main',0,0,0),(37,121,'Header Image',0,0,0),(38,120,'Header',0,0,0),(39,120,'Sidebar',0,0,0),(40,120,'Main',0,0,0),(41,120,'Header Image',0,0,0),(42,119,'Main',0,0,0),(43,119,'Sidebar',0,0,0),(44,119,'Header Image',0,0,0),(45,124,'Header Image',0,0,0),(46,124,'Main',0,0,0),(47,124,'Thumbnail Image',0,0,0),(48,124,'Sidebar',0,0,0),(49,123,'Main',0,0,0),(50,123,'Sidebar',0,0,0),(51,123,'Header Image',0,0,0),(52,1,'Site Name',0,0,1),(53,1,'Header Nav',0,0,0),(54,118,'Site Name',0,0,1),(55,118,'Header Nav',0,0,1),(56,1,'Header Content',0,0,1),(57,127,'Main',0,0,0),(58,1,'Additional Content',0,0,0),(59,1,'Footer Left',0,0,1),(60,128,'Main',0,0,0),(61,1,'Footer Middle',0,0,1),(62,129,'Main',0,0,0),(63,1,'Footer Right',0,0,1),(64,130,'Main',0,0,0),(65,118,'Logo',0,0,1),(66,131,'Main',0,0,0),(67,118,'Header Content',0,0,1),(68,118,'Additional Content',0,0,0),(69,118,'Footer Left',0,0,1),(70,118,'Footer Middle',0,0,1),(71,118,'Footer Right',0,0,1),(72,119,'Site Name',0,0,1),(73,119,'Header Nav',0,0,1),(74,119,'Logo',0,0,1),(75,119,'Header Content',0,0,1),(76,119,'Additional Content',0,0,0),(77,119,'Footer Left',0,0,1),(78,119,'Footer Middle',0,0,1),(79,119,'Footer Right',0,0,1),(80,1,'Logo',0,0,1),(81,1,'Header Extra Content',0,0,0),(82,1,'Footer',0,0,0),(83,1,'CTA Area',0,0,0),(84,107,'Main',0,0,0),(85,120,'Header Content',0,0,1),(86,120,'Additional Content',0,0,0),(87,120,'Footer Left',0,0,1),(88,120,'Footer Middle',0,0,1),(89,120,'Footer Right',0,0,1),(90,1,'Slogan',0,0,1),(91,134,'Main',0,0,0),(92,1,'Navigation',0,0,1),(93,135,'Main',0,0,0),(94,1,'Footer Content',0,0,0),(95,1,'Heading',0,0,1),(96,136,'Main',0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,1,2,1,0),(4,'exclude_nav','Exclude From Nav',1,1,0,0,1,3,1,0),(5,'exclude_page_list','Exclude From Page List',1,1,0,0,1,3,1,0),(6,'header_extra_content','Header Extra Content',1,1,0,0,1,2,1,0),(7,'exclude_search_index','Exclude From Search Index',1,1,0,0,1,3,1,0),(8,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,1,3,1,0),(9,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,1,3,2,0),(10,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,1,3,2,0),(11,'width','Width',1,1,0,0,1,6,3,0),(12,'height','Height',1,1,0,0,1,6,3,0),(13,'tags','Tags',1,1,0,0,1,8,1,0),(14,'filterable_image','Filterable Image',0,0,0,0,1,5,1,7),(15,'filterable_categories','Filterable Categories',0,0,0,0,1,8,1,7);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(6,1,4),(4,2,1),(5,2,2),(7,2,3),(8,2,4),(14,3,1),(15,3,2);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1),(3,'Filterable','framework_filterable',1,7,1,2);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Textarea',0),(3,'boolean','Boolean',0),(4,'date_time','Date Time',0),(5,'image_file','Image File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2013-05-09 17:57:37',1,2),(2,3,'2013-05-09 17:57:37',1,2),(3,3,'2013-05-09 17:57:37',1,2),(4,3,'2013-05-09 17:57:37',1,2),(5,3,'2013-05-09 17:57:37',1,2),(6,3,'2013-05-09 17:57:37',1,2),(7,3,'2013-05-09 17:57:37',1,2),(8,3,'2013-05-09 17:57:37',1,2),(9,3,'2013-05-09 17:57:37',1,2),(10,3,'2013-05-09 17:57:37',1,2),(11,4,'2013-05-09 17:57:37',1,3),(12,3,'2013-05-09 17:57:37',1,2),(13,3,'2013-05-09 17:57:37',1,2),(14,3,'2013-05-09 17:57:38',1,2),(15,3,'2013-05-09 17:57:38',1,2),(16,3,'2013-05-09 17:57:38',1,2),(17,3,'2013-05-09 17:57:38',1,2),(18,3,'2013-05-09 17:57:38',1,2),(19,3,'2013-05-09 17:57:38',1,2),(20,3,'2013-05-09 17:57:38',1,2),(21,3,'2013-05-09 17:57:38',1,2),(22,3,'2013-05-09 17:57:38',1,2),(23,3,'2013-05-09 17:57:38',1,2),(24,3,'2013-05-09 17:57:38',1,2),(25,3,'2013-05-09 17:57:38',1,2),(26,3,'2013-05-09 17:57:38',1,2),(27,3,'2013-05-09 17:57:38',1,2),(28,3,'2013-05-09 17:57:38',1,2),(29,4,'2013-05-09 17:57:38',1,3),(30,7,'2013-05-09 17:57:38',1,3),(31,4,'2013-05-09 17:57:38',1,3),(32,4,'2013-05-09 17:57:38',1,3),(33,3,'2013-05-09 17:57:38',1,2),(34,3,'2013-05-09 17:57:38',1,2),(35,3,'2013-05-09 17:57:38',1,2),(36,3,'2013-05-09 17:57:38',1,2),(37,3,'2013-05-09 17:57:38',1,2),(38,4,'2013-05-09 17:57:38',1,3),(39,3,'2013-05-09 17:57:38',1,2),(40,3,'2013-05-09 17:57:38',1,2),(41,3,'2013-05-09 17:57:38',1,2),(42,3,'2013-05-09 17:57:38',1,2),(43,3,'2013-05-09 17:57:38',1,2),(44,3,'2013-05-09 17:57:38',1,2),(45,3,'2013-05-09 17:57:38',1,2),(46,3,'2013-05-09 17:57:38',1,2),(47,3,'2013-05-09 17:57:38',1,2),(48,3,'2013-05-09 17:57:38',1,2),(49,3,'2013-05-09 17:57:38',1,2),(50,3,'2013-05-09 17:57:38',1,2),(51,3,'2013-05-09 17:57:38',1,2),(52,3,'2013-05-09 17:57:38',1,2),(53,3,'2013-05-09 17:57:38',1,2),(54,3,'2013-05-09 17:57:39',1,2),(55,3,'2013-05-09 17:57:39',1,2),(56,3,'2013-05-09 17:57:39',1,2),(57,3,'2013-05-09 17:57:39',1,2),(58,3,'2013-05-09 17:57:39',1,2),(59,3,'2013-05-09 17:57:39',1,2),(60,3,'2013-05-09 17:57:39',1,2),(61,3,'2013-05-09 17:57:39',1,2),(62,3,'2013-05-09 17:57:39',1,2),(63,3,'2013-05-09 17:57:39',1,2),(64,3,'2013-05-09 17:57:39',1,2),(65,3,'2013-05-09 17:57:39',1,2),(66,3,'2013-05-09 17:57:39',1,2),(67,7,'2013-05-09 17:57:39',1,3),(68,3,'2013-05-09 17:57:39',1,2),(69,3,'2013-05-09 17:57:39',1,2),(70,3,'2013-05-09 17:57:39',1,2),(71,3,'2013-05-09 17:57:39',1,2),(72,3,'2013-05-09 17:57:39',1,2),(73,4,'2013-05-09 17:57:39',1,3),(74,4,'2013-05-09 17:57:39',1,3),(75,7,'2013-05-09 17:57:39',1,3),(76,11,'2013-05-09 17:57:41',1,6),(77,12,'2013-05-09 17:57:41',1,6),(78,11,'2013-05-09 17:57:42',1,6),(79,12,'2013-05-09 17:57:42',1,6),(80,11,'2013-05-09 17:57:42',1,6),(81,12,'2013-05-09 17:57:42',1,6),(82,11,'2013-05-09 17:57:42',1,6),(83,12,'2013-05-09 17:57:42',1,6),(84,11,'2013-05-09 17:57:43',1,6),(85,12,'2013-05-09 17:57:43',1,6),(86,11,'2013-05-09 17:57:43',1,6),(87,12,'2013-05-09 17:57:43',1,6),(88,11,'2013-05-09 17:57:43',1,6),(89,12,'2013-05-09 17:57:43',1,6),(90,11,'2013-05-09 17:57:44',1,6),(91,12,'2013-05-09 17:57:44',1,6),(92,13,'2013-05-09 17:57:46',1,8),(93,13,'2013-05-09 17:57:46',1,8),(94,4,'2013-05-09 17:57:47',1,3),(95,5,'2013-05-09 17:57:47',1,3),(96,7,'2013-05-09 17:57:47',1,3),(97,13,'2013-05-09 17:57:47',1,8);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,56,55,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,600,465,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,350,460,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,1,0,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,400,210,0),(28,'date_archive','Blog Date Archive','Displays month archive for pages',1,0,0,0,500,350,0),(29,'lucky_cta','Lucky CTA','Add a Call to Action Block',1,0,0,0,370,350,1),(30,'sexy_cta','Sexy CTA','Add a Call to Action Block',1,0,0,0,370,350,2),(31,'resposta_flex_slider','Flex Slider','An awesome, fully responsive jQuery slider plugin.',1,0,0,0,500,200,7),(32,'simple_logo','Simple Logo','Add a Logo to \'Rigid\' Themes',1,0,0,0,370,350,8),(33,'simple_cta','Simple CTA','Add a Call to Action',1,0,0,0,370,350,8),(34,'vcard','vCard Address','A simple block to add vCard styled addresses.',1,0,0,0,370,350,8),(35,'power_slider_rigid','Power Slider','Image Slider with Power Phrases',1,0,0,0,750,400,8);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',9,1),(2,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',9,1),(3,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',9,1),(4,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',9,1),(5,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',9,1),(6,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',6,1),(7,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',7,1),(8,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',5,1),(9,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',5,1),(10,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',4,1),(11,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',3,1),(12,'','2013-05-09 17:57:39','2013-05-09 17:57:39',NULL,'1',5,1),(13,'Blog Content','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(14,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',25,1),(15,'Thumbnail Image','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',18,1),(16,'Header Image','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',18,1),(17,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',18,1),(18,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',18,1),(19,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',18,1),(20,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',8,1),(21,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(22,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',8,1),(23,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(24,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(25,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(26,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(27,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(28,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',18,1),(29,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(30,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',2,1),(31,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(32,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',9,1),(33,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',2,1),(34,'','2013-05-09 17:57:45','2013-05-09 17:57:45',NULL,'1',16,1),(35,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',9,1),(36,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',2,1),(37,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',9,1),(38,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',14,1),(39,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',9,1),(40,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',9,1),(41,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',8,1),(42,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',22,1),(43,'','2013-05-09 17:57:46','2013-05-09 17:57:46','blog_index_thumbnail.php','1',20,1),(44,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',9,1),(45,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',25,1),(46,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',28,1),(47,'Header Image','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',18,1),(48,'Blog Content','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',9,1),(49,'Thumbnail Image','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',18,1),(50,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',22,1),(51,'','2013-05-09 17:57:46','2013-05-09 17:57:46',NULL,'1',25,1),(52,'','2013-05-09 17:57:46','2013-05-09 17:57:47',NULL,'1',28,1),(55,NULL,'2013-05-11 12:13:48','2013-05-11 12:13:48',NULL,'1',8,1),(56,'Main Nav','2013-05-11 12:16:19','2013-05-11 12:16:20','header_menu.php','1',8,1),(57,NULL,'2013-05-11 12:22:09','2013-05-11 12:22:09',NULL,'1',9,1);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (3,1,3,1),(4,1,3,2),(5,1,3,3),(6,1,3,4),(7,1,3,5),(8,1,3,6),(9,1,3,7),(11,1,3,8),(12,1,3,9),(13,1,3,10),(14,1,4,11),(15,1,3,12),(16,1,3,13),(17,1,3,14),(18,1,3,15),(19,1,3,16),(20,1,3,17),(21,1,3,18),(22,1,3,19),(23,1,3,20),(24,1,3,21),(25,1,3,22),(26,1,3,23),(27,1,3,24),(28,1,3,25),(30,1,3,26),(31,1,3,27),(33,1,3,28),(37,1,4,29),(37,1,7,30),(39,1,4,31),(40,1,4,32),(41,1,3,33),(42,1,3,34),(43,1,3,35),(44,1,3,36),(45,1,3,37),(46,1,4,38),(48,1,3,39),(49,1,3,40),(50,1,3,41),(51,1,3,42),(52,1,3,43),(53,1,3,44),(55,1,3,45),(56,1,3,46),(57,1,3,47),(58,1,3,48),(60,1,3,49),(61,1,3,50),(62,1,3,51),(64,1,3,52),(65,1,3,53),(66,1,3,54),(67,1,3,55),(68,1,3,56),(69,1,3,57),(70,1,3,58),(71,1,3,59),(73,1,3,60),(74,1,3,61),(75,1,3,62),(76,1,3,63),(77,1,3,64),(78,1,3,65),(79,1,3,66),(82,1,7,67),(83,1,3,68),(84,1,3,69),(85,1,3,70),(86,1,3,71),(89,1,3,72),(95,1,4,74),(95,1,7,75),(96,1,4,73),(119,1,13,92),(123,1,4,94),(123,1,5,95),(123,1,7,96),(123,1,13,97),(124,1,13,93);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text,
  `ak_filterable_image` int(11) DEFAULT '0',
  `ak_filterable_categories` text,
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (3,NULL,NULL,'blog, blogging',0,0,NULL,0,0,NULL,0,NULL),(4,NULL,NULL,'new blog, write blog',0,0,NULL,0,0,NULL,0,NULL),(5,NULL,NULL,'blog drafts,composer',0,0,NULL,0,0,NULL,0,NULL),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0,NULL,0,NULL),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0,NULL,0,NULL),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias',0,0,NULL,0,0,NULL,0,NULL),(9,NULL,NULL,'find page, search page, search, find',0,0,NULL,0,0,NULL,0,NULL),(11,NULL,NULL,'files, add file, delete file, copy, move, alias',0,0,NULL,0,0,NULL,0,NULL),(12,NULL,NULL,'file, file attributes',0,0,NULL,0,0,NULL,0,NULL),(13,NULL,NULL,'files, category, categories',0,0,NULL,0,0,NULL,0,NULL),(14,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL),(15,NULL,NULL,'users, groups, people',0,0,NULL,0,0,NULL,0,NULL),(16,NULL,NULL,'find, search, people',0,0,NULL,0,0,NULL,0,NULL),(17,NULL,NULL,'user, group, people',0,0,NULL,0,0,NULL,0,NULL),(18,NULL,NULL,'user attributes',0,0,NULL,0,0,NULL,0,NULL),(19,NULL,NULL,'new user',0,0,NULL,0,0,NULL,0,NULL),(20,NULL,NULL,'new user group, new group, group',0,0,NULL,0,0,NULL,0,NULL),(21,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0,0,NULL,0,0,NULL,0,NULL),(22,NULL,NULL,'hits, pageviews, visitors, activity',0,0,NULL,0,0,NULL,0,NULL),(23,NULL,NULL,'forms, questions',0,0,NULL,0,0,NULL,0,NULL),(24,NULL,NULL,'survey, questions, quiz',0,0,NULL,0,0,NULL,0,NULL),(25,NULL,NULL,'forms, log, error, email, mysql, exception, survey',0,0,NULL,0,0,NULL,0,NULL),(26,NULL,NULL,'page types, themes, single pages',0,0,NULL,0,0,NULL,0,NULL),(27,NULL,NULL,'new theme, installed theme, active theme, change theme, template, css',0,0,NULL,0,0,NULL,0,NULL),(28,NULL,NULL,'add theme',0,0,NULL,0,0,NULL,0,NULL),(30,NULL,NULL,'custom theme, change theme, custom css, css',0,0,NULL,0,0,NULL,0,NULL),(31,NULL,NULL,'page type defaults, global block, global area',0,0,NULL,0,0,NULL,0,NULL),(33,NULL,NULL,'page attributes',0,0,NULL,0,0,NULL,0,NULL),(37,NULL,NULL,NULL,1,0,NULL,1,0,NULL,0,NULL),(39,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL),(40,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL),(41,NULL,NULL,'add-on, addon, add on, package,applications, ecommerce, discussions, forums, themes, templates, blocks',0,0,NULL,0,0,NULL,0,NULL),(42,NULL,NULL,'update, upgrade',0,0,NULL,0,0,NULL,0,NULL),(43,NULL,NULL,'concrete5.org, my account, marketplace',0,0,NULL,0,0,NULL,0,NULL),(44,NULL,NULL,'buy theme, new theme, install theme, marketplace, template',0,0,NULL,0,0,NULL,0,NULL),(45,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',0,0,NULL,0,0,NULL,0,NULL),(46,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL),(48,NULL,NULL,'website name',0,0,NULL,0,0,NULL,0,NULL),(49,NULL,NULL,'logo, favicon, iphone',0,0,NULL,0,0,NULL,0,NULL),(50,NULL,NULL,'tinymce, content block, fonts, editor',0,0,NULL,0,0,NULL,0,NULL),(51,NULL,NULL,'translate, translation',0,0,NULL,0,0,NULL,0,NULL),(52,NULL,NULL,'timezone',0,0,NULL,0,0,NULL,0,NULL),(53,NULL,NULL,'interface, quick nav, dashboard background, background image',0,0,NULL,0,0,NULL,0,NULL),(55,NULL,NULL,'vanity,pretty url, clean url, seo',0,0,NULL,0,0,NULL,0,NULL),(56,NULL,NULL,'traffic, statistics, google analytics, quant',0,0,NULL,0,0,NULL,0,NULL),(57,NULL,NULL,'turn off statistics',0,0,NULL,0,0,NULL,0,NULL),(58,NULL,NULL,'configure search, site search, search option',0,0,NULL,0,0,NULL,0,NULL),(60,NULL,NULL,'cache option, change cache, turn on cache, turn off cache, no cache, page cache, caching',0,0,NULL,0,0,NULL,0,NULL),(61,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',0,0,NULL,0,0,NULL,0,NULL),(62,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',0,0,NULL,0,0,NULL,0,NULL),(64,NULL,NULL,'editors, hide site, offline, private, public',0,0,NULL,0,0,NULL,0,NULL),(65,NULL,NULL,'file options, file manager',0,0,NULL,0,0,NULL,0,NULL),(66,NULL,NULL,'security, files, media ',0,0,NULL,0,0,NULL,0,NULL),(67,NULL,NULL,'security, users, actions, administrator, admin',0,0,NULL,0,0,NULL,0,NULL),(68,NULL,NULL,'security, lock ip, lock out, block ip',0,0,NULL,0,0,NULL,0,NULL),(69,NULL,NULL,'security, registration',0,0,NULL,0,0,NULL,0,NULL),(70,NULL,NULL,'antispam, block spam, security',0,0,NULL,0,0,NULL,0,NULL),(71,NULL,NULL,'lock site, under construction',0,0,NULL,0,0,NULL,0,NULL),(73,NULL,NULL,'profile',0,0,NULL,0,0,NULL,0,NULL),(74,NULL,NULL,'member profile, member page,community',0,0,NULL,0,0,NULL,0,NULL),(75,NULL,NULL,'signup, new user, community',0,0,NULL,0,0,NULL,0,NULL),(76,NULL,NULL,'smtp, mail settings',0,0,NULL,0,0,NULL,0,NULL),(77,NULL,NULL,'email server, mail settings, mail configuration',0,0,NULL,0,0,NULL,0,NULL),(78,NULL,NULL,'email server, mail settings, mail configuration, private message, message system',0,0,NULL,0,0,NULL,0,NULL),(79,NULL,NULL,'attribute configuration',0,0,NULL,0,0,NULL,0,NULL),(82,NULL,NULL,NULL,0,0,NULL,1,0,NULL,0,NULL),(83,NULL,NULL,'overrides, system info, debug, support,help',0,0,NULL,0,0,NULL,0,NULL),(84,NULL,NULL,'errors,exceptions, develop, support, help',0,0,NULL,0,0,NULL,0,NULL),(85,NULL,NULL,'logs, email, error, exceptions',0,0,NULL,0,0,NULL,0,NULL),(86,NULL,NULL,'security, alternate storage, hide files',0,0,NULL,0,0,NULL,0,NULL),(89,NULL,NULL,'upgrade, new version',0,0,NULL,0,0,NULL,0,NULL),(96,NULL,NULL,NULL,1,0,NULL,0,0,NULL,0,NULL),(95,NULL,NULL,NULL,1,0,NULL,1,0,NULL,0,NULL),(1,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL),(118,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL),(122,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL),(121,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL),(120,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL),(119,NULL,NULL,NULL,0,0,NULL,0,0,'\n',0,NULL),(124,NULL,NULL,NULL,0,0,NULL,0,0,'\ncomposer\nhello\nworld\nfirst post\n',0,NULL),(123,NULL,NULL,NULL,1,1,NULL,1,0,'\n',0,NULL),(135,NULL,NULL,NULL,0,0,NULL,0,0,NULL,0,NULL);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionAreaStyles` VALUES (1,3,'Navigation',2),(1,4,'Navigation',2),(1,4,'Logo',4);
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockPermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockPermissions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cbgPermissions` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`,`bID`,`gID`,`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockPermissions`
--

LOCK TABLES `CollectionVersionBlockPermissions` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlockPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (118,1,18,'Header Image',0),(122,1,19,'Header Image',0),(121,1,18,'Header Image',0),(120,1,19,'Header Image',0),(119,1,19,'Header Image',0),(124,1,14,'Sidebar',0),(123,1,19,'Header Image',0),(1,2,28,'Header Image',0),(1,2,27,'Main',0),(1,2,25,'Sidebar',0),(1,2,24,'Header',0),(1,2,26,'Sidebar',0),(1,3,28,'Header Image',0),(1,3,27,'Main',0),(1,3,25,'Sidebar',0),(1,3,24,'Header',0),(1,3,26,'Sidebar',0),(1,4,24,'Header',0),(1,4,25,'Sidebar',0),(1,4,27,'Main',0),(1,4,28,'Header Image',0),(1,4,26,'Sidebar',0),(135,2,56,'Main',3),(131,1,57,'Main',6);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (96,1,1,'Header',0,1,0,0),(96,1,2,'Column 1',0,1,0,0),(96,1,3,'Column 2',0,1,0,0),(96,1,4,'Column 3',0,1,0,0),(96,1,5,'Column 4',0,1,0,0),(95,1,6,'Primary',0,1,0,0),(95,1,7,'Primary',1,1,0,0),(95,1,8,'Secondary 1',0,1,0,0),(95,1,9,'Secondary 2',0,1,0,0),(95,1,10,'Secondary 3',0,1,0,0),(95,1,11,'Secondary 4',0,1,0,0),(95,1,12,'Secondary 5',0,1,0,0),(114,1,13,'Main',0,1,0,0),(114,1,14,'Sidebar',0,1,0,0),(114,1,15,'Thumbnail Image',0,1,0,0),(114,1,16,'Header Image',0,1,0,0),(115,1,17,'Header Image',0,1,0,0),(116,1,18,'Header Image',0,1,0,0),(117,1,19,'Header Image',0,1,0,0),(111,1,20,'Main',0,1,0,0),(112,1,21,'Main',0,1,0,0),(112,1,22,'Main',1,1,0,0),(113,1,23,'Main',0,1,0,0),(1,1,24,'Header',0,1,0,0),(1,1,25,'Sidebar',0,1,0,0),(1,1,26,'Sidebar',1,1,0,0),(1,1,27,'Main',0,1,0,0),(1,1,28,'Header Image',0,1,0,0),(118,1,29,'Header',0,1,0,0),(118,1,30,'Sidebar',0,1,0,0),(118,1,31,'Main',0,1,0,0),(118,1,18,'Header Image',0,0,0,0),(122,1,32,'Header',0,1,0,0),(122,1,33,'Sidebar',0,1,0,0),(122,1,34,'Main',0,1,0,1),(122,1,19,'Header Image',0,0,0,0),(121,1,35,'Header',0,1,0,0),(121,1,36,'Sidebar',0,1,0,0),(121,1,37,'Main',0,1,0,0),(121,1,38,'Main',1,1,0,0),(121,1,18,'Header Image',0,0,0,0),(120,1,39,'Header',0,1,0,0),(120,1,40,'Sidebar',0,1,0,0),(120,1,41,'Sidebar',1,1,0,0),(120,1,42,'Main',0,1,0,0),(120,1,19,'Header Image',0,0,0,0),(119,1,43,'Main',0,1,0,0),(119,1,44,'Sidebar',0,1,0,0),(119,1,45,'Sidebar',1,1,0,0),(119,1,46,'Sidebar',2,1,0,0),(119,1,19,'Header Image',0,0,0,0),(124,1,47,'Header Image',0,1,0,0),(124,1,14,'Sidebar',0,0,0,0),(124,1,48,'Main',0,1,0,0),(124,1,49,'Thumbnail Image',0,1,0,0),(123,1,19,'Header Image',0,0,0,0),(123,1,50,'Main',0,1,0,0),(123,1,51,'Sidebar',0,1,0,0),(123,1,52,'Sidebar',1,1,0,0),(1,2,28,'Header Image',0,0,0,0),(1,2,27,'Main',0,0,0,0),(1,2,25,'Sidebar',0,0,0,0),(1,2,24,'Header',0,0,0,0),(1,2,26,'Sidebar',1,0,0,0),(1,3,28,'Header Image',0,0,0,0),(1,3,27,'Main',0,0,0,0),(1,3,25,'Sidebar',0,0,0,0),(1,3,24,'Header',0,0,0,0),(1,3,26,'Sidebar',1,0,0,0),(135,1,55,'Main',0,1,0,0),(131,1,57,'Main',0,1,0,0),(1,4,24,'Header',0,0,0,0),(1,4,25,'Sidebar',0,0,0,0),(1,4,27,'Main',0,0,0,0),(1,4,28,'Header Image',0,0,0,0),(1,4,26,'Sidebar',1,0,0,0),(135,2,56,'Main',0,1,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
INSERT INTO `CollectionVersionRelatedEdits` VALUES (1,3,135,1),(1,4,131,1),(1,4,135,2);
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2013-05-09 17:57:31','2013-05-09 17:57:31','Version 1',0,0,1,NULL,NULL),(2,1,'Dashboard','dashboard','','2013-05-09 17:57:33','2013-05-09 17:57:33','Initial Version',1,1,1,NULL,NULL),(3,1,'Composer','composer','Write for your site.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(4,1,'Write','write','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(5,1,'Drafts','drafts','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(7,1,'Full Sitemap','full','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(8,1,'Flat View','explore','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(9,1,'Page Search','search','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(10,1,'Files','files','All documents and images.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(11,1,'File Manager','search','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(12,1,'Attributes','attributes','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(13,1,'File Sets','sets','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(14,1,'Add File Set','add_set','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(16,1,'Search Users','search','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(17,1,'User Groups','groups','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(18,1,'Attributes','attributes','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(19,1,'Add User','add','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(20,1,'Add Group','add_group','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(21,1,'Reports','reports','Get data from forms and logs.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(22,1,'Statistics','statistics','View your site activity.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(23,1,'Form Results','forms','Get submission data.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(24,1,'Surveys','surveys','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(25,1,'Logs','logs','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(26,1,'Pages & Themes','pages','Reskin your site.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(27,1,'Themes','themes','Reskin your site.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(28,1,'Add','add','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(29,1,'Inspect','inspect','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(30,1,'Customize','customize','','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(31,1,'Page Types','types','What goes in your site.','2013-05-09 17:57:34','2013-05-09 17:57:34','Initial Version',1,1,1,NULL,NULL),(32,1,'Add Page Type','add','Add page types to your site.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(33,1,'Attributes','attributes','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(34,1,'Single Pages','single','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(35,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(36,1,'Stacks','stacks','Share content across your site.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(37,1,'Stack List','list','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(38,1,'Block Types','types','Manage the installed block types in your site.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(39,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(40,1,'Dashboard','news','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(41,1,'Add Functionality','install','Install add-ons & themes.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(42,1,'Update Add-Ons','update','Update your installed packages.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(43,1,'Connect to the Community','connect','Connect to the concrete5 community.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(44,1,'Get More Themes','themes','Download themes from concrete5.org.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(45,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(46,1,'System & Settings','system','Secure and setup your site.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(47,1,'Basics','basics','Basic information about your website.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(48,1,'Site Name','site_name','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(49,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(50,1,'Rich Text Editor','editor','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(51,1,'Languages','multilingual','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(52,1,'Time Zone','timezone','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(53,1,'Interface Preferences','interface','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(54,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(55,1,'Pretty URLs','urls','','2013-05-09 17:57:35','2013-05-09 17:57:35','Initial Version',1,1,1,NULL,NULL),(56,1,'Tracking Codes','tracking_codes','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(57,1,'Statistics','statistics','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(58,1,'Search Index','search_index','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(59,1,'Optimization','optimization','Keep your site running well.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(60,1,'Cache & Speed Settings','cache','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(61,1,'Clear Cache','clear_cache','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(62,1,'Automated Jobs','jobs','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(63,1,'Permissions & Access','permissions','Control who sees and edits your site.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(64,1,'Site Access','site','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(65,1,'File Manager Permissions','files','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(66,1,'Allowed File Types','file_types','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(67,1,'Task Permissions','tasks','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(68,1,'IP Blacklist','ip_blacklist','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(69,1,'Captcha Setup','captcha','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(70,1,'Spam Control','antispam','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(71,1,'Maintenance Mode','maintenance_mode','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(72,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(73,1,'Login Destination','postlogin','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(74,1,'Public Profiles','profiles','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(75,1,'Public Registration','public_registration','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(76,1,'Email','mail','Control how your site send and processes mail.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(77,1,'SMTP Method','method','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(78,1,'Email Importers','importers','','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(79,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(80,1,'Sets','sets','Group attributes into sets for easier organization','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(81,1,'Types','types','Choose which attribute types are available for different items.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(82,1,'Environment','environment','Advanced settings for web developers.','2013-05-09 17:57:36','2013-05-09 17:57:36','Initial Version',1,1,1,NULL,NULL),(83,1,'Environment Information','info','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(84,1,'Debug Settings','debug','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(85,1,'Logging Settings','logging','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(86,1,'File Storage Locations','file_storage_locations','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(87,1,'Backup & Restore','backup_restore','Backup or restore your website.','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(88,1,'Backup Database','backup','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(89,1,'Update concrete5','update','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(90,1,'Database XML','database','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(91,1,'Composer','composer','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(92,1,'',NULL,NULL,'2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,NULL,NULL,NULL),(93,1,'',NULL,NULL,'2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,NULL,NULL,NULL),(94,1,'',NULL,NULL,'2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,NULL,NULL,NULL),(95,1,'Customize Dashboard Home','home','','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(96,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2013-05-09 17:57:37','2013-05-09 17:57:37','Initial Version',1,1,1,NULL,NULL),(97,1,'Drafts','!drafts','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(98,1,'Trash','!trash','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(99,1,'Stacks','!stacks','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(100,1,'Login','login','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(101,1,'Register','register','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(102,1,'Profile','profile','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(103,1,'Edit','edit','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(104,1,'Avatar','avatar','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(105,1,'Messages','messages','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(106,1,'Friends','friends','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(107,1,'Page Not Found','page_not_found','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(108,1,'Page Forbidden','page_forbidden','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(109,1,'Download File','download_file','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(110,1,'Members','members','','2013-05-09 17:57:40','2013-05-09 17:57:40','Initial Version',1,1,1,NULL,NULL),(111,1,'Header Nav','header-nav',NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(112,1,'Side Nav','side-nav',NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(113,1,'Site Name','site-name',NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(114,1,'',NULL,NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,NULL,NULL,NULL),(115,1,'',NULL,NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,NULL,NULL,NULL),(116,1,'',NULL,NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,NULL,NULL,NULL),(117,1,'',NULL,NULL,'2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,NULL,NULL,NULL),(118,1,'About','about','','2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(119,1,'Blog','blog','','2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(120,1,'Search','search','','2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(121,1,'Contact Us','contact-us','','2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(122,1,'Guestbook','guestbook','','2013-05-09 17:57:44','2013-05-09 17:57:44','Initial Version',1,1,1,NULL,NULL),(123,1,'Blog Archives','blog-archives','','2013-05-09 17:57:45','2013-05-09 17:57:45','Initial Version',1,1,1,NULL,NULL),(124,1,'Hello World','hello-world','This is my first blog post!','2013-05-09 17:57:45','2013-05-09 17:57:45','Initial Version',1,1,1,NULL,NULL),(125,1,'',NULL,NULL,'2013-05-09 18:36:32','2013-05-09 18:36:32','Initial Version',1,1,NULL,NULL,NULL),(126,1,'',NULL,NULL,'2013-05-09 18:36:32','2013-05-09 18:36:32','Initial Version',1,1,NULL,NULL,NULL),(127,1,'Header Content','header-content',NULL,'2013-05-09 18:37:46','2013-05-09 18:37:46','Initial Version',1,1,1,NULL,NULL),(128,1,'Footer Left','footer-left',NULL,'2013-05-09 18:37:46','2013-05-09 18:37:46','Initial Version',1,1,1,NULL,NULL),(129,1,'Footer Middle','footer-middle',NULL,'2013-05-09 18:37:47','2013-05-09 18:37:47','Initial Version',1,1,1,NULL,NULL),(130,1,'Footer Right','footer-right',NULL,'2013-05-09 18:37:47','2013-05-09 18:37:47','Initial Version',1,1,1,NULL,NULL),(131,1,'Logo','logo',NULL,'2013-05-09 18:39:13','2013-05-09 18:39:13','Initial Version',1,1,1,NULL,NULL),(132,1,'',NULL,NULL,'2013-05-10 15:11:05','2013-05-10 15:11:05','Initial Version',1,1,NULL,NULL,NULL),(133,1,'Resposta Framework','resposta-framework','Framework  Documentation','2013-05-10 15:11:14','2013-05-10 15:11:14','Initial Version',1,1,1,NULL,NULL),(1,2,'Home','home','','2013-05-09 17:57:31','2013-05-10 15:11:54','Version 2',0,0,1,1,NULL),(134,1,'Slogan','slogan',NULL,'2013-05-10 16:49:53','2013-05-10 16:49:53','Initial Version',1,1,1,NULL,NULL),(135,1,'Navigation','navigation',NULL,'2013-05-10 16:49:53','2013-05-10 16:49:53','Initial Version',1,0,1,1,NULL),(136,1,'Heading','heading',NULL,'2013-05-10 16:51:58','2013-05-10 16:51:58','Initial Version',1,1,1,NULL,NULL),(137,1,'',NULL,NULL,'2013-05-10 17:01:11','2013-05-10 17:01:11','Initial Version',1,1,NULL,NULL,NULL),(1,3,'Home','home','','2013-05-09 17:57:31','2013-05-11 07:21:08','New Version 3',1,0,1,1,NULL),(135,2,'Navigation','navigation',NULL,'2013-05-10 16:49:53','2013-05-11 12:16:19','New Version 2',0,1,1,NULL,NULL),(1,4,'Home','home','','2013-05-09 17:57:31','2013-05-11 12:16:19','New Version 4',0,0,1,NULL,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2013-05-09 17:57:31','2013-05-11 12:14:06','home'),(2,'2013-05-09 17:57:33','2013-05-09 17:57:34','dashboard'),(3,'2013-05-09 17:57:34','2013-05-09 17:57:34','composer'),(4,'2013-05-09 17:57:34','2013-05-09 17:57:34','write'),(5,'2013-05-09 17:57:34','2013-05-09 17:57:34','drafts'),(6,'2013-05-09 17:57:34','2013-05-09 17:57:34','sitemap'),(7,'2013-05-09 17:57:34','2013-05-09 17:57:34','full'),(8,'2013-05-09 17:57:34','2013-05-09 17:57:34','explore'),(9,'2013-05-09 17:57:34','2013-05-09 17:57:34','search'),(10,'2013-05-09 17:57:34','2013-05-09 17:57:34','files'),(11,'2013-05-09 17:57:34','2013-05-09 17:57:34','search'),(12,'2013-05-09 17:57:34','2013-05-09 17:57:34','attributes'),(13,'2013-05-09 17:57:34','2013-05-09 17:57:34','sets'),(14,'2013-05-09 17:57:34','2013-05-09 17:57:34','add_set'),(15,'2013-05-09 17:57:34','2013-05-09 17:57:34','users'),(16,'2013-05-09 17:57:34','2013-05-09 17:57:34','search'),(17,'2013-05-09 17:57:34','2013-05-09 17:57:34','groups'),(18,'2013-05-09 17:57:34','2013-05-09 17:57:34','attributes'),(19,'2013-05-09 17:57:34','2013-05-09 17:57:34','add'),(20,'2013-05-09 17:57:34','2013-05-09 17:57:34','add_group'),(21,'2013-05-09 17:57:34','2013-05-09 17:57:34','reports'),(22,'2013-05-09 17:57:34','2013-05-09 17:57:34','statistics'),(23,'2013-05-09 17:57:34','2013-05-09 17:57:34','forms'),(24,'2013-05-09 17:57:34','2013-05-09 17:57:34','surveys'),(25,'2013-05-09 17:57:34','2013-05-09 17:57:34','logs'),(26,'2013-05-09 17:57:34','2013-05-09 17:57:34','pages'),(27,'2013-05-09 17:57:34','2013-05-09 17:57:34','themes'),(28,'2013-05-09 17:57:34','2013-05-09 17:57:34','add'),(29,'2013-05-09 17:57:34','2013-05-09 17:57:34','inspect'),(30,'2013-05-09 17:57:34','2013-05-09 17:57:34','customize'),(31,'2013-05-09 17:57:34','2013-05-09 17:57:35','types'),(32,'2013-05-09 17:57:35','2013-05-09 17:57:35','add'),(33,'2013-05-09 17:57:35','2013-05-09 17:57:35','attributes'),(34,'2013-05-09 17:57:35','2013-05-09 17:57:35','single'),(35,'2013-05-09 17:57:35','2013-05-09 17:57:35','blocks'),(36,'2013-05-09 17:57:35','2013-05-09 17:57:35','stacks'),(37,'2013-05-09 17:57:35','2013-05-09 17:57:35','list'),(38,'2013-05-09 17:57:35','2013-05-09 17:57:35','types'),(39,'2013-05-09 17:57:35','2013-05-09 17:57:35','extend'),(40,'2013-05-09 17:57:35','2013-05-09 17:57:35','news'),(41,'2013-05-09 17:57:35','2013-05-09 17:57:35','install'),(42,'2013-05-09 17:57:35','2013-05-09 17:57:35','update'),(43,'2013-05-09 17:57:35','2013-05-09 17:57:35','connect'),(44,'2013-05-09 17:57:35','2013-05-09 17:57:35','themes'),(45,'2013-05-09 17:57:35','2013-05-09 17:57:35','add-ons'),(46,'2013-05-09 17:57:35','2013-05-09 17:57:35','system'),(47,'2013-05-09 17:57:35','2013-05-09 17:57:35','basics'),(48,'2013-05-09 17:57:35','2013-05-09 17:57:35','site_name'),(49,'2013-05-09 17:57:35','2013-05-09 17:57:35','icons'),(50,'2013-05-09 17:57:35','2013-05-09 17:57:35','editor'),(51,'2013-05-09 17:57:35','2013-05-09 17:57:35','multilingual'),(52,'2013-05-09 17:57:35','2013-05-09 17:57:35','timezone'),(53,'2013-05-09 17:57:35','2013-05-09 17:57:35','interface'),(54,'2013-05-09 17:57:35','2013-05-09 17:57:35','seo'),(55,'2013-05-09 17:57:35','2013-05-09 17:57:35','urls'),(56,'2013-05-09 17:57:36','2013-05-09 17:57:36','tracking_codes'),(57,'2013-05-09 17:57:36','2013-05-09 17:57:36','statistics'),(58,'2013-05-09 17:57:36','2013-05-09 17:57:36','search_index'),(59,'2013-05-09 17:57:36','2013-05-09 17:57:36','optimization'),(60,'2013-05-09 17:57:36','2013-05-09 17:57:36','cache'),(61,'2013-05-09 17:57:36','2013-05-09 17:57:36','clear_cache'),(62,'2013-05-09 17:57:36','2013-05-09 17:57:36','jobs'),(63,'2013-05-09 17:57:36','2013-05-09 17:57:36','permissions'),(64,'2013-05-09 17:57:36','2013-05-09 17:57:36','site'),(65,'2013-05-09 17:57:36','2013-05-09 17:57:36','files'),(66,'2013-05-09 17:57:36','2013-05-09 17:57:36','file_types'),(67,'2013-05-09 17:57:36','2013-05-09 17:57:36','tasks'),(68,'2013-05-09 17:57:36','2013-05-09 17:57:36','ip_blacklist'),(69,'2013-05-09 17:57:36','2013-05-09 17:57:36','captcha'),(70,'2013-05-09 17:57:36','2013-05-09 17:57:36','antispam'),(71,'2013-05-09 17:57:36','2013-05-09 17:57:36','maintenance_mode'),(72,'2013-05-09 17:57:36','2013-05-09 17:57:36','registration'),(73,'2013-05-09 17:57:36','2013-05-09 17:57:36','postlogin'),(74,'2013-05-09 17:57:36','2013-05-09 17:57:36','profiles'),(75,'2013-05-09 17:57:36','2013-05-09 17:57:36','public_registration'),(76,'2013-05-09 17:57:36','2013-05-09 17:57:36','mail'),(77,'2013-05-09 17:57:36','2013-05-09 17:57:36','method'),(78,'2013-05-09 17:57:36','2013-05-09 17:57:36','importers'),(79,'2013-05-09 17:57:36','2013-05-09 17:57:36','attributes'),(80,'2013-05-09 17:57:36','2013-05-09 17:57:36','sets'),(81,'2013-05-09 17:57:36','2013-05-09 17:57:36','types'),(82,'2013-05-09 17:57:36','2013-05-09 17:57:37','environment'),(83,'2013-05-09 17:57:37','2013-05-09 17:57:37','info'),(84,'2013-05-09 17:57:37','2013-05-09 17:57:37','debug'),(85,'2013-05-09 17:57:37','2013-05-09 17:57:37','logging'),(86,'2013-05-09 17:57:37','2013-05-09 17:57:37','file_storage_locations'),(87,'2013-05-09 17:57:37','2013-05-09 17:57:37','backup_restore'),(88,'2013-05-09 17:57:37','2013-05-09 17:57:37','backup'),(89,'2013-05-09 17:57:37','2013-05-09 17:57:37','update'),(90,'2013-05-09 17:57:37','2013-05-09 17:57:37','database'),(91,'2013-05-09 17:57:37','2013-05-09 17:57:37','composer'),(92,'2013-05-09 17:57:37','2013-05-09 17:57:37',NULL),(93,'2013-05-09 17:57:37','2013-05-09 17:57:37',NULL),(94,'2013-05-09 17:57:37','2013-05-09 17:57:37',NULL),(95,'2013-05-09 17:57:37','2013-05-09 17:57:37','home'),(96,'2013-05-09 17:57:37','2013-05-09 17:57:37','welcome'),(97,'2013-05-09 17:57:40','2013-05-09 17:57:40','!drafts'),(98,'2013-05-09 17:57:40','2013-05-09 17:57:40','!trash'),(99,'2013-05-09 17:57:40','2013-05-09 17:57:40','!stacks'),(100,'2013-05-09 17:57:40','2013-05-09 17:57:40','login'),(101,'2013-05-09 17:57:40','2013-05-09 17:57:40','register'),(102,'2013-05-09 17:57:40','2013-05-09 17:57:40','profile'),(103,'2013-05-09 17:57:40','2013-05-09 17:57:40','edit'),(104,'2013-05-09 17:57:40','2013-05-09 17:57:40','avatar'),(105,'2013-05-09 17:57:40','2013-05-09 17:57:40','messages'),(106,'2013-05-09 17:57:40','2013-05-09 17:57:40','friends'),(107,'2013-05-09 17:57:40','2013-05-09 17:57:40','page_not_found'),(108,'2013-05-09 17:57:40','2013-05-09 17:57:40','page_forbidden'),(109,'2013-05-09 17:57:40','2013-05-09 17:57:40','download_file'),(110,'2013-05-09 17:57:40','2013-05-09 17:57:40','members'),(111,'2013-05-09 17:57:44','2013-05-09 17:57:44','header-nav'),(112,'2013-05-09 17:57:44','2013-05-09 17:57:44','side-nav'),(113,'2013-05-09 17:57:44','2013-05-09 17:57:44','site-name'),(114,'2013-05-09 17:57:44','2013-05-09 17:57:44',NULL),(115,'2013-05-09 17:57:44','2013-05-09 17:57:44',NULL),(116,'2013-05-09 17:57:44','2013-05-09 17:57:44',NULL),(117,'2013-05-09 17:57:44','2013-05-09 17:57:44',NULL),(118,'2013-05-09 17:57:44','2013-05-09 18:39:12','about'),(119,'2013-05-09 17:57:44','2013-05-09 18:39:47','blog'),(120,'2013-05-09 17:57:44','2013-05-09 17:57:44','search'),(121,'2013-05-09 17:57:44','2013-05-09 17:57:44','contact-us'),(122,'2013-05-09 17:57:44','2013-05-09 17:57:45','guestbook'),(123,'2013-05-09 17:57:45','2013-05-09 17:57:45','blog-archives'),(124,'2013-05-09 17:57:45','2013-05-09 17:57:45','hello-world'),(125,'2013-05-09 18:36:32','2013-05-09 18:36:32',NULL),(126,'2013-05-09 18:36:32','2013-05-09 18:36:32',NULL),(127,'2013-05-09 18:37:46','2013-05-09 18:37:46','header-content'),(128,'2013-05-09 18:37:46','2013-05-09 18:37:46','footer-left'),(129,'2013-05-09 18:37:47','2013-05-09 18:37:47','footer-middle'),(130,'2013-05-09 18:37:47','2013-05-09 18:37:47','footer-right'),(131,'2013-05-09 18:39:13','2013-05-09 18:39:13','logo'),(132,'2013-05-10 15:11:05','2013-05-10 15:11:05',NULL),(133,'2013-05-10 15:11:14','2013-05-10 15:11:14','resposta-framework'),(134,'2013-05-10 16:49:53','2013-05-10 16:49:53','slogan'),(135,'2013-05-10 16:49:53','2013-05-11 12:14:06','navigation'),(136,'2013-05-10 16:51:58','2013-05-10 16:51:58','heading'),(137,'2013-05-10 17:01:11','2013-05-10 17:01:11',NULL);
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
INSERT INTO `ComposerContentLayout` VALUES (1,16,0,1,4,'header.php'),(2,15,0,2,4,'thumbnail.php'),(3,13,0,3,4,''),(4,0,13,4,4,NULL);
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
INSERT INTO `ComposerTypes` VALUES (4,'PARENT',0,119);
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('SITE_DEBUG_LEVEL','2013-05-10 00:57:41','1',0,0),('ENABLE_LOG_EMAILS','2013-05-10 00:57:41','1',0,0),('ENABLE_LOG_ERRORS','2013-05-10 00:57:41','1',0,0),('ENABLE_CACHE','2013-05-10 00:57:41','1',0,0),('FULL_PAGE_CACHE_GLOBAL','2013-05-10 00:57:41','0',0,0),('ENABLE_MARKETPLACE_SUPPORT','2013-05-10 00:57:41','1',0,0),('ANTISPAM_LOG_SPAM','2013-05-10 00:57:41','1',0,0),('SITE','2013-05-10 00:57:47','Bandmate',0,0),('SITE_APP_VERSION','2013-05-11 14:10:46','5.5.2.1',0,0),('NEWSFLOW_LAST_VIEWED','2013-05-11 14:09:58','1368281391',1,0),('SEEN_INTRODUCTION','2013-05-10 00:58:33','1',0,0),('MARKETPLACE_SITE_TOKEN','2013-05-10 01:17:46','lphSVrn3gUns2gQhtisfBFDHR9aZt1NQ5rlrULEmzGox5SVaCzXHssAPMQPSIm7z',0,0),('MARKETPLACE_SITE_URL_TOKEN','2013-05-10 01:17:46','unsgsm9qi5t4mykgeef9mkcw',0,0),('APP_VERSION_LATEST','2013-05-10 01:43:52','5.5.2.1',0,0),('DO_PAGE_REINDEX_CHECK','2013-05-11 19:14:09','0',0,0),('QUICK_NAV_BOOKMARKS','2013-05-10 22:31:21','a:0:{}',1,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
INSERT INTO `CustomStyleRules` VALUES (1,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:7:\"#2a74a8\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:8:\"repeat-x\";}','-moz-box-shadow: 3px 3px 4px #000;\r\n-webkit-box-shadow: 3px 3px 4px #000;\r\nbox-shadow: 3px 3px 4px #000;'),(2,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:7:\"#2a74a8\";s:12:\"border_style\";s:6:\"dotted\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:6:\"bottom\";s:10:\"margin_top\";s:1:\"5\";s:12:\"margin_right\";s:2:\"-5\";s:13:\"margin_bottom\";s:2:\"-2\";s:11:\"margin_left\";s:2:\"-5\";s:11:\"padding_top\";s:1:\"2\";s:13:\"padding_right\";s:1:\"2\";s:14:\"padding_bottom\";s:1:\"2\";s:12:\"padding_left\";s:1:\"2\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:8:\"repeat-x\";}','-moz-box-shadow: 3px 3px 4px #000;\r\n-webkit-box-shadow: 3px 3px 4px #000;\r\nbox-shadow: 3px 3px 4px #000;'),(3,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:2:\"-5\";s:13:\"margin_bottom\";s:2:\"-2\";s:11:\"margin_left\";s:2:\"-5\";s:11:\"padding_top\";s:1:\"2\";s:13:\"padding_right\";s:1:\"2\";s:14:\"padding_bottom\";s:1:\"2\";s:12:\"padding_left\";s:1:\"2\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','.shadow {\r\n-moz-box-shadow: 0 0 30px 5px #000;\r\n-webkit-box-shadow: 0 0 30px 5px #000;\r\n}'),(4,'','','a:20:{s:11:\"font_family\";s:7:\"Courier\";s:5:\"color\";s:7:\"#274257\";s:9:\"font_size\";s:4:\"20px\";s:11:\"line_height\";s:4:\"25px\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','h1 {\r\n   -webkit-text-stroke-width: 1px;\r\n   -webkit-text-stroke-color: #7EB5D6;\r\n}'),(5,'','','a:20:{s:11:\"font_family\";s:7:\"Courier\";s:5:\"color\";s:7:\"#274257\";s:9:\"font_size\";s:4:\"20px\";s:11:\"line_height\";s:4:\"25px\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','h1 {\r\n   -webkit-text-stroke: 1px #7EB5D6;\r\n}'),(6,'','','a:20:{s:11:\"font_family\";s:7:\"Courier\";s:5:\"color\";s:7:\"#274257\";s:9:\"font_size\";s:4:\"20px\";s:11:\"line_height\";s:4:\"25px\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','h1 {\r\n   -webkit-text-stroke: 1px #7EB5D6;\r\n}');
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DashboardHomepage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DashboardHomepage` (
  `dbhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbhModule` varchar(255) NOT NULL,
  `dbhDisplayName` varchar(255) DEFAULT NULL,
  `dbhDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DashboardHomepage`
--

LOCK TABLES `DashboardHomepage` WRITE;
/*!40000 ALTER TABLE `DashboardHomepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `DashboardHomepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,11,76),(1,1,12,77),(2,1,11,78),(2,1,12,79),(3,1,11,80),(3,1,12,81),(4,1,11,82),(4,1,12,83),(5,1,11,84),(5,1,12,85),(6,1,11,86),(6,1,12,87),(7,1,11,88),(7,1,12,89),(8,1,11,90),(8,1,12,91);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissions`
--

LOCK TABLES `FilePermissions` WRITE;
/*!40000 ALTER TABLE `FilePermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,'960.0000','212.0000'),(2,'960.0000','212.0000'),(3,'960.0000','212.0000'),(4,'960.0000','212.0000'),(5,'960.0000','212.0000'),(6,'960.0000','212.0000'),(7,'960.0000','212.0000'),(8,'150.0000','150.0000');
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissions` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) DEFAULT NULL,
  `canWrite` int(4) DEFAULT NULL,
  `canAdmin` int(4) DEFAULT NULL,
  `canAdd` int(4) DEFAULT NULL,
  `canSearch` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`),
  KEY `canRead` (`canRead`),
  KEY `canWrite` (`canWrite`),
  KEY `canAdmin` (`canAdmin`),
  KEY `canSearch` (`canSearch`),
  KEY `canAdd` (`canAdd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissions`
--

LOCK TABLES `FileSetPermissions` WRITE;
/*!40000 ALTER TABLE `FileSetPermissions` DISABLE KEYS */;
INSERT INTO `FileSetPermissions` VALUES (0,1,0,10,0,0,0,0),(0,2,0,10,0,0,0,0),(0,3,0,10,10,10,10,10);
/*!40000 ALTER TABLE `FileSetPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,11),(2,1,1,5,12),(3,2,1,5,11),(4,2,1,5,12),(5,3,1,5,11),(6,3,1,5,12),(7,4,1,5,11),(8,4,1,5,12),(9,5,1,5,11),(10,5,1,5,12),(11,6,1,5,11),(12,6,1,5,12),(13,7,1,5,11),(14,7,1,5,12),(15,8,1,5,11),(16,8,1,5,12);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'england_village.jpg','221368147461',1,333117,'england_village.jpg','','',1,'2013-05-09 17:57:41',1,1,'2013-05-09 17:57:41',1,1,0,'jpg',1),(2,1,'europe_england_stonehenge.jpg','511368147462',1,286856,'europe_england_stonehenge.jpg','','',1,'2013-05-09 17:57:42',1,1,'2013-05-09 17:57:42',1,1,0,'jpg',1),(3,1,'europe_germany_munich_arch.jpg','201368147462',1,229235,'europe_germany_munich_arch.jpg','','',1,'2013-05-09 17:57:42',1,1,'2013-05-09 17:57:42',1,1,0,'jpg',1),(4,1,'europe_rotterdam_port.jpg','181368147462',1,203784,'europe_rotterdam_port.jpg','','',1,'2013-05-09 17:57:42',1,1,'2013-05-09 17:57:42',1,1,0,'jpg',1),(5,1,'europe_spain_grenada_alhambra.jpg','261368147463',1,320805,'europe_spain_grenada_alhambra.jpg','','',1,'2013-05-09 17:57:43',1,1,'2013-05-09 17:57:43',1,1,0,'jpg',1),(6,1,'europe_valencia_hemispheric.jpg','201368147463',1,262679,'europe_valencia_hemispheric.jpg','','',1,'2013-05-09 17:57:43',1,1,'2013-05-09 17:57:43',1,1,0,'jpg',1),(7,1,'northern_az_lake_powell_house_boats.jpg','591368147463',1,226976,'northern_az_lake_powell_house_boats.jpg','','',1,'2013-05-09 17:57:43',1,1,'2013-05-09 17:57:43',1,1,0,'jpg',1),(8,1,'sh_thumbnail.jpg','941368147464',1,15243,'sh_thumbnail.jpg','','',1,'2013-05-09 17:57:44',1,1,'2013-05-09 17:57:44',1,1,0,'jpg',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2013-05-09 17:57:41',1,0,0,0,NULL),(2,'2013-05-09 17:57:42',1,0,0,0,NULL),(3,'2013-05-09 17:57:42',1,0,0,0,NULL),(4,'2013-05-09 17:57:42',1,0,0,0,NULL),(5,'2013-05-09 17:57:43',1,0,0,0,NULL),(6,'2013-05-09 17:57:43',1,0,0,0,NULL),(7,'2013-05-09 17:57:43',1,0,0,0,NULL),(8,'2013-05-09 17:57:44',1,0,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine','Index the site to allow searching to work quickly and accurately.','2013-05-09 17:57:33',NULL,0,NULL,0,'ENABLED','index_search',1),(2,'Generate Sitemap File','Generate the sitemap.xml file that search engines use to crawl your site.','2013-05-09 17:57:33',NULL,0,NULL,0,'ENABLED','generate_sitemap',0),(3,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2013-05-09 17:57:33',NULL,0,NULL,0,'ENABLED','process_email',0),(4,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2013-05-09 17:57:33',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (1,'Lucky Stars','lucky_stars','Thank your lucky stars for this awesome responsive theme!','2013-05-09 18:36:32',1,'1.0','1.0'),(2,'Sex \'n Chocolate','sex_n_chocolate','A sexy chocolate theme.','2013-05-10 15:10:47',1,'1.0',NULL),(3,'C25 Theme','C25_theme','Installs C25 theme.','2013-05-10 15:10:54',1,'1.0',NULL),(4,'Html Five Reset Theme','theme_htmlfive_reset','Installs the\r\n		Html Five Reset theme.','2013-05-10 15:11:01',1,'2.2',NULL),(5,'Flex1200','flex1200','A lightweight, minimalistic responsive framework theme.','2013-05-10 15:11:05',1,'1.1',NULL),(6,'Responsive Starter Theme','theme_responsive_starter_theme','Installs the\r\n		1140 Responsive Starter Theme.','2013-05-10 15:11:09',1,'1.0',NULL),(7,'Resposta Framework','resposta_free_package','Resposta - Responsive Framework for Concrete5','2013-05-10 15:11:14',1,'1.1',NULL),(8,'Rigid Light - Theme','rigidlight','A light sweet C5 theme','2013-05-10 15:11:24',1,'2.1',NULL);
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/reports','1'),(21,22,'/dashboard/reports/statistics','1'),(22,23,'/dashboard/reports/forms','1'),(23,24,'/dashboard/reports/surveys','1'),(24,25,'/dashboard/reports/logs','1'),(25,26,'/dashboard/pages','1'),(26,27,'/dashboard/pages/themes','1'),(27,28,'/dashboard/pages/themes/add','1'),(28,29,'/dashboard/pages/themes/inspect','1'),(29,30,'/dashboard/pages/themes/customize','1'),(30,31,'/dashboard/pages/types','1'),(31,32,'/dashboard/pages/types/add','1'),(32,33,'/dashboard/pages/attributes','1'),(33,34,'/dashboard/pages/single','1'),(34,35,'/dashboard/blocks','1'),(35,36,'/dashboard/blocks/stacks','1'),(36,37,'/dashboard/blocks/stacks/list','1'),(37,38,'/dashboard/blocks/types','1'),(38,39,'/dashboard/extend','1'),(39,40,'/dashboard/news','1'),(40,41,'/dashboard/extend/install','1'),(41,42,'/dashboard/extend/update','1'),(42,43,'/dashboard/extend/connect','1'),(43,44,'/dashboard/extend/themes','1'),(44,45,'/dashboard/extend/add-ons','1'),(45,46,'/dashboard/system','1'),(46,47,'/dashboard/system/basics','1'),(47,48,'/dashboard/system/basics/site_name','1'),(48,49,'/dashboard/system/basics/icons','1'),(49,50,'/dashboard/system/basics/editor','1'),(50,51,'/dashboard/system/basics/multilingual','1'),(51,52,'/dashboard/system/basics/timezone','1'),(52,53,'/dashboard/system/basics/interface','1'),(53,54,'/dashboard/system/seo','1'),(54,55,'/dashboard/system/seo/urls','1'),(55,56,'/dashboard/system/seo/tracking_codes','1'),(56,57,'/dashboard/system/seo/statistics','1'),(57,58,'/dashboard/system/seo/search_index','1'),(58,59,'/dashboard/system/optimization','1'),(59,60,'/dashboard/system/optimization/cache','1'),(60,61,'/dashboard/system/optimization/clear_cache','1'),(61,62,'/dashboard/system/optimization/jobs','1'),(62,63,'/dashboard/system/permissions','1'),(63,64,'/dashboard/system/permissions/site','1'),(64,65,'/dashboard/system/permissions/files','1'),(65,66,'/dashboard/system/permissions/file_types','1'),(66,67,'/dashboard/system/permissions/tasks','1'),(67,68,'/dashboard/system/permissions/ip_blacklist','1'),(68,69,'/dashboard/system/permissions/captcha','1'),(69,70,'/dashboard/system/permissions/antispam','1'),(70,71,'/dashboard/system/permissions/maintenance_mode','1'),(71,72,'/dashboard/system/registration','1'),(72,73,'/dashboard/system/registration/postlogin','1'),(73,74,'/dashboard/system/registration/profiles','1'),(74,75,'/dashboard/system/registration/public_registration','1'),(75,76,'/dashboard/system/mail','1'),(76,77,'/dashboard/system/mail/method','1'),(77,78,'/dashboard/system/mail/importers','1'),(78,79,'/dashboard/system/attributes','1'),(79,80,'/dashboard/system/attributes/sets','1'),(80,81,'/dashboard/system/attributes/types','1'),(81,82,'/dashboard/system/environment','1'),(82,83,'/dashboard/system/environment/info','1'),(83,84,'/dashboard/system/environment/debug','1'),(84,85,'/dashboard/system/environment/logging','1'),(85,86,'/dashboard/system/environment/file_storage_locations','1'),(86,87,'/dashboard/system/backup_restore','1'),(87,88,'/dashboard/system/backup_restore/backup','1'),(88,89,'/dashboard/system/backup_restore/update','1'),(89,90,'/dashboard/system/backup_restore/database','1'),(90,91,'/dashboard/pages/types/composer','1'),(91,95,'/dashboard/home','1'),(92,96,'/dashboard/welcome','1'),(93,97,'/!drafts','1'),(94,98,'/!trash','1'),(95,99,'/!stacks','1'),(96,100,'/login','1'),(97,101,'/register','1'),(98,102,'/profile','1'),(99,103,'/profile/edit','1'),(100,104,'/profile/avatar','1'),(101,105,'/profile/messages','1'),(102,106,'/profile/friends','1'),(103,107,'/page_not_found','1'),(104,108,'/page_forbidden','1'),(105,109,'/download_file','1'),(106,110,'/members','1'),(107,111,'/!stacks/header-nav','1'),(108,112,'/!stacks/side-nav','1'),(109,113,'/!stacks/site-name','1'),(110,118,'/about','1'),(111,119,'/blog','1'),(112,120,'/search','1'),(113,121,'/about/contact-us','1'),(114,122,'/about/guestbook','1'),(115,123,'/blog/blog-archives','1'),(116,124,'/blog/hello-world','1'),(117,127,'/!stacks/header-content','1'),(118,128,'/!stacks/footer-left','1'),(119,129,'/!stacks/footer-middle','1'),(120,130,'/!stacks/footer-right','1'),(121,131,'/!stacks/logo','1'),(122,133,'/dashboard/resposta-framework','1'),(123,134,'/!stacks/slogan','1'),(126,135,'/!stacks/navigation','1'),(125,136,'/!stacks/heading','1');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`gID`,`uID`,`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypes`
--

LOCK TABLES `PagePermissionPageTypes` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cgPermissions` varchar(32) DEFAULT NULL,
  `cgStartDate` datetime DEFAULT NULL,
  `cgEndDate` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`gID`,`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissions`
--

LOCK TABLES `PagePermissions` WRITE;
/*!40000 ALTER TABLE `PagePermissions` DISABLE KEYS */;
INSERT INTO `PagePermissions` VALUES (2,3,0,'r:wa:adm',NULL,NULL),(37,3,0,'r:wa:adm',NULL,NULL),(37,1,0,'r',NULL,NULL),(100,1,0,'r',NULL,NULL),(100,2,0,'r',NULL,NULL),(101,1,0,'r',NULL,NULL),(1,1,0,'r',NULL,NULL),(1,3,0,'r:rv:wa:db:av:dc:adm',NULL,NULL);
/*!40000 ALTER TABLE `PagePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(4,'','Write','','/dashboard/composer/write','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(11,'','File Manager','','/dashboard/files/search','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2013-05-09 17:57:34','2013-05-09 17:57:37',NULL,0),(16,'','Search Users','','/dashboard/users/search','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(19,'','Add User','','/dashboard/users/add','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(21,'','Reports','Get data from forms and logs.','/dashboard/reports','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(22,'','Statistics','View your site activity.','/dashboard/reports/statistics','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(23,'','Form Results','Get submission data.','/dashboard/reports/forms','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(24,'','Surveys','','/dashboard/reports/surveys','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(25,'','Logs','','/dashboard/reports/logs','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(26,'','Pages & Themes','Reskin your site.','/dashboard/pages','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(27,'','Themes','Reskin your site.','/dashboard/pages/themes','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(28,'','Add','','/dashboard/pages/themes/add','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(30,'','Customize','','/dashboard/pages/themes/customize','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(31,'','Page Types','What goes in your site.','/dashboard/pages/types','2013-05-09 17:57:34','2013-05-09 17:57:38',NULL,0),(33,'','Attributes','','/dashboard/pages/attributes','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(37,'','Stack List','','/dashboard/blocks/stacks/list','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(39,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(40,'','Dashboard','','/dashboard/news','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(41,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(42,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(43,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(44,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(45,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(46,'','System & Settings','Secure and setup your site.','/dashboard/system','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(48,'','Site Name','','/dashboard/system/basics/site_name','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(49,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(50,'','Rich Text Editor','','/dashboard/system/basics/editor','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(51,'','Languages','','/dashboard/system/basics/multilingual','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(52,'','Time Zone','','/dashboard/system/basics/timezone','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(53,'','Interface Preferences','','/dashboard/system/basics/interface','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(55,'','Pretty URLs','','/dashboard/system/seo/urls','2013-05-09 17:57:35','2013-05-09 17:57:38',NULL,0),(56,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(57,'','Statistics','','/dashboard/system/seo/statistics','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(58,'','Search Index','','/dashboard/system/seo/search_index','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(60,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(61,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(62,'','Automated Jobs','','/dashboard/system/optimization/jobs','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(64,'','Site Access','','/dashboard/system/permissions/site','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(65,'','File Manager Permissions','','/dashboard/system/permissions/files','2013-05-09 17:57:36','2013-05-09 17:57:38',NULL,0),(66,'','Allowed File Types','','/dashboard/system/permissions/file_types','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(67,'','Task Permissions','','/dashboard/system/permissions/tasks','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(68,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(69,'','Captcha Setup','','/dashboard/system/permissions/captcha','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(70,'','Spam Control','','/dashboard/system/permissions/antispam','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(71,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(73,'','Login Destination','','/dashboard/system/registration/postlogin','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(74,'','Public Profiles','','/dashboard/system/registration/profiles','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(75,'','Public Registration','','/dashboard/system/registration/public_registration','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(76,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(77,'','SMTP Method','','/dashboard/system/mail/method','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(78,'','Email Importers','','/dashboard/system/mail/importers','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(79,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(82,'','Environment','Advanced settings for web developers.','/dashboard/system/environment','2013-05-09 17:57:36','2013-05-09 17:57:39',NULL,0),(83,'','Environment Information','','/dashboard/system/environment/info','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(84,'','Debug Settings','','/dashboard/system/environment/debug','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(85,'','Logging Settings','','/dashboard/system/environment/logging','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(86,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(89,'','Update concrete5','','/dashboard/system/backup_restore/update','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(96,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(95,'','Customize Dashboard Home','','/dashboard/home','2013-05-09 17:57:37','2013-05-09 17:57:39',NULL,0),(1,'Welcome to concrete5 - an Open Source CMS Sidebar  Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;drag and drop blocks&nbsp;like this around your layout.  Welcome to concrete5!\n                                         Content Management is easy with concrete5\'s in-context editing. Just login and you can change things as you browse your site. \n                                         You can watch videos and learn how to: \n                                        \n                                        Edit&nbsp;this page.\n                                        Add a new page.\n                                        Add some basic functionality, like&nbsp;a Form.\n                                        Finding &amp; adding&nbsp;more functionality and themes.\n                                        \n                                         We\'ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;Sitemap and quickly delete the parts you don\'t want.  ','Home','',NULL,'2013-05-09 17:57:31','2013-05-11 12:14:09',NULL,0),(118,'About Us Learn More\n																 Visit&nbsp;concrete5.org&nbsp;to learn more from the&nbsp;community&nbsp;and the&nbsp;documentation. You can also browse our&nbsp;marketplace&nbsp;for more&nbsp;add-ons&nbsp;and&nbsp;themes&nbsp;to quickly build the site you really need.&nbsp; \n																&nbsp;\n																Getting Help\n																 You can get free help in the forums and post for free to the&nbsp;jobs board.&nbsp; \n																 You can also pay the concrete5 team of developers to help with&nbsp;any problem&nbsp;you run into. We offer training courses&nbsp;and&nbsp;hosting packages, just let us know how we can help.  ','About','','/about','2013-05-09 17:57:44','2013-05-09 17:57:45',NULL,0),(122,'Guestbook ','Guestbook','','/about/guestbook','2013-05-09 17:57:44','2013-05-09 17:57:46',NULL,0),(121,'Contact Us Contact Us\n									 Building a form is easy to do. Learn how to add a form block.  ','Contact Us','','/about/contact-us','2013-05-09 17:57:44','2013-05-09 17:57:46',NULL,0),(120,'Sitemap Site Map ','Search','','/search','2013-05-09 17:57:44','2013-05-09 17:57:46',NULL,0),(119,'Tags ','Blog','','/blog','2013-05-09 17:57:44','2013-05-09 17:57:46',NULL,0),(124,' Here is some sample content! I\'m writing it using composer!  ','Hello World','This is my first blog post!','/blog/hello-world','2013-05-09 17:57:45','2013-05-09 17:57:46',NULL,0),(123,'','Blog Archives','','/blog/blog-archives','2013-05-09 17:57:45','2013-05-09 17:57:47',NULL,0),(135,'','Navigation',NULL,'/!stacks/navigation','2013-05-10 16:49:53','2013-05-11 12:14:06',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2013-05-09','2013-05-10 00:58:39',1),(2,96,'2013-05-09','2013-05-10 00:59:00',1),(3,96,'2013-05-09','2013-05-10 01:03:31',1),(4,96,'2013-05-09','2013-05-10 01:07:57',1),(5,96,'2013-05-09','2013-05-10 01:09:36',1),(6,96,'2013-05-09','2013-05-10 01:12:29',1),(7,118,'2013-05-09','2013-05-10 01:16:18',1),(8,1,'2013-05-09','2013-05-10 01:16:24',1),(9,1,'2013-05-09','2013-05-10 01:18:04',1),(10,41,'2013-05-09','2013-05-10 01:36:41',1),(11,41,'2013-05-09','2013-05-10 01:37:26',1),(12,1,'2013-05-09','2013-05-10 01:37:33',1),(13,1,'2013-05-09','2013-05-10 01:37:52',1),(14,118,'2013-05-09','2013-05-10 01:39:07',1),(15,118,'2013-05-09','2013-05-10 01:39:11',1),(16,118,'2013-05-09','2013-05-10 01:39:19',1),(17,119,'2013-05-09','2013-05-10 01:39:40',1),(18,119,'2013-05-09','2013-05-10 01:39:44',1),(19,119,'2013-05-09','2013-05-10 01:39:53',1),(20,1,'2013-05-09','2013-05-10 01:43:46',1),(21,1,'2013-05-09','2013-05-10 01:43:53',1),(22,2,'2013-05-09','2013-05-10 01:43:56',1),(23,1,'2013-05-09','2013-05-10 01:44:04',1),(24,1,'2013-05-09','2013-05-10 02:44:52',1),(25,1,'2013-05-09','2013-05-10 02:47:14',1),(26,1,'2013-05-09','2013-05-10 02:47:17',1),(27,1,'2013-05-09','2013-05-10 02:47:36',1),(28,1,'2013-05-09','2013-05-10 02:47:53',1),(29,1,'2013-05-09','2013-05-10 02:48:37',1),(30,2,'2013-05-09','2013-05-10 02:49:30',1),(31,27,'2013-05-09','2013-05-10 02:49:34',1),(32,30,'2013-05-09','2013-05-10 02:49:39',1),(33,1,'2013-05-09','2013-05-10 02:51:33',1),(34,29,'2013-05-09','2013-05-10 02:52:40',1),(35,27,'2013-05-09','2013-05-10 02:52:40',1),(36,29,'2013-05-09','2013-05-10 02:52:51',1),(37,27,'2013-05-09','2013-05-10 02:53:00',1),(38,30,'2013-05-09','2013-05-10 02:53:04',1),(39,1,'2013-05-09','2013-05-10 02:55:26',1),(40,1,'2013-05-09','2013-05-10 02:55:45',1),(41,1,'2013-05-09','2013-05-10 02:56:55',1),(42,1,'2013-05-09','2013-05-10 02:56:57',1),(43,1,'2013-05-09','2013-05-10 02:57:26',1),(44,30,'2013-05-09','2013-05-10 02:57:53',1),(45,27,'2013-05-09','2013-05-10 02:57:53',1),(46,30,'2013-05-09','2013-05-10 02:58:06',1),(47,1,'2013-05-09','2013-05-10 02:59:01',1),(48,1,'2013-05-09','2013-05-10 02:59:32',1),(49,1,'2013-05-09','2013-05-10 03:03:20',1),(50,1,'2013-05-09','2013-05-10 03:05:33',1),(51,1,'2013-05-09','2013-05-10 03:07:38',1),(52,1,'2013-05-09','2013-05-10 03:07:43',1),(53,1,'2013-05-09','2013-05-10 03:07:56',1),(54,29,'2013-05-09','2013-05-10 03:08:06',1),(55,27,'2013-05-09','2013-05-10 03:08:06',1),(56,30,'2013-05-09','2013-05-10 03:08:19',1),(57,27,'2013-05-09','2013-05-10 03:08:19',1),(58,30,'2013-05-09','2013-05-10 03:08:22',1),(59,30,'2013-05-09','2013-05-10 03:09:12',1),(60,30,'2013-05-09','2013-05-10 03:09:12',1),(61,1,'2013-05-09','2013-05-10 03:09:29',1),(62,30,'2013-05-09','2013-05-10 03:09:36',1),(63,30,'2013-05-09','2013-05-10 03:09:36',1),(64,27,'2013-05-09','2013-05-10 03:09:48',1),(65,1,'2013-05-09','2013-05-10 03:10:11',1),(66,1,'2013-05-09','2013-05-10 03:10:16',1),(67,30,'2013-05-09','2013-05-10 03:10:26',1),(68,27,'2013-05-09','2013-05-10 03:10:27',1),(69,30,'2013-05-09','2013-05-10 03:10:32',1),(70,1,'2013-05-09','2013-05-10 03:15:56',1),(71,100,'2013-05-09','2013-05-10 03:18:16',1),(72,1,'2013-05-09','2013-05-10 03:18:17',0),(73,100,'2013-05-09','2013-05-10 03:18:34',0),(74,100,'2013-05-09','2013-05-10 03:18:50',0),(75,1,'2013-05-09','2013-05-10 03:18:53',1),(76,2,'2013-05-09','2013-05-10 03:19:06',1),(77,27,'2013-05-09','2013-05-10 03:19:20',1),(78,30,'2013-05-09','2013-05-10 03:19:40',1),(79,30,'2013-05-09','2013-05-10 03:19:51',1),(80,30,'2013-05-09','2013-05-10 03:19:51',1),(81,1,'2013-05-10','2013-05-10 22:02:49',1),(82,18,'2013-05-10','2013-05-10 22:03:00',1),(83,1,'2013-05-10','2013-05-10 22:03:05',1),(84,33,'2013-05-10','2013-05-10 22:03:14',1),(85,80,'2013-05-10','2013-05-10 22:03:25',1),(86,80,'2013-05-10','2013-05-10 22:03:28',1),(87,2,'2013-05-10','2013-05-10 22:03:32',1),(88,8,'2013-05-10','2013-05-10 22:04:38',1),(89,8,'2013-05-10','2013-05-10 22:04:41',1),(90,7,'2013-05-10','2013-05-10 22:04:47',1),(91,36,'2013-05-10','2013-05-10 22:05:00',1),(92,36,'2013-05-10','2013-05-10 22:05:07',1),(93,1,'2013-05-10','2013-05-10 22:05:57',1),(94,2,'2013-05-10','2013-05-10 22:09:14',1),(95,1,'2013-05-10','2013-05-10 22:09:21',1),(96,1,'2013-05-10','2013-05-10 22:09:25',1),(97,39,'2013-05-10','2013-05-10 22:09:38',1),(98,41,'2013-05-10','2013-05-10 22:09:39',1),(99,41,'2013-05-10','2013-05-10 22:10:01',1),(100,41,'2013-05-10','2013-05-10 22:10:19',1),(101,41,'2013-05-10','2013-05-10 22:10:27',1),(102,41,'2013-05-10','2013-05-10 22:10:31',1),(103,41,'2013-05-10','2013-05-10 22:10:37',1),(104,41,'2013-05-10','2013-05-10 22:10:41',1),(105,41,'2013-05-10','2013-05-10 22:10:46',1),(106,41,'2013-05-10','2013-05-10 22:10:54',1),(107,41,'2013-05-10','2013-05-10 22:11:00',1),(108,41,'2013-05-10','2013-05-10 22:11:07',1),(109,41,'2013-05-10','2013-05-10 22:11:11',1),(110,41,'2013-05-10','2013-05-10 22:11:16',1),(111,41,'2013-05-10','2013-05-10 22:11:20',1),(112,41,'2013-05-10','2013-05-10 22:11:30',1),(113,1,'2013-05-10','2013-05-10 22:11:50',1),(114,1,'2013-05-10','2013-05-10 22:12:01',1),(115,1,'2013-05-10','2013-05-10 22:12:42',1),(116,27,'2013-05-10','2013-05-10 22:13:17',1),(117,27,'2013-05-10','2013-05-10 22:13:39',1),(118,27,'2013-05-10','2013-05-10 22:13:43',1),(119,30,'2013-05-10','2013-05-10 22:13:49',1),(120,27,'2013-05-10','2013-05-10 22:13:54',1),(121,30,'2013-05-10','2013-05-10 22:14:07',1),(122,30,'2013-05-10','2013-05-10 22:16:51',1),(123,30,'2013-05-10','2013-05-10 22:16:51',1),(124,27,'2013-05-10','2013-05-10 22:17:01',1),(125,27,'2013-05-10','2013-05-10 22:17:05',1),(126,27,'2013-05-10','2013-05-10 22:17:09',1),(127,1,'2013-05-10','2013-05-10 22:17:19',1),(128,27,'2013-05-10','2013-05-10 22:17:29',1),(129,1,'2013-05-10','2013-05-10 22:18:32',1),(130,1,'2013-05-10','2013-05-10 22:18:38',1),(131,30,'2013-05-10','2013-05-10 22:18:50',1),(132,27,'2013-05-10','2013-05-10 22:18:51',1),(133,30,'2013-05-10','2013-05-10 22:18:55',1),(134,30,'2013-05-10','2013-05-10 22:19:05',1),(135,30,'2013-05-10','2013-05-10 22:19:06',1),(136,28,'2013-05-10','2013-05-10 22:19:19',1),(137,2,'2013-05-10','2013-05-10 22:19:22',1),(138,1,'2013-05-10','2013-05-10 22:19:24',1),(139,27,'2013-05-10','2013-05-10 22:19:30',1),(140,30,'2013-05-10','2013-05-10 22:19:34',1),(141,27,'2013-05-10','2013-05-10 22:19:35',1),(142,29,'2013-05-10','2013-05-10 22:19:52',1),(143,30,'2013-05-10','2013-05-10 22:20:09',1),(144,27,'2013-05-10','2013-05-10 22:20:10',1),(145,29,'2013-05-10','2013-05-10 22:20:16',1),(146,27,'2013-05-10','2013-05-10 22:20:40',1),(147,27,'2013-05-10','2013-05-10 22:28:21',1),(148,27,'2013-05-10','2013-05-10 22:28:29',1),(149,29,'2013-05-10','2013-05-10 22:28:30',1),(150,30,'2013-05-10','2013-05-10 22:28:42',1),(151,27,'2013-05-10','2013-05-10 22:28:43',1),(152,30,'2013-05-10','2013-05-10 22:28:49',1),(153,30,'2013-05-10','2013-05-10 22:30:28',1),(154,30,'2013-05-10','2013-05-10 22:30:29',1),(155,1,'2013-05-10','2013-05-10 22:30:47',1),(156,27,'2013-05-10','2013-05-10 22:30:55',1),(157,27,'2013-05-10','2013-05-10 22:31:05',1),(158,27,'2013-05-10','2013-05-10 22:31:08',1),(159,30,'2013-05-10','2013-05-10 22:31:14',1),(160,1,'2013-05-10','2013-05-10 22:31:22',1),(161,30,'2013-05-10','2013-05-10 22:33:52',1),(162,27,'2013-05-10','2013-05-10 22:33:52',1),(163,30,'2013-05-10','2013-05-10 22:34:02',1),(164,30,'2013-05-10','2013-05-10 22:34:27',1),(165,30,'2013-05-10','2013-05-10 22:34:28',1),(166,27,'2013-05-10','2013-05-10 22:34:37',1),(167,1,'2013-05-10','2013-05-10 22:34:43',1),(168,30,'2013-05-10','2013-05-10 22:34:57',1),(169,27,'2013-05-10','2013-05-10 22:34:58',1),(170,30,'2013-05-10','2013-05-10 22:35:03',1),(171,30,'2013-05-10','2013-05-10 22:35:14',1),(172,30,'2013-05-10','2013-05-10 22:35:14',1),(173,1,'2013-05-10','2013-05-10 22:39:31',1),(174,100,'2013-05-10','2013-05-10 22:39:38',1),(175,1,'2013-05-10','2013-05-10 22:39:39',0),(176,1,'2013-05-10','2013-05-10 22:39:47',0),(177,1,'2013-05-10','2013-05-10 22:39:59',0),(178,1,'2013-05-10','2013-05-10 22:40:10',0),(179,1,'2013-05-10','2013-05-10 22:40:13',0),(180,1,'2013-05-10','2013-05-10 23:01:11',0),(181,1,'2013-05-10','2013-05-10 23:02:29',0),(182,1,'2013-05-10','2013-05-10 23:13:49',0),(183,1,'2013-05-10','2013-05-10 23:13:57',0),(184,1,'2013-05-10','2013-05-10 23:14:05',0),(185,1,'2013-05-10','2013-05-10 23:23:36',0),(186,1,'2013-05-10','2013-05-10 23:25:54',0),(187,1,'2013-05-10','2013-05-10 23:26:54',0),(188,1,'2013-05-10','2013-05-10 23:27:03',0),(189,1,'2013-05-10','2013-05-10 23:27:04',0),(190,1,'2013-05-10','2013-05-10 23:27:05',0),(191,1,'2013-05-10','2013-05-10 23:27:06',0),(192,1,'2013-05-10','2013-05-10 23:28:05',0),(193,1,'2013-05-10','2013-05-10 23:29:01',0),(194,1,'2013-05-10','2013-05-10 23:31:03',0),(195,100,'2013-05-10','2013-05-10 23:31:06',0),(196,100,'2013-05-10','2013-05-10 23:31:08',0),(197,1,'2013-05-10','2013-05-10 23:31:09',1),(198,27,'2013-05-10','2013-05-10 23:31:15',1),(199,30,'2013-05-10','2013-05-10 23:31:19',1),(200,1,'2013-05-10','2013-05-10 23:32:19',1),(201,1,'2013-05-10','2013-05-10 23:33:46',1),(202,1,'2013-05-10','2013-05-10 23:34:32',0),(203,1,'2013-05-10','2013-05-10 23:39:42',0),(204,1,'2013-05-10','2013-05-10 23:41:03',0),(205,1,'2013-05-10','2013-05-10 23:41:07',0),(206,1,'2013-05-10','2013-05-10 23:42:25',0),(207,1,'2013-05-10','2013-05-10 23:46:33',0),(208,120,'2013-05-10','2013-05-10 23:46:43',0),(209,1,'2013-05-10','2013-05-10 23:46:59',0),(210,118,'2013-05-10','2013-05-10 23:47:01',0),(211,118,'2013-05-10','2013-05-10 23:48:59',0),(212,1,'2013-05-10','2013-05-10 23:49:18',0),(213,1,'2013-05-10','2013-05-10 23:49:37',1),(214,27,'2013-05-10','2013-05-10 23:49:52',1),(215,27,'2013-05-10','2013-05-10 23:52:45',1),(216,27,'2013-05-10','2013-05-10 23:52:58',1),(217,27,'2013-05-10','2013-05-10 23:53:07',1),(218,27,'2013-05-10','2013-05-10 23:53:23',1),(219,27,'2013-05-10','2013-05-10 23:53:34',1),(220,27,'2013-05-10','2013-05-11 00:01:04',1),(221,27,'2013-05-10','2013-05-11 00:01:10',1),(222,29,'2013-05-10','2013-05-11 00:01:11',1),(223,29,'2013-05-10','2013-05-11 00:01:17',1),(224,30,'2013-05-10','2013-05-11 00:01:25',1),(225,27,'2013-05-10','2013-05-11 00:01:25',1),(226,27,'2013-05-10','2013-05-11 00:01:31',1),(227,27,'2013-05-10','2013-05-11 00:01:34',1),(228,1,'2013-05-10','2013-05-11 00:02:18',1),(229,1,'2013-05-10','2013-05-11 00:02:55',1),(230,1,'2013-05-10','2013-05-11 00:03:00',1),(231,1,'2013-05-10','2013-05-11 00:03:02',1),(232,1,'2013-05-10','2013-05-11 00:05:32',1),(233,1,'2013-05-10','2013-05-11 00:05:33',1),(234,1,'2013-05-10','2013-05-11 00:05:54',1),(235,1,'2013-05-10','2013-05-11 00:22:55',1),(236,1,'2013-05-10','2013-05-11 00:22:56',1),(237,1,'2013-05-10','2013-05-11 00:23:09',1),(238,1,'2013-05-10','2013-05-11 00:23:29',1),(239,1,'2013-05-10','2013-05-11 00:24:12',1),(240,50,'2013-05-10','2013-05-11 00:26:24',1),(241,1,'2013-05-10','2013-05-11 00:26:56',1),(242,50,'2013-05-10','2013-05-11 00:31:08',1),(243,1,'2013-05-10','2013-05-11 00:31:36',1),(244,100,'2013-05-10','2013-05-11 00:31:48',1),(245,1,'2013-05-10','2013-05-11 00:31:48',0),(246,100,'2013-05-10','2013-05-11 00:32:02',0),(247,1,'2013-05-10','2013-05-11 03:06:46',0),(248,1,'2013-05-11','2013-05-11 14:04:58',0),(249,100,'2013-05-11','2013-05-11 14:09:37',0),(250,100,'2013-05-11','2013-05-11 14:09:47',0),(251,1,'2013-05-11','2013-05-11 14:09:50',1),(252,95,'2013-05-11','2013-05-11 14:09:57',1),(253,46,'2013-05-11','2013-05-11 14:10:18',1),(254,1,'2013-05-11','2013-05-11 14:10:21',1),(255,46,'2013-05-11','2013-05-11 14:10:28',1),(256,89,'2013-05-11','2013-05-11 14:10:35',1),(257,89,'2013-05-11','2013-05-11 14:10:39',1),(258,89,'2013-05-11','2013-05-11 14:10:52',1),(259,1,'2013-05-11','2013-05-11 14:10:58',1),(260,1,'2013-05-11','2013-05-11 14:11:26',1),(261,1,'2013-05-11','2013-05-11 14:21:14',1),(262,1,'2013-05-11','2013-05-11 14:21:32',1),(263,1,'2013-05-11','2013-05-11 19:07:03',1),(264,1,'2013-05-11','2013-05-11 19:11:12',1),(265,1,'2013-05-11','2013-05-11 19:14:13',1),(266,1,'2013-05-11','2013-05-11 19:14:20',1),(267,1,'2013-05-11','2013-05-11 19:18:01',1),(268,1,'2013-05-11','2013-05-11 19:18:02',1),(269,1,'2013-05-11','2013-05-11 19:21:27',1),(270,1,'2013-05-11','2013-05-11 19:23:36',1),(271,1,'2013-05-11','2013-05-11 19:23:37',1),(272,1,'2013-05-11','2013-05-11 19:24:09',1),(273,1,'2013-05-11','2013-05-11 19:24:10',1),(274,1,'2013-05-11','2013-05-11 19:24:16',1),(275,1,'2013-05-11','2013-05-11 19:24:33',1),(276,1,'2013-05-12','2013-05-12 21:19:08',0),(277,1,'2013-05-15','2013-05-16 01:30:28',0);
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
INSERT INTO `PageThemeStyles` VALUES (5,'header_logo','color:#92c8d9;','1'),(5,'footer_link_color','color:#92c8d9;','1'),(5,'footer_color','color:#ffffff;','1'),(5,'border_color','border-color:#333333;','1'),(5,'link_hover','color:#0b5b79;','1'),(5,'link','color:#0e7999;','1'),(5,'Logo_Hover_Color','color:#0b5b79;','1'),(5,'miscellaneous','body {\r\nbackground:#91C8D8!important;\r\n}','20'),(12,'link','color:#258dad;','1'),(12,'link_hover','color:#0b5b79;','1'),(12,'border_color','border-color:#333333;','1'),(12,'footer_color','color:#ffffff;','1'),(12,'footer_link_color','color:#ffffff;','1'),(12,'header_logo','color:#92c8d9;','1'),(12,'Logo_Hover_Color','color:#0b5b79;','1'),(12,'miscellaneous','','20');
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0),(7,'htmlfive_reset','Html5Reset.org Template for Concrete5','This is a blank starter template for developers who want to use the HTML5Reset.org template with Concrete5.',4),(8,'flex1200','Flex1200','A lightweight, minimalistic responsive framework theme.',5),(9,'responsive_starter_theme','Responsive Starter Template with 1140 Grid System','This is a blank starter template for developers who use both Concrete5 and the 1140 Responsive Grid System.',6),(10,'blanktheme','Resposta Framework Blank Theme','Resposta his a new responsive css and javascript framework for concrete5.',7),(13,'reposta_custom','Resposta Custom','A custom version of the Resposta template. Responsive and using CSS3 and HTML5.',0),(12,'surf_blue','Surf Blue','A surf blue styled theme based off of bandmates original ideas.',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'blog_entry','template1.png','Blog Entry',0,0),(5,'full','main.png','Full',0,0),(6,'left_sidebar','template1.png','Left Sidebar',0,0),(7,'right_sidebar','right_sidebar.png','Right Sidebar',0,0),(8,'home','main.png','Home',0,1),(9,'two_columns','main.png','Two Columns',0,1),(10,'three_columns','main.png','Three Columns',0,5),(11,'controller','main.png','Controller',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cPendingAction` varchar(6) DEFAULT NULL,
  `cPendingActionDatetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cPendingActionUID` int(10) unsigned DEFAULT NULL,
  `cPendingActionTargetCID` int(10) unsigned DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `ctID` (`ctID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,6,0,1,1,1,'2013-05-11 12:24:27','2013-05-11 12:24:27',NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,14,0,0,0,13,-1,'0',0,0),(2,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,13,-1,'0',0,1),(3,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,13,-1,'0',0,1),(4,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,13,-1,'0',0,1),(5,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,13,-1,'0',0,1),(6,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,13,-1,'0',0,1),(7,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,13,-1,'0',0,1),(8,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,13,-1,'0',0,1),(9,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,13,-1,'0',0,1),(10,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,13,-1,'0',0,1),(11,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,13,-1,'0',0,1),(12,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,13,-1,'0',0,1),(13,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,13,-1,'0',0,1),(14,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,13,-1,'0',0,1),(15,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,5,3,2,0,13,-1,'0',0,1),(16,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,13,-1,'0',0,1),(17,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,13,-1,'0',0,1),(18,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,13,-1,'0',0,1),(19,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,13,-1,'0',0,1),(20,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,13,-1,'0',0,1),(21,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,13,-1,'0',0,1),(22,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,21,0,13,-1,'0',0,1),(23,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,21,0,13,-1,'0',0,1),(24,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,21,0,13,-1,'0',0,1),(25,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,21,0,13,-1,'0',0,1),(26,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,13,-1,'0',0,1),(27,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,26,0,13,-1,'0',0,1),(28,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,27,0,13,-1,'0',0,1),(29,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,27,0,13,-1,'0',0,1),(30,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,27,0,13,-1,'0',0,1),(31,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,26,0,13,-1,'0',0,1),(32,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,31,0,13,-1,'0',0,1),(33,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,26,0,13,-1,'0',0,1),(34,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,26,0,13,-1,'0',0,1),(35,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,2,6,2,0,13,-1,'0',0,1),(36,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,35,0,13,-1,'0',0,1),(37,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,37,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,36,0,13,-1,'0',0,1),(38,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,1,35,0,13,-1,'0',0,1),(39,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,7,2,0,13,-1,'0',0,1),(40,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,8,2,0,13,-1,'0',0,1),(41,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,39,0,13,-1,'0',0,1),(42,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,39,0,13,-1,'0',0,1),(43,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,39,0,13,-1,'0',0,1),(44,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,39,0,13,-1,'0',0,1),(45,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,39,0,13,-1,'0',0,1),(46,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,9,2,0,13,-1,'0',0,1),(47,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,46,0,13,-1,'0',0,1),(48,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,47,0,13,-1,'0',0,1),(49,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,47,0,13,-1,'0',0,1),(50,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,47,0,13,-1,'0',0,1),(51,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,47,0,13,-1,'0',0,1),(52,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,47,0,13,-1,'0',0,1),(53,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,47,0,13,-1,'0',0,1),(54,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,4,1,46,0,13,-1,'0',0,1),(55,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,54,0,13,-1,'0',0,1),(56,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,1,54,0,13,-1,'0',0,1),(57,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,2,54,0,13,-1,'0',0,1),(58,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,3,54,0,13,-1,'0',0,1),(59,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,46,0,13,-1,'0',0,1),(60,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,59,0,13,-1,'0',0,1),(61,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,59,0,13,-1,'0',0,1),(62,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,59,0,13,-1,'0',0,1),(63,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,8,3,46,0,13,-1,'0',0,1),(64,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,63,0,13,-1,'0',0,1),(65,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,63,0,13,-1,'0',0,1),(66,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,63,0,13,-1,'0',0,1),(67,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,63,0,13,-1,'0',0,1),(68,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,4,63,0,13,-1,'0',0,1),(69,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,5,63,0,13,-1,'0',0,1),(70,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,6,63,0,13,-1,'0',0,1),(71,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,7,63,0,13,-1,'0',0,1),(72,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,46,0,13,-1,'0',0,1),(73,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,72,0,13,-1,'0',0,1),(74,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,72,0,13,-1,'0',0,1),(75,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,72,0,13,-1,'0',0,1),(76,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,46,0,13,-1,'0',0,1),(77,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,76,0,13,-1,'0',0,1),(78,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,76,0,13,-1,'0',0,1),(79,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,46,0,13,-1,'0',0,1),(80,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,79,0,13,-1,'0',0,1),(81,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,79,0,13,-1,'0',0,1),(82,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,4,7,46,0,13,-1,'0',0,1),(83,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,82,0,13,-1,'0',0,1),(84,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,82,0,13,-1,'0',0,1),(85,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,82,0,13,-1,'0',0,1),(86,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,82,0,13,-1,'0',0,1),(87,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,46,0,13,-1,'0',0,1),(88,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,87,0,13,-1,'0',0,1),(89,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,87,0,13,-1,'0',0,1),(90,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,87,0,13,-1,'0',0,1),(91,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,31,0,13,-1,'0',0,1),(92,1,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(93,2,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(94,3,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(95,2,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,10,2,0,13,-1,'0',0,1),(96,3,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,13,-1,'0',0,1),(97,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,13,-1,'0',0,1),(98,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,13,-1,'0',0,1),(99,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,11,0,0,0,13,-1,'0',0,1),(100,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,100,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,13,-1,'0',0,1),(101,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,101,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,13,-1,'0',0,1),(102,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,13,-1,'0',0,1),(103,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,102,0,13,-1,'0',0,1),(104,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,102,0,13,-1,'0',0,1),(105,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,102,0,13,-1,'0',0,1),(106,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,102,0,13,-1,'0',0,1),(107,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,13,-1,'0',0,1),(108,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,13,-1,'0',0,1),(109,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,13,-1,'0',0,1),(110,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,13,-1,'0',0,1),(111,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,99,0,13,-1,'0',0,1),(112,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,99,0,13,-1,'0',0,1),(113,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,99,0,13,-1,'0',0,1),(114,4,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(115,5,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(116,6,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(117,7,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0),(118,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,3,1,0,13,-1,'0',0,0),(119,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,4,1,0,13,-1,'0',0,0),(120,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,1,0,13,-1,'0',0,0),(121,6,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,118,0,13,-1,'0',0,0),(122,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,118,0,13,-1,'0',0,0),(123,7,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,119,0,13,-1,'0',0,0),(124,4,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,119,0,13,-1,'0',0,0),(127,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,99,0,13,-1,'0',0,1),(125,8,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,1,0,-1,'0',0,0),(126,9,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,1,0,-1,'0',0,0),(128,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,99,0,13,-1,'0',0,1),(129,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,99,0,13,-1,'0',0,1),(130,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,99,0,13,-1,'0',0,1),(131,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,99,0,13,-1,'0',0,1),(132,10,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,5,0,-1,'0',0,0),(133,0,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,2,'PARENT','/dashboard/resposta-framework/view.php',0,NULL,0,1,0,12,2,7,13,-1,'0',0,1),(134,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,8,99,0,13,-1,'0',0,1),(135,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,9,99,0,13,-1,'0',0,1),(136,1,0,1,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,10,99,0,13,-1,'0',0,1),(137,11,1,NULL,0,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,0,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
INSERT INTO `Piles` VALUES (1,1,1,'2013-05-11 19:22:01',NULL,'READY');
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Nav',20,111),(2,'Side Nav',0,112),(3,'Site Name',20,113),(4,'Header Content',20,127),(5,'Footer Left',20,128),(6,'Footer Middle',20,129),(7,'Footer Right',20,130),(8,'Logo',20,131),(9,'Slogan',20,134),(10,'Navigation',20,135),(11,'Heading',20,136);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
INSERT INTO `SystemNotifications` VALUES (1,10,'/index.php/dashboard/system/maintenance/update/',NULL,'2013-05-09 18:43:52',0,1,'A new version of concrete5 is now available.','','\n	\n			<h2>5.5.2.1</h2>\n			\n\n<h3>Behavioral Improvements</h3>\n\n<ul>\n<li>Better update checking for new versions of concrete5.</li>\n<li>Attribute types have friendlier names (Checkbox instead of Boolean, etc...)</li>\n<li>When a fixed footprint isn’t set, the image cropper in the file manager now defaults to the full size of the image.</li>\n<li>Improved performance of intelligent search</li>\n<li>Fixed http://www.concrete5.org/developers/bugs/5-5-2/login-and-error-pages-dont-use-the-menu-logo-settings/</li>\n</ul>\n\n<h3>Bug Fixes</h3>\n\n<ul>\n<li>Fixed error where pretty URLs on PHP/FastCGI would only render the home page. (Fixed by parsing REQUEST_URI and stripping query string.)</li>\n<li>Fixed double slash in front of index.php when inserting links in TinyMCE that would lead to pretty URLs not showing up in content blocks.</li>\n<li>Fixed bug in file permissions where they wouldn’t take until you saved and THEN edited them.</li>\n<li>Fixed link to update concrete5 from Dashboard home page, other places.</li>\n<li>Fixing bug in sortByMultiple() on versions of PHP earlier than 5.3. This fixes bugs in the slideshow, image galleries.</li>\n<li>Fixed file manager bug where continue button wouldn’t do anything </li>\n<li>Fixed bug where inserting more than one link through the sitemap in the content block would cause all links after two to just be added to the top of the content block content (in Firefox primarily)</li>\n<li>Reverted radio() function in helpers/form.php to resolve this issue (and possibly others):</li>\n<li>http://www.concrete5.org/developers/bugs/5-5-2/php-error-in-editing-a-file-set/http://www.concrete5.org/index.php?cID=307996&amp;editmode=</li>\n<li>Fixed hidden tabs in Firefox when in advanced permissions mode and setting access on a file in the file manager.</li>\n<li>Fixed bug in layouts where layouts couldn’t be moved multiple times if the version was approved.</li>\n<li>Fixed PHP bug that occurred when trying to clear cache and the cache was disabled</li>\n<li>Fixed bug where image cropping wouldn’t work if images had uppercase file extensions.</li>\n<li>Fixed bug when using memcache to store sessions.</li>\n<li>Fixed bug where selecting files to upload, changing tabs, then switching back to upload tab made it impossible to upload the files.</li>\n</ul>\n\n\n	');
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskPermissionUserGroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskPermissionUserGroups` (
  `tpID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpID`,`gID`,`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskPermissionUserGroups`
--

LOCK TABLES `TaskPermissionUserGroups` WRITE;
/*!40000 ALTER TABLE `TaskPermissionUserGroups` DISABLE KEYS */;
INSERT INTO `TaskPermissionUserGroups` VALUES (1,3,0,1),(2,3,0,1),(3,3,0,1),(4,3,0,1),(5,3,0,1),(6,3,0,1),(8,3,0,1),(9,3,0,1),(10,3,0,1),(11,3,0,1);
/*!40000 ALTER TABLE `TaskPermissionUserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaskPermissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaskPermissions` (
  `tpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tpHandle` varchar(255) DEFAULT NULL,
  `tpName` varchar(255) DEFAULT NULL,
  `tpDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tpID`),
  UNIQUE KEY `tpHandle` (`tpHandle`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaskPermissions`
--

LOCK TABLES `TaskPermissions` WRITE;
/*!40000 ALTER TABLE `TaskPermissions` DISABLE KEYS */;
INSERT INTO `TaskPermissions` VALUES (1,'access_task_permissions','Change Task Permissions','',0),(2,'access_sitemap','Access Sitemap and Page Search','',0),(3,'access_user_search','Access User Search','',0),(4,'access_group_search','Access Group Search','',0),(5,'access_page_defaults','Change Content on Page Type Default Pages','',0),(6,'backup','Perform Full Database Backups','',0),(7,'sudo','Sign in as User','',0),(8,'uninstall_packages','Uninstall Packages','',0),(9,'install_packages','Install Packages and Connect to the Marketplace','',0),(10,'delete_user','Delete Users','',0),(11,'view_newsflow','View Newsflow Updates in an Overlay','',0);
/*!40000 ALTER TABLE `TaskPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (9,0,0,1,0,1,0,1,1),(10,0,0,1,0,1,0,2,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','patssnyder@gmail.com','5064078c7692f47df65a746a73f62828','1',-1,1,'2013-05-09 17:57:31',0,1368300243,1368281380,1368228661,4,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (11,1),(29,1),(30,1),(31,1),(32,1),(38,1),(67,1),(73,1),(74,1),(75,1),(94,1),(95,1),(96,1);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (4,0),(5,0),(7,0),(8,0),(9,1),(10,1);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'new blog, write blog'),(3,'blog drafts,composer'),(4,'pages, add page, delete page, copy, move, alias'),(5,'pages, add page, delete page, copy, move, alias'),(6,'pages, add page, delete page, copy, move, alias'),(7,'find page, search page, search, find'),(8,'files, add file, delete file, copy, move, alias'),(9,'file, file attributes'),(10,'files, category, categories'),(12,'users, groups, people'),(13,'find, search, people'),(14,'user, group, people'),(15,'user attributes'),(16,'new user'),(17,'new user group, new group, group'),(18,'forms, log, error, email, mysql, exception, survey'),(19,'hits, pageviews, visitors, activity'),(20,'forms, questions'),(21,'survey, questions, quiz'),(22,'forms, log, error, email, mysql, exception, survey'),(23,'page types, themes, single pages'),(24,'new theme, installed theme, active theme, change theme, template, css'),(25,'add theme'),(26,'custom theme, change theme, custom css, css'),(27,'page type defaults, global block, global area'),(28,'page attributes'),(33,'add-on, addon, add on, package,applications, ecommerce, discussions, forums, themes, templates, blocks'),(34,'update, upgrade'),(35,'concrete5.org, my account, marketplace'),(36,'buy theme, new theme, install theme, marketplace, template'),(37,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(39,'website name'),(40,'logo, favicon, iphone'),(41,'tinymce, content block, fonts, editor'),(42,'translate, translation'),(43,'timezone'),(44,'interface, quick nav, dashboard background, background image'),(45,'vanity,pretty url, clean url, seo'),(46,'traffic, statistics, google analytics, quant'),(47,'turn off statistics'),(48,'configure search, site search, search option'),(49,'cache option, change cache, turn on cache, turn off cache, no cache, page cache, caching'),(50,'cache option, turn off cache, no cache, page cache, caching'),(51,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(52,'editors, hide site, offline, private, public'),(53,'file options, file manager'),(54,'security, files, media '),(55,'security, users, actions, administrator, admin'),(56,'security, lock ip, lock out, block ip'),(57,'security, registration'),(58,'antispam, block spam, security'),(59,'lock site, under construction'),(60,'profile'),(61,'member profile, member page,community'),(62,'signup, new user, community'),(63,'smtp, mail settings'),(64,'email server, mail settings, mail configuration'),(65,'email server, mail settings, mail configuration, private message, message system'),(66,'attribute configuration'),(68,'overrides, system info, debug, support,help'),(69,'errors,exceptions, develop, support, help'),(70,'logs, email, error, exceptions'),(71,'security, alternate storage, hide files'),(72,'upgrade, new version');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (76,'960.0000'),(77,'212.0000'),(78,'960.0000'),(79,'212.0000'),(80,'960.0000'),(81,'212.0000'),(82,'960.0000'),(83,'212.0000'),(84,'960.0000'),(85,'212.0000'),(86,'960.0000'),(87,'212.0000'),(88,'960.0000'),(89,'212.0000'),(90,'150.0000'),(91,'150.0000');
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
INSERT INTO `atSelectOptions` VALUES (1,13,'composer',0,1),(2,13,'hello',1,1),(3,13,'world',2,1),(4,13,'first post',3,1);
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
INSERT INTO `atSelectOptionsSelected` VALUES (93,1),(93,2),(93,3),(93,4);
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
INSERT INTO `atSelectSettings` VALUES (13,1,'display_asc',1),(15,0,'display_asc',0);
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(6,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
INSERT INTO `btContentImage` VALUES (15,8,0,0,0,'',0,NULL,''),(16,2,0,960,212,'',0,1,'My concrete5 Blog'),(17,7,0,960,212,'',0,1,''),(18,6,0,960,212,'',0,1,''),(19,4,0,960,212,'',0,1,''),(28,1,0,960,212,'',0,1,''),(47,2,0,960,212,'',0,1,'My concrete5 Blog'),(49,8,0,0,0,'',0,NULL,'');
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(13,'<p>This is my first blog post.</p>'),(21,'<h3>Links:</h3>'),(23,'<h1><a title=\"Home\" \n                                	href=\"{CCM:CID_1}\"\n                                >Bandmate</a></h1>'),(24,'<h1>Welcome to concrete5 - an Open Source CMS</h1>'),(25,'<h3>Sidebar</h3>'),(26,'<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title=\"Move blocks in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/blocks-and-areas\" target=\"_blank\">drag and drop blocks</a>&nbsp;like this around your layout.</p>'),(27,'<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5\'s in-context editing. Just <a href=\"{CCM:CID_100}\">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title=\"In-context editing CMS\" href=\"http://www.concrete5.org/documentation/general-topics/in-context-editing/\" target=\"_blank\">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title=\"Add a page in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/add-a-page/\" target=\"_blank\">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title=\"Add a simple form in concrete5\" href=\"http://www.concrete5.org/documentation/general-topics/add_a_form\" target=\"_blank\">a Form</a>.</li>\n                                        <li><a title=\"add-on marketplace for concrete5\" href=\"http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/\" target=\"_blank\">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We\'ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href=\"{CCM:CID_6}\">Sitemap</a> and quickly delete the parts you don\'t want.</p>'),(29,'<h1>About Us</h1>'),(31,'<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title=\"concrete5 Content Management System\" href=\"http://www.concrete5.org/\" target=\"_blank\">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title=\"open source content management system\" href=\"http://www.concrete5.org/community\" target=\"_blank\">community</a>&nbsp;and the&nbsp;<a href=\"http://www.concrete5.org/documentation/general-topics/\" target=\"_blank\">documentation</a>. You can also browse our&nbsp;<a title=\"concrete5 marketplace\" href=\"http://www.concrete5.org/marketplace/\" target=\"_blank\">marketplace</a>&nbsp;for more&nbsp;<a title=\"Add-ons for concrete5\" href=\"http://www.concrete5.org/marketplace/addons/\" target=\"_blank\">add-ons</a>&nbsp;and&nbsp;<a title=\"Themes for concrete5\" href=\"http://www.concrete5.org/marketplace/themes/\" target=\"_blank\">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href=\"http://www.concrete5.org/community/forums/\" target=\"_blank\">forums</a> and post for free to the&nbsp;<a href=\"http://www.concrete5.org/community/forums/jobs1/\" target=\"_blank\">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href=\"http://www.concrete5.org/services/support/\" target=\"_blank\">any problem</a>&nbsp;you run into. We offer <a href=\"http://www.concrete5.org/services/training/\" target=\"_blank\">training courses</a>&nbsp;and&nbsp;<a href=\"http://www.concrete5.org/services/hosting/\" target=\"_blank\">hosting packages</a>, just let us know <a href=\"http://www.concrete5.org/services/professional_services/\" target=\"_blank\">how we can help</a>.</p>'),(32,'<h1>Guestbook</h1>'),(35,'<h1>Contact Us</h1>'),(37,'<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href=\"http://www.concrete5.org/documentation/general-topics/add_a_form\" target=\"_blank\">add a form block</a>.</p>'),(39,'<h1>Sitemap</h1>'),(40,'<h3>Site Map</h3>'),(44,'<h3>Tags</h3>'),(48,'<p>Here is some sample content! I\'m writing it using composer!</p>'),(57,'<p>Bandmate</p>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
INSERT INTO `btCoreStackDisplay` VALUES (30,112),(33,112),(36,112);
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateArchive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateArchive` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `numMonths` int(11) DEFAULT '12',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateArchive`
--

LOCK TABLES `btDateArchive` WRITE;
/*!40000 ALTER TABLE `btDateArchive` DISABLE KEYS */;
INSERT INTO `btDateArchive` VALUES (46,'Archives',123,12),(52,'Archives',123,12);
/*!40000 ALTER TABLE `btDateArchive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlexSlider`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlexSlider` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `largeWidth` int(10) unsigned DEFAULT NULL,
  `largeHeight` int(10) unsigned DEFAULT NULL,
  `cropLarge` tinyint(4) DEFAULT '0',
  `thumbWidth` int(10) unsigned DEFAULT NULL,
  `thumbHeight` int(10) unsigned DEFAULT NULL,
  `cropThumb` tinyint(4) DEFAULT '0',
  `randomize` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlexSlider`
--

LOCK TABLES `btFlexSlider` WRITE;
/*!40000 ALTER TABLE `btFlexSlider` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlexSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
INSERT INTO `btForm` VALUES (38,1368147466,'Contact Us','Thanks!',0,'',0,0,0);
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
INSERT INTO `btFormQuestions` VALUES (5,4,38,1368147466,'Name','field','',0,50,3,1),(6,5,38,1368147466,'Email:','email','',0,50,3,1),(7,6,38,1368147466,'What are you contacting us about?','radios','Question%%Comment%%Urgent Issue%%To Say Hello%%Other',0,50,3,1),(8,7,38,1368147466,'Message','text','',0,50,3,1);
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
INSERT INTO `btGuestBook` VALUES (34,0,'Tell us what you think','M jS, Y',1,1,0,'');
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btLuckyCta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btLuckyCta` (
  `bID` int(10) unsigned NOT NULL,
  `luckyText` longtext,
  `luckyDesc` longtext,
  `luckyLinkText` longtext,
  `fID` int(10) unsigned DEFAULT '0',
  `pageID` int(11) DEFAULT NULL,
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btLuckyCta`
--

LOCK TABLES `btLuckyCta` WRITE;
/*!40000 ALTER TABLE `btLuckyCta` DISABLE KEYS */;
/*!40000 ALTER TABLE `btLuckyCta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (20,'display_asc','top',0,0,'none','enough',0,0),(22,'display_asc','second_level',0,0,'all','all',0,0),(41,'display_asc','top',0,0,'all','all',0,0),(55,'display_asc','top',0,0,'none','enough',0,0),(56,'display_asc','top',0,0,'none','enough',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (43,12,'chrono_desc',119,0,0,1,0,4,0,'','',1,0,128);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPowerSlideImgRigid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPowerSlideImgRigid` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `pageID` int(10) unsigned DEFAULT NULL,
  `powerSlidePhraseTitle` longtext,
  `powerSlidePhraseDesc` longtext,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPowerSlideImgRigid`
--

LOCK TABLES `btPowerSlideImgRigid` WRITE;
/*!40000 ALTER TABLE `btPowerSlideImgRigid` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPowerSlideImgRigid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPowerSlideRigid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPowerSlideRigid` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `powerSlideHeight` longtext,
  `powerSlideWidth` longtext,
  `transitionType` longtext,
  `slideDelay` longtext,
  `prevNextArrows` longtext,
  `prevBtnOffsetX` longtext,
  `prevBtnOffsetY` longtext,
  `nextBtnOffsetX` longtext,
  `nextBtnOffsetY` longtext,
  `paginationToggle` longtext,
  `paginationOffsetY` longtext,
  `paginationAlignment` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPowerSlideRigid`
--

LOCK TABLES `btPowerSlideRigid` WRITE;
/*!40000 ALTER TABLE `btPowerSlideRigid` DISABLE KEYS */;
/*!40000 ALTER TABLE `btPowerSlideRigid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
INSERT INTO `btSearch` VALUES (42,'Search This Site','Search','',''),(50,'Search Blog','Search','/blog','');
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSexyCta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSexyCta` (
  `bID` int(10) unsigned NOT NULL,
  `sctaText` longtext,
  `sctaDesc` longtext,
  `sctaLinkText` longtext,
  `fID` int(10) unsigned DEFAULT '0',
  `pageID` int(11) DEFAULT NULL,
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSexyCta`
--

LOCK TABLES `btSexyCta` WRITE;
/*!40000 ALTER TABLE `btSexyCta` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSexyCta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSimpleCta`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSimpleCta` (
  `bID` int(10) unsigned NOT NULL,
  `ctaTitle` longtext,
  `ctaDesc` longtext,
  `pageID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSimpleCta`
--

LOCK TABLES `btSimpleCta` WRITE;
/*!40000 ALTER TABLE `btSimpleCta` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSimpleCta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSimpleLogo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSimpleLogo` (
  `bID` int(10) unsigned NOT NULL,
  `logoTitleWhite` longtext,
  `logoTitleYellow` longtext,
  `logoSubTitle` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSimpleLogo`
--

LOCK TABLES `btSimpleLogo` WRITE;
/*!40000 ALTER TABLE `btSimpleLogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSimpleLogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
INSERT INTO `btTags` VALUES (14,'Tags',123,'page',0),(45,'',123,'cloud',0),(51,'Tags',123,'cloud',0);
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btvCard`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btvCard` (
  `bID` int(10) unsigned NOT NULL,
  `compName` longtext,
  `stAddress` longtext,
  `stAddress2` longtext,
  `city` longtext,
  `state` longtext,
  `zipCode` longtext,
  `phNumber` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btvCard`
--

LOCK TABLES `btvCard` WRITE;
/*!40000 ALTER TABLE `btvCard` DISABLE KEYS */;
/*!40000 ALTER TABLE `btvCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bandmate_v7p3r_com_3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-17  1:01:53
