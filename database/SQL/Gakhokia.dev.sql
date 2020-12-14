-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: diemge_Gakhokia
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1,NULL,1,'Category 1','category-1','2020-03-23 06:41:40','2020-03-23 06:41:40'),(2,NULL,1,'Category 2','category-2','2020-03-23 06:41:40','2020-03-23 06:41:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `name`, `link`, `image`, `created_at`, `updated_at`) VALUES (1,'Free TAXI','https://freetaxi.ge','clients/November2020/HtMSPK0rXDJ2sYB8uMJ2.png','2020-11-12 17:48:00','2020-11-26 19:01:40'),(2,'MEDUZA','https://pierbatumi.ge','clients/November2020/FvUOeNxPmG6kyD2eo8bI.png','2020-11-12 17:48:00','2020-11-26 19:01:47'),(3,'TSINDA','https://tsinda.ge','clients/November2020/TxypJdxxjQUhB7nXk7mu.png','2020-11-12 18:01:00','2020-11-26 19:01:33'),(4,'ZONA','https://www.facebook.com/zonabatumi/','clients/November2020/05GDKsXxOr02KqKJotrG.png','2020-11-12 18:03:00','2020-11-26 19:01:26'),(5,'GEPA','https://gepa.ge','clients/November2020/fJiP4WyR5uXymS9Ircig.png','2020-11-12 18:04:00','2020-11-26 19:01:12'),(6,'KalaPrint','https://kalaprint.ge','clients/November2020/sOGElElcezVxx0m3WloA.png','2020-11-12 18:04:00','2020-11-26 19:01:19');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(64,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(65,8,'company','text','Company',0,1,1,1,1,1,'{}',2),(66,8,'jobtitle','text','Jobtitle',0,1,1,1,1,1,'{}',3),(67,8,'description','text','Description',0,1,1,1,1,1,'{}',4),(68,8,'start','date','Start',0,1,1,1,1,1,'{}',5),(69,8,'end','date','End',0,1,1,1,1,1,'{}',6),(70,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(71,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(72,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(73,12,'name','text','Name',0,1,1,1,1,1,'{}',2),(74,12,'width_percent','number','Width Percent',0,1,1,1,1,1,'{}',3),(75,12,'show_percent','number','Show Percent',0,1,1,1,1,1,'{}',4),(76,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(77,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(78,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(79,13,'name','text','Name',0,1,1,1,1,1,'{}',2),(80,13,'project','text','Project',0,1,1,1,1,1,'{}',3),(81,13,'client','text','Client',0,1,1,1,1,1,'{}',4),(82,13,'duration','text','Duration',0,1,1,1,1,1,'{}',5),(83,13,'technologies','text','Technologies',0,1,1,1,1,1,'{}',6),(84,13,'budget','number','Budget',0,1,1,1,1,1,'{}',7),(85,13,'image','image','Image',0,1,1,1,1,1,'{}',8),(86,13,'project_file','file','Project File',0,1,1,1,1,1,'{}',9),(87,13,'project_url','text','Project Url',0,1,1,1,1,1,'{}',10),(88,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(89,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(90,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(91,14,'name','text','Name',0,1,1,1,1,1,'{}',2),(92,14,'title','text','Title',0,1,1,1,1,1,'{}',3),(93,14,'description','text','Description',0,1,1,1,1,1,'{}',4),(94,14,'faculty','text','Faculty',0,1,1,1,1,1,'{}',5),(95,14,'rank','text','Rank',0,1,1,1,1,1,'{}',6),(96,14,'start','date','Start',0,1,1,1,1,1,'{}',7),(97,14,'end','date','End',0,1,1,1,1,1,'{}',8),(98,14,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(99,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(100,15,'id','text','Id',1,0,0,0,0,0,'{}',1),(101,15,'name','text','Name',0,1,1,1,1,1,'{}',2),(102,15,'link','text','Link',0,1,1,1,1,1,'{}',3),(103,15,'image','image','Image',0,1,1,1,1,1,'{}',4),(104,15,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(105,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2020-03-23 06:41:41','2020-03-23 06:41:41'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2020-03-23 06:41:41','2020-03-23 06:41:41'),(8,'experiences','experiences','Experience','Experiences','voyager-paperclip','App\\Experience',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-04-23 17:54:59','2020-04-23 17:54:59'),(11,'educations','educations','Education','Education','voyager-book','App\\Education',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-04-23 18:15:47','2020-04-23 18:15:47'),(12,'skills','skills','Skill','Skills','voyager-tools','App\\Skill',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-04-24 07:28:22','2020-04-24 07:28:22'),(13,'works','works','Work','Works','voyager-trophy','App\\Work',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2020-04-26 06:40:36','2020-04-26 16:42:29'),(14,'education','education','Education','Education','voyager-study','App\\Education',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-08-25 23:41:12','2020-08-25 23:41:12'),(15,'clients','clients','Client','Clients','voyager-wallet','App\\Client',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2020-11-12 17:47:28','2020-11-12 17:47:28');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` (`id`, `name`, `title`, `description`, `faculty`, `rank`, `start`, `end`, `created_at`, `updated_at`) VALUES (1,'MUKHURCHA PUBLIC SCHOOL','HIGH SCHOOL',NULL,NULL,NULL,'2001-09-01','2015-05-25','2020-08-25 23:42:31','2020-08-25 23:42:31'),(2,'BSU','BATUMI SHOTA RUSTAVELI STATE UNIVERSITY','Web Developer Technical Course','Vocational training course',NULL,'2016-11-01','2018-11-01','2020-08-25 23:43:37','2020-08-25 23:43:37'),(3,'BSU','BATUMI SHOTA RUSTAVELI STATE UNIVERSITY','Faculty of Physics, Mathematics and Computer Science','Computer Science','BACHELOR','2015-10-05','2020-07-01','2020-08-25 23:44:37','2020-08-25 23:44:37');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` (`id`, `company`, `jobtitle`, `description`, `start`, `end`, `created_at`, `updated_at`) VALUES (2,'Provider Group','IT Technical','Computer Service Company','2015-06-25','2015-12-15','2020-04-26 17:40:25','2020-04-26 17:40:25'),(3,'Net Service','Network Installer','Network Provider Company','2016-02-12','2016-09-15','2020-04-26 17:38:58','2020-04-26 17:38:58'),(5,'Provider Group','IT Support / Web Developer','Distribution Company','2016-11-20','2018-06-25','2020-04-26 17:45:08','2020-04-26 17:45:08'),(6,'Storno Audit','IT Support / Web Developer','Accounting  and Auditing Company','2017-01-10','2018-06-25','2020-04-26 17:47:02','2020-04-26 17:47:02'),(7,'Free Style','Web Developer / Web Administrator','Fashion Store','2017-12-25','2018-12-30','2020-04-26 17:49:44','2020-04-26 17:49:44'),(8,'Pier Batumi','IT Support','Seaside Restaurants Network','2018-03-10','2018-09-20','2020-04-26 17:52:00','2020-04-26 17:52:27'),(9,'ORBI GROUP','Jr Web Developer / IT Support','Building Development','2018-09-01','2020-07-01','2020-04-26 17:55:00','2020-08-26 00:09:43'),(11,'DMG','CEO / Web Developer','Development & Digital Marketing Company','2020-08-01',NULL,'2020-08-25 23:29:00','2020-08-25 23:29:43'),(12,'Asya Software','Full Stack Web Developer','Software Company','2020-10-12',NULL,'2020-11-09 16:59:00','2020-11-09 17:02:21');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2020-03-23 06:41:40','2020-03-23 06:41:40','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,10,'2020-03-23 06:41:40','2020-11-12 18:01:26','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,11,'2020-03-23 06:41:40','2020-11-12 18:01:23','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,12,'2020-03-23 06:41:40','2020-11-12 18:01:23','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,13,'2020-03-23 06:41:40','2020-11-12 18:01:23',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2020-03-23 06:41:40','2020-04-23 18:09:40','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2020-03-23 06:41:40','2020-04-23 18:09:40','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2020-03-23 06:41:40','2020-04-23 18:09:40','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2020-03-23 06:41:40','2020-04-23 18:09:40','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2020-03-23 06:41:40','2020-11-12 18:01:23','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,9,'2020-03-23 06:41:40','2020-11-12 18:01:26','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,7,'2020-03-23 06:41:41','2020-11-12 18:01:26','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,8,'2020-03-23 06:41:41','2020-11-12 18:01:26','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2020-03-23 06:41:41','2020-04-23 18:09:40','voyager.hooks',NULL),(16,1,'Experiences','','_self','voyager-paperclip',NULL,NULL,4,'2020-04-23 17:54:59','2020-11-12 18:01:26','voyager.experiences.index',NULL),(20,1,'Skills','','_self','voyager-tools',NULL,NULL,6,'2020-04-24 07:28:22','2020-11-12 18:01:26','voyager.skills.index',NULL),(21,1,'Works','','_self','voyager-trophy',NULL,NULL,2,'2020-04-26 06:40:36','2020-11-12 18:01:29','voyager.works.index',NULL),(22,1,'Education','','_self','voyager-study',NULL,NULL,5,'2020-08-25 23:41:12','2020-11-12 18:01:26','voyager.education.index',NULL),(23,1,'Clients','','_self','voyager-wallet',NULL,NULL,3,'2020-11-12 17:47:28','2020-11-12 18:01:29','voyager.clients.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES (1,'admin','2020-03-23 06:41:40','2020-03-23 06:41:40');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2016_01_01_000000_create_pages_table',2),(25,'2016_01_01_000000_create_posts_table',2),(26,'2016_02_15_204651_create_categories_table',2),(27,'2017_04_11_000000_alter_post_nullable_fields_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(47,1),(48,1),(49,1),(50,1),(51,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES (1,'browse_admin',NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(2,'browse_bread',NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(3,'browse_database',NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(4,'browse_media',NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(5,'browse_compass',NULL,'2020-03-23 06:41:40','2020-03-23 06:41:40'),(6,'browse_menus','menus','2020-03-23 06:41:40','2020-03-23 06:41:40'),(7,'read_menus','menus','2020-03-23 06:41:40','2020-03-23 06:41:40'),(8,'edit_menus','menus','2020-03-23 06:41:40','2020-03-23 06:41:40'),(9,'add_menus','menus','2020-03-23 06:41:40','2020-03-23 06:41:40'),(10,'delete_menus','menus','2020-03-23 06:41:40','2020-03-23 06:41:40'),(11,'browse_roles','roles','2020-03-23 06:41:40','2020-03-23 06:41:40'),(12,'read_roles','roles','2020-03-23 06:41:40','2020-03-23 06:41:40'),(13,'edit_roles','roles','2020-03-23 06:41:40','2020-03-23 06:41:40'),(14,'add_roles','roles','2020-03-23 06:41:40','2020-03-23 06:41:40'),(15,'delete_roles','roles','2020-03-23 06:41:40','2020-03-23 06:41:40'),(16,'browse_users','users','2020-03-23 06:41:40','2020-03-23 06:41:40'),(17,'read_users','users','2020-03-23 06:41:40','2020-03-23 06:41:40'),(18,'edit_users','users','2020-03-23 06:41:40','2020-03-23 06:41:40'),(19,'add_users','users','2020-03-23 06:41:40','2020-03-23 06:41:40'),(20,'delete_users','users','2020-03-23 06:41:40','2020-03-23 06:41:40'),(21,'browse_settings','settings','2020-03-23 06:41:40','2020-03-23 06:41:40'),(22,'read_settings','settings','2020-03-23 06:41:40','2020-03-23 06:41:40'),(23,'edit_settings','settings','2020-03-23 06:41:40','2020-03-23 06:41:40'),(24,'add_settings','settings','2020-03-23 06:41:40','2020-03-23 06:41:40'),(25,'delete_settings','settings','2020-03-23 06:41:40','2020-03-23 06:41:40'),(26,'browse_categories','categories','2020-03-23 06:41:40','2020-03-23 06:41:40'),(27,'read_categories','categories','2020-03-23 06:41:40','2020-03-23 06:41:40'),(28,'edit_categories','categories','2020-03-23 06:41:40','2020-03-23 06:41:40'),(29,'add_categories','categories','2020-03-23 06:41:40','2020-03-23 06:41:40'),(30,'delete_categories','categories','2020-03-23 06:41:40','2020-03-23 06:41:40'),(31,'browse_posts','posts','2020-03-23 06:41:41','2020-03-23 06:41:41'),(32,'read_posts','posts','2020-03-23 06:41:41','2020-03-23 06:41:41'),(33,'edit_posts','posts','2020-03-23 06:41:41','2020-03-23 06:41:41'),(34,'add_posts','posts','2020-03-23 06:41:41','2020-03-23 06:41:41'),(35,'delete_posts','posts','2020-03-23 06:41:41','2020-03-23 06:41:41'),(36,'browse_pages','pages','2020-03-23 06:41:41','2020-03-23 06:41:41'),(37,'read_pages','pages','2020-03-23 06:41:41','2020-03-23 06:41:41'),(38,'edit_pages','pages','2020-03-23 06:41:41','2020-03-23 06:41:41'),(39,'add_pages','pages','2020-03-23 06:41:41','2020-03-23 06:41:41'),(40,'delete_pages','pages','2020-03-23 06:41:41','2020-03-23 06:41:41'),(41,'browse_hooks',NULL,'2020-03-23 06:41:41','2020-03-23 06:41:41'),(47,'browse_experiences','experiences','2020-04-23 17:54:59','2020-04-23 17:54:59'),(48,'read_experiences','experiences','2020-04-23 17:54:59','2020-04-23 17:54:59'),(49,'edit_experiences','experiences','2020-04-23 17:54:59','2020-04-23 17:54:59'),(50,'add_experiences','experiences','2020-04-23 17:54:59','2020-04-23 17:54:59'),(51,'delete_experiences','experiences','2020-04-23 17:54:59','2020-04-23 17:54:59'),(62,'browse_educations','educations','2020-04-23 18:15:47','2020-04-23 18:15:47'),(63,'read_educations','educations','2020-04-23 18:15:47','2020-04-23 18:15:47'),(64,'edit_educations','educations','2020-04-23 18:15:47','2020-04-23 18:15:47'),(65,'add_educations','educations','2020-04-23 18:15:47','2020-04-23 18:15:47'),(66,'delete_educations','educations','2020-04-23 18:15:47','2020-04-23 18:15:47'),(67,'browse_skills','skills','2020-04-24 07:28:22','2020-04-24 07:28:22'),(68,'read_skills','skills','2020-04-24 07:28:22','2020-04-24 07:28:22'),(69,'edit_skills','skills','2020-04-24 07:28:22','2020-04-24 07:28:22'),(70,'add_skills','skills','2020-04-24 07:28:22','2020-04-24 07:28:22'),(71,'delete_skills','skills','2020-04-24 07:28:22','2020-04-24 07:28:22'),(72,'browse_works','works','2020-04-26 06:40:36','2020-04-26 06:40:36'),(73,'read_works','works','2020-04-26 06:40:36','2020-04-26 06:40:36'),(74,'edit_works','works','2020-04-26 06:40:36','2020-04-26 06:40:36'),(75,'add_works','works','2020-04-26 06:40:36','2020-04-26 06:40:36'),(76,'delete_works','works','2020-04-26 06:40:36','2020-04-26 06:40:36'),(77,'browse_education','education','2020-08-25 23:41:12','2020-08-25 23:41:12'),(78,'read_education','education','2020-08-25 23:41:12','2020-08-25 23:41:12'),(79,'edit_education','education','2020-08-25 23:41:12','2020-08-25 23:41:12'),(80,'add_education','education','2020-08-25 23:41:12','2020-08-25 23:41:12'),(81,'delete_education','education','2020-08-25 23:41:12','2020-08-25 23:41:12'),(82,'browse_clients','clients','2020-11-12 17:47:28','2020-11-12 17:47:28'),(83,'read_clients','clients','2020-11-12 17:47:28','2020-11-12 17:47:28'),(84,'edit_clients','clients','2020-11-12 17:47:28','2020-11-12 17:47:28'),(85,'add_clients','clients','2020-11-12 17:47:28','2020-11-12 17:47:28'),(86,'delete_clients','clients','2020-11-12 17:47:28','2020-11-12 17:47:28');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES (2,2,1,'Laravel Multidomain Package',NULL,'Laravel Multidomain Package','<p><span style=\"color: #525252; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px;\">Laravel Multidomain is a package by&nbsp;</span><a style=\"box-sizing: border-box; border: 0px solid; color: #f4645f; text-decoration-line: none; --text-opacity: 1; transition: all 0.2s ease 0s; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px;\" href=\"https://github.com/gecche\">@gecche</a><span style=\"color: #525252; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px;\">&nbsp;that allows a single Laravel Installation to work with multiple HTTP domains:</span></p>\r\n<p style=\"box-sizing: border-box; border: 0px solid; margin: 1.33333em 0px; color: #1a202c; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px; font-style: italic;\">&nbsp;\"There are many cases in which different customers use the same application in terms of code but not in terms of database, storage, and configuration.</p>\r\n<p style=\"box-sizing: border-box; border: 0px solid; margin: 1.33333em 0px; color: #1a202c; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px; font-style: italic;\">This package gives a very simple way to get a specific env file, a specific storage path, and a specific database for each such customer. \"</p>\r\n<p><span style=\"color: #525252; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px;\">Once you finish the&nbsp;</span><a style=\"box-sizing: border-box; border: 0px solid; color: #f4645f; text-decoration-line: none; --text-opacity: 1; transition: all 0.2s ease 0s; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px;\" href=\"https://github.com/gecche/laravel-multidomain/blob/master/README.md\">installation and setup</a><span style=\"color: #525252; font-family: \'Source Sans Pro\', system-ui, BlinkMacSystemFont, -apple-system, \'Segoe UI\', Roboto, Oxygen, Ubuntu, Cantarell, \'Fira Sans\', \'Droid Sans\', \'Helvetica Neue\', sans-serif; font-size: 18px;\">&nbsp;outlined in the readme, you can use package commands to manage domains:</span></p>','posts/November2020/Mm4E6rM1VcSXwTpi8Tb1.jpg','laravel-multidomain-package',NULL,NULL,'PUBLISHED',0,'2020-11-23 15:35:31','2020-11-23 15:35:31');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES (1,'admin','Administrator','2020-03-23 06:41:40','2020-03-23 06:41:40'),(2,'user','Normal User','2020-03-23 06:41:40','2020-03-23 06:41:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES (1,'site.title','Site Title','Davit Gakhokia','','text',1,'Site'),(2,'site.description','Site Description','დავით გახოკია , ვებ დეველოპერი / IT სპეციალიტი','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/August2020/po45FcVIsOnfpp5Imboe.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','Davit Gakhokia','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to davit Gakhokia\'s Portfolio Admin Panel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'contact.phone','Phone','+995 514 756688',NULL,'text',6,'Contact'),(12,'contact.email','Email','davit@gakhokia.dev',NULL,'text',7,'Contact'),(13,'contact.facebook','Facebook','https://www.facebook.com/davit.gakhokia',NULL,'text',8,'Contact'),(14,'contact.instagram','Instagram','https://www.instagram.com/davit.gakhokia',NULL,'text',9,'Contact'),(15,'contact.linkdin','Linkdin','https://www.linkedin.com/in/davit-gakhokia/',NULL,'text',10,'Contact'),(16,'contact.github','GitHub','https://github.com/david-gakhokia',NULL,'text',11,'Contact'),(17,'contact.whatsapp','WhatsApp','+995 514756688',NULL,'text',12,'Contact'),(18,'contact.viber','Viber','+995 514756688',NULL,'text',13,'Contact'),(19,'contact.skype','Skype','+995 514756688',NULL,'text',14,'Contact'),(20,'about.name','Name','Davit',NULL,'text',15,'About'),(21,'about.surname','Surname','Gakhokia',NULL,'text',16,'About'),(22,'about.birthdate','Birthdate','06.16.1997',NULL,'text',17,'About'),(23,'about.nationality','Nationality','Georgia',NULL,'text',18,'About'),(24,'about.address','Address','Adjara, Batumi',NULL,'text',19,'About'),(25,'about.langages','Langages','Georgian , English',NULL,'text',20,'About'),(26,'about.religion','Religion','Christian',NULL,'text',21,'About'),(27,'about.profession','Profession','Web Developer',NULL,'text',22,'About'),(28,'about.driving_license','Driving-license','B 1',NULL,'text',23,'About'),(29,'about.relationship','Relationship','To get married',NULL,'text',24,'About'),(30,'about.cv','CV','[{\"download_link\":\"settings\\/November2020\\/qtalsUyqH4bkZxUx8Ap0.pdf\",\"original_name\":\"Davit Gakhokia (CV).pdf\"}]',NULL,'file',25,'About'),(31,'about.about_text','About Text','It does not matter what degree of education you have got,\r\nwhat really matters is, your interest and love towards\r\nthe job you do, everything else is formality.\r\nHardworkingness and purposefulness is very important\r\nand they will definitely bring a desired outcome',NULL,'text_area',26,'About'),(32,'contact.behance','Behance','https://www.behance.net/davitgakhokia',NULL,'text',27,'Contact'),(33,'site.image','Image','settings/November2020/YdJ1Fu1jMzV71vVb7KPJ.jpg',NULL,'image',28,'Site'),(34,'about.cv_url','CV_URL','https://gakhokia.dev//storage/settings/November2020/qtalsUyqH4bkZxUx8Ap0.pdf',NULL,'text',29,'About');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width_percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_percent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` (`id`, `name`, `width_percent`, `show_percent`, `created_at`, `updated_at`) VALUES (3,'WINDOWS 7/10','80','80','2020-08-26 00:00:00','2020-08-26 00:02:37'),(4,'SQL/MYSQL','55','55','2020-08-26 00:00:27','2020-08-26 00:00:27'),(5,'MS SERVER 2008-2016','55','55','2020-08-26 00:00:35','2020-08-26 00:00:35'),(6,'CORELDRAW','55','55','2020-08-26 00:00:44','2020-08-26 00:00:44'),(7,'PHOTOSHOP','55','55','2020-08-26 00:00:52','2020-08-26 00:00:52'),(8,'HTML5/CSS3','85','85','2020-08-26 00:01:00','2020-08-26 00:01:00'),(9,'BOOTSTRAP 4','75','75','2020-08-26 00:01:10','2020-08-26 00:01:10'),(10,'JS / JQUERY','65','65','2020-08-26 00:01:19','2020-08-26 00:01:19'),(11,'PRESTASHOP','55','55','2020-08-26 00:01:34','2020-08-26 00:01:34'),(12,'WORDPRESS','65','65','2020-08-26 00:01:54','2020-08-26 00:01:54'),(13,'CODEIGNITER','65','65','2020-08-26 00:02:03','2020-08-26 00:02:03'),(14,'LARAVEL','60','60','2020-08-26 00:02:13','2020-08-26 00:02:13');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES (1,'data_types','display_name_singular',5,'pt','Post','2020-03-23 06:41:41','2020-03-23 06:41:41'),(2,'data_types','display_name_singular',6,'pt','Página','2020-03-23 06:41:41','2020-03-23 06:41:41'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2020-03-23 06:41:41','2020-03-23 06:41:41'),(4,'data_types','display_name_singular',4,'pt','Categoria','2020-03-23 06:41:41','2020-03-23 06:41:41'),(5,'data_types','display_name_singular',2,'pt','Menu','2020-03-23 06:41:41','2020-03-23 06:41:41'),(6,'data_types','display_name_singular',3,'pt','Função','2020-03-23 06:41:41','2020-03-23 06:41:41'),(7,'data_types','display_name_plural',5,'pt','Posts','2020-03-23 06:41:41','2020-03-23 06:41:41'),(8,'data_types','display_name_plural',6,'pt','Páginas','2020-03-23 06:41:41','2020-03-23 06:41:41'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2020-03-23 06:41:41','2020-03-23 06:41:41'),(10,'data_types','display_name_plural',4,'pt','Categorias','2020-03-23 06:41:41','2020-03-23 06:41:41'),(11,'data_types','display_name_plural',2,'pt','Menus','2020-03-23 06:41:41','2020-03-23 06:41:41'),(12,'data_types','display_name_plural',3,'pt','Funções','2020-03-23 06:41:41','2020-03-23 06:41:41'),(13,'categories','slug',1,'pt','categoria-1','2020-03-23 06:41:41','2020-03-23 06:41:41'),(14,'categories','name',1,'pt','Categoria 1','2020-03-23 06:41:41','2020-03-23 06:41:41'),(15,'categories','slug',2,'pt','categoria-2','2020-03-23 06:41:41','2020-03-23 06:41:41'),(16,'categories','name',2,'pt','Categoria 2','2020-03-23 06:41:41','2020-03-23 06:41:41'),(17,'pages','title',1,'pt','Olá Mundo','2020-03-23 06:41:41','2020-03-23 06:41:41'),(18,'pages','slug',1,'pt','ola-mundo','2020-03-23 06:41:41','2020-03-23 06:41:41'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2020-03-23 06:41:41','2020-03-23 06:41:41'),(20,'menu_items','title',1,'pt','Painel de Controle','2020-03-23 06:41:41','2020-03-23 06:41:41'),(21,'menu_items','title',2,'pt','Media','2020-03-23 06:41:41','2020-03-23 06:41:41'),(22,'menu_items','title',12,'pt','Publicações','2020-03-23 06:41:41','2020-03-23 06:41:41'),(23,'menu_items','title',3,'pt','Utilizadores','2020-03-23 06:41:41','2020-03-23 06:41:41'),(24,'menu_items','title',11,'pt','Categorias','2020-03-23 06:41:41','2020-03-23 06:41:41'),(25,'menu_items','title',13,'pt','Páginas','2020-03-23 06:41:41','2020-03-23 06:41:41'),(26,'menu_items','title',4,'pt','Funções','2020-03-23 06:41:41','2020-03-23 06:41:41'),(27,'menu_items','title',5,'pt','Ferramentas','2020-03-23 06:41:41','2020-03-23 06:41:41'),(28,'menu_items','title',6,'pt','Menus','2020-03-23 06:41:41','2020-03-23 06:41:41'),(29,'menu_items','title',7,'pt','Base de dados','2020-03-23 06:41:41','2020-03-23 06:41:41'),(30,'menu_items','title',10,'pt','Configurações','2020-03-23 06:41:41','2020-03-23 06:41:41');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES (2,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$Nmc6zwLSohLzIj1WdhDaIOo8/LfGDDhwIgb1CPcvGEqaLEZp6G7WC','qX6T327Csn6fzWvfK1uCgjXZv6VBM2fP1lpMearQnPR82s2JXorFFum2zTwW',NULL,'2020-03-23 06:41:41','2020-03-23 06:41:41'),(2,1,'Davit Gakhokia','davit@gakhokia.dev','users/April2020/DuDlCm3lPxEMWABHlHMd.jpg',NULL,'$2y$10$JI.L2HQFn0CWkxt9AJyD1elCmImiBHAkM9gqRV7uIr5a4hOtDmaKC','pOSTxt4p8Nf85iGfspxrSyl4zwzM5cCtBthNyAhQE5QB3KthXp1gZYp9FDkI','{\"locale\":\"en\"}','2020-04-22 14:38:59','2020-08-25 23:27:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technologies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` (`id`, `name`, `project`, `client`, `duration`, `technologies`, `budget`, `image`, `project_file`, `project_url`, `created_at`, `updated_at`) VALUES (3,'ialqani.ge','Web','Found Ialqani','1 Month','Laravel','800',NULL,'[]','https://ialqani.ge/','2020-04-26 15:58:00','2020-11-26 15:53:17'),(5,'freetaxi.ge','Web','შ.პ.ს 20-20','1 თვე','Laravel','600','works/November2020/PWelRPCv9C3CnYi1CoUX.png','[]','https://freetaxi.ge/','2020-05-16 06:45:00','2020-11-26 17:54:49'),(6,'GEPA.GE','Web','L.T.D GEPA','2 Month','Laravel , js , Ajax , Bootstrap , API , jQuery',NULL,'works/November2020/JGgF0KbWq0gI7LspDlZE.png','[]','https://gepa.ge/','2020-05-15 17:15:00','2020-11-26 17:47:58'),(11,'kerdzebi.ge','Web','L.T.D REPAIR','20 Days','Codeigniter , Bootstrap , jQuery , MySQL',NULL,NULL,'[]','https://kerdzebi.ge/','2020-04-29 17:53:00','2020-11-26 15:48:59'),(12,'sportschool.ge','Web','Batumi Sport School','40 Days','Codeigniter , Bootstrap , jQuery , MySQL',NULL,'works/November2020/p4CiF9y61nN0AEPy89cm.png','[]','https://sportschool.ge/','2020-04-29 17:57:00','2020-11-26 18:03:45'),(15,'legalconsulting.ge','Web','LCC Legal Consulting Center','1 Month','Wordpress , Bootstrap , MySQL',NULL,'works/November2020/CU6XoBSQ9i4CTujVW6nV.png','[]','https://legalconsulting.ge/','2020-04-29 18:08:00','2020-11-26 18:06:27'),(17,'AlSaGi','logo','L.T.D  AlSaGi','2 Day','CorelDraW',NULL,'works/November2020/7B8wWuultcRWBVh1cgvP.png','[]','https://www.facebook.com/alsagi.ge/','2020-04-29 18:25:00','2020-11-26 18:38:57'),(18,'IberTravelGeorgia','logo','IberTravelGeorgia','2 Day','CorelDraw',NULL,'works/November2020/7g0nQ019kWLmRm0DCpA9.png','[]',NULL,'2020-04-29 18:27:00','2020-11-26 18:19:22'),(19,'REPAIR','logo','L.T.D REPAIR','2 Day','CorelDraW',NULL,'works/November2020/dJo20UX6IFgQBas91Iqi.png','[]','https://www.facebook.com/RepairSEO','2020-04-29 18:30:00','2020-11-26 18:19:10'),(20,'Profile Image','portrait',NULL,'1 Day','Photoshop',NULL,NULL,'[]',NULL,'2020-05-01 06:08:00','2020-11-26 15:55:27'),(21,'Profile Image','portrait',NULL,'1 Day','Photoshop',NULL,NULL,'[]',NULL,'2020-05-01 06:10:00','2020-11-26 15:55:46'),(22,'Profile Image','portrait',NULL,'1 Day','Photoshop',NULL,NULL,'[]',NULL,'2020-05-01 06:17:00','2020-11-26 15:55:37'),(23,'Easter','poster',NULL,'1 hour','CorelDraW',NULL,NULL,'[]','facebook.com/RepairSEO/posts/','2020-05-02 08:52:00','2020-11-26 15:54:32'),(24,'Covid-19','poster',NULL,'1 hour','CorelDraw',NULL,NULL,'[]','facebook.com/RepairSEO/posts/','2020-05-02 08:53:00','2020-11-26 15:55:59'),(25,'8 March','poster',NULL,'1 hour','CorelDraw',NULL,NULL,'[]','facebook.com/RepairSEO/posts/','2020-05-02 08:54:00','2020-11-26 15:56:09'),(26,'Web Service','poster','REPAIR','1 hour','CorelDraw',NULL,NULL,'[]','facebook.com/RepairSEO/posts/','2020-05-02 08:55:00','2020-11-26 15:56:21'),(27,'IT Service','poster','REPAIR','1 hour','CorelDraw',NULL,NULL,'[]','facebook.com/RepairSEO/posts/','2020-05-02 08:58:00','2020-11-26 15:56:31'),(28,'Christmas','poster','REPAIR','1 hour','CorelDraw',NULL,NULL,'[]','facebook.com/RepairSEO/posts/','2020-05-02 09:00:00','2020-11-26 15:54:09'),(29,'toys','poster','ProviderGroup','2 hour','CorelDraW',NULL,NULL,'[]',NULL,'2020-05-02 09:19:00','2020-11-26 15:54:20'),(30,'ModernHome','poster','ModernHome','1 hour','Photoshop',NULL,NULL,'[]',NULL,'2020-05-02 09:24:00','2020-11-26 15:54:43'),(31,'Sales','poster','FreeStyle','2 hour','Photoshop',NULL,NULL,'[]',NULL,'2020-05-02 09:27:00','2020-11-26 15:54:54'),(32,'City Batumi','poster','Fრიი TAXI',NULL,'CorelDraW',NULL,NULL,'[]',NULL,'2020-05-13 17:58:00','2020-11-26 15:55:03'),(33,'City Batumi Taxi','poster','Fრიი TAXI',NULL,'CorelDraW',NULL,NULL,'[]',NULL,'2020-05-13 17:58:00','2020-11-26 15:54:00'),(34,'Rest your shoice','poster','Fრიი TAXI',NULL,'CorelDraW',NULL,NULL,'[]',NULL,'2020-05-13 18:00:00','2020-11-26 15:53:49'),(35,'Summer is Comming','poster','Fრიი TAXI','1 Hour','CorelDraW',NULL,NULL,'[]',NULL,'2020-05-15 05:28:00','2020-11-26 15:55:13'),(36,'Taxi Offer','poster','Fრიი TAXI',NULL,'CorelDraW',NULL,NULL,'[]',NULL,'2020-05-21 19:27:00','2020-11-26 15:53:37'),(37,'CityTaxi','poster','Fრიი TAXI','1 Hour','CorelDraw',NULL,NULL,'[]',NULL,'2020-05-21 19:29:00','2020-11-26 15:53:27'),(39,'PierBatumi.ge','Web','MEDUZA L.T.D','1 Month',NULL,NULL,'works/November2020/JtA3B2adnBtnJsrRIHn1.png','[]','https://pierbatumi.ge/','2020-11-24 14:34:00','2020-11-26 17:52:12'),(40,'DMG','logo','DMGL.T.D','5 hour','CorelDraW',NULL,'works/November2020/UisvkMzLUZffKRfP6YQ7.png','[]',NULL,'2020-11-24 14:37:00','2020-11-26 18:18:46'),(41,'diemge.com','Web','DMGL.T.D','1.5 Month',NULL,NULL,'works/November2020/fWs0gUeZaBn7rfS81SN8.png','[]','https://diemge.com/','2020-11-24 14:58:00','2020-11-26 17:51:18'),(42,'diem.ge','Web','DMGL.T.D','2 Month',NULL,NULL,'works/November2020/ocX97rkA0nQt10MFxfV5.png','[]','https://diem.ge/','2020-11-24 15:18:00','2020-11-26 17:49:33'),(43,'Free TAXI Posters1','poster','Fრიი TAXI',NULL,NULL,NULL,'works/November2020/27V4qtfQO72tETYQ4EJp.png','[]','https://gakhokia.dev//storage/works/November2020/27V4qtfQO72tETYQ4EJp.png','2020-11-24 17:27:00','2020-11-26 18:30:41'),(44,'Free TAXI Posters 2','poster','Fრიი TAXI',NULL,NULL,NULL,'works/November2020/RnYOEfuMI45u3CndIykm.png','[]','https://gakhokia.dev//storage/works/November2020/RnYOEfuMI45u3CndIykm.png','2020-11-24 17:28:00','2020-11-26 18:29:33'),(45,'Free TAXI Posters 3','poster','Fრიი TAXI',NULL,NULL,NULL,'works/November2020/BepUco6Yk6EgIK1xXYit.png','[]','https://gakhokia.dev//storage/works/November2020/BepUco6Yk6EgIK1xXYit.png','2020-11-24 17:28:00','2020-11-26 18:30:20'),(46,'Youth Supreme Council','logo','Youth Supreme Council',NULL,NULL,NULL,'works/November2020/3nyQIxA1mNIeChtwRHFN.png','[]','www.facebook.com/YouthSupremeCouncil','2020-11-26 18:32:00','2020-11-26 18:33:25');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'diemge_Gakhokia'
--

--
-- Dumping routines for database 'diemge_Gakhokia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15  0:28:16
