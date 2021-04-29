DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
    plano_id INT NOT NULL AUTO_INCREMENT,
    plano_nome VARCHAR(45) NOT NULL,
    valor_plano DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (plano_id)
) engine = InnoDB;

CREATE TABLE usuario(
    usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario_nome VARCHAR(45) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    PRIMARY KEY (usuario_id),
    CONSTRAINT `fk_usuario_plano` FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;

CREATE TABLE artista(
    artista_id INT NOT NULL AUTO_INCREMENT,
    artista_nome VARCHAR(45) NOT NULL,
    PRIMARY KEY (artista_id)
) engine = InnoDB;

CREATE TABLE album(
    album_id INT NOT NULL AUTO_INCREMENT,
    album_nome VARCHAR(45) NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (album_id),
    CONSTRAINT `fk_album_artista` FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
    cancao_id INT NOT NULL AUTO_INCREMENT,
    cancao_nome VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (cancao_id),
    CONSTRAINT `fk_cancao_album` FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

CREATE TABLE seguindo(
    artista_id INT NOT NULL,
    usuario_id INT NOT NULL,
    PRIMARY KEY (artista_id, usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
) engine = InnoDB;

CREATE TABLE historico(
    cancao_id INT NOT NULL,
    usuario_id INT NOT NULL,
    PRIMARY KEY (cancao_id, usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
) engine = InnoDB;

INSERT INTO plano (plano_nome, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO usuario (usuario_nome, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO artista (artista_nome)
VALUES 
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shanno');

INSERT INTO album (album_nome, artista_id)
VALUES 
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO cancoes (cancao_nome, album_id)
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

INSERT INTO seguindo (artista_id, usuario_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 1),
  (4, 4);

INSERT INTO historico (cancao_id, usuario_id)
VALUES
  (1, 1),
  (2, 2),
  (3, 4),
  (4, 3),
  (6, 1),
  (6, 3),
  (11, 4),
  (13, 2),
  (14, 1),
  (15, 2),
  (16, 1),
  (16, 3),
  (17, 2),
  (18, 4);
