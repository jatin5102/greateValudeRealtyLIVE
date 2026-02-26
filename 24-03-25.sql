CREATE DATABASE  IF NOT EXISTS `websitedesigning_great` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `websitedesigning_great`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 162.215.208.23    Database: websitedesigning_great
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','admin@gmail.com',NULL,'$2y$10$utfnCLHmwuAtZis1JF7IcuNuDURXRVdOngc8ySO3RzHUy1L7mR6BS',NULL,'2024-12-19 00:22:01','2024-12-19 00:22:01'),(2,'Test','test@gmail.com',NULL,'$2y$10$utfnCLHmwuAtZis1JF7IcuNuDURXRVdOngc8ySO3RzHUy1L7mR6BS',NULL,'2025-01-31 04:01:46','2025-01-31 04:01:46');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'amenities-icon/1740565909.swimming-pool.webp','amenities-icon/1742385674.1740565909.swimming-pool.png','Swimming Pool','Swimming Pool',1,'2025-02-26 17:31:49','2025-03-19 18:01:14'),(2,'amenities-icon/1740565929.yoga.webp','amenities-icon/1742385689.1740565929.yoga.png','Yoga & Aerobics','Yoga & Aerobics Hall',1,'2025-02-26 17:32:09','2025-03-19 18:01:29'),(3,'amenities-icon/1740565944.gymnasium.webp','amenities-icon/1742385697.1740565944.gymnasium.png','Gymnasium','Gymnasium',1,'2025-02-26 17:32:24','2025-03-19 18:01:37'),(4,'amenities-icon/1740565961.theater.webp','amenities-icon/1742385705.1740565961.theater.png','Mini Home Theater','Mini Home Theater',1,'2025-02-26 17:32:41','2025-03-19 18:01:45'),(5,'amenities-icon/1740565985.library.webp','amenities-icon/1742385715.1740565985.library.png','Library','Library',1,'2025-02-26 17:33:05','2025-03-19 18:01:55'),(6,'amenities-icon/1740565999.basketballBall.webp','amenities-icon/1742385724.1740565999.basketballBall.png','Basketball','Basketball',1,'2025-02-26 17:33:19','2025-03-19 18:02:04'),(7,'amenities-icon/1740566020.running-track.webp','amenities-icon/1742385732.1740566020.running-track.png','Jogging Track','Jogging Track',1,'2025-02-26 17:33:40','2025-03-19 18:02:12'),(8,'amenities-icon/1740566036.park.webp','amenities-icon/1742385742.1740566036.park.png','Park','Park',1,'2025-02-26 17:33:56','2025-03-19 18:02:22'),(9,'amenities-icon/1741065914.ac.webp','amenities-icon/1742385754.1741065914.ac.png','Split Air-Conditioners','Split Air-Conditioners',1,'2025-03-04 12:25:14','2025-03-19 18:02:34'),(10,'amenities-icon/1741065927.power.webp','amenities-icon/1742385764.1741065927.power.png','Power Backup','Power Backup',1,'2025-03-04 12:25:27','2025-03-19 18:02:44'),(11,'amenities-icon/1742449700.22.webp','amenities-icon/1742385775.1741065940.terrace (1).png','Terrace','Terrace',1,'2025-03-04 12:25:40','2025-03-20 11:48:20'),(12,'amenities-icon/1741065954.parking.webp','amenities-icon/1742385784.1741065954.parking.png','Basement Car Parking','Basement Car Parking',1,'2025-03-04 12:25:54','2025-03-19 18:03:04'),(13,'amenities-icon/1741065973.ventillation.webp','amenities-icon/1742385793.1741065973.ventillation.png','Ventilation & Natural Light','Ventilation & Natural Light',1,'2025-03-04 12:26:13','2025-03-19 18:03:13'),(14,'amenities-icon/1741065990.community.webp','amenities-icon/1742385801.1741065990.community.png','Community Maintenance','Community Maintenance',1,'2025-03-04 12:26:30','2025-03-19 18:03:21'),(15,'amenities-icon/1741066016.lift.webp','amenities-icon/1742385812.1741066016.lift.png','Lift','Lift',1,'2025-03-04 12:26:56','2025-03-19 18:03:32'),(16,'amenities-icon/1741066029.servant.webp','amenities-icon/1742385823.1741066029.servant.png','Servant Quarters','Servant Quarters',1,'2025-03-04 12:27:09','2025-03-19 18:03:43'),(17,'amenities-icon/1741324051.club.webp','amenities-icon/1742385834.1741324051.club.png','Entertainment club','Entertainment club',1,'2025-03-07 12:07:31','2025-03-19 18:03:54'),(18,'amenities-icon/1741324068.banquet.webp','amenities-icon/1742385845.1741324068.banquet.png','Banquet facilities','Banquet facilities',1,'2025-03-07 12:07:48','2025-03-19 18:04:05'),(19,'amenities-icon/1741324089.pitch.webp','amenities-icon/1742385855.1741324089.pitch.png','Cricket pitch','Cricket pitch',1,'2025-03-07 12:08:09','2025-03-19 18:04:15'),(20,'amenities-icon/1741324104.basketball.webp','amenities-icon/1742385865.1741324104.basketball.png','Basketball court','Basketball court',1,'2025-03-07 12:08:24','2025-03-19 18:04:25'),(21,'amenities-icon/1741324121.badminton.webp','amenities-icon/1742385878.1741324121.badminton.png','Badminton court','Badminton court',1,'2025-03-07 12:08:41','2025-03-19 18:04:38'),(22,'amenities-icon/1742452251.11.webp','amenities-icon/1742385886.1741324135.road (1).png','10m wide arterial roads','10m wide arterial roads',1,'2025-03-07 12:08:55','2025-03-20 12:30:51'),(23,'amenities-icon/1741324148.guard.webp','amenities-icon/1742385899.1741324148.guard.png','Gated community','Gated community',1,'2025-03-07 12:09:08','2025-03-19 18:04:59'),(24,'amenities-icon/1741324161.gazebo.webp','amenities-icon/1742385911.1741324161.gazebo.png','European style gazebo','European style gazebo',1,'2025-03-07 12:09:21','2025-03-19 18:05:11'),(25,'amenities-icon/1741324181.golf.webp','amenities-icon/1742385921.1741324181.golf.png','Gated Golf putting greens','Golf putting greens',1,'2025-03-07 12:09:41','2025-03-19 18:05:21'),(26,'amenities-icon/1741327916.reflexology.webp','amenities-icon/1742385931.1741327916.reflexology.png','Reflexology Park','Reflexology Park',1,'2025-03-07 13:11:56','2025-03-19 18:05:31'),(27,'amenities-icon/1741327929.play.webp','amenities-icon/1742385950.1741327929.play.png','Children\'s Play Area','Children\'s Play Area',1,'2025-03-07 13:12:09','2025-03-19 18:05:50'),(28,'amenities-icon/1741327954.car_parking.webp','amenities-icon/1742385958.1741327954.car_parking.png','Car Parking','Car Parking',1,'2025-03-07 13:12:34','2025-03-19 18:05:58');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_contents`
--

DROP TABLE IF EXISTS `banner_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headinng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_contents`
--

LOCK TABLES `banner_contents` WRITE;
/*!40000 ALTER TABLE `banner_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_offers`
--

DROP TABLE IF EXISTS `banner_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_offers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `md_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sm_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_offers`
--

LOCK TABLES `banner_offers` WRITE;
/*!40000 ALTER TABLE `banner_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_sliders`
--

DROP TABLE IF EXISTS `banner_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desktop_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_sliders`
--

LOCK TABLES `banner_sliders` WRITE;
/*!40000 ALTER TABLE `banner_sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_at` date DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_author` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'top-10-benefits-of-purchasing-your-home-from-a-well-established-builder','Top 10 Benefits of Purchasing Your Home from a Well-Established Builder','blog/1739269628.desktop-blog-2.webp',NULL,'blog/1739269629.blog2.png',NULL,NULL,'description',NULL,NULL,NULL,NULL,NULL,1,'2025-02-11 04:57:09','2025-02-18 03:39:49','2025-02-18 03:39:49'),(2,'top-10-benefits-of-purchasing-your-home-from-a-well-established-builder-2','Top 10 Benefits of Purchasing Your Home from a Well-Established Builder','blog/1739869441.MVN_MVN_PH_II_DKS.jpg',NULL,'blog/1739869441.16981324 1.png',NULL,NULL,'description',NULL,NULL,NULL,NULL,NULL,1,'2025-02-18 03:34:01','2025-02-18 03:39:20','2025-02-18 03:39:20'),(3,'top-10-benefits-of-purcha-2','Top 10 Benefits of Purcha','blog-image/1740129252.vision_and_mission_e5tdx1.webp',NULL,'blog-thumbnail/1740129252.nri-banner.webp',NULL,NULL,'description',NULL,NULL,NULL,NULL,NULL,1,'2025-02-18 03:35:54','2025-02-25 19:52:27','2025-02-25 19:52:27'),(4,'a-guide-to-the-best-schools-hospitals-and-shopping-centers-near-sector-107-noida-2','A Guide to the Best Schools, Hospitals, and Shopping Centers Near Sector 107, Noida','blog-image/1740205928.blog3.webp',NULL,'blog-thumbnail/1740214576.blog3.webp',NULL,NULL,'<p>Sector 107, Noida, offers more than just comfortable living spaces; it’s a vibrant locale enriched with top-tier schools, state-of-the-art healthcare facilities, and bustling shopping destinations. Strategically located and well-connected, this area caters to every need, blending urban convenience with community charm. Whether you’re looking for quality education, reliable healthcare, or retail therapy, Sector 107 and its surroundings present a dynamic mix of options to elevate your lifestyle.</p>',NULL,NULL,NULL,NULL,NULL,1,'2025-02-18 06:29:36','2025-02-25 19:52:30','2025-02-25 19:52:30'),(5,'test-title','test title','blog-image/1740214530.blog3.webp',NULL,'blog-thumbnail/1740214530.blog3.webp',NULL,NULL,'<p>test description</p>',NULL,NULL,NULL,NULL,NULL,1,'2025-02-22 13:49:01','2025-02-22 15:55:55','2025-02-22 15:55:55'),(6,'buying-vs-renting-in-noida-sector-107-which-option-is-right-for-you','Buying vs Renting in Noida Sector 107: Which Option is Right for You?','blog/1740488250.desktop-blog-3.webp','Great Value Renting and buying a home Noida','blog/1740488250.blog3.webp','blog/1742273731.desktop-blog-3.jpg','blog/1742272149.blog3.jpg','<h3>Investment Potential and Property Appreciation</h3><p><br></p><p>Buying a property in Sector 107 offers significant long-term benefits, especially if you are looking to invest. The area has witnessed a steady rise in property prices, with the average rate ranging from ₹5,000 to ₹13,000 per sq. ft., depending on the project and its proximity to main roads. According to real estate experts, the region\'s price trend has been upward, with some areas witnessing growth rates of 5-7% annually​. For instance, luxury properties like a 3BHK flat in Mahagun Medalleo are priced at around ₹3.7 crore, equating to ₹21,600 per sq. ft., indicating a prime location\'s premium​. Buying a property now could lead to substantial capital gains in the future.</p><p><br></p><h3>Rental Demand and Affordable Option</h3><p><br></p><p>On the flip side, renting is a flexible option with low upfront costs and no long-term commitment. With an increasing number of families and working professionals moving to Noida, rental demand is strong, particularly in areas like Sector 107. Monthly rentals in the area range from ₹25,000 to ₹75,000 for 2BHK and 3BHK apartments​. Renting allows you to enjoy the amenities and lifestyle of Sector 107 without the hefty down payment or maintenance costs associated with ownership. For example, a 3BHK apartment in Mahagun Medalleo offers rental prices upwards of ₹75,000 per month​. If you\'re unsure about long-term stability or planning to move after a few years, renting can offer a greater degree of flexibility.</p><p><br></p><h3>Flexibility vs. Stability</h3><p><br></p><p>Renting offers flexibility, especially if your work situation or personal life might change in the next few years. For example, people who are unsure about their long-term residency in Noida often prefer renting to avoid the hassle of selling a property later. Conversely, owning a property offers stability and a permanent base in a city that\'s continuously growing. Additionally, homeowners benefit from tax deductions on home loans, making buying a more financially rewarding option in the long run. Renters, however, do not enjoy this benefit​.</p><p><br></p><h3>The Last Words!</h3><p><br></p><p>Deciding between buying and renting in Noida Sector 107 boils down to your financial goals, life situation, and long-term plans. If you\'re looking for investment opportunities with potential appreciation, buying may be the way to go. On the other hand, if you need flexibility and lower upfront costs, renting is a viable and affordable option. Either way, Sector 107 provides numerous possibilities for both buyers and renters, making it an attractive locality in the heart of Noida.</p>','2025-01-20','null','null','null','null',1,'2025-02-25 19:57:30','2025-03-18 10:55:31',NULL),(7,'why-noida-sector-107-is-the-perfect-location-for-your-new-home','Why Noida Sector 107 is the Perfect Location for Your New Home','blog/1742273460.desktop-blog-2.webp','Great Value High-rise buildings Noida','blog-thumbnail/1741425444.blog2.webp','blog/1742275068.desktop-blog-2.jpg','blog/1742275068.blog2.jpg','<h3>Enhanced Connectivity for a Seamless Lifestyle</h3><p><br></p><p>Sector 107 is perfectly situated to offer unparalleled connectivity, making it a hub for convenient travel across the National Capital Region (NCR). Positioned near the Noida-Greater Noida Expressway and seamlessly linked to the Yamuna Expressway, this location ensures effortless travel to key destinations, including Delhi, Greater Noida, and Agra. The expressways offer swift access to prominent hubs like Connaught Place, South Delhi, and the IT and industrial corridors of Noida and Greater Noida. Additionally, the upcoming Jewar Airport and proximity to DND Flyway further elevate its connectivity profile.</p><p><br></p><h3>Lifestyle Amenities and High-Quality Infrastructure</h3><p><br></p><p>In Sector 107, residents are surrounded by an array of top-tier amenities designed to enhance their lifestyle. The presence of Skymark One, a premier shopping and entertainment destination, ensures that everything from luxury retail outlets to fine dining experiences is just a stone’s throw away. Additionally, the sector boasts proximity to leading educational institutions, healthcare facilities, and recreational zones, catering to the needs of families and professionals alike. Modern residential projects in the area come equipped with state-of-the-art amenities, such as swimming pools, clubhouses, fitness centers, and green spaces, offering a balanced lifestyle of convenience and leisure.</p>','2025-02-08','null','null','null','null',1,'2025-02-25 20:00:24','2025-03-18 11:17:48',NULL),(8,'a-guide-to-the-best-schools-hospitals-and-shopping-centers-near-sector-107-noida','A Guide to the Best Schools, Hospitals, and Shopping Centers Near Sector 107, Noida','blog-image/1741425493.desktop-blog-1.webp','Great Value Modern architectural design Noida','blog/1741669525.blog1.webp','blog/1742275092.desktop-blog-1.jpg','blog/1742275092.blog1.jpg','<h3>Nurturing Minds: Top Schools Shaping Futures Near Sector 107</h3><p><br></p><p>Sector 107, Noida, has emerged as a thriving educational hub, offering access to some of the best schools in the region. Prestigious institutions like Lotus Valley International, Pathways School Noida, and Kothari International School provide top-tier education, blending academic rigor with extracurricular excellence. Among these, Kothari International School shines with its CBSE and Cambridge curricula, emphasizing balanced development through a blend of academics, sports, and creative arts. However, one significant consideration for parents is the connectivity to these schools. While Sector 107 enjoys proximity to key areas of Noida.</p>','2025-02-25','null','null','null','null',1,'2025-02-25 20:02:08','2025-03-18 11:18:12',NULL),(9,'test-title','test title','blog/1741678516.contact-us-img.webp',NULL,'blog/1741678516.commercial.webp','blog/1741678516.gallery-1.jpg','blog/1741678516.factory-2.png','<p>test long description</p>',NULL,'test title','test keyword','test description','test uthor',1,'2025-03-11 13:35:16','2025-03-11 15:14:47','2025-03-11 15:14:47'),(10,'test-title1-2','test title1','blog/1741684670.customization.webp','test alt1','blog/1741684670.epc-world-img-Photoroom.webp','blog/1741679180.gallery-1.jpg','blog/1741679180.factory-2.png','<p>test logn descriptioon1</p>','2025-03-02','test title1','test keyword1','teset description111','test authior111',1,'2025-03-11 13:46:20','2025-03-11 15:21:57','2025-03-11 15:21:57');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_details`
--

DROP TABLE IF EXISTS `blogs_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_details`
--

LOCK TABLES `blogs_details` WRITE;
/*!40000 ALTER TABLE `blogs_details` DISABLE KEYS */;
INSERT INTO `blogs_details` VALUES (1,1,'Buying vs Renting in Noida Sector 107: Which Option is Right for You?','Noida Sector 107 has become a highly sought-after area for both buyers and renters, thanks to its strategic location, excellent connectivity, and well-developed infrastructure. If you\'re contemplating whether to buy or rent a property in this thriving locality, it\'s important to weigh the pros and cons of both options. Let\'s dive into the factors that can guide your decision.','2025-02-18 04:06:25','2025-02-18 04:06:25'),(2,3,'Buying vs Renting in Noida Sector 107: Which Option is Right for You?','Noida Sector 107 has become a highly sought-after area for both buyers and renters, thanks to its strategic location, excellent connectivity, and well-developed infrastructure. If you\'re contemplating whether to buy or rent a property in this thriving locality, it\'s important to weigh the pros and cons of both options. Let\'s dive into the factors that can guide your decision.','2025-02-18 04:07:38','2025-02-18 04:07:38'),(3,4,'Nurturing Minds: Top Schools Shaping Futures Near Sector 107','Sector 107, Noida, has emerged as a thriving educational hub, offering access to some of the best schools in the region. Prestigious institutions like Lotus Valley International, Pathways School Noida, and Kothari International School provide top-tier education, blending academic rigor with extracurricular excellence. Among these, Kothari International School shines with its CBSE and Cambridge curricula, emphasizing balanced development through a blend of academics, sports, and creative arts. However, one significant consideration for parents is the connectivity to these schools. While Sector 107 enjoys proximity to key areas of Noida.','2025-02-18 06:30:46','2025-02-18 06:30:46');
/*!40000 ALTER TABLE `blogs_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `experience_id` int NOT NULL,
  `job_timing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'residential-properties-ncr','Residential','category/1741348733.residential.webp',NULL,'Great Value residential buildings Noida',1,'2025-02-12 01:46:06','2025-03-13 12:01:12',NULL),(2,'commercial-projects','Commercial','category/1741348801.commercial.webp',NULL,'Great Value Modern industrial building Noida',1,'2025-02-12 01:46:29','2025-03-13 12:01:30',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_overviews`
--

DROP TABLE IF EXISTS `category_overviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_overviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_overviews`
--

LOCK TABLES `category_overviews` WRITE;
/*!40000 ALTER TABLE `category_overviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_overviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_typologies`
--

DROP TABLE IF EXISTS `category_typologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_typologies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categories_id` int NOT NULL,
  `typologies_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_typologies`
--

LOCK TABLES `category_typologies` WRITE;
/*!40000 ALTER TABLE `category_typologies` DISABLE KEYS */;
INSERT INTO `category_typologies` VALUES (1,1,4,'2025-02-24 19:13:26','2025-02-24 19:13:26',NULL),(2,1,3,'2025-02-24 19:13:36','2025-02-24 19:13:36',NULL),(4,2,2,'2025-02-24 19:14:25','2025-02-24 19:14:25',NULL),(5,1,1,'2025-02-26 17:44:26','2025-02-26 17:44:26',NULL),(6,2,8,'2025-03-03 16:11:15','2025-03-03 16:11:15',NULL),(7,1,9,'2025-03-04 12:05:35','2025-03-04 12:05:35',NULL),(8,2,10,'2025-03-04 14:48:52','2025-03-04 14:48:52',NULL),(9,1,11,'2025-03-06 19:30:42','2025-03-06 19:30:42',NULL);
/*!40000 ALTER TABLE `category_typologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'noida','Noida',NULL,1,0,'2025-02-25 13:42:34','2025-02-25 13:42:34'),(2,2,'new-delhi','New Delhi',NULL,1,0,'2025-03-04 12:07:48','2025-03-04 12:07:48'),(3,3,'New Delhi','New Delhi',NULL,1,0,'2025-03-04 12:08:42','2025-03-04 12:08:42'),(4,1,'greater-noida','Greater Noida',NULL,1,0,'2025-03-04 13:17:37','2025-03-04 13:17:37'),(5,4,'sohna','Sohna',NULL,1,0,'2025-03-04 15:36:30','2025-03-04 15:36:30'),(6,1,'aligarh','Aligarh',NULL,1,0,'2025-03-04 16:28:35','2025-03-04 16:28:35'),(7,4,'gurugram','Gurugram',NULL,1,0,'2025-03-07 11:45:18','2025-03-07 11:45:18'),(8,5,'undefined','undefined',NULL,1,0,'2025-03-07 12:48:28','2025-03-07 12:48:28'),(9,6,'mumbai','Mumbai',NULL,1,0,'2025-03-10 10:24:16','2025-03-10 10:24:16');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Test Name','TEST@gmail.com','+91',9999312996,'Test Message',1,'2025-03-17 16:11:13','2025-03-17 16:11:13'),(2,'Test Name','test@gmail.com','+91',9999999999,'Test Message',1,'2025-03-17 16:13:30','2025-03-17 16:13:30');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'india-2','India','IN',1,'2025-02-25 13:42:34','2025-02-25 13:42:34'),(2,'singapore-2','Singapore','SG',1,'2025-03-07 12:48:28','2025-03-07 12:48:28');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developers`
--

DROP TABLE IF EXISTS `developers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` bigint DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rera` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_popular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developers`
--

LOCK TABLES `developers` WRITE;
/*!40000 ALTER TABLE `developers` DISABLE KEYS */;
/*!40000 ALTER TABLE `developers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (2,'education/1738998470.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:37:50','2025-02-08 01:37:50'),(3,'education/1738998492.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:38:12','2025-02-08 01:38:12'),(4,'education/1738998496.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:38:16','2025-02-08 01:38:16'),(5,'education/1738998498.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:38:18','2025-02-08 01:38:18'),(6,'education/1738998499.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:38:19','2025-02-08 01:38:19'),(7,'education/1738998500.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:38:20','2025-02-08 01:38:20'),(8,'education/1738998501.1.png','Great Value Play School nurtures young minds by enhancing learning skills and opening opportunities for kids.',1,'2025-02-08 01:38:21','2025-02-08 01:38:21');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esg_details_section`
--

DROP TABLE IF EXISTS `esg_details_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esg_details_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'social, environment, governance\r\n',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esg_details_section`
--

LOCK TABLES `esg_details_section` WRITE;
/*!40000 ALTER TABLE `esg_details_section` DISABLE KEYS */;
INSERT INTO `esg_details_section` VALUES (11,'social','Eye camps','RSD Dispensaries in Sangam Vihar, Tughlakabad, Dakshin Puri, and Ratiya Marg offer free or affordable medical treatments, including X-rays, pathology, physiotherapy, and multi-specialist consultations.','communities/1740660493.esg-social1.webp','communities/1742370611.1740660493.esg-social1.jpg','Great Value Healthcare program Noida',1,'2025-02-27 19:48:13','2025-03-19 13:50:11'),(12,'social','GVR Health & Wellness Camps','Eye camps, blood donation drives, and dental health programs are organised through RSD Charitable Trust, collaborating with Divya Prem Seva Mission, Seva Bharti, and Khushali Foundation to reach underserved communities.','communities/1740660513.esg-social2.webp','communities/1742370620.1740660513.esg-social2.jpg','Great Value Health & wellness camps Noida',1,'2025-02-27 19:48:33','2025-03-19 13:50:20'),(13,'social','GVR Early Learning Program','Through RSD Play School, primary education is provided that fosters early cognitive development and learning skills, creating brighter opportunities for children.','communities/1740660530.esg-social3.webp','communities/1742370628.1740660530.esg-social3.jpg','Great Value Primary education Noida',1,'2025-02-27 19:48:50','2025-03-19 13:50:28'),(14,'social','GVR Digital Literacy Initiative','Computer education to 400+ students is offered in Sangam Vihar and Pushpa Vihar, while the RSD Computer Centre provides basic IT training for young adults, empowering them for future careers.','communities/1740660544.esg-social4.webp','communities/1742370636.1740660544.esg-social4.jpg','Great Value Computer education Noida',1,'2025-02-27 19:49:04','2025-03-19 13:50:36'),(15,'social','GVR Community Empowerment Program','Through partnerships with Divya Prem Seva Mission, Khushali Foundation, and Seva Bharti, we provide vocational training and women’s empowerment programs, fostering independence and self-sufficiency.','communities/1740660568.esg-social5.webp','communities/1742370643.1740660568.esg-social5.jpg','Great Value Community empowerment Noida',1,'2025-02-27 19:49:28','2025-03-19 13:50:43'),(16,'environment','Green Certified Buildings','Every Great Value Realty project is green-certified, ensuring energy efficiency, reduced carbon emissions, and environmentally responsible construction.','communities/1740662298.environment1.webp','communities/1742370752.1740662298.environment1.jpg','Great Value Modern buildings Noida',1,'2025-02-27 20:18:18','2025-03-19 13:52:32'),(17,'environment','Sustainable Materials in All Projects','We use eco-friendly materials, energy-efficient fixtures, and low-emission construction techniques, reducing environmental impact while maintaining durability.','communities/1740662313.environment2.webp','communities/1742370758.1740662313.environment2.jpg','Great Value Sustainable Materials Noida',1,'2025-02-27 20:18:33','2025-03-19 13:52:38'),(18,'environment','Water Conservation Strategies','Our developments feature rainwater harvesting, water-efficient plumbing, and smart irrigation systems, ensuring responsible water usage.','communities/1740662326.environment3.webp','communities/1742370767.1740662326.environment3.jpg','Great Value Sustainable water conservation Noida',1,'2025-02-27 20:18:46','2025-03-19 13:52:47'),(19,'environment','Waste Management Initiatives','We implement strict waste segregation, recycling programs, and sustainable disposal methods, promoting cleaner and greener communities.','communities/1740662353.environment4.webp','communities/1742370776.1740662353.environment4.jpg','Great Value eco-friendly disposal Noida',1,'2025-02-27 20:19:13','2025-03-19 13:52:56'),(20,'environment','CO2 Emission Reduction','By integrating solar energy, smart insulation, and energy-efficient designs, we actively reduce CO2 emissions and promote sustainable living.','communities/1740662365.environment5.webp','communities/1742370784.1740662365.environment5.jpg','Great Value renewable energy Noida',1,'2025-02-27 20:19:25','2025-03-19 13:53:04'),(21,'governance','Code of Ethics & Business Conduct','Our Code of Ethics & Business Conduct Policy ensures fair business practices, anti-corruption measures, and compliance with legal and regulatory frameworks, promoting a culture of honesty.','communities/1740662698.ethic-code.webp','communities/1742370898.1740662698.ethic-code.png','Great Value legal professional Noida',1,'2025-02-27 20:24:58','2025-03-19 13:54:58'),(22,'governance','Corporate Transparency & Compliance Policy','We adhere to strict corporate governance norms, financial transparency regulations, and risk management protocols, ensuring compliance with national and international real estate laws.','communities/1740662715.transparency.webp','communities/1742370906.1740662715.transparency.png','Great Value financial planning Noida',1,'2025-02-27 20:25:15','2025-03-19 13:55:06'),(23,'governance','Data Privacy & Cybersecurity Policy','Our Data Privacy & Cybersecurity Policy enforces strict data encryption, customer confidentiality, and digital security measures to prevent unauthorized access and cyber threats.','communities/1740662735.data-privacy.webp','communities/1742370914.1740662735.data-privacy.png','Great Value cybersecurity Noida',1,'2025-02-27 20:25:35','2025-03-19 13:55:14'),(24,'governance','Diversity & Inclusion Policy','Our Diversity & Inclusion Policy promotes equal opportunities, anti-discrimination practices, and gender diversity at all organizational levels, ensuring an inclusive work culture.','communities/1740662749.diversity.webp','communities/1742370922.1740662749.diversity.png','Great Value Document Noida',1,'2025-02-27 20:25:49','2025-03-19 13:55:22'),(25,'governance','Stakeholder Engagement & CSR Policy','We implement the Stakeholder Engagement & CSR Policy, ensuring open communication with investors, ethical supply chain management, and community-driven corporate social responsibility initiatives.','communities/1740662766.stakeholders.webp','communities/1742370930.1740662766.stakeholders.png','Great Value business collaboration Noida',1,'2025-02-27 20:26:06','2025-03-19 13:55:30');
/*!40000 ALTER TABLE `esg_details_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esg_galleries`
--

DROP TABLE IF EXISTS `esg_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esg_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esg_galleries`
--

LOCK TABLES `esg_galleries` WRITE;
/*!40000 ALTER TABLE `esg_galleries` DISABLE KEYS */;
INSERT INTO `esg_galleries` VALUES (7,'Gallery/1740719311.esg-gallery1.webp','Gallery/1742375015.1740719311.esg-gallery1.jpg','Great Value Charity-focused education Noida',1,'2025-02-28 12:08:31','2025-03-19 15:03:35'),(8,'Gallery/1740719321.esg-gallery2.webp','Gallery/1742375026.1740719321.esg-gallery2.jpg','Great Value Charity Healthcare Services Noida',1,'2025-02-28 12:08:41','2025-03-19 15:03:46'),(9,'Gallery/1740719329.esg-gallery3.webp','Gallery/1742375034.1740719329.esg-gallery3.jpg','Great Value Charity medical facility lobby Noida',1,'2025-02-28 12:08:49','2025-03-19 15:03:54'),(10,'Gallery/1740719337.esg-gallery4.webp','Gallery/1742375043.1740719337.esg-gallery4.jpg','Great Value Medical services Noida',1,'2025-02-28 12:08:57','2025-03-19 15:04:03'),(11,'Gallery/1740719344.esg-gallery5.webp','Gallery/1742375051.1740719344.esg-gallery5.jpg','Great Value Dental checkup Noida',1,'2025-02-28 12:09:04','2025-03-19 15:04:11'),(12,'Gallery/1740719354.esg-gallery6.webp','Gallery/1742375062.1740719354.esg-gallery6.jpg','Great Value Healthcare and community Support Noida',1,'2025-02-28 12:09:14','2025-03-19 15:04:22'),(13,'Gallery/1740719363.esg-gallery7.webp','Gallery/1742375072.1740719363.esg-gallery7.jpg','Great Value Education and support Noida',1,'2025-02-28 12:09:23','2025-03-19 15:04:32'),(14,'Gallery/1740719372.esg-gallery8.webp','Gallery/1742375082.1740719372.esg-gallery8.jpg','Great Value Children’s welfare Noida',1,'2025-02-28 12:09:32','2025-03-19 15:04:42');
/*!40000 ALTER TABLE `esg_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ethos`
--

DROP TABLE IF EXISTS `ethos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ethos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ethos`
--

LOCK TABLES `ethos` WRITE;
/*!40000 ALTER TABLE `ethos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ethos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `gvlip_details`
--

DROP TABLE IF EXISTS `gvlip_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gvlip_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gvlip_details`
--

LOCK TABLES `gvlip_details` WRITE;
/*!40000 ALTER TABLE `gvlip_details` DISABLE KEYS */;
INSERT INTO `gvlip_details` VALUES (6,'welcome','Well Maintained RRC ROADS','gvlip/1741352302.gallery_1.png','gvlip/1742385985.1741262469.gallery1.jpg','Great Value Media Industrial facility Greater Noida','GVLIP features well-maintained RCC roads, ensuring smooth and efficient movement for all industrial operations.',1,'2025-03-07 19:58:22','2025-03-19 18:06:25',NULL),(7,'welcome','PEB & RCC Structure','gvlip/1741352317.gallery_1.png',NULL,'Great Value Media Warehouse exterior Greater Noida','GVLIP boasts a robust PEB and RCC structure, ensuring durability and reliability for your industrial needs',1,'2025-03-07 19:58:37','2025-03-18 11:12:50',NULL),(10,'industries','Automotive Components & Ancilliaries','gvlip/1741352437.automotive.png',NULL,'Great Value Car repair and maintenance Greater Noida',NULL,1,'2025-03-07 20:00:37','2025-03-18 11:15:15',NULL),(11,'industries','Semiconductors & Electronics','gvlip/1741352464.circuit.png',NULL,'Great Value Digital microprocessor Greater Noida',NULL,1,'2025-03-07 20:01:04','2025-03-18 11:15:40',NULL),(12,'industries','Mobile Phones & Computing Devices','gvlip/1741352481.mobile-phone.png',NULL,'Great Value Mobile device Greater Noida',NULL,1,'2025-03-07 20:01:21','2025-03-18 11:15:50',NULL),(13,'industries','Electric Mobility & Ancillaries','gvlip/1741352497.healthcare.png',NULL,'Great Value Healthcare and wellness Greater Noida',NULL,1,'2025-03-07 20:01:37','2025-03-18 11:16:04',NULL),(14,'industries','Footwear Manufacturing & Exports','gvlip/1741352513.sneakers.png',NULL,'Great Value Running shoe Greater Noida',NULL,1,'2025-03-07 20:01:53','2025-03-18 11:16:13',NULL),(15,'industries','Food Products Manufacturing','gvlip/1741352545.products.png',NULL,'Great Value Food and beverage Greater Noida',NULL,1,'2025-03-07 20:02:25','2025-03-18 11:16:24',NULL),(16,'industries','Consumer Electronics & Appliances','gvlip/1741352563.laptop.png',NULL,'Great Value Electronic devices Greater Noida',NULL,1,'2025-03-07 20:02:43','2025-03-18 11:16:37',NULL),(17,'industries','Drone & UAV Aviation','gvlip/1741352579.robot.png',NULL,'Great Value Artificial intelligence Greater Noida',NULL,1,'2025-03-07 20:02:59','2025-03-18 11:16:48',NULL),(18,'industries','Garment Manufacturing & Exports','gvlip/1741352594.fashion.png',NULL,'Great Value Clothing and laundry Greater Noida',NULL,1,'2025-03-07 20:03:14','2025-03-18 11:17:05',NULL),(19,'industries','Plastic Product Storage','gvlip/1741352608.plastic.png',NULL,'Great Value beverage containers Greater Noida',NULL,1,'2025-03-07 20:03:28','2025-03-18 11:17:16',NULL),(20,'industries','Toy Manufacturing','gvlip/1741352625.rocking-horse.png',NULL,NULL,NULL,1,'2025-03-07 20:03:45','2025-03-07 20:03:45',NULL),(21,'about','Founded in 1970','gvlip/1741352748.company-1.png',NULL,'Great Value Modern office building Greater Noida','Founded in 1970, GREAT VALUE GROUP has been a pillar of excellence in the industry',1,'2025-03-07 20:05:48','2025-03-18 11:23:32',NULL),(22,'about','2000 AUM','gvlip/1741352762.saving-1.png',NULL,'Great Value Financial support and investment Greater Noida','Managing an impressive AUM of over 2000 crore, showcasing our financial strength and stability',1,'2025-03-07 20:06:02','2025-03-18 11:23:41',NULL),(23,'about','30+ Transactioned Asset','gvlip/1741352778.transaction-1.png',NULL,'Great Value Financial transaction agreement Greater Noida','Completed 30+ high-value asset transactions, showcasing market expertise',1,'2025-03-07 20:06:18','2025-03-18 11:23:49',NULL),(24,'about','40+ People','gvlip/1741352792.people-1.png',NULL,'Great Value Teamwork and collaboration Greater Noida','A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-07 20:06:32','2025-03-18 11:24:00',NULL),(25,'environment','Smart Ventilation PEB Sheds','gvlip/1742287566.environment-1.webp','gvlip/1742466944_1742287566_environment-1_jpg','Great Value Inventory management process Greater Noida','Designed for optimal airflow and natural daylight, our PEB sheds prioritize comfort and energy conservation.',1,'2025-03-07 20:08:05','2025-03-20 16:35:44',NULL),(26,'environment','Green Landscapes & Horticulture','gvlip/1742287659.environment-4.webp','gvlip/1742466952_1742287659_environment-4_jpg','Great Value Industrial warehouse Greater Noida','Committed to the environment, we integrate expansive green areas and horticulture, beautifying the park and enriching biodiversity.',1,'2025-03-07 20:08:16','2025-03-20 16:35:52',NULL),(27,'environment','Provision for Solar Energy Setup','gvlip/1742287703.environment-2.webp','gvlip/1742466960_1742287703_environment-2_jpg','Great Value Solar-powered rooftop Greater Noida','Harnessing the power of the sun, our park provides the provision for solar powered electricity, driving sustainability.',1,'2025-03-07 20:08:31','2025-03-20 16:36:00',NULL),(28,'environment','Intelligent Rainwater Harvesting','gvlip/1742287737.environment-3.webp','gvlip/1742466971_1742287737_environment-3_jpg','Great Value Water management system Greater Noida','Minimizing water runoff, our advanced rainwater harvesting systems recharge groundwater, enhancing our eco-friendly footprint.',1,'2025-03-07 20:08:44','2025-03-20 16:36:11',NULL),(30,'overview','67 Acres of Space','gvlip/1741589579.icon-1 (1).png',NULL,'Great Value Green construction and environmentally Greater Noida','67-acre logistics & industrial park in Greater Noida offers prime facilities for business growth.',1,'2025-03-10 12:52:59','2025-03-18 10:58:52',NULL),(31,'overview','20L sq. ft built-up area','gvlip/1741589638.area.png',NULL,'Great Value Architectural floor plan Greater Noida','20 Lac sq.ft. of meticulously designed A Grade Built Up & Built-to-Suit (BTS) spaces, ready for immediate occupancy.',1,'2025-03-10 12:53:58','2025-03-18 10:59:08',NULL),(32,'overview','60 minutes from airport','gvlip/1741589694.airport.png',NULL,'Great Value Air travel and airport management Greater Noida','Conveniently located just 60 minutes away from the airport, ensuring efficient connectivity for your business needs.',1,'2025-03-10 12:54:54','2025-03-18 10:59:18',NULL),(33,'overview','20 minutes from EPE','gvlip/1741589731.road.png',NULL,'Great Value Highway infrastructure Greater Noida','Just 20 minutes away from the Eastern Peripheral Expressway, providing seamless connectivity for logistics.',1,'2025-03-10 12:55:31','2025-03-18 10:59:31',NULL),(34,'overview','15 Minutes from ICD','gvlip/1741589776.time.png',NULL,'Great Value Time tracking and productivity Greater Noida','Located just 15 minutes away from the ICD, ensuring efficient and quick connectivity for logistics.',1,'2025-03-10 12:56:16','2025-03-18 10:59:44',NULL),(37,'welcome','Well Maintained Green Belt','gvlip/1741599981.gallery_1.png',NULL,'Great Value Media commercial storage facility Greater Noida','GVLIP boasts a lush and well-maintained green belt, promoting environmental sustainability.',1,'2025-03-10 15:46:21','2025-03-18 11:13:37',NULL),(38,'welcome','24 Hour Security','gvlip/1741600010.gallery_1.png',NULL,'Great Value Media Industrial warehouse Greater Noida','GVLIP ensures round-the-clock security, offering peace of mind with vigilant surveillance and protection',1,'2025-03-10 15:46:50','2025-03-18 11:13:50',NULL),(39,'industries','Automotive Components & Ancilliaries','gvlip/1741606324.automotive.png',NULL,NULL,NULL,1,'2025-03-10 17:32:04','2025-03-10 17:32:04',NULL),(40,'industries','Consumer Electronics & Appliances','gvlip/1741606356.laptop.png',NULL,NULL,NULL,1,'2025-03-10 17:32:36','2025-03-10 17:32:36',NULL),(41,'industries','Semiconductors & Electronics','gvlip/1741606495.circuit.png',NULL,NULL,NULL,1,'2025-03-10 17:34:55','2025-03-10 17:34:55',NULL),(42,'industries','Drone & UAV Aviation','gvlip/1741606517.camera-drone.png',NULL,NULL,NULL,1,'2025-03-10 17:35:17','2025-03-10 17:35:17',NULL),(43,'industries','Mobile Phones & Computing Devices','gvlip/1741606537.mobile-phone.png',NULL,NULL,NULL,1,'2025-03-10 17:35:37','2025-03-10 17:35:37',NULL),(44,'industries','Garment Manufacturing & Exports','gvlip/1741606566.fashion.png',NULL,NULL,NULL,1,'2025-03-10 17:36:06','2025-03-10 17:36:06',NULL),(45,'industries','Electric Mobility & Ancillaries','gvlip/1741606607.healthcare.png',NULL,NULL,NULL,1,'2025-03-10 17:36:47','2025-03-10 17:36:47',NULL),(46,'industries','Plastic Product Storage','gvlip/1741606627.products.png',NULL,NULL,NULL,1,'2025-03-10 17:37:07','2025-03-10 17:37:07',NULL),(47,'industries','Footwear Manufacturing & Exports','gvlip/1741606653.sneakers.png',NULL,NULL,NULL,1,'2025-03-10 17:37:33','2025-03-10 17:37:33',NULL),(48,'industries','Toy Manufacturing','gvlip/1741606674.rocking-horse.png',NULL,NULL,NULL,1,'2025-03-10 17:37:54','2025-03-10 17:37:54',NULL),(49,'industries','Food Products Manufacturing','gvlip/1741606693.products.png',NULL,NULL,NULL,1,'2025-03-10 17:38:13','2025-03-10 17:38:13',NULL),(50,'legacy-list','Significant expertise and focus on Real Estate, leveraging a well-capitalized balance sheet and strategic investment approach.',NULL,NULL,NULL,NULL,1,'2025-03-10 18:14:25','2025-03-10 18:14:25',NULL),(51,'legacy-list','Committed to delivering top-tier risk-adjusted returns in the real estate sector.',NULL,NULL,NULL,NULL,1,'2025-03-10 18:14:44','2025-03-10 18:14:44',NULL),(52,'legacy-list','Driven by innovation, integrity, and excellence, positioning Great Value Group for sustained growth and industry leadership.',NULL,NULL,NULL,NULL,1,'2025-03-10 18:14:56','2025-03-10 18:14:56',NULL),(53,'legacy-list','Dedicated to delivering exceptional value and results to clients across the nation.',NULL,NULL,NULL,NULL,1,'2025-03-10 18:15:04','2025-03-10 18:15:04',NULL),(58,'approvals-list','Located on main Udyog Vihar road with 5 km from Pari Chowk',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-11 11:43:54','2025-03-11 11:43:54',NULL),(59,'approvals-list','One of its kind campus with ready to move in facility available',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-11 11:44:05','2025-03-11 11:44:05',NULL),(60,'approvals-list','Our sprawling complex offers ample room to accommodate future expansion seamlessly.',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-11 11:44:31','2025-03-11 11:44:31',NULL),(61,'approvals-list','Advanced security features: 24-hour surveillance, Fire Fighting System, and external CCTV coverage.',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-11 11:44:40','2025-03-11 11:44:40',NULL),(62,'approvals-list','Robust infrastructure with heavy-duty RCC roads',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-11 11:44:51','2025-03-11 11:44:51',NULL),(63,'legacy-list','19 lac sq.ft of meticulously made grade A structure',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-12 13:45:35','2025-03-12 13:45:35',NULL),(65,'approvals-list','19 lac sq.ft of meticulously made grade A structure',NULL,NULL,NULL,'A dedicated team of 40+ professionals driving innovation and success at every step',1,'2025-03-12 13:48:09','2025-03-12 13:48:09',NULL),(66,'overview','testin overview','gvlip/1742213680.image.png',NULL,'testing','testing hbkbk',1,'2025-03-17 18:14:40','2025-03-18 10:37:10','2025-03-18 10:37:10');
/*!40000 ALTER TABLE `gvlip_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructures`
--

DROP TABLE IF EXISTS `infrastructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructures` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructures`
--

LOCK TABLES `infrastructures` WRITE;
/*!40000 ALTER TABLE `infrastructures` DISABLE KEYS */;
/*!40000 ALTER TABLE `infrastructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `experience` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,'loan/1742195745.axis-bank-logo.webp','loan/1742195745.axis-bank-logo.jpg','Axis Bank',1,'2025-02-21 14:46:40','2025-03-17 13:15:45'),(2,'loan/1742203993.bank-of-baroda-logo.webp','loan/1742203993.bank-of-baroda-logo.jpg','Bank o baroda',1,'2025-02-21 14:48:10','2025-03-17 15:33:13'),(3,'loan/1742204063.canara-bank.webp','loan/1742204063.canara-bank.jpg','Canara Bank',1,'2025-02-21 14:48:27','2025-03-17 15:34:23'),(4,'loan/1742204219.hdfc-bank-logo.webp','loan/1742204219.hdfc-bank-logo.jpg','HDFC Bank',1,'2025-02-21 14:48:44','2025-03-17 15:36:59'),(5,'loan/1742204172.icici-bank-logo.webp','loan/1742204172.icici-bank-logo.jpg','ICICI Bank',1,'2025-02-21 14:49:02','2025-03-17 15:36:12'),(6,'loan/1742204278.idfc-logo.webp','loan/1742204278.idfc-logo.jpg','IDFC Bank',1,'2025-02-21 14:49:19','2025-03-17 15:37:58'),(7,'loan/1742204325.punjab-national-bank-logo.webp','loan/1742204325.punjab-national-bank-logo.jpg','Punjab National  Bank',1,'2025-02-21 14:49:46','2025-03-17 15:38:45'),(8,'loan/1742204368.sbi-logo.webp','loan/1742204368.sbi-logo.jpg','SBI',1,'2025-02-21 14:50:09','2025-03-17 15:39:28');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localities`
--

DROP TABLE IF EXISTS `localities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `localities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localities`
--

LOCK TABLES `localities` WRITE;
/*!40000 ALTER TABLE `localities` DISABLE KEYS */;
INSERT INTO `localities` VALUES (1,1,'sector-107','Sector 107',1,'2025-02-25 13:42:34','2025-02-25 13:42:34'),(2,2,'new-delhi','New Delhi',1,'2025-03-04 12:07:48','2025-03-04 12:07:48'),(3,4,'surajpur-2','Surajpur',1,'2025-03-04 13:17:37','2025-03-04 13:17:37'),(4,5,'sohna-2','Sohna',1,'2025-03-04 15:36:30','2025-03-04 15:36:30'),(5,6,'turkman-gate','Turkman Gate',1,'2025-03-04 16:28:35','2025-03-04 16:28:35'),(6,2,'mehrauli-2','Mehrauli',1,'2025-03-04 16:30:28','2025-03-04 16:30:28'),(7,2,'saket-2','Saket',1,'2025-03-04 16:33:52','2025-03-04 16:33:52'),(8,2,'vasant-vihar','Vasant Vihar',1,'2025-03-04 16:35:25','2025-03-04 16:35:25'),(9,2,'madangir-2','Madangir',1,'2025-03-04 16:38:14','2025-03-04 16:38:14'),(10,7,'sector-56','Sector 56',1,'2025-03-07 11:45:18','2025-03-07 11:45:18'),(11,5,'harinagar-2','Harinagar',1,'2025-03-07 11:46:55','2025-03-07 11:46:55'),(12,7,'sector-47','Sector 47',1,'2025-03-07 11:48:19','2025-03-07 11:48:19'),(13,8,'undefined-2','undefined',1,'2025-03-07 12:48:29','2025-03-07 12:48:29'),(14,7,'sector-105','Sector 105',1,'2025-03-07 13:01:50','2025-03-07 13:01:50'),(15,9,'mumbai-2','Mumbai',1,'2025-03-10 10:24:16','2025-03-10 10:24:16'),(16,9,'worli-2','Worli',1,'2025-03-10 10:27:30','2025-03-10 10:27:30');
/*!40000 ALTER TABLE `localities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `state_id` int NOT NULL,
  `locality` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_logos`
--

DROP TABLE IF EXISTS `media_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_logos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdn` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_logos`
--

LOCK TABLES `media_logos` WRITE;
/*!40000 ALTER TABLE `media_logos` DISABLE KEYS */;
INSERT INTO `media_logos` VALUES (1,'Sky News','media/1740485095.sky-news.webp',NULL,NULL,NULL,1,'2025-02-25 06:34:55','2025-02-25 06:37:53','2025-02-25 06:37:53'),(2,'test name1','media/1741338810.realty.webp',NULL,'test alt1',NULL,1,'2025-03-06 20:20:59','2025-03-07 16:31:37','2025-03-07 16:31:37'),(3,'Realty & More','media/1741338318.realty&more-logo-img-Photoroom.webp',NULL,'realty more logo',NULL,1,'2025-03-07 16:05:18','2025-03-07 16:31:51','2025-03-07 16:31:51'),(4,'test ness','media/1741338755.real_estate_fv3qfz.webp',NULL,'test ness',NULL,1,'2025-03-07 16:12:35','2025-03-07 16:13:36','2025-03-07 16:13:36'),(5,'Great Value Realty BUZZ Noida','media/1741340091.realty-buzz-img-Photoroom.webp',NULL,'GVR Media Coverage','https://www.realtybuzz.in/top-real-estate-companies-to-redefine-profitable-investments-in-2025/',1,'2025-03-07 16:34:51','2025-03-13 12:11:15',NULL),(6,'Property Times','media/1741340111.the-property-logo-img-Photoroom.webp',NULL,'Great Value The Property Times Noida','https://thepropertytimes.in/top-real-estate-companies-redefining-profitable-investments-in-2025/',1,'2025-03-07 16:35:11','2025-03-13 12:11:30',NULL),(7,'Great Value Your Bussiness Noida','media/1741340137.yourstory-Photoroom.webp',NULL,'GVR Media Coverage','https://yourstory.com/hindi/budget-2025-startup-ecosystem-entrepreneurs-founders-expectations-fm-nirmala-sitharaman',1,'2025-03-07 16:35:37','2025-03-13 12:11:57',NULL),(8,'Zee Business','media/1741340156.zee-business-img-Photoroom.webp',NULL,'Great Value Zee Bussiness Noida','https://www.zeebiz.com/hindi/economy/live-uapdates-budget-2025-fm-nirmala-sitharamans-speech-in-hindi-live-updates-india-aam-budget-new-income-tax-slabs-stock-market-education-railway-infra-defence-custom-duty-agriculture-sme-jobs-announcement-200300',1,'2025-03-07 16:35:56','2025-03-13 12:12:07',NULL),(9,'Business Today','media/1741340188.bt-logo-img-Photoroom.webp',NULL,'Great Value Bussiness Today Noida','https://bazaar.businesstoday.in/budget/story/budget-2025-income-tax-rule-what-did-the-expert-say-after-the-changes-in-tax-related-rules-in-budget-2025-1164739-2025-02-02',1,'2025-03-07 16:36:28','2025-03-13 12:12:18',NULL),(10,'Construction Week','media/1741340364.construction-week-img-Photoroom.webp',NULL,'Great Value Construction Week Noida','https://www.constructionweekonline.in/people/8-benefits-of-living-in-noidas-luxury-housing-developments',1,'2025-03-07 16:39:24','2025-03-13 12:12:32',NULL),(11,'Dainik jagran','media/1741340401.dainik-jagran-logo-img-Photoroom.webp',NULL,'Great Value Dainik jagran Noida','https://www.jagran.com/business/biz-home-buying-2025-dream-of-buying-a-home-come-true-in-2025-will-property-prices-drop-or-rise-details-here-23856776.html',1,'2025-03-07 16:40:01','2025-03-13 12:12:43',NULL),(12,'EPC World','media/1741340425.epc-world-img-Photoroom.webp',NULL,'Great Value EPC World Noida','https://www.epcworld.in/p/post/outlook-2025-evolving-consumer-preferences-will-shape-future-housing-projects',1,'2025-03-07 16:40:25','2025-03-13 12:12:55',NULL),(13,'ET Now','media/1741341434.et-2-logo-img-Photoroom.webp',NULL,'Great Value ET NOW Noida','https://www.etnownews.com/budget/budget-expectations-2025-real-estate-sector-property-players-seek-higher-pmay-funds-tax-rebates-gstreformandmore-article-117545376',1,'2025-03-07 16:57:14','2025-03-13 12:13:08',NULL),(14,'Economic Times','media/1741341452.et-logo-img-Photoroom.webp',NULL,'Great Value The Economic Time Noida','https://hindi.economictimes.com/budget/live-union-budget-2025-26-nirmala-sitharaman-budget-2005-speech-income-tax-slab-budget-2025-26-highlights-industry-and-market-demand/liveblog/117812842.cms#:~:tex',1,'2025-03-07 16:57:32','2025-03-13 12:13:19',NULL),(15,'Money Control','media/1741341468.money-control-logo-img-Photoroom.webp',NULL,'Great Value Money Control Noida','https://hindi.moneycontrol.com/budget/budget-2025-live-updates-fm-nirmala-sitharaman-speech-key-announcement-on-union-budget-india-liveblog-1954492.html',1,'2025-03-07 16:57:48','2025-03-13 12:13:34',NULL),(16,'Realty and More','media/1741341500.realty&more-logo-img-Photoroom (1).webp',NULL,'Great Value Realty & More Noida','https://www.youtube.com/watch?v=FWJru3tkoxY',1,'2025-03-07 16:58:20','2025-03-13 12:13:42',NULL);
/*!40000 ALTER TABLE `media_logos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_admins_table',1),(2,'2014_10_12_000000_create_users_table',1),(3,'2014_10_12_100000_create_password_reset_tokens_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2024_03_29_070314_create_amenities_table',1),(7,'2024_03_29_070314_create_ethos_table',1),(8,'2024_03_29_070314_create_infrastructure_table',1),(9,'2024_03_29_070314_create_timelines_table',1),(10,'2024_03_29_084331_create_states_table',1),(11,'2024_03_29_085734_create_countries_table',1),(12,'2024_03_29_093708_create_locations_table',1),(13,'2024_03_30_055017_create_cities_table',1),(14,'2024_03_30_060851_create_localities_table',1),(15,'2024_04_04_053657_create_categories_table',1),(16,'2024_04_08_074645_create_blog-categories_table',1),(17,'2024_04_08_103602_create_blogs_table',1),(18,'2024_04_08_123814_create_developers_table',1),(19,'2024_04_10_100603_create_sub_typologies_table',1),(20,'2024_04_10_100603_create_typologies_table',1),(21,'2024_04_10_113419_create_testimonials_table',1),(22,'2024_04_13_045721_create_project_sections_table',1),(23,'2024_04_15_122042_create_project_amenities_table',1),(24,'2024_04_15_122042_create_project_banner_table',1),(25,'2024_04_15_122042_create_project_floor_plans_table',1),(26,'2024_04_15_122042_create_project_gallery_table',1),(27,'2024_04_15_122042_create_project_pricing_table',1),(28,'2024_04_17_102433_create_category_typologies_table',1),(29,'2024_04_17_102433_create_typology_sub_typologies_table',1),(30,'2024_04_18_063450_create_page_sections_list_table',1),(31,'2024_04_18_063450_create_project_sections_list_table',1),(32,'2024_04_18_102935_create_projects_table',1),(33,'2024_04_23_092058_create_enquiries_table',1),(34,'2024_04_23_121304_create_banner_offers_table',1),(35,'2024_04_24_074740_create_project_faqs_table',1),(36,'2024_04_24_074740_create_project_higttlights_table',1),(37,'2024_04_25_073634_create_project_locations_table',1),(38,'2024_04_25_160632_add_logo_column_to_projects_table',1),(39,'2024_04_25_160632_add_primary_column_to_typologies_table',1),(40,'2024_05_01_064402_create_contacts_table',1),(41,'2024_05_01_084349_create_job_applications_query_table',1),(42,'2024_05_01_095938_create_job_applications_table',1),(43,'2024_05_02_071800_create_banner_contents_table',1),(44,'2024_05_02_093848_create_banner_sliders_table',1),(45,'2024_05_02_105843_create_project_location_advantage',1),(46,'2024_05_03_055323_add_brochure_in_projects_table',1),(47,'2024_05_03_055323_add_is_feature_projects_table',1),(48,'2024_05_03_055323_add_is_popular_in_developers_table',1),(49,'2024_05_03_055323_add_meta_in_projects_table ',1),(50,'2024_05_03_055323_add_slug_in_job_applications_table',1),(51,'2024_05_03_115233_create_platters_table',1),(52,'2024_05_04_064307_create_platter_banners_table',1),(53,'2024_05_08_041419_create_page_metas_table',1),(54,'2024_05_08_041737_create_pages_table',1),(55,'2024_11_07_064131_create_page_sections_table',1),(56,'2024_11_12_111420_create_project_specifications_table',1),(57,'2024_11_12_115841_create_project_specification_lists_table',1),(58,'2024_12_19_073256_add_more_column_floor_plan',2),(59,'2025_02_05_122435_create_verticals_table',3),(60,'2025_02_06_072440_create_teams_table',4),(61,'2025_02_06_125838_create_nri_corners_table',5),(62,'2025_02_08_054238_create_csr_communities_table',6),(63,'2025_02_08_063448_create_education_table',7),(64,'2025_02_08_071302_create_csr_galleries_table',8),(65,'2025_02_08_111736_create_loans_table',9),(66,'2025_02_18_064947_create_blogs_details_table',10),(67,'2025_02_18_113521_create_timeline_images_table',11),(68,'2025_02_19_101516_create_category_overviews_table',12),(69,'2025_03_04_094907_create_social_links_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdn` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'The Economic Times Hindi Budget','news/1740488172.anandam.webp',NULL,NULL,NULL,NULL,'',NULL,1,'2025-02-25 07:26:12','2025-02-28 17:40:59','2025-02-28 17:40:59'),(2,'test tiels','news/1740738881.2023-3.webp',NULL,'test alt',NULL,NULL,'logo',NULL,1,'2025-02-28 17:34:41','2025-02-28 17:41:01','2025-02-28 17:41:01'),(3,'test title','news/1740738921.gv-finance.webp',NULL,'test alt',NULL,NULL,'logo',NULL,1,'2025-02-28 17:35:21','2025-02-28 17:41:13','2025-02-28 17:41:13'),(4,'PNG','news/1741851529-phn-logo.png',NULL,'test alt',NULL,NULL,'logo',NULL,1,'2025-02-28 17:41:52','2025-03-13 14:01:00',NULL),(5,'JPG','news/1742212275-logo-colored.jpg',NULL,'jpg logo',NULL,NULL,'logo',NULL,1,'2025-02-28 17:42:12','2025-03-17 17:51:15',NULL),(6,'WEBP','news/1740739349.logo.webp',NULL,'webp logo',NULL,NULL,'logo',NULL,1,'2025-02-28 17:42:29','2025-02-28 17:42:29',NULL),(7,'Spokesperson Photo','news/1740740459.dummy.pdf',NULL,NULL,NULL,NULL,'docs',NULL,1,'2025-02-28 18:00:59','2025-02-28 18:00:59',NULL),(8,'Spokesperson Profile','news/1740740713.dummy.pdf',NULL,'Spokesperson Profile',NULL,NULL,'docs',NULL,1,'2025-02-28 18:05:13','2025-02-28 18:05:13',NULL),(9,'Company Profile','news/1740740724.dummy.pdf',NULL,'Company Profile',NULL,NULL,'docs',NULL,1,'2025-02-28 18:05:24','2025-02-28 18:05:24',NULL),(10,'test','news/1740741356.economics_times.webp',NULL,'logo','est',NULL,'news',NULL,1,'2025-02-28 18:15:56','2025-02-28 18:17:04','2025-02-28 18:17:04'),(11,'The Economic Times Hindi Budget','news/1740741412.economics_times.webp','news/1742296062-news1.jpg','Great Value Media Coverage Noida','https://hindi.economictimes.com/budget/live-union-budget-2025-26-nirmala-sitharaman-budget-2005-speech-income-tax-slab-budget-2025-26-highlights-industry-and-market-demand/liveblog/117812842.cms#:~:tex','2025-02-01','news','english',1,'2025-02-28 18:16:52','2025-03-18 17:07:42',NULL),(12,'The Economic Times Hindi Budget','news/1740741544.economics_times.webp',NULL,'The Economic Times Hindi Budget','The Economic Times Hindi Budget',NULL,'news',NULL,1,'2025-02-28 18:19:04','2025-02-28 18:19:11','2025-02-28 18:19:11'),(13,'Budget 2025 में टैक्सपेयर को मिली बड़ी राहत, बजट में एलान के बाद दिग्गजों ने दिया रिएक्शन','news/1740741920.business_today.webp','news/1742296087-news2.jpg','Great Value Media Coverage Noida','https://bazaar.businesstoday.in/budget/story/budget-2025-income-tax-rule-what-did-the-expert-say-after-the-changes-in-tax-related-rules-in-budget-2025-1164739-2025-02-02','2025-02-03','news','hindi',1,'2025-02-28 18:25:20','2025-03-18 17:08:07',NULL),(14,'Budget 2025 Highlights: GYAN के साथ मिडिल क्लास का भी ध्यान, बजट में किसे क्या मिला','news/1740742335.money_control.webp','news/1742296098-news3.jpg','Great Value Media Coverage Noida','https://hindi.moneycontrol.com/budget/budget-2025-live-updates-fm-nirmala-sitharaman-speech-key-announcement-on-union-budget-india-liveblog-1954492.html','2025-02-01','news','hindi',1,'2025-02-28 18:32:15','2025-03-18 17:08:18',NULL),(15,'8 benefits of living in Noida’s luxury housing developments','news/1740742381.construction_week.webp','news/1742296783-news7.jpg','Great Value Media Coverage Noida','https://www.constructionweekonline.in/people/8-benefits-of-living-in-noidas-luxury-housing-developments','2025-01-14','news','english',1,'2025-02-28 18:33:01','2025-03-18 17:19:43',NULL),(16,'Budget 2025 Expectations highlights: Sitharaman likely to cut income tax for individuals','news/1740742412.et_now.webp','news/1742296202-news5.jpg','Great Value Media Coverage Noida','https://www.etnownews.com/budget/budget-expectations-2025-real-estate-sector-property-players-seek-higher-pmay-funds-tax-rebates-gstreformandmore-article-117545376','2025-01-25','news','english',1,'2025-02-28 18:33:32','2025-03-18 17:10:02',NULL),(17,'Union Budget: सभी सेक्टर को है बजट से बड़ी उम्मीद, यहां जानें क्या है दिग्गजों की राय','news/1740742445.business_today.webp','news/1742296634-news2.jpg','Great Value Media Coverage Noida','https://bazaar.businesstoday.in/budget/story/union-budget-2025-budget-2025-expectation-industry-has-these-expectations-from-the-budget-1155597-2025-01-16','2025-01-23','news','hindi',1,'2025-02-28 18:34:05','2025-03-18 17:17:14',NULL),(18,'Budget 2025: स्टार्टअप इकोसिस्टम के दिग्गजों को बजट से क्या उम्मीदें?','news/1740742503.yourstory.webp','news/1742296237-news6.jpg','Great Value Media Coverage Noida','https://yourstory.com/hindi/budget-2025-startup-ecosystem-entrepreneurs-founders-expectations-fm-nirmala-sitharaman','2025-01-27','news','hindi',1,'2025-02-28 18:35:03','2025-03-18 17:10:37',NULL),(19,'test title1','news/1741332866.unit2-typeb.webp',NULL,'test alt1','test cdn1','2025-03-01','news','hindi',1,'2025-03-07 14:34:26','2025-03-07 14:48:50','2025-03-07 14:48:50'),(20,'8 benefits of living in Noida’s luxury housing  developments','news/1741336708.economics_times.webp','news/1742296312-news1.jpg','Great Value Media Coverage Noida','https://www.constructionweekonline.in/people/8-benefits-of-living-in-noidas-luxury-housing-developments','2025-01-14','news','english',1,'2025-03-07 15:38:28','2025-03-18 17:11:52',NULL),(21,'Outlook 2025: Evolving consumer preferences will shape future housing projects','news/1741337080.epc.webp','news/1742296695-news8.jpg','Great Value Media Coverage Noida','https://www.epcworld.in/p/post/outlook-2025-evolving-consumer-preferences-will-shape-future-housing-projects','2025-01-16','news','english',1,'2025-03-07 15:44:40','2025-03-18 17:18:15',NULL),(22,'Why Your Next Home Should Be In Noida','news/1741337143.realty.webp','news/1742296715-news9.jpg','Great Value Media Coverage Noida','https://www.rprealtyplus.com/interviews/why-your-next-home-should-be-in-noida-118484.html','2025-01-22','news','english',1,'2025-03-07 15:45:43','2025-03-18 17:18:35',NULL),(23,'2025 में क्या पूरा होगा घर खरीदने का सपना, Property Prices में कमी आएगी या उछाल?','news/1741337297.dainik jagran.webp','news/1742296738-news11.jpg','Great Value Media Coverage Noida','https://www.jagran.com/business/biz-home-buying-2025-dream-of-buying-a-home-come-true-in-2025-will-property-prices-drop-or-rise-details-here-23856776.html','2024-12-27','news','hindi',1,'2025-03-07 15:48:17','2025-03-18 17:18:58',NULL),(24,'Top Real Estate Companies Redefining Profitable Investments in 2025','news/1741337341.property times.webp','news/1742296750-news12.jpg','Great Value Media Coverage Noida','https://propertyhome.in/top-real-estate-companies-redefining-profitable-investments-2025/','2024-12-19','news','english',1,'2025-03-07 15:49:01','2025-03-18 17:19:10',NULL),(25,'Top Real  Estate Companies Redefining Profitable Investments in 2025','news/1741337552.realty buzz.webp','news/1742296769-news13.jpg','Great Value Media Coverage Noida','https://www.realtybuzz.in/top-real-estate-companies-to-redefine-profitable-investments-in-2025/','2024-12-20','news','english',1,'2025-03-07 15:52:32','2025-03-18 17:19:29',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_metas`
--

DROP TABLE IF EXISTS `page_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_metas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page` int NOT NULL,
  `meta_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_author` text COLLATE utf8mb4_unicode_ci,
  `head_data` longtext COLLATE utf8mb4_unicode_ci,
  `footer_data` longtext COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_metas`
--

LOCK TABLES `page_metas` WRITE;
/*!40000 ALTER TABLE `page_metas` DISABLE KEYS */;
INSERT INTO `page_metas` VALUES (1,1,'Great Value Realty | Your Trusted Real Estate Partner','Great Value realty, Great Value Sharanam Noida, Great Value Anandam Noida, Sector 107 Noida,  Great Value Anandam, Great Value Sharanam Sector 107 Noida, Best Casa Uday Delhi, Great Value Realty Vilasa, Best Sanctuary residential project sector 105','Great Value Realty brings you luxurious & affordable homes in NCR, Noida & Gurugram. Experience unmatched quality & trust in real estate.','Great Value Realty | Your Trusted Real Estate Partner','\"@context\": \"https://schema.org\",\n                        \"@type\": \"Organization\",\n                        \"name\": \"Great Value Realty\",\n                        \"alternateName\": \"GVR\",\n                        \"url\": \"https://greatvaluerealty.com/\",\n                        \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.png\",\n                        \"contactPoint\": [\n                            {\n                                \"@type\": \"ContactPoint\",\n                                \"telephone\": \"+91 7777079770\",\n                                \"contactType\": \"customer service\",\n                                \"areaServed\": \"IN\",\n                                \"availableLanguage\": \"en\"\n                            }\n                        ]','{JSON.stringify({\n                        \"@context\": \"https://schema.org\",\n                        \"@type\": \"RealEstateAgent\",\n                        \"@id\": \"RealEstateAgent\",\n                        \"actionableFeedbackPolicy\": \"https://greatvaluerealty.com/\",\n                        \"address\": \"DSC - 319, DLF South Court, Saket, New Delhi - 110017\",\n                        \"alternateName\": \"GVR\",\n                        \"description\": \"Real Estate Developer\",\n                        \"image\": \"https://greatvaluerealty.com/assets/frontend/images/logo.png\",\n                        \"keywords\": \"https://greatvaluerealty.com/\",\n                        \"knowsLanguage\": \"English\",\n                        \"legalName\": \"Great Value Realty\",\n                        \"location\": \"India\",\n                        \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.png\",\n                        \"longitude\": \"917777079770\"\n                    })}',1,'2025-03-10 16:48:21','2025-03-11 12:55:07'),(2,8,'Great Value Realty Tax Benefits | Maximize Savings on Your Property Investment','Great Value Realty tax benefits, real estate tax savings, home loan deductions, property tax incentives, investment tax benefits, real estate tax advantages','We can find you the perfect property & help you locate the home of your dreams.','Great Value Realty',NULL,NULL,1,'2025-03-10 17:18:45','2025-03-10 17:18:45'),(3,2,'Great Value Realty | About Us - Learn More About Our Real Estate Experts','Great Value Realty, about us, real estate experts, our team, real estate services, property professionals, real estate company, trusted real estate agents','Discover the story behind Great Value Realty and meet our team of experienced real estate professionals. Learn how we provide exceptional real estate services to help you make smart property investments.','Great Value Realty, about us, real estate experts, our team, real estate services, property professionals, real estate company, trusted real estate agents',NULL,NULL,1,'2025-03-10 17:37:30','2025-03-11 10:54:50'),(4,9,'Great Value Realty Area Converter | Convert Property Measurements Instantly','Great Value Realty area converter, property area conversion, land measurement calculator, square feet to acres, real estate measurement tool','Easily convert property area measurements with Great Value Realty Area Converter. Convert square feet, acres, meters, and more with accuracy and ease.','Great Value Realty Area Converter | Convert Property Measurements Instantly',NULL,NULL,1,'2025-03-10 17:39:23','2025-03-10 17:39:23'),(5,3,'Real Estate Blogs & Expert Insights | Great Value Realty','Great Value Realty blogs, real estate insights, property investment tips, real estate market trends, home buying advice, real estate news','Stay informed with the latest real estate blogs from Great Value Realty. Get expert insights, market trends, investment tips, and property advice to make smarter decisions.','Real Estate Blogs & Expert Insights | Great Value Realty',NULL,NULL,1,'2025-03-10 17:41:37','2025-03-10 17:41:37'),(6,5,'Careers at Great Value Realty | Join Our Real Estate Team','Great Value Realty careers, real estate jobs, property industry careers, real estate career opportunities, job openings at Great Value Realty','Explore exciting career opportunities at Great Value Realty. Join our team of real estate experts and build a successful career in the dynamic property industry. Apply today!','Careers at Great Value Realty | Join Our Real Estate Team',NULL,NULL,1,'2025-03-10 17:42:24','2025-03-10 17:42:24'),(7,18,'Great Value Realty Commercial Projects: Mall & Office Spaces','Great Value Realty commercial projects, business spaces, office spaces, retail hubs, commercial real estate, premium commercial properties','Discover premium Grand Value Realty Commercial Projects. Explore top business spaces, retail hubs, and office solutions for growth. Start today!','Great Value Realty Commercial Projects: Mall & Office Spaces',NULL,NULL,1,'2025-03-10 17:44:06','2025-03-19 17:23:52'),(8,4,'Contact Great Value Realty | Get in Touch with Us','Great Value Realty contact, real estate inquiries, get in touch with Great Value Realty, real estate support, property consultation, real estate customer service','Have questions or need assistance? Contact Great Value Realty today! Our team is ready to help with your real estate needs. Reach out via phone, email, or visit us.','Contact Great Value Realty | Get in Touch with Us',NULL,NULL,1,'2025-03-10 17:44:47','2025-03-10 17:44:47'),(9,6,'Great Value Realty ESG: Sustainability & Responsible Growth','Great Value Realty ESG, sustainability in real estate, responsible growth, ethical real estate practices, environmental social governance, corporate responsibility','Explore Grand Value Realty\'s ESG initiatives sustainability, ethical practices & community impact. Discover how we drive responsible growth today!','Great Value Realty ESG: Sustainability & Responsible Growth',NULL,NULL,1,'2025-03-10 17:45:22','2025-03-19 17:24:24'),(10,13,'Frequently Asked Questions | Great Value Realty - Real Estate Answers','Great Value realty, Anandam Sector 107 Noida, Great Value Anandam, Sector 107 Noida,Great Value Anandam Noida, Best Great Value Anandam\"','Great Value Realty residential projects, luxury homes, affordable homes, modern living, real estate properties, premium residences','Frequently Asked Questions | Great Value Realty - Real Estate Answers',NULL,NULL,1,'2025-03-10 17:46:17','2025-03-17 18:27:39'),(11,19,'Property Gallery | Explore Stunning Real Estate Images | Great Value Realty','real estate gallery, property images, luxury homes, Great Value Realty gallery, real estate photography, premium property visuals','Browse the Great Value Realty gallery to explore stunning real estate images. Discover luxurious properties, modern interiors, and breathtaking landscapes that define premium living.','Property Gallery | Explore Stunning Real Estate Images | Great Value Realty',NULL,NULL,1,'2025-03-10 17:48:02','2025-03-10 17:48:02'),(12,7,'Great Value Realty Home Loans | Easy Financing for Your Dream Home','Great Value Realty home loans, real estate financing, mortgage assistance, home loan options, property financing, easy home loans','Explore home loan options with Great Value Realty. Get expert guidance on financing solutions to make your dream home a reality with hassle-free loan assistance.','Great Value Realty Home Loans | Easy Financing for Your Dream Home',NULL,NULL,1,'2025-03-10 17:48:42','2025-03-10 17:48:42'),(13,20,'Real Estate News & Market Insights | Great Value Realty','Great value realty media center, real estate news, property market trends, real estate insights, Great Value Realty media, real estate updates, property investment news','Stay updated with the latest real estate news, market trends, and expert insights. Explore valuable resources to make informed property decisions with Great Value Realty.','Real Estate News & Market Insights | Great Value Realty',NULL,NULL,1,'2025-03-10 17:50:43','2025-03-10 17:50:43'),(14,11,'Great Value Realty NRI Corner | Exclusive Real Estate Solutions for NRIs','Great Value Realty NRI property, NRI real estate investment, buy property in India from abroad, real estate for NRIs, Indian property for NRIs','Explore NRI-specific real estate services at Great Value Realty. Get expert advice and resources tailored for Non-Resident Indians investing in India','Great Value Realty NRI Corner | Exclusive Real Estate Solutions for NRIs',NULL,NULL,1,'2025-03-10 17:51:28','2025-03-17 12:16:26'),(15,12,'NRI Real Estate Investment in India | Great Value Realty','Great Value Realty NRI investor, NRI property investment, buy property in India from abroad, real estate for NRIs, Indian property investment for NRIs','Great Value Realty offers expert guidance for NRIs looking to invest in Indian real estate. Explore lucrative investment options with trusted realty services.','NRI Real Estate Investment in India | Great Value Realty',NULL,NULL,1,'2025-03-10 17:52:36','2025-03-17 12:16:01'),(16,10,'Great Value Realty Property Investment | Secure Real Estate Opportunities','Great Value Realty property investment, real estate investment, best property investments, high ROI real estate, real estate opportunities','Invest wisely with Great Value Realty. Explore high-value property investment opportunities with expert guidance to maximize returns and secure your future.','Great Value Realty Property Investment | Secure Real Estate Opportunities',NULL,NULL,1,'2025-03-10 17:53:38','2025-03-10 17:53:38'),(17,16,'Great Value Realty Testimonials | Hear from Our Happy Clients','Great Value Realty testimonials, client reviews, real estate feedback, customer experiences, homebuyer testimonials, investor reviews','See what our satisfied clients say about Great Value Realty! Read testimonials from homeowners and investors who trust us for their real estate needs.','Great Value Realty Testimonials | Hear from Our Happy Clients',NULL,NULL,1,'2025-03-10 17:58:42','2025-03-10 17:58:42'),(18,14,'Great Value Realty EMI Calculator | Calculate Your Home Loan EMI Instantly','Great Value Realty EMI calculator, home loan EMI calculator, real estate loan calculator, mortgage EMI calculator, property loan calculator','Use Great Value Realty’s EMI Calculator to estimate your home loan EMIs instantly. Plan your real estate investment smartly with accurate and hassle-free calculations.','Great Value Realty EMI Calculator | Calculate Your Home Loan EMI Instantly',NULL,NULL,1,'2025-03-10 17:59:37','2025-03-10 17:59:37'),(19,17,'Great Value Realty Residential Projects: 3 & 4 Luxury Apartments in NCR','Great Value Realty residential projects, luxury homes, affordable homes, modern living, real estate properties, premium residences','Explore Grand Value Realty Residential Projects—luxury & comfortable homes for modern living. Find your dream home today!','Great Value Realty Residential Projects: 3 & 4 Luxury Apartments in NCR',NULL,NULL,1,'2025-03-10 18:00:11','2025-03-19 17:18:52');
/*!40000 ALTER TABLE `page_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_section_lists`
--

DROP TABLE IF EXISTS `page_section_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_section_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int NOT NULL,
  `page_section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_heading` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_alternative_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_section_lists`
--

LOCK TABLES `page_section_lists` WRITE;
/*!40000 ALTER TABLE `page_section_lists` DISABLE KEYS */;
INSERT INTO `page_section_lists` VALUES (1,2,'about-banner','page/page-sections/1740719778.about us banner image.webp','page/page-sections/1741761036.about_us_banner.jpg','Great Value Office building Noida','About Us',NULL,'At MVN, we are fired by an indomitable will to shape the future. We commenced our corporate journey in 1983 and have since evolved into a contemporary business entity with interests in education and real estate.\r\nOur first educational venture Modern Vidya Niketan School was conceived in 1983. It is today one of the most respected and acclaimed schools in its category. Several other institutions in the NCR region bear our name and are considered the ideal learning grounds for budding destinies. Not content to rest on our laurels, we are today forgoing ahead with strategic forays into urban infrastructure development, real estate and hospitality. We have identified prime locations for each of our projects and are convinced that these areas would be crucial to our resurgence and growth.','2025-02-20 00:42:45','2025-03-20 15:49:25','page/page-sections/1742464165_1741758392_about_banner_sm_webp','page/page-sections/1741758392.about_banner_sm.jpg'),(2,2,'about-overview',NULL,NULL,NULL,'Great Value Realty: Shaping Excellence Across Industries – From Quality Packaging to Premium Living,',NULL,'Established in 1970, Great Value Realty (GVR) began as a leader in the glassware industry, quickly gaining prominence in packaging by 1990. Built on a foundation of trust and exceptional value, GVR has consistently evolved to meet changing market demands while fostering enduring client relationships. In 2001, GVR expanded its portfolio into the food processing sector and advanced technology solutions, pioneering initiatives such as E-Gram Samiti, E-Check Posts, E-Land Records, and E-Water Systems. These advancements underscore GVR’s commitment to innovation and impactful solutions that drive progress. By 2009, GVR made a strategic foray into real estate, delivering landmark projects such as the Great Value Mall in Aligarh. The company’s residential ventures, including Sharanam, Anandam, Vilasa, Casa Uday, and Centuray 105, exemplify its dedication to quality, trust, and creating meaningful living experiences. With a vision for excellence and a commitment to shaping the future, GVR continues to forge strategic partnerships and develop pioneering solutions across industries, solidifying its reputation as a trusted leader in innovation and real estate.','2025-02-20 00:46:23','2025-03-10 17:29:30',NULL,NULL),(3,2,'about-mission',NULL,NULL,NULL,'Our Mission',NULL,'Our mission is to drive national progress and enrich lives by delivering world-class infrastructure and financial services. We are committed to building a future where innovation meets excellence, fostering economic growth while creating enduring value for our customers, communities.','2025-02-20 00:47:07','2025-03-10 17:36:52',NULL,NULL),(4,2,'about-vision','page/page-sections/1742298238.vision_and_mission.webp','page/page-sections/1742298238.vision_and_mission.jpg','Great Value Modern innovation Noida','Our Vision',NULL,'Our vision is to set new industry standards by delivering unparalleled quality through continuous innovation. We aspire to create unique, customer-focused solutions that redefine excellence, ensuring long-term value and lasting trust.','2025-02-20 00:48:01','2025-03-18 17:43:58',NULL,NULL),(5,2,'about-team',NULL,NULL,NULL,'OUR TEAM',NULL,'Built on trust, driven by value, and inspired by emotion, we are dedicated to crafting spaces that feel like home and investments that stand the test of time.','2025-02-20 00:48:45','2025-02-28 12:24:33',NULL,NULL),(6,2,'about-our-journey',NULL,NULL,NULL,'OUR JOURNEY',NULL,'undefined','2025-02-20 00:49:28','2025-02-28 12:36:06',NULL,NULL),(7,2,'about-our-verticals',NULL,NULL,NULL,'Our Verticals',NULL,'undefined','2025-02-20 00:49:48','2025-02-28 14:40:25',NULL,NULL),(8,11,'nri-corner-banner','page/page-sections/1740121970.nri-banner.webp','page/page-sections/1742282218.nri-banner.jpg','Great Value Real estate agent showing a luxury property Noida','Nri Corner',NULL,'null','2025-02-20 00:51:38','2025-03-21 11:15:29','page/page-sections/1742534129_nri-corner-mobile-banner_webp','page/page-sections/1742534129_nri-corner-mobile-banner_jpg'),(9,13,'faq-banner','page/page-sections/1740640999.faq-desktop-banner.webp','page/page-sections/1742286844.banner.jpg','Close-up of a business meeting','Faq',NULL,'null','2025-02-20 00:55:35','2025-03-21 11:23:06','page/page-sections/1742534586_faq-banner-img_webp','page/page-sections/1742534586_faq-banner-img_jpg'),(10,8,'tax-banner','page/page-sections/1740124802.tax_benifits.webp','page/page-sections/1741764801.tax_benefit_banner.jpg','Great Value Business and finance concept Noida','Tax Benefits',NULL,'null','2025-02-20 01:28:41','2025-03-17 14:42:36','page/page-sections/1741764801.tax_benefit_sm.webp','page/page-sections/1741764801.tax_benefit_sm.jpg'),(11,8,'tax-overview','page/page-sections/1740124815.overview.webp','page/page-sections/1742281317.overview.jpg','Great Value Modern home lifestyle Noida','Did you know that tax benefits can be availed after the construction of the house as the interest repaid during construction cannot be claimed as Pre-EMI interest on the apartment loan? Read below for more about the how you can save tax on your apartment loan.','Below are a few tips to help you catalog your deductions this year and may be utilize the same tips next year.','These days, more and more people are opting to purchase apartments and have their dream homes built in them rather than go for an apartment or villa with the same design. It is a myth that apartment loans do not offer as much tax benefits as home loans. Now that it is that time of the year when people go frantic – doing the eleventh-hour struggle to collect every one of those bills, receipts, deductions, income papers, bank statements, and more, let us check out the perks of owning an apartment. Yes, tax time is looming ahead. But during the rush hour, you might overlook a huge opportunity to save tax that owning an apartment or property can fetch you.','2025-02-20 01:30:58','2025-03-18 13:01:57',NULL,NULL),(12,7,'loan-banner','page/page-sections/1741373444.home-loan-banner.webp','page/page-sections/1741764432.home_loan_banner.jpg','Great Value Real estate investment concept Noida','Home Loan',NULL,'null','2025-02-20 02:24:01','2025-03-17 14:42:12','page/page-sections/1741764432.homeloan_sm.webp','page/page-sections/1741764432.homeloan_sm.jpg'),(13,7,'loan-overview',NULL,NULL,NULL,'Unlock the door to your dream home – with the perfect home loan!','Navigating home loans can feel overwhelming, but not with us by your side. Our team simplifies the process, providing personalized support, transparent terms, and hassle-free loan approvals. Let’s turn your homeownership dream into reality, because the right home deserves the right loan! Start your journey today and move one step closer to your perfect home.','Buying a home is one of life’s biggest milestones, and we’re here to make it effortless. With our tailored home loan options, competitive interest rates, and expert guidance, we ensure a seamless journey from application to approval. Whether you\'re a first-time buyer or upgrading to your dream home, we help you secure the best financing solution that fits your needs. No hidden fees, no complicated terms, just a smooth, stress-free experience.','2025-02-20 02:24:51','2025-03-08 18:54:50',NULL,NULL),(14,12,'nri-investor-banner','page/page-sections/1740122685.banner.webp','page/page-sections/1742284474.banner.jpg','Great Value Corporate success in real estate Noida','NRI investor',NULL,'undefined','2025-02-21 14:24:45','2025-03-21 11:16:33','page/page-sections/1742534193_nri-investor-mobile-banner_webp','page/page-sections/1742534193_nri-investor-mobile-banner_jpg'),(15,12,'nri-investor-overview','page/page-sections/1740122717.sideImg.webp','page/page-sections/1742284482.sideImg.jpg','Great Value Real estate projects Noida','Great Value Realty Welcomes NRI Investors',NULL,'For Great Value Realty, growth has always been at the heart of its identity, intertwined with a commitment to social responsibility. In recent times, India has emerged as an enticing opportunity for Non-Resident Indians (NRIs) seeking investment avenues, driven by the rise of innovative private integrated townships and robust infrastructure across cities and their satellite areas. As a result, investing in Indian real estate has yielded significant profitability.','2025-02-21 14:25:17','2025-03-18 13:54:42',NULL,NULL),(16,14,'emi-banner','page/page-sections/1740123021.emi_cal.webp','page/page-sections/1742286650.emi_cal.jpg','Great Value Financial growth and investment Noida','Emi Calculator',NULL,'null','2025-02-21 14:30:21','2025-03-21 11:20:55','page/page-sections/1742534455_EMI-Calculator-img_webp','page/page-sections/1742534455_EMI-Calculator-img_jpg'),(17,9,'area-converterbanner','page/page-sections/1740127623.banner.webp','page/page-sections/1741765004.area_converter.jpg','Great Value Residential and commercial buildings Noida','Area Converter',NULL,'null','2025-02-21 15:47:03','2025-03-18 13:49:45','page/page-sections/1741765004.area_converter_sm.webp','page/page-sections/1741765004.area_converter_sm.jpg'),(18,10,'investment-banner','page/page-sections/1740127666.property-investment.webp','page/page-sections/1741765611.propertyInvestment.jpg','Great Value financial growth Noida','Property Investment',NULL,'null','2025-02-21 15:47:46','2025-03-17 14:43:01','page/page-sections/1741765611.propertyInvestment_sm.webp','page/page-sections/1741765611.propertyInvestment_sm.jpg'),(19,5,'career-banner','page/page-sections/1740127721.career.webp','page/page-sections/1741763971.career_banner.jpg','Great Value business vision Noida','Career',NULL,'null','2025-02-21 15:48:41','2025-03-17 13:42:58','page/page-sections/1741763971.career_banner_sm.webp','page/page-sections/1741763971.career_banner_sm.jpg'),(20,5,'work-culture-banner','page/page-sections/1740127784.work-place-img-1.jpg',NULL,NULL,'Work Culture',NULL,'<p><span style=\"color: rgba(51, 51, 51, 0.67);\">At Great Value, we foster a dynamic and inclusive work culture that values innovation, collaboration, and personal growth. Our team thrives in an environment where diverse perspectives are celebrated, and every member is encouraged to contribute ideas. We are committed to providing opportunities for professional development, ensuring our employees feel valued and empowered to reach their full potential.</span></p>','2025-02-21 15:49:44','2025-02-21 15:49:44',NULL,NULL),(21,3,'blogs-banner','page/page-sections/1740127856.banner.webp','page/page-sections/1741762016.blog_banner_image.jpg','Great Value browsing real estate listings Noida','Blog',NULL,'null','2025-02-21 15:50:56','2025-03-17 13:40:03','page/page-sections/1741763018.blog_banner_sm.webp','page/page-sections/1741762016.blog_banner_sm.jpg'),(22,4,'contact-banner','page/page-sections/1741352874.contact-us-img.webp','page/page-sections/1741763131.contact_us_bg.jpg','Great Value Technology and productivity concept Noida','Contact Us',NULL,'null','2025-02-21 17:16:22','2025-03-17 13:49:15','page/page-sections/1741763131.contact_us_sm.webp','page/page-sections/1741763131.contact_us_sm.jpg'),(23,20,'media-banner','page/page-sections/1740734588.media-centre-thumbnail.webp','page/page-sections/1742294225.hero.jpg','Great Value Business professional Noida','Media Centre',NULL,'undefined','2025-02-26 13:16:10','2025-03-21 10:46:21','page/page-sections/1742532381_23_webp','page/page-sections/1742532381_23_jpg'),(24,17,'residential-banner','page/page-sections/1742357672.1741689.webp','page/page-sections/1742456992_t4t4_jpg','Great Value High-rise residential Buildings Noida','residential',NULL,'undefined','2025-02-26 13:59:40','2025-03-20 13:49:52','page/page-sections/1742456992_ret_webp','page/page-sections/1742456992_ret_jpg'),(25,17,'residential-overview',NULL,NULL,NULL,'Where Luxury Meets Comfort, Life Flourishes Brightly',NULL,'Discover residences that seamlessly blend luxury with comfort, offering serene sanctuaries tailored to your lifestyle.','2025-02-26 14:00:29','2025-03-07 17:03:48',NULL,NULL),(26,6,'esg-banner','page/page-sections/1740657390.esg-banner.webp','page/page-sections/1741764116.esg_banner.jpg','Great Value  joyful face Noida','ESG',NULL,'undefined','2025-02-27 18:50:18','2025-03-17 12:18:05','page/page-sections/1741764116.esg_banner_sm.webp','page/page-sections/1741764116.esg_banner_sm.jpg'),(29,6,'esg-overview',NULL,NULL,NULL,'Building a Future Where Sustainability, Community, and Integrity Thrive',NULL,'At Great Value Realty, we create spaces that go beyond walls and structures to shape a world where progress is rooted in responsibility. Our commitment to environmental stewardship ensures that every project embraces sustainable practices for a healthier planet. By investing in social initiatives, we empower communities through education, healthcare, and inclusivity. Strong governance policies drive our ethical foundation, fostering transparency, accountability, and long-term trust. Every development reflects a vision where business growth, community well-being, and environmental consciousness come together to build a future that is both dynamic and sustainable.','2025-02-27 18:57:14','2025-03-08 17:17:58',NULL,NULL),(30,6,'esg-social',NULL,NULL,NULL,'Social',NULL,'At Great Value Realty, we believe in building not just homes, but also thriving communities. Our commitment is to drive our social initiatives, ensuring access to healthcare, education, and skill development for all.','2025-02-27 19:04:11','2025-03-10 17:10:43',NULL,NULL),(31,6,'esg-environment-center',NULL,NULL,NULL,'ENVIRONMENT',NULL,'At Great Value Realty, sustainability is at the core of our vision. With trust, value, and emotion as our pillars, eco-friendly practices are integrated to build healthier, greener, and more sustainable communities.','2025-02-27 19:04:50','2025-02-27 19:04:50',NULL,NULL),(32,6,'esg-governance-center',NULL,NULL,NULL,'GOVERNANCE',NULL,'At Great Value Realty, we prioritize ethical business practices, regulatory compliance, and transparent leadership. Our governance framework is built on accountability, integrity, and responsible decision-making, ensuring long-term success and stakeholder confidence.','2025-02-27 19:05:06','2025-02-27 19:05:06',NULL,NULL),(33,20,'media-overview',NULL,NULL,NULL,'Making Headlines, Sharing Stories, Showcasing Impact',NULL,'The Media Section is where Great Value Realty’s vision meets the spotlight. From press releases to industry features, online highlights to on-ground events, every update captures our journey of innovation and impact. Stay tuned as we build, transform, and make headlines.','2025-02-28 16:23:37','2025-02-28 16:23:37',NULL,NULL),(34,20,'media-center',NULL,NULL,NULL,'PRESS CENTRE','document',NULL,'2025-02-28 16:24:02','2025-02-28 16:24:02',NULL,NULL),(35,1,'home-about',NULL,NULL,NULL,'Creating A Legacy Of True Abundance','At Great Value Realty, we create more than just homes—we cultivate trust, deliver unmatched value, and craft lasting experiences. Since our inception in 1970, the Great Value Group has transformed industries, managing assets exceeding ₹3000 crores. Guided by a vision rooted in innovation, integrity, and ambition, we are dedicated to building timeless excellence, enriching lives, and shaping a brighter future.','undefined','2025-03-01 14:51:12','2025-03-01 15:11:07',NULL,NULL),(36,1,'our-projects',NULL,NULL,NULL,'EXplore Properties',NULL,'undefined','2025-03-01 14:57:24','2025-03-01 15:54:02',NULL,NULL),(37,1,'our-verticals',NULL,NULL,NULL,'Other Verticals',NULL,'undefined','2025-03-01 14:57:31','2025-03-06 16:09:25',NULL,NULL),(38,1,'home-testimonial',NULL,NULL,NULL,'testimonials',NULL,'undefined','2025-03-01 14:57:39','2025-03-01 16:06:36',NULL,NULL),(39,1,'home-media',NULL,NULL,NULL,'Our media coverage',NULL,'undefined','2025-03-01 14:57:46','2025-03-01 16:11:17',NULL,NULL),(40,1,'home-blogs',NULL,NULL,NULL,'Discover Insights',NULL,'undefined','2025-03-01 14:57:52','2025-03-01 16:15:37',NULL,NULL),(41,16,'testimonials-banner','page/page-sections/1740905606.testimonials_banner.webp','page/page-sections/1742534374_1740905606_testimonials_banner_jpg','Great Value Togetherness and love Noida','Testimonials',NULL,'undefined','2025-03-02 15:53:26','2025-03-21 11:19:34','page/page-sections/1742534286_testimonials-mobile-banner_webp','page/page-sections/1742534286_testimonials-mobile-banner_jpg'),(42,16,'testimonials-overview',NULL,NULL,NULL,'Voices of Trust, Stories of Excellence, Legacies Built Together Introduction',NULL,'At Great Value Realty, every home, office, and commercial space is more than just a structure—it is a milestone in someone’s journey. Our Testimonials Section brings to life the experiences of those who have found success, comfort, and growth with us. From homeowners to businesses, every story is a testament to our commitment to quality, integrity, and lasting relationships. Hear firsthand how we turn visions into reality and spaces into legacies.','2025-03-02 15:53:52','2025-03-02 15:53:52',NULL,NULL),(43,19,'gallery-banner','page/page-sections/1740976462.hero.webp','page/page-sections/1742532993_1740976462_hero_jpg','Great Value Modern building Noida','Gallery Banner',NULL,'undefined','2025-03-03 11:34:22','2025-03-21 10:59:49','page/page-sections/1742533189_gallery-page-mobile-banner_webp','page/page-sections/1742533189_gallery-page-mobile-banner_jpg'),(44,19,'gallery-overview',NULL,NULL,NULL,'Moments Captured, Excellence Framed, Legacies in Focus',NULL,NULL,'2025-03-03 11:34:33','2025-03-03 11:34:33',NULL,NULL),(45,18,'commercial-banner','page/page-sections/1742470220_4344_webp','page/page-sections/1742470220_342_jpg','Great Value Modern industrial Building Noida','Commercial Banner',NULL,'undefined','2025-03-03 13:41:05','2025-03-20 17:31:48','page/page-sections/1742470308_mobile_webp','page/page-sections/1742470308_mobile_jpg'),(46,18,'commercial-overview',NULL,NULL,NULL,'Empowering Businesses with Future-Ready Commercial Spaces',NULL,'At Great Value Realty, we believe that commercial real estate is more than just infrastructure, it’s about creating dynamic spaces that drive business success, enhance visibility, and provide sustainable growth. Whether its high-end designer retail stores, thriving shopping malls, premium corporate offices, or industrial warehouses, each of our developments is crafted to meet the evolving needs of businesses. With strategic locations, state-of-the-art infrastructure, and a deep understanding of market demands, we deliver exceptional commercial spaces that offer both functionality and long-term value.','2025-03-03 13:41:50','2025-03-12 11:50:43',NULL,NULL),(47,5,'career-overview',NULL,NULL,NULL,'Build Your Future, Shape the Skyline, Grow with Us',NULL,'At Great Value Realty, careers are more than just jobs—they are journeys of growth, innovation, and impact. We foster a culture where expertise meets passion, collaboration fuels success, and purpose drives progress. Whether you are shaping skylines, redefining customer experiences, or pioneering sustainable developments, here, you don’t just work—you create, inspire, and lead.','2025-03-05 18:41:24','2025-03-06 11:35:52',NULL,NULL),(48,5,'career-work-values',NULL,NULL,NULL,'Core Work values',NULL,NULL,'2025-03-05 19:16:00','2025-03-05 19:16:00',NULL,NULL),(49,10,'investment-overview',NULL,NULL,NULL,'Conclusion',NULL,'The upward trajectory of India\'s real estate sector, particularly in regions like Noida within the Delhi NCR, presents lucrative opportunities for investors. Factors such as escalating property prices, burgeoning demand in the luxury segment, and continuous infrastructure advancements contribute to Noida\'s prominence as a preferred investment hub. As the market evolves, stakeholders are advised to stay informed and consider strategic investments to capitalize on the region\'s growth potential.','2025-03-07 12:51:39','2025-03-07 12:51:39',NULL,NULL),(50,21,'gvlip-banner','page/page-sections/1741600374.1741341421.gvlip_banner.webp','page/page-sections/1742464552_1741600374_1741341421_gvlip_banner_jpg','Great Value Industrial warehouse complex Noida','Gv Lip Banner',NULL,'undefined','2025-03-07 16:57:01','2025-03-20 15:55:52',NULL,NULL),(51,21,'gvlip-intro','page/page-sections/1741341475.logo.png','page/page-sections/1742465670_1741341475_logo_png','Great Value Realty Logo','logistics & industrial park',NULL,'undefined','2025-03-07 16:57:55','2025-03-20 16:14:30',NULL,NULL),(52,21,'gvlip-overview',NULL,NULL,NULL,'An overview of GREAT VALUE LOGISTICS & INDUSTRIAL PARK',NULL,NULL,'2025-03-07 16:58:04','2025-03-07 16:58:04',NULL,NULL),(53,21,'gvlip-clients',NULL,NULL,NULL,'CLIENTS OF GVLIP',NULL,NULL,'2025-03-07 16:58:23','2025-03-07 16:58:23',NULL,NULL),(54,21,'gvlip-welcome',NULL,NULL,NULL,'We warmly welcome you to embrace the opportunities that await at GVLIP!','270,201+ Sq. Mt Plot Area',NULL,'2025-03-07 16:58:40','2025-03-07 16:58:40',NULL,NULL),(55,21,'gvlip-form',NULL,NULL,NULL,'Lease with Us and Expand Your Horizons in the Industrial and Logistics Landscape!',NULL,NULL,'2025-03-07 16:58:52','2025-03-07 16:58:52',NULL,NULL),(56,21,'gvlip-industries',NULL,NULL,NULL,'INDUSTRIES GVLIP IS SUITABLE FOR',NULL,NULL,'2025-03-07 16:58:58','2025-03-07 16:58:58',NULL,NULL),(57,21,'gvlip-group','page/page-sections/1742288329.1741341613.allegacy.webp','page/page-sections/1742465628_1742288329_1741341613_allegacy_jpg','Great Value Business agreement Greater Noida','Great Value Group - A legacy spanning 50+ years!',NULL,'Significant expertise and focus on Real Estate, leveraging a well-capitalized balance sheet and strategic investment approach..Committed to delivering top-tier risk-adjusted returns in the real estate sector.Driven by innovation, integrity, and excellence, positioning Great Value Group for sustained growth and industry leadership.Dedicated to delivering exceptional value and results to clients across the nation.','2025-03-07 17:00:13','2025-03-20 16:13:48',NULL,NULL),(58,21,'gvlip-approvals','page/page-sections/1742288302.1741341725.approval.webp','page/page-sections/1742465622_1742288302_1741341725_approval_jpg','Great Value Warehouse worker Greater Noida','All approvals from GNIDA – fully compliant The GVLIP difference: unmatched advantages setting us apart from other industrial parks!','All approvals from GNIDA – fully compliant','Located on main Udyog Vihar road with 5 km from Pari ChowkOne of its kind campus with ready to move in facility availableOur sprawling complex offers ample room to accommodate future expansion seamlessly.Advanced security features: 24-hour surveillance, Fire Fighting System, and external CCTV coverage.Robust infrastructure with heavy-duty RCC roads','2025-03-07 17:02:05','2025-03-20 16:13:42',NULL,NULL),(59,21,'gvlip-committed',NULL,NULL,NULL,'Committed to Sustainability, we prioritize Environmental Protection',NULL,NULL,'2025-03-07 17:02:13','2025-03-07 17:02:13',NULL,NULL),(60,21,'gvlip-faq',NULL,NULL,NULL,'Our 67-acre complex offers 2 million sq. ft. of modern space, serving industries with unmatched efficiency!',NULL,NULL,'2025-03-07 17:02:23','2025-03-07 17:02:23',NULL,NULL),(61,21,'gvlip-advantage','page/page-sections/1742288271.1741673746.factory-2.webp','page/page-sections/1742465611_1742288271_1741673746_factory-2_jpg','Great Value Modern warehouse Greater Noida','Caterpillar Chooses GVLIP for Cutting-Edge Facility!',NULL,'Caterpillar has chosen to lease an unparalleled PEB shed at GVLIP, covering an impressive 45000 sq.ft with a soaring height of 70 feet!','2025-03-07 17:04:16','2025-03-20 16:13:31',NULL,NULL),(62,21,'gvlip-gallery',NULL,NULL,NULL,'A Glimpse of our Industrial & Warehousing Space',NULL,NULL,'2025-03-07 17:06:53','2025-03-07 17:06:53',NULL,NULL),(63,21,'gvlip-location','page/page-sections/1742288145.1742284110.plan-1.webp','page/page-sections/1742465587_1742288145_1742284110_plan-1_jpg','Great Value Site Plan Greater Noida','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2926.4888529936106!2d77.48301797549597!3d28.500379175737173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cea309132057d%3A0xdd28a710e7766b80!2sGREATVALUE%20LOGISTICS%20%26%20INDUSTRIAL%20PARK!5e1!3m2!1sen!2sin!4v1742283429946!5m2!1sen!2sin','Where Space Meets Opportunity','undefined','2025-03-07 17:07:51','2025-03-20 16:13:07',NULL,NULL),(64,4,'contact-address',NULL,NULL,NULL,'DSC - 319, DLF South Court, Saket New Delhi - 110017','GreatValue Projects India Ltd. GH-02, Sec- 107 Noida, U.P.','https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d138884.71893974478!2d77.361044!3d28.540407!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1741352914105!5m2!1sen!2sin','2025-03-07 20:08:50','2025-03-07 20:20:34',NULL,NULL),(65,4,'contact-get-touch',NULL,NULL,NULL,'marketing@greatvaluerealty.in','7777079770','undefined','2025-03-07 20:09:04','2025-03-07 20:23:06',NULL,NULL),(66,1,'home-banner','page/page-sections/1741688554.Vdolap.mp4',NULL,'Home Page Video Alt','Home Page',NULL,'undefined','2025-03-08 13:56:41','2025-03-11 17:14:55','page/page-sections/1741691695.vdoMb.mp4',NULL),(67,18,'commercial-sizes',NULL,NULL,NULL,'2 million sq ft','5 million sq ft',NULL,'2025-03-10 16:03:30','2025-03-10 16:03:30',NULL,NULL),(68,21,'gvlip-deliver','page/page-sections/1742288239.1741673585.gallery-1.webp','page/page-sections/1742465603_1742288239_1741673585_gallery-1_jpg','Great Value Modern industrial building Greater Noida','GVLIP Delivers Samsung\'s India\'s Largest BTS Warehouse',NULL,'GVLIP offers high-end infrastructure, hi-tech facilities, and 24×7 support availability, making it a prime choice for businesses seeking a fully integrated property solution.','2025-03-11 12:13:05','2025-03-20 16:13:23',NULL,NULL),(69,13,'faq-overview',NULL,NULL,NULL,'Frequently Asked Questions',NULL,NULL,'2025-03-12 16:19:43','2025-03-12 16:19:43',NULL,NULL),(70,21,'gvlip-certificate','page/page-sections/1742288200.1742283065.certification.webp','page/page-sections/1742465594_1742288200_1742283065_certification_jpg','Great Value Business Leader Greater Noida','GNIDA Approved Facility,MSME Registered,GST Registered,FIRE NOC Approved',NULL,'undefined','2025-03-18 13:31:05','2025-03-20 16:13:14',NULL,NULL);
/*!40000 ALTER TABLE `page_section_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_sections`
--

DROP TABLE IF EXISTS `page_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fields_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `page_type_id` int NOT NULL,
  `section_permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `seq` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_sections`
--

LOCK TABLES `page_sections` WRITE;
/*!40000 ALTER TABLE `page_sections` DISABLE KEYS */;
INSERT INTO `page_sections` VALUES (1,'{\"heading\":\"Desktop Video Url\",\"sub_heading\":\"Mobile Video Url\",\"image\":\"Video\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Video\",\"mobile_file\":\"Mobile Video\",\"mobile_alternative_file\":\"Mobile Alternative Video\"}','home-banner',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\",\"mobile_file\":\"false\",\"alternative_image\":\"false\",\"mobile_alternative_file\":\"false\"}','Banner video','1','1',NULL,NULL),(2,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Short Description\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','home-about',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','About Us','1','1',NULL,NULL),(3,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','our-projects',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Our Projects','1','1',NULL,NULL),(4,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','our-verticals',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Other verticals','1','1',NULL,NULL),(5,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','home-testimonial',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Our  Testimonial','1','1',NULL,NULL),(6,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','home-media',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"fasle\",\"heading\":\"true\"}',' Our media coverage','1','1',NULL,NULL),(7,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','home-blogs',1,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Blog','1','1',NULL,NULL),(8,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','about-banner',2,'{\"description\":\"fasle\",\"image\":\"true\",\"sub_heading\":\"fasle\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Banner','1','1',NULL,NULL),(9,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','about-overview',2,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(10,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','about-mission',2,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','mission','1','1',NULL,NULL),(11,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','about-vision',2,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','vision','1','1',NULL,NULL),(12,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','about-team',2,'{\"description\":\"true\",\"image\":\"fasle\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Team','1','1',NULL,NULL),(13,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','about-our-journey',2,'{\"description\":\"fasle\",\"image\":\"fsale\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Our Journey','1','1',NULL,NULL),(14,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','about-our-verticals',2,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Our Verticals','1','1',NULL,NULL),(15,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','blogs-banner',3,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(16,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','contact-banner',4,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(17,'{\"heading\":\"Corporate Address\",\"sub_heading\":\"Noida Site Address\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Iframe Url\"}','contact-address',4,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Address','1','1',NULL,NULL),(18,'{\"heading\":\"Email\",\"sub_heading\":\"Phone Number\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','contact-get-touch',4,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Get In Touch','1','1',NULL,NULL),(19,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','career-banner',5,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(20,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','career-overview',5,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(21,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','career-work-culture',5,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','work culture','1','1',NULL,NULL),(22,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','career-work-values',5,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Work values','1','1',NULL,NULL),(23,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','esg-banner',6,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Banner','1','1',NULL,NULL),(24,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','esg-overview',6,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','overview','1','1',NULL,NULL),(25,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','esg-social',6,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','social','1','1',NULL,NULL),(26,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Title\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Short Description\"}','esg-environment-center',6,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Environment Center','1','1',NULL,NULL),(27,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Title\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Short Description\"}','esg-governance-center',6,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Governance Center','1','1',NULL,NULL),(28,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','loan-banner',7,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(29,'{\"heading\":\"Title\",\"sub_heading\":\"short Description\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','loan-overview',7,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','overview','1','1',NULL,NULL),(30,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','tax-banner',8,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(31,'{\"heading\":\"Heading\",\"sub_heading\":\"Short Description\",\"image\":\"Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','tax-overview',8,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"true\",\"heading\":\"true\"}','overview','1','1',NULL,NULL),(32,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','area-converterbanner',9,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(33,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','investment-banner',10,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(34,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','investment-overview',10,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(35,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','nri-corner-banner',11,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(36,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','nri-investor-banner',12,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(37,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','nri-investor-overview',12,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','overview','1','1',NULL,NULL),(38,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','faq-banner',13,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(39,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','faq-overview',13,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\",\"mobile_file\":\"false\",\"alternative_image\":\"false\",\"mobile_alternative_file\":\"false\"}','Overview','1','1',NULL,NULL),(40,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','emi-banner',14,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(41,'{\"heading\":\"Section Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','blog-details',15,'{\"description\":\"true\",\"image\":\"true\",\"sub_heading\":\"true\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(42,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','testimonials-banner',16,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','banner','1','1',NULL,NULL),(43,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','testimonials-overview',16,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','overview','1','1',NULL,NULL),(44,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','residential-banner',17,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Banner','1','1',NULL,NULL),(45,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','residential-overview',17,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(46,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','commercial-banner',18,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Banner','1','1',NULL,NULL),(47,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','commercial-overview',18,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(48,'{\"heading\":\"Existing Area\",\"sub_heading\":\"Expansion Area\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','commercial-sizes',18,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Area','1','1',NULL,NULL),(49,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','gallery-banner',19,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Banner','1','1',NULL,NULL),(50,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gallery-overview',19,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(51,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gallery-work-culture',19,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Culture Heading','1','1',NULL,NULL),(52,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gallery-project-images',19,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Gallery Heading','1','1',NULL,NULL),(53,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','media-banner',20,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Overview','1','1',NULL,NULL),(54,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','media-overview',20,'{\"description\":\"true\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(55,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','media-center',20,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Press Center','1','1',NULL,NULL),(56,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\",\"alternative_image\":\"Alternative Image\",\"mobile_file\":\"Mobile Image\",\"mobile_alternative_file\":\"Mobile Alternative Image\"}','gvlip-banner',21,'{\"description\":\"false\",\"image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"false\",\"mobile_file\":\"true\",\"alternative_image\":\"true\",\"mobile_alternative_file\":\"true\"}','Banner','1','1',NULL,NULL),(57,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Logo\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-intro',21,'{\"description\":\"false\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Intro','1','1',NULL,NULL),(58,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-overview',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Overview','1','1',NULL,NULL),(59,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-clients',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Clients','1','1',NULL,NULL),(60,'{\"heading\":\"Heading\",\"sub_heading\":\"Area\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-welcome',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Welcome Section','1','1',NULL,NULL),(61,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-form',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Form','1','1',NULL,NULL),(62,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-industries',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Industries','1','1',NULL,NULL),(63,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-group',21,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','GVR Group','1','1',NULL,NULL),(64,'{\"heading\":\"Heading\",\"sub_heading\":\"Sub Heading\",\"image\":\"Banner Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-approvals',21,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"true\",\"heading\":\"true\"}','GVR Group','1','1',NULL,NULL),(65,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-committed',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Committed','1','1',NULL,NULL),(66,'{\"heading\":\"Heading\",\"sub_heading\":\"Section Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-faq',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','FAQ','1','1',NULL,NULL),(67,'{\"heading\":\"Heading\",\"sub_heading\":\"Sub Heading\",\"image\":\"Banner Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-advantage',21,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Advantege Section','1','1',NULL,NULL),(68,'{\"heading\":\"Heading\",\"sub_heading\":\"Sub Heading\",\"image\":\"Banner Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-deliver',21,'{\"description\":\"true\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Deliver Section','1','1',NULL,NULL),(69,'{\"heading\":\"Heading\",\"sub_heading\":\"Sub Heading\",\"image\":\"Banner Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-gallery',21,'{\"description\":\"false\",\"image\":\"false\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Gallerys','1','1',NULL,NULL),(70,'{\"heading\":\"Points with Comma seprated\",\"sub_heading\":\"Sub Heading\",\"image\":\"Banner Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-certificate',21,'{\"description\":\"false\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"false\",\"heading\":\"true\"}','Certificate','1','1',NULL,NULL),(71,'{\"heading\":\"Iframe URL\",\"sub_heading\":\"Heading\",\"image\":\"Banner Image\",\"alternative_image\":\"Alternative Image\",\"alt\":\"Alt text\",\"description\":\"Description\"}','gvlip-location',21,'{\"description\":\"false\",\"image\":\"true\",\"alternative_image\":\"true\",\"sub_heading\":\"true\",\"heading\":\"true\"}','Location Meets','1','1',NULL,NULL);
/*!40000 ALTER TABLE `page_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home Page',NULL,NULL,NULL),(2,'About Page',NULL,NULL,NULL),(3,'Blog',NULL,NULL,NULL),(4,'Contact us',NULL,NULL,NULL),(5,'Career',NULL,NULL,NULL),(6,'ESG',NULL,NULL,NULL),(7,'Home Loans',NULL,NULL,NULL),(8,'Tax Benefits',NULL,NULL,NULL),(9,'Area Converter',NULL,NULL,NULL),(10,'Property Investment',NULL,NULL,NULL),(11,'NRI Corner',NULL,NULL,NULL),(12,'NRI Investors',NULL,NULL,NULL),(13,'Faq',NULL,NULL,NULL),(14,'EMI Calculator',NULL,NULL,NULL),(15,'Blog Details',NULL,NULL,NULL),(16,'Testimonials',NULL,NULL,NULL),(17,'Residential','platter',NULL,NULL),(18,'Commercial','platter',NULL,NULL),(19,'Gallery',NULL,NULL,NULL),(20,'Media',NULL,NULL,NULL),(21,'gvlip',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_faqs`
--

DROP TABLE IF EXISTS `pages_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('faq','nri-corner','tax-benefits','gvlip-faq') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'faq',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_faqs`
--

LOCK TABLES `pages_faqs` WRITE;
/*!40000 ALTER TABLE `pages_faqs` DISABLE KEYS */;
INSERT INTO `pages_faqs` VALUES (3,'Deduction in interest:','The national taxation code permits homeowners (or apartment owners who bought the same with the intention to construct a house in it) a sizable reduction in the loan interest rate from their tax bonuses. For most property owners, this is a great deal since interest disbursements can be the biggest part of your loan settlement in the initial years of buying an apartment. Reduce interest for pre-construction: While a discount in interest rates can be claimed at the beginning of the financial year in which the construction will be done, you may also claim pre-construction interest from the same year, which will be given to you in easy installments. Nevertheless, you cannot have a deduction of more than Rs.2 lakh if the property is occupied by you and your family. Deduction Under Section 80C: The part of your EMI which pays towards the principal sum is entitled to be claimed under Section 80-C of the Indian Income Tax Act. You may recapitulate the outgo for the past year towards principal and file a claim for it. A sum of up to INR 1.5 lakhs can be claimed this way. In addition to the reduction permitted on principal settlement, that made as stamp duty and registration fees, are also allowed to be claimed as per the IT Act, Section 80C. But these can be claimed only in the same year. Deductions under Section 24: Under Section 24 of the IT Act, you can claim tax benefits of up to Rs.2 lakh. However, you must convert the apartment loan to a regular home loan to avail the benefits. The process to convert an apartment loan to a regular home loan is simple and can be done once the construction has been completed.','tax-benefits',1,'2025-02-07 05:36:35','2025-02-07 05:36:35'),(6,'What is freehold property?','Free hold property means the property which is free from all encumbrances and the owner of the property is entilted to deal with the same wiithout any restrictions. There are not limitations, permissions required from any authority to deal with / develop the propety. The ownership is full and unconditional with no tenancy / leasehold / easementay rights on any part of the property.','faq',1,'2025-02-27 14:58:15','2025-02-27 14:58:15'),(7,'What are the costs involved in buying a property?','Apart from the purchase price, additional costs may include stamp duty, registration charges, legal fees, brokerage fees (if applicable), and maintenance charges. It is essential to factor in these costs when budgeting for your property purchase.','faq',1,'2025-02-27 14:58:49','2025-02-27 14:58:49'),(8,'How do I check the credibility of a real estate developer?','Before investing in a property developed by a real estate developer, research their track record, reputation, completed projects, and customer reviews. It\'s also advisable to verify their credentials, certifications, and compliance with regulatory authorities.','faq',1,'2025-02-27 14:59:09','2025-02-27 14:59:09'),(9,'What are the key factors to consider when choosing a location for buying a property?','Factors to consider include proximity to essential amenities such as schools, hospitals, markets, and transportation hubs, as well as factors like safety, infrastructure development, future growth prospects, and resale value.','faq',1,'2025-02-27 14:59:41','2025-02-27 14:59:41'),(10,'What are the tax implications of owning a property?','Property owners may be subject to taxes such as property tax, capital gains tax (if selling the property), and income tax (if earning rental income). Tax benefits such as deductions on home loan interest and principal repayment may also apply.','faq',1,'2025-02-27 15:00:00','2025-02-27 15:00:00'),(11,'What are the steps involved in property registration?','Property registration involves executing a sale deed or conveyance deed and registering it with the local Sub Registrar of Assurances. The buyer and seller must be present along with witnesses, and the necessary stamp duty and registration fees must be paid.','faq',1,'2025-02-27 15:00:26','2025-02-27 15:00:26'),(12,'How can I resolve disputes related to property ownership or transactions?','Disputes related to property can be resolved through legal means such as negotiation, mediation, arbitration, or litigation, depending on the nature and severity of the dispute. Consulting a qualified legal expert is advisable in such cases.','faq',1,'2025-02-27 15:00:44','2025-02-27 15:00:44'),(13,'What are the rights and responsibilities of property owners in a housing society?','Property owners in a housing society have rights such as voting in general body meetings, access to common amenities, and participation in decision-making processes. They also have responsibilities such as paying maintenance charges, complying with society bylaws, and maintaining communal harmony.','faq',1,'2025-02-27 15:01:02','2025-02-27 15:01:02'),(14,'Deduction in interest:','The national taxation code permits homeowners (or apartment owners who bought the same with the intention to construct a house in it) a sizable reduction in the loan interest rate from their tax bonuses. For most property owners, this is a great deal since interest disbursements can be the biggest part of your loan settlement in the initial years of buying an apartment. Reduce interest for pre-construction: While a discount in interest rates can be claimed at the beginning of the financial year in which the construction will be done, you may also claim pre-construction interest from the same year, which will be given to you in easy installments. Nevertheless, you cannot have a deduction of more than Rs.2 lakh if the property is occupied by you and your family. Deduction Under Section 80C: The part of your EMI which pays towards the principal sum is entitled to be claimed under Section 80-C of the Indian Income Tax Act. You may recapitulate the outgo for the past year towards principal and file a claim for it. A sum of up to INR 1.5 lakhs can be claimed this way. In addition to the reduction permitted on principal settlement, that made as stamp duty and registration fees, are also allowed to be claimed as per the IT Act, Section 80C. But these can be claimed only in the same year. Deductions under Section 24: Under Section 24 of the IT Act, you can claim tax benefits of up to Rs.2 lakh. However, you must convert the apartment loan to a regular home loan to avail the benefits. The process to convert an apartment loan to a regular home loan is simple and can be done once the construction has been completed.','faq',1,'2025-03-08 12:06:04','2025-03-08 12:06:04'),(18,'What types of facilities does GVLIP offer?','GVLIP offers high-end infrastructure, hi-tech facilities, and 24×7 support availability, making it a prime choice for businesses seeking a fully integrated property solution.','gvlip-faq',1,'2025-03-08 13:05:59','2025-03-08 13:05:59'),(19,'Which brands have already leased space with you?','A diverse range of renowned brands have chosen to lease space with us. These include Samsung, Manitou, Reliance, Sansui, PG Electroplast, Goodworth Electronics, and Caterpillar Inc.','gvlip-faq',1,'2025-03-08 13:06:16','2025-03-08 13:06:16'),(20,'How long does the client\'s documentation process usually take?','We take pride in our efficiency and customer-centric approach. Technically speaking, the documentation process is completed seamlessly, often requiring zero days. Our fully compliant and streamlined processes ensure a hassle-free experience for our clients.','gvlip-faq',1,'2025-03-08 13:06:36','2025-03-08 13:06:36'),(21,'.How can leasing space at GVLIP be more cost-effective?','At GVLIP, we prioritize cost-effectiveness and sustainability. Our facilities come with a provision for solar panel setups, significantly reducing electricity costs. Additionally, our strategic location ensures easy connectivity through local transport systems, saving both time and travel expenses. Furthermore, should you require additional space for future expansion, we’ve got you covered.','gvlip-faq',1,'2025-03-08 13:06:54','2025-03-08 13:06:54'),(22,'Do you provide third-party logistics services?','While we do not directly offer third-party logistics services, we are committed to assisting our clients in every way possible. We provide support and connect you to suitable logistics companies, ensuring your logistical needs are met efficiently.','gvlip-faq',1,'2025-03-08 13:07:13','2025-03-08 13:07:13'),(23,'How to claim tax benefits for an apartment loan:','One should keep in mind that tax benefits can be claimed on apartment loans only after the construction of a building has been completed on the said plot. Once the construction is completed, you can claim the deductions on the loan as per the sections mentioned above.','tax-benefits',1,'2025-03-08 19:00:49','2025-03-08 19:00:49'),(24,'Loan-to-Value (LTV) Ratio:','One of the parameters that loan lenders consider before offering loans to applicants is the loan-to-value (LTV) ratio. LTV helps banks and non-banking financial companies (NBFCs) evaluate the risk of lending a loan. While applicants can avail up to 90% in the case of home loans, apartment loans offer only 60%-70% of the property value. This will result in the applicant shelling out the remaining 30%-40% from his/her own pocket irrespective of the fact whether the applicant is buying the apartment solely for investment purpose or building a house on it.','tax-benefits',1,'2025-03-08 19:01:05','2025-03-08 19:01:05'),(25,'Type and Location of the Apartment:','In most cases, banks and NBFCs offer apartment loans only for residential apartments. Additionally, loan lenders don’t offer apartment loans for the purpose of purchasing an agricultural land or an apartment in village regions. The apartment one plans on buying must also lie within the corporation or municipal limits. However, one can always avail a home loan if he/she wishes to construct a house in that apartment. Housing loans are free of the above-mentioned constraints and are available on all kinds of apartments irrespective of the type or location of the apartment on which the house is to be constructed.','tax-benefits',1,'2025-03-08 19:01:20','2025-03-08 19:01:20'),(26,'Loan Term:','Apartment loans have a relatively lower loan term when compared to housing loans. While banks offer loan terms up to 30 years in the case of home loans, the maximum term offered on apartment loans is only 15 years. Only in some rare cases do banks and NBFCs offer loan tenure up to 20 years on the apartment loans.','tax-benefits',1,'2025-03-08 19:01:33','2025-03-08 19:01:33'),(27,'Apartment loans for Non-Resident Indians (NRIs):','Given the plethora of restrictions and regulations enacted by the government, most banks and financial institutions in the country do not readily grant apartment loans to non-resident Indians. Even if banks grant apartment loans to NRIs, the interest rates on these loans will be greater than those on apartment loans offered to Indian residents. As a result, NRIs should conduct considerable study before applying for an apartment loan to purchase an apartment.','tax-benefits',1,'2025-03-08 19:01:48','2025-03-08 19:01:48'),(28,'Q1: Do Non-Resident Indian nationals need The Reserve Bank of India\'s permission to acquire property in India?','Ans: No, NRIs don\'t require RBI permission to buy property in India.','nri-corner',1,'2025-03-08 19:03:13','2025-03-08 19:03:13'),(29,'Q2: Can foreign nationals of Indian origin purchase property in India?','Ans: Yes, they are allowed to purchase property in India.','nri-corner',1,'2025-03-08 19:03:25','2025-03-08 19:03:25'),(30,'Q3: How should foreign nationals of Indian origin pay for residential property in India?','Ans: They can pay using inward remittances in foreign exchange through normal banking channels or funds from NRE/FCNR accounts in Indian banks.','nri-corner',1,'2025-03-08 19:06:07','2025-03-08 19:06:07'),(31,'Q4: Are there formalities for foreign nationals of Indian origin to complete when buying property in India?','Ans: Yes, they must to file Form IPI 7 with RBI within 90 days of the purchase, along with the necessary documents and a bank certificate.','nri-corner',1,'2025-03-08 19:06:35','2025-03-08 19:06:35'),(32,'Q5: Can such property be sold without RBI permission?','Ans: Yes, but if sold to another foreign citizen of Indian origin, the purchase consideration should be remitted to India or paid from NRE/FCNR accounts.','nri-corner',1,'2025-03-08 19:06:49','2025-03-08 19:06:49'),(33,'Q6: Can rental income from such property be remitted abroad?','Ans: No, it must be credited to the owner\'s ordinary non-resident rupee account. Some restricted remittances are allowed.','nri-corner',1,'2025-03-08 19:07:05','2025-03-08 19:07:05'),(34,'Q7: Can such property be sold without RBI permission?','Ans: Yes, it can be sold to foreign nationals of Indian origin, with purchase consideration remitted to India or paid from NRE/FCNR accounts.','nri-corner',1,'2025-03-08 19:07:25','2025-03-08 19:07:25'),(35,'Q8: Can sale proceeds of such property be remitted out of India?','Ans: For residential properties purchased after May 26, 1993, sale proceeds up to the consideration amount remitted in foreign exchange can be repatriated. Other proceeds must be credited to the owner\'s non-resident rupee account.','nri-corner',1,'2025-03-08 19:07:39','2025-03-08 19:07:39'),(36,'Q9: What conditions must be met for the repatriation of sale proceeds?','Ans: The sale must occur at least three years after the purchase deed or the payment of final consideration, whichever is later.','nri-corner',1,'2025-03-08 19:07:54','2025-03-08 19:07:54'),(37,'Q10: What is the procedure for seeking repatriation?','Ans: Application in Form IPI 8 should be made to RBI\'s Central Office in Mumbai within 90 days of a property sale.','nri-corner',1,'2025-03-08 19:08:07','2025-03-08 19:08:07');
/*!40000 ALTER TABLE `pages_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platter_banners`
--

DROP TABLE IF EXISTS `platter_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platter_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `platter_id` int NOT NULL,
  `desktop_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platter_banners`
--

LOCK TABLES `platter_banners` WRITE;
/*!40000 ALTER TABLE `platter_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `platter_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platters`
--

DROP TABLE IF EXISTS `platters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category` int DEFAULT NULL,
  `typology` int DEFAULT NULL,
  `sub_typology` int DEFAULT NULL,
  `cities` int DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platters`
--

LOCK TABLES `platters` WRITE;
/*!40000 ALTER TABLE `platters` DISABLE KEYS */;
/*!40000 ALTER TABLE `platters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_amenities`
--

DROP TABLE IF EXISTS `project_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_amenities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `amenities_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_amenities`
--

LOCK TABLES `project_amenities` WRITE;
/*!40000 ALTER TABLE `project_amenities` DISABLE KEYS */;
INSERT INTO `project_amenities` VALUES (1,1,1,1,'2025-02-27 17:27:23','2025-02-27 17:27:23',NULL),(2,1,2,1,'2025-02-27 17:27:23','2025-02-27 17:27:23',NULL),(3,1,3,1,'2025-02-27 17:27:24','2025-02-27 17:27:24',NULL),(4,1,4,1,'2025-02-27 17:27:24','2025-02-27 17:27:24',NULL),(5,1,5,1,'2025-02-27 17:27:25','2025-02-27 17:27:25',NULL),(6,1,7,1,'2025-02-27 17:27:25','2025-02-27 17:27:25',NULL),(7,1,8,1,'2025-02-27 17:27:26','2025-02-27 17:27:26',NULL),(8,1,6,1,'2025-02-27 17:27:31','2025-02-27 17:27:31',NULL),(9,2,1,1,'2025-03-03 16:18:13','2025-03-03 16:18:13',NULL),(10,2,2,1,'2025-03-03 16:18:13','2025-03-03 16:18:13',NULL),(11,2,3,1,'2025-03-03 16:18:14','2025-03-03 16:18:14',NULL),(12,2,4,1,'2025-03-03 16:18:18','2025-03-03 16:18:18',NULL),(13,2,7,1,'2025-03-03 16:18:21','2025-03-03 16:18:21',NULL),(14,2,6,1,'2025-03-03 16:18:24','2025-03-03 16:18:24',NULL),(15,2,5,1,'2025-03-03 16:18:25','2025-03-03 16:18:25',NULL),(16,2,8,1,'2025-03-03 16:18:27','2025-03-03 16:18:27',NULL),(18,3,11,1,'2025-03-04 12:27:23','2025-03-04 12:27:23',NULL),(19,3,9,1,'2025-03-04 12:27:48','2025-03-04 12:27:48',NULL),(20,3,10,1,'2025-03-04 12:27:48','2025-03-04 12:27:48',NULL),(21,3,12,1,'2025-03-04 12:27:49','2025-03-04 12:27:49',NULL),(22,3,13,1,'2025-03-04 12:27:50','2025-03-04 12:27:50',NULL),(23,3,14,1,'2025-03-04 12:27:50','2025-03-04 12:27:50',NULL),(24,3,15,1,'2025-03-04 12:27:51','2025-03-04 12:27:51',NULL),(25,3,16,1,'2025-03-04 12:27:51','2025-03-04 12:27:51',NULL),(26,15,1,1,'2025-03-06 14:45:43','2025-03-06 14:45:43',NULL),(27,15,2,1,'2025-03-06 14:45:51','2025-03-06 14:45:51',NULL),(28,15,3,1,'2025-03-06 14:45:53','2025-03-06 14:45:53',NULL),(29,15,4,1,'2025-03-06 14:45:55','2025-03-06 14:45:55',NULL),(30,15,5,1,'2025-03-06 14:45:59','2025-03-06 14:45:59',NULL),(31,15,6,1,'2025-03-06 14:46:01','2025-03-06 14:46:01',NULL),(32,15,7,1,'2025-03-06 14:46:03','2025-03-06 14:46:03',NULL),(33,15,8,1,'2025-03-06 14:46:07','2025-03-06 14:46:07',NULL),(37,18,17,1,'2025-03-07 12:10:14','2025-03-07 12:10:14',NULL),(38,18,18,1,'2025-03-07 12:10:21','2025-03-07 12:10:21',NULL),(39,18,19,1,'2025-03-07 12:10:23','2025-03-07 12:10:23',NULL),(40,18,20,1,'2025-03-07 12:10:28','2025-03-07 12:10:28',NULL),(41,18,21,1,'2025-03-07 12:10:35','2025-03-07 12:10:35',NULL),(42,18,22,1,'2025-03-07 12:10:41','2025-03-07 12:10:41',NULL),(43,18,23,1,'2025-03-07 12:10:42','2025-03-07 12:10:42',NULL),(44,18,24,1,'2025-03-07 12:10:43','2025-03-07 12:10:43',NULL),(45,18,25,1,'2025-03-07 12:10:43','2025-03-07 12:10:43',NULL),(46,20,17,1,'2025-03-07 13:12:53','2025-03-07 13:12:53',NULL),(47,20,26,1,'2025-03-07 13:13:01','2025-03-07 13:13:01',NULL),(48,20,27,1,'2025-03-07 13:13:07','2025-03-07 13:13:07',NULL),(49,20,20,1,'2025-03-07 13:13:13','2025-03-07 13:13:13',NULL),(50,20,21,1,'2025-03-07 13:13:19','2025-03-07 13:13:19',NULL),(51,20,10,1,'2025-03-07 13:13:27','2025-03-07 13:13:27',NULL),(52,20,23,1,'2025-03-07 13:13:31','2025-03-07 13:13:31',NULL),(53,20,28,1,'2025-03-07 13:13:34','2025-03-07 13:13:34',NULL);
/*!40000 ALTER TABLE `project_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_amenities_galleries`
--

DROP TABLE IF EXISTS `project_amenities_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_amenities_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_amenities_galleries`
--

LOCK TABLES `project_amenities_galleries` WRITE;
/*!40000 ALTER TABLE `project_amenities_galleries` DISABLE KEYS */;
INSERT INTO `project_amenities_galleries` VALUES (1,1,'project/amenities/1740655329.slide1.webp','','Gymnasium img',1,'2025-02-26 17:35:58','2025-02-27 18:22:09',NULL),(2,1,'project/amenities/1740566198.slide2.webp','','theater',1,'2025-02-26 17:36:38','2025-02-26 17:36:38',NULL),(3,1,'project/amenities/1740566220.slide3.webp','','Swimming Pool',1,'2025-02-26 17:37:00','2025-02-26 17:37:00',NULL),(4,1,'project/amenities/1740566328.slide5.webp','','Jogging Track',1,'2025-02-26 17:37:16','2025-02-26 17:38:48',NULL),(5,1,'project/amenities/1740655162.slide6.webp','','Yoga & Aerobics Hall',1,'2025-02-26 17:37:40','2025-02-27 18:19:22',NULL),(6,1,'project/amenities/1740566304.slide7.webp','','Basketball',1,'2025-02-26 17:37:51','2025-02-26 17:38:24',NULL),(7,1,'project/amenities/1740566344.slide4.webp','','Park',1,'2025-02-26 17:38:02','2025-02-26 17:39:04',NULL),(8,1,'project/amenities/1740655112.slide6.webp','','Yoga & Aerobics Hall img',1,'2025-02-27 18:18:32','2025-02-27 18:18:32',NULL),(9,2,'project/amenities/1740993676.slide1.webp','project/amenities/1742448159.1742384407.1741247680.sharnam-gym.jpg','Great Value Anandam Noida Modern fitness center',1,'2025-03-03 16:21:16','2025-03-20 11:22:39',NULL),(10,2,'project/amenities/1740993687.slide2.webp','project/amenities/1742448147.1742384397.1741247694.sharnam-theatre.jpg','Great Value Anandam Noida-Theatre',1,'2025-03-03 16:21:27','2025-03-20 11:22:27',NULL),(11,2,'project/amenities/1740993699.slide3.webp','project/amenities/1742448140.1742384486.1741247561.sharnam-swimming-pool.jpg','Great Value Anandam Noida-swimming pool Noida',1,'2025-03-03 16:21:39','2025-03-20 11:22:20',NULL),(12,2,'project/amenities/1740993742.slide4.webp','project/amenities/1742448133.1742384542.1741247583.sharnam-park.jpg','Great Value Anandam Noida-outdoor environment',1,'2025-03-03 16:22:22','2025-03-20 11:22:13',NULL),(13,2,'project/amenities/1740993753.slide5.webp','project/amenities/1742448125.1742384458.1741247600.sharnam-jogging.jpg','Great Value Anandam Noida-Jogging',1,'2025-03-03 16:22:33','2025-03-20 11:22:05',NULL),(14,2,'project/amenities/1740993762.slide6.webp','project/amenities/1742448116.1742384446.1741247650.sharnam-yoga.jpg','Great Value Anandam Noida-Yoga Noida',1,'2025-03-03 16:22:42','2025-03-20 11:21:56',NULL),(15,3,'project/amenities/1741066264.slide1.webp','project/amenities/1742450040.1741066264.slide1.jpg','Great Value Casa Uday New Delhi-Modern living room',1,'2025-03-04 12:31:04','2025-03-20 11:54:00',NULL),(16,3,'project/amenities/1741066274.slide2.webp','project/amenities/1742450032.1741066274.slide2.jpg','Great Value Casa Uday New Delhi-Power Backup',1,'2025-03-04 12:31:14','2025-03-20 11:53:52',NULL),(17,3,'project/amenities/1741066284.slide3.webp','project/amenities/1742450024.1741066284.slide3.jpg','Great Value Casa Uday New Delhi-Commercial building',1,'2025-03-04 12:31:24','2025-03-20 11:53:44',NULL),(18,3,'project/amenities/1741066295.slide4.webp','project/amenities/1742450011.1741066295.slide4.jpg','Great Value Casa Uday New Delhi-Bright living room',1,'2025-03-04 12:31:35','2025-03-20 11:53:31',NULL),(19,3,'project/amenities/1741066312.slide5.webp','project/amenities/1742450001.1741066312.slide5.jpg','Great Value Casa Uday New Delhi-Enjoying nature',1,'2025-03-04 12:31:52','2025-03-20 11:53:21',NULL),(20,3,'project/amenities/1741066336.slide6.webp','project/amenities/1742449960.1741066336.slide6.jpg','Great Value Casa Uday New Delhi-Spacious balcony with wooden flooring',1,'2025-03-04 12:32:16','2025-03-20 11:52:40',NULL),(21,3,'project/amenities/1741066361.slide7.webp','project/amenities/1742449943.1741066361.slide7.jpg','Great Value Casa Uday New Delhi-Parking garage',1,'2025-03-04 12:32:41','2025-03-20 11:52:23',NULL),(22,3,'project/amenities/1741066371.slide8.webp','project/amenities/1742449932.1741066371.slide8.jpg','Great Value Casa Uday New Delhi-Stylish decor',1,'2025-03-04 12:32:51','2025-03-20 11:52:12',NULL),(23,15,'project/amenities/1741247561.sharnam-swimming-pool.webp','project/amenities/1742384486.1741247561.sharnam-swimming-pool.jpg','Great Value Sharanam Noida-swimming pool',1,'2025-03-06 14:52:41','2025-03-19 17:41:26',NULL),(24,15,'project/amenities/1741247583.sharnam-park.webp','project/amenities/1742384542.1741247583.sharnam-park.jpg','Great Value Sharanam Noida-environment',1,'2025-03-06 14:53:03','2025-03-19 17:42:22',NULL),(25,15,'project/amenities/1741247600.sharnam-jogging.webp','project/amenities/1742384458.1741247600.sharnam-jogging.jpg','Great Value Sharanam Noida-Joggers and walkers',1,'2025-03-06 14:53:20','2025-03-19 17:40:58',NULL),(26,15,'project/amenities/1741247650.sharnam-yoga.webp','project/amenities/1742384446.1741247650.sharnam-yoga.jpg','Great Value Sharanam Noida-Yoga',1,'2025-03-06 14:54:10','2025-03-19 17:40:46',NULL),(27,15,'project/amenities/1741247667.sharnam-basketball.webp','project/amenities/1742384433.1741247667.sharnam-basketball.jpg','Great Value Sharanam Noida-Basketball',1,'2025-03-06 14:54:27','2025-03-19 17:40:33',NULL),(28,15,'project/amenities/1741247680.sharnam-gym.webp','project/amenities/1742384407.1741247680.sharnam-gym.jpg','Great Value Sharanam Noida-Modern fitness center',1,'2025-03-06 14:54:40','2025-03-19 17:40:07',NULL),(29,15,'project/amenities/1741247694.sharnam-theatre.webp','project/amenities/1742384397.1741247694.sharnam-theatre.jpg','Great Value Sharanam Noida-Theatre',1,'2025-03-06 14:54:54','2025-03-19 17:39:57',NULL),(30,18,'project/amenities/1741324348.slide1.webp','project/amenities/1742452489.1741324348.slide1.jpg','Great Value Vilasa Sohna-Vibrant nightclub',1,'2025-03-07 12:12:28','2025-03-20 12:34:49',NULL),(31,18,'project/amenities/1741324362.slide2.webp','project/amenities/1742452482.1741324362.slide2.jpg','Great Value Vilasa Sohna-Elegant banquet hall',1,'2025-03-07 12:12:42','2025-03-20 12:34:42',NULL),(32,18,'project/amenities/1741324377.slide3.webp','project/amenities/1742452474.1741324377.slide3.jpg','Great Value Vilasa Sohna-Cricket',1,'2025-03-07 12:12:57','2025-03-20 12:34:34',NULL),(33,18,'project/amenities/1741324389.slide4.webp','project/amenities/1742452465.1741324389.slide4.jpg','Great Value Vilasa Sohna-Badminton',1,'2025-03-07 12:13:09','2025-03-20 12:34:25',NULL),(34,18,'project/amenities/1741324399.slide5.webp','project/amenities/1742452456.1741324399.slide5.jpg','Great Value Vilasa Sohna-Road',1,'2025-03-07 12:13:19','2025-03-20 12:34:16',NULL),(35,18,'project/amenities/1741324406.slide6.webp','project/amenities/1742452449.1741324406.slide6.jpg','Great Value Vilasa Sohna-safety and protection',1,'2025-03-07 12:13:26','2025-03-20 12:34:09',NULL),(36,18,'project/amenities/1741324412.slide7.webp','project/amenities/1742452440.1741324412.slide7.jpg','Great Value Vilasa Sohna-Elegant outdoor',1,'2025-03-07 12:13:32','2025-03-20 12:34:00',NULL),(37,18,'project/amenities/1741324421.slide8.webp','project/amenities/1742452432.1741324421.slide8.jpg','Great Value Vilasa Sohna-golf ball',1,'2025-03-07 12:13:41','2025-03-20 12:33:52',NULL),(38,18,'project/amenities/1741324426.slide9.webp','project/amenities/1742452423.1741324426.slide9.jpg','Great Value Vilasa Sohna-basketball court',1,'2025-03-07 12:13:46','2025-03-20 12:33:43',NULL),(39,20,'project/amenities/1741328072.slide1.webp','project/amenities/1742453543.1741328072.slide1.jpg','Great Value Sanctuary Gurugram-Nightclub',1,'2025-03-07 13:14:32','2025-03-20 12:52:23',NULL),(40,20,'project/amenities/1741328081.slide2.webp','project/amenities/1742453535.1741328081.slide2.jpg','Great Value Sanctuary Gurugram-Tropical environment',1,'2025-03-07 13:14:41','2025-03-20 12:52:15',NULL),(41,20,'project/amenities/1741328088.slide3.webp','project/amenities/1742453527.1741328088.slide3.jpg','Great Value Sanctuary Gurugram-Cricket',1,'2025-03-07 13:14:48','2025-03-20 12:52:07',NULL),(42,20,'project/amenities/1741328098.slide4.webp','project/amenities/1742453519.1741328098.slide4.jpg','Great Value Sanctuary Gurugram-Badminton',1,'2025-03-07 13:14:58','2025-03-20 12:51:59',NULL),(43,20,'project/amenities/1741328123.slide5.webp','project/amenities/1742453509.1741328123.slide5.jpg','Great Value Sanctuary Gurugram-Colorful children\'s playground',1,'2025-03-07 13:15:23','2025-03-20 12:51:49',NULL),(44,20,'project/amenities/1741328128.slide6.webp','project/amenities/1742453502.1741328128.slide6.jpg','Great Value Sanctuary Gurugram-Security',1,'2025-03-07 13:15:28','2025-03-20 12:51:42',NULL),(45,20,'project/amenities/1741328134.slide7.webp','project/amenities/1742453495.1741328134.slide7.jpg','Great Value Sanctuary Gurugram-Racks',1,'2025-03-07 13:15:34','2025-03-20 12:51:35',NULL),(46,20,'project/amenities/1741328140.slide8.webp','project/amenities/1742453488.1741328140.slide8.jpg','Great Value Sanctuary Gurugram-Garage',1,'2025-03-07 13:15:40','2025-03-20 12:51:28',NULL),(47,20,'project/amenities/1741328146.slide9.webp','project/amenities/1742453480.1741328146.slide9.jpg','Great Value Sanctuary Gurugram-wooden basketball court',1,'2025-03-07 13:15:46','2025-03-20 12:51:20',NULL);
/*!40000 ALTER TABLE `project_amenities_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_banners`
--

DROP TABLE IF EXISTS `project_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `desktop_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_banners`
--

LOCK TABLES `project_banners` WRITE;
/*!40000 ALTER TABLE `project_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_enquiries`
--

DROP TABLE IF EXISTS `project_enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_enquiries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_enquiries`
--

LOCK TABLES `project_enquiries` WRITE;
/*!40000 ALTER TABLE `project_enquiries` DISABLE KEYS */;
INSERT INTO `project_enquiries` VALUES (1,972,'test by gtf',9191919191,'testbygtf@gmail.com','test by gtf',1,'2025-03-10 16:30:25','2025-03-10 16:30:25',NULL),(2,972,'test',9999999999,'test@gmail.com','test',1,'2025-03-10 16:34:11','2025-03-10 16:34:11',NULL),(3,972,'test',9999999999,'test@gmail.com','test',1,'2025-03-10 16:34:35','2025-03-10 16:34:35',NULL),(4,972,'test',9999999999,'test@gmail.com','test',1,'2025-03-11 17:41:12','2025-03-11 17:41:12',NULL),(5,972,'Test Name',9999999999,'test@gmail.com','test message',1,'2025-03-11 17:42:59','2025-03-11 17:42:59',NULL),(6,972,'Khushi',1234,'test@gmail.com','test message',1,'2025-03-13 11:22:23','2025-03-13 11:22:23',NULL);
/*!40000 ALTER TABLE `project_enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_faqs`
--

DROP TABLE IF EXISTS `project_faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_faqs`
--

LOCK TABLES `project_faqs` WRITE;
/*!40000 ALTER TABLE `project_faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_floor_plans`
--

DROP TABLE IF EXISTS `project_floor_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_floor_plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_typology` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `protected` int NOT NULL DEFAULT '0',
  `more_typology` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `carpet_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balcony_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizes_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `build_up_area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_floor_plans`
--

LOCK TABLES `project_floor_plans` WRITE;
/*!40000 ALTER TABLE `project_floor_plans` DISABLE KEYS */;
INSERT INTO `project_floor_plans` VALUES (1,3,'UNIT1',NULL,NULL,NULL,NULL,0,'TypeA: 2B/R',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2025-03-04 19:19:39','2025-03-05 12:14:13','2025-03-05 12:14:13'),(2,2,'unit2',NULL,'project/floor-plans/1741148953.unit1-1.webp',NULL,NULL,0,'test',NULL,165000,'752','122.98','122.98','1','122.98',1,'2025-03-05 11:29:13','2025-03-08 13:02:55','2025-03-08 13:02:55'),(3,3,'unit1',NULL,'project/floor-plans/1742450654.plan2.webp',NULL,'Great Value Casa Uday First Floor civil plan New Delhi',0,'First Floor Civil Plan',NULL,NULL,NULL,NULL,'1937','1',NULL,1,'2025-03-05 12:14:34','2025-03-20 12:07:13','2025-03-20 12:07:13'),(4,15,'unit2',NULL,'project/floor-plans/1742445245.unit2-1.webp','project/floor-plans/1742445457.unit2-1.jpg','Great Value Sharanam Floor plan 2B/R+S Noida',0,'TypeB: 2B/R+S',NULL,NULL,'873','81','1295','1',NULL,1,'2025-03-06 17:24:05','2025-03-20 10:37:37',NULL),(5,15,'unit1',NULL,'project/floor-plans/1742445104.unit1-1.webp','project/floor-plans/1742445467.unit1-1.jpg','Great Value Sharanam Floor plan 2B/R Noida',0,'TypeA: 2B/R',NULL,NULL,'752','69','1139','1',NULL,1,'2025-03-06 17:26:01','2025-03-20 10:37:47',NULL),(6,15,'unit2',NULL,'project/floor-plans/1742445289.unit2-2.webp','project/floor-plans/1742445476.unit2-2.jpg','Great Value Sharanam Floor plan 3B/R+S Noida',0,'Type D: 3B/R+S',NULL,NULL,'1186','145','1791','1',NULL,1,'2025-03-06 18:01:50','2025-03-20 10:37:56',NULL),(7,15,'unit1',NULL,'project/floor-plans/1741262261.unit2-typeb.webp',NULL,'floor plan featuring',0,'test unit 1',NULL,NULL,'752','752','752','1',NULL,1,'2025-03-06 18:57:41','2025-03-10 19:17:13','2025-03-10 19:17:13'),(8,15,'unit1',NULL,'project/floor-plans/1741262279.unit2-typed.webp',NULL,NULL,0,'test unit1 1',NULL,NULL,'752','752','752','1',NULL,1,'2025-03-06 18:57:59','2025-03-06 19:14:53','2025-03-06 19:14:53'),(9,15,'unit1',NULL,'project/floor-plans/1741262292.unit2-typed.webp',NULL,NULL,0,'test unit 1',NULL,NULL,'752','752','752','1',NULL,1,'2025-03-06 18:58:12','2025-03-06 19:14:42','2025-03-06 19:14:42'),(10,15,'unit1',NULL,'project/floor-plans/1741262330.sharnam-unit2-typeb.webp',NULL,NULL,0,'test unit 1',NULL,NULL,'752','752','752','1',NULL,1,'2025-03-06 18:58:50','2025-03-06 19:14:45','2025-03-06 19:14:45'),(11,15,'unit1',NULL,'project/floor-plans/1741262384.sharnam-unit2-typeb.webp',NULL,NULL,0,'test unit 6',NULL,NULL,'752','752','752','1',NULL,1,'2025-03-06 18:59:44','2025-03-06 19:14:47','2025-03-06 19:14:47'),(12,2,'unit1',17,'project/floor-plans/1742449424.plan1.webp','project/floor-plans/1742449294.1741414445.anandam-unit1-3bhk.jpg','Great Value Anandam Floor plan 3 BHK+STUDY+4T Noida',0,'null',NULL,NULL,'109.68','13.24','170.94','3','131.45',1,'2025-03-08 13:14:05','2025-03-20 11:43:44',NULL),(13,2,'unit2',18,'project/floor-plans/1742449431.plan2.webp','project/floor-plans/1742449348.1741418077.unit2-3bhk.jpg','Great Value Anandam Floor plan 3 BHK+3TNoida',0,'null',NULL,NULL,'100.12','13.26','157.94','3','121.5',1,'2025-03-08 14:14:37','2025-03-20 11:43:51',NULL),(14,2,'unit3',19,'project/floor-plans/1742449439.plan3.webp','project/floor-plans/1742449361.1741418399.unit3-2bhk.jpg','Great Value Anandam Floor plan 2 BHK+STUDY+2T Noida',0,'null',NULL,NULL,'81.51','8.07','125.42','3','96.37',1,'2025-03-08 14:19:59','2025-03-20 11:43:59',NULL),(15,15,'unit1',NULL,'project/floor-plans/1742445177.unit1-2.webp','project/floor-plans/1742445486.unit1-2.jpg','Great Value Sharanam Floor plan 3B+R Noida',0,'TypeC: 3B+R',NULL,NULL,'1080','145','1647','1',NULL,1,'2025-03-10 19:21:51','2025-03-20 10:38:06',NULL),(16,3,'unit1',NULL,'project/floor-plans/1742450743.1741262469.gallery1.jpg',NULL,'testing',0,'testing',NULL,NULL,NULL,NULL,'1295','1',NULL,1,'2025-03-20 12:05:43','2025-03-20 12:05:50','2025-03-20 12:05:50'),(17,3,'unit1',NULL,'project/floor-plans/1742450905.plan1.webp','project/floor-plans/1742451221.plan1.jpg','Great Value Casa Uday Ground Floor civil plan New Delhi',0,'Ground Floor Civil Plan',NULL,NULL,NULL,NULL,'1937','1',NULL,1,'2025-03-20 12:08:25','2025-03-20 12:13:41',NULL),(18,3,'unit1',NULL,'project/floor-plans/1742450953.plan2.webp','project/floor-plans/1742451232.plan2.jpg','Great Value Casa Uday First Floor civil plan New Delhi',0,'First Floor Civil Plan',NULL,NULL,NULL,NULL,'1937','1',NULL,1,'2025-03-20 12:09:13','2025-03-20 12:13:52',NULL);
/*!40000 ALTER TABLE `project_floor_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_gallery`
--

DROP TABLE IF EXISTS `project_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_gallery` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_gallery`
--

LOCK TABLES `project_gallery` WRITE;
/*!40000 ALTER TABLE `project_gallery` DISABLE KEYS */;
INSERT INTO `project_gallery` VALUES (2,1,'image','g1','project/gallery/1740980324.gallery3.webp',NULL,1,'2025-03-03 12:38:44','2025-03-03 12:38:44',NULL),(3,1,'image','g 2','project/gallery/1740980751.gallery2.webp',NULL,1,'2025-03-03 12:45:51','2025-03-03 12:45:51',NULL),(4,1,'image','g 3','project/gallery/1740980774.gallery1.webp',NULL,1,'2025-03-03 12:46:14','2025-03-03 12:46:14',NULL),(5,1,'image','g 4','project/gallery/1740984223.gallery4.webp',NULL,1,'2025-03-03 13:43:43','2025-03-03 13:43:43',NULL),(6,1,'image','g 5','project/gallery/1740984235.gallery5.webp',NULL,1,'2025-03-03 13:43:55','2025-03-03 13:43:55',NULL),(7,1,'image','g 6','project/gallery/1740984247.gallery6.webp',NULL,1,'2025-03-03 13:44:07','2025-03-03 13:44:07',NULL),(8,2,'image','Great Value Anandam Modern interiors Noida','project/gallery/1741753259.1740996809.1.webp','project/gallery/1742449541.1.jpg',1,'2025-03-03 17:13:29','2025-03-20 11:45:41',NULL),(9,2,'image','Great Value Anandam luxury residential apartment Noida','project/gallery/1741753251.1740996843.3.webp','project/gallery/1742449548.3.jpg',1,'2025-03-03 17:14:03','2025-03-20 11:45:48',NULL),(10,2,'image','Great Value Anandam Luxury residential clubhouse Noida','project/gallery/1741753243.1740996854.4.webp','project/gallery/1742449555.4.jpg',1,'2025-03-03 17:14:14','2025-03-20 11:45:55',NULL),(11,15,'image','Great Value Sharanam Modern Building Noida','project/gallery/1741262469.gallery1.webp','project/gallery/1742446175.gallery1.jpg',1,'2025-03-06 19:01:09','2025-03-20 10:49:35',NULL),(12,15,'image','Great Value Sharanam Residential apartments Noida','project/gallery/1742445877.22.webp','project/gallery/1742446182.gallery2.jpg',1,'2025-03-06 19:01:19','2025-03-20 10:49:42',NULL),(13,15,'image','Great Value Sharanam residential complex Noida','project/gallery/1742445892.33.webp','project/gallery/1742446190.gallery3.jpg',1,'2025-03-06 19:01:24','2025-03-20 10:49:50',NULL),(14,15,'image','Great Value Sharanam High-rise building Noida','project/gallery/1742445906.44.webp','project/gallery/1742446200.gallery4.jpg',1,'2025-03-06 19:01:32','2025-03-20 10:50:00',NULL),(15,15,'image','Great Value Sharanam Modern Residential apartments Noida','project/gallery/1742445920.55.webp','project/gallery/1742446209.gallery5.jpg',1,'2025-03-06 19:01:40','2025-03-20 10:50:09',NULL),(16,15,'image','Great Value Sharanam Luxury apartments Noida','project/gallery/1742445935.66.webp','project/gallery/1742446220.gallery6.jpg',1,'2025-03-06 19:01:47','2025-03-20 10:50:20',NULL),(17,3,'image','Great Value Casa Uday Luxury modern kitchen New Delhi','project/gallery/1742451842.gallery1.webp','project/gallery/1742451842.gallery1.jpg',1,'2025-03-06 19:19:02','2025-03-20 12:24:02',NULL),(18,3,'image','Great Value Casa Uday Living room New Delhi','project/gallery/1742451865.gallery2.webp','project/gallery/1742451865.gallery2.jpg',1,'2025-03-06 19:19:08','2025-03-20 12:24:25',NULL),(20,3,'image','Great Value Casa Uday Luxury living room New Delhi','project/gallery/1742451888.gallery4.webp','project/gallery/1742451888.gallery4.jpg',1,'2025-03-06 19:19:24','2025-03-20 12:24:48',NULL),(21,3,'image','Great Value Casa Uday Residential garden New Delhi','project/gallery/1742451908.gallery5.webp','project/gallery/1742451908.gallery5.jpg',1,'2025-03-06 19:19:30','2025-03-20 12:25:08',NULL),(22,3,'image','Great Value Casa Uday Modern luxury kitchen New Delhi','project/gallery/1742451935.gallery6.webp','project/gallery/1742451935.gallery6.jpg',1,'2025-03-06 19:19:36','2025-03-20 12:25:35',NULL),(23,18,'image','Great Value Vilasa Luxurious modern living room Sohna','project/gallery/1742453141.actual1.webp','project/gallery/1742453141.actual1.jpg',1,'2025-03-07 12:33:54','2025-03-20 12:45:41',NULL),(24,18,'image','Great Value Vilasa Car parked Sohna','project/gallery/1742453154.actual2.webp','project/gallery/1742453154.actual2.jpg',1,'2025-03-07 12:34:00','2025-03-20 12:45:54',NULL),(25,18,'image','Great Value Vilasa Spacious balcony with a modern railing Sohna','project/gallery/1742453169.actual3.webp','project/gallery/1742453169.actual3.jpg',1,'2025-03-07 12:34:06','2025-03-20 12:46:09',NULL),(26,20,'image','Great Value Sanctuary High-rise apartment buildings Gurugram','project/gallery/1741753808.1741328979.gallery1.webp','project/gallery/1742454096.1741753808.1741328979.gallery1.jpg',1,'2025-03-07 13:29:39','2025-03-20 13:01:36',NULL),(27,20,'image','Great Value Sanctuary Modern apartment buildings Gurugram','project/gallery/1741753876.1741328985.gallery2.webp','project/gallery/1742454106.1741753876.1741328985.gallery2.jpg',1,'2025-03-07 13:29:45','2025-03-20 13:01:46',NULL),(28,20,'image','Great Value Sanctuary Luxury residential complex Gurugram','project/gallery/1741753788.1741328991.gallery3.webp','project/gallery/1742454113.1741753788.1741328991.gallery3.jpg',1,'2025-03-07 13:29:51','2025-03-20 13:01:53',NULL);
/*!40000 ALTER TABLE `project_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_highlights`
--

DROP TABLE IF EXISTS `project_highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_highlights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `highlight` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_highlight` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_highlights`
--

LOCK TABLES `project_highlights` WRITE;
/*!40000 ALTER TABLE `project_highlights` DISABLE KEYS */;
INSERT INTO `project_highlights` VALUES (3,1,'3 sides open corner plot',0,'2025-02-26 18:02:37','2025-02-26 18:02:37'),(4,1,'Proposed Metro station in Sector-108',0,'2025-02-26 18:02:42','2025-02-26 18:02:42'),(5,1,'Fully inhabited residential area.',0,'2025-02-26 18:02:49','2025-02-26 18:02:49'),(6,1,'Schools, Hospitals, Malls etc. nearby On 70m wide & straight road from Kalindi Kunj, Situated alone of the most prime location of Noida.',0,'2025-02-26 18:02:56','2025-02-26 18:02:56'),(7,1,'In close vicinity to Delhi (15 min. drive to DND & Kalandi Kunj)',0,'2025-02-26 18:03:01','2025-02-26 18:03:01'),(8,1,'Close to Noida Expressway & Yamuna Expressway.',0,'2025-02-26 18:03:08','2025-02-26 18:03:08'),(9,1,'Easy access to Metro Station, connecting to metro network all around NCR.',0,'2025-02-26 18:03:14','2025-02-26 18:03:14'),(10,2,'3 sides open corner plot',0,'2025-03-03 16:28:20','2025-03-03 16:28:20'),(11,2,'Proposed Metro station in Sector-108',0,'2025-03-03 16:28:28','2025-03-03 16:28:28'),(12,2,'Fully inhabited residential area.',0,'2025-03-03 16:28:41','2025-03-03 16:28:41'),(13,2,'Schools, Hospitals, Malls etc. nearby On 70m wide & straight road from Kalindi Kunj, Situated alone of the most prime location of Noida.',0,'2025-03-03 16:29:09','2025-03-03 16:29:09'),(14,2,'In close vicinity to Delhi (15 min. drive to DND & Kalandi Kunj)',0,'2025-03-03 16:29:19','2025-03-03 16:29:19'),(15,2,'Close to Noida Expressway & Yamuna Expressway.',0,'2025-03-03 16:29:25','2025-03-03 16:29:25'),(16,2,'Easy access to Metro Station, connecting to metro network all around NCR.',0,'2025-03-03 16:29:31','2025-03-03 16:29:31'),(17,3,'Situated at 31 Uday Park, New Delhi, offering unmatched connectivity and prestige.',0,'2025-03-04 12:34:14','2025-03-04 12:34:14'),(18,3,'Italian marble flooring, false ceilings, and designer finishes for a sophisticated ambiance.',0,'2025-03-04 12:34:19','2025-03-04 12:34:19'),(19,3,'Built with high-quality materials ensuring, safety and durability.',0,'2025-03-04 12:34:27','2025-03-04 12:34:27'),(20,3,'Italian-style kitchen with stainless steel accessories, chimney, and geyser.',0,'2025-03-04 12:34:36','2025-03-04 12:34:36'),(21,3,'High-end fittings, toughened glass partitions, and geysers are available in all bathrooms.',0,'2025-03-04 12:34:46','2025-03-04 12:34:46'),(22,15,'3 sides open corner plot',0,'2025-03-06 15:00:33','2025-03-06 15:00:33'),(23,15,'Proposed Metro station in Sector-108',0,'2025-03-06 15:00:43','2025-03-06 15:00:43'),(24,15,'Entirely inhabited residential area.',0,'2025-03-06 15:01:10','2025-03-06 15:01:10'),(25,15,'Schools, hospitals, malls, etc, are situated along a 70m wide, straight road from Kalindi Kunj, in one of Noida’s most prime locations.',0,'2025-03-06 15:01:16','2025-03-06 15:01:16'),(26,15,'In close vicinity to Delhi (15 min. drive to DND & Kalandi Kunj)',0,'2025-03-06 15:01:22','2025-03-06 15:01:22'),(27,15,'Close to Noida Expressway & Yamuna Expressway.',0,'2025-03-06 15:01:27','2025-03-06 15:01:27'),(28,15,'Easy access to Metro Station, connecting to metro network all around NCR.',0,'2025-03-06 15:32:47','2025-03-06 15:32:47'),(29,18,'Customizable Plots –Design your dream villa or Stilt + 4 floors.',0,'2025-03-07 12:14:42','2025-03-07 12:14:42'),(30,18,'Gated Community – Secure, well-planned, and exclusive living.',0,'2025-03-07 12:14:51','2025-03-07 12:14:51'),(31,18,'Premium Amenities – Clubhouse, banquet, sports courts, and golf greens.',0,'2025-03-07 12:14:58','2025-03-07 12:14:58'),(32,18,'Excellent Connectivity – Near Aravalli Hills and Damdama Lake.',0,'2025-03-07 12:15:05','2025-03-07 12:15:05'),(33,18,'Scenic Surroundings –122-172 sq yds',0,'2025-03-07 12:15:12','2025-03-07 12:15:12'),(34,20,'Prime Location – Situated in Sector 105 with excellent connectivity to Old Delhi Gurgaon Road, Dwarka Expressway, and MG Road.',0,'2025-03-07 13:16:29','2025-03-07 13:16:29'),(35,20,'Seamless Connectivity – Strategically positioned for easy access to major roads and hubs.',0,'2025-03-07 13:16:35','2025-03-07 13:16:35'),(36,20,'Luxury & Convenience – A perfect blend of modern living and comfort.',0,'2025-03-07 13:16:42','2025-03-07 13:16:42'),(37,20,'Serene Environment – Designed for a peaceful and fulfilling lifestyle.',0,'2025-03-07 13:16:48','2025-03-07 13:16:48'),(38,20,'Diverse Unit Options – Offers multiple configurations to suit different needs.',0,'2025-03-07 13:16:56','2025-03-07 13:16:56'),(39,20,'Premium Specifications – The master bedroom walls feature an oil-bound distemper finish for a refined finish.',0,'2025-03-07 13:17:02','2025-03-07 13:17:02');
/*!40000 ALTER TABLE `project_highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_location_advantages`
--

DROP TABLE IF EXISTS `project_location_advantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_location_advantages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_location_advantages`
--

LOCK TABLES `project_location_advantages` WRITE;
/*!40000 ALTER TABLE `project_location_advantages` DISABLE KEYS */;
INSERT INTO `project_location_advantages` VALUES (8,1,'Sector 104 Market','project/location/1740975358.shopping.webp',NULL,NULL,'drive','4 min','2025-03-03 11:15:58','2025-03-03 11:15:58'),(9,1,'Spezia Bistro, GT 01/02 2nd Floor, Sector 104, Noida, Uttar Pradesh 201301','project/location/1740975393.hauzkhas.webp',NULL,NULL,'drive','4 min','2025-03-03 11:16:33','2025-03-03 11:16:33'),(10,1,'Pathways School Noida','project/location/1740975418.school.webp',NULL,NULL,'drive','5 min','2025-03-03 11:16:58','2025-03-03 11:16:58'),(11,1,'Stadeum, Sector 100, Noida, Uttar Pradesh 201303','project/location/1740975495.auditorium.webp',NULL,NULL,'drive','5 min','2025-03-03 11:18:15','2025-03-03 11:18:15'),(12,1,'Serene Clothing, Suman Enclave, Sector 107, Noida, Uttar Pradesh 201303','project/location/1740975532.shopping.webp',NULL,NULL,'drive','8 min','2025-03-03 11:18:52','2025-03-03 11:18:52'),(13,1,'Chet Ram Sharma College Of Education','project/location/1740975561.college.webp',NULL,NULL,'drive','12 min','2025-03-03 11:19:21','2025-03-03 11:19:21'),(14,1,'Starling Mall, Plot no 1A, Hazipur, Sector 104, Noida, Uttar Pradesh 201301','project/location/1740975605.mall.webp',NULL,NULL,'walk','8 min','2025-03-03 11:20:05','2025-03-03 11:20:05'),(15,1,'Stadeum, Sector 100, Noida, Uttar Pradesh 201303','project/location/1740975639.auditorium.webp',NULL,NULL,'walk','10 min','2025-03-03 11:20:39','2025-03-03 11:20:39'),(16,1,'Spezia Bistro, GT 01/02 2nd Floor, Sector 104, Noida, Uttar Pradesh 201301','project/location/1740975677.hauzkhas.webp',NULL,NULL,'walk','12 min','2025-03-03 11:21:17','2025-03-03 11:21:17'),(17,1,'Pathways School Noida','project/location/1740975705.school.webp',NULL,NULL,'walk','14 min','2025-03-03 11:21:45','2025-03-03 11:21:45'),(18,2,'Hajipur Market, Sector 104, Noida','project/location/1740996166.shopping.webp','project/specification/1742446996.1741261760.shopping.png','Great Value Anandam Location Advantage Noida','drive','4 min','2025-03-03 17:02:46','2025-03-20 11:03:16'),(20,2,'Pathways School Noida','project/location/1740996244.school.webp','project/specification/1742447004.1741261926.school.png','Great Value Anandam Location Advantage Noida','drive','5 min','2025-03-03 17:04:04','2025-03-20 11:03:24'),(21,2,'Stadeum, Sector 100, Noida, Uttar Pradesh 201303','project/location/1740996276.auditorium.webp','project/specification/1742447012.1741261956.auditorium.png','Great Value Anandam Location Advantage Noida','drive','5 min','2025-03-03 17:04:36','2025-03-20 11:03:32'),(22,2,'Serene Clothing, Suman Enclave, Sector 107, Noida, Uttar Pradesh 201303','project/location/1740996324.shopping.webp','project/specification/1742447020.1741261760.shopping.png','Great Value Anandam Location Advantage Noida','drive','6 min','2025-03-03 17:05:24','2025-03-20 11:03:40'),(23,2,'Chet Ram Sharma College Of Education','project/location/1740996413.college.webp','project/specification/1742447028.1741262032.college.png','Great Value Anandam Location Advantage Noida','drive','12 min','2025-03-03 17:06:53','2025-03-20 11:03:48'),(24,2,'DLF Mall of India','project/location/1740996438.mall.webp','project/specification/1742447036.1741262058.mall.png','Great Value Anandam Location Advantage Noida','drive','15 min','2025-03-03 17:07:18','2025-03-20 11:03:56'),(25,2,'Jaypee Hospital','project/location/1740996466.hospital.webp','project/specification/1742447044.1741262084.hospital.png','Great Value Anandam Location Advantage Noida','drive','16 min','2025-03-03 17:07:46','2025-03-20 11:04:04'),(26,2,'Hazrat Nizamuddin Railway Station','project/location/1740996485.metro.webp','project/specification/1742447051.1741262107.metro.png','Great Value Anandam Location Advantage Noida','drive','37 min','2025-03-03 17:08:05','2025-03-20 11:04:11'),(27,2,'Indira Gandhi International Airport','project/location/1740996508.airport.webp','project/specification/1742447059.1741262132.airport.png','Great Value Anandam Location Advantage Noida','drive','1 hour','2025-03-03 17:08:28','2025-03-20 11:04:19'),(28,2,'Starling Mall, Plot no 1A, Hazipur, Sector 104, Noida, Uttar Pradesh 201301','project/location/1740996531.mall.webp','project/specification/1742447067.1741262058.mall.png','Great Value Anandam Location Advantage Noida','walk','8 min','2025-03-03 17:08:51','2025-03-20 11:04:27'),(29,2,'Stadeum, Sector 100, Noida, Uttar Pradesh 201303','project/location/1740996567.auditorium.webp','project/specification/1742447079.1741261956.auditorium.png','Great Value Anandam Location Advantage Noida','walk','10 min','2025-03-03 17:09:27','2025-03-20 11:04:39'),(30,2,'Spezia Bistro, GT 01/02 2nd Floor, Sector 104, Noida, Uttar Pradesh 201301','project/location/1740996597.hauzkhas.webp','project/specification/1742447088.1740996597.hauzkhas.png','Great Value Anandam Location Advantage Noida','walk','12 min','2025-03-03 17:09:57','2025-03-20 11:04:48'),(31,2,'Pathways School Noida','project/location/1740996664.school.webp','project/specification/1742447097.1741261926.school.png','Great Value Anandam Location Advantage Noida','walk','14 min','2025-03-03 17:11:04','2025-03-20 11:04:57'),(32,2,'Sector 104 Market','project/location/1740996696.shopping.webp','project/specification/1742447104.1741261760.shopping.png','Great Value Anandam Location Advantage Noida','walk','15 min','2025-03-03 17:11:36','2025-03-20 11:05:04'),(33,2,'Serene Clothing, Suman Enclave, Sector 107, Noida, Uttar Pradesh 201303','project/location/1740996751.shopping.webp','project/specification/1742447112.1741261760.shopping.png','Great Value Anandam Location Advantage Noida','walk','16 min','2025-03-03 17:12:31','2025-03-20 11:05:12'),(34,3,'Fr. Agnel School','project/location/1741080623.school.webp','project/specification/1742451538.1741080623.school.png','Great Value Casa Uday Location Advantage New Delhi','drive','3 min','2025-03-04 16:30:23','2025-03-20 12:18:58'),(35,3,'Bal Vikas Vidyalaya, New Delhi','project/location/1741080652.school.webp','project/specification/1742451546.1741080623.school.png','Great Value Casa Uday Location Advantage New Delhi','drive','5 min','2025-03-04 16:30:52','2025-03-20 12:19:06'),(36,3,'Gargi College, New Delhi','project/location/1741080675.college.webp','project/specification/1742451554.1741080675.college.png','Great Value Casa Uday Location Advantage New Delhi','drive','5 min','2025-03-04 16:31:15','2025-03-20 12:19:14'),(37,3,'Gulmohar Park','project/location/1741080717.park.webp','project/specification/1742451563.1741080717.park.png','Great Value Casa Uday Location Advantage New Delhi','drive','5 min','2025-03-04 16:31:57','2025-03-20 12:19:23'),(42,15,'Hajipur Market, Sector 104, Noida','project/location/1741261760.shopping.webp','project/specification/1742446580.1741261760.shopping.png','Great Value Sharanam Location Advantage Noida','drive','4 min','2025-03-06 18:49:20','2025-03-20 10:56:20'),(43,15,'Pathways School Noida','project/location/1741261926.school.webp','project/specification/1742446587.1741261926.school.png','Great Value Sharanam Location Advantage Noida','drive','5 min','2025-03-06 18:52:06','2025-03-20 10:56:27'),(44,15,'Noida’s Premium Sports Destination, Stadeum','project/location/1741261956.auditorium.webp','project/specification/1742446597.1741261956.auditorium.png','Great Value Sharanam Location Advantage Noida','drive','5 min','2025-03-06 18:52:36','2025-03-20 10:56:37'),(45,15,'Serene Clothing, Sector 107, Noida','project/location/1741262007.shopping.webp','project/specification/1742446606.1741261760.shopping.png','Great Value Sharanam Location Advantage Noida','drive','6 min','2025-03-06 18:53:27','2025-03-20 10:56:46'),(46,15,'Chet Ram Sharma College Of Education','project/location/1741262032.college.webp','project/specification/1742446617.1741262032.college.png','Great Value Sharanam Location Advantage Noida','drive','12 min','2025-03-06 18:53:52','2025-03-20 10:56:57'),(47,15,'DLF Mall of India','project/location/1741262058.mall.webp','project/specification/1742446627.1741262058.mall.png','Great Value Sharanam Location Advantage Noida','drive','15 min','2025-03-06 18:54:18','2025-03-20 10:57:07'),(48,15,'Max Super Speciality Hospital, Noida Sector 128','project/location/1741262084.hospital.webp','project/specification/1742446636.1741262084.hospital.png','Great Value Sharanam Location Advantage Noida','drive','16 min','2025-03-06 18:54:44','2025-03-20 10:57:16'),(49,15,'Hazrat Nizamuddin Railway Station','project/location/1741262107.metro.webp','project/specification/1742446646.1741262107.metro.png','Great Value Sharanam Location Advantage Noida','drive','37 min','2025-03-06 18:55:07','2025-03-20 10:57:26'),(50,15,'Indira Gandhi International Airport','project/location/1741262132.airport.webp','project/specification/1742446655.1741262132.airport.png','Great Value Sharanam Location Advantage Noida','drive','1 hour','2025-03-06 18:55:32','2025-03-20 10:57:35'),(51,15,'SkymarkOne Sector 98','project/location/1741262163.buildings.webp','project/specification/1742446662.1741262163.buildings.png','Great Value Sharanam Location Advantage Noida','drive','7 min','2025-03-06 18:56:03','2025-03-20 10:57:42'),(52,15,'Noida-Greater Noida Expressway','project/location/1741262194.road.webp','project/specification/1742446672.1741262194.road.png','Great Value Sharanam Location Advantage Noida','drive','3 min','2025-03-06 18:56:34','2025-03-20 10:57:52'),(53,15,'Starling Mall, Sector 104, Noida','project/location/1741262254.mall.webp','project/specification/1742446680.1741262058.mall.png','Great Value Sharanam Location Advantage Noida','walk','8 min','2025-03-06 18:57:34','2025-03-20 10:58:00'),(54,15,'Noida’s Premium Sports Destination, Stadeum','project/location/1741262294.auditorium.webp','project/specification/1742446690.1741261956.auditorium.png','Great Value Sharanam Location Advantage Noida','walk','10 min','2025-03-06 18:58:14','2025-03-20 10:58:10'),(55,15,'Pathways School Noida','project/location/1741262313.school.webp','project/specification/1742446698.1741261926.school.png','Great Value Sharanam Location Advantage Noida','walk','14 min','2025-03-06 18:58:33','2025-03-20 10:58:18'),(56,15,'Hajipur Market, Sector 104, Noida','project/location/1741262333.shopping.webp','project/specification/1742446705.1741261760.shopping.png','Great Value Sharanam Location Advantage Noida','walk','15 min','2025-03-06 18:58:53','2025-03-20 10:58:25'),(57,15,'Serene Clothing, Sector 107, Noida','project/location/1741262355.shopping.webp','project/specification/1742446713.1741261760.shopping.png','Great Value Sharanam Location Advantage Noida','walk','16 min','2025-03-06 18:59:15','2025-03-20 10:58:33'),(58,3,'Siri Fort Auditorium','project/location/1741263161.auditorium.webp','project/specification/1742451575.1741263161.auditorium.png','Great Value Casa Uday Location Advantage New Delhi','drive','5 min','2025-03-06 19:12:41','2025-03-20 12:19:35'),(59,3,'AIIMS, Delhi','project/location/1741263192.institution.webp','project/specification/1742451584.1741263192.institution.png','Great Value Casa Uday Location Advantage New Delhi','drive','11 min','2025-03-06 19:13:12','2025-03-20 12:19:44'),(60,3,'Safdarjung Hospital','project/location/1741263218.hospital.webp','project/specification/1742451593.1741263218.hospital.png','Great Value Casa Uday Location Advantage New Delhi','drive','11 min','2025-03-06 19:13:38','2025-03-20 12:19:53'),(61,3,'Green Park Metro Station','project/location/1741263238.metro.webp','project/specification/1742451601.1741263238.metro.png','Great Value Casa Uday Location Advantage New Delhi','drive','11 min','2025-03-06 19:13:58','2025-03-20 12:20:01'),(62,3,'Bal Vikas Vidyalaya, New Delhi','project/location/1741263274.school.webp','project/specification/1742451611.1741263274.school.png','Great Value Casa Uday Location Advantage New Delhi','walk','9 min','2025-03-06 19:14:34','2025-03-20 12:20:11'),(63,3,'Fr. Agnel School','project/location/1741263300.school.webp','project/specification/1742451621.1741263274.school.png','Great Value Casa Uday Location Advantage New Delhi','walk','11 min','2025-03-06 19:15:00','2025-03-20 12:20:21'),(64,3,'Gargi College, New Delhi','project/location/1741263326.college.webp','project/specification/1742451631.1741080675.college.png','Great Value Casa Uday Location Advantage New Delhi','walk','14 min','2025-03-06 19:15:26','2025-03-20 12:20:31'),(65,3,'Gulmohar Park','project/location/1741263409.park.webp','project/specification/1742451640.1741080717.park.png','Great Value Casa Uday Location Advantage New Delhi','walk','15 min','2025-03-06 19:16:49','2025-03-20 12:20:40'),(66,3,'Siri Fort Auditorium','project/location/1741263426.auditorium.webp','project/specification/1742451650.1741263161.auditorium.png','Great Value Casa Uday Location Advantage New Delhi','walk','15 min','2025-03-06 19:17:06','2025-03-20 12:20:50'),(67,3,'AIIMS, Delhi','project/location/1741263445.institution.webp','project/specification/1742451658.1741263192.institution.png','Great Value Casa Uday Location Advantage New Delhi','walk','24 min','2025-03-06 19:17:25','2025-03-20 12:20:58'),(68,3,'Safdarjung Hospital','project/location/1741263466.hospital.webp','project/specification/1742451667.1741263218.hospital.png','Great Value Casa Uday Location Advantage New Delhi','walk','35 min','2025-03-06 19:17:46','2025-03-20 12:21:07'),(69,18,'Vardaan Hospital, Sohna-Gurgaon','project/location/1741325151.hospital.webp','project/specification/1742452894.1741325151.hospital.png','Great Value Vilasa Hospital Sohna','drive','4 min','2025-03-07 12:25:51','2025-03-20 12:41:34'),(70,18,'Civil Hospital, Baluda, Sohna','project/location/1741325171.hospital.webp','project/specification/1742452901.1741325151.hospital.png','Great Value Vilasa Medical Healthcare Sohna','drive','4 min','2025-03-07 12:26:11','2025-03-20 12:41:41'),(71,18,'GD Goenka University, Sohna','project/location/1741325195.college.webp','project/specification/1742452909.1741325195.college.png','Great Value Vilasa Education Sohna','drive','5 min','2025-03-07 12:26:35','2025-03-20 12:41:49'),(72,18,'GD Goenka Signature School, Sohna-Gurgaon','project/location/1741325213.school.webp','project/specification/1742452916.1741325213.school.png','Great Value Vilasa School Sohna','drive','8 min','2025-03-07 12:26:53','2025-03-20 12:41:56'),(73,18,'KR Mangalam University, Sohna Road, Gurugram','project/location/1741325232.college.webp','project/specification/1742452923.1741325195.college.png','Great Value Vilasa Learning Education Sohna','drive','8 min','2025-03-07 12:27:12','2025-03-20 12:42:03'),(74,18,'Sohna Sulphur Springs, Sohna','project/location/1741325257.landmark.webp','project/specification/1742452930.1741325257.landmark.png','Great Value Vilasa Location Sohna','drive','8 min','2025-03-07 12:27:37','2025-03-20 12:42:10'),(75,18,'Botanix Nature Resort, Sohna Road, Gurugram','project/location/1741325271.resort.webp','project/specification/1742452938.1741325271.resort.png','Great Value Vilasa Resort Sohna','drive','19 min','2025-03-07 12:27:51','2025-03-20 12:42:18'),(76,18,'Rapid Metro, Sector 26, Gurugram','project/location/1741325289.metro.webp','project/specification/1742452967.1741325289.metro.png','Great Value Vilasa Rapid Metro Sohna','drive','21 min','2025-03-07 12:28:09','2025-03-20 12:42:47'),(77,18,'Damdama Lake, Sohna','project/location/1741325304.resort.webp','project/specification/1742452958.1741325271.resort.png','Great Value Vilasa Resort Sohna','drive','22 min','2025-03-07 12:28:24','2025-03-20 12:42:38'),(78,18,'Kingdom of Dreams, Sector 29, Gurugram','project/location/1741325330.landmark.webp','project/specification/1742452975.1741325257.landmark.png','Great Value Vilasa Location Sohna','drive','33 min','2025-03-07 12:28:50','2025-03-20 12:42:55'),(79,18,'Indira Gandhi International Airport, New Delhi','project/location/1741325346.airport.webp','project/specification/1742452987.1741325346.airport.png','Great Value Vilasa Airport Sohna','drive','45 min','2025-03-07 12:29:06','2025-03-20 12:43:07'),(80,18,'Civil Hospital, Baluda, Sohna','project/location/1741325466.hospital.webp','project/specification/1742452995.1741325151.hospital.png','Great Value Vilasa Healthcare Sohna','walk','14 min','2025-03-07 12:31:06','2025-03-20 12:43:15'),(81,18,'Vardaan Hospital, Sohna-Gurgaon','project/location/1741325482.hospital.webp','project/specification/1742453002.1741325151.hospital.png','Great Value Vilasa Modern Hospital Sohna','walk','15 min','2025-03-07 12:31:22','2025-03-20 12:43:22'),(82,18,'GD Goenka University, Sohna','project/location/1741325506.college.webp','project/specification/1742453009.1741325195.college.png','Great Value Vilasa Education Sohna','walk','18 min','2025-03-07 12:31:46','2025-03-20 12:43:29'),(83,18,'GD Goenka Signature School, Sohna-Gurgaon','project/location/1741325530.school.webp','project/specification/1742453017.1741325213.school.png','Great Value Vilasa School Sohna','walk','22 min','2025-03-07 12:32:10','2025-03-20 12:43:37'),(84,18,'Sohna Sulphur, Sohna','project/location/1741325543.landmark.webp','project/specification/1742453023.1741325257.landmark.png','Great Value Vilasa location Sohna','walk','24 min','2025-03-07 12:32:23','2025-03-20 12:43:43'),(85,18,'KR Mangalam University, Sohna Road, Gurugram','project/location/1741325565.college.webp','project/specification/1742453030.1741325195.college.png','Great Value Vilasa Academic success Sohna','walk','26 min','2025-03-07 12:32:45','2025-03-20 12:43:50'),(86,20,'Chetanya Hospital','project/location/1741328730.hospital.webp','project/specification/1742453922.1741328730.hospital.png','Great Value Sanctuary Location map Gurugram Great Value Sanctuary Hospital Gurugram','drive','1 min','2025-03-07 13:25:30','2025-03-20 12:58:42'),(87,20,'Gurgaon, Old Railway Rd','project/location/1741328752.road.webp','project/specification/1742453930.1741328752.road.png','Great Value Sanctuary Railway Rd Gurugram','drive','1 min','2025-03-07 13:25:52','2025-03-20 12:58:50'),(88,20,'Bank Of Baroda','project/location/1741328773.bank.webp','project/specification/1742453937.1741328773.bank.png','Great Value Sanctuary Bank Gurugram','drive','2 min','2025-03-07 13:26:13','2025-03-20 12:58:57'),(89,20,'Happy High School','project/location/1741328790.school.webp','project/specification/1742453944.1741328790.school.png','Great Value Sanctuary School Gurugram','drive','4 min','2025-03-07 13:26:30','2025-03-20 12:59:04'),(90,20,'WTC Plaza','project/location/1741328807.buildings.webp','project/specification/1742453951.1741328807.buildings.png','Great Value Sanctuary  Plaza Gurugram','drive','11 min','2025-03-07 13:26:47','2025-03-20 12:59:11'),(91,20,'Gurgaon Dreamz Mall','project/location/1741328822.mall.webp','project/specification/1742453959.1741328822.mall.png','Great Value Sanctuary Mall Gurugram','drive','11 min','2025-03-07 13:27:02','2025-03-20 12:59:19'),(92,20,'Indira Gandhi International Airport','project/location/1741328838.flights.webp','project/specification/1742453967.1741328838.flights.png','Great Value Sanctuary Airport Gurugram','drive','13 min','2025-03-07 13:27:18','2025-03-20 12:59:27'),(93,20,'DLF CyberHub','project/location/1741328861.buildings.webp','project/specification/1742453974.1741328807.buildings.png','Great Value Sanctuary DLF CyberHub Gurugram','drive','25 min','2025-03-07 13:27:41','2025-03-20 12:59:34'),(94,20,'Gurgaon, Old Railway Rd,','project/location/1741328881.road.webp','project/specification/1742453982.1741328752.road.png','Great Value Sanctuary Railway Rd Gurugram','walk','3 min','2025-03-07 13:28:01','2025-03-20 12:59:42'),(95,20,'Chetanya Hospital','project/location/1741328896.hospital.webp','project/specification/1742453989.1741328730.hospital.png','Great Value Sanctuary Hospital Gurugram','walk','4 min','2025-03-07 13:28:16','2025-03-20 12:59:49'),(96,20,'Bank Of Baroda','project/location/1741328911.bank.webp','project/specification/1742453911.1741328773.bank.png','Great Value Sanctuary Bank Gurugram','walk','5','2025-03-07 13:28:31','2025-03-20 12:58:31'),(97,20,'Happy High School','project/location/1741328926.school.webp','project/specification/1742453903.1741328790.school.png','Great Value Sanctuary School Gurugram','walk','14 min','2025-03-07 13:28:46','2025-03-20 12:58:23');
/*!40000 ALTER TABLE `project_location_advantages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_locations`
--

DROP TABLE IF EXISTS `project_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longtitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_locations`
--

LOCK TABLES `project_locations` WRITE;
/*!40000 ALTER TABLE `project_locations` DISABLE KEYS */;
INSERT INTO `project_locations` VALUES (1,2,'Sector 107, Noida','28.5481191','77.3769437','1','4','1','2025-02-25 13:42:39','2025-03-07 11:35:41',NULL),(2,1,'Sector 107, Noida, Uttar Pradesh, India','28.5481191','77.3769437','1','1','1','2025-02-25 16:07:15','2025-02-26 13:33:35',NULL),(3,3,'Uday Park, New Delhi','28.5601003','77.2193187','2','2','2','2025-03-04 12:07:52','2025-03-07 17:20:41',NULL),(4,6,'Surajpur, Greater Noida, Uttar Pradesh 201306, India','28.5126976','77.48418579999999','1','4','3','2025-03-04 13:17:39','2025-03-04 13:17:39',NULL),(5,7,'Sohna, Haryana, India','28.2486993','77.06351169999999','4','5','4','2025-03-04 15:36:32','2025-03-04 15:36:32',NULL),(6,8,'Surajpur, Greater Noida, Uttar Pradesh 201306, India','28.5126976','77.48418579999999','1','4','3','2025-03-04 15:39:24','2025-03-04 15:39:24',NULL),(7,9,'Ram Ghat Road, Aligarh','27.8702566','78.05805149999999','1','6','5','2025-03-04 16:28:50','2025-03-04 16:28:50',NULL),(8,10,'Mehrauli, New Delhi, Delhi, India','28.5204882','77.1786869','2','2','6','2025-03-04 16:30:31','2025-03-04 16:30:31',NULL),(9,11,'Saket, New Delhi, Delhi 110017, India','28.5220971','77.2101534','2','2','7','2025-03-04 16:33:55','2025-03-04 16:33:55',NULL),(10,12,'Worli, Mumbai, Maharashtra, India','18.9986406','72.8173599','6','9','16','2025-03-04 16:35:27','2025-03-10 10:27:32',NULL),(11,13,'Madangir, New Delhi, Delhi 110062, India','28.5199221','77.2304564','2','2','9','2025-03-04 16:38:17','2025-03-04 16:38:17',NULL),(12,15,'Sector 107, Noida','28.5481191','77.3769437','1','1','1','2025-03-05 12:39:22','2025-03-06 18:18:56',NULL),(13,18,'SECTOR 6, SOHNA','28.4275535','77.0491679','4','5','12','2025-03-07 11:45:22','2025-03-10 10:41:33',NULL),(14,19,'31, Uday Chand Marg, South Extension I, New Basti, Kotla Mubarakpur, New Delhi, Delhi 110003, India','28.574598','77.2209081','2','2','2','2025-03-07 12:10:47','2025-03-07 12:10:47',NULL),(15,20,'SECTOR 105, GURUGRAM','28.4951851','77.0114025','4','7','14','2025-03-07 12:48:31','2025-03-07 13:02:02',NULL);
/*!40000 ALTER TABLE `project_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_prices`
--

DROP TABLE IF EXISTS `project_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `sub_typology` int DEFAULT NULL,
  `size` int DEFAULT NULL,
  `size_type` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_prices`
--

LOCK TABLES `project_prices` WRITE;
/*!40000 ALTER TABLE `project_prices` DISABLE KEYS */;
INSERT INTO `project_prices` VALUES (1,1,1,106,1,7400000,1,'2025-02-26 13:37:01','2025-02-27 19:16:52','2025-02-27 19:16:52'),(2,2,3,106,1,7400000,1,'2025-02-26 14:23:39','2025-03-03 16:23:15','2025-03-03 16:23:15'),(3,1,8,153,1,10700000,1,'2025-02-26 18:00:38','2025-02-26 18:00:38',NULL),(4,1,1,212,1,14800000,1,'2025-02-26 18:01:09','2025-02-26 18:01:09',NULL),(5,1,7,212,1,265985961,1,'2025-02-26 19:32:00','2025-02-26 20:05:05',NULL),(6,1,3,2000,2,20000,1,'2025-02-27 19:18:37','2025-02-27 19:18:41','2025-02-27 19:18:41'),(7,2,7,1350,1,8613000,1,'2025-03-03 16:24:52','2025-03-03 16:27:43',NULL),(8,2,8,1700,1,10800000,1,'2025-03-03 16:25:42','2025-03-03 16:27:51',NULL),(9,2,23,1840,1,11700000,1,'2025-03-03 16:27:31','2025-03-12 10:47:18',NULL),(10,15,7,1139,1,7400000,1,'2025-03-06 14:56:25','2025-03-06 14:56:25',NULL),(11,15,8,1647,1,10700000,1,'2025-03-06 14:57:17','2025-03-06 14:57:17',NULL),(12,15,1,2283,1,14800000,1,'2025-03-06 14:57:38','2025-03-06 14:57:38',NULL);
/*!40000 ALTER TABLE `project_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_sections`
--

DROP TABLE IF EXISTS `project_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seq` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL,
  `section_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_sections`
--

LOCK TABLES `project_sections` WRITE;
/*!40000 ALTER TABLE `project_sections` DISABLE KEYS */;
INSERT INTO `project_sections` VALUES (1,1,2,'1','About Us','About Us','projectSections/1740991035.about.webp','projectSections/1742447631.1740991035.about.jpg','Great Value Anandam Living environment Noida','<p><span style=\"background-color: rgb(239, 245, 250);\">Great Value Realty Anandam is an exquisite residential project located in Sector 107, Noida. Offering 2, 3 and 4 BHK apartments thoughtfully designed to blend luxury with convenience, providing residents with a serene and opulent living experience.</span></p>',0,'2025-02-25 13:57:01','2025-03-20 11:13:51'),(2,2,2,'2','Amenities',NULL,NULL,NULL,NULL,NULL,0,'2025-02-25 14:43:59','2025-02-25 14:43:59'),(3,4,2,'4','Highlights',NULL,NULL,NULL,NULL,'null',0,'2025-02-25 17:43:19','2025-03-07 14:11:18'),(4,5,2,'6','Master Plan',NULL,'projectSections/1742279731.anandam-masterplan.webp','projectSections/1742449262.1742279731.anandam-masterplan.jpg','Great Value Anandam Master plan Noida','null',0,'2025-02-25 18:11:00','2025-03-20 11:41:02'),(5,6,2,'7','Floor Plans',NULL,NULL,NULL,NULL,NULL,0,'2025-02-25 18:17:29','2025-03-08 12:58:35'),(6,6,2,'8','Location Advantage',NULL,'projectSections/1740996105.location.webp','projectSections/1742446978.1740996105.location.jpg','Great Value Anandam Location map Noida','<p>A well-connected haven in Great Value Realty Anandam Sector 107, Noida, where prime location meets seamless convenience, ensuring every necessity is within reach and every journey feels effortless.</p>',0,'2025-02-25 19:48:44','2025-03-20 11:02:58'),(7,7,2,'9','Project Gallery',NULL,NULL,NULL,NULL,NULL,0,'2025-02-26 12:07:26','2025-03-08 12:58:47'),(8,5,1,'1','ABOUT US','ABOUT US','projectSections/1740649881.about.webp',NULL,'ABOUT US IMG','<p>A serene haven in Noida offering ready-to-move flats that rejuvenate your soul. Thoughtfully crafted, it’s more than a home; it’s your family’s tranquil retreat that seamlessly combines modern amenities, excellent connectivity, and a vibrant community to deliver a living experience like no other.</p>',0,'2025-02-26 13:34:25','2025-03-08 12:42:16'),(9,3,2,'3','Price List',NULL,NULL,NULL,NULL,NULL,0,'2025-02-26 13:46:01','2025-02-26 13:46:01'),(10,5,1,'5','Specifications',NULL,NULL,NULL,NULL,'null',0,'2025-02-26 17:33:18','2025-02-28 12:25:51'),(11,3,1,'3','Price List',NULL,NULL,NULL,NULL,NULL,0,'2025-02-26 17:40:20','2025-02-26 17:56:35'),(12,4,1,'4','Highlights','Highlights',NULL,NULL,NULL,NULL,0,'2025-02-26 18:01:44','2025-02-26 18:01:44'),(13,6,1,'6','Master Plan',NULL,'projectSections/1740567842.masterplan.webp',NULL,'Master Plan img',NULL,0,'2025-02-26 18:04:02','2025-02-26 18:04:02'),(14,7,1,'7','Floor Plans','Floor Plans',NULL,NULL,NULL,NULL,0,'2025-02-26 18:04:23','2025-02-26 18:04:23'),(15,3,1,'2','Highlights',NULL,NULL,NULL,'Smart Living Values: Convenience, Sustainability, Innovation, Security, Comfort, Community','Master Plan',0,'2025-02-27 16:40:01','2025-03-06 19:11:53'),(16,8,1,'8','Location Advantage',NULL,'projectSections/1740649302.location.webp',NULL,'Location Advantage img',NULL,0,'2025-02-27 16:41:42','2025-02-27 16:41:42'),(17,9,1,'9','Project Gallery',NULL,NULL,NULL,NULL,'null',0,'2025-02-27 16:42:48','2025-03-03 12:38:03'),(18,4,2,'5','Specifications',NULL,NULL,NULL,NULL,NULL,0,'2025-03-03 16:29:45','2025-03-08 12:58:25'),(19,0,3,'1','ABOUT US','ABOUT US','projectSections/1741065875.aboutt.webp','projectSections/1742449915.1741065875.aboutt.jpg','Great Value Casa Uday Modern Living and dining area New Delhi','<p>CASA UDAY, an initiative by the Great Value Group, presents luxury modern builder floors at 31 Uday Park, New Delhi. Emphasizing eco-friendly designs, these residences offer abundant natural light and contemporary living spaces, ensuring a harmonious blend of comfort and sustainability.</p>',0,'2025-03-04 12:24:35','2025-03-20 11:51:55'),(20,0,3,'2','Amenities',NULL,NULL,NULL,NULL,NULL,0,'2025-03-04 12:33:18','2025-03-04 12:33:18'),(21,0,3,'3','Price List',NULL,NULL,NULL,NULL,NULL,0,'2025-03-04 12:33:44','2025-03-04 12:33:44'),(22,0,3,'4','Highlights',NULL,NULL,NULL,NULL,NULL,0,'2025-03-04 12:34:06','2025-03-04 12:34:06'),(23,0,3,'5','Specifications',NULL,NULL,NULL,NULL,NULL,0,'2025-03-04 12:34:55','2025-03-04 12:34:55'),(24,0,3,'6','Master Plan',NULL,'projectSections/1741067671.masterplan.webp','projectSections/1742450410.masterplan.jpg','Great Value Casa Uday Master plan New Delhi','null',0,'2025-03-04 12:54:31','2025-03-20 12:00:10'),(25,0,3,'7','Floor Plans',NULL,NULL,NULL,NULL,NULL,0,'2025-03-04 12:54:44','2025-03-04 12:54:44'),(26,0,3,'8','Location Advantage',NULL,'projectSections/1741080587.location (1).webp','projectSections/1742451383.location.jpg','Great Value Casa Uday Location map New Delhi','<p>A well-connected haven at 31, Uday Park, New Delhi, where the charm of a prime locale meets seamless convenience, ensuring every necessity is within reach and every journey feels effortless.</p>',0,'2025-03-04 16:29:47','2025-03-20 12:16:23'),(27,1,15,'1','ABOUT US','ABOUT US','projectSections/1741246431.sharnam-about-image.webp','projectSections/1742383759.1741246431.sharnam-about-image.jpg','Great Value Sharanam Residential complex Noida','<p>Great Value Realty Sharanam, a serene haven in Noida offering ready-to-move flats that rejuvenate your soul. Thoughtfully crafted, it’s more than a home; it’s your family’s tranquil retreat that seamlessly combines modern amenities, excellent connectivity, and a vibrant community to deliver a living experience like no other.</p>',0,'2025-03-06 14:33:51','2025-03-19 17:29:19'),(28,2,15,'2','Amenities',NULL,NULL,NULL,NULL,'null',0,'2025-03-06 14:41:01','2025-03-08 13:32:04'),(29,3,15,'3','Price List',NULL,NULL,NULL,NULL,NULL,0,'2025-03-06 14:55:30','2025-03-08 13:32:00'),(30,4,15,'4','Highlights',NULL,NULL,NULL,NULL,NULL,0,'2025-03-06 14:59:45','2025-03-06 14:59:48'),(31,5,15,'5','Specifications',NULL,NULL,NULL,NULL,NULL,0,'2025-03-06 15:33:13','2025-03-06 15:33:18'),(32,6,15,'6','Master Plan',NULL,'projectSections/1741255932.sharnam-master-plan.webp','projectSections/1742386340.1741255932.sharnam-master-plan.jpg','Great Value Sharanam Master plan Noida','null',0,'2025-03-06 17:12:06','2025-03-19 18:12:20'),(33,7,15,'7','Floor Plans',NULL,NULL,NULL,NULL,NULL,0,'2025-03-06 17:15:40','2025-03-06 17:15:45'),(34,8,15,'8','Location Advantage',NULL,'projectSections/1741261708.location.webp','projectSections/1742446349.1741261708.location.jpg','Great Value Sharanam Location map Noida','<p>Discover homes strategically placed in Great Value Realty Sharanam Sector 107, Noida with thriving neighborhoods, where connectivity meets convenience, offering seamless access to key hubs, top schools, and a vibrant lifestyle.</p>',0,'2025-03-06 18:48:28','2025-03-20 10:52:29'),(35,9,15,'9','Project Gallery',NULL,NULL,NULL,NULL,NULL,0,'2025-03-06 18:59:46','2025-03-08 13:23:45'),(36,0,3,'9','Project Gallery',NULL,NULL,NULL,NULL,NULL,0,'2025-03-06 19:18:54','2025-03-06 19:18:54'),(37,1,18,'1','ABOUT US',NULL,'projectSections/1741323932.about.webp','projectSections/1742452408.1741323932.about.jpg','Great Value Vilasa Nature Sohna','<p>Great Value Realty Vilasa offers a rare opportunity to own premium residential plots in Sector 6, Sohna. Designed for investors and homeowners alike, it provides the freedom to create a personalized living space while promising high returns in a rapidly growing location.</p>',0,'2025-03-07 12:05:32','2025-03-20 12:33:28'),(38,2,18,'2','Amenities',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 12:06:06','2025-03-08 12:50:45'),(39,3,18,'3','Price List',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 12:14:10','2025-03-08 12:50:51'),(40,4,18,'4','Highlights',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 12:14:33','2025-03-08 12:51:04'),(41,4,18,'5','Specifications',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 12:18:25','2025-03-08 12:52:35'),(42,5,18,'6','Master Plan',NULL,'projectSections/1741324998.masterplan.webp','projectSections/1742452780.1741324998.masterplan.jpg','Great Value Vilasa Master plan Sohna','null',0,'2025-03-07 12:23:18','2025-03-20 12:39:40'),(43,8,18,'8','Location Advantage',NULL,'projectSections/1741325069.location.webp','projectSections/1742452791.1741325069.location.jpg','Great Value Vilasa Location map Sohna','<p>Vilasa, nestled on the Gurgaon-Sohna highway in Sector 6, Sohna, offers a perfect blend of urban convenience and natural tranquility. Just 15 minutes from Rajiv Chowk and 45 minutes from IGI Airport, it provides seamless access to key commercial and recreational hubs while embracing the charm of its prime location.</p>',0,'2025-03-07 12:24:29','2025-03-20 12:39:51'),(44,9,18,'9','Project Gallery',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 12:33:36','2025-03-08 12:52:23'),(45,0,20,'1','ABOUT US',NULL,'projectSections/1741327509.about.webp','projectSections/1742453465.1741327509.about.jpg','Great Value Sanctuary Luxurious and active lifestyle Gurugram','<p>Great Value Realty Sanctuary 105 is more than just an address; it’s an open escape, offering the perfect retreat from the hustle and bustle of real Gurugram, designed to provide each resident with a single neighbor. An address seamlessly blends the contrasting elements of art, architecture, and nature.</p>',0,'2025-03-07 13:05:09','2025-03-20 12:51:05'),(46,0,20,'2','Amenities',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 13:05:31','2025-03-07 13:05:31'),(47,0,20,'3','Price List',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 13:16:05','2025-03-07 13:16:05'),(48,0,20,'4','Highlights',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 13:16:21','2025-03-07 13:16:21'),(49,0,20,'5','Specifications',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 13:18:46','2025-03-07 13:18:46'),(51,0,20,'8','Location Advantage',NULL,'projectSections/1741328668.location.webp','projectSections/1742453857.1741328668.location.jpg','Great Value Sanctuary Location map Gurugram','<p>Sanctuary 105 is nestled in Sector 105, Gurugram, offering a perfect blend of urban convenience and natural tranquility.</p>',0,'2025-03-07 13:24:28','2025-03-20 12:57:37'),(52,0,20,'9','Project Gallery',NULL,NULL,NULL,NULL,NULL,0,'2025-03-07 13:29:30','2025-03-07 13:29:30');
/*!40000 ALTER TABLE `project_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_sections_list`
--

DROP TABLE IF EXISTS `project_sections_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_sections_list` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `seq` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_sections_list`
--

LOCK TABLES `project_sections_list` WRITE;
/*!40000 ALTER TABLE `project_sections_list` DISABLE KEYS */;
INSERT INTO `project_sections_list` VALUES (1,'Overview',NULL,'overview','1','1',NULL,NULL),(2,'Amenities',NULL,'amenities','1','1',NULL,NULL),(3,'Price List',NULL,'price-list','1','1',NULL,NULL),(4,'Highlights',NULL,'highlights','1','1',NULL,NULL),(5,'Specifications',NULL,'specifications','1','1',NULL,NULL),(6,'Master plan',NULL,'master-plan','1','1',NULL,NULL),(7,'Floor plan',NULL,'floor-plan','1','1',NULL,NULL),(8,'Location Advantage',NULL,'location-advantage','1','1',NULL,NULL),(9,'Gallery',NULL,'gallery','1','1',NULL,NULL);
/*!40000 ALTER TABLE `project_sections_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_specification_lists`
--

DROP TABLE IF EXISTS `project_specification_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_specification_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `spec_id` int NOT NULL,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_specification_lists`
--

LOCK TABLES `project_specification_lists` WRITE;
/*!40000 ALTER TABLE `project_specification_lists` DISABLE KEYS */;
INSERT INTO `project_specification_lists` VALUES (4,1,4,'project/specification/1740733544.wall.webp',NULL,'Wall Finishes icon','OBD for interiors, weatherproof paint for exteriors, and ceramic tiles in toilets and kitchens.',1,'2025-02-28 16:03:01','2025-02-28 16:05:44',NULL),(5,1,5,'project/specification/1740733563.wall.webp',NULL,'Wall Finishes icon','OBD for interiors, weatherproof paint for exteriors, and ceramic tiles in toilets and kitchens.',1,'2025-02-28 16:06:03','2025-02-28 16:06:03',NULL),(6,1,7,'project/specification/1740733602.flooring.webp',NULL,'Flooring icon','Vitrified tiles in the living, dining, and bedrooms; anti-skid tiles in the kitchen, balconies, and toilets.',1,'2025-02-28 16:06:42','2025-02-28 16:06:42',NULL),(7,1,6,'project/specification/1740733633.kitchen.webp',NULL,'Kitchen icon','Granite countertop with stainless steel sink and designer ceramic tiles.',1,'2025-02-28 16:07:13','2025-02-28 16:07:13',NULL),(8,1,8,'project/specification/1740733662.toilet.webp',NULL,'Toilets icon','Premium CP fittings with white sanitary ware and geyser provision.',1,'2025-02-28 16:07:42','2025-02-28 16:07:42',NULL),(10,2,9,'project/specification/1741063448.dining.webp','project/specification/1742448911.1741063448.dining.png','Great Value Anandam Living/Dining Noida','Vitrified tile flooring with OBD finish walls and ceiling.',1,'2025-03-04 11:44:08','2025-03-20 11:35:11',NULL),(11,2,10,'project/specification/1741063477.bedroom.webp','project/specification/1742448939.1741063477.bedroom.png','Great Value Anandam Master Bedroom Noida','Laminated wooden flooring with elegant OBD walls.',1,'2025-03-04 11:44:37','2025-03-20 11:35:39',NULL),(12,2,11,'project/specification/1741063515.bedroom.webp','project/specification/1742448946.1741063477.bedroom.png','Great Value Anandam Bedrooms Noida','Vitrified tile flooring with a smooth OBD finish.',1,'2025-03-04 11:45:15','2025-03-20 11:35:46',NULL),(13,2,6,'project/specification/1741063546.kitchen.webp','project/specification/1742448953.1741063546.kitchen.png','Great Value Anandam Kitchen Noida','Ceramic with a granite countertop and SS sink.',1,'2025-03-04 11:45:46','2025-03-20 11:35:53',NULL),(14,2,8,'project/specification/1741063578.toilet.webp','project/specification/1742448960.1741063578.toilet.png','Great Value Anandam Toilets Noida','Designer ceramic tiles with premium CP fittings.',1,'2025-03-04 11:46:18','2025-03-20 11:36:00',NULL),(15,2,12,'project/specification/1741063613.study.webp','project/specification/1742448968.1741063613.study.png','Great Value Anandam Study/Servant Room Noida','Simple vitrified flooring with OBD walls.',1,'2025-03-04 11:46:53','2025-03-20 11:36:08',NULL),(16,2,13,'project/specification/1741063645.terrace.webp','project/specification/1742448976.1741063645.terrace.png','Great Value Anandam Balconies/Terrace Noida','Ceramic tiles with a cement-painted finish.',1,'2025-03-04 11:47:25','2025-03-20 11:36:16',NULL),(17,2,15,'project/specification/1741063663.lobby.webp','project/specification/1742448984.1741063663.lobby.png','Great Value Anandam Corridors/Lobby Noida','Kota/marble/tiled flooring with a whitewashed ceiling.',1,'2025-03-04 11:47:43','2025-03-20 11:36:24',NULL),(18,2,14,'project/specification/1741063689.stairs.webp','project/specification/1742448992.1741063689.stairs.png','Great Value Anandam Staircases Noida','Marble/Kota stone steps for durability and style.',1,'2025-03-04 11:48:09','2025-03-20 11:36:32',NULL),(20,3,4,'project/specification/1741067195.structure.webp','project/specification/1742450234.1741067195.structure.png','Great Value Casa Uday Structure New Delhi','Earthquake-resistant design with high-quality materials.',1,'2025-03-04 12:46:35','2025-03-20 11:57:14',NULL),(21,3,7,'project/specification/1741067227.flooring.webp','project/specification/1742450253.1741067227.flooring.png','Great Value Casa Uday Flooring New Delhi','Italian marble in living, dining, bedrooms & kitchens.',1,'2025-03-04 12:47:07','2025-03-20 11:57:33',NULL),(22,3,16,'project/specification/1741067292.walls-paints.webp','project/specification/1742450243.1741067292.walls-paints.png','Great Value Casa Uday Walls & Paint New Delhi','P.O.P. punning, velvet/textured paint, false ceilings.',1,'2025-03-04 12:48:12','2025-03-20 11:57:23',NULL),(23,3,17,'project/specification/1741067457.woodworking.webp','project/specification/1742450262.1741067457.woodworking.png','Great Value Casa Uday Woodwork New Delhi','Waterproof ply doors, premium wooden entrance, ample storage.',1,'2025-03-04 12:50:57','2025-03-20 11:57:42',NULL),(24,3,18,'project/specification/1741067520.bathroom.webp','project/specification/1742450272.1741067520.bathroom.png','Great Value Casa Uday Bathrooms New Delhi','Designer fittings, toughened glass partitions, geysers, exhaust fans.',1,'2025-03-04 12:52:00','2025-03-20 11:57:52',NULL),(25,3,6,'project/specification/1741067537.kitchen.webp','project/specification/1742450281.1741067537.kitchen.png','Great Value Casa Uday Kitchen New Delhi','Modular Italian-style kitchen, chimney, geyser, LPG pipeline.',1,'2025-03-04 12:52:17','2025-03-20 11:58:01',NULL),(26,3,19,'project/specification/1741067585.water-pipe.webp','project/specification/1742450289.1741067585.water-pipe.png','Great Value Casa Uday Water Supply New Delhi','24/7 provision with underground & rooftop tanks.',1,'2025-03-04 12:53:05','2025-03-20 11:58:09',NULL),(32,15,4,'project/specification/1741258165.structure_icon.webp','project/specification/1742386118.1741258165.structure_icon.png','Great Value Sharanam structure Noida','RCC frame structure ensuring durability and earthquake resistance.',1,'2025-03-06 17:49:25','2025-03-19 18:08:38',NULL),(33,18,20,'project/specification/1741324842.plot.webp','project/specification/1742452619.1741324842.plot.png','Great Value Vilasa Plot Sizes Sohna','Ranging from 122 sq yds to 172 sq yds',1,'2025-03-07 12:20:42','2025-03-20 12:36:59',NULL),(34,18,21,'project/specification/1741324870.security.webp','project/specification/1742452626.1741324870.security.png','Great Value Vilasa Security & Facilities Sohna','Gated entry, parks, and essential services.',1,'2025-03-07 12:21:10','2025-03-20 12:37:06',NULL),(35,18,22,'project/specification/1741324891.recreation.webp','project/specification/1742452634.1741324891.recreation.png','Great Value Vilasa Recreation Sohna','Cricket, badminton, basketball, golf putting greens.',1,'2025-03-07 12:21:31','2025-03-20 12:37:14',NULL),(36,18,23,'project/specification/1742452563.rr.webp','project/specification/1742452644.rr.png','Great Value Vilasa Roads & Infrastructure Sohna','10m wide roads, landscaped spaces.',1,'2025-03-07 12:21:45','2025-03-20 12:37:24',NULL),(37,18,24,'project/specification/1741324926.commercialComplex.webp','project/specification/1742452651.1741324926.commercialComplex.png','Great Value Vilasa Commercial Complex Sohna','Dedicated retail spaces within the community.',1,'2025-03-07 12:22:06','2025-03-20 12:37:31',NULL),(38,18,25,'project/specification/1741324941.communitySpaces.webp','project/specification/1742452661.1741324941.communitySpaces.png','Great Value Vilasa Community Spaces Sohna','European-style gazebos, open lawns, and seating areas.',1,'2025-03-07 12:22:21','2025-03-20 12:37:41',NULL),(39,18,26,'project/specification/1741324958.sustainableLiving.webp','project/specification/1742452669.1741324958.sustainableLiving.png','Great Value Vilasa Sustainable Living Sohna','Green spaces and well-planned drainage systems.',1,'2025-03-07 12:22:38','2025-03-20 12:37:49',NULL),(40,20,27,'project/specification/1741328346.walls.webp','project/specification/1742453634.1741328346.walls.png','Great Value Sanctuary Master Bedroom-Walls Gurugram','Master bedroom walls are finished with oil-bound dust to give them a smooth and elegant look.',1,'2025-03-07 13:19:06','2025-03-20 12:53:54',NULL),(41,20,28,'project/specification/1741328367.flooring.webp','project/specification/1742453641.1741328367.flooring.png','Great Value Sanctuary Master Bedroom-Flooring Gurugram','Master bedroom flooring is adorned with durable and stylish Vitrified tiles.',1,'2025-03-07 13:19:27','2025-03-20 12:54:01',NULL),(42,20,29,'project/specification/1741328388.ac.webp','project/specification/1742453649.1741328388.ac.png','Great Value Sanctuary Fittings & Fixtures Gurugram','Fitted with high-efficiency VRV AC for superior climate control.',1,'2025-03-07 13:19:48','2025-03-20 12:54:09',NULL),(43,20,30,'project/specification/1741328407.flooring.webp','project/specification/1742453656.1741328367.flooring.png','Great Value Sanctuary Bedrooms-Flooring Gurugram','Other bedrooms feature elegant and durable Vitrified Tiles flooring.',1,'2025-03-07 13:20:07','2025-03-20 12:54:16',NULL),(44,20,31,'project/specification/1741328425.walls.webp','project/specification/1742453663.1741328346.walls.png','Great Value Sanctuary Walls Gurugram','The walls are finished with Oil Bound Distemper for a smooth and refined look.',1,'2025-03-07 13:20:25','2025-03-20 12:54:23',NULL),(45,20,32,'project/specification/1741328443.flooring.webp','project/specification/1742453670.1741328367.flooring.png','Great Value Sanctuary Living Area-Flooring Gurugram','The living area features sleek and durable Vitrified Tiles flooring.',1,'2025-03-07 13:20:43','2025-03-20 12:54:30',NULL),(46,20,33,'project/specification/1741328458.kitchen.webp','project/specification/1742453677.1741328458.kitchen.png','Great Value Sanctuary Kitchen-Equipments Gurugram','The kitchen is equipped with a stylish and functional Modular Kitchen.',1,'2025-03-07 13:20:58','2025-03-20 12:54:37',NULL),(47,20,34,'project/specification/1741328473.bathtub.webp','project/specification/1742453685.1741328473.bathtub.png','Great Value Sanctuary Bathroom Gurugram','Bathrooms feature elegant and high-quality Premium Bath Fittings.',1,'2025-03-07 13:21:13','2025-03-20 12:54:45',NULL),(48,20,4,'project/specification/1741328491.walls.webp','project/specification/1742453692.1741328346.walls.png','Great Value Sanctuary Structure Gurugram','The building is designed with a robust RCC Frame Structure for enhanced stability and durability.',1,'2025-03-07 13:21:31','2025-03-20 12:54:52',NULL),(49,15,7,'project/specification/1741345617.flooring.webp','project/specification/1742386128.1741345617.flooring.png','Great Value Sharanam Flooring Noida','Vitrified tiles in the living, dining, and bedrooms; anti-skid tiles in the kitchen, balconies, and toilets.',1,'2025-03-07 18:06:57','2025-03-19 18:08:48',NULL),(50,15,5,'project/specification/1741345633.wall.webp','project/specification/1742386136.1741345633.wall.png','Great Value Sharanam Wall Finishes Noida','OBD for interiors, weatherproof paint for exteriors, and ceramic tiles in toilets and kitchens.',1,'2025-03-07 18:07:13','2025-03-19 18:08:56',NULL),(51,15,35,'project/specification/1741345733.door.webp','project/specification/1742386143.1741345733.door.png','Great Value Sharanam Doors & Windows Noida','Hardwood frame doors with flush shutters; Aluminum/UPVC windows with clear glass.',1,'2025-03-07 18:08:53','2025-03-19 18:09:03',NULL),(52,15,6,'project/specification/1741345744.kitchen.webp','project/specification/1742386151.1741345744.kitchen.png','Great Value Sharanam Kitchen Noida','Granite countertop with stainless steel sink and designer ceramic tiles.',1,'2025-03-07 18:09:04','2025-03-19 18:09:11',NULL),(53,15,8,'project/specification/1741345755.toilet.webp','project/specification/1742386158.1741345755.toilet.png','Great Value Sharanam Toilets Noida','Premium CP fittings with white sanitary ware and geyser provision.',1,'2025-03-07 18:09:15','2025-03-19 18:09:18',NULL),(54,15,36,'project/specification/1741345769.electrical.webp','project/specification/1742386165.1741345769.electrical.png','Great Value Sharanam Electrical Noida','Concealed copper wiring with modular switches and power backup.',1,'2025-03-07 18:09:29','2025-03-19 18:09:25',NULL),(55,15,37,'project/specification/1741345780.security.webp','project/specification/1742386172.1741345780.security.png','Great Value Sharanam Security Noida','CCTV surveillance and intercom system for enhanced safety.',1,'2025-03-07 18:09:40','2025-03-19 18:09:32',NULL),(56,3,36,'project/specification/1741425522.electricity.webp','project/specification/1742450298.1741425522.electricity.png','Great Value Casa Uday Electrical New Delhi','Fire-retardant wiring, LED lighting, Schindler lift, power backup.',1,'2025-03-08 16:18:42','2025-03-20 11:58:18',NULL),(57,3,38,'project/specification/1741425689.features.webp','project/specification/1742450305.1741425689.features.png','Great Value Casa Uday Special Features New Delhi','Spacious balconies, landscaped basement, modern façade.',1,'2025-03-08 16:21:29','2025-03-20 11:58:25',NULL),(58,3,39,'project/specification/1741425709.customization.webp','project/specification/1742450313.1741425709.customization.png','Great Value Casa Uday Customization New Delhi','Buyer preferences are accommodated with flexible designs.',1,'2025-03-08 16:21:49','2025-03-20 11:58:33',NULL);
/*!40000 ALTER TABLE `project_specification_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_specifications`
--

DROP TABLE IF EXISTS `project_specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_specifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_specifications`
--

LOCK TABLES `project_specifications` WRITE;
/*!40000 ALTER TABLE `project_specifications` DISABLE KEYS */;
INSERT INTO `project_specifications` VALUES (4,'structure',1,'2025-02-28 16:02:37','2025-02-28 16:02:37',NULL),(5,'Wall Finishes',1,'2025-02-28 16:04:21','2025-02-28 16:04:21',NULL),(6,'Kitchen',1,'2025-02-28 16:04:32','2025-02-28 16:04:32',NULL),(7,'Flooring',1,'2025-02-28 16:04:40','2025-02-28 16:04:40',NULL),(8,'Toilets',1,'2025-02-28 16:04:53','2025-02-28 16:04:53',NULL),(9,'Living/Dining',1,'2025-03-03 16:32:12','2025-03-03 16:32:12',NULL),(10,'Master Bedroom',1,'2025-03-03 16:32:20','2025-03-03 16:32:20',NULL),(11,'Other Bedrooms',1,'2025-03-03 16:32:29','2025-03-03 16:32:29',NULL),(12,'Study/Servant Room',1,'2025-03-03 16:33:06','2025-03-03 16:33:06',NULL),(13,'Balconies/Terrace',1,'2025-03-03 16:33:21','2025-03-03 16:33:21',NULL),(14,'Staircases',1,'2025-03-03 16:36:54','2025-03-03 16:36:54',NULL),(15,'Corridors/Lobby',1,'2025-03-03 16:37:23','2025-03-03 16:37:23',NULL),(16,'Walls & Paint',1,'2025-03-04 12:47:40','2025-03-04 12:47:40',NULL),(17,'Woodwork',1,'2025-03-04 12:50:33','2025-03-04 12:50:33',NULL),(18,'Bathrooms',1,'2025-03-04 12:51:39','2025-03-04 12:51:39',NULL),(19,'Water Supply',1,'2025-03-04 12:52:34','2025-03-04 12:52:34',NULL),(20,'Plot Sizes',1,'2025-03-07 12:19:19','2025-03-07 12:19:19',NULL),(21,'Security & Facilities',1,'2025-03-07 12:19:25','2025-03-07 12:19:25',NULL),(22,'Recreation',1,'2025-03-07 12:19:33','2025-03-07 12:19:33',NULL),(23,'Roads & Infrastructure',1,'2025-03-07 12:19:39','2025-03-07 12:19:39',NULL),(24,'Commercial Complex',1,'2025-03-07 12:19:47','2025-03-07 12:19:47',NULL),(25,'Community Spaces',1,'2025-03-07 12:19:54','2025-03-07 12:19:54',NULL),(26,'Sustainable Living',1,'2025-03-07 12:20:03','2025-03-07 12:20:03',NULL),(27,'Master Bedroom-Walls',1,'2025-03-07 13:17:18','2025-03-07 13:17:18',NULL),(28,'Master Bedroom-Flooring',1,'2025-03-07 13:17:24','2025-03-07 13:17:24',NULL),(29,'Fittings & Fixtures',1,'2025-03-07 13:17:33','2025-03-07 13:17:33',NULL),(30,'Other Bedrooms-Flooring',1,'2025-03-07 13:17:39','2025-03-07 13:17:39',NULL),(31,'Walls',1,'2025-03-07 13:17:47','2025-03-07 13:17:47',NULL),(32,'Living Area-Flooring',1,'2025-03-07 13:17:57','2025-03-07 13:17:57',NULL),(33,'Kitchen-Equipments',1,'2025-03-07 13:18:03','2025-03-07 13:18:03',NULL),(34,'Bathroom',1,'2025-03-07 13:18:10','2025-03-07 13:18:10',NULL),(35,'Doors & Windows',1,'2025-03-07 18:07:50','2025-03-07 18:07:50',NULL),(36,'Electrical',1,'2025-03-07 18:08:08','2025-03-07 18:08:08',NULL),(37,'Security',1,'2025-03-07 18:08:17','2025-03-07 18:08:17',NULL),(38,'Special Features',1,'2025-03-08 16:20:47','2025-03-08 16:20:47',NULL),(39,'Customization',1,'2025-03-08 16:20:55','2025-03-08 16:20:55',NULL);
/*!40000 ALTER TABLE `project_specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categorie_id` int NOT NULL,
  `typologie_id` int NOT NULL,
  `sub_typologie_id` int DEFAULT NULL,
  `project_status` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ivr_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rera_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_feature_image` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_alternative_feature_image` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `brochure` longtext COLLATE utf8mb4_unicode_ci,
  `seq` int NOT NULL DEFAULT '1',
  `cdn` longtext COLLATE utf8mb4_unicode_ci,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `meta_title` longtext COLLATE utf8mb4_unicode_ci,
  `meta_keyword` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_author` text COLLATE utf8mb4_unicode_ci,
  `head_data` longtext COLLATE utf8mb4_unicode_ci,
  `footer_data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (2,1,4,24,1,'anandam','anandam-apartments-noida','null',NULL,'null',NULL,'project/feature-image/1742462747_1740990912_fee_webp','project/feature-thumbnail/1740990912.anandam.webp','project/feature-image/1742462747_1740990912_fee_jpg','project/feature-thumbnail/1742462747_1740990912_anandam_jpg','project/feature-image/1742462553_GVR_WEBSITE_HOME_PG_PHN_webp','project/feature-image/1742462553_GVR_WEBSITE_HOME_PG_PHN_jpg','Great Value Anandam Luxury residential apartment Noida','undefined','Sector 107, Noida',1,NULL,'Great Value Anandam, a masterpiece of elegance and sophistication. Designed to redefine opulent living, this exclusive residential enclave exudes grandeur and comfort. With world-class amenities and seamless access to modern conveniences, Anandam promises an unmatched lifestyle where luxury meets convenience at every step. A true testament to architectural brilliance, it is crafted for those who appreciate the finer things in life.',NULL,1,'null','null','2025-02-26 18:36:34','2025-03-20 15:25:47',NULL,'Great Value Realty Anandam Sector 107 Noida: 3 & 4 BHK Luxury Flats','Great Value realty, Anandam Sector 107 Noida, Great Value Anandam, Sector 107 Noida,Great Value Anandam Noida, Best Great Value Anandam','Great Value Realty Anandam Sector 107 Noida, find your dream home with modern 2, 3 & 4 BHK apartments designed for luxury living. Explore now!','Great Value Realty Anandam Sector 107 Noida: 3 & 4 BHK Luxury Flats','\"@context\": \"https://schema.org\",\r\n                        \"@type\": \"Organization\",\r\n                        \"name\": \"Great Value Anandam Sector 107, Noida\",\r\n                        \"alternateName\": \"Great Value Anandam Noida\",\r\n                        \"url\": \"https://greatvaluerealty.com/anandam-apartments-noida\",\r\n                        \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.webp\",\r\n                        \"contactPoint\": [{\r\n                            \"@type\": \"ContactPoint\",\r\n                            \"telephone\": \"+91 7777079770\",\r\n                            \"contactType\": \"customer service\",\r\n                            \"areaServed\": \"IN\",\r\n                            \"availableLanguage\": \"en\"\r\n                        }]','null'),(3,1,4,21,1,'Casa Uday','casa-uday-properties-in-ncr','null',NULL,'null',NULL,'project/feature-image/1742463128_1741064839_HERO_webp','project/feature-thumbnail/1741064839.THUMB.webp','project/feature-image/1742463128_1741064839_HERO_jpg','project/feature-thumbnail/1742463077_1741064839_THUMB_jpg','project/feature-image/1742463649_22_webp','project/feature-image/1742463649_22_jpg','Great Value Casa Uday Luxurious Living and dining area New Delhi','Great Value Architectural design New Delhi','Uday Park, New Delhi',0,NULL,'CASA UDAY, a meticulously designed collection of luxury modern builder floors, thoughtfully crafted as a testament to design-led innovation and architectural excellence. Rooted in research-driven planning, these residences offer a seamless blend of sophisticated aesthetics, technological advancements, and thoughtful amenities. From brighter living spaces to a curated sense of place, every detail is designed to inspire trust and elevate lifestyles.',NULL,1,'null','null','2025-03-04 12:07:19','2025-03-20 15:40:49',NULL,'Great Value Realty Casa Uday: Modern Homes in Uday Park','Great Value realty, Great Value Realty Casa Uday, Casa Uday Delhi, Luxury apartments Casa Uday Delhi , Great Value Realty projects Delhi NCR, Casa Uday residential project','Discover Great Value Realty Casa Uday: Modern luxury builder floors & apartments in Uday Park, New Delhi. Eco-friendly designs & contemporary living spaces!','Great Value Realty Casa Uday: Modern Homes in Uday Park','\"@context\": \"https://schema.org\",\r\n                        \"@type\": \"Organization\",\r\n                        \"name\": \"Great Value Realty Casa 31 Uday Park, New Delhi\",\r\n                        \"alternateName\": \"Great Value Realty Casa Uday\",\r\n                        \"url\": \"https://greatvaluerealty.com/casa-uday-properties-in-ncr\",\r\n                        \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.webp\",\r\n                        \"contactPoint\": [{\r\n                            \"@type\": \"ContactPoint\",\r\n                            \"telephone\": \"+91 7777079770\",\r\n                            \"contactType\": \"customer service\",\r\n                            \"areaServed\": \"IN\",\r\n                            \"availableLanguage\": \"en\"\r\n                        }]','null'),(6,2,8,NULL,1,'Great Value Logistic & Industrial','moser-baer-solar-ltd-warehouse','null',NULL,'null',NULL,'project/feature-image/1741069039.warehouse-4.webp','project/feature-thumbnail/1741069039.warehouse-3.webp',NULL,NULL,NULL,NULL,'null',NULL,'Surajpur, Greater Noida',0,NULL,'null',NULL,1,'/gvlip','70 Acres','2025-03-04 13:17:19','2025-03-10 15:48:17',NULL,'null','null','null','null','null','null'),(7,2,8,NULL,1,'Tavru Sohna','tavru-sohna',NULL,NULL,NULL,NULL,'project/feature-image/1741077374.warehouse-5.webp','project/feature-thumbnail/1741077374.warehouse-4.webp',NULL,NULL,NULL,NULL,NULL,NULL,'Sohna, Haryana',0,NULL,NULL,NULL,1,NULL,'108 Acres','2025-03-04 15:36:14','2025-03-04 15:36:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,2,8,NULL,1,'Great Value Logistic and Industrial Park 2.0','moserbear-part-2',NULL,NULL,NULL,NULL,'project/feature-image/1741077534.warehouse-3.webp','project/feature-thumbnail/1741077534.warehouse-4.webp',NULL,NULL,NULL,NULL,NULL,NULL,'Surajpur, Greater Noida',0,NULL,NULL,NULL,1,NULL,'27.5 Acres','2025-03-04 15:38:54','2025-03-04 15:38:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,2,NULL,1,'GREAT VALUE MALL','great-value-mall','null',NULL,'null',NULL,'project/feature-image/1741080486.warehouse-5.webp','project/feature-thumbnail/1741080486.warehouse-4.webp',NULL,NULL,NULL,NULL,'null',NULL,'Ram Ghat Road, Aligarh',0,NULL,'The Great Value Mall in Aligarh is a vibrant shopping and entertainment destination, bringing together top brands, fine dining, and engaging leisure experiences under one roof. Located in a high-footfall area, it serves as a commercial epicenter, attracting consumers from across the region. Featuring renowned brands like Bikanerwala, Levi’s, Café Coffee Day, Spencer’s, and Cineplex, the mall is designed to provide a seamless shopping experience for families, young professionals, and urban dwellers.',NULL,1,'https://greatmallofaligarh.com/','2 Acre land (Covered area 2 lac Sq Ft)','2025-03-04 16:28:06','2025-03-10 15:32:27',NULL,'null','null','null','null','null','null'),(10,2,10,14,1,'PERNIA\'S POP-UP STUDIO','pernias-pop-up-studio','null',NULL,'null',NULL,'project/feature-image/1741080617.warehouse-5.webp','project/feature-thumbnail/1741080617.warehouse-4.webp',NULL,NULL,NULL,NULL,'null',NULL,'Mehrauli, New Delhi',0,NULL,'null',NULL,1,'null','790 Sq Yds Plot','2025-03-04 16:30:17','2025-03-10 15:33:04',NULL,'null','null','null','null','null','null'),(11,2,10,13,1,'GAP','gap','null',NULL,'null',NULL,'project/feature-image/1741080819.warehouse-5.webp','project/feature-thumbnail/1741080819.warehouse-4.webp',NULL,NULL,NULL,NULL,'null',NULL,'Saket, New Delhi',0,NULL,'null',NULL,1,'null','47086 Sq Ft','2025-03-04 16:33:39','2025-03-10 15:33:24',NULL,'null','null','null','null','null','null'),(12,2,10,13,2,'The View','The-view','null',NULL,'null',NULL,'project/feature-image/1741080891.warehouse-5.webp','project/feature-thumbnail/1741080891.warehouse-3.webp',NULL,NULL,NULL,NULL,'null',NULL,'WORLI MUMBAI',0,NULL,'null',NULL,1,'null','Coming soon','2025-03-04 16:34:51','2025-03-10 14:57:56',NULL,'null','null','null','null','null','null'),(13,2,10,12,1,'COMPLEX MADANGIR','complex-madangir','null',NULL,'null',NULL,'project/feature-image/1741081082.warehouse-5.webp','project/feature-thumbnail/1741081082.warehouse-4.webp',NULL,NULL,NULL,NULL,'null',NULL,'Madangir, New Delhi',0,NULL,'null',NULL,1,'null','47086 Sq Ft','2025-03-04 16:38:02','2025-03-10 15:33:48',NULL,'null','null','null','null','null','null'),(14,1,4,6,NULL,'rtttttttttttt','kkkkkkkkkkkkkkk',NULL,NULL,NULL,NULL,'project/feature-image/1741152792.school.webp','project/feature-thumbnail/1741152792.park.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'fdsfsdaf',NULL,1,NULL,NULL,'2025-03-05 12:33:12','2025-03-05 12:33:32','2025-03-05 12:33:32',NULL,NULL,NULL,NULL,NULL,NULL),(15,1,4,24,1,'SHARANAM','sharanam-apartments-noida','null',NULL,'null',NULL,'project/feature-image/1742463748_1741155949_hero_yhnarx_webp','project/feature-thumbnail/1741153133.THUMB.webp','project/feature-image/1742463748_1741155949_hero_yhnarx_jpg','project/feature-thumbnail/1742463921_345_jpg','project/feature-image/1742463965_SHARANAM_webp','project/feature-image/1742463965_SHARANAM_jpg','Great Value Sharanam Modern Residential buildings Noida','Great Value Modern residential apartments Noida','Sector 107, Noida',0,NULL,'Experience an elevated standard of luxury with Great Value Sharnam, an exquisite residential enclave designed for those who appreciate elegance and comfort. With 18 exclusive towers, these ready-to-move-in homes seamlessly blend modern architecture with premium amenities, ensuring a lifestyle of convenience and sophistication.',NULL,0,'null','null','2025-03-05 12:38:53','2025-03-20 15:46:31',NULL,'Great Value Realty Sharanam Sector 107 Noida: 3 & 4 BHK Luxury Apartments','Great Value realty, Great Value Sharanam, Great Value Sharanam Noida, Sector 107 Noida, Sharanam Sector 107 Noida, Great Value Sharanam Sector 107 Noida','Great Value Realty Sharanam Sector 107 Noida, discover ready-to-move 2, 3 & 4 BHK luxury flats with modern amenities, great connectivity & serene living.','Great Value Realty Sharanam Sector 107 Noida: 3 & 4 BHK Luxury Apartments','\"@context\": \"https://schema.org\",\r\n            \"@type\": \"Organization\",\r\n            \"name\": \"Great Value Sharanam Sector 107,Noida\",\r\n            \"alternateName\": \"Great Value Sharanam Noida\",\r\n            \"url\": \"https://greatvaluerealty.com/sharanam-apartments-noida\",\r\n            \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.png\",\r\n            \"contactPoint\": [{\r\n              \"@type\": \"ContactPoint\",\r\n              \"telephone\": \"+91 7777079770\",\r\n              \"contactType\": \"customer service\",\r\n              \"areaServed\": \"IN\",\r\n              \"availableLanguage\": \"en\"\r\n            }]','null'),(17,1,4,3,1,'test name','test-slug','null',NULL,'null',NULL,'project/feature-image/1741234843.yourstory.webp','project/feature-thumbnail/1741234843.et_now.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'short description',NULL,1,NULL,NULL,'2025-03-06 11:20:43','2025-03-06 11:42:19','2025-03-06 11:42:19','test title','test keyword','Test description','test meta author','test head data','test footer data'),(18,1,4,20,1,'Vilasa','vilasa-sector-6-sohna','null',NULL,'null',NULL,'project/feature-image/1741264182.hero_upnmgx.webp','project/feature-thumbnail/1741264182.vilasa.webp','project/feature-image/1742464110_1741264182_hero_upnmgx_jpg','project/feature-thumbnail/1742464110_1741264182_vilasa_jpg','project/feature-image/1742464250_Vilasa_webp','project/feature-image/1742464250_Vilasa_jpg','Great Value Vilasa Luxury living and dining area Sohna','Great Value Living and dining area Sohna','SECTOR 6, SOHNA',0,NULL,'Vilasa is an exclusive residential plotted development offering customizable plots in a secure gated community. With premium amenities, excellent connectivity, and scenic views, it presents a perfect opportunity for investors and homeowners to build their dream space in a rapidly growing location.',NULL,1,'null','null','2025-03-06 19:29:42','2025-03-20 15:51:02',NULL,'Great Value Realty Vilasa Sector 6 Sohna: Luxury Plots in Gurgaon','Great Value realty, Vilasa by Great Value Realty, Best Vilasa properties in Sohna, Vilasa luxury apartments Sohna , Vilasa residential project Sohna, Great Value Realty Vilasa','Own premium plots in Vilasa, Sector 6 Sohna! Perfect for investors & homeowners. High returns in a booming location. Secure your dream plot today!','Great Value Realty Vilasa Sector 6 Sohna: Luxury Plots in Gurgaon','\"@context\": \"https://schema.org\",\r\n                        \"@type\": \"Organization\",\r\n                        \"name\": \"Great Value Realty Vilasa Sector 6, Sohna\",\r\n                        \"alternateName\": \"Great Value Realty Vilasa\",\r\n                        \"url\": \"https://greatvaluerealty.com/vilasa-sector-6-sohna\",\r\n                        \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.webp\",\r\n                        \"contactPoint\": [{\r\n                            \"@type\": \"ContactPoint\",\r\n                            \"telephone\": \"+91 7777079770\",\r\n                            \"contactType\": \"customer service\",\r\n                            \"areaServed\": \"IN\",\r\n                            \"availableLanguage\": \"en\"\r\n                        }]','null'),(19,1,4,3,1,'test','test',NULL,NULL,NULL,NULL,'project/feature-image/1741324209.unit2-typed.webp','project/feature-thumbnail/1741324209.unit2-typeb.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,1,NULL,NULL,'2025-03-07 12:10:09','2025-03-07 12:47:46','2025-03-07 12:47:46',NULL,NULL,NULL,NULL,NULL,NULL),(20,1,4,22,1,'Sanctuary 105','sanctuary-sector-105-gurugram','null',NULL,'null',NULL,'project/feature-image/1741326320.hero.webp','project/feature-thumbnail/1741326320.about.webp','project/feature-image/1742464373_1741326320_hero_jpg','project/feature-thumbnail/1742464373_1741326320_about_jpg','project/feature-image/1742464430_Sanctuary_105_webp','project/feature-image/1742464430_Sanctuary_105_jpg','Great Value Sanctuary High-rise apartment buildings Gurugram','Great Value Residential high-rise apartments Gurugram','SECTOR 105, GURUGRAM',0,NULL,'More than just an address, Sanctuary 105 is a serene escape from the fast-paced city life. Thoughtfully designed to offer privacy with just one neighbor per floor, it seamlessly blends art, architecture, and nature, creating a harmonious living experience. A perfect retreat where elegance meets tranquility, Sanctuary 105 redefines urban luxury with its exclusive design and refined living spaces.',NULL,1,'null','null','2025-03-07 12:45:20','2025-03-20 15:53:59',NULL,'Great Value Realty Sanctuary 105: 3 & 4 BHK Flats in Gurgaon','Great Value realty, Great Value Realty Sanctuary Sector 105, Great Value Realty Sanctuary Gurugram, Sanctuary 105 Gurugram , Sanctuary by Great Value Realty, Sanctuary residential project Gurugram','Grand Value Realty Sanctuary 105, Sector 105 Gurugram, discover 3 & 4 BHK apartments where art, nature, and serenity meet. Your peaceful retreat awaits!','Great Value Realty Sanctuary 105: 3 & 4 BHK Flats in Gurgaon','\"@context\": \"https://schema.org\",\r\n                        \"@type\": \"Organization\",\r\n                        \"name\": \"Great Value Realty Sanctuary Sector 105, Gurugram\",\r\n                        \"alternateName\": \"Great Value Realty Sanctuary Gurugram\",\r\n                        \"url\": \"https://greatvaluerealty.com/sanctuary-sector-105-gurugram\",\r\n                        \"logo\": \"https://greatvaluerealty.com/assets/frontend/images/logo.webp\",\r\n                        \"contactPoint\": [{\r\n                            \"@type\": \"ContactPoint\",\r\n                            \"telephone\": \"+91 7777079770\",\r\n                            \"contactType\": \"customer service\",\r\n                            \"areaServed\": \"IN\",\r\n                            \"availableLanguage\": \"en\"\r\n                        }]','null'),(21,1,4,18,1,'test project','test-slug',NULL,NULL,NULL,NULL,'project/feature-image/1742152487.gv-finance.webp','project/feature-thumbnail/1742152487.gv-capital.webp',NULL,NULL,NULL,NULL,'test image alt','ttest thumbnail alt','test project address',0,NULL,'test short description',NULL,1,NULL,NULL,'2025-03-17 01:14:47','2025-03-17 01:18:53','2025-03-17 01:18:53',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_investments`
--

DROP TABLE IF EXISTS `property_investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_investments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_investments`
--

LOCK TABLES `property_investments` WRITE;
/*!40000 ALTER TABLE `property_investments` DISABLE KEYS */;
INSERT INTO `property_investments` VALUES (1,'Real Estate Investment In India','India\'s real estate sector has witnessed significant growth in recent years, emerging as a pivotal component of the nation\'s economy. In 2024, the market thrived with record office leases, robust residential sales, and substantial foreign investments. The industry\'s expansion is further underscored by projections indicating a market volume of approximately USD 51.54 trillion by 2029, reflecting a compound annual growth rate (CAGR) of 2.46% from 2025 to 2029.','property-investment/1741323299.graph.webp','property-investment/1742277722.graph.jpg','Great Value Real estate market growth Noida',0,1,'2025-03-07 11:54:59','2025-03-18 12:02:02',NULL),(2,'Real Estate Investment In India','The Delhi National Capital Region (NCR) has been a focal point for real estate investments, with Noida standing out as a prime destination due to its strategic location, infrastructure development, and economic opportunities.','property-investment/1741323353.real_estate.webp','property-investment/1742277875.real_estate.jpg','Great Value Modern city skyline with high-rise buildings Noida',1,1,'2025-03-07 11:55:53','2025-03-18 12:04:35',NULL),(3,'Real Estate Investment In India','Noida has experienced a substantial increase in housing prices. Data from Anarock indicates that average housing prices along the Noida Expressway rose by 66% over the past five years, reaching Rs 8,400 per square foot as of September 2024. This surge is attributed to enhanced connectivity and the establishment of commercial hubs in the vicinity.','property-investment/1741323369.objects.webp','property-investment/1742277916.objects.jpg','Great Value 3D pie chart Noida',0,1,'2025-03-07 11:56:09','2025-03-18 12:05:16',NULL),(4,'Luxury Segment Expansion','The luxury housing segment in Noida has seen remarkable growth. For instance, Sector 150 witnessed a 12% year-on-year increase in monthly rentals for luxury properties in the first half of 2024. This trend reflects the rising demand for premium residences equipped with modern amenities.','property-investment/1741323394.group.webp','property-investment/1742277947.group.jpg','Great Value Business performance Noida',0,1,'2025-03-07 11:56:34','2025-03-18 12:05:47',NULL),(5,'Infrastructure Development','Ongoing infrastructure projects, such as the development of the Noida International Airport and the expansion of metro connectivity, have significantly bolstered Noida\'s real estate appeal. These developments are anticipated to further drive property values and attract both investors and end-users.','property-investment/1741323417.infrastructure.webp','property-investment/1742277968.infrastructure.jpg','Great Value Real estate planning and construction Noida',0,1,'2025-03-07 11:56:57','2025-03-18 12:06:08',NULL),(6,'test','this is a test','property-investment/1741333295.banner.webp',NULL,'testing',0,1,'2025-03-07 14:41:35','2025-03-07 14:42:13','2025-03-07 14:42:13');
/*!40000 ALTER TABLE `property_investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_enquiries`
--

DROP TABLE IF EXISTS `services_enquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_enquiries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `is_interested` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_enquiries`
--

LOCK TABLES `services_enquiries` WRITE;
/*!40000 ALTER TABLE `services_enquiries` DISABLE KEYS */;
INSERT INTO `services_enquiries` VALUES (1,'Other','mk;','uj','7897889898','vikas@gmail.com','2025-03-10 17:23:34','2025-03-10 17:23:34',NULL);
/*!40000 ALTER TABLE `services_enquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,1,'Uttar Pradesh','Uttar Pradesh',1,'2025-02-25 13:42:34','2025-02-25 13:42:34'),(2,1,'Delhi','Delhi',1,'2025-03-04 12:07:48','2025-03-04 12:07:48'),(3,1,'New Delhi','New Delhi',1,'2025-03-04 12:08:42','2025-03-04 12:08:42'),(4,1,'Haryana','Haryana',1,'2025-03-04 15:36:30','2025-03-04 15:36:30'),(5,2,'undefined','undefined',1,'2025-03-07 12:48:28','2025-03-07 12:48:28'),(6,1,'Maharashtra','Maharashtra',1,'2025-03-10 10:24:16','2025-03-10 10:24:16');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_typologies`
--

DROP TABLE IF EXISTS `sub_typologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_typologies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typology` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_typologies`
--

LOCK TABLES `sub_typologies` WRITE;
/*!40000 ALTER TABLE `sub_typologies` DISABLE KEYS */;
INSERT INTO `sub_typologies` VALUES (1,'4 BHK','4 BHK','1','2024-12-19 00:45:32','2025-02-24 12:12:09',NULL),(2,'ttte','ttte','1','2025-02-24 12:13:13','2025-02-24 12:13:23','2025-02-24 12:13:23'),(3,'3 & 4 BHK Ultra Luxury Apartments','3 & 4 BHK Ultra Luxury Apartments','1','2025-02-24 19:16:22','2025-03-04 12:42:36',NULL),(4,'retail-shops-food-court','Retail Shops & Food Court','1','2025-02-24 19:16:34','2025-02-24 19:16:34',NULL),(5,'food-court','Food Court','1','2025-02-24 19:16:42','2025-02-24 19:16:42',NULL),(6,'5-bhk','5 BHK','1','2025-02-26 14:11:40','2025-02-26 14:11:40',NULL),(7,'2-bhk','2 BHK','1','2025-02-26 17:55:02','2025-02-26 17:55:02',NULL),(8,'3-bhk','3 BHK','1','2025-02-26 17:55:13','2025-02-26 17:55:13',NULL),(9,'2 & 3 BHK LUXURY RESIDENTIAL','2 & 3 BHK LUXURY RESIDENTIAL','1','2025-02-26 18:35:54','2025-03-04 12:45:05',NULL),(10,'3-bhk-study','3 BHK + STUDY','1','2025-03-03 16:26:18','2025-03-03 16:26:18',NULL),(11,'luxury-modern-builders-floor','LUXURY MODERN BUILDERS FLOOR','1','2025-03-04 12:04:35','2025-03-04 12:04:41','2025-03-04 12:04:41'),(12,'retail-store','Retail Store','1','2025-03-04 16:31:31','2025-03-04 16:31:31',NULL),(13,'office-spaces','Office Spaces','1','2025-03-04 16:31:42','2025-03-04 16:31:42',NULL),(14,'high-street-retail','High Street Retail','1','2025-03-04 16:31:53','2025-03-04 16:31:53',NULL),(15,'2-3-4-bhk-luxury-residential','2, 3 & 4 BHK LUXURY RESIDENTIAL','1','2025-03-05 12:36:43','2025-03-05 12:36:43',NULL),(16,'3 & 4 BHK LUXURY RESIDENTIAL','3 & 4 BHK LUXURY RESIDENTIAL','1','2025-03-07 12:42:51','2025-03-07 13:43:35',NULL),(17,'3-bhk-study-4t','3 BHK + STUDY + 4T','1','2025-03-08 13:11:31','2025-03-08 13:11:31',NULL),(18,'3-bhk-3t','3 BHK + 3T','1','2025-03-08 14:12:22','2025-03-08 14:12:22',NULL),(19,'2-bhk-study-2t','2 BHK + STUDY + 2T','1','2025-03-08 14:15:39','2025-03-08 14:15:39',NULL),(20,'luxury-residential-plots','LUXURY RESIDENTIAL PLOTS','1','2025-03-08 19:43:51','2025-03-08 19:43:51',NULL),(21,'luxury-and-modern-builder-floors','Luxury and Modern Builder Floors','1','2025-03-10 10:39:50','2025-03-10 10:39:50',NULL),(22,'3-4-bhk-apartments','3 & 4 BHK Apartments','1','2025-03-10 10:43:59','2025-03-10 10:43:59',NULL),(23,'3-bhk-s','3 BHK + S','1','2025-03-12 10:43:31','2025-03-12 10:43:31',NULL),(24,'2-3-4-bhk-luxury-residential-apartments','2, 3 & 4 BHK Luxury Residential Apartments','1','2025-03-12 11:28:54','2025-03-12 11:28:54',NULL);
/*!40000 ALTER TABLE `sub_typologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `seq` int DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Payas Agarwal','Director','teams/1741676691.1.png','teams/1742300867.paras.png','Great Value Payas Agarwal Noida','An MBA graduate from Babson College, he brings over five years of hands-on experience in leading and managing the Group. A visionary strategist and analytical leader, he is deeply committed to staying informed about the latest industry developments and market trends. His forward-thinking approach and ability to adapt to dynamic environments have been instrumental in driving growth and fostering innovation within the organization.',1,1,1,'2025-02-19 04:26:51','2025-03-18 18:27:47'),(3,'Amit Goel','Fund Manager','teams/1741676702.2.png','teams/1742300939.amit-goel.png','Great Value Amit Goel Noida','Amit Goel an engineer, MBA, CFA, & MRICS brings 25+ years of experience. With a specialty in distressed asset turnarounds. Has worked with leading global firms like Millenium Global, Viridian Partners, and WTC has raised and managed $350 Mn+ AUM.',0,2,1,'2025-02-19 05:12:00','2025-03-18 18:28:59'),(4,'Manoj Agarwal','Chairman & MD, GV Group','teams/1741676710.3.png','teams/1742357851.manoj.png','Great Value Manoj Agarwal Noida','Mr. Manoj Agarwal stands as the cornerstone of the Great Value Group, steering its transformation from a modest glassware enterprise to a diverse and thriving conglomerate over the past three decades. With a keen business instinct and an unwavering vision, he has led the Group to remarkable success across multiple industries. After completing his education in Bangalore, Mr. Agarwal joined the family business, which became the foundation for his entrepreneurial journey. He seized an opportunity to venture into food processing for the Uttar Pradesh Government, establishing a stable and successful foothold in the food industry. Building on this success, he expanded into real estate, acquiring assets that have led to the development of prominent projects, enriching the lives of countless buyers. Driven by his motto of adding value to people’s lives, Mr. Agarwal ensures that his efforts have a positive impact, both directly and indirectly. Committed to social responsibility, he dedicates 10% of his personal income to extensive CSR initiatives and welfare activities across India. He is actively involved with organizations such as Divya Prem Seva Mission and Bhaurav Devras Seva Nyas. Additionally, he has independently established five dispensaries and a primary school in Delhi NCR, underscoring his commitment to community development.Mr. Manoj Agarwal’s journey is a testament to visionary leadership, innovation, and a deep sense of responsibility toward society.',0,1,1,'2025-02-19 05:12:50','2025-03-19 10:17:31'),(5,'Goldie Kapoor','Sales and Marketing Head','teams/1741676590.4.png','teams/1742358021.goldie.png','Great Value Goldie Kapoor Noida','Goldie is a seasoned and dedicated professional in the group with over 23 years of expertise in residential sales, retail, warehousing, and industrial leasing alongside significant experience in evaluating and analyzing stressed asset investments. A result-driven individual with a proven history of identifying opportunities and delivering strategies that optimize financial growth and operational efficiency.',0,1,1,'2025-02-19 05:13:26','2025-03-19 10:20:21'),(7,'Nakul Goel','CFO','teams/1741676548.5.png','teams/1742358055.nakul.png','Great Value Nakul Goel Noida','Experienced financial professional with over 25 years of expertise in financial management, corporate financial law, investment operations, banking practices, and risk management. Possesses extensive knowledge in assessing the financial health of investments through advanced data analysis and forecasting, driving strategic financial decision-making and sustainable growth.',0,1,1,'2025-02-21 18:53:30','2025-03-19 10:20:55'),(10,'Nidhi Jain','Head of Procurement','teams/1741676493.6.png','teams/1742358148.nidhi-jain.png','Great Value Nidhi Jain Noida',NULL,0,1,1,'2025-03-10 12:46:28','2025-03-19 10:22:28'),(12,'R.S Sharma','Head of Lesioning','teams/1741676867.7.png','teams/1742358197.rs-sharma.png','Great Value R.S Sharma Noida',NULL,1,1,1,'2025-03-10 12:48:42','2025-03-19 10:23:17'),(13,'Aditya Garg','Accounts Head','teams/1741677003.8.png','teams/1742358236.aditya.png','Great Value Aditya Garg Noida',NULL,0,1,1,'2025-03-10 12:49:49','2025-03-19 10:23:56'),(14,'Akash Kataria','Analyst','teams/1741677057.9.png','teams/1742358265.akash.png','Great Value Akash Kataria Noida',NULL,0,1,1,'2025-03-10 12:50:25','2025-03-19 10:24:25'),(15,'Adhvika Agarwal','Director of Sales and Marketing','teams/1741677196.10.png','teams/1742358292.adhvika.png','Great Value Adhvika Agarwal Noida',NULL,0,1,1,'2025-03-10 12:51:09','2025-03-19 10:24:52'),(16,'Ranjeet Bhalla','Head of CRM','teams/1741679782.11.png','teams/1742358323.ranjeet.png','Great Value Ranjeet Bhalla Noida',NULL,0,1,1,'2025-03-10 13:15:49','2025-03-19 10:25:23');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iframe_url` longtext COLLATE utf8mb4_unicode_ci,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (4,'Mr. Narinder Arora','testimonials/1740485481.narinder-arora.webp',NULL,'Great Value Narinder Arora Noida',NULL,'https://www.youtube.com/watch?v=nT86JG8JiHk','Developer','Sharanam: The Perfect Blend of Location, Space & Greenery',1,'2025-02-25 19:11:21','2025-03-13 12:10:09',NULL),(5,'Verma Family','testimonials/1740485515.verma-family.webp',NULL,'Great Value Verma Family Noida',NULL,'https://www.youtube.com/watch?v=Nbm6iQ0IMMY','NA','A Community Where Every Festival Feels Like Home',1,'2025-02-25 19:11:55','2025-03-13 12:10:20',NULL),(6,'Mr. B.P. Bharti','testimonials/1740485563.bp-bharti.webp',NULL,'Great Value B.P. Bharti Noida',NULL,'https://www.youtube.com/watch?v=rSFwv7_ucSs','NA','Openness, Luxury, and Leisure—Love Living at Sharanam',1,'2025-02-25 19:12:43','2025-03-13 12:10:33',NULL);
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline_images`
--

DROP TABLE IF EXISTS `timeline_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline_images`
--

LOCK TABLES `timeline_images` WRITE;
/*!40000 ALTER TABLE `timeline_images` DISABLE KEYS */;
INSERT INTO `timeline_images` VALUES (3,'1970','timeline/1741684498.1740723939.1970-glassware2.webp','timeline/1742368555.1742365743.1741684498.1740723939.1970-glassware2.jpg','Great Value Modern Industrial facility Noida','2025-02-19 05:49:33','2025-03-19 13:15:55'),(4,'1990','timeline/1741685052.1740725647.1990-packaging4.webp','timeline/1742368853.1742365919.1741685052.1740725647.1990-packaging4.jpg','Great Value Warehouse Noida','2025-02-19 06:42:08','2025-03-19 13:20:53'),(5,'1990','timeline/1741685063.1740725627.1990-packaging2.webp','timeline/1742368861.1742365929.1741685063.1740725627.1990-packaging2.jpg','Great Value Packaging production Noida','2025-02-19 06:42:54','2025-03-19 13:21:01'),(6,'1990','timeline/1741685071.1740725637.1990-packaging3.webp','timeline/1742368869.1742365938.1741685071.1740725637.1990-packaging3.jpg','Great Value Warehouse complex Noida','2025-02-19 06:43:02','2025-03-19 13:21:09'),(7,'1990','timeline/1741685081.1740725617.1990-packaging1.webp','timeline/1742368877.1742365949.1741685081.1740725617.1990-packaging1.jpg','Great Value Industrial warehouse Noida','2025-02-19 06:43:09','2025-03-19 13:21:17'),(8,'2001','timeline/1741685136.1740725723.2001-food2.webp','timeline/1742368960.1742366047.1741685136.1740725723.2001-food2.jpg','Great Value Industrial facility Noida','2025-02-19 06:50:28','2025-03-19 13:22:40'),(9,'2001','timeline/1741685147.1740725714.2001-food1.webp','timeline/1742368971.1742366059.1741685147.1740725714.2001-food1.jpg','Great Value Modern industrial facility Noida','2025-02-19 06:50:45','2025-03-19 13:22:51'),(10,'2001','timeline/1741685157.1740725730.2001-food3.webp','timeline/1742368982.1742366070.1741685157.1740725730.2001-food3.jpg','Great Value Pharmaceutical facility Noida','2025-02-19 06:50:51','2025-03-19 13:23:02'),(11,'2001','timeline/1741685168.1740725739.2001-food4.webp','timeline/1742368992.1742366086.1741685168.1740725739.2001-food4.jpg','Great Value Manufacturing facility Noida','2025-02-19 06:50:57','2025-03-19 13:23:12'),(12,'2008','timeline/1741695964.jharkhand-bhawan-6081338.webp','timeline/1742369098.1742366163.1741695964.jharkhand-bhawan-6081338.jpg','Great Value Commercial office building Noida','2025-02-19 06:53:24','2025-03-19 13:24:58'),(13,'2008','timeline/1741694430.1740725823.2008-jharkhand2.webp','timeline/1742369088.1742366177.1741694430.1740725823.2008-jharkhand2.jpg','Great Value Architectural design Noida','2025-02-19 06:53:31','2025-03-19 13:24:48'),(14,'2008','timeline/1741695976.jharkhand-bhawan-vasant-vihar-delhi-bhawan-pba3k-250.webp','timeline/1742369081.1742366186.1741695976.jharkhand-bhawan-vasant-vihar-delhi-bhawan-pba3k-250.jpg','Great Value Modern glass office Noida','2025-02-19 06:53:38','2025-03-19 13:24:41'),(15,'2008','timeline/1741694523.jharkhand-bhawan-vasant-vihar-delhi-bhawan-sj7fl.webp','timeline/1742369072.1742366200.1741694523.jharkhand-bhawan-vasant-vihar-delhi-bhawan-sj7fl.jpg','Great Value Office spaces Noida','2025-02-19 06:53:45','2025-03-19 13:24:32'),(16,'2009','timeline/1741685229.1740725980.2009-aligarh4.webp','timeline/1742369181.1742366279.1741685229.1740725980.2009-aligarh4.jpg','Great Value Mall Noida','2025-02-19 07:01:56','2025-03-19 13:26:21'),(17,'2009','timeline/1741685239.1740725963.2009-aligarh2.webp','timeline/1742369190.1742366289.1741685239.1740725963.2009-aligarh2.jpg','Great Value Shopping mall Noida','2025-02-19 07:02:04','2025-03-19 13:26:30'),(18,'2009','timeline/1741694704.8046.webp','timeline/1742369199.1742366300.1741694704.8046.jpg','Great value mall Noida','2025-02-19 07:02:10','2025-03-19 13:26:39'),(19,'2009','timeline/1741685258.1740725955.2009-aligarh1.webp','timeline/1742369208.1742366312.1741685258.1740725955.2009-aligarh1.jpg','Great Value Real Estate Development Noida','2025-02-19 07:02:16','2025-03-19 13:26:48'),(20,'2010','timeline/1741685344.1740726052.2010-sharnam1.webp','timeline/1742369303.1742366381.1741685344.1740726052.2010-sharnam1.jpg','Great Value Modern buildings Noida','2025-02-19 07:05:33','2025-03-19 13:28:23'),(21,'2010','timeline/1741685357.1740726062.2010-sharnam2.webp','timeline/1742369294.1742366390.1741685357.1740726062.2010-sharnam2.jpg','Great Value Modern residential complex Noida','2025-02-19 07:05:40','2025-03-19 13:28:14'),(22,'2010','timeline/1741685370.1740726068.2010-sharnam3.webp','timeline/1742369286.1742366403.1741685370.1740726068.2010-sharnam3.jpg','Great Value Modern lounge area Noida','2025-02-19 07:05:46','2025-03-19 13:28:06'),(23,'2010','timeline/1741694732.1741262479.gallery2.webp','timeline/1742369276.1742366416.1741694732.1741262479.gallery2.jpg','Great Value Residential garden Noida','2025-02-19 07:05:52','2025-03-19 13:27:56'),(24,'2011','timeline/1740726139.2011-trees1.webp','timeline/1742369473.1742366481.1740726139.2011-trees1.jpg','Great Value Residential apartment Noida','2025-02-19 07:06:43','2025-03-19 13:31:13'),(25,'2011','timeline/1740726147.2011-trees2.webp','timeline/1742369481.1742366493.1740726147.2011-trees2.jpg','Great Value Dense green forest Noida','2025-02-19 07:06:50','2025-03-19 13:31:21'),(26,'2011','timeline/1740726155.2011-trees3.webp','timeline/1742369525.1742366502.1740726155.2011-trees3.jpg','Great Value Apartment buildings Noida','2025-02-19 07:06:57','2025-03-19 13:32:05'),(27,'2011','timeline/1740726163.2011-trees4.webp','timeline/1742369512.1742366511.1740726163.2011-trees4.jpg','Great Value Modern Residential buildings Noida','2025-02-19 07:07:05','2025-03-19 13:31:52'),(28,'2012','timeline/1741694756.339.webp','timeline/1742369611.1742366576.1741694756.339.jpg',NULL,'2025-02-19 07:07:45','2025-03-19 13:33:31'),(29,'2012','timeline/1741694766.802.webp','timeline/1742369620.1742366586.1741694766.802.jpg','Great Value Modern white residential apartment Noida','2025-02-19 07:07:50','2025-03-19 13:33:40'),(30,'2012','timeline/1741694775.3701.webp','timeline/1742369629.1742366596.1741694775.3701.jpg','Great Value Buildings Noida','2025-02-19 07:07:56','2025-03-19 13:33:49'),(31,'2012','timeline/1741694791.24482.webp','timeline/1742369638.1742366609.1741694791.24482.jpg','Great Value High-rise residential buildings Noida','2025-02-19 07:08:01','2025-03-19 13:33:58'),(32,'2018','timeline/1740726308.2018-residential1.webp','timeline/1742369778.1742366696.1740726308.2018-residential1.jpg','Great Value Living room Noida','2025-02-19 07:08:51','2025-03-19 13:36:18'),(33,'2018','timeline/1740726314.2018-residential2.webp','timeline/1742369767.1742366712.1740726314.2018-residential2.jpg','Great Value Dining area Noida','2025-02-19 07:08:57','2025-03-19 13:36:07'),(34,'2018','timeline/1740726320.2018-residential3.webp','timeline/1742369755.1742366722.1740726320.2018-residential3.jpg','Great Value Wooden flooring living room Noida','2025-02-19 07:09:02','2025-03-19 13:35:55'),(35,'2018','timeline/1740726326.2018-residential4.webp','timeline/1742369737.1742366732.1740726326.2018-residential4.jpg','Great Value Minimalist living room Noida','2025-02-19 07:09:08','2025-03-19 13:35:37'),(36,'2019','timeline/1740726879.2019-1.webp','timeline/1742367592.1740726879.2019-1.jpg','Great Value Modern Buildings','2025-02-19 07:11:10','2025-03-19 12:59:52'),(37,'2019','timeline/1741694818.1740996809.1.webp','timeline/1742367603.1741694818.1740996809.1.jpg','Great Value Natural environment Noida','2025-02-19 07:11:16','2025-03-19 13:00:03'),(38,'2019','timeline/1740726894.2019-3.webp','timeline/1742367612.1740726894.2019-3.jpg','Great Value Landscaped park Noida','2025-02-19 07:11:22','2025-03-19 13:00:12'),(39,'2019','timeline/1741694841.1740996843.3.webp','timeline/1742367621.1741694841.1740996843.3.jpg','Great Value Industrial facility Noida','2025-02-19 07:11:28','2025-03-19 13:00:21'),(40,'2020','timeline/1740727024.2020-1.webp','timeline/1742367798.1740727024.2020-1.jpg','Great Value Industrial building Noida','2025-02-19 07:12:32','2025-03-19 13:03:18'),(41,'2020','timeline/1741694860.1740992422.warehouse-1.webp','timeline/1742367807.1741694860.1740992422.warehouse-1.jpg','Great Value Modern industrial warehouse Noida','2025-02-19 07:12:38','2025-03-19 13:03:27'),(42,'2020','timeline/1741694869.1740992447.warehouse-4.webp','timeline/1742367817.1741694869.1740992447.warehouse-4.jpg','Great Value Industrial aesthetic Noida','2025-02-19 07:12:44','2025-03-19 13:03:37'),(43,'2020','timeline/1741694880.1741689676.1741676273.807A0054-(1) (1) (1) (1).webp','timeline/1742367830.1741694880.1741689676.1741676273.807A0054-(1) (1) (1) (1).jpg','Great Value Modern glass building Noida','2025-02-19 07:12:50','2025-03-19 13:03:50'),(44,'2022','timeline/1740727215.2022-1.webp','timeline/1742367944.1740727215.2022-1.jpg','Great Value Office space Noida','2025-02-19 07:13:45','2025-03-19 13:05:44'),(45,'2022','timeline/1740727226.2022-2.webp','timeline/1742367957.1740727226.2022-2.jpg','Great Value Architectural design Noida','2025-02-19 07:13:51','2025-03-19 13:05:57'),(46,'2022','timeline/1740727234.2022-3.webp','timeline/1742367965.1740727234.2022-3.jpg','Great Value Modern building Noida','2025-02-19 07:13:57','2025-03-19 13:06:05'),(47,'2022','timeline/1740727248.2022-4.webp','timeline/1742367976.1740727248.2022-4.jpg','Great Value Office building Noida','2025-02-19 07:14:03','2025-03-19 13:06:16'),(48,'2023','timeline/1741694907.11978350.webp','timeline/1742368093.1741694907.11978350.jpg','Great Value buildings Noida','2025-02-19 07:15:06','2025-03-19 13:08:13'),(49,'2023','timeline/1741694924.2148793796.webp','timeline/1742368101.1741694924.2148793796.jpg','Great Value Financial planning concept Noida','2025-02-19 07:15:12','2025-03-19 13:08:21'),(50,'2023','timeline/1741694938.2150799725.webp','timeline/1742368116.1741694938.2150799725.jpg','Great Value housing society Noida','2025-02-19 07:15:17','2025-03-19 13:08:36'),(51,'2023','timeline/1741694954.view-city-with-buildings-trees.webp','timeline/1742368127.1741694954.view-city-with-buildings-trees.jpg','Great Value Modern real estate development Noida','2025-02-19 07:15:27','2025-03-19 13:08:47'),(52,'2024','timeline/1740727599.2024-1.webp',NULL,NULL,'2025-02-19 07:15:59','2025-02-28 14:26:39'),(53,'2024','timeline/1740727605.2024-2.webp',NULL,NULL,'2025-02-19 07:16:05','2025-02-28 14:26:45'),(54,'2024','timeline/1740727615.2024-3.webp',NULL,NULL,'2025-02-19 07:16:10','2025-02-28 14:26:55'),(55,'2024','timeline/1740727621.2024-4.webp',NULL,NULL,'2025-02-19 07:16:16','2025-02-28 14:27:01'),(58,'2021','timeline/1740219919.blog3.webp',NULL,NULL,'2025-02-22 17:25:19','2025-02-22 17:31:28'),(59,'1970','timeline/1740723953.1970-glassware3.webp','timeline/1742368545.1742365785.1740723953.1970-glassware3.jpg','Great Value Glassblowing process Noida','2025-02-28 13:25:53','2025-03-19 13:15:45'),(60,'2025','timeline/1741695478.2.webp','timeline/1742368232.1741695478.2.jpg','Great Value Luxury lifestyle Noida','2025-03-10 18:19:15','2025-03-19 13:10:32'),(61,'2025','timeline/1741695492.3.webp','timeline/1742368242.1741695492.3.jpg','Great Value Elegant architectural design Noida','2025-03-10 18:19:30','2025-03-19 13:10:42'),(62,'2025','timeline/1741695504.1.webp','timeline/1742368252.1741695504.1.jpg','Great Value Architectural design Noida','2025-03-10 18:19:40','2025-03-19 13:10:52'),(63,'2025','timeline/1741695515.4.webp','timeline/1742368260.1741695515.4.jpg','Great Value architectural garden Noida','2025-03-10 18:19:49','2025-03-19 13:11:00'),(64,'1970','timeline/1741684724.1740723801.1970-glassware.webp','timeline/1742368535.1742365800.1741684724.1740723801.1970-glassware.jpg','Great Value Restaurant setting Noida','2025-03-11 15:18:44','2025-03-19 13:15:35'),(65,'1970','timeline/1741684736.1740723918.1970-glassware1.webp','timeline/1742368524.1742365811.1741684736.1740723918.1970-glassware1.jpg','Great Value Modern glass building Noida','2025-03-11 15:18:56','2025-03-19 13:15:24');
/*!40000 ALTER TABLE `timeline_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timelines`
--

DROP TABLE IF EXISTS `timelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timelines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timelines`
--

LOCK TABLES `timelines` WRITE;
/*!40000 ALTER TABLE `timelines` DISABLE KEYS */;
INSERT INTO `timelines` VALUES (1,'1970','Glassware','Ventured into glassware manufacturing, marking the foundation of the journey.',1,'2025-02-19 05:48:14','2025-02-28 13:34:54'),(3,'1990','Plastic & Packaging','Expanded into plastic and packaging solutions to diversify offerings.',1,'2025-02-19 06:41:43','2025-02-19 06:44:48'),(4,'2001','Food Processing','Entered the food processing industry, leveraging innovation and quality.',1,'2025-02-19 06:50:00','2025-02-19 06:50:00'),(5,'2008','Jharkhand Bhawan, Vasant Kunj, Delhi','Turnkey Project with Engineers India Ltd: Transformed 19,000 sq. ft. into a modern, sustainable architectural space.',1,'2025-02-19 06:52:59','2025-02-28 13:56:14'),(7,'2009','Great Value Mall, Aligarh','Diversified into real estate development with Great Value Mall, Aligarh',1,'2025-02-19 07:01:17','2025-03-11 13:43:55'),(8,'2010','Great Value Sharanam, Sector 107, Noida','A luxurious residential project spread across 16 acres, featuring 16 towers with world-class amenities.',1,'2025-02-19 07:05:03','2025-02-28 14:00:08'),(9,'2011','1000 Trees, Dwarka Expressway','An eco-conscious residential project promoting sustainability by integrating nature into modern living.',1,'2025-02-19 07:06:18','2025-02-28 14:01:39'),(10,'2012','Complex Madangir','A premium office complex in South Delhi, blending functional design with luxury.',1,'2025-02-19 07:07:29','2025-03-11 13:44:20'),(11,'2018','Casa Uday','Elegant G+3 residential units, combining sophistication with premium finishes.',1,'2025-02-19 07:08:32','2025-03-11 13:44:42'),(12,'2019','Distressed Asset Reconstruction','Led efforts to turn distressed properties into valuable assets through projects like the Logistics & Industrial Park, Megasoft Infrastructure, and East Coast Thermal Plant.',1,'2025-02-19 07:09:44','2025-02-28 14:10:10'),(14,'2019','Great Value Anandam, Sector 107, Noida','An iconic 30-story tower offering contemporary design and space-efficient layouts.',1,'2025-02-19 07:10:15','2025-02-28 14:12:07'),(17,'2020','Great Value Logistic & Industrial Park, Greater Noida','Secured 33 acres of industrial land, paving the way for redevelopment and optimization.',1,'2025-02-19 07:12:13','2025-03-11 13:45:10'),(18,'2022','The View, Worli, Mumbai','Acquired a premium 3,095 sq. ft. office space in a prime business district.',1,'2025-02-19 07:13:15','2025-03-11 13:45:37'),(19,'2022','Harig Crankshaft','Acquired a non-performing asset for revival.',1,'2025-02-19 07:13:29','2025-03-11 12:44:36'),(20,'2023','Alternative Investment Fund (AIF)','Launched a strategic investment initiative targeting high-potential assets.',1,'2025-02-19 07:14:35','2025-02-19 07:14:35'),(21,'2023','Hindon River Mill Ltd, Dasna, Ghaziabad','Acquired 48.26 acres for an upscale villa complex in a prime location.',1,'2025-02-19 07:14:47','2025-02-28 14:24:36'),(24,'2025','COMING SOON','An ultra-luxury development—a sanctuary of serenity and sophistication, where elegance, comfort, and innovation come together effortlessly.',1,'2025-03-10 18:02:49','2025-03-11 16:10:28');
/*!40000 ALTER TABLE `timelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typologies`
--

DROP TABLE IF EXISTS `typologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typologies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typology` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `primary` int NOT NULL DEFAULT '0',
  `seq` int NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typologies`
--

LOCK TABLES `typologies` WRITE;
/*!40000 ALTER TABLE `typologies` DISABLE KEYS */;
INSERT INTO `typologies` VALUES (1,'Villas','Villas','typology/1734589365.1703571880.banner1.jpg',NULL,NULL,'Our warehouses, including the Moser Baer Solar Ltd Warehouse in Greater Noida, offer cutting-edge logistics and storage solutions tailored to modern supply chain requirements. Strategically located in key industrial zones, these warehouses ensure smooth transportation, efficient inventory management, and maximum operational efficiency. With large land parcels, robust security infrastructure, and scalable storage capacities, our warehouses are designed to support growing industries, e-commerce businesses, and large-scale manufacturing units',0,0,'1','2024-12-19 00:52:45','2025-02-22 12:05:14',NULL),(2,'MALL','MALL',NULL,NULL,NULL,'The Great Value Mall in Aligarh is a vibrant shopping and entertainment destination, bringing together top brands, fine dining, and engaging leisure experiences under one roof. Located in a high-footfall area, it serves as a commercial epicenter, attracting consumers from across the region. Featuring renowned brands like Bikanerwala, Levi’s, Café Coffee Day, Spencer’s, and Cineplex, the mall is designed to provide a seamless shopping experience for families, young professionals, and urban dwellers.',0,2,'1','2025-02-22 19:13:29','2025-03-10 14:37:35',NULL),(3,'test111','test111',NULL,NULL,NULL,NULL,0,0,'1','2025-02-22 19:14:35','2025-03-07 12:04:24','2025-03-07 12:04:24'),(4,'apartments','Apartments',NULL,NULL,NULL,NULL,0,0,'1','2025-02-24 19:11:14','2025-02-24 19:11:14',NULL),(5,'warehouse','Warehouse',NULL,NULL,NULL,NULL,0,1,'1','2025-03-03 14:35:59','2025-03-03 14:35:59',NULL),(6,'test name1','test name1',NULL,NULL,NULL,'test description1',0,0,'1','2025-03-03 15:50:54','2025-03-03 15:54:12','2025-03-03 15:54:12'),(7,'tese11','tese11','typology/1740992929.construction_week.webp',NULL,NULL,'sdfsdfsdfsd11',0,0,'1','2025-03-03 16:03:30','2025-03-05 12:37:04','2025-03-05 12:37:04'),(8,'WAREHOUSES','WAREHOUSES',NULL,NULL,NULL,'Our warehouses, offer cutting-edge logistics and storage solutions tailored to modern supply chain requirements. Strategically located in key industrial zones, these warehouses ensure smooth transportation, efficient inventory management, and maximum operational efficiency. With large land parcels, robust security infrastructure, and scalable storage capacities, our warehouses are designed to support growing industries, e-commerce businesses, and large-scale manufacturing units',0,0,'1','2025-03-03 16:09:31','2025-03-12 12:31:54',NULL),(9,'luxury-modern-builders-floor','LUXURY MODERN BUILDERS FLOOR',NULL,NULL,NULL,NULL,0,0,'1','2025-03-04 12:05:08','2025-03-04 12:05:08',NULL),(10,'High Street Retail & Office Spaces','High Street Retail & Office Spaces',NULL,NULL,NULL,'We offer premium high-street retail and office spaces, designed to accommodate businesses of all scales. With a focus on prime locations, modern infrastructure, and cutting-edge amenities, our properties provide an ideal environment for both luxury retail brands and corporate enterprises. Whether it\'s exclusive boutiques, dynamic workspaces, or high-profile commercial hubs, we create spaces that blend prestige, convenience, and efficiency, ensuring businesses thrive in a sophisticated setting.',0,3,'1','2025-03-04 14:41:12','2025-03-12 12:33:45',NULL),(11,'luxury-residential-plots','LUXURY RESIDENTIAL PLOTS',NULL,NULL,NULL,NULL,0,0,'1','2025-03-06 19:23:04','2025-03-10 10:45:33','2025-03-10 10:45:33'),(12,'3 & 4 BHK LUXURY RESIDENTIAL','3 & 4 BHK LUXURY RESIDENTIAL',NULL,NULL,NULL,NULL,0,0,'1','2025-03-07 12:38:32','2025-03-10 10:45:28','2025-03-10 10:45:28');
/*!40000 ALTER TABLE `typologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typologies_galleries`
--

DROP TABLE IF EXISTS `typologies_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typologies_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL COMMENT '1 = icons, 2 = images',
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gvlip` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typologies_galleries`
--

LOCK TABLES `typologies_galleries` WRITE;
/*!40000 ALTER TABLE `typologies_galleries` DISABLE KEYS */;
INSERT INTO `typologies_galleries` VALUES (1,1,'typology/galleries/1740382104.mobile.webp',NULL,NULL,NULL,1,'2025-02-24 13:45:43','2025-02-24 14:36:30','2025-02-24 14:36:30'),(2,2,'typology/galleries/1740381753.blog3.webp',NULL,NULL,NULL,1,'2025-02-24 14:22:33','2025-02-24 14:22:33',NULL),(3,1,'typology/galleries/1740387354.hero_yhnarx.webp',NULL,NULL,1,1,'2025-02-24 15:55:54','2025-03-10 13:12:23','2025-03-10 13:12:23'),(4,1,'typology/galleries/1740992210.caterpillar.webp',NULL,'Great Value Caterpillar Noida',0,1,'2025-03-03 15:56:50','2025-03-17 10:19:28',NULL),(5,1,'typology/galleries/1740992223.good_worth.webp',NULL,'Great Value Goodworth Electronics Noida',1,1,'2025-03-03 15:57:03','2025-03-17 10:19:47',NULL),(6,1,'typology/galleries/1740992253.Jaina_logo_master.webp',NULL,'Great Value Jaina Noida',1,1,'2025-03-03 15:57:33','2025-03-17 10:19:58',NULL),(7,1,'typology/galleries/1740992262.logo_manitou_group.webp',NULL,'Great Value Manitou Group Noida',1,1,'2025-03-03 15:57:42','2025-03-17 10:20:10',NULL),(8,1,'typology/galleries/1740992270.pg_electro.webp',NULL,NULL,NULL,1,'2025-03-03 15:57:50','2025-03-03 15:58:40','2025-03-03 15:58:40'),(9,1,'typology/galleries/1740992290.pg_electro.webp',NULL,'Great Value Electroplast Noida',1,1,'2025-03-03 15:58:10','2025-03-17 10:20:24',NULL),(10,1,'typology/galleries/1740992297.reliance_retails.webp',NULL,'Great Value Reliance Retail Noida',1,1,'2025-03-03 15:58:17','2025-03-17 10:20:47',NULL),(11,1,'typology/galleries/1740992314.sansui_logo.webp',NULL,NULL,1,1,'2025-03-03 15:58:34','2025-03-03 15:58:34',NULL),(12,1,'typology/galleries/1742193359.blog2.png',NULL,'testing alternative logo 1',1,1,'2025-03-03 15:58:56','2025-03-17 12:37:18','2025-03-17 12:37:18'),(13,2,'typology/galleries/1740992422.warehouse-1.webp',NULL,'Great Value Warehouse Noida',NULL,1,'2025-03-03 16:00:22','2025-03-17 17:05:02',NULL),(14,2,'typology/galleries/1740992430.warehouse-2.webp',NULL,'Great Value Industrial warehouse Noida',NULL,1,'2025-03-03 16:00:30','2025-03-17 16:56:54',NULL),(15,2,'typology/galleries/1740992438.warehouse-3.webp',NULL,'Great Value Renewable energy Noida',NULL,1,'2025-03-03 16:00:38','2025-03-17 17:06:33',NULL),(16,2,'typology/galleries/1740992447.warehouse-4.webp',NULL,'Great Value Water purification tank Noida',NULL,1,'2025-03-03 16:00:47','2025-03-17 17:03:52',NULL),(17,2,'typology/galleries/1740992457.warehouse-5.webp',NULL,'Great Value Industrial building Greater Noida',1,1,'2025-03-03 16:00:57','2025-03-18 15:15:19',NULL),(18,2,'typology/galleries/1741068457.warehouse-2.webp',NULL,'Great Value Industrial facility Greater Noida',1,1,'2025-03-04 13:07:37','2025-03-18 15:15:37',NULL),(19,2,'typology/galleries/1741068467.warehouse-3.webp',NULL,'Great Value Renewable energy Noida',NULL,1,'2025-03-04 13:07:47','2025-03-17 17:02:08',NULL),(20,2,'typology/galleries/1741068476.warehouse-4.webp',NULL,'null',NULL,1,'2025-03-04 13:07:56','2025-03-17 17:03:36',NULL),(21,2,'typology/galleries/1741068483.warehouse-5.webp',NULL,'null',NULL,1,'2025-03-04 13:08:03','2025-03-17 17:04:35',NULL),(22,2,'typology/galleries/1741074160.gap-log-img.jpg',NULL,'Great Value Gap Noida',NULL,1,'2025-03-04 14:42:40','2025-03-17 10:24:04',NULL),(23,2,'typology/galleries/1741074172.retail-2.webp',NULL,'Great Value Luxury fashion studio Noida',NULL,1,'2025-03-04 14:42:52','2025-03-17 10:26:15',NULL),(24,2,'typology/galleries/1741074181.retail-3.webp',NULL,'Great Value Designer gown Noida',NULL,1,'2025-03-04 14:43:01','2025-03-17 10:24:44',NULL),(25,2,'typology/galleries/1741074196.retail-4.webp',NULL,'Great Value Elegant fashion boutique Noida',NULL,1,'2025-03-04 14:43:16','2025-03-17 10:25:22',NULL),(26,2,'typology/galleries/1741074209.retail-5.jpg',NULL,'Great Value Modern reception area Noida',NULL,1,'2025-03-04 14:43:29','2025-03-17 10:26:48',NULL),(27,2,'typology/galleries/1741074222.retail-1.webp',NULL,NULL,NULL,1,'2025-03-04 14:43:42','2025-03-04 14:43:42',NULL),(28,2,'typology/galleries/1741342449.environment-1.png',NULL,'Great Value Industrial warehouse Noida',NULL,1,'2025-03-07 17:14:09','2025-03-17 16:55:33',NULL),(29,2,'typology/galleries/1741342459.environment-2.png',NULL,'Great Value Renewable energy Noida',NULL,1,'2025-03-07 17:14:19','2025-03-17 10:31:20',NULL),(30,2,'typology/galleries/1741342465.environment-3.png',NULL,'Great Value Water purification tank Noida',NULL,1,'2025-03-07 17:14:25','2025-03-17 17:02:49',NULL),(31,2,'typology/galleries/1741342474.environment-4.png',NULL,'Great Value Warehouse Noida',NULL,1,'2025-03-07 17:14:34','2025-03-17 17:05:10',NULL),(32,1,'typology/galleries/1741342557.sansui_logo.webp',NULL,NULL,NULL,1,'2025-03-07 17:15:57','2025-03-07 17:15:57',NULL),(33,1,'typology/galleries/1741342566.caterpillar.webp',NULL,NULL,1,1,'2025-03-07 17:16:06','2025-03-07 17:16:06',NULL),(34,1,'typology/galleries/1741342575.good_worth.webp',NULL,NULL,NULL,1,'2025-03-07 17:16:15','2025-03-07 17:16:15',NULL),(35,1,'typology/galleries/1741342586.Jaina_logo_master.webp',NULL,NULL,NULL,1,'2025-03-07 17:16:26','2025-03-07 17:16:26',NULL),(36,1,'typology/galleries/1741342596.logo_manitou_group.webp',NULL,NULL,NULL,1,'2025-03-07 17:16:36','2025-03-07 17:16:36',NULL),(37,1,'typology/galleries/1741342603.pg_electro.webp',NULL,NULL,NULL,1,'2025-03-07 17:16:43','2025-03-07 17:16:43',NULL),(38,1,'typology/galleries/1741342612.reliance_retails.webp',NULL,NULL,NULL,1,'2025-03-07 17:16:52','2025-03-07 17:16:52',NULL),(39,1,'typology/galleries/1741342621.samsung_logo.webp',NULL,'Great Value Samsung Noida',1,1,'2025-03-07 17:17:01','2025-03-17 11:49:06',NULL),(40,2,'typology/galleries/1742192295.blog1.png',NULL,'testing',NULL,1,'2025-03-17 12:18:15','2025-03-17 12:19:39','2025-03-17 12:19:39'),(41,2,'typology/galleries/1742282011.gallery_1.png',NULL,'undefined',NULL,1,'2025-03-18 13:13:31','2025-03-18 13:13:31',NULL),(42,2,'typology/galleries/1742282050.gallery-1.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:14:10','2025-03-18 13:14:10',NULL),(43,2,'typology/galleries/1742282068.gallery-2.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:14:28','2025-03-18 13:14:28',NULL),(44,2,'typology/galleries/1742282081.gallery-3.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:14:41','2025-03-18 13:14:41',NULL),(45,2,'typology/galleries/1742282102.gallery-4.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:15:02','2025-03-18 13:15:02',NULL),(46,2,'typology/galleries/1742282119.gallery-5.jpg',NULL,'Great Value Warehouse with high ceilings Greater Noida',1,1,'2025-03-18 13:15:19','2025-03-18 15:45:11',NULL),(47,2,'typology/galleries/1742282130.gallery-6.jpg',NULL,'Great Value Industrial building Greater Noida',1,1,'2025-03-18 13:15:30','2025-03-18 15:45:22',NULL),(49,2,'typology/galleries/1742282153.gallery-7.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:15:53','2025-03-18 13:15:53',NULL),(50,2,'typology/galleries/1742282166.gallery-8.jpg',NULL,'Great Value Modern industrial building Greater Noida',1,1,'2025-03-18 13:16:06','2025-03-18 15:58:59',NULL),(51,2,'typology/galleries/1742282178.gallery-9.jpg',NULL,'Great Value Industrial warehouse Greater Noida',1,1,'2025-03-18 13:16:18','2025-03-18 15:59:10',NULL),(52,2,'typology/galleries/1742282189.gallery-10.jpg',NULL,'Great Value Functional architecture Greater Noida',1,1,'2025-03-18 13:16:29','2025-03-18 15:59:26',NULL),(53,2,'typology/galleries/1742282201.gallery-11.jpg',NULL,'Great Value Industrial warehouse Greater Noida',1,1,'2025-03-18 13:16:41','2025-03-21 10:30:34',NULL),(54,2,'typology/galleries/1742282215.gallery-12.jpg',NULL,'Great Value Industrial complex Greater Noida',1,1,'2025-03-18 13:16:55','2025-03-18 16:00:22',NULL),(55,2,'typology/galleries/1742282228.gallery-13.jpg',NULL,'Great Value Spacious industrial warehouse Greater Noida',1,1,'2025-03-18 13:17:08','2025-03-21 10:28:41',NULL),(56,2,'typology/galleries/1742282237.gallery-14.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:17:17','2025-03-18 13:17:17',NULL),(57,2,'typology/galleries/1742282252.gallery-15.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:17:32','2025-03-18 13:17:32',NULL),(58,2,'typology/galleries/1742282262.gallery-16.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:17:42','2025-03-18 13:17:42',NULL),(59,2,'typology/galleries/1742282274.gallery-17.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:17:54','2025-03-18 13:17:54',NULL),(60,2,'typology/galleries/1742282289.gallery-18.jpg',NULL,'undefined',NULL,1,'2025-03-18 13:18:09','2025-03-18 13:18:09',NULL),(61,2,'typology/galleries/1742282353.certification.png',NULL,'undefined',1,1,'2025-03-18 13:19:13','2025-03-18 13:29:39','2025-03-18 13:29:39');
/*!40000 ALTER TABLE `typologies_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typology_sub_typologies`
--

DROP TABLE IF EXISTS `typology_sub_typologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typology_sub_typologies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `typologies_id` int NOT NULL,
  `sub_typologies_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typology_sub_typologies`
--

LOCK TABLES `typology_sub_typologies` WRITE;
/*!40000 ALTER TABLE `typology_sub_typologies` DISABLE KEYS */;
INSERT INTO `typology_sub_typologies` VALUES (1,2,1,'2025-02-24 12:15:56','2025-02-24 19:17:35','2025-02-24 19:17:35'),(2,1,1,'2025-02-24 12:55:47','2025-02-26 17:43:17',NULL),(3,10,1,'2025-02-24 16:28:12','2025-03-04 16:32:35',NULL),(4,1,4,'2025-02-24 19:17:20','2025-02-24 19:17:20',NULL),(5,2,5,'2025-02-24 19:17:29','2025-02-24 19:17:29',NULL),(6,3,1,'2025-02-24 19:18:03','2025-02-24 19:18:03',NULL),(7,4,3,'2025-02-24 19:18:11','2025-02-24 19:18:11',NULL),(8,4,6,'2025-02-26 14:12:17','2025-03-08 20:18:05',NULL),(9,1,3,'2025-02-26 17:43:19','2025-02-26 17:43:19',NULL),(10,4,1,'2025-02-26 17:56:55','2025-02-26 17:56:55',NULL),(11,4,7,'2025-02-26 17:56:59','2025-02-26 17:56:59',NULL),(12,4,8,'2025-02-26 17:57:05','2025-02-26 17:57:05',NULL),(13,4,9,'2025-02-26 18:36:18','2025-02-26 18:36:18',NULL),(14,4,10,'2025-03-03 16:26:34','2025-03-03 16:26:34',NULL),(15,1,5,'2025-03-04 13:14:33','2025-03-04 13:14:36','2025-03-04 13:14:36'),(16,8,1,'2025-03-04 15:42:34','2025-03-04 15:42:34',NULL),(17,5,1,'2025-03-04 16:05:34','2025-03-04 16:09:30',NULL),(18,10,12,'2025-03-04 16:32:06','2025-03-04 16:32:06',NULL),(19,10,14,'2025-03-04 16:32:09','2025-03-04 16:32:09',NULL),(20,10,13,'2025-03-04 16:32:13','2025-03-04 16:32:13',NULL),(21,4,15,'2025-03-05 12:36:56','2025-03-05 12:36:56',NULL),(22,4,14,'2025-03-06 19:25:17','2025-03-06 19:25:53','2025-03-06 19:25:53'),(23,4,16,'2025-03-07 12:43:32','2025-03-07 12:43:32',NULL),(24,12,12,'2025-03-07 13:40:26','2025-03-07 13:40:26',NULL),(25,4,17,'2025-03-08 13:11:53','2025-03-08 13:11:53',NULL),(26,4,18,'2025-03-08 14:12:35','2025-03-08 14:12:35',NULL),(27,4,19,'2025-03-08 14:15:49','2025-03-08 14:15:49',NULL),(28,4,20,'2025-03-08 19:44:17','2025-03-08 20:21:26',NULL),(29,4,21,'2025-03-10 10:40:06','2025-03-10 10:40:06',NULL),(30,4,22,'2025-03-10 10:44:45','2025-03-10 10:44:45',NULL),(31,4,23,'2025-03-12 10:47:01','2025-03-12 10:47:01',NULL),(32,4,24,'2025-03-12 11:29:27','2025-03-12 11:29:27',NULL);
/*!40000 ALTER TABLE `typology_sub_typologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typology_typo_galleries`
--

DROP TABLE IF EXISTS `typology_typo_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typology_typo_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `galleries_id` int NOT NULL,
  `typologies_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typology_typo_galleries`
--

LOCK TABLES `typology_typo_galleries` WRITE;
/*!40000 ALTER TABLE `typology_typo_galleries` DISABLE KEYS */;
INSERT INTO `typology_typo_galleries` VALUES (1,2,1,'2025-03-03 14:35:06','2025-03-03 14:35:06',NULL),(2,3,4,'2025-03-03 14:44:53','2025-03-03 14:44:53',NULL),(3,4,5,'2025-03-04 12:56:03','2025-03-04 12:56:03',NULL),(4,5,5,'2025-03-04 12:56:03','2025-03-04 12:56:03',NULL),(5,6,5,'2025-03-04 12:56:04','2025-03-04 12:56:04',NULL),(6,7,5,'2025-03-04 12:56:05','2025-03-04 12:56:05',NULL),(7,9,5,'2025-03-04 12:56:07','2025-03-04 12:56:07',NULL),(8,10,5,'2025-03-04 12:56:08','2025-03-04 12:56:08',NULL),(9,11,5,'2025-03-04 12:56:09','2025-03-04 12:56:09',NULL),(10,12,5,'2025-03-04 12:56:09','2025-03-04 12:56:09',NULL),(11,3,5,'2025-03-04 12:57:56','2025-03-04 12:57:56',NULL),(12,3,8,'2025-03-04 13:03:12','2025-03-04 13:03:12',NULL),(13,4,8,'2025-03-04 13:04:44','2025-03-04 13:04:44',NULL),(14,5,8,'2025-03-04 13:05:04','2025-03-04 13:05:04',NULL),(15,6,8,'2025-03-04 13:05:09','2025-03-04 13:05:09',NULL),(16,7,8,'2025-03-04 13:05:14','2025-03-04 13:05:14',NULL),(17,9,8,'2025-03-04 13:05:18','2025-03-04 13:05:18',NULL),(18,10,8,'2025-03-04 13:05:23','2025-03-04 13:05:23',NULL),(19,12,8,'2025-03-04 13:05:33','2025-03-04 13:05:33',NULL),(20,13,8,'2025-03-04 13:11:27','2025-03-04 13:11:27',NULL),(21,14,8,'2025-03-04 13:11:31','2025-03-04 13:11:31',NULL),(22,15,8,'2025-03-04 13:11:36','2025-03-17 15:09:12',NULL),(23,16,8,'2025-03-04 13:11:42','2025-03-04 13:11:42',NULL),(24,17,8,'2025-03-04 13:11:46','2025-03-04 13:11:46',NULL),(25,22,10,'2025-03-04 14:57:48','2025-03-04 14:57:48',NULL),(26,23,10,'2025-03-04 14:57:53','2025-03-04 14:57:53',NULL),(27,24,10,'2025-03-04 14:57:57','2025-03-04 14:57:57',NULL),(28,25,10,'2025-03-04 14:58:03','2025-03-04 14:58:03',NULL),(29,26,10,'2025-03-04 14:58:17','2025-03-04 14:58:17',NULL),(30,3,1,'2025-03-04 16:07:28','2025-03-04 16:14:01','2025-03-04 16:14:01'),(31,12,1,'2025-03-04 16:11:45','2025-03-04 16:11:49','2025-03-04 16:11:49'),(32,6,1,'2025-03-04 16:13:43','2025-03-04 16:13:56','2025-03-04 16:13:56'),(33,10,1,'2025-03-04 16:13:50','2025-03-04 16:13:53','2025-03-04 16:13:53'),(34,22,8,'2025-03-17 14:56:08','2025-03-17 16:41:26','2025-03-17 16:41:26');
/*!40000 ALTER TABLE `typology_typo_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verticals`
--

DROP TABLE IF EXISTS `verticals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verticals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verticals`
--

LOCK TABLES `verticals` WRITE;
/*!40000 ALTER TABLE `verticals` DISABLE KEYS */;
INSERT INTO `verticals` VALUES (1,'GV FINANCE','verticals/1740900563.gv-finance.webp','verticals/1742365466.vertical-1.jpg','Great Value Modern glass building Noida','GV Finance, operating under the brand name Dhansamrishi, is a Non-Banking Financial Company (NBFC) committed to empowering businesses through accessible, large-ticket enterprise financing solutions. With an Asset Under Management (AUM) of over INR 500 crore +, we provide the capital and guidance that growing enterprises need to reach their full potential in today’s competitive marketplace.','GV Finance delivers tailored financial solutions that empower businesses and individuals to optimize cash flow, secure investments, and scale with confidence. From structured lending to wealth management, we simplify finance, offering intelligent strategies to drive financial stability and long-term success. Our goal is to transform capital into confidence, enabling sustainable growth.','500 Cr',1,'2025-02-08 04:21:32','2025-03-19 12:24:26',NULL),(4,'GV Capital','verticals/1740900642.gv-capital.webp','verticals/1742365480.vertical-2.jpg','Great Value Financial documents Noida','GV Capital is a dedicated Asset Reconstruction Fund committed to revitalizing distressed assets and optimizing returns for our stakeholders. With an Asset Under Management (AUM) base exceeding INR 2,500 crore, we focus on unlocking the latent potential of underperforming assets through rigorous due diligence, strategic restructuring, and active portfolio management.','GV Capital fuels high-potential businesses with strategic investments, empowering visionary entrepreneurs to scale and innovate. Beyond funding, we provide deep industry insights, mentorship, and long-term partnerships to drive sustainable growth. We focus on businesses that create meaningful impact, leveraging smart capital to unlock potential and shape the future.','2500 Cr',1,'2025-02-26 12:03:35','2025-03-19 12:24:40',NULL);
/*!40000 ALTER TABLE `verticals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_galleries`
--

DROP TABLE IF EXISTS `work_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdn` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_galleries`
--

LOCK TABLES `work_galleries` WRITE;
/*!40000 ALTER TABLE `work_galleries` DISABLE KEYS */;
INSERT INTO `work_galleries` VALUES (1,'work-gallery/1740977474-1.webp','work-gallery/1742375643.1740977474-1.jpg','Great Value Outdoor corporate event Noida',NULL,'image',1,'2025-03-03 11:51:14','2025-03-19 15:14:03'),(2,'work-gallery/1740977498-2.webp','work-gallery/1742375651.1740977498-2.jpg','Great Value Corporate gathering Noida',NULL,'image',1,'2025-03-03 11:51:38','2025-03-19 15:14:11'),(3,'work-gallery/1740977511-3.webp','work-gallery/1742375660.1740977511-3.jpg','Great Value Corporate event Noida',NULL,'image',1,'2025-03-03 11:51:51','2025-03-19 15:14:20'),(4,'work-gallery/1740977524-4.webp','work-gallery/1742375669.1740977524-4.jpg','Great Value Outdoor game Noida',NULL,'image',1,'2025-03-03 11:52:04','2025-03-19 15:14:29'),(5,'work-gallery/1740977538-5.webp','work-gallery/1742375680.1740977538-5.jpg','Great Value Indoor recreational space Noida',NULL,'image',1,'2025-03-03 11:52:18','2025-03-19 15:14:40'),(6,'work-gallery/1740977551-6.webp','work-gallery/1742375688.1740977551-6.jpg','Great Value Outdoor corporate event Noida',NULL,'image',1,'2025-03-03 11:52:31','2025-03-19 15:14:48'),(7,'work-gallery/1740977565-7.webp','work-gallery/1742375696.1740977565-7.jpg','Great Value Corporate game Noida',NULL,'image',1,'2025-03-03 11:52:45','2025-03-19 15:14:56'),(8,'work-gallery/1740977583-8.webp','work-gallery/1742375706.1740977583-8.jpg','Great Value Outdoor courtyard Noida',NULL,'image',1,'2025-03-03 11:53:03','2025-03-19 15:15:06'),(9,'work-gallery/1740977599-9.webp','work-gallery/1742375721.1740977599-9.jpg','Great Value outdoor event Noida',NULL,'image',1,'2025-03-03 11:53:19','2025-03-19 15:15:21'),(10,'work-gallery/1740977615-10.webp','work-gallery/1742375748.1740977615-10.jpg','Great Value outdoor event Noida',NULL,'image',1,'2025-03-03 11:53:35','2025-03-19 15:15:48'),(12,'work-gallery/1740977646-12.webp','work-gallery/1742375764.1740977646-12.jpg','Great Value Team gathering Noida',NULL,'image',1,'2025-03-03 11:54:06','2025-03-19 15:16:04'),(13,'work-gallery/1740977664-13.webp','work-gallery/1742375775.1740977664-13.jpg','Great Value People playing cricket Noida',NULL,'image',1,'2025-03-03 11:54:24','2025-03-19 15:16:15'),(14,'work-gallery/1740977679-14.webp','work-gallery/1742375827.1740977679-14.jpg','Great Value Modern gym Noida',NULL,'image',1,'2025-03-03 11:54:39','2025-03-19 15:17:07'),(15,'work-gallery/1740977696-15.webp','work-gallery/1742375839.1740977696-15.jpg','Great Value modern fitness center Noida',NULL,'image',1,'2025-03-03 11:54:56','2025-03-19 15:17:19'),(16,'work-gallery/1740977710-16.webp','work-gallery/1742375848.1740977710-16.jpg','Great Value Casual outdoor game Noida',NULL,'image',1,'2025-03-03 11:55:10','2025-03-19 15:17:28'),(17,'work-gallery/1740977728-17.webp','work-gallery/1742375861.1740977728-17.jpg','Great Value Outdoor gathering Noida',NULL,'image',1,'2025-03-03 11:55:28','2025-03-19 15:17:41'),(21,'work-gallery/1742376299.1740988557-video1.webp','work-gallery/1742376201.1740988557-video1.jpg','Great Value Outdoor gathering Noida','https://www.youtube.com/embed/cLHnb0yNkq4','video',1,'2025-03-03 14:55:57','2025-03-19 15:24:59'),(22,'work-gallery/1742376310.1740988582-video2.webp','work-gallery/1742376191.1740988582-video2.jpg','Great Value Elegant event setup Noida','https://www.youtube.com/embed/pBh9RW3wbYg','video',1,'2025-03-03 14:56:22','2025-03-19 15:25:10'),(23,'work-gallery/1742376320.1740988602-video3.webp','work-gallery/1742376182.1740988602-video3.jpg','Great Value People playing cricket Noida','https://www.youtube.com/embed/pp3hb7WPJPU','video',1,'2025-03-03 14:56:42','2025-03-19 15:25:20'),(24,'work-gallery/1742376332.1740988623-video4.webp','work-gallery/1742376167.1740988623-video4.jpg','Great Value Casual badminton match Noida','https://www.youtube.com/embed/avP9-coXRiA','video',1,'2025-03-03 14:57:03','2025-03-19 15:25:32'),(25,'work-gallery/1742376349.1740988641-video5.webp','work-gallery/1742376149.1740988641-video5.jpg','Great Value social gathering in a garden Noida','https://www.youtube.com/embed/fGwiSG4MySY','video',1,'2025-03-03 14:57:21','2025-03-19 15:25:49'),(26,'work-gallery/1742376358.1740988658-video6.webp','work-gallery/1742376138.1740988658-video6.jpg','Great Value Team event Noida','https://www.youtube.com/embed/I2J3qovmAH0','video',1,'2025-03-03 14:57:38','2025-03-19 15:25:58'),(27,'work-gallery/1742376365.1740988678-video7.webp','work-gallery/1742376128.1740988678-video7.jpg','Great Value Event in a garden Noida','https://www.youtube.com/embed/D1nicFW--xk','video',1,'2025-03-03 14:57:58','2025-03-19 15:26:05'),(28,'work-gallery/1742376373.1740988696-video8.webp','work-gallery/1742376116.1740988696-video8.jpg','Great Value Corporate or social gathering Noida','https://www.youtube.com/embed/xMfZWSEcWgU','video',1,'2025-03-03 14:58:16','2025-03-19 15:26:13');
/*!40000 ALTER TABLE `work_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_values`
--

DROP TABLE IF EXISTS `work_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternative_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_values`
--

LOCK TABLES `work_values` WRITE;
/*!40000 ALTER TABLE `work_values` DISABLE KEYS */;
INSERT INTO `work_values` VALUES (1,'Professional Driven','work-values/1741592871.1741173072.1.webp','work-values/1742293328.1.png','Great Value Business profile Noida','We foster a culture of expertise, integrity, and continuous learning to drive excellence.',1,'2025-03-05 18:11:12','2025-03-18 16:22:08',NULL),(2,'Commitment','work-values/1741592878.1741173117.2.webp','work-values/1742293336.2.png','Great Value Professional partnership Noida','Our unwavering dedication fuels innovation, quality, and long-term success.',1,'2025-03-05 18:11:57','2025-03-18 16:22:16',NULL),(3,'Customer Centricity','work-values/1741592887.1741173156.3.webp','work-values/1742293345.3.png','Great Value Business management Noida','We prioritize our clients, crafting solutions that align with their aspirations and needs.',1,'2025-03-05 18:12:36','2025-03-18 16:22:25',NULL),(4,'Sustainability','work-values/1741592900.1741173200.4.webp','work-values/1742293353.4.png','Great Value Sustainable development Noida','Every project is designed with a responsibility to the environment and future generations.',1,'2025-03-05 18:13:20','2025-03-18 16:22:33',NULL),(5,'Operational Excellence','work-values/1741592911.1741173225.5.webp','work-values/1742293436.5.png','Great Value Quality assurance Noida','Precision, efficiency, and innovation define our approach to real estate development.',1,'2025-03-05 18:13:45','2025-03-18 16:23:56',NULL),(6,'Work-Life Harmony','work-values/1741592923.1741173269.6.webp','work-values/1742293450.6.png','Great Value Personal and professional balance Noida','We cultivate a supportive environment where personal well-being and professional growth go hand in hand.',1,'2025-03-05 18:14:29','2025-03-18 16:24:10',NULL),(7,'Use Good Judgment','work-values/1741592932.1741173317.7.webp','work-values/1742293461.7.png','Great Value Encouragement and support Noida','Thoughtful decision-making guides our actions, ensuring impact-driven solutions.',1,'2025-03-05 18:15:17','2025-03-18 16:24:21',NULL),(8,'Trust','work-values/1741592955.1741173363.8.webp','work-values/1742293471.8.png','Great Value Trust and integrity Noida','Built on transparency and integrity, our relationships stand the test of time.',1,'2025-03-05 18:16:03','2025-03-18 16:24:31',NULL),(9,'Collaboration','work-values/1741592967.1741173395.9.webp','work-values/1742293482.9.png','Great Value Team collaboration Noida','We thrive on teamwork, bringing together diverse talents to create extraordinary spaces.',1,'2025-03-05 18:16:35','2025-03-18 16:24:42',NULL),(10,'Purpose','work-values/1741592977.1741173427.10.webp','work-values/1742293494.10.png','Great Value Business strategy Noida','Every project we undertake is driven by a vision to shape a better, more connected world.',1,'2025-03-05 18:17:07','2025-03-18 16:24:54',NULL),(11,'test title','work-values/1741176057.et_now.webp',NULL,'test alt','test description',1,'2025-03-05 19:00:57','2025-03-05 19:04:27','2025-03-05 19:04:27');
/*!40000 ALTER TABLE `work_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'websitedesigning_great'
--

--
-- Dumping routines for database 'websitedesigning_great'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 10:04:37
