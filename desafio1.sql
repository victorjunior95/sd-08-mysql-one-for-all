CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
  `id_plano` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `plano` VARCHAR(25),
  `valor_plano` DECIMAL(4, 2)
) ENGINE = InnoDB;

CREATE TABLE historicos (
  `id_usuario` INT NOT NULL,
  `id_cancao` INT NOT NULL,
  PRIMARY KEY(`id_usuario`, `id_cancao`),
  FOREIGN KEY (`id_usuario`)
    REFERENCES `usuarios` (`id_usuario`),
  FOREIGN KEY (`id_cancao`)
    REFERENCES `cancoes` (`id_cancao`)
) ENGINE = InnoDB;

CREATE TABLE artistas (
  `id_artista` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `artista` VARCHAR(100) NOT NULL UNIQUE,
) ENGINE = InnoDB;

CREATE TABLE albuns(
  `id_album` INT NOT NULL AUTO_INCREMENT,
  `album` VARCHAR(100) NOT NULL,
  `id_artista` INT NOT NULL,
  FOREIGN KEY (`id_artista`)
    REFERENCES `artistas` (`id_artista`)
) ENGINE = InnoDB;

CREATE TABLE cancoes() ENGINE = InnoDB;

CREATE TABLE usuarios (
  `id_usuario` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(40) NOT NULL,
  `idade` INT NOT NULL,
  `id_plano` INT NOT NULL,
  FOREIGN KEY (`id_plano`)
    REFERENCES `planos` (`id_plano`)
) ENGINE = InnoDB;
