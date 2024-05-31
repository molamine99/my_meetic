-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (x86_64)
--
-- Host: localhost    Database: meetic
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `date_de_naissance` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `mot_de_passe` varchar(225) NOT NULL,
  `loisir` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'dosso','lamine','14-11-2000','homme','paris','momolamine95@outlook.fr','d7329fbf90af82607b60f96486dc01cf','foot'),(2,'diakhaby','cheickou','14-11-2004','homme','paris','cheickou99@gmail.com','f17227d37105824816d35ab106cc44e0','boxe'),(3,'diop','nadir','14-07-2004','homme','paris','nadirdiop99@gmail.com','2954c87e75202e9891412826cadc2644','boxe'),(9,'Chen','Max','2002-12-08','H','ps','max.chen@epitech.eu','Max','Jeux'),(10,'falla','enzo','2003-06-15','H','ps','enzo.falla@epitech.eu','root','Jeux'),(12,'pretre','renaud','1976-08-24','H','ps','renaud.pretre@mail.com','9409083fa88379a7ed6301554c1e3d62','musique'),(13,'kort','adam','1997-07-14','H','ps','adam@gmail.com','63a9f0ea7bb98050796b649e85481845','foot'),(15,'janvier','pierre-evens','2001-06-19','H','ps','pierre-evens@epitech.eu','63a9f0ea7bb98050796b649e85481845','boxe'),(16,'cisse','bafode','2002-11-14','homme','Paris','cisse@epitech.eu','63a9f0ea7bb98050796b649e85481845','foot'),(18,'dosso','alassane','2004-07-11','homme','Paris','alassane@gmail.com','63a9f0ea7bb98050796b649e85481845','foot'),(19,'','','','','','','d41d8cd98f00b204e9800998ecf8427e','');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 11:46:59
