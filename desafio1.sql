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
  
CREATE TABLE album(
    album_id INT PRIMARY KEY auto_increment,
    album VARCHAR(30) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) engine = InnoDB;

INSERT INTO album (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

CREATE TABLE cancoes(
    cancao_id INT PRIMARY KEY auto_increment,
    nome_cancao VARCHAR(40) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

INSERT INTO cancoes (nome_cancao, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5); 

CREATE TABLE historico_de_reproducoes(
    usuario_id INT,
    cancao_id INT,
    PRIMARY KEY (usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
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
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
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
-- SELECT * FROM SpotifyClone.historico_de_reproducoes;
-- DROP TABLE SpotifyClone.seguindo_artista;
-- DROP TABLE SpotifyClone.historico_de_reproducoes;
-- SELECT * FROM SpotifyClone.seguindo_artista;
