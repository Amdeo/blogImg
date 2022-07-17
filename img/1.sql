-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: admin
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add admin user',7,'add_adminuser'),(26,'Can change admin user',7,'change_adminuser'),(27,'Can delete admin user',7,'delete_adminuser'),(28,'Can view admin user',7,'view_adminuser'),(29,'Can add auth router def',8,'add_authrouterdef'),(30,'Can change auth router def',8,'change_authrouterdef'),(31,'Can delete auth router def',8,'delete_authrouterdef'),(32,'Can view auth router def',8,'view_authrouterdef'),(33,'Can add friend link',9,'add_friendlink'),(34,'Can change friend link',9,'change_friendlink'),(35,'Can delete friend link',9,'delete_friendlink'),(36,'Can view friend link',9,'view_friendlink'),(37,'Can add news config',10,'add_newsconfig'),(38,'Can change news config',10,'change_newsconfig'),(39,'Can delete news config',10,'delete_newsconfig'),(40,'Can view news config',10,'view_newsconfig'),(41,'Can add our service config',11,'add_ourserviceconfig'),(42,'Can change our service config',11,'change_ourserviceconfig'),(43,'Can delete our service config',11,'delete_ourserviceconfig'),(44,'Can view our service config',11,'view_ourserviceconfig'),(45,'Can add part plat form',12,'add_partplatform'),(46,'Can change part plat form',12,'change_partplatform'),(47,'Can delete part plat form',12,'delete_partplatform'),(48,'Can view part plat form',12,'view_partplatform'),(49,'Can add swiper config',13,'add_swiperconfig'),(50,'Can change swiper config',13,'change_swiperconfig'),(51,'Can delete swiper config',13,'delete_swiperconfig'),(52,'Can view swiper config',13,'view_swiperconfig'),(53,'Can add roles',14,'add_roles'),(54,'Can change roles',14,'change_roles'),(55,'Can delete roles',14,'delete_roles'),(56,'Can view roles',14,'view_roles'),(57,'Can add permission',15,'add_permission'),(58,'Can change permission',15,'change_permission'),(59,'Can delete permission',15,'delete_permission'),(60,'Can view permission',15,'view_permission'),(61,'Can add partners config',16,'add_partnersconfig'),(62,'Can change partners config',16,'change_partnersconfig'),(63,'Can delete partners config',16,'delete_partnersconfig'),(64,'Can view partners config',16,'view_partnersconfig'),(65,'Can add user',17,'add_user'),(66,'Can change user',17,'change_user'),(67,'Can delete user',17,'delete_user'),(68,'Can view user',17,'view_user'),(69,'Can add recruitment',18,'add_recruitment'),(70,'Can change recruitment',18,'change_recruitment'),(71,'Can delete recruitment',18,'delete_recruitment'),(72,'Can view recruitment',18,'view_recruitment'),(73,'Can add admin user roles',19,'add_adminuserroles'),(74,'Can change admin user roles',19,'change_adminuserroles'),(75,'Can delete admin user roles',19,'delete_adminuserroles'),(76,'Can view admin user roles',19,'view_adminuserroles'),(77,'Can add project case',20,'add_projectcase'),(78,'Can change project case',20,'change_projectcase'),(79,'Can delete project case',20,'delete_projectcase'),(80,'Can view project case',20,'view_projectcase'),(81,'Can add ys app secret',21,'add_ysappsecret'),(82,'Can change ys app secret',21,'change_ysappsecret'),(83,'Can delete ys app secret',21,'delete_ysappsecret'),(84,'Can view ys app secret',21,'view_ysappsecret'),(85,'Can add ys video url',22,'add_ysvideourl'),(86,'Can change ys video url',22,'change_ysvideourl'),(87,'Can delete ys video url',22,'delete_ysvideourl'),(88,'Can view ys video url',22,'view_ysvideourl'),(89,'Can add ys play control',23,'add_ysplaycontrol'),(90,'Can change ys play control',23,'change_ysplaycontrol'),(91,'Can delete ys play control',23,'delete_ysplaycontrol'),(92,'Can view ys play control',23,'view_ysplaycontrol'),(93,'Can add user profile',24,'add_userprofile'),(94,'Can change user profile',24,'change_userprofile'),(95,'Can delete user profile',24,'delete_userprofile'),(96,'Can view user profile',24,'view_userprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'weishi','adminuser'),(19,'weishi','adminuserroles'),(8,'weishi','authrouterdef'),(9,'weishi','friendlink'),(10,'weishi','newsconfig'),(11,'weishi','ourserviceconfig'),(16,'weishi','partnersconfig'),(12,'weishi','partplatform'),(15,'weishi','permission'),(20,'weishi','projectcase'),(18,'weishi','recruitment'),(14,'weishi','roles'),(13,'weishi','swiperconfig'),(17,'weishi','user'),(24,'weishi','userprofile'),(21,'weishi','ysappsecret'),(23,'weishi','ysplaycontrol'),(22,'weishi','ysvideourl');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-02 16:14:48.452894'),(2,'auth','0001_initial','2021-09-02 16:14:49.811268'),(3,'admin','0001_initial','2021-09-02 16:14:50.220208'),(4,'admin','0002_logentry_remove_auto_add','2021-09-02 16:14:50.249010'),(5,'admin','0003_logentry_add_action_flag_choices','2021-09-02 16:14:50.263891'),(6,'contenttypes','0002_remove_content_type_name','2021-09-02 16:14:50.498574'),(7,'auth','0002_alter_permission_name_max_length','2021-09-02 16:14:50.650029'),(8,'auth','0003_alter_user_email_max_length','2021-09-02 16:14:50.689136'),(9,'auth','0004_alter_user_username_opts','2021-09-02 16:14:50.703920'),(10,'auth','0005_alter_user_last_login_null','2021-09-02 16:14:50.824313'),(11,'auth','0006_require_contenttypes_0002','2021-09-02 16:14:50.832444'),(12,'auth','0007_alter_validators_add_error_messages','2021-09-02 16:14:50.853622'),(13,'auth','0008_alter_user_username_max_length','2021-09-02 16:14:51.009862'),(14,'auth','0009_alter_user_last_name_max_length','2021-09-02 16:14:51.149060'),(15,'auth','0010_alter_group_name_max_length','2021-09-02 16:14:51.186207'),(16,'auth','0011_update_proxy_permissions','2021-09-02 16:14:51.202439'),(17,'auth','0012_alter_user_first_name_max_length','2021-09-02 16:14:51.353891'),(18,'sessions','0001_initial','2021-09-02 16:14:51.449295'),(19,'weishi','0001_initial','2021-09-02 16:14:52.520284'),(20,'weishi','0002_auto_20210718_1955','2021-09-02 16:14:52.903312'),(21,'weishi','0003_alter_newsconfig_image_url','2021-09-02 16:14:52.998964'),(22,'weishi','0004_partnersconfig','2021-09-02 16:14:53.061387'),(23,'weishi','0005_user','2021-09-02 16:14:53.161749'),(24,'weishi','0006_recruitment','2021-09-02 16:14:53.223231'),(25,'weishi','0007_adminuserroles','2021-09-02 16:14:53.420080'),(26,'weishi','0008_projectcase_ysappsecret_ysplaycontrol_ysvideourl','2021-09-02 16:14:54.045455'),(27,'weishi','0009_alter_partplatform_is_home_page','2021-09-02 16:14:54.057430'),(28,'weishi','0010_userprofile','2021-10-11 09:54:01.455110'),(29,'weishi','0011_userprofile_weixin_qq','2021-10-11 09:54:01.617030'),(30,'weishi','0012_auto_20211006_1536','2021-10-11 09:54:01.795132'),(31,'weishi','0013_remove_ysplaycontrol_play_sec','2022-01-09 15:08:05.992376');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_adminuser`
--

DROP TABLE IF EXISTS `ws_adminuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_adminuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login_ip` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_adminuser`
--

LOCK TABLES `ws_adminuser` WRITE;
/*!40000 ALTER TABLE `ws_adminuser` DISABLE KEYS */;
INSERT INTO `ws_adminuser` VALUES (1,'YDB','18705119182','77465391@qq.com','YDB','f847bca39d15cb697c84d2a72e11c26a',NULL,1,1,'2021-09-02 16:14:54.587016','2021-09-02 16:14:54.587060');
/*!40000 ALTER TABLE `ws_adminuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_adminuser_roles`
--

DROP TABLE IF EXISTS `ws_adminuser_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_adminuser_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `routes` longtext NOT NULL,
  `adminUser_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `adminUser_id` (`adminUser_id`),
  CONSTRAINT `ws_adminuser_roles_adminUser_id_be60377b_fk_ws_adminuser_id` FOREIGN KEY (`adminUser_id`) REFERENCES `ws_adminuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_adminuser_roles`
--

LOCK TABLES `ws_adminuser_roles` WRITE;
/*!40000 ALTER TABLE `ws_adminuser_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_adminuser_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_auth_router_def`
--

DROP TABLE IF EXISTS `ws_auth_router_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_auth_router_def` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_auth_router_def`
--

LOCK TABLES `ws_auth_router_def` WRITE;
/*!40000 ALTER TABLE `ws_auth_router_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_auth_router_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_friendlink`
--

DROP TABLE IF EXISTS `ws_friendlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_friendlink` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_friendlink`
--

LOCK TABLES `ws_friendlink` WRITE;
/*!40000 ALTER TABLE `ws_friendlink` DISABLE KEYS */;
INSERT INTO `ws_friendlink` VALUES (2,'中华人民共和国生态环境部','https://www.mee.gov.cn/',1),(3,'中国汽车技术研究中心有限公司','https://www.catarc.ac.cn/',2),(4,'SMVIC','https://www.smvic.com.cn/pages/index.html',3),(5,'California Air Resources Board','https://ww2.arb.ca.gov/homepage',4),(6,'瀚海检测','http://www.hhtesting.cn/',5),(7,'江苏东方汽车装饰件有限公司','http://www.dongfang-js.com/',6),(8,'泸州北方化学工业有限公司','http://lzbfhg.norincogroup.com.cn/',7),(9,'扬州长运塑料技术股份有限公司','http://www.cyjsgf.com/',8),(10,'扬州良诚汽车部件有限公司','http://www.yzlc.com.cn/',9);
/*!40000 ALTER TABLE `ws_friendlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_news_config`
--

DROP TABLE IF EXISTS `ws_news_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_news_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `is_home_page` tinyint(1) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `create_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_news_config`
--

LOCK TABLES `ws_news_config` WRITE;
/*!40000 ALTER TABLE `ws_news_config` DISABLE KEYS */;
INSERT INTO `ws_news_config` VALUES (1,'中汽中心：全面实施汽车标准国际化战略 助力中国汽车产业走出去','<p>随着新一轮科技革命和产业变革深入推进，汽车成为多种先进技术的集中应用载体，产业生态深刻变革，价值链全面重塑，正在形成新的全球竞争格局。标准作为世界的“通用语言”，在便利经贸往来、支撑产业发展、促进科技进步、规范社会治理中的作用日益凸显。中国汽车技术研究中心有限公司（简称“中汽中心”）作为国家市场监督管理总局和工业和信息化部授权的国内汽车标准法规技术归口管理及国际标准法规协调对口单位，认真贯彻落实习近平总书记关于“标准助推创新发展，标准引领时代进步”的总体要求，充分发挥好中央企业的带动和牵引作用，立足国内发展实际，全面推进汽车标准国际化战略，不断提升中国汽车标准国际化水平，助力国内汽车企业融入全球汽车产业发展新格局。</p><p><strong>一、全面参与国际标准法规协调，重点领域工作取得新突破</strong></p><p>伴随中国汽车产业开放发展的进程，我国从国际标准法规的受益者、参与者，正逐步发展为贡献者、主导者。“十三五”期间，中汽中心积极履行国际标准法规协调对口单位职责，组织行业全面、深入参与联合国世界车辆法规协调论坛（UN WP.29）、国际标准化组织（ISO）、国际电工委员会（IEC）重点领域全球技术法规协调以及国际标准制定近40项，在新能源汽车、智能网联汽车等重要新兴领域取得突破。尤其是2018年，中国首次以牵头国身份制定完成的电动汽车安全全球技术法规（UN GTR 20）获全票通过并正式发布，极大提升了我国参与国际标准法规制定的信心和国际影响力。</p><figure style=\"text-align:center;\"><img alt=\"中汽中心：全面实施汽车标准国际化战略  助力中国汽车产业走出去-《国资报告》杂志\" src=\"http://www.guozibaogao.com/wp-content/uploads/2021/09/2021091514322918-1024x768.jpg\"/><figcaption>我国首次牵头制定UN GTR 20法规</figcaption></figure><p>同时，中汽中心支撑工信部陆续担任联合国WP.29框架下自动驾驶及网联车辆工作组（GRVA）副主席以及电动汽车安全（EVS）等5个非正式工作组主席或副主席，中汽中心专家成功当选ISO/TC22/SC33/WG9自动驾驶汽车测试场景国际标准制定工作组召集人，与相关各方共同推动相关国际标准法规起草，为国际汽车标准法规协调做出了积极贡献。</p><p><strong>二、持续深化国际交流与合作，推动汽车标准互联互通和中国标准“走出去”</strong></p><p>中汽中心积极参与、推动中国与欧盟、法国、日本等相关国家和地区政府层面交流活动，充分发挥多、双边对话和合作机制，推动汽车标准互联互通。同时，中汽中心积极践行“一带一路”倡议，在印尼雅加达设立“中国东盟汽车标准法规研究中心”，与乌兹别克斯坦、塔吉克斯坦等中亚国家开展常态化汽车标准培训交流，搭建中国与重点沿线国家在汽车标准法规领域的交流合作平台，进一步扩大中国汽车标准与中国汽车品牌的国际影响力。</p><figure style=\"text-align:center;\"><img alt=\"中汽中心：全面实施汽车标准国际化战略  助力中国汽车产业走出去-《国资报告》杂志\" src=\"http://www.guozibaogao.com/wp-content/uploads/2021/09/2021091514324524-1024x632.png\"/><figcaption>新能源汽车标准助推产业发展</figcaption></figure><p>在电动汽车领域，我国已建立起全球体系最完整、标准数量最多的自主创新标准体系，中汽中心充分发挥该专业领域标准化优势，持续深化国际交流与合作，受邀出访白俄罗斯交流电动客车标准、获颁“摩洛哥电动汽车标准委员会会员”积极分享“中国经验”，目前部分中国标准已被欧盟、以色列、智利等地区和国家标准法规所采用，有力支撑了国内企业国际化发展战略。</p><p>同时，中汽中心牵头开展汽车领域技术性贸易措施评议工作，加大评议能力建设，就关键技术法规和标准开展深入分析和评估，为我国汽车企业发声，减少技术性贸易措施对我国汽车产业出口造成的不利影响，助力中国汽车企业及产品“走出去”。</p><p><strong>三、发挥央企首创与协作精神，推进标准国际化工作先行先试</strong></p><p>2021年6月，在国资委、市场监管总局、工信部等主管部门的支持和指导下，中汽中心联合汽车行业各相关方在瑞士日内瓦发起设立了“中国汽车标准国际化中心（日内瓦）”（简称“国际中心”）。国际中心作为我国标准化领域首个在海外设立的专门机构，秉承“开放、合作、融入、贡献”的基本原则，搭建标准化工作的国内外合作桥梁。国际中心成立后，中汽中心克服疫情不利影响，派驻相关人员赴日内瓦正式开展工作，得到了国内外政府部门及相关机构的肯定和大力支持，为中央企业和中国汽车行业树立了良好的国际形象。</p><figure style=\"text-align:center;\"><img alt=\"中汽中心：全面实施汽车标准国际化战略  助力中国汽车产业走出去-《国资报告》杂志\" src=\"http://www.guozibaogao.com/wp-content/uploads/2021/09/2021091514331373-1024x768.jpg\"/><figcaption>中国汽车标准国际化中心（日内瓦）</figcaption></figure><p>国际中心作为中国汽车行业在标准国际化领域的首次探索，采用“共商、共建、共享”的组织方式，吸纳一汽、东风、长安等中央企业以及奇瑞、长城、上汽通用五菱、蔚来等地方企业及新造车势力共同参与，形成了政府引领、央企主导、多方参与、协同推进的汽车标准法规国际化新格局。</p><p><strong>四、大力实施汽车标准国际化发展战略，支撑汽车强国建设</strong></p><p>2021年，是“十四五”开局之年，也是我国开启全面建设社会主义现代化国家新征程的开启之年。中汽中心将主动适应新的变化，紧抓难得发展机遇，大力推进实施汽车标准国际化发展战略。<strong>一是</strong>通过中国汽车标准国际化中心（日内瓦）的建设运营，建立内外联动的标准国际化工作机制，搭建与国外、国际标准化组织对接渠道，支持国内外技术专家高效参与国际标准技术协调。<strong>二是</strong>进一步加强全球技术法规协调以及国际标准的协调范围和力度，充分利用我国汽车产业规模效应优势，巩固并扩大在新能源汽车、智能网联汽车等领域的国际话语权。<strong>三是</strong>依托标准国际化布局，持续加强与“一带一路”沿线国家交流合作，推动汽车标准互联互通，以中国汽车标准助力中国汽车产业“走出去”，全面支撑中国从汽车大国向汽车强国迈进。</p>',1,NULL,'2021-09-20 03:22:07.874499','2021-09-20 03:22:07.874539'),(2,'中汽中心：全面实施汽车标准国际化战略 助力中国汽车产业走出去','<p>随着新一轮科技革命和产业变革深入推进，汽车成为多种先进技术的集中应用载体，产业生态深刻变革，价值链全面重塑，正在形成新的全球竞争格局。标准作为世界的“通用语言”，在便利经贸往来、支撑产业发展、促进科技进步、规范社会治理中的作用日益凸显。中国汽车技术研究中心有限公司（简称“中汽中心”）作为国家市场监督管理总局和工业和信息化部授权的国内汽车标准法规技术归口管理及国际标准法规协调对口单位，认真贯彻落实习近平总书记关于“标准助推创新发展，标准引领时代进步”的总体要求，充分发挥好中央企业的带动和牵引作用，立足国内发展实际，全面推进汽车标准国际化战略，不断提升中国汽车标准国际化水平，助力国内汽车企业融入全球汽车产业发展新格局。</p><p><strong>一、全面参与国际标准法规协调，重点领域工作取得新突破</strong></p><p>伴随中国汽车产业开放发展的进程，我国从国际标准法规的受益者、参与者，正逐步发展为贡献者、主导者。“十三五”期间，中汽中心积极履行国际标准法规协调对口单位职责，组织行业全面、深入参与联合国世界车辆法规协调论坛（UN WP.29）、国际标准化组织（ISO）、国际电工委员会（IEC）重点领域全球技术法规协调以及国际标准制定近40项，在新能源汽车、智能网联汽车等重要新兴领域取得突破。尤其是2018年，中国首次以牵头国身份制定完成的电动汽车安全全球技术法规（UN GTR 20）获全票通过并正式发布，极大提升了我国参与国际标准法规制定的信心和国际影响力。</p><figure><img alt=\"中汽中心：全面实施汽车标准国际化战略  助力中国汽车产业走出去-《国资报告》杂志\" src=\"http://www.guozibaogao.com/wp-content/uploads/2021/09/2021091514322918-1024x768.jpg\"/><figcaption>我国首次牵头制定UN GTR 20法规</figcaption></figure><p>同时，中汽中心支撑工信部陆续担任联合国WP.29框架下自动驾驶及网联车辆工作组（GRVA）副主席以及电动汽车安全（EVS）等5个非正式工作组主席或副主席，中汽中心专家成功当选ISO/TC22/SC33/WG9自动驾驶汽车测试场景国际标准制定工作组召集人，与相关各方共同推动相关国际标准法规起草，为国际汽车标准法规协调做出了积极贡献。</p><p><strong>二、持续深化国际交流与合作，推动汽车标准互联互通和中国标准“走出去”</strong></p><p>中汽中心积极参与、推动中国与欧盟、法国、日本等相关国家和地区政府层面交流活动，充分发挥多、双边对话和合作机制，推动汽车标准互联互通。同时，中汽中心积极践行“一带一路”倡议，在印尼雅加达设立“中国东盟汽车标准法规研究中心”，与乌兹别克斯坦、塔吉克斯坦等中亚国家开展常态化汽车标准培训交流，搭建中国与重点沿线国家在汽车标准法规领域的交流合作平台，进一步扩大中国汽车标准与中国汽车品牌的国际影响力。</p><figure><img alt=\"中汽中心：全面实施汽车标准国际化战略  助力中国汽车产业走出去-《国资报告》杂志\" src=\"http://www.guozibaogao.com/wp-content/uploads/2021/09/2021091514324524-1024x632.png\"/><figcaption>新能源汽车标准助推产业发展</figcaption></figure><p>在电动汽车领域，我国已建立起全球体系最完整、标准数量最多的自主创新标准体系，中汽中心充分发挥该专业领域标准化优势，持续深化国际交流与合作，受邀出访白俄罗斯交流电动客车标准、获颁“摩洛哥电动汽车标准委员会会员”积极分享“中国经验”，目前部分中国标准已被欧盟、以色列、智利等地区和国家标准法规所采用，有力支撑了国内企业国际化发展战略。</p><p>同时，中汽中心牵头开展汽车领域技术性贸易措施评议工作，加大评议能力建设，就关键技术法规和标准开展深入分析和评估，为我国汽车企业发声，减少技术性贸易措施对我国汽车产业出口造成的不利影响，助力中国汽车企业及产品“走出去”。</p><p><strong>三、发挥央企首创与协作精神，推进标准国际化工作先行先试</strong></p><p>2021年6月，在国资委、市场监管总局、工信部等主管部门的支持和指导下，中汽中心联合汽车行业各相关方在瑞士日内瓦发起设立了“中国汽车标准国际化中心（日内瓦）”（简称“国际中心”）。国际中心作为我国标准化领域首个在海外设立的专门机构，秉承“开放、合作、融入、贡献”的基本原则，搭建标准化工作的国内外合作桥梁。国际中心成立后，中汽中心克服疫情不利影响，派驻相关人员赴日内瓦正式开展工作，得到了国内外政府部门及相关机构的肯定和大力支持，为中央企业和中国汽车行业树立了良好的国际形象。</p><figure><img alt=\"中汽中心：全面实施汽车标准国际化战略  助力中国汽车产业走出去-《国资报告》杂志\" src=\"http://www.guozibaogao.com/wp-content/uploads/2021/09/2021091514331373-1024x768.jpg\"/><figcaption>中国汽车标准国际化中心（日内瓦）</figcaption></figure><p>国际中心作为中国汽车行业在标准国际化领域的首次探索，采用“共商、共建、共享”的组织方式，吸纳一汽、东风、长安等中央企业以及奇瑞、长城、上汽通用五菱、蔚来等地方企业及新造车势力共同参与，形成了政府引领、央企主导、多方参与、协同推进的汽车标准法规国际化新格局。</p><p><strong>四、大力实施汽车标准国际化发展战略，支撑汽车强国建设</strong></p><p>2021年，是“十四五”开局之年，也是我国开启全面建设社会主义现代化国家新征程的开启之年。中汽中心将主动适应新的变化，紧抓难得发展机遇，大力推进实施汽车标准国际化发展战略。<strong>一是</strong>通过中国汽车标准国际化中心（日内瓦）的建设运营，建立内外联动的标准国际化工作机制，搭建与国外、国际标准化组织对接渠道，支持国内外技术专家高效参与国际标准技术协调。<strong>二是</strong>进一步加强全球技术法规协调以及国际标准的协调范围和力度，充分利用我国汽车产业规模效应优势，巩固并扩大在新能源汽车、智能网联汽车等领域的国际话语权。<strong>三是</strong>依托标准国际化布局，持续加强与“一带一路”沿线国家交流合作，推动汽车标准互联互通，以中国汽车标准助力中国汽车产业“走出去”，全面支撑中国从汽车大国向汽车强国迈进。</p>',1,NULL,'2021-09-20 03:24:19.213906','2021-09-20 03:24:19.213947');
/*!40000 ALTER TABLE `ws_news_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_part_platform`
--

DROP TABLE IF EXISTS `ws_part_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_part_platform` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int NOT NULL,
  `is_home_page` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_part_platform`
--

LOCK TABLES `ws_part_platform` WRITE;
/*!40000 ALTER TABLE `ws_part_platform` DISABLE KEYS */;
INSERT INTO `ws_part_platform` VALUES (7,'用于燃油系统的各类阀门GVV/FLVV/FTIV等','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/1.png',1,0),(8,'用于燃油系统的各类炭罐总成','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/2.png',2,0),(9,'用于燃油系统的各类油泵总成','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/3.png',3,0),(10,'各类管路，油管、气管、胶管等','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/4.png',4,0),(11,'用于燃油系统的各类气液分离器LVS','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/5.png',5,0),(12,'各类快插接头QC、连接接头等','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/6.png',6,0),(13,'用于燃油系统的各类锁盖','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/7.png',7,0),(14,'用于燃油系统的各类加油管总成等','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/8.png',8,0),(15,'其他零件、钢带、减震垫等','https://images-1305444037.cos.ap-nanjing.myqcloud.com/part-platform/9.png',9,0);
/*!40000 ALTER TABLE `ws_part_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_partners`
--

DROP TABLE IF EXISTS `ws_partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_partners` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_partners`
--

LOCK TABLES `ws_partners` WRITE;
/*!40000 ALTER TABLE `ws_partners` DISABLE KEYS */;
INSERT INTO `ws_partners` VALUES (1,'1','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/1.png',1),(2,'2','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/2.png',2),(3,'3','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/3.png',3),(4,'4','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/4.png',4),(5,'5','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/5.png',5),(6,'6','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/6.png',6),(7,'7','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/7.png',7),(8,'8','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/8.png',8),(9,'9','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/9.png',9),(10,'10','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/10.png',10),(11,'11','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/11.png',11),(12,'12','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/12.png',12),(13,'13','https://images-1305444037.cos.ap-nanjing.myqcloud.com/partners/13.png',13);
/*!40000 ALTER TABLE `ws_partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_permission`
--

DROP TABLE IF EXISTS `ws_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `close` tinyint(1) NOT NULL,
  `adminUser_id` bigint NOT NULL,
  `auth_router_def_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ws_permission_adminUser_id_d51e9c48_fk_ws_adminuser_id` (`adminUser_id`),
  KEY `ws_permission_auth_router_def_id_21de662d_fk_ws_auth_r` (`auth_router_def_id`),
  CONSTRAINT `ws_permission_adminUser_id_d51e9c48_fk_ws_adminuser_id` FOREIGN KEY (`adminUser_id`) REFERENCES `ws_adminuser` (`id`),
  CONSTRAINT `ws_permission_auth_router_def_id_21de662d_fk_ws_auth_r` FOREIGN KEY (`auth_router_def_id`) REFERENCES `ws_auth_router_def` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_permission`
--

LOCK TABLES `ws_permission` WRITE;
/*!40000 ALTER TABLE `ws_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_project_case`
--

DROP TABLE IF EXISTS `ws_project_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_project_case` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_project_case`
--

LOCK TABLES `ws_project_case` WRITE;
/*!40000 ALTER TABLE `ws_project_case` DISABLE KEYS */;
INSERT INTO `ws_project_case` VALUES (1,'1','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/design-and-development/swiper/1.png',1),(2,'2','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/design-and-development/swiper/2.png',2),(3,'3','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/design-and-development/swiper/3.png',3),(4,'4','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/design-and-development/swiper/4.png',4),(5,'5','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/design-and-development/swiper/5.png',5);
/*!40000 ALTER TABLE `ws_project_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_recruitment`
--

DROP TABLE IF EXISTS `ws_recruitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_recruitment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_recruitment`
--

LOCK TABLES `ws_recruitment` WRITE;
/*!40000 ALTER TABLE `ws_recruitment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_recruitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_roles`
--

DROP TABLE IF EXISTS `ws_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `add` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL,
  `edit` tinyint(1) NOT NULL,
  `close` tinyint(1) NOT NULL,
  `adminUser_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ws_roles_adminUser_id_1165744f_uniq` (`adminUser_id`),
  CONSTRAINT `ws_roles_adminUser_id_1165744f_fk_ws_adminuser_id` FOREIGN KEY (`adminUser_id`) REFERENCES `ws_adminuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_roles`
--

LOCK TABLES `ws_roles` WRITE;
/*!40000 ALTER TABLE `ws_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ws_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_service_config`
--

DROP TABLE IF EXISTS `ws_service_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_service_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_service_config`
--

LOCK TABLES `ws_service_config` WRITE;
/*!40000 ALTER TABLE `ws_service_config` DISABLE KEYS */;
INSERT INTO `ws_service_config` VALUES (1,'1','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/cover/1.jpg',1),(2,'2','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/cover/2.png',2),(3,'3','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/cover/3.png',3),(4,'4','https://images-1305444037.cos.ap-nanjing.myqcloud.com/our-service/cover/4.png',4);
/*!40000 ALTER TABLE `ws_service_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_swiper_config`
--

DROP TABLE IF EXISTS `ws_swiper_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_swiper_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_swiper_config`
--

LOCK TABLES `ws_swiper_config` WRITE;
/*!40000 ALTER TABLE `ws_swiper_config` DISABLE KEYS */;
INSERT INTO `ws_swiper_config` VALUES (1,'1','https://images-1305444037.cos.ap-nanjing.myqcloud.com/swiper/1.jpeg',1),(2,'2','https://images-1305444037.cos.ap-nanjing.myqcloud.com/swiper/2.png',2),(3,'3','https://images-1305444037.cos.ap-nanjing.myqcloud.com/swiper/3.png',3),(4,'4','https://images-1305444037.cos.ap-nanjing.myqcloud.com/swiper/4.png',4);
/*!40000 ALTER TABLE `ws_swiper_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_user`
--

DROP TABLE IF EXISTS `ws_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login_ip` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_user`
--

LOCK TABLES `ws_user` WRITE;
/*!40000 ALTER TABLE `ws_user` DISABLE KEYS */;
INSERT INTO `ws_user` VALUES (1,'袁栋彬','18705119182','774659391@qq.com','vest','f847bca39d15cb697c84d2a72e11c26a',NULL,1,'2021-09-09 05:38:21.909837','2021-10-11 10:36:14.269300'),(2,NULL,'15800847369','vest.daniel@hhtesting.cn','王晔','cbd678b062cfd7532428d3065aea9eae',NULL,1,'2021-10-18 03:03:34.331992','2021-10-18 03:03:34.332033'),(28,'杨雪峰','18936479389','vest.thomas@hhtesting.cn','yangxuefeng','41446bb255f94d8d8921a24e6b6edebf',NULL,1,'2021-10-18 03:24:29.426409','2021-10-21 06:17:40.593954'),(40,'薛晴','15861311987','469917484@qq.com','15861311987','cf01c970d6dda0c1afa9ac54848565ae',NULL,1,'2021-10-19 07:58:14.303116','2021-10-19 07:59:16.284780'),(41,'曹荣','18521085992','caorong@vip.163.com','rongsir','6ea486d1615c2f3ea087d56232816a9b',NULL,1,'2021-10-21 05:57:30.514980','2021-10-21 05:59:32.699462');
/*!40000 ALTER TABLE `ws_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_user_profile`
--

DROP TABLE IF EXISTS `ws_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_user_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(128) DEFAULT NULL,
  `industry` varchar(64) DEFAULT NULL,
  `position` varchar(64) DEFAULT NULL,
  `account_id` bigint NOT NULL,
  `weixin_qq` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id` (`account_id`),
  CONSTRAINT `ws_user_profile_account_id_45391238_fk_ws_user_id` FOREIGN KEY (`account_id`) REFERENCES `ws_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_user_profile`
--

LOCK TABLES `ws_user_profile` WRITE;
/*!40000 ALTER TABLE `ws_user_profile` DISABLE KEYS */;
INSERT INTO `ws_user_profile` VALUES (1,'','','',1,''),(2,'蔚世','项目经理/主管','汽车零部件及配件研发',40,''),(3,'上海瀚海检测技术股份有限公司','客户经理','检测•认证',41,'yzrongsir'),(4,'上海瀚海检测技术股份有限公司','','',28,'yxf18936479389');
/*!40000 ALTER TABLE `ws_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_ys_app_secret`
--

DROP TABLE IF EXISTS `ws_ys_app_secret`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_ys_app_secret` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appkey` varchar(120) NOT NULL,
  `secret` varchar(120) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_ys_app_secret`
--

LOCK TABLES `ws_ys_app_secret` WRITE;
/*!40000 ALTER TABLE `ws_ys_app_secret` DISABLE KEYS */;
INSERT INTO `ws_ys_app_secret` VALUES (1,'b7d105a1ecc94e6095d7e3f665e7ca55','1fc169143494aee55310b1fd583c8dd1','袁栋彬'),(2,'0710b9c7186a43ee8c16cedddbc4e4ac','2669119587efeb7ec507d0d5cc866ed0','VEST');
/*!40000 ALTER TABLE `ws_ys_app_secret` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_ys_play_control`
--

DROP TABLE IF EXISTS `ws_ys_play_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_ys_play_control` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `video_id` bigint NOT NULL,
  `last_time` datetime(6) DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ws_ys_play_control_user_id_2ea454ca_fk_ws_user_id` (`user_id`),
  KEY `ws_ys_play_control_video_id_274a3c80_fk_ws_ys_video_url_id` (`video_id`),
  CONSTRAINT `ws_ys_play_control_user_id_2ea454ca_fk_ws_user_id` FOREIGN KEY (`user_id`) REFERENCES `ws_user` (`id`),
  CONSTRAINT `ws_ys_play_control_video_id_274a3c80_fk_ws_ys_video_url_id` FOREIGN KEY (`video_id`) REFERENCES `ws_ys_video_url` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_ys_play_control`
--

LOCK TABLES `ws_ys_play_control` WRITE;
/*!40000 ALTER TABLE `ws_ys_play_control` DISABLE KEYS */;
INSERT INTO `ws_ys_play_control` VALUES (6,1,2,'2022-01-31 16:00:00.000000','2022-01-08 16:00:00.000000'),(7,1,3,'2022-02-20 16:00:00.000000','2022-01-09 16:00:00.000000');
/*!40000 ALTER TABLE `ws_ys_play_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ws_ys_video_url`
--

DROP TABLE IF EXISTS `ws_ys_video_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ws_ys_video_url` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` varchar(220) NOT NULL,
  `name` varchar(30) NOT NULL,
  `app_secret_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ws_ys_video_url_app_secret_id_83ab9aae_fk_ws_ys_app_secret_id` (`app_secret_id`),
  CONSTRAINT `ws_ys_video_url_app_secret_id_83ab9aae_fk_ws_ys_app_secret_id` FOREIGN KEY (`app_secret_id`) REFERENCES `ws_ys_app_secret` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ws_ys_video_url`
--

LOCK TABLES `ws_ys_video_url` WRITE;
/*!40000 ALTER TABLE `ws_ys_video_url` DISABLE KEYS */;
INSERT INTO `ws_ys_video_url` VALUES (2,'ezopen://open.ys7.com/J03159121/1.hd.live','VEST CLOUD LAB 01',2),(3,'ezopen://open.ys7.com/J03159036/1.hd.live','VEST CLOUD LAB 02',2);
/*!40000 ALTER TABLE `ws_ys_video_url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 13:45:44
