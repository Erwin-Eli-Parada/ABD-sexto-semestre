CREATE DATABASE  IF NOT EXISTS `angeles` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `angeles`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: angeles
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `caminoos`
--

DROP TABLE IF EXISTS `caminoos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caminoos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caminoos`
--

LOCK TABLES `caminoos` WRITE;
/*!40000 ALTER TABLE `caminoos` DISABLE KEYS */;
/*!40000 ALTER TABLE `caminoos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caminos`
--

DROP TABLE IF EXISTS `caminos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caminos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caminos`
--

LOCK TABLES `caminos` WRITE;
/*!40000 ALTER TABLE `caminos` DISABLE KEYS */;
INSERT INTO `caminos` VALUES (1,'Azul',18,35,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(2,'Vino',15,35,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(3,'Gris',8,35,'2021-07-08 10:23:43','2021-07-08 10:33:30'),(4,'Rojo',20,35,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(5,'Verde',15,35,'2021-07-08 10:23:43','2021-07-08 10:23:43');
/*!40000 ALTER TABLE `caminos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cristalerias`
--

DROP TABLE IF EXISTS `cristalerias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cristalerias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cristalerias`
--

LOCK TABLES `cristalerias` WRITE;
/*!40000 ALTER TABLE `cristalerias` DISABLE KEYS */;
INSERT INTO `cristalerias` VALUES (1,'Copa Vino',107,14,NULL,'2021-07-08 10:33:30'),(2,'Copa Agua',250,14,NULL,NULL),(3,'Copa Champagne',115,14,NULL,NULL),(4,'Copa Sidra',110,14,NULL,NULL),(5,'Vaso Highball',200,12,NULL,NULL);
/*!40000 ALTER TABLE `cristalerias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cubremanteles`
--

DROP TABLE IF EXISTS `cubremanteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cubremanteles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cubremanteles`
--

LOCK TABLES `cubremanteles` WRITE;
/*!40000 ALTER TABLE `cubremanteles` DISABLE KEYS */;
INSERT INTO `cubremanteles` VALUES (1,'Azul',21,25,NULL,'2021-07-08 10:33:30'),(2,'Vino',25,25,NULL,NULL),(3,'Gris',25,25,NULL,NULL),(4,'Rojo',45,25,NULL,NULL),(5,'Verde',35,25,NULL,NULL),(6,'Amarillo',25,25,NULL,NULL);
/*!40000 ALTER TABLE `cubremanteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_delete` tinyint(1) DEFAULT NULL,
  `id_horario` int DEFAULT NULL,
  `salario` double(8,2) DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empleados_user_id_foreign` (`user_id`),
  CONSTRAINT `empleados_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'9511890456',0,1,3000.00,1,'2021-07-08 10:23:43','2021-07-09 04:35:17'),(2,'9511890458',0,2,300.00,2,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(3,'9511890458',0,3,300.00,3,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(4,'9511890458',0,4,300.00,4,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(5,'9511890458',0,5,300.00,5,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(6,'9511890458',1,6,300.00,6,'2021-07-08 10:23:43','2021-07-09 04:35:26'),(7,'9511890458',1,7,3500.00,9,'2021-07-08 10:45:00','2021-07-08 10:47:39'),(8,'9511890458',0,8,5000.00,10,'2021-07-09 04:36:25','2021-07-09 04:36:25');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hr_entrada` time DEFAULT NULL,
  `hr_salida` time DEFAULT NULL,
  `hr_receso` time DEFAULT NULL,
  `Dias_Descanzo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'07:00:00','14:00:00','09:30:00','Domingo',NULL,NULL),(2,'08:00:00','16:00:00','10:30:00','Domingo,Sabado',NULL,NULL),(3,'09:00:00','17:00:00','10:00:00','Domingo',NULL,NULL),(4,'12:00:00','20:00:00','15:00:00','Sabado',NULL,NULL),(5,'12:00:00','19:00:00','15:00:00','Domingo',NULL,NULL),(6,'12:00:00','19:00:00','15:00:00','Lunes',NULL,NULL),(7,'07:30:00','18:00:00','11:00:00','Sábados, Domingos','2021-07-08 10:45:00','2021-07-08 10:46:59'),(8,'07:00:00','20:00:00','10:00:00','Sábados, Domingos','2021-07-09 04:36:23','2021-07-09 04:37:47');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manteles`
--

DROP TABLE IF EXISTS `manteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manteles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Forma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manteles`
--

LOCK TABLES `manteles` WRITE;
/*!40000 ALTER TABLE `manteles` DISABLE KEYS */;
INSERT INTO `manteles` VALUES (1,'infantil poliester','rectangular','Blanco',12,NULL,NULL),(2,'infantil poliester','rectangular','Dorado',12,NULL,NULL),(3,'infantil satinado','rectangular','Blanco',10,NULL,NULL),(4,'infantil satinado','rectangular','Dorado',10,NULL,NULL),(5,'poliester','rectangular','Blanco',15,NULL,NULL),(6,'poliester','cuadrada','Blanco',15,NULL,NULL),(7,'poliester','redonda','Blanco',15,NULL,NULL),(8,'poliester','rectangular','Dorado',15,NULL,NULL),(9,'poliester','cuadrada','Dorado',15,NULL,NULL),(10,'poliester','redonda','Dorado',15,NULL,NULL),(11,'satinado','rectangular','Blanco',12,NULL,NULL),(12,'satinado','cuadrada','Blanco',12,NULL,NULL),(13,'satinado','redonda','Blanco',12,NULL,NULL),(14,'satinado','rectangular','Dorado',12,NULL,NULL),(15,'satinado','cuadrada','Dorado',12,NULL,NULL),(16,'satinado','redonda','Dorado',12,NULL,NULL);
/*!40000 ALTER TABLE `manteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesas`
--

DROP TABLE IF EXISTS `mesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesas`
--

LOCK TABLES `mesas` WRITE;
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` VALUES (1,'Rectangular',0,70,NULL,'2021-07-09 04:38:25'),(2,'Redonda',45,50,NULL,NULL),(3,'Cuadrada',35,80,NULL,NULL),(4,'Rectangular infantil',25,50,NULL,NULL);
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (147,'2014_10_12_000000_create_users_table',1),(148,'2014_10_12_100000_create_password_resets_table',1),(149,'2016_06_01_000001_create_oauth_auth_codes_table',1),(150,'2016_06_01_000002_create_oauth_access_tokens_table',1),(151,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(152,'2016_06_01_000004_create_oauth_clients_table',1),(153,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(154,'2019_08_19_000000_create_failed_jobs_table',1),(155,'2021_05_27_034650_create_empleados_table',1),(156,'2021_06_15_060850_create_rentas_table',1),(157,'2021_06_17_192331_create_mesas_table',1),(158,'2021_06_17_194602_create_sillas_table',1),(159,'2021_06_17_194744_create_manteles_table',1),(160,'2021_06_17_194952_create_cubremanteles_table',1),(161,'2021_06_17_195142_create_caminos_table',1),(162,'2021_06_17_195309_create_platos_table',1),(163,'2021_06_17_195457_create_cristalerias_table',1),(164,'2021_06_17_200012_create_monos_table',1),(165,'2021_06_20_064604_create_caminoos_table',1),(166,'2021_06_22_010702_create_horarios_table',1),(167,'2021_06_28_231708_create_servilletas_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monos`
--

DROP TABLE IF EXISTS `monos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monos`
--

LOCK TABLES `monos` WRITE;
/*!40000 ALTER TABLE `monos` DISABLE KEYS */;
INSERT INTO `monos` VALUES (1,'Naranja',9,12,NULL,'2021-07-08 10:33:30'),(2,'Rojo',25,12,NULL,NULL),(3,'Verde',12,12,NULL,NULL),(4,'Amarillo',11,12,NULL,'2021-07-09 04:42:44'),(5,'Dorado',15,12,NULL,NULL),(6,'Violeta',18,12,NULL,NULL),(7,'Azul',15,12,NULL,NULL),(8,'Cafe',15,12,NULL,NULL),(9,'Rosa',25,12,NULL,NULL);
/*!40000 ALTER TABLE `monos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('2d76449b08eb54b07bfd7e91d1b38b3fddae494d7f62fcf4b1979c0fcf9af7415611f03b58440a10',2,1,'app','[]',0,'2021-07-08 10:34:09','2021-07-08 10:34:09','2022-07-08 05:34:09'),('36eb0aae17a2d396369c61beb2744f2471e7e4f600f26fca2396e2136b0d4281dc8210a428f9f52a',6,1,'app','[]',0,'2021-07-08 19:37:32','2021-07-08 19:37:32','2022-07-08 14:37:32'),('3ceb567d23a8ecb1ab3bdf3f4dca348a11d19f62824248eb3e6f70eb7c8bd119ce7acd188b65678b',2,1,'app','[]',0,'2021-07-09 02:52:41','2021-07-09 02:52:41','2022-07-08 21:52:41'),('4134d2b39c830fe4a19bc7600ce1e0ddd3da8650638eef7eb025bc3350100023091bb48d994df406',2,1,'app','[]',0,'2021-07-09 04:33:58','2021-07-09 04:33:58','2022-07-08 23:33:58'),('4a84c6fc26b87a152ffcbaca8bcceeb9fb1e60b46377f1b6a57a63f7e5e8abb823b5436374719730',2,1,'app','[]',0,'2021-07-08 10:41:33','2021-07-08 10:41:33','2022-07-08 05:41:33'),('4c5c598d8e33fba48a151f51c58e07990a0b37e9c04cec9cca7db0c97288b9f3abfa039ffaf4b98b',8,1,'app','[]',0,'2021-07-08 19:37:58','2021-07-08 19:37:58','2022-07-08 14:37:58'),('5873de426082c5ac70c98fc911793e296d5f058072571f6ea3e224bfa5c99c3633df1a216115634c',6,1,'app','[]',0,'2021-07-08 19:44:00','2021-07-08 19:44:00','2022-07-08 14:44:00'),('6234f44cf7f80f079486b10cd1b62cae5521a0edf79cc8cfc2a9d1a9e1ffcfacd5968eb0540ef931',8,1,'app','[]',0,'2021-07-09 02:56:29','2021-07-09 02:56:29','2022-07-08 21:56:29'),('6804dd5dfad493125c70943c7e1bcec04c0974a4e98c88cf1ced21e31fc4469452e2eee2ec33ccff',8,1,'app','[]',0,'2021-07-08 19:44:15','2021-07-08 19:44:15','2022-07-08 14:44:15'),('8a35c4fa8df17a55aff54eeef61b419c7e8b1e0024c81047b039a1f59baaa0c2819f1a178691010e',7,1,'app','[]',0,'2021-07-08 10:42:14','2021-07-08 10:42:14','2022-07-08 05:42:14'),('b054c481ff26b71567bf12abc5cdd52c6afac1cf53adae348cf98ab9d3a7b17e5c139a3ffccf8a23',7,1,'app','[]',0,'2021-07-08 19:37:43','2021-07-08 19:37:43','2022-07-08 14:37:43'),('b0fb30d4928814c2856339a2e0d84eb64750a53d5f478966a47f74eb30fc66b7bd3fceecacfccfeb',4,1,'app','[]',0,'2021-07-08 10:42:44','2021-07-08 10:42:44','2022-07-08 05:42:44'),('c02b81a96c693b1ab6754a6407f9fd03bb2283e34d0af096d65c62122b84d1efb288745a7e0af24f',8,1,'app','[]',0,'2021-07-08 19:37:08','2021-07-08 19:37:08','2022-07-08 14:37:08'),('d06173486828f959a669bb2b15ac05da5c0758591cdef608cad1b4b27ebcad9f1540daefbc825754',4,1,'app','[]',0,'2021-07-08 10:35:58','2021-07-08 10:35:58','2022-07-08 05:35:58'),('d0cd367a83efcd5caef72046fa92934d7ef094a0a6e40f92cbc4af040dbc1405b448d93784845a67',2,1,'app','[]',0,'2021-07-08 10:43:22','2021-07-08 10:43:22','2022-07-08 05:43:22'),('d2cd54920118977560fc2a9503fd66cb6e0c640d9f550872ce8cedb751c1d74e48eb493f266fcadd',8,1,'app','[]',0,'2021-07-08 10:26:53','2021-07-08 10:26:53','2022-07-08 05:26:53'),('dce690599d0ae91fc5f2cba7fab6017f9152b29be9e77ff061ca8f2ecabe4a4a0f34bc69f748624f',5,1,'app','[]',0,'2021-07-08 19:43:46','2021-07-08 19:43:46','2022-07-08 14:43:46'),('e35db051313188ffbb676d7db58811b91ba05c958430cae3f4cb9ad83d7528c29cd2d741149851f0',6,1,'app','[]',0,'2021-07-08 10:37:34','2021-07-08 10:37:34','2022-07-08 05:37:34'),('e6c6d1e10866300459aaf4348b632db195b9b9ee034ab1784110c5c0ce28c56b8becb0de3989552b',7,1,'app','[]',0,'2021-07-08 10:35:14','2021-07-08 10:35:14','2022-07-08 05:35:14'),('e971b245f993d156365a1f6ad1ae823c99373d6a8f2bcecd8dea480c2ce2aeed6d4ab54ac3ed8698',7,1,'app','[]',0,'2021-07-09 04:38:47','2021-07-09 04:38:47','2022-07-08 23:38:47');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','JPrMOTNIlMXN04ji9ugHSlD074mnblDQXUP30RdD','http://localhost',1,0,0,'2021-07-08 10:23:50','2021-07-08 10:23:50'),(2,NULL,'Laravel Password Grant Client','dVD6uPH1fB0h4oA1DlPGdHXp38TnmnsFs4d0atE7','http://localhost',0,1,0,'2021-07-08 10:23:50','2021-07-08 10:23:50');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-07-08 10:23:50','2021-07-08 10:23:50');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `platos`
--

DROP TABLE IF EXISTS `platos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platos`
--

LOCK TABLES `platos` WRITE;
/*!40000 ALTER TABLE `platos` DISABLE KEYS */;
INSERT INTO `platos` VALUES (1,'Trinche',125,10,NULL,NULL),(2,'Hondos',135,12,NULL,NULL),(3,'bowl',111,15,NULL,'2021-07-08 10:33:30'),(4,'Cafetero',135,8,NULL,NULL);
/*!40000 ALTER TABLE `platos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentas`
--

DROP TABLE IF EXISTS `rentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cantidadP` int DEFAULT NULL,
  `id_cliente` bigint unsigned NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resumen` text COLLATE utf8mb4_unicode_ci,
  `total` double(8,2) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fechaDevolucion` date DEFAULT NULL,
  `horaEntrega` time DEFAULT NULL,
  `horaDevolucion` time DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pago` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clabe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_chofer` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rentas_id_cliente_foreign` (`id_cliente`),
  KEY `rentas_id_chofer_foreign` (`id_chofer`),
  CONSTRAINT `rentas_id_chofer_foreign` FOREIGN KEY (`id_chofer`) REFERENCES `users` (`id`),
  CONSTRAINT `rentas_id_cliente_foreign` FOREIGN KEY (`id_cliente`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentas`
--

LOCK TABLES `rentas` WRITE;
/*!40000 ALTER TABLE `rentas` DISABLE KEYS */;
INSERT INTO `rentas` VALUES (1,16,7,'aceptada','4-mesas,10-sillas',983.00,'2021-08-07','2021-11-07','10:00:00','10:00:00','Sta Maria Atzompa, Camino Real #178 San Jeronimo Yahuiche ','No pagado','14521789321',6,'2021-07-08 10:23:43','2021-07-08 10:34:34'),(2,69,7,'pendiente','4-mesas,10-sillas',271.00,'2021-08-07','2021-11-07','10:00:00','10:00:00','Sta Maria Atzompa, Camino Real #178 San Jeronimo Yahuiche ','No pagado','14521789321',6,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(3,0,7,'finalizada','4-mesas,10-sillas',837.00,'2021-08-07','2021-11-07','10:00:00','10:00:00','Sta Maria Atzompa, Camino Real #178 San Jeronimo Yahuiche ','PAGADO','7894562123',6,'2021-07-08 10:23:43','2021-07-08 10:41:15'),(4,0,7,'Proceso Entrega','4-mesas,10-sillas',58.00,'2021-08-07','2021-11-07','10:00:00','10:00:00','Sta Maria Atzompa, Camino Real #178 San Jeronimo Yahuiche ','PAGADO','4589612387',6,'2021-07-08 10:23:43','2021-07-08 10:42:56'),(5,7,7,'pendiente','4-mesas,10-sillas',379.00,'2021-08-07','2021-11-07','10:00:00','10:00:00','Sta Maria Atzompa, Camino Real #178 San Jeronimo Yahuiche ','No pagado','14521789321',6,'2021-07-08 10:23:43','2021-07-08 10:23:43'),(6,34,8,'aceptada','5-Mesa-Rectangular,5-Silla-Plastica (Blanca),6-Mono-Naranja,4-CubreMantel-Azul,3-Servilleta-Verde,4-Camino-Gris,4-Plato-bowl,3-Critaleria-Copa Vino,',775.00,'2021-07-09','2021-07-16','21:31:00','11:31:00','Camino real, 178, san jeronimo yahuiche, Sta. MAria Atzompa','no pagado',NULL,6,'2021-07-08 10:33:30','2021-07-08 10:34:31'),(7,1,7,'pendiente','1-Mono-Amarillo,',12.00,'2021-07-09','2021-07-11','19:39:00','15:39:00','Calle, 165, Colonia, municipio','no pagado',NULL,6,'2021-07-09 04:42:44','2021-07-09 04:42:44');
/*!40000 ALTER TABLE `rentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servilletas`
--

DROP TABLE IF EXISTS `servilletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servilletas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servilletas`
--

LOCK TABLES `servilletas` WRITE;
/*!40000 ALTER TABLE `servilletas` DISABLE KEYS */;
INSERT INTO `servilletas` VALUES (1,'Naranja',1,12,NULL,NULL),(2,'Rojo',25,12,NULL,NULL),(3,'Verde',47,12,NULL,'2021-07-08 10:33:30'),(4,'Amarillo',12,12,NULL,NULL),(5,'Dorado',15,12,NULL,NULL),(6,'Violeta',18,12,NULL,NULL),(7,'Azul',15,12,NULL,NULL),(8,'Cafe',15,12,NULL,NULL),(9,'Rosa',25,12,NULL,NULL);
/*!40000 ALTER TABLE `servilletas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sillas`
--

DROP TABLE IF EXISTS `sillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sillas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad_existencia` int DEFAULT NULL,
  `PrecioRenta` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sillas`
--

LOCK TABLES `sillas` WRITE;
/*!40000 ALTER TABLE `sillas` DISABLE KEYS */;
INSERT INTO `sillas` VALUES (1,'Plastica (Blanca)',245,5,NULL,'2021-07-08 10:33:30'),(2,'Plastica con codos (Blanca)',205,8,NULL,NULL),(3,'Plegable (Negra)',450,10,NULL,NULL),(4,'Tiffany (Blanca)',250,12,NULL,NULL),(5,'Phoenix (Dorada)',250,15,NULL,NULL),(6,'Infantil (Plastica)',200,5,NULL,NULL);
/*!40000 ALTER TABLE `sillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puesto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nelle Stamm jijia','Dooley','O\'Hara','Chofer','reichel.jesse@example.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-07-08 10:23:43','2021-07-09 04:35:17'),(2,'Elissa Runolfsson','Mitchell','Emard','gerente','dauer@example.org','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-07-08 10:23:43','2021-07-08 10:23:43'),(3,'Prof. Liza Schiller DDS','Stanton','Rath','secretario','sbarrows@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-07-08 10:23:43','2021-07-08 10:23:43'),(4,'Maverick Treutel','Upton','Carroll','secretario','harris.brooks@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-07-08 10:23:43','2021-07-08 10:23:43'),(5,'Dr. Donnell Robel I','VonRueden','Eichmann','secretario','abernathy.elena@example.net','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2021-07-08 10:23:43','2021-07-08 10:23:43'),(6,'Pablo','Perez','Torres','Chofer','pablo@gmail.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL),(7,'Laura','Sanchez','Lopez','cliente','laura@gmail.com','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL),(8,'Fernando','Díaz','Díaz','cliente','fer@gmail.com','$2y$10$pCY.Nm3yvHmbphbU7QYQAuxlRbdQsSzQj6nTa3nev1EG4Pt5JZaNO','2021-07-08 10:26:44','2021-07-08 10:26:44'),(9,'Javier','Fuentes','Fuentes','secretario','jav@gmail.com','$2y$10$oGkrn5.BHpeN4OOvEeSpYePXTKcoJ88r1U2R.tHQDrp2YM79S/zSW','2021-07-08 10:45:00','2021-07-08 10:47:28'),(10,'Empleado nuevo','Perez','Perez','secretario','emp@gmail.com','$2y$10$mmwrvtYtkY5HiK32EWNF2OgRuAhQB1y/IdjtdCse.hGgqRsoTGzea','2021-07-09 04:36:25','2021-07-09 04:36:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14 13:30:26
