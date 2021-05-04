DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
    plano_id INT(4) AUTO_INCREMENT,
    planoNome VARCHAR(50),
    valor DECIMAL(4,2),
    PRIMARY KEY (plano_id)
);

CREATE TABLE Usuarios (
    usuario_id INT(4) AUTO_INCREMENT,
    Nome VARCHAR(50),
    idade INT(2),
    plano_id INT(4),
    PRIMARY KEY (usuario_id), 
    FOREIGN KEY (plano_id) REFERENCES Planos (plano_id)
);

CREATE TABLE Artistas(
    artista_id int(4) AUTO_INCREMENT,
    artistaNome varchar(50),
    PRIMARY KEY (artista_id)
);

CREATE TABLE Albums(
    album_id int(4) AUTO_INCREMENT,
    album varchar(50),
    artista_id int(4),
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
);

CREATE TABLE Seguidores(
    usuario_id int(4) ,
    artista_id int(2),
    CONSTRAINT pk_seg primary key(artista_id, usuario_id ),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
);

CREATE TABLE Musicas(
    musica_id int(4) AUTO_INCREMENT,
    musicaNome varchar(50),
    album_id int(4),
    PRIMARY KEY (musica_id),
    FOREIGN KEY (album_id) REFERENCES Albums (album_id)
);

CREATE TABLE Historico(
    musica_id int(4),
    usuario_id int(4),
    FOREIGN KEY (musica_id) REFERENCES Musicas (musica_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
    CONSTRAINT pk_hist primary key(musica_id, usuario_id )
);

INSERT INTO Planos (plano_id, planoNome, valor)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO Usuarios (  usuario_id, Nome, idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO Artistas (artista_id, artistaNome)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO Albums (album_id, album, artista_id)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

INSERT INTO Seguidores ( usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO Musicas (musica_id,    musicaNome,    album_id)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, 'She Knows', 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4),
(15, "Honey, Let's Be Silly", 4),
(16, 'Thang Of Thunder', 5),
(17, 'Words Of Her Life', 5),
(18, 'Without My Streets', 5);

INSERT INTO Historico ( musica_id, usuario_id)
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
