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
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pergunta` (
  `id_pergunta` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(255) NOT NULL,
  `dificuldade` enum('Fácil','Média','Difícil') NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id_pergunta`),
  KEY `fk_pergunta_categoria` (`id_categoria`),
  CONSTRAINT `fk_pergunta_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (1,'Quem descobriu o Brasil?','Fácil',1),(2,'Qual é a capital da Austrália?','Média',2),(3,'Qual elemento químico possui símbolo O?','Fácil',3),(4,'Quanto é 12 x 8?','Fácil',4),(5,'O que significa a sigla CPU?','Média',5),(6,'Qual linguagem é utilizada para desenvolvimento Android nativo atualmente?','Média',6),(7,'Quem é o protagonista de Naruto?','Fácil',7),(8,'Quem dirigiu o filme Titanic?','Média',8),(9,'Qual série acompanha a família Stark?','Média',9),(10,'Qual banda lançou o álbum Abbey Road?','Média',10),(11,'Quantos jogadores cada time possui em uma partida oficial de vôlei?','Média',11),(12,'Qual país venceu a Copa do Mundo de 2002?','Média',12),(13,'Qual empresa desenvolveu o jogo Minecraft?','Média',13),(14,'Quem escreveu Dom Casmurro?','Média',14),(15,'Quem era o deus dos mares na mitologia grega?','Fácil',15),(16,'Qual planeta é conhecido como planeta vermelho?','Fácil',16),(17,'Em que ano ocorreu a pandemia de COVID-19?','Fácil',17),(18,'Quem pintou a Mona Lisa?','Fácil',18),(19,'Qual é o nome da tripulação liderada por Luffy?','Fácil',19),(20,'Qual é o maior oceano da Terra?','Fácil',20);
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-24 21:11:53
