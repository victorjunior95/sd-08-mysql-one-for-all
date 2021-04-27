CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
planos_id INT PRIMARY KEY AUTO_INCREMENT,
plano_nome VARCHAR(25),
plano_valor DECIMAL(5,2)
) ENGINE=InnoDB;

CREATE TABLE Usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(25),
idade INT NOT NULL,
planos_id INT NOT NULL,
FOREIGN KEY (planos_id) REFERENCES Planos(planos_id)
)ENGINE=InnoDB;

CREATE TABLE Artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(50)
)ENGINE=InnoDB;

CREATE TABLE Albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_nome VARCHAR(50),
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
)ENGINE=InnoDB;

CREATE TABLE Musicas(
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica_nome VARCHAR(50),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albums(album_id)
)ENGINE=InnoDB;

CREATE TABLE Historico(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
FOREIGN KEY (musica_id) REFERENCES Musicas(musica_id)
)ENGINE=InnoDB;

CREATE TABLE ArtistaSeguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
)ENGINE=InnoDB;



INSERT INTO Planos (plano_nome, plano_valor) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO Usuario(usuario_nome, idade, planos_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Artistas (artista_nome) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Albums(album_nome, artista_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Musicas(musica_nome, album_id) VALUES
('Soul For Us', 1),
('Reflection Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let''s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let''s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Withour My Streets', 5);

INSERT INTO Historico (usuario_id, musica_id) VALUES
(1,1),
(1,6),
(1,14),
(1,16),
(2,13),
(2,17),
(2,2),
(2,15),
(3,4),
(3,16),
(3,6),
(4,3),
(4,18),
(4,11);

INSERT INTO ArtistaSeguidores (usuario_id, artista_id) VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);