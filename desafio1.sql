	DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(45) NOT NULL,
    valores DECIMAL(10,2) NOT NULL
)  ENGINE = INNODB;

CREATE TABLE Usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES Plano (plano_id)
)  ENGINE = INNODB;

CREATE TABLE Artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50) NOT NULL
)  ENGINE = INNODB;

CREATE TABLE Album (
    album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES Artista (artista_id)
)  ENGINE = INNODB;

CREATE TABLE Musicas (
    musica_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    musica VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES Album (album_id)
)  ENGINE = INNODB;

CREATE TABLE Historico (
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , musica_id),
    FOREIGN KEY (usuario_id)
        REFERENCES Usuario (usuario_id),
    FOREIGN KEY (musica_id)
        REFERENCES Musicas (musica_id)
)  ENGINE = INNODB;