CREATE DATABASE IF NOT EXISTS `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE `Plano` (
  `Plano_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Plano` VARCHAR(50) NOT NULL,
  `Valor` DOUBLE NOT NULL
) ENGINE = InnoDB;

CREATE TABLE `Usuario` (
  `Usuario_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Idade` INT NOT NULL,
  `Plano_id` INT NOT NULL,
  FOREIGN KEY (`Plano_id`) REFERENCES `Plano` (`Plano_id`)
  ) ENGINE = InnoDB;

CREATE TABLE `Artista` (
  `Artista_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE `Album` (
  `Album_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Album` VARCHAR(100) NOT NULL,
  `Artista_id` INT NOT NULL,
  FOREIGN KEY (`Artista_id`) REFERENCES `Artista` (`Artista_id`)
) ENGINE = InnoDB;

CREATE TABLE `Seguindo_Artista` (
  `Usuario_id` INT NOT NULL,
  `Artista_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`Usuario_id`, `Artista_id`),
  FOREIGN KEY (`Usuario_id`) REFERENCES `Usuario` (`Usuario_id`),
  FOREIGN KEY (`Artista_id`) REFERENCES `Artista` (`Artista_id`)
) ENGINE = InnoDB;

CREATE TABLE `Cancao` (
  `Cancao_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Album_id` INT NOT NULL,
  FOREIGN KEY (`Album_id`) REFERENCES `Album` (`Album_id`)
) ENGINE = InnoDB;

CREATE TABLE `Historico_Cancao` (
  `Usuario_id` INT NOT NULL,
  `Cancao_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`Usuario_id`, `Cancao_id`),
  FOREIGN KEY (`Usuario_id`) REFERENCES `Usuario` (`Usuario_id`),
  FOREIGN KEY (`Cancao_id`) REFERENCES `Cancao` (`Cancao_id`)
) ENGINE = InnoDB;

INSERT INTO `Plano`(`Plano`, `Valor`) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO `Usuario`(`Nome`, `Idade`, `Plano_id`) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO `Artista`(`Nome`) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO `Album`(`Album`, `Artista_id`) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO `Seguindo_Artista`(`Usuario_id`, `Artista_id`) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO `Cancao`(`Nome`, `Album_id`) VALUES
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

INSERT INTO `Historico_Cancao`(`Usuario_id`, `Cancao_id`) VALUES
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