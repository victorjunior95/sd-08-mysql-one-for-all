-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: SpotifyClone
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album_nome` varchar(45) NOT NULL,
  `artista_id` int NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `fk_album_artista` (`artista_id`),
  CONSTRAINT `fk_album_artista` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`artista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Envious',1),(2,'Exuberant',1),(3,'Hallowed Steam',2),(4,'Incandescent',3),(5,'Temporary Culture',4);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artista` (
  `artista_id` int NOT NULL AUTO_INCREMENT,
  `artista_nome` varchar(45) NOT NULL,
  PRIMARY KEY (`artista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'Walter Phoenix'),(2,'Peter Strong'),(3,'Lance Day'),(4,'Freedie Shanno');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancoes`
--

DROP TABLE IF EXISTS `cancoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancoes` (
  `cancao_id` int NOT NULL AUTO_INCREMENT,
  `cancao_nome` varchar(100) NOT NULL,
  `album_id` int NOT NULL,
  PRIMARY KEY (`cancao_id`),
  KEY `fk_cancao_album` (`album_id`),
  CONSTRAINT `fk_cancao_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancoes`
--

LOCK TABLES `cancoes` WRITE;
/*!40000 ALTER TABLE `cancoes` DISABLE KEYS */;
INSERT INTO `cancoes` VALUES (1,'Soul For Us',1),(2,'Reflections Of Magic',1),(3,'Dance With Her Own',1),(4,'Troubles Of My Inner Fire',2),(5,'Time Fireworks',2),(6,'Magic Circus',3),(7,'Honey, So Do I',3),(8,'Sweetie, Let\'s Go Wild',3),(9,'She Knows',3),(10,'Fantasy For Me',4),(11,'Celebration Of More',4),(12,'Rock His Everything',4),(13,'Home Forever',4),(14,'Diamond Power',4),(15,'Honey, Let\'s Be Silly',4),(16,'Thang Of Thunder',5),(17,'Words Of Her Life',5),(18,'Without My Streets',5);
/*!40000 ALTER TABLE `cancoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cancao_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`cancao_id`,`usuario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`cancao_id`) REFERENCES `cancoes` (`cancao_id`),
  CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,1),(6,1),(14,1),(16,1),(2,2),(13,2),(15,2),(17,2),(4,3),(6,3),(16,3),(3,4),(11,4),(18,4);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano`
--

DROP TABLE IF EXISTS `plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano` (
  `plano_id` int NOT NULL AUTO_INCREMENT,
  `plano_nome` varchar(45) NOT NULL,
  `valor_plano` decimal(10,2) NOT NULL,
  PRIMARY KEY (`plano_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano`
--

LOCK TABLES `plano` WRITE;
/*!40000 ALTER TABLE `plano` DISABLE KEYS */;
INSERT INTO `plano` VALUES (1,'gratuito',0.00),(2,'familiar',7.99),(3,'universitário',5.99);
/*!40000 ALTER TABLE `plano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguindo`
--

DROP TABLE IF EXISTS `seguindo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguindo` (
  `artista_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`artista_id`,`usuario_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `seguindo_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`artista_id`),
  CONSTRAINT `seguindo_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguindo`
--

LOCK TABLES `seguindo` WRITE;
/*!40000 ALTER TABLE `seguindo` DISABLE KEYS */;
INSERT INTO `seguindo` VALUES (1,1),(3,1),(4,1),(1,2),(3,2),(1,3),(2,3),(4,4);
/*!40000 ALTER TABLE `seguindo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `usuario_nome` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `plano_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `fk_usuario_plano` (`plano_id`),
  CONSTRAINT `fk_usuario_plano` FOREIGN KEY (`plano_id`) REFERENCES `plano` (`plano_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Thati',23,1),(2,'Cintia',35,2),(3,'Bill',20,3),(4,'Roger',45,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-30 16:48:42
