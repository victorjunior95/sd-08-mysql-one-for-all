DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE `planos` (
  `plano_id` int NOT NULL AUTO_INCREMENT,
  `plano` varchar(30) NOT NULL,
  `valor_plano` decimal(5,2) NOT NULL,
  PRIMARY KEY (`plano_id`)
) ENGINE=InnoDB;

CREATE TABLE `usuarios` (
  `usuario_id` int NOT NULL AUTO_INCREMENT,
  `usuario` char(45) NOT NULL,
  `idade` int NOT NULL,
  `plano_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`),
  KEY `fk_usuarios_1_idx` (`plano_id`),
  CONSTRAINT `fk_usuarios_1` FOREIGN KEY (`plano_id`) REFERENCES `planos` (`plano_id`)
) ENGINE=InnoDB;

CREATE TABLE `artistas` (
  `artista_id` int NOT NULL AUTO_INCREMENT,
  `artista` char(45) NOT NULL,
  PRIMARY KEY (`artista_id`)
) ENGINE=InnoDB;

CREATE TABLE `albuns` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album` varchar(45) NOT NULL,
  `artista_id` int NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `fk_albuns_1_idx` (`artista_id`),
  CONSTRAINT `fk_albuns_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`artista_id`)
) ENGINE=InnoDB;

CREATE TABLE `cancoes` (
  `cancao_id` int NOT NULL AUTO_INCREMENT,
  `cancao` char(45) NOT NULL,
  `artista_id` int NOT NULL,
  `album_id` int NOT NULL,
  PRIMARY KEY (`cancao_id`),
  KEY `fk_cancoes_1_idx` (`artista_id`),
  KEY `fk_cancoes_2_idx` (`album_id`),
  CONSTRAINT `fk_cancoes_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`artista_id`),
  CONSTRAINT `fk_cancoes_2` FOREIGN KEY (`album_id`) REFERENCES `albuns` (`album_id`)
) ENGINE=InnoDB;

CREATE TABLE `historico_de_reproducoes` (
  `usuario_id` int NOT NULL,
  `cancao_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`,`cancao_id`)
) ENGINE=InnoDB;

CREATE TABLE `seguidores` (
  `usuario_id` int NOT NULL,
  `artista_id` int NOT NULL,
  PRIMARY KEY (`usuario_id`,`artista_id`)
) ENGINE=InnoDB;

INSERT INTO planos (plano, valor_plano)VALUES 
('gratuito',0),('familiar',7.99),('universitário',5.99);

INSERT INTO usuarios (usuario, idade, plano_id) VALUES 
('Thati',23,1),('Cintia',35,2),('Bill',20,3),('Roger',45,1);

INSERT INTO artistas (artista) VALUES 
('Walter Phoenix'),('Peter Strong'),('Lance Day'),('Freedie Shannon');

INSERT INTO albuns (album, artista_id) VALUES 
('Envious',1),('Exuberant',1),('Hallowed Steam',2),('Incandescent',3),('Temporary Culture',4);

INSERT INTO cancoes (cancao, artista_id, album_id) VALUES 
('Soul For Us',1,1),('Reflections Of Magic',1,1),('Dance With Her Own',1,1),
('Troubles Of My Inner Fire',1,2),('Time Fireworks',1,2),('Magic Circus',2,3),
('Honey, So Do I',2,3),("Sweetie, Let's Go Wild",2,3),('She Knows',2,3),
('Fantasy For Me',3,4),('Celebration Of More',3,4),('Rock His Everything',3,4),
('Home Forever',3,4),('Diamond Power',3,4),("Honey, Let's Be Silly",3,4),
('Thang Of Thunder',4,5),('Words Of Her Life',4,5),('Without My Streets',4,5);

INSERT INTO historico_de_reproducoes (usuario_id, cancao_id) VALUES 
(1,1),(1,6),(1,14),(1,16),(2,2),(2,13),(2,15),(2,17),(3,4),(3,6),(3,16),(4,3),(4,11),(4,18);

INSERT INTO seguidores (usuario_id, artista_id) VALUES 
(1,1),(1,4),(2,1),(2,3),(3,1),(3,2),(4,4);
