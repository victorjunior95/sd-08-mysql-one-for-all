CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
  `id_plano` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `plano` VARCHAR(25),
  `valor_plano` DECIMAL(4, 2),
) ENGINE = InnoDB;

CREATE TABLE historico (
  `usuario_id` INT NOT NULL,
  `cancao_id` INT NOT NULL,
  PRIMARY KEY(`usuario_id`, `cancao_id`),
  FOREIGN KEY (`usuario_id`)
    REFERENCES `usuarios` (`usuario_id`),
  FOREIGN KEY (`cancao_id`)
    REFERENCES `cancoes` (`cancao_id`),
) ENGINE = InnoDB;
