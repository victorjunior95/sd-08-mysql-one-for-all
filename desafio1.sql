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

CREATE TABLE Seguindo (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES Usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES Artista (artista_id)
)  ENGINE = INNODB;

INSERT INTO Plano(plano, valores)
VALUES
("gratuito", 0.00),
("universitario", 5.99),
("familiar", 7.99);

INSERT INTO Usuario(usuario, idade, plano_id)
VALUES
("Thati", 23, 1),
("Cintia", 35, 3),
("Bill", 20, 2),
("Roger", 45, 1);

INSERT INTO Artista(artista)
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO Album(album, artista_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO Musicas(musica, album_id)
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

INSERT INTO Seguindo(artista_id, usuario_id)
VALUES
(1, 1),
(4, 1),
(3, 1),
(1, 2),
(3, 2),
(2, 3),
(1, 3),
(4, 4);

INSERT INTO Historico(usuario_id, musica_id)
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
