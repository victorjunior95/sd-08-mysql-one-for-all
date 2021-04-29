DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50),
    valor VARCHAR(10)
) ENGINE = InnoDB;

CREATE TABLE Usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    idade INT,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
) ENGINE = InnoDB;

CREATE TABLE Artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista Varchar(50)
) ENGINE = InnoDB;

CREATE TABLE Albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album Varchar(50),
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) ENGINE = InnoDB;

CREATE TABLE Cancoes(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(50),
artista_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id),
FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
) ENGINE = InnoDB;

CREATE TABLE Historico(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
PRIMARY KEY (`usuario_id`, `cancao_id`),
CONSTRAINT `fk_usuarios_Historico` FOREIGN KEY(`usuario_id`) REFERENCES `Usuarios`(`usuario_id`),
CONSTRAINT `fk_cancoes_Historico` FOREIGN KEY(`cancao_id`) REFERENCES `Cancoes`(`cancao_id`)
) ENGINE = InnoDB;

CREATE TABLE Seguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY(`usuario_id`, `artista_id`),
CONSTRAINT `fk_usuarios_Seguidores`FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios`(`usuario_id`),
CONSTRAINT `fk_artistas_Seguidores`FOREIGN KEY (`artista_id`) REFERENCES `Artistas`(`artista_id`)
) ENGINE = InnoDB;

INSERT INTO Planos (plano_id, plano, valor)
VALUES
  (1, 'gratuito', 0),
  (2, 'familiar', 7.99),
  (3, 'universitário', 5.99);
  
INSERT INTO Usuarios (usuario_id, usuario, idade, plano_id)
VALUES
	(1, 'thati', 23, 1), 
	(2, 'Cintia', 35, 2),
    (3, 'Bill', 20, 3),
    (4, 'Roger', 45, 1);
    
INSERT INTO Artistas (artista_id, artista)
VALUES
	(1, 'Walter Phoenix'),
    (2, 'Peter Strong'),
    (3, 'Lance Day'),
    (4, 'Freedie Shannon');

INSERT INTO Albuns (album_id, album, artista_id)
VALUES
	(1, 'Envious',1),
	(2, 'Exuberant',1),
    (3, 'Hallowed Steam',2),
    (4, 'Incandescent',3),
    (5, 'Temporary Culture',4);

INSERT INTO Cancoes (cancao_id, cancao, artista_id, album_id)
VALUES
	(1, 'Soul For Us', 1, 1),
    (2, 'Reflections Of Magic', 1, 1),
    (3, 'Dance With Her Own', 1, 1),
    (4, 'Trouble Of My Inner Fire', 1, 2),
    (5, 'Time', 1, 2),
    (6, 'Magic Circus', 2, 3),
    (7, 'Honey,So Do I', 2, 3),
    (8, 'Sweetie,Let`s Go Wild', 2, 3),
    (9, 'She Knows', 2, 3),
    (10, 'Fantasy For Me', 3, 4),
    (11, 'Celebration Of More', 3, 4),
    (12, 'Rock His Everything', 3, 4),
    (13, 'Home Forever', 3, 4),
    (14, 'Diamond Power', 3, 4),
    (15, 'Honey, Let`s Be Silly', 3, 4),
    (16, 'Thang Of Thunder', 4, 5),
    (17, 'Words Of Her Life', 4, 5),
    (18, 'Without My Streets', 4, 5);
    
INSERT INTO Historico (usuario_id, cancao_id)
VALUES
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
    
INSERT INTO Seguidores (usuario_id, artista_id)
VALUES
	(1,1),
    (1,4),
    (1,3),
    (2,1),
    (2,3),
    (3,2),
    (3,1),
    (4,4);
    