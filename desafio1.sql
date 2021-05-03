-- MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: SpotifyClone
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `Albuns`
--

DROP TABLE IF EXISTS `Albuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Albuns` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album` varchar(100) NOT NULL,
  `artista_id` int NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `fk_Albuns_Artistas` (`artista_id`),
  CONSTRAINT `fk_Albuns_Artistas` FOREIGN KEY (`artista_id`) REFERENCES `Artistas` (`artista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Albuns`
--

LOCK TABLES `Albuns` WRITE;
/*!40000 ALTER TABLE `Albuns` DISABLE KEYS */;
INSERT INTO `Albuns` VALUES (1,'Envious',1),(2,'Exuberant',1),(3,'Hallowed Steam',2),(4,'Incandescent',3),(5,'Temporary Culture',4);
/*!40000 ALTER TABLE `Albuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artistas`
--

DROP TABLE IF EXISTS `Artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artistas` (
  `artista_id` int NOT NULL AUTO_INCREMENT,
  `artista` varchar(100) NOT NULL,
  PRIMARY KEY (`artista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artistas`
--

LOCK TABLES `Artistas` WRITE;
/*!40000 ALTER TABLE `Artistas` DISABLE KEYS */;
INSERT INTO `Artistas` VALUES (1,'Walter Phoenix'),(2,'Peter Strong'),(3,'Lance Day'),(4,'Freedie Shannon');
/*!40000 ALTER TABLE `Artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancoes`
--

DROP TABLE IF EXISTS `Cancoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cancoes` (
  `cancao_id` int NOT NULL AUTO_INCREMENT,
  `cancao` varchar(100) NOT NULL,
  `album_id` int DEFAULT NULL,
  PRIMARY KEY (`cancao_id`),
  KEY `fk_Cancoes_Albuns` (`album_id`),
  CONSTRAINT `fk_Cancoes_Albuns` FOREIGN KEY (`album_id`) REFERENCES `Albuns` (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancoes`
--

LOCK TABLES `Cancoes` WRITE;
/*!40000 ALTER TABLE `Cancoes` DISABLE KEYS */;
INSERT INTO `Cancoes` VALUES (1,'Soul For Us',1),(2,'Reflections Of Magic',1),(3,'Dance With Her Own',1),(4,'Troubles Of My Inner Fire',2),(5,'Time Fireworks',2),(6,'Magic Circus',3),(7,'Honey, So Do I',3),(8,'Sweetie, Let\'s Go Wild',3),(9,'She Knows',3),(10,'Fantasy For Me',4),(11,'Celebration Of More',4),(12,'Rock His Everything',4),(13,'Home Forever',4),(14,'Diamond Power',4),(15,'Honey, Let\'s Be Silly',4),(16,'Thang Of Thunder',5),(17,'Words Of Her Life',5),(18,'Without My Streets',5);
/*!40000 ALTER TABLE `Cancoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historicos`
--

DROP TABLE IF EXISTS `Historicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historicos` (
  `historico_id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `historico_de_reproducoes` varchar(100) NOT NULL,
  `cancao_id` int NOT NULL,
  PRIMARY KEY (`historico_id`,`usuario_id`),
  KEY `fk_Historicos_Usuarios` (`usuario_id`),
  KEY `fk_Historicos_Cancoes` (`cancao_id`),
  CONSTRAINT `fk_Historicos_Cancoes` FOREIGN KEY (`cancao_id`) REFERENCES `Cancoes` (`cancao_id`),
  CONSTRAINT `fk_Historicos_Usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historicos`
--

LOCK TABLES `Historicos` WRITE;
/*!40000 ALTER TABLE `Historicos` DISABLE KEYS */;
INSERT INTO `Historicos` VALUES (1,1,'Soul For Us',1),(2,1,'Magic Circus',6),(3,1,'Diamond Power',14),(4,1,'Thang Of Thunder',16),(5,2,'Home Forever',13),(6,2,'Words Of Her Life',17),(7,2,'Reflections Of Magic',2),(8,2,'Honey, Let\'s Be Silly',15),(9,3,'Troubles Of My Inner Fire',4),(10,3,'Thang Of Thunder',16),(11,3,'Magic Circus',6),(12,4,'Dance With Her Own',3),(13,4,'Without My Streets',18),(14,4,'Celebration Of More',11);
/*!40000 ALTER TABLE `Historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Planos`
--

DROP TABLE IF EXISTS `Planos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Planos` (
  `plano_id` tinyint NOT NULL AUTO_INCREMENT,
  `plano` varchar(50) NOT NULL,
  `valor_plano` decimal(5,2) DEFAULT '0.00',
  PRIMARY KEY (`plano_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Planos`
--

LOCK TABLES `Planos` WRITE;
/*!40000 ALTER TABLE `Planos` DISABLE KEYS */;
INSERT INTO `Planos` VALUES (1,'gratuito',0.00),(2,'familiar',7.99),(3,'universitário',5.99);
/*!40000 ALTER TABLE `Planos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seguidos`
--

DROP TABLE IF EXISTS `Seguidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Seguidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `seguindo_artistas` varchar(100) NOT NULL,
  `artista_id` int NOT NULL,
  PRIMARY KEY (`id`,`usuario_id`),
  KEY `fk_Seguidos_Usuarios` (`usuario_id`),
  KEY `fk_Seguidos_Artistas` (`artista_id`),
  CONSTRAINT `fk_Seguidos_Artistas` FOREIGN KEY (`artista_id`) REFERENCES `Artistas` (`artista_id`),
  CONSTRAINT `fk_Seguidos_Usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seguidos`
--

LOCK TABLES `Seguidos` WRITE;
/*!40000 ALTER TABLE `Seguidos` DISABLE KEYS */;
INSERT INTO `Seguidos` VALUES (1,1,'Walter Phoenix',1),(2,1,'Freedie Shannon',4),(3,1,'Lance Day',3),(4,2,'Walter Phoenix',1),(5,2,'Lance Day',3),(6,3,'Peter Strong',2),(7,3,'Walter Phoenix',1),(8,4,'Freedie Shannon',4);
/*!40000 ALTER TABLE `Seguidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `idade` tinyint NOT NULL,
  `plano_id` tinyint DEFAULT '1',
  PRIMARY KEY (`usuario_id`),
  KEY `fk_Usuarios_Planos` (`plano_id`),
  CONSTRAINT `fk_Usuarios_Planos` FOREIGN KEY (`plano_id`) REFERENCES `Planos` (`plano_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Thati',23,1),(2,'Cintia',35,2),(3,'Bill',20,3),(4,'Roger',45,1);
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-03  0:58:45
