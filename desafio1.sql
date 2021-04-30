CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas (
    artista_id INT NOT NULL AUTO_INCREMENT,
    artista_nome VARCHAR(50) NOT NULL,
    PRIMARY KEY (artista_id)
)  ENGINE=INNODB;

CREATE TABLE planos (
    plano_id INT NOT NULL AUTO_INCREMENT,
    plano_nome VARCHAR(50) NOT NULL,
    plano_valor DOUBLE NOT NULL,
    PRIMARY KEY (plano_id)
)  ENGINE=INNODB;

CREATE TABLE usuarios (
    usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario_nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id)
        REFERENCES planos (plano_id)
)  ENGINE=INNODB;

CREATE TABLE albuns (
    album_id INT NOT NULL AUTO_INCREMENT,
    album_nome VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE musicas (
    musica_id INT NOT NULL AUTO_INCREMENT,
    musica_nome VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (musica_id),
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
)  ENGINE=INNODB;

CREATE TABLE usariosSeguidores (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE historicoReproducao (
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    PRIMARY KEY (usuario_id, musica_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (musica_id)
        REFERENCES musicas (musica_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.artistas(artista_nome) 
VALUES('Walter Phoenix'),
('Peter Strong'),('Lance Day'),('Freedie Shannon');

INSERT INTO SpotifyClone.planos(plano_nome,plano_valor)
VALUES('gratuito',0),('familiar',7.99),('universitario',5.99);

INSERT INTO SpotifyClone.usuarios(usuario_nome,idade,plano_id) 
VALUES('Thati',23,1),('Cintia',35,2),('Bill',20,3),('Roger',45,1);

INSERT INTO SpotifyClone.albuns(album_nome,artista_id)
VALUES('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.musicas(musica_nome,album_id)
VALUES("Soul For Us", 1),
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

INSERT INTO SpotifyClone.usariosSeguidores(usuario_id,artista_id)
VALUES(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
    
INSERT INTO SpotifyClone.historicoReproducao(usuario_id,musica_id)
VALUES(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 2),
(2, 13),
(2, 15),
(2, 17),
(3, 4),
(3, 6),
(3, 16),
(4, 3),
(4, 11),
(4, 18);
