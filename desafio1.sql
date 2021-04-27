DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE Plano (
Plano_id INT PRIMARY KEY auto_increment,
Plano varchar(20) NOT NULL,
Valor DECIMAL(10, 2))
engine = InnoDB;

CREATE TABLE Usuario (
Usuario_id INT PRIMARY KEY auto_increment,
Nome VARCHAR(45) NOT NULL,
Idade INT NOT NULL,
Plano_id INT,
FOREIGN KEY (Plano_id) REFERENCES Plano(Plano_id))
engine = InnoDB;

CREATE TABLE Artista (
Artista_id INT PRIMARY KEY auto_increment,
Nome VARCHAR(45) NOT NULL)
engine = InnoDB;

CREATE TABLE Album (
Album_id INT PRIMARY KEY auto_increment,
Nome VARCHAR(45) NOT NULL,
Artista_id INT,
FOREIGN KEY (Artista_id) REFERENCES Artista(Artista_id))
engine = InnoDB;

CREATE TABLE Cancao (
Cancao_id INT PRIMARY KEY auto_increment,
Nome VARCHAR(45),
Album_id INT,
FOREIGN KEY (Album_id) REFERENCES Album(Album_id))
engine = InnoDB;

CREATE TABLE Historico_Musica_Usuario (
Cancao_id INT,
Usuario_id INT,
FOREIGN KEY (Usuario_id) REFERENCES Usuario(Usuario_id),
FOREIGN KEY (Cancao_id) REFERENCES Cancao(Cancao_id),
PRIMARY KEY(Cancao_id, Usuario_id))
engine = InnoDB;


CREATE TABLE Artista_Seguido (
Usuario_id INT,
Artista_id INT,
FOREIGN KEY (Usuario_id) REFERENCES Usuario(Usuario_id),
FOREIGN KEY (Artista_id) REFERENCES Artista(Artista_id),
PRIMARY KEY(Usuario_id, Artista_id))
engine = InnoDB;



INSERT INTO Plano (Plano, Valor)
VALUES ('Gratuito', 0.00),
('Familiar', 7.99),
('Universitario', 5.99);

INSERT INTO Usuario (Nome, Idade, Plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO Artista (Nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freddie Shannon');

INSERT INTO Album (Nome, Artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Cancao (Nome, Album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let’s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let’s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO Historico_Musica_Usuario (Cancao_id, Usuario_id)
VALUES
(1, 1),
(6, 1),
(14, 1),
(16, 1),
(13, 2),
(17, 2),
(2, 2),
(15, 2),
(4, 3),
(16, 3),
(6, 3),
(3, 4),
(18, 4),
(11, 4);

INSERT INTO Artista_Seguido (Usuario_id, Artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
