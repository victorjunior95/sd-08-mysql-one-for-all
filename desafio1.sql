DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(50) NOT NULL,
  valor_plano DOUBLE NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios (
  ususario_id INT PRIMARY KEY AUTO_INCREMENT,
  
) ENGINE = InnoDB;

CREATE TABLE artistas () ENGINE = InnoDB;

CREATE TABLE albuns () ENGINE = InnoDB;

CREATE TABLE musicas () ENGINE = InnoDB;

CREATE TABLE  seguindo () ENGINE = InnoDB;

CREATE TABLE historico_reproducao () ENGINE = InnoDB;