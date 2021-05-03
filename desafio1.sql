CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
  `id_plano` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `plano` VARCHAR(25),
  `valor_plano` DECIMAL(4, 2),
) ENGINE = InnoDB;
