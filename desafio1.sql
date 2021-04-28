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

CREATE TABLE Albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album Varchar(50)
) ENGINE = InnoDB;

CREATE TABLE Artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista Varchar(50),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
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
FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES Cancoes(cancao_id)
) ENGINE = InnoDB;

CREATE TABLE Seguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) ENGINE = InnoDB;
