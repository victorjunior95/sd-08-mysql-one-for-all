CREATE SCHEMA IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  plano_descricao VARCHAR(50) NOT NULL,
  plano_valor decimal(5,2) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE usuarios(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
)ENGINE=InnoDB;

CREATE TABLE artistas(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_artista VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE albuns(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  artista_id INT NOT NULL,
  nome_album VARCHAR(30),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
)ENGINE=InnoDB;

CREATE TABLE cancoes(
  cancao_id INT PRIMARY KEY AUTO_INCREMENT,
  album_id INT NOT NULL,
  nome_cancao VARCHAR(100),
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
)ENGINE=InnoDB;

CREATE TABLE historico (
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
)ENGINE=InnoDB;

CREATE TABLE artistas_seguidos(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
)ENGINE=InnoDB;

INSERT INTO plano (plano_descricao, plano_valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO artistas (nome_artista)
VALUES 
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');
  
INSERT INTO albuns (artista_id, nome_album)
VALUES
  (1, 'Envious'),
  (1, 'Exuberant'),
  (4, 'Hallowed Steam'),
  (3, 'Incandescent'),
  (2, 'Temporary Culture');
  
INSERT INTO cancoes (album_id, nome_cancao)
VALUES
  (1, 'Soul For Us'),
  (1, 'Reflections Of Magic'),
  (1, 'Dance With Her Own'),
  (2, 'Troubles Of My Inner Fire'),
  (2, 'Time Fireworks'),
  (3, 'Magic Circus'),
  (3, 'Honey, So Do I'),
  (3, "Sweetie, Let's Go Wild"),
  (3, 'She Knows'),
  (4, 'Fantasy For Me'),
  (4, 'Celebration Of More'),
  (4, 'Rock His Everything'),
  (4, 'Home Forever'),
  (4, 'Diamond Power'),
  (4, "Honey, Let's Be Silly"),
  (5, 'Thang Of Thunder'),
  (5, 'Words Of Her Life'),
  (5, 'Without My Streets');

INSERT INTO historico (usuario_id, cancao_id)
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
  
INSERT INTO artistas_seguidos (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);
