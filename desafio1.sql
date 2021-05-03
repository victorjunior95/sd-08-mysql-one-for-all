CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

-- Planos

CREATE TABLE planos (
  `id_plano` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `plano` VARCHAR(25),
  `valor_plano` DECIMAL(4, 2)
) ENGINE = InnoDB;

INSERT INTO planos (plano, valor_plano)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitario', 5.99);

-- Historicos

CREATE TABLE historicos (
  `id_usuario` INT NOT NULL,
  `id_cancao` INT NOT NULL,
  PRIMARY KEY(`id_usuario`, `id_cancao`),
  FOREIGN KEY (`id_usuario`)
    REFERENCES `usuarios` (`id_usuario`),
  FOREIGN KEY (`id_cancao`)
    REFERENCES `cancoes` (`id_cancao`)
) ENGINE = InnoDB;

INSERT INTO historicos (id_usuario, id_cancao)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

-- Artistas

CREATE TABLE artistas (
  `id_artista` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `artista` VARCHAR(100) NOT NULL UNIQUE,
) ENGINE = InnoDB;

INSERT INTO artistas (artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

-- Albuns

CREATE TABLE albuns(
  `id_album` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `album` VARCHAR(100) NOT NULL,
  `id_artista` INT NOT NULL,
  FOREIGN KEY (`id_artista`)
    REFERENCES `artistas` (`id_artista`)
) ENGINE = InnoDB;

INSERT INTO albuns (album, id_artista)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

-- Cancoes

CREATE TABLE cancoes(
  `id_cancoes` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cancao` VARCHAR(100) NOT NULL,
  `id_album` INT NOT NULL,
  FOREIGN KEY(`id_album`)
    REFERENCES `album` (`id_album`)
) ENGINE = InnoDB;

INSERT INTO cancoes (cancao, id_album)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE usuarios (
  `id_usuario` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(40) NOT NULL,
  `idade` INT NOT NULL,
  `id_plano` INT NOT NULL,
  FOREIGN KEY (`id_plano`)
    REFERENCES `planos` (`id_plano`)
) ENGINE = InnoDB;
