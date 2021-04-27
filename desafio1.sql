CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
    plano_id INT PRIMARY KEY auto_increment,
    plano VARCHAR(25) NOT NULL,
    valor_plano DECIMAL(3,2) NOT NULL
) engine = InnoDB;

INSERT INTO plano (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

CREATE TABLE album(
    album_id INT PRIMARY KEY auto_increment,
    album VARCHAR(30) NOT NULL
) engine = InnoDB;

INSERT INTO album (album)
VALUES
  ('Envious'),
  ('Exuberant'),
  ('Hallowed Steam'),
  ('Incandescent'),
  ('Temporary Culture');
  
CREATE TABLE usuario(
    usuario_id INT PRIMARY KEY auto_increment,
    nome VARCHAR(20) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;

INSERT INTO usuario (nome, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

CREATE TABLE artista(
    artista_id INT PRIMARY KEY auto_increment,
    artista VARCHAR(30) NOT NULL
) engine = InnoDB;

INSERT INTO artista (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

CREATE TABLE cancoes(
    cancao_id INT PRIMARY KEY auto_increment,
    nome_cancao VARCHAR(40) NOT NULL
) engine = InnoDB;

INSERT INTO cancoes (nome_cancao)
VALUES
  ("Soul For Us"),
  ("Reflections Of Magic"),
  ("Dance With Her Own"),
  ("Troubles Of My Inner Fire"),
  ("Time Fireworks"),
  ("Magic Circus"),
  ("Honey, So Do I"),
  ("Sweetie, Let's Go Wild"),
  ("She Knows"),
  ("Fantasy For Me"),
  ("Celebration Of More"),
  ("Rock His Everything"),
  ("Home Forever"),
  ("Diamond Power"),
  ("Honey, Let's Be Silly"),
  ("Thang Of Thunder"),
  ("Words Of Her Life"),
  ("Without My Streets"); 

CREATE TABLE historico_de_reproducoes(
    usuario_id INT,
    cancao_id INT,
    primary key (usuario_id, cancao_id)
) engine = InnoDB;

INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16);
  
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
VALUES
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15);
  
INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
VALUES
  (3, 4),
  (3, 16),
  (3, 6);

INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
VALUES
  (4, 3),
  (4, 18),
  (4, 11);

CREATE TABLE seguindo_artista(
    usuario_id INT,
    artista_id INT,
    primary key (usuario_id, artista_id)
) engine = InnoDB;

INSERT INTO seguindo_artista (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

-- DROP DATABASE SpotifyClone;
-- SELECT * FROM SpotifyClone.usuario;
-- DROP TABLE SpotifyClone.historico_de_reproducoes;
