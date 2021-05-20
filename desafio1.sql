DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS `planos` (
  `plano_id` INT NOT NULL AUTO_INCREMENT,
  `plano` VARCHAR(45) NOT NULL,
  `valor_plano` DOUBLE NOT NULL,
  PRIMARY KEY (`plano_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `idade` INT NOT NULL,
  `plano_id` INT NOT NULL,
  PRIMARY KEY (`usuario_id`),
    FOREIGN KEY (`plano_id`) REFERENCES `planos` (`plano_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `artistas` (
  `artista_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`artista_id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `albuns` (
  `nome` VARCHAR(100) NOT NULL,
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `artista_id` INT NOT NULL,
  PRIMARY KEY (`album_id`),
    FOREIGN KEY (`artista_id`)
    REFERENCES `artistas` (`artista_id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `cancoes` (
  `cancoes_id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`cancoes_id`),
    FOREIGN KEY (`album_id`)
    REFERENCES `albuns` (`album_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS historico_de_reproducoes (
  usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
  	FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS seguindo_artistas (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id))
ENGINE = InnoDB;

INSERT INTO SpotifyClone.planos ( plano, valor_plano) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO SpotifyClone.usuario (nome, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artistas (nome) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.albuns (artista_id, nome) VALUES
(1, 'Envious'),
(1, 'Exuberant'),
(2, 'Hallowed Steam'),
(3, 'Hallowed Steam'),
(4, 'Temporary Culture');

INSERT INTO SpotifyClone.cancoes (album_id, titulo) VALUES
(1,'Soul For Us' ),
(1, 'Reflections Of Magic'),
(1, 'Dance With Her Own'),
(2, 'Troubles Of My Inner Fire'),
(2, 'Time Fireworks'),
(3, 'Magic Circus'),
(3, 'Honey, So Do I'),
(3, "Sweetie, Let's Go Wild"),
(3, 'She Knows'),
(4, 'Fantasy For Me'),
(4, 'Celebration Of More'),
(4, 'Rock His Everything'),
(4, 'Home Forever'),
(4, 'Diamond Power'),
(4, "Honey, Let's Be Silly"),
(5, 'Thang Of Thunder'),
(5, 'Words Of Her Life'),
(5, 'Without My Streets');


INSERT INTO SpotifyClone.historico_de_reproducoes (usuario_id, cancoes_id) VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 7),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artista_id) VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(3,3),
(3,2),
(3,1),
(4,4);
