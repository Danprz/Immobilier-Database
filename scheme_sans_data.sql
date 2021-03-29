-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: immobilier_bretagne
-- ------------------------------------------------------
-- Server version	8.0.23

--
-- Table structure for table `biens`
--

DROP TABLE IF EXISTS `biens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_bien` varchar(45) NOT NULL,
  `anne_construction` year NOT NULL,
  `style_bien` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prix_vente` int NOT NULL,
  `prix_m2` int NOT NULL,
  `pieces` int NOT NULL,
  `chambres` int NOT NULL,
  `biens_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `details_bien_idx` (`biens_id`),
  CONSTRAINT `details_bien` FOREIGN KEY (`biens_id`) REFERENCES `biens` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `localisations`
--

DROP TABLE IF EXISTS `localisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localisations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ville` varchar(30) NOT NULL,
  `rue` varchar(255) NOT NULL,
  `biens_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `localisation_bien_idx` (`biens_id`),
  CONSTRAINT `localisation_bien` FOREIGN KEY (`biens_id`) REFERENCES `biens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `statuts`
--

DROP TABLE IF EXISTS `statuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `statut` varchar(45) NOT NULL DEFAULT 'vendu',
  `date_vente` date NOT NULL,
  `biens_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_bien_idx` (`biens_id`),
  CONSTRAINT `status_bien` FOREIGN KEY (`biens_id`) REFERENCES `biens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `surfaces`
--

DROP TABLE IF EXISTS `surfaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surfaces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surface_total` int NOT NULL,
  `surface_hab` int NOT NULL,
  `biens_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surfaces_bien_idx` (`biens_id`),
  CONSTRAINT `surfaces_bien` FOREIGN KEY (`biens_id`) REFERENCES `biens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump completed on 2021-03-25 18:05:33
