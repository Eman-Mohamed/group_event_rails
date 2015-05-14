-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: group_events_development
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Current Database: `group_events_development`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `group_events_development` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `group_events_development`;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_group_id` (`group_id`),
  KEY `index_comments_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_03de2dc08c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_16580d8886` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'jdhadjh',NULL,32,'2015-05-10 17:27:56','2015-05-10 17:27:56'),(2,'ergf',NULL,32,'2015-05-10 17:32:30','2015-05-10 17:32:30'),(6,'dfklmklmkld',172,32,'2015-05-13 01:58:48','2015-05-13 01:58:48'),(7,'gdgd',172,32,'2015-05-13 04:20:10','2015-05-13 04:20:10'),(10,'ssssssssssssss',180,33,'2015-05-13 11:50:01','2015-05-13 11:50:01');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_attendances`
--

DROP TABLE IF EXISTS `event_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_event_attendances_on_event_id` (`event_id`),
  KEY `index_event_attendances_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_64ad6920ae` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_d082d0d206` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_attendances`
--

LOCK TABLES `event_attendances` WRITE;
/*!40000 ALTER TABLE `event_attendances` DISABLE KEYS */;
INSERT INTO `event_attendances` VALUES (3,6,33,'2015-05-13 12:09:16','2015-05-13 12:09:16');
/*!40000 ALTER TABLE `event_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_user_id` (`user_id`),
  KEY `index_events_on_group_id` (`group_id`),
  CONSTRAINT `fk_rails_0cb5590091` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_rails_61fbf6ca48` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'emana','db szfb sfdb ','sbfbsfbsfb','2015-05-10 17:46:00',32,'2015-05-10 17:47:18','2015-05-10 17:47:18',NULL),(4,'azgzdgzagd','bzfb','shszy','2015-05-13 04:38:00',32,'2015-05-13 04:38:34','2015-05-13 04:38:34',172),(5,'jdfkdfjfjkfd','gzdghzgG','gazgzadg','2015-05-13 05:17:00',32,'2015-05-13 05:17:26','2015-05-13 05:17:26',172),(6,'fcgwtrwrt','efvcaer','evfvefv','2015-05-13 08:05:00',32,'2015-05-13 08:05:24','2015-05-13 08:05:24',172),(8,'ssssssssssss','sssssssssssssss','ssssss','2015-05-13 11:58:00',33,'2015-05-13 11:58:55','2015-05-13 11:58:55',180);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_words`
--

DROP TABLE IF EXISTS `group_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `word_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_group_words_on_group_id` (`group_id`),
  KEY `index_group_words_on_word_id` (`word_id`),
  CONSTRAINT `fk_rails_9523e5c43e` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`),
  CONSTRAINT `fk_rails_b2a7c97769` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_words`
--

LOCK TABLES `group_words` WRITE;
/*!40000 ALTER TABLE `group_words` DISABLE KEYS */;
INSERT INTO `group_words` VALUES (17,89,2,'2015-05-11 04:20:41','2015-05-11 04:20:41'),(35,172,1,'2015-05-12 23:08:11','2015-05-12 23:08:11'),(36,173,2,'2015-05-12 23:26:27','2015-05-12 23:26:27'),(38,175,1,'2015-05-13 08:06:13','2015-05-13 08:06:13'),(39,176,2,'2015-05-13 08:08:13','2015-05-13 08:08:13'),(40,177,3,'2015-05-13 08:08:58','2015-05-13 08:08:58'),(43,180,1,'2015-05-13 09:51:39','2015-05-13 09:51:39'),(44,181,1,'2015-05-13 13:26:39','2015-05-13 13:26:39'),(45,181,2,'2015-05-13 13:26:39','2015-05-13 13:26:39');
/*!40000 ALTER TABLE `group_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_groups_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_5e78cd340a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (89,'vdf','31.1903492','29.920474',' Qism Moharram Bek, Alexandria Governorate, Egypt',32,'2015-05-11 04:20:41','2015-05-11 04:20:41','dfd',NULL,NULL,NULL,NULL),(172,'sssssssssss','31.1902723','29.9204337',' Qism Moharram Bek, Alexandria Governorate, Egypt',32,'2015-05-12 23:08:11','2015-05-12 23:08:11','xcv xc','10994642.jpg','image/jpeg',57220,'2015-05-12 23:08:10'),(173,'dfbdf','31.190309','29.9204075',' Qism Moharram Bek, Alexandria Governorate, Egypt',32,'2015-05-12 23:26:26','2015-05-12 23:26:26','dfbsdfb',NULL,NULL,NULL,NULL),(175,'ujru7','31.192694899999996','29.9059908',' Qesm Al Attarin, Alexandria Governorate, Egypt',32,'2015-05-13 08:06:13','2015-05-13 08:06:13','yheyh','10994642.jpg','image/jpeg',57220,'2015-05-13 08:06:12'),(176,'fwefefdef','31.1926992','29.906009399999995',' Qesm Al Attarin, Alexandria Governorate, Egypt',32,'2015-05-13 08:08:13','2015-05-13 08:08:13','3efewfwef','10994642.jpg','image/jpeg',57220,'2015-05-13 08:08:13'),(177,'fweffewfew','31.192687199999998','29.905980999999997',' Qesm Al Attarin, Alexandria Governorate, Egypt',32,'2015-05-13 08:08:58','2015-05-13 08:08:58','fefefff','10994642.jpg','image/jpeg',57220,'2015-05-13 08:08:58'),(180,'emnanana','31.1926028','29.906051999999995',' Qesm Al Attarin, Alexandria Governorate, Egypt',33,'2015-05-13 09:51:39','2015-05-13 09:51:39','vdfbvJKSDNkjvndKSJvnjkdsbnvisbvjndajlvbjkdv','10994642.jpg','image/jpeg',57220,'2015-05-13 09:51:39'),(181,'sfhzdf','31.1926474','29.9060457',' Qesm Al Attarin, Alexandria Governorate, Egypt',32,'2015-05-13 13:26:39','2015-05-13 13:39:08','dfhbDFHbDFHbd','10994642.jpg','image/jpeg',57220,'2015-05-13 13:39:08');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150507123026'),('20150507125146'),('20150507130055'),('20150507130358'),('20150507130621'),('20150507132819'),('20150507133338'),('20150507134232'),('20150508192857'),('20150509003749'),('20150509215857'),('20150510172304'),('20150511002855'),('20150511013317'),('20150511154113');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_user_groups_on_group_id` (`group_id`),
  KEY `index_user_groups_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_6d478d2f65` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  CONSTRAINT `fk_rails_c298be7f8b` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (70,89,32,'2015-05-11 04:20:41','2015-05-11 04:20:41',0),(152,172,32,'2015-05-12 23:08:11','2015-05-12 23:08:11',0),(153,173,32,'2015-05-12 23:26:27','2015-05-12 23:26:27',0),(155,175,32,'2015-05-13 08:06:13','2015-05-13 08:06:13',0),(156,176,32,'2015-05-13 08:08:13','2015-05-13 08:08:13',0),(157,177,32,'2015-05-13 08:08:58','2015-05-13 08:08:58',0),(167,181,32,'2015-05-13 13:26:39','2015-05-13 13:26:39',0);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (32,'samah','$2a$10$L6n6EU34n.LV6alp.y.tW.q8AiXE2XgelWw8jDzAIqT.xku36g6bq','samah@yahoo.com',1,'2015-05-09 16:30:34','2015-05-09 16:30:34','$2a$10$L6n6EU34n.LV6alp.y.tW.'),(33,'eman','$2a$10$UpnUeMlKMS3gx0t8oElu5.wF/HU1mrGiPUYQ1YQLPMLOc7BOcoSxK','encn@sghg.com',0,'2015-05-12 10:24:17','2015-05-13 10:05:15','$2a$10$UpnUeMlKMS3gx0t8oElu5.');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (1,'sport','2015-05-09 23:51:29','2015-05-09 23:51:29'),(2,'food','2015-05-09 23:51:38','2015-05-09 23:51:38'),(3,'play','2015-05-09 23:51:45','2015-05-09 23:51:45');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-14 20:29:50
