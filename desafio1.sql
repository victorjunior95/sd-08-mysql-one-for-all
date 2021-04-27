DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(45) NOT NULL,
valor_plano DECIMAL(5, 2) NOT NULL
) ENGINE=InnoDB;

INSERT INTO Plano(plano, valor_plano)
VALUES
('gratuito', 0.00),
('universitário', 5.99),
('familiar', 7.99);

CREATE TABLE Usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(45) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES Plano(plano_id)
) ENGINE=InnoDB;

INSERT INTO Usuario(usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

CREATE TABLE Artista(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_do_artista VARCHAR(60) NOT NULL 
) ENGINE=InnoDB;

INSERT INTO Artista(nome_do_artista)
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE Album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_do_Album VARCHAR(30) NOT NULL,
  artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES Artista(artista_id)
) ENGINE=InnoDB;

INSERT INTO Album(nome_do_Album, artista_id)
VALUES 
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE cancoes(
  cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_da_cancao VARCHAR(30) NOT NULL,
  album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Album(album_id)
) ENGINE=InnoDB;

INSERT INTO cancoes(nome_da_cancao, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 1),
('Time Fireworks', 1),
('Magic Circus', 2),
('Honey, So Do I', 2),
("Sweetie, Let's Go Wild", 2),
('She Knows', 2),
('Fantasy For Me', 3),
('Celebration Of More', 3),
('Rock His Everything', 3),
('Home Forever', 3),
('Diamond Power', 3),
("Honey, Let's Be Silly", 3),
('Thang Of Thunder', 4),
('Words Of Her Life', 4),
('Without My Streets', 4);

CREATE TABLE artistas_seguidos(
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES Artista(artista_id),
FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
) ENGINE=InnoDB;

INSERT INTO artistas_seguidos (usuario_id, artista_id) 
VALUES 
(1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);

CREATE TABLE Historico_reproducoes(
CONSTRAINT PRIMARY KEY (usuario_id, cancoes_id),
cancoes_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id),
FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
) ENGINE=InnoDB;

INSERT INTO Historico_reproducoes (usuario_id, cancoes_id) 
VALUES (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);
