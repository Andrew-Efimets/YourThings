/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: database    Database: laravel
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `categories` VALUES
(1,'Бытовая техника','bytovaia-texnika',NULL,'2025-12-20 07:16:47'),
(2,'Компьютерная техника','kompiuternaia-texnika',NULL,'2025-12-20 07:16:47'),
(3,'Телефоны','telefony',NULL,'2025-12-20 07:16:47'),
(4,'Видеотехника','videotexnika',NULL,'2025-12-20 07:16:47'),
(5,'Аудиотехника','audiotexnika',NULL,'2025-12-20 07:16:48'),
(6,'Другая электроника','drugaia-elektronika',NULL,'2025-12-20 07:16:48');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `cities` VALUES
(1,'Минск','2025-12-01 12:24:05','2025-12-01 12:24:11'),
(2,'Витебск','2025-12-01 12:24:37','2025-12-01 12:24:38'),
(3,'Брест','2025-12-01 12:24:50','2025-12-01 12:24:50'),
(4,'Гродно','2025-12-01 12:25:22','2025-12-01 12:25:22'),
(5,'Гомель','2025-12-01 12:25:27','2025-12-01 12:25:27'),
(6,'Могилёв','2025-12-01 12:25:34','2025-12-01 12:25:34'),
(7,'Барановичи','2025-12-01 12:25:53','2025-12-01 12:25:54'),
(8,'Барань','2025-12-01 12:26:05','2025-12-01 12:26:05'),
(9,'Белоозерск','2025-12-01 12:26:11','2025-12-01 12:26:12'),
(10,'Белыничи','2025-12-01 12:26:20','2025-12-01 12:26:20'),
(11,'Береза','2025-12-01 12:26:39','2025-12-01 12:26:40'),
(12,'Березино','2025-12-01 12:26:46','2025-12-01 12:26:46'),
(13,'Березовка','2025-12-01 12:26:56','2025-12-01 12:26:56'),
(14,'Бобруйск','2025-12-01 12:27:09','2025-12-01 12:27:09'),
(15,'Борисов','2025-12-01 12:27:20','2025-12-01 12:27:20'),
(16,'Браслав','2025-12-01 12:27:28','2025-12-01 12:27:29'),
(17,'Буда-Кошелево','2025-12-01 12:27:35','2025-12-01 12:27:36'),
(18,'Быхов','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(19,'Василевичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(20,'Верхнедвинск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(21,'Ветка','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(22,'Вилейка','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(23,'Щучин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(24,'Волковыск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(25,'Воложин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(26,'Высокое','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(27,'Ганцевичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(28,'Глубокое','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(29,'Горки','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(30,'Городок','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(31,'Давид-Городок','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(32,'Дзержинск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(33,'Дисна','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(34,'Добруш','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(35,'Докшицы','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(36,'Дрогичин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(37,'Дубровно','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(38,'Дятлово','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(39,'Ельск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(40,'Жабинка','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(41,'Житковичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(42,'Жлобин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(43,'Жодино','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(44,'Заславль','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(45,'Иваново','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(46,'Ивацевичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(47,'Ивье','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(48,'Калинковичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(49,'Каменец','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(50,'Кировск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(51,'Клецк','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(52,'Климовичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(53,'Кличев','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(54,'Кобрин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(55,'Копыль','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(56,'Коссово','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(57,'Костюковичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(58,'Кричев','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(59,'Круглое','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(60,'Крупки','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(61,'Лепель','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(62,'Лида','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(63,'Логойск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(64,'Лунинец','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(65,'Любань','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(66,'Ляховичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(67,'Малорита','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(68,'Марьина Горка','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(69,'Микашевичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(70,'Миоры','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(71,'Мозырь','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(72,'Молодечно','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(73,'Мосты','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(74,'Мстиславль','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(75,'Мядель','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(76,'Наровля','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(77,'Несвиж','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(78,'Новогрудок','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(79,'Новолукомль','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(80,'Новополоцк','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(81,'Орша','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(82,'Осиповичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(83,'Островец','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(84,'Ошмяны','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(85,'Петриков','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(86,'Пинск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(87,'Полоцк','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(88,'Поставы','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(89,'Пружаны','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(90,'Речица','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(91,'Рогачев','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(92,'Светлогорск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(93,'Свислочь','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(94,'Сенно','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(95,'Скидель','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(96,'Славгород','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(97,'Слоним','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(98,'Слуцк','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(99,'Смолевичи','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(100,'Сморгонь','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(101,'Солигорск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(102,'Старые Дороги','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(103,'Столбцы','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(104,'Столин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(105,'Толочин','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(106,'Туров','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(107,'Узда','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(108,'Фаниполь','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(109,'Хойники','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(110,'Чаусы','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(111,'Чашники','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(112,'Червень','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(113,'Чериков','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(114,'Чечерск','2025-12-01 12:27:54','2025-12-01 12:27:54'),
(115,'Шклов','2025-12-01 12:27:54','2025-12-01 12:27:54');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `failed_jobs` VALUES
(1,'3f879bb6-04a9-42bf-a79b-5b117a3a2d4a','database','default','{\"uuid\":\"3f879bb6-04a9-42bf-a79b-5b117a3a2d4a\",\"displayName\":\"App\\\\Mail\\\\BuyMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":17:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\BuyMail\\\":3:{s:4:\\\"data\\\";a:2:{s:4:\\\"name\\\";s:14:\\\"Валерий\\\";s:7:\\\"message\\\";s:22:\\\"Видеокамера\\\";}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:11:\\\"Ler@son.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"},\"createdAt\":1767686547,\"delay\":null}','InvalidArgumentException: View [mail.buy] not found. in /var/www/html/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:138\nStack trace:\n#0 /var/www/html/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(78): Illuminate\\View\\FileViewFinder->findInPaths(\'mail.buy\', Array)\n#1 /var/www/html/vendor/laravel/framework/src/Illuminate/View/Factory.php(150): Illuminate\\View\\FileViewFinder->find(\'mail.buy\')\n#2 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(444): Illuminate\\View\\Factory->make(\'mail.buy\', Array)\n#3 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(419): Illuminate\\Mail\\Mailer->renderView(\'mail.buy\', Array)\n#4 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(312): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.buy\', NULL, NULL, Array)\n#5 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'mail.buy\', Array, Object(Closure))\n#6 /var/www/html/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(82): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 /var/www/html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#15 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(487): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(437): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 /var/www/html/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 /var/www/html/vendor/symfony/console/Command/Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /var/www/html/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 /var/www/html/vendor/symfony/console/Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /var/www/html/vendor/symfony/console/Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /var/www/html/vendor/symfony/console/Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /var/www/html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#43 {main}','2026-01-06 08:02:30'),
(2,'12a3abe7-3cdd-4631-b6ad-7813d50da70f','database','default','{\"uuid\":\"12a3abe7-3cdd-4631-b6ad-7813d50da70f\",\"displayName\":\"App\\\\Mail\\\\BuyMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":17:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\BuyMail\\\":3:{s:4:\\\"data\\\";a:2:{s:4:\\\"name\\\";s:10:\\\"Артём\\\";s:7:\\\"message\\\";s:18:\\\"Телевизор\\\";}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:11:\\\"Art@son.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"},\"createdAt\":1767686547,\"delay\":null}','InvalidArgumentException: View [mail.buy] not found. in /var/www/html/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:138\nStack trace:\n#0 /var/www/html/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(78): Illuminate\\View\\FileViewFinder->findInPaths(\'mail.buy\', Array)\n#1 /var/www/html/vendor/laravel/framework/src/Illuminate/View/Factory.php(150): Illuminate\\View\\FileViewFinder->find(\'mail.buy\')\n#2 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(444): Illuminate\\View\\Factory->make(\'mail.buy\', Array)\n#3 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(419): Illuminate\\Mail\\Mailer->renderView(\'mail.buy\', Array)\n#4 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(312): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.buy\', NULL, NULL, Array)\n#5 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'mail.buy\', Array, Object(Closure))\n#6 /var/www/html/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(82): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 /var/www/html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#15 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(487): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(437): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 /var/www/html/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 /var/www/html/vendor/symfony/console/Command/Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /var/www/html/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 /var/www/html/vendor/symfony/console/Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /var/www/html/vendor/symfony/console/Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /var/www/html/vendor/symfony/console/Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /var/www/html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#43 {main}','2026-01-06 08:02:37'),
(3,'6a3d9a60-d6a0-4114-97dc-77fc771617f0','database','default','{\"uuid\":\"6a3d9a60-d6a0-4114-97dc-77fc771617f0\",\"displayName\":\"App\\\\Mail\\\\BuyMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":17:{s:8:\\\"mailable\\\";O:16:\\\"App\\\\Mail\\\\BuyMail\\\":3:{s:4:\\\"data\\\";a:2:{s:4:\\\"name\\\";s:10:\\\"Роман\\\";s:7:\\\"message\\\";s:39:\\\"Посудомоечная машина\\\";}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:12:\\\"Roma@son.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:3:\\\"job\\\";N;}\"},\"createdAt\":1767686547,\"delay\":null}','InvalidArgumentException: View [mail.buy] not found. in /var/www/html/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php:138\nStack trace:\n#0 /var/www/html/vendor/laravel/framework/src/Illuminate/View/FileViewFinder.php(78): Illuminate\\View\\FileViewFinder->findInPaths(\'mail.buy\', Array)\n#1 /var/www/html/vendor/laravel/framework/src/Illuminate/View/Factory.php(150): Illuminate\\View\\FileViewFinder->find(\'mail.buy\')\n#2 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(444): Illuminate\\View\\Factory->make(\'mail.buy\', Array)\n#3 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(419): Illuminate\\Mail\\Mailer->renderView(\'mail.buy\', Array)\n#4 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(312): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.buy\', NULL, NULL, Array)\n#5 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(207): Illuminate\\Mail\\Mailer->send(\'mail.buy\', Array, Object(Closure))\n#6 /var/www/html/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(200): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 /var/www/html/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(82): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 /var/www/html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(129): Illuminate\\Container\\Container->call(Array)\n#15 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 /var/www/html/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(133): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(134): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(180): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 /var/www/html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(127): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(68): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(487): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(437): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(358): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(148): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 /var/www/html/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Util.php(43): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(96): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 /var/www/html/vendor/laravel/framework/src/Illuminate/Container/Container.php(799): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 /var/www/html/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call(Array)\n#35 /var/www/html/vendor/symfony/console/Command/Command.php(341): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 /var/www/html/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 /var/www/html/vendor/symfony/console/Application.php(1102): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 /var/www/html/vendor/symfony/console/Application.php(356): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 /var/www/html/vendor/symfony/console/Application.php(195): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 /var/www/html/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(198): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 /var/www/html/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1235): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/artisan(16): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#43 {main}','2026-01-06 08:02:44');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2025_10_30_080337_create_products_table',2),
(5,'2025_11_10_070916_create_images_table',3),
(6,'2025_11_10_095341_create_product_images_table',4),
(7,'2025_11_16_061442_create_categories_table',5),
(8,'2025_11_16_072033_update_categories_data',6),
(9,'2025_11_16_074039_create_categories_table',7),
(10,'2025_11_16_124247_create_categories_table',8),
(11,'2025_11_19_153357_add_description_to_products',9),
(12,'2025_11_20_090751_change_price_column_type_in_products_table',10),
(13,'2025_11_21_073742_add_photo_exist_to_products',11),
(14,'2025_11_26_070712_app_user_id_to_products',12),
(15,'2025_11_26_075652_change_user_id_column_type_in_products_table',13),
(16,'2025_12_01_064658_create_carts_table',14),
(17,'2025_12_01_084414_create_cities_table',14),
(18,'2025_12_01_084823_app_city_id_to_products',14),
(19,'2025_12_01_084931_app_city_id_to_users',14),
(20,'2025_12_04_085422_add_role_to_users',15),
(21,'2025_12_18_071444_drop_city_id_from_users',16),
(22,'2025_12_18_072958_add_foreign_to_product_images',17),
(23,'2025_12_19_101227_add_foreing_to_products',18),
(24,'2025_12_20_063549_add_slug_to_tables',19),
(25,'2025_12_20_071820_change_slug_to_tables',20),
(26,'2025_12_24_062306_add_phone_to_users_table',21),
(27,'2025_12_30_065524_create_orders_table',22),
(28,'2025_12_30_075612_change_order_number_to_orders',23),
(29,'2025_12_30_164151_add_status_to_product',24),
(30,'2026_01_05_085908_add_order_id_to_products',25);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `total_price` int NOT NULL,
  `order_number` bigint unsigned NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `orders` VALUES
(11,30,1160,2026010512010030,1,'2026-01-05 12:01:03','2026-01-05 12:01:03'),
(13,7,1800,202601060810377,1,'2026-01-06 08:10:40','2026-01-06 08:10:40'),
(17,7,1000,202601080554067,1,'2026-01-08 05:54:10','2026-01-08 05:54:10'),
(18,27,309,2026010808421227,1,'2026-01-08 08:42:14','2026-01-08 08:42:14'),
(19,16,2700,2026010909550016,1,'2026-01-09 09:55:04','2026-01-09 09:55:04'),
(20,3,1500,202603111714153,1,'2026-03-11 17:14:19','2026-03-11 17:14:19'),
(21,3,155,202603111832583,1,'2026-03-11 18:33:01','2026-03-11 18:33:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `product_images` VALUES
(152,'1662227273_3-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-5.jpg',334,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(153,'1662227287_7-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-11.jpg',334,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(164,'1662227389_40-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-49.jpg',334,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(165,'1662227389_40-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-49.jpg',351,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(166,'1662227332_21-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-28.jpg',352,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(168,'1662227287_7-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-11.jpg',354,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(169,'pexels-jvdm-1599791.jpg',355,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(175,'pexels-castorlystock-3682215.jpg',357,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(176,'1662227287_7-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-11.jpg',358,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(177,'1662227332_21-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-28.jpg',358,'2025-11-17 17:19:32','2025-11-17 17:19:32'),
(178,'pexels-asphotography-213162.jpg',359,'2025-11-19 07:45:13','2025-11-19 07:45:13'),
(179,'pexels-castorlystock-3682215.jpg',359,'2025-11-19 07:45:13','2025-11-19 07:45:13'),
(180,'pexels-fatmacekmez-17303438.jpg',359,'2025-11-19 07:45:13','2025-11-19 07:45:13'),
(181,'pexels-jvdm-1599791.jpg',359,'2025-11-19 07:45:13','2025-11-19 07:45:13'),
(182,'pexels-phenyo-deluxe-427483-1370082.jpg',359,'2025-11-19 07:45:13','2025-11-19 07:45:13'),
(183,'pexels-asphotography-213162.jpg',360,'2025-11-19 10:02:49','2025-11-19 10:02:49'),
(184,'pexels-castorlystock-3682215.jpg',360,'2025-11-19 10:02:49','2025-11-19 10:02:49'),
(185,'pexels-fatmacekmez-17303438.jpg',360,'2025-11-19 10:02:49','2025-11-19 10:02:49'),
(186,'pexels-jvdm-1599791.jpg',360,'2025-11-19 10:02:49','2025-11-19 10:02:49'),
(187,'pexels-fatmacekmez-17303438.jpg',361,'2025-11-19 10:09:26','2025-11-19 10:09:26'),
(188,'pexels-jvdm-1599791.jpg',361,'2025-11-19 10:09:26','2025-11-19 10:09:26'),
(189,'pexels-castorlystock-3682215.jpg',361,'2025-11-20 08:42:07','2025-11-20 08:42:07'),
(191,'pexels-jvdm-1599791.jpg',362,'2025-11-20 08:42:07','2025-11-20 08:42:07'),
(192,'pexels-phenyo-deluxe-427483-1370082.jpg',363,'2025-11-20 08:43:32','2025-11-20 08:43:32'),
(194,'pexels-castorlystock-3682215.jpg',364,'2025-11-21 07:54:07','2025-11-21 07:54:07'),
(195,'pexels-phenyo-deluxe-427483-1370082.jpg',365,'2025-11-21 07:56:28','2025-11-21 07:56:28'),
(196,'pexels-asphotography-213162.jpg',366,'2025-11-21 07:57:48','2025-11-21 07:57:48'),
(197,'pexels-jvdm-1599791.jpg',367,'2025-11-21 08:04:12','2025-11-21 08:04:12'),
(198,'pexels-fatmacekmez-17303438.jpg',368,'2025-11-21 08:06:24','2025-11-21 08:06:24'),
(199,'pexels-phenyo-deluxe-427483-1370082.jpg',369,'2025-11-21 08:09:57','2025-11-21 08:09:57'),
(204,'pexels-jvdm-1599791.jpg',374,'2025-11-26 08:01:42','2025-11-26 08:01:42'),
(206,'pexels-jvdm-1599791.jpg',375,'2025-11-26 08:01:42','2025-11-26 08:01:42'),
(218,'pexels-jvdm-1599791.jpg',382,'2025-11-26 08:01:42','2025-11-26 08:01:42'),
(219,'pexels-phenyo-deluxe-427483-1370082.jpg',382,'2025-11-26 08:01:42','2025-11-26 08:01:42'),
(220,'pexels-asphotography-213162.jpg',383,'2025-11-26 09:26:23','2025-11-26 09:26:23'),
(221,'pexels-castorlystock-3682215.jpg',383,'2025-11-26 09:26:23','2025-11-26 09:26:23'),
(222,'pexels-fatmacekmez-17303438.jpg',383,'2025-11-26 09:26:23','2025-11-26 09:26:23'),
(223,'pexels-asphotography-213162.jpg',384,'2025-11-26 09:30:45','2025-11-26 09:30:45'),
(224,'pexels-castorlystock-3682215.jpg',384,'2025-11-26 09:30:45','2025-11-26 09:30:45'),
(225,'pexels-asphotography-213162.jpg',385,'2025-11-26 09:33:28','2025-11-26 09:33:28'),
(226,'pexels-fatmacekmez-17303438.jpg',385,'2025-11-26 09:33:28','2025-11-26 09:33:28'),
(227,'pexels-jvdm-1599791.jpg',386,'2025-11-26 09:37:52','2025-11-26 09:37:52'),
(229,'pexels-castorlystock-3682215.jpg',387,'2025-11-26 09:41:37','2025-11-26 09:41:37'),
(230,'pexels-fatmacekmez-17303438.jpg',387,'2025-11-26 09:41:37','2025-11-26 09:41:37'),
(231,'pexels-asphotography-213162.jpg',388,'2025-11-26 09:42:24','2025-11-26 09:42:24'),
(232,'pexels-asphotography-213162.jpg',389,'2025-11-26 09:48:28','2025-11-26 09:48:28'),
(233,'pexels-castorlystock-3682215.jpg',389,'2025-11-26 09:48:28','2025-11-26 09:48:28'),
(234,'pexels-phenyo-deluxe-427483-1370082.jpg',390,'2025-11-26 09:50:46','2025-11-26 09:50:46'),
(235,'pexels-jvdm-1599791.jpg',391,'2025-11-26 09:51:44','2025-11-26 09:51:44'),
(236,'pexels-fatmacekmez-17303438.jpg',392,'2025-11-26 09:53:52','2025-11-26 09:53:52'),
(237,'pexels-phenyo-deluxe-427483-1370082.jpg',393,'2025-11-26 09:55:44','2025-11-26 09:55:44'),
(238,'pexels-jvdm-1599791.jpg',394,'2025-11-26 10:01:36','2025-11-26 10:01:36'),
(239,'pexels-castorlystock-3682215.jpg',395,'2025-11-26 10:04:23','2025-11-26 10:04:23'),
(240,'1662227287_7-kartinkof-club-p-novie-i-krasivie-kartinki-lyubie-11.jpg',396,'2025-11-26 15:10:43','2025-11-26 15:10:43'),
(243,'medium01.avif',402,'2025-12-17 06:51:43','2025-12-17 06:51:43'),
(244,'jbl-tune-620bt-blue-1-min-1-417x417.jpg',403,'2025-12-17 06:56:28','2025-12-17 06:56:28'),
(245,'0_2_big.jpg',404,'2025-12-17 07:25:33','2025-12-17 07:25:33'),
(270,'thum-1600x1062.avif',386,'2025-12-18 08:16:25','2025-12-18 08:16:25'),
(277,'631bc902a7d58b3b83ad149b87691700.png',415,'2025-12-18 08:23:32','2025-12-18 08:23:32'),
(278,'jbl-tune-620bt-blue-1-min-1-417x417.jpg',415,'2025-12-18 08:23:32','2025-12-18 08:23:32'),
(279,'philips-tah4205bk-00-2-417x417.jpg',415,'2025-12-18 08:23:32','2025-12-18 08:23:32'),
(280,'4c2738e6566ac6d1a7cfcd35585a5c40.jpg',416,'2025-12-18 10:09:11','2025-12-18 10:09:11'),
(281,'Без названия.jpg',416,'2025-12-18 10:09:11','2025-12-18 10:09:11'),
(282,'0789832.400109-medium.jpg',417,'2025-12-19 09:38:39','2025-12-19 09:38:39'),
(283,'jelektricheskij-duhovoj-shkaf-bosch-hbg378eb6r.jpg',417,'2025-12-19 09:38:39','2025-12-19 09:38:39'),
(284,'jelektricheskij-duhovoj-shkaf-bosch-hng6764b6-2.jpg',417,'2025-12-19 09:38:39','2025-12-19 09:38:39'),
(285,'6095233673.jpg',418,'2025-12-19 09:55:24','2025-12-19 09:55:24'),
(286,'png-klev-club-p-mikrovolnovka-png-4.png',418,'2025-12-19 09:55:24','2025-12-19 09:55:24'),
(287,'VM-2050BL.png',418,'2025-12-19 09:55:24','2025-12-19 09:55:24'),
(288,'6408034263.jpg',419,'2025-12-20 07:51:25','2025-12-20 07:51:25'),
(289,'Без названия.jpg',419,'2025-12-20 07:51:25','2025-12-20 07:51:25'),
(290,'23.png',420,'2025-12-23 08:09:14','2025-12-23 08:09:14'),
(291,'100000074995b0.webp',420,'2025-12-23 08:09:14','2025-12-23 08:09:14'),
(292,'edddf7d15f3aefab22d9d52fec93a440.webp',420,'2025-12-23 08:09:15','2025-12-23 08:09:15'),
(296,'100vt.jpeg',422,'2025-12-24 13:47:35','2025-12-24 13:47:35'),
(297,'chtotakoepayalnik1.jpg',422,'2025-12-24 13:47:35','2025-12-24 13:47:35'),
(298,'hah1c7bbkau83i93s8bvtzy2ts2ld54p.jpg',422,'2025-12-24 13:47:35','2025-12-24 13:47:35'),
(299,'1280x960-1-.avif',423,'2025-12-25 09:10:55','2025-12-25 09:10:55'),
(300,'images.jpg',423,'2025-12-25 09:10:55','2025-12-25 09:10:55'),
(301,'956-100_do3d-qs.jpg',424,'2025-12-25 09:46:21','2025-12-25 09:46:21'),
(302,'admin-ajax__1_.jpg',424,'2025-12-25 09:46:21','2025-12-25 09:46:21'),
(311,'7eoy5bdit18mh9jx84n1mjmtgkf71bw6.jpg',429,'2026-01-05 10:26:10','2026-01-05 10:26:10'),
(312,'group-279-990x1238.webp',429,'2026-01-05 10:26:11','2026-01-05 10:26:11'),
(313,'D-3.jpg',237,'2026-01-05 11:05:00','2026-01-05 11:05:00'),
(314,'fab50rrd.jpg',239,'2026-01-05 11:06:07','2026-01-05 11:06:07'),
(315,'exdw-i607-6.png',240,'2026-01-05 11:07:22','2026-01-05 11:07:22'),
(316,'img_rd2120306_001_395.jpg',255,'2026-01-05 11:08:28','2026-01-05 11:08:28'),
(317,'full_mikrofon-shure-sm58-lce-2.jpg',256,'2026-01-05 11:09:32','2026-01-05 11:09:32'),
(318,'371562c1417dd093eefa93d709a51780.webp',256,'2026-01-05 11:09:32','2026-01-05 11:09:32'),
(319,'images.jpg',257,'2026-01-05 11:10:37','2026-01-05 11:10:37'),
(320,'images (1).jpg',258,'2026-01-05 11:11:27','2026-01-05 11:11:27'),
(321,'1.jpg',430,'2026-01-05 11:33:20','2026-01-05 11:33:20'),
(322,'jbl-tune-620bt-blue-1-min-1-417x417.jpg',431,'2026-01-05 11:35:10','2026-01-05 11:35:10'),
(323,'philips-tah4205bk-00-2-417x417.jpg',431,'2026-01-05 11:35:10','2026-01-05 11:35:10'),
(324,'medium01.avif',432,'2026-01-05 11:37:20','2026-01-05 11:37:20'),
(325,'pylesos-samsung-vc18m21c0vr-1800vt-krasnyj.webp',433,'2026-01-05 11:40:01','2026-01-05 11:40:01'),
(326,'vc20m25-1.webp',433,'2026-01-05 11:40:01','2026-01-05 11:40:01'),
(327,'1_1007.jpg',434,'2026-01-05 12:32:16','2026-01-05 12:32:16'),
(328,'550x500-27.df0.jpg',434,'2026-01-05 12:32:16','2026-01-05 12:32:16'),
(329,'laptop_7.png',435,'2026-01-05 12:32:56','2026-01-05 12:32:56'),
(330,'lenovov13015.jpg',435,'2026-01-05 12:32:56','2026-01-05 12:32:56'),
(331,'1007270795.jpg',436,'2026-01-06 06:59:35','2026-01-06 06:59:35'),
(332,'sony_hdr_cx405_1.webp',436,'2026-01-06 06:59:35','2026-01-06 06:59:35'),
(333,'Видеокамеры400x400.jpg',437,'2026-01-06 07:52:06','2026-01-06 07:52:06'),
(334,'aa14800b28bcf964c764570290672a80.webp',438,'2026-01-06 07:52:56','2026-01-06 07:52:56'),
(335,'tovar106252.jpg',439,'2026-01-06 07:54:11','2026-01-06 07:54:11'),
(336,'ima4ges.jpg',440,'2026-01-08 05:48:13','2026-01-08 05:48:13'),
(337,'1920х1080_5048.jpg',441,'2026-01-08 05:50:20','2026-01-08 05:50:20'),
(338,'zbpbhd91awyfqilebbz2rl1gegv2s69n.jpg.webp',442,'2026-01-08 05:51:20','2026-01-08 05:51:20'),
(339,'550x500-27.df0.jpg',443,'2026-01-08 08:34:46','2026-01-08 08:34:46'),
(340,'64RDRAD.jpg',444,'2026-01-08 08:36:11','2026-01-08 08:36:11'),
(341,'3hb7q394fu7d8bgpjtfe9o5t1ud2i73h.jpg',445,'2026-01-08 08:37:42','2026-01-08 08:37:42'),
(342,'exdw-i607-6.png',446,'2026-01-09 09:51:34','2026-01-09 09:51:34'),
(343,'tovar106252.jpg',446,'2026-01-09 09:51:34','2026-01-09 09:51:34');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_exist` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `user_id` int DEFAULT NULL,
  `city_id` bigint unsigned NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `order_number` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_city_id_foreign` (`city_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `products` VALUES
(237,'Телевизор','televizor-eMsCv',450,'Телевизор','photo',4,10,14,0,NULL,'2025-11-11 11:20:34','2026-01-06 10:45:05'),
(239,'Холодильник','xolodilnik-Gh7w9',750,'Холодильник','photo',1,11,9,0,NULL,'2025-11-11 11:22:03','2026-01-06 10:40:05'),
(240,'Посудомоечная машина','posudomoecnaia-masina-gqOEX',600,'Посудомоечная машина','photo',1,12,12,0,NULL,'2025-11-11 11:22:03','2026-01-06 11:20:05'),
(255,'Саундбар','saundbar-IDHIj',170,'Саундбар','photo',5,13,6,0,NULL,'2025-11-12 07:01:05','2026-01-06 11:27:08'),
(256,'Микрофон','mikrofon-tik5L',70,'Микрофон','photo',5,14,7,0,NULL,'2025-11-12 07:01:05','2026-01-06 11:05:04'),
(257,'Колонка','kolonka-UxLnJ',76,'Колонка','photo',5,15,11,0,NULL,'2025-11-12 07:03:57','2026-01-05 11:10:37'),
(258,'Процессор','processor-2bRJk',250,'Процессор','photo',2,16,8,2,2026010512010030,'2025-11-12 07:03:58','2026-01-05 12:01:03'),
(259,'Телефон','telefon-yRloT',720,'Телефон',NULL,3,17,13,0,NULL,'2025-11-12 07:05:25','2026-01-05 11:12:17'),
(271,'Телефон','telefon-9ZEmA',650,'Телефон',NULL,3,18,15,0,NULL,'2025-11-12 07:33:56','2026-01-05 11:13:16'),
(272,'Компьютер','kompiuter-wHQRh',760,'Компьютер',NULL,2,7,5,2,2026010512010030,'2025-11-12 07:33:56','2026-01-05 12:01:03'),
(273,'Микрофон','mikrofon-xpgS8',170,'Микрофон',NULL,5,20,16,0,NULL,'2025-11-12 07:34:58','2026-01-05 11:16:00'),
(274,'Автомобильный пылесос','avtomobilnyi-pylesos-ATkYC',560,'Автомобильный пылесос',NULL,6,21,17,0,NULL,'2025-11-12 07:34:58','2026-01-05 11:18:34'),
(276,'Пылесос','pylesos-1R5Dt',150,'Пылесос',NULL,1,22,18,2,2026010512010030,'2025-11-12 07:36:40','2026-01-05 12:01:03'),
(277,'Телевизор','televizor-BXTaR',380,'Телевизор',NULL,4,23,9,0,NULL,'2025-11-12 08:00:54','2026-01-05 11:19:34'),
(334,'холодильник','xolodilnik-334',378,NULL,'photo',1,5,10,0,NULL,'2025-11-12 16:24:06','2025-12-20 07:12:36'),
(351,'Телевизор','televizor-351',767,'Телевизор','photo',4,2,3,0,NULL,'2025-11-16 12:53:34','2025-12-20 09:10:06'),
(352,'Компьютер','kompiuter-352',767,NULL,'photo',2,10,14,0,NULL,'2025-11-16 12:54:58','2025-12-20 07:12:36'),
(354,'Видеокамера','videokamera-354',55,NULL,'photo',4,24,5,0,NULL,'2025-11-17 07:48:39','2025-12-20 07:12:36'),
(355,'Холодильник','xolodilnik-355',30,'Лучший холодильник','photo',1,20,16,0,NULL,'2025-11-17 08:29:52','2025-12-20 07:12:36'),
(357,'саундбар','saundbar-357',55,NULL,'photo',5,5,10,0,NULL,'2025-11-17 11:37:32','2025-12-20 07:12:36'),
(358,'Часы','casy-358',55,NULL,'photo',6,11,9,0,NULL,'2025-11-17 17:19:32','2025-12-20 07:12:36'),
(359,'Пылесос','pylesos-359',55,NULL,'photo',1,4,2,0,NULL,'2025-11-19 07:45:12','2025-12-20 07:12:36'),
(360,'Утюг','utiug-360',378,NULL,'photo',1,16,8,0,NULL,'2025-11-19 10:02:48','2025-12-20 07:12:36'),
(361,'Стиральная машина','stiralnaia-masina-361',150,'Стиральная машина №1','photo',1,4,2,0,NULL,'2025-11-19 10:09:25','2025-12-20 07:12:36'),
(362,'Стиральная машина','stiralnaia-masina-362',378,NULL,'photo',1,3,4,0,NULL,'2025-11-20 08:42:07','2025-12-20 07:12:36'),
(363,'Стиральная машина','stiralnaia-masina-363',30,NULL,'photo',1,26,3,0,NULL,'2025-11-20 08:43:32','2025-12-20 07:12:36'),
(364,'Отпариватель','otparivatel-364',63,'Отпариватель','photo',1,3,4,0,NULL,'2025-11-21 07:54:06','2025-12-20 07:12:36'),
(365,'Музыкальный центр','muzykalnyi-centr-365',564,'Музыкальный центр','photo',5,2,3,0,NULL,'2025-11-21 07:56:28','2025-12-20 07:12:36'),
(366,'Игровая приставка','igrovaia-pristavka-366',55,'Игровая приставка','photo',6,2,3,0,NULL,'2025-11-21 07:57:48','2025-12-20 07:12:36'),
(367,'Смартфон','smartfon-367',30,'Смартфон','photo',3,2,3,0,NULL,'2025-11-21 08:04:12','2025-12-20 07:12:37'),
(368,'Смартфон','smartfon-368',150,'Смартфон','photo',3,30,1,0,NULL,'2025-11-21 08:06:24','2025-12-20 07:12:37'),
(369,'Видеокарта','videokarta-369',30,'Видеокарта','photo',2,3,4,0,NULL,'2025-11-21 08:09:57','2025-12-20 07:12:37'),
(374,'Мультиварка','multivarka-374',150,'Мультиварка','photo',1,4,2,0,NULL,'2025-11-21 08:25:13','2025-12-20 07:12:37'),
(375,'Стиральная машина','stiralnaia-masina-375',767,'Стиральная машина','photo',1,4,2,0,NULL,'2025-11-21 08:28:24','2025-12-20 07:12:37'),
(382,'Музыкальный центр','muzykalnyi-centr-382',55,'Музыкальный центр','photo',5,5,10,0,NULL,'2025-11-26 08:01:42','2025-12-20 07:12:37'),
(383,'Пылесос','pylesos-383',458,'Пылесос','photo',1,21,17,0,NULL,'2025-11-26 09:26:23','2025-12-20 07:12:37'),
(384,'Кофеварка','kofevarka-384',378,'Кофеварка','photo',1,5,10,0,NULL,'2025-11-26 09:30:45','2025-12-20 07:12:37'),
(385,'Телефон','telefon-385',150,'Телефон','photo',3,6,11,0,NULL,'2025-11-26 09:33:28','2025-12-20 07:12:37'),
(386,'Стиральная машина','stiralnaia-masina-386',55,'Стиральная машина','photo',1,21,17,2,202603111832583,'2025-11-26 09:37:52','2026-03-11 18:33:01'),
(387,'Стиральная машина','stiralnaia-masina-387',55,'Стиральная машина','photo',1,6,11,2,202603111832583,'2025-11-26 09:41:37','2026-03-11 18:33:01'),
(388,'Стиральная машина','stiralnaia-masina-388',45,'Стиральная машина','photo',1,12,12,2,202603111832583,'2025-11-26 09:42:24','2026-03-11 18:33:01'),
(389,'Стиральная машина','stiralnaia-masina-389',345,'Стиральная машина','photo',1,6,11,0,NULL,'2025-11-26 09:48:28','2025-12-20 07:12:37'),
(390,'Материнская плата','materinskaia-plata-390',524,'Материнская плата','photo',2,14,7,0,NULL,'2025-11-26 09:50:46','2025-12-20 07:12:37'),
(391,'Процессор','processor-391',667,'Процессор','photo',2,15,11,0,NULL,'2025-11-26 09:51:44','2025-12-20 07:12:37'),
(392,'Оперативная память','operativnaia-pamiat-392',150,'DDR6','photo',2,18,15,0,NULL,'2025-11-26 09:53:52','2025-12-20 07:12:37'),
(393,'Наушники','nausniki-393',378,'Наушники','photo',5,14,7,0,NULL,'2025-11-26 09:55:44','2025-12-20 07:12:37'),
(394,'Монитор','monitor-394',767,'Монитор','photo',2,15,11,0,NULL,'2025-11-26 10:01:35','2025-12-20 07:12:37'),
(395,'Корпус системного блока','korpus-sistemnogo-bloka-395',30,'Корпус системного блока','photo',2,13,6,0,NULL,'2025-11-26 10:04:23','2025-12-20 08:29:28'),
(396,'Электронная книга','elektronnaia-kniga-396',1000,'Самая лучшая электронная книга','photo',6,17,13,0,NULL,'2025-11-26 15:10:43','2025-12-20 07:12:38'),
(402,'Проектор','proektor-402',654,'Проектор','photo',4,30,1,0,NULL,'2025-12-17 06:51:42','2025-12-20 07:12:38'),
(403,'Наушники','nausniki-403',98,'Наушники','photo',5,6,11,0,NULL,'2025-12-17 06:56:28','2025-12-20 07:12:38'),
(404,'Смартфон','smartfon-404',987,'Новый смартфон','photo',3,7,5,0,NULL,'2025-12-17 07:25:33','2025-12-20 07:12:38'),
(415,'Наушники','nausniki-415',150,'Наушники Бобруйск','photo',5,21,17,0,NULL,'2025-12-18 08:21:12','2025-12-20 07:12:38'),
(416,'Микроволновая печь','mikrovolnovaia-pec-416',667,'Микроволновая печь','photo',1,22,18,0,NULL,'2025-12-18 10:09:10','2025-12-20 07:12:38'),
(417,'Духовой шкаф','duxovoi-skaf-417',325,'Духовой шкаф','photo',1,23,9,0,NULL,'2025-12-19 09:38:38','2025-12-20 07:12:38'),
(418,'Микроволновая печь','mikrovolnovaia-pec-418',159,'Микроволновая печь','photo',1,7,5,2,2026010808421227,'2025-12-19 09:55:24','2026-01-08 08:42:14'),
(419,'Электрический обогреватель','elektriceskii-obogrevatel-419',621,'Электрический обогреватель','photo',6,7,5,0,NULL,'2025-12-20 07:51:24','2025-12-20 07:51:25'),
(420,'Пылесос автомобильный','pylesos-avtomobilnyi-420',370,'Пылесос автомобильный','photo',6,26,3,0,NULL,'2025-12-23 08:09:14','2025-12-23 08:09:15'),
(422,'Паяльник','paialnik-422',50,'Паяльник','photo',6,24,5,0,NULL,'2025-12-24 13:47:34','2025-12-24 13:47:35'),
(423,'Холодильник','xolodilnik-',650,'Холодильник','photo',1,28,1,0,NULL,'2025-12-25 09:10:54','2025-12-25 09:10:56'),
(424,'Фен','fen-ibCTv',120,'Фен электрический','photo',6,28,1,0,NULL,'2025-12-25 09:46:20','2025-12-25 09:46:21'),
(429,'Электрочайник','elektrocainik-vVpwd',60,'Электрочайник','photo',1,30,1,0,NULL,'2026-01-05 10:26:10','2026-01-05 10:26:11'),
(430,'Колонка','kolonka-p3IWb',350,'Колонка','photo',5,10,14,0,NULL,'2026-01-05 11:33:20','2026-01-05 11:33:20'),
(431,'Наушники','nausniki-AEixi',150,'Наушники','photo',5,10,14,2,2026010808421227,'2026-01-05 11:35:10','2026-01-08 08:42:14'),
(432,'Проектор','proektor-Stu25',800,'Проектор','photo',4,11,9,0,NULL,'2026-01-05 11:37:19','2026-01-05 11:37:20'),
(433,'Пылесос','pylesos-gGPhd',400,'Пылесос','photo',1,11,9,0,NULL,'2026-01-05 11:40:01','2026-01-05 11:40:02'),
(434,'Ноутбук','noutbuk-PxCry',1100,'Ноутбук','photo',2,31,1,0,NULL,'2026-01-05 12:32:16','2026-01-05 12:32:16'),
(435,'Ноутбук','noutbuk-E4908',1500,'Ноутбук','photo',2,31,1,2,202603111714153,'2026-01-05 12:32:55','2026-03-11 17:14:19'),
(436,'Видеокамера','videokamera-O0jFd',900,'Видеокамера','photo',4,7,5,0,NULL,'2026-01-06 06:59:34','2026-03-11 17:30:06'),
(437,'Видеокамера','videokamera-IoZrx',300,'Видеокамера','photo',4,15,1,2,202601060810377,'2026-01-06 07:52:05','2026-01-06 08:10:39'),
(438,'Телевизор','televizor-6pAMt',1000,'Телевизор','photo',4,25,1,2,202601060810377,'2026-01-06 07:52:56','2026-01-06 08:10:39'),
(439,'Посудомоечная машина','posudomoecnaia-masina-ShCNr',500,'Посудомоечная машина','photo',1,10,1,2,202601060810377,'2026-01-06 07:54:11','2026-01-06 08:10:39'),
(440,'Часы электронные','casy-elektronnye-pH4vM',150,'Часы электронные','photo',6,25,1,2,202601080554067,'2026-01-08 05:48:13','2026-01-08 05:54:09'),
(441,'Смартфон','smartfon-tKCSA',700,'Смартфон','photo',3,25,1,2,202601080554067,'2026-01-08 05:50:20','2026-01-08 05:54:09'),
(442,'Утюг','utiug-aEVUj',150,'Утюг','photo',1,26,3,2,202601080554067,'2026-01-08 05:51:20','2026-01-08 05:54:09'),
(443,'Ноутбук','noutbuk-u5oYf',600,'Ноутбук','photo',2,27,12,2,2026010909550016,'2026-01-08 08:34:46','2026-01-09 09:55:04'),
(444,'Колонка','kolonka-BbIxO',500,'Колонка','photo',5,27,12,2,2026010909550016,'2026-01-08 08:36:10','2026-01-09 09:55:04'),
(445,'Оперативная память','operativnaia-pamiat-g8EqP',100,'Оперативная память','photo',2,27,12,2,2026010909550016,'2026-01-08 08:37:41','2026-01-09 09:55:04'),
(446,'Посудомоечная машина','posudomoecnaia-masina-07hpo',1500,'Посудомоечная машина','photo',1,3,4,2,2026010909550016,'2026-01-09 09:51:32','2026-01-09 09:55:04');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `sessions` VALUES
('uC7YnxHtLiBEE9WcVn4TSh3l4SV46go0x9GwmKCI',NULL,'172.18.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnBEU2VxUFBCcTRnaGRzWXZNZ0E4aHVZMHN6dE0wVVFNMGVVamxQVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1766997874);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `users` VALUES
(1,'Test User','test@example.com',NULL,'2025-10-13 16:23:10','$2y$12$jrr6SPYHKNZeW0Iocf2yj.jaaY3dtWS9lqLvvKNPAQkOR9kuoTCHq','user','2FZEpZUZlfBPFgwSF8IyGlvoPXix32czAgoRbnwI6mzfEKv0ujQHiajXGI91','2025-10-13 16:23:11','2025-10-13 16:23:11'),
(2,'Дмитрий','Dmitry@son.com','+333445556677','2025-11-26 11:32:57','$2y$12$gu4SviFcYa4ujg4eRxnPWeaSojuUjnsRbMFt9mBLDV5GYpYao5bdK','user','OuEHGp1zLB2NTDcB7NrAKsOyb3qkPDbjuKLDylqjepztkX6VsKUbwAelL370','2025-11-25 10:44:45','2025-12-25 09:28:06'),
(3,'John','John@son.com','+333556667788','2025-11-26 11:32:57','$2y$12$hlG01BhnOrrRN1QZScLTdOfprKLXDUvj0rVRM4vmey0gK9zhmvBnq','user','x84HA0SGrOe87kQQ1Qvs9ZVD0ldUe0xB1mMDSBe4SA4dLuXZBWnzuk9NLNGJ','2025-11-26 05:59:30','2025-12-23 11:49:07'),
(4,'Alex','Alex@son.com','+333667778899','2025-11-26 11:32:57','$2y$12$1tyRPnKAdkqYX7iFX9WJ9eDeyOwtq/ULO1qgwODoKF/rZPeo7OHDG','user',NULL,'2025-11-26 07:10:26','2025-11-26 07:10:26'),
(5,'Tom','Tom@son.com','+333112223344','2025-11-26 11:32:57','$2y$12$rN1yKQevrcU38PYJiXwFkOkfa83MEcXW8VpD97F/kUBQa2dHojbJ.','user',NULL,'2025-11-26 07:11:23','2025-11-26 07:11:23'),
(6,'Валентин','Val@son.com','+333223334455','2025-11-26 11:32:57','$2y$12$KHaV8yCD1MFr6NUQtI0rxOkKjnEo7dZJhtPwXTaDkZIlhBSjSMzNG','user',NULL,'2025-11-26 10:24:12','2025-11-26 10:24:12'),
(7,'Анатолий','Anatily@son.com','+333334445566','2025-11-26 11:32:57','$2y$12$sNEpepKOje5vhuqSlU5tPeHVQqFZxIZvQjbyyJF2ElXzew7CymMOa','user','NgflrqicHa0EUXWU11qDjAZBCOykUV2VHtVzjFVCPhpr2M1uWNAU5KXiATxW','2025-11-26 10:29:13','2025-11-26 10:29:13'),
(10,'Роман','Roma@son.com','+333778889900','2025-11-26 11:32:57','$2y$12$J11Bjl9Zy5UAit3YtVpy4uc7reirhTEIWobRf5PZM8QYfgBxdhiKm','user','w3y8AK8Avi96XpkIlg4YLwV4rPUGjO22gmHOMvCpQetxflKRsG6II2bcJjgF','2025-11-26 10:34:32','2025-11-26 10:34:32'),
(11,'Семён','Senya@son.com','+333001112233','2025-11-26 11:32:57','$2y$12$jFjJCaVhGjIpyOBf3qaqyOpYVSrWTJrACsldn3EnK2SDItrq3SNHa','user',NULL,'2025-11-26 10:39:50','2025-11-26 10:39:50'),
(12,'Пётр','Petr@son.com','+333113334455','2025-11-26 11:32:57','$2y$12$hbVaPld2TjSWgN8P4NWhGuxOz9Nyj5dAcu2/v3zybVJ5jvPYeeuFC','user',NULL,'2025-11-26 10:44:41','2025-11-26 10:44:41'),
(13,'Павел','Paul@son.com','+333114445566','2025-11-26 11:32:57','$2y$12$6ybFyVLd7tN5ynoIBN1H/uJhEI7ZEp4yC.hsgaDPNz47ucu9gXlEq','user',NULL,'2025-11-26 11:17:54','2025-11-26 11:17:54'),
(14,'Эдуард','Ed@son.com','+333115556677','2025-11-26 11:32:57','$2y$12$JuFWpQgdGlneEwUab9JF7OdKWLSqZ7EVX558XZoJwTeSXKvp.yD9a','user',NULL,'2025-11-26 11:20:54','2025-11-26 11:20:54'),
(15,'Валерий','Ler@son.com','+333116667788','2025-11-26 11:32:57','$2y$12$ME8Vs.i.wAyVOJOEmjPiTe.KnCfpGMjL2icI3Lk7YNbeptvvAVd/2','user',NULL,'2025-11-26 11:30:48','2025-11-26 11:32:57'),
(16,'Евгений','Evgeny@son.com','+333117778899','2025-11-26 11:34:53','$2y$12$pPfTC8ND94V2po8qAT3ML.C3QdDLuYmUWXkK7mEhHH7Ani4Kl/dOq','user','Q8RFO8pIBpsLm7kKNqpplNu5Xnc161hFsHgcYrkwxTWroAV9CsIgXEdm03HI','2025-11-26 11:34:13','2025-11-26 11:34:53'),
(17,'Анастасия','Kot@son.com','+333224445566','2025-11-26 15:09:42','$2y$12$iMTn35wfdnlNFoshc50YDuReJNWA7TNF09tthzjKSeeJ1rg4UCLum','user',NULL,'2025-11-26 15:09:06','2025-11-26 15:09:42'),
(18,'Admin','Admin@admin.com','+333225556677','2025-12-04 09:01:00','$2y$12$JSRTHcbMOgExhu0il/HX1.J0hphBaZ30ELBvR8rjVDXKUOQwZYuYm','admin',NULL,'2025-12-04 09:00:39','2025-12-04 09:01:00'),
(20,'Руслан','Ruslan@son.com','+333449998877','2025-12-18 06:01:33','$2y$12$bnZUnx6VrlOeltoOfLWqwuqsxCsIbr7D42q5CZ/TD6ZKE7FxEbTFe','user',NULL,'2025-12-18 06:01:04','2025-12-18 06:01:33'),
(21,'Анна','Anna@son.com','+333665556677','2025-12-18 06:09:38','$2y$12$S/cX.5hjjTP07U4S4N2AK.DXR4eu5541HlMzN1hpt.S/NnEaGluOu','user',NULL,'2025-12-18 06:09:07','2025-12-18 06:09:38'),
(22,'Григорий','Grig@son.com','+333995556655','2025-12-18 09:59:04','$2y$12$Sy64UpzKYTk628CzAfB3euICMzBR6GE2GusN.OYtN4biz0zZgjb.G','user',NULL,'2025-12-18 09:57:07','2025-12-18 09:59:04'),
(23,'Василий','Vas@son.com','+333884445522','2025-12-19 09:34:09','$2y$12$f66WXbqHHVLWsCweqziFkuT3VlJa3xXAbA9E0rRjyjySlpb9Oaeaa','user',NULL,'2025-12-19 08:25:59','2025-12-19 09:34:09'),
(24,'Сергей','Serg@son.com','+333558885566','2025-12-24 12:44:08','$2y$12$eqHDrkT2GGbhfUUvf/3Mt.g.mqsp2ch1LReRaKgBbzpFCd2jh9PvK','user',NULL,'2025-12-19 09:48:43','2025-12-24 12:44:08'),
(25,'Артём','Art@son.com','+333779996655','2025-12-23 08:01:53','$2y$12$0nf8gqTpADyv8D24UOKlY.GUlAHQM3KK1c9PYdg3OLKDXrBr54Htm','user',NULL,'2025-12-23 08:01:34','2025-12-23 08:01:53'),
(26,'Кирилл','Kir@son.com','+333669998877','2025-12-23 08:05:53','$2y$12$yWruyUh66zlyxb9a6sgxaOzclKsRPZkIW1ssrh91yEc3iQATDyj2C','user',NULL,'2025-12-23 08:05:38','2025-12-23 08:05:53'),
(27,'Виктор','Vik@son.com','+333991112233','2025-12-23 08:21:16','$2y$12$Cvks120tnhPaNt2.7DX77uqiWOdotgxR4RPHY7uuhROeCe9/9cKve','user',NULL,'2025-12-23 08:20:59','2025-12-23 08:21:16'),
(28,'Павел','Pav@son.com','+333445551111','2025-12-25 09:07:25','$2y$12$o3pNOr3zWc6pBYQn.sFG3O9AonHvjbWpv6ChHO177DM9ndC7IKT.e','user',NULL,'2025-12-25 09:06:25','2025-12-25 09:08:07'),
(29,'Савелий','Sov@son.com','+333445552222','2025-12-30 12:28:25','$2y$12$sg7Zc461msLpW3moglC20erXN6GDzXJR01Z72cIdFHeIOMduCGftC','user',NULL,'2025-12-30 12:27:43','2025-12-30 12:30:17'),
(30,'Георгий','Geo@son.com','+333774449999','2025-12-30 16:45:20','$2y$12$x90Odq4teoz9qgXoydhLceT5dTijR6vhLMqUGICjfsy6Hy/t.4cqG','user','ZAwCdjDzx0fK0kT9XhdtA5iwAXlmmjGhv563DAPMRzO1LmC43oZUjcKG4dFW','2025-12-30 16:45:04','2025-12-30 16:45:20'),
(31,'Наталья','Nat@son.com','+333557778899','2025-12-30 16:56:26','$2y$12$CDea6baD3D/N36/XcX03iuI/jY8eWs8fJ0LCZkRKpQImAcqT6dP86','user',NULL,'2025-12-30 16:55:49','2025-12-30 16:59:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-03-12  5:30:07
