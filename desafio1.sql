DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE artista(
  id INT PRIMARY KEY NOT NULL,
  artista_nome VARCHAR(100) NOT NULL
) ENGINE = InnoDB;
CREATE TABLE album(
  id INT PRIMARY KEY NOT NULL,
  album_nome VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artista(id)
) ENGINE = InnoDB;
CREATE TABLE musicas(
  id INT PRIMARY KEY NOT NULL,
  musica_nome VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(id)
) ENGINE = InnoDB;
CREATE TABLE planos(
  id INT PRIMARY KEY NOT NULL,
  plano_nome VARCHAR(100) NOT NULL,
  plano_valor DOUBLE NOT NULL
) ENGINE = InnoDB;
CREATE TABLE usuarios(
  id INT PRIMARY KEY NOT NULL,
  usuario_nome VARCHAR(100) NOT NULL,
  usuario_idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos(id)
) ENGINE = InnoDB;
CREATE TABLE seguindo(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (artista_id) REFERENCES artista(id)
) ENGINE = InnoDB;
CREATE TABLE reproducoes(
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (musica_id) REFERENCES musicas(id)
) ENGINE = InnoDB;
INSERT INTO artista (id, artista_nome)
VALUES (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');
INSERT INTO album (id, album_nome, artista_id)
VALUES (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 3),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);
INSERT INTO musicas (id, musica_nome, album_id)
VALUES (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, "Sweetie, Let's Go Wild", 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, "Honey, Let's Be Silly", 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);
INSERT INTO planos (id, plano_nome, plano_valor)
VALUES (1, "gratuito", 0),
  (2, "familiar", 7.99),
  (3, "universitário", 5.99);
INSERT INTO usuarios (id, usuario_nome, usuario_idade, plano_id)
VALUES (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);
INSERT INTO seguindo (usuario_id, artista_id)
VALUES (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
INSERT INTO reproducoes (usuario_id, musica_id)
VALUES (1, 1),
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
