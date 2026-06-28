CREATE DATABASE  IF NOT EXISTS `quiz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quiz`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `alternativa`
--

DROP TABLE IF EXISTS `alternativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternativa` (
  `id_alternativa` int NOT NULL AUTO_INCREMENT,
  `texto` varchar(255) NOT NULL,
  `correta` tinyint(1) NOT NULL DEFAULT '0',
  `id_pergunta` int NOT NULL,
  PRIMARY KEY (`id_alternativa`),
  KEY `fk_alternativa_pergunta` (`id_pergunta`),
  CONSTRAINT `fk_alternativa_pergunta` FOREIGN KEY (`id_pergunta`) REFERENCES `pergunta` (`id_pergunta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternativa`
--

LOCK TABLES `alternativa` WRITE;
/*!40000 ALTER TABLE `alternativa` DISABLE KEYS */;
INSERT INTO `alternativa` VALUES (1,'Pedro Álvares Cabral',1,1),(2,'Dom Pedro I',0,1),(3,'Tiradentes',0,1),(4,'Santos Dumont',0,1),(5,'Sydney',0,2),(6,'Melbourne',0,2),(7,'Canberra',1,2),(8,'Brisbane',0,2),(9,'Oxigênio',1,3),(10,'Ouro',0,3),(11,'Ósmio',0,3),(12,'Prata',0,3),(13,'96',1,4),(14,'88',0,4),(15,'108',0,4),(16,'84',0,4),(17,'Central Processing Unit',1,5),(18,'Computer Processing Unit',0,5),(19,'Central Program Utility',0,5),(20,'Computer Program Unit',0,5),(21,'Java',0,6),(22,'Kotlin',1,6),(23,'Python',0,6),(24,'C#',0,6),(25,'Sasuke',0,7),(26,'Naruto',1,7),(27,'Kakashi',0,7),(28,'Gaara',0,7),(29,'Steven Spielberg',0,8),(30,'James Cameron',1,8),(31,'Christopher Nolan',0,8),(32,'Ridley Scott',0,8),(33,'Breaking Bad',0,9),(34,'Game of Thrones',1,9),(35,'The Boys',0,9);
/*!40000 ALTER TABLE `alternativa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-28 16:41:40
