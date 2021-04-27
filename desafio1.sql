DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(50),
  valor_plano DOUBLE
) engine = InnoDB;

CREATE TABLE Usuarios(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(50),
  idade INT,
  plano_id INT,
  FOREIGN KEY (plano_id) REFERENCES Planos (plano_id)
) engine = InnoDB;

CREATE TABLE Artistas(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_artista VARCHAR(50)
) engine = InnoDB;

CREATE TABLE Albuns(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_album VARCHAR(50),
  artista_id INT,
  FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE Musicas(
  musica_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_musica VARCHAR(50),
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES Albuns (album_id)
) engine = InnoDB;

CREATE TABLE HistoricoReproducoes(
  usuario_id INT,
  musica_id INT,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
  FOREIGN KEY (musica_id) REFERENCES Musicas (musica_id),
  PRIMARY KEY (usuario_id, musica_id) #https://qastack.com.br/programming/5835978/how-to-properly-create-composite-primary-keys-mysql
) engine = InnoDB;

CREATE TABLE ListaSeguidores(
  usuario_id INT,
  artista_id INT,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id),
  PRIMARY KEY (usuario_id, artista_id)
) engine = InnoDB;

INSERT INTO Planos (nome_plano, valor_plano)
VALUES 
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitario', 5.99);

INSERT INTO Usuarios (nome_usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cinthia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO Artistas (nome_artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freddie Shannon');
  
INSERT INTO Albuns (nome_album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO Musicas (nome_musica, album_id)
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

INSERT INTO HistoricoReproducoes (usuario_id, musica_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 4),
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

INSERT INTO ListaSeguidores (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
