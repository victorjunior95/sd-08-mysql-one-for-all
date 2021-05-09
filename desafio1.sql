-- consultei o repositorio de arnaelcio
-- https://github.com/tryber/sd-08-mysql-one-for-all/blob/65480a31863f87fb24c5dedd1c98659c17420ecc/desafio1.sql
DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    valor DECIMAL(6,2)
)  ENGINE=INNODB;

INSERT INTO planos (nome, valor)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);
    
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT,
    plano_id INT,
    FOREIGN KEY (plano_id)
        REFERENCES planos (id)
)  ENGINE=INNODB;

INSERT INTO usuarios (nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artistas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
)  ENGINE=INNODB;
    
INSERT INTO artistas (nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE albuns (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    artista_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES artistas (id)
)  ENGINE=INNODB;

INSERT INTO albuns (nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE musicas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    album_id INT,
    FOREIGN KEY (album_id)
        REFERENCES albuns (id)
)  ENGINE=INNODB;

INSERT INTO musicas (nome, album_id)
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

CREATE TABLE seguidores (
    id INT AUTO_INCREMENT,
    usuario_id INT,
    artista_id INT,
    CONSTRAINT PRIMARY KEY (id , usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (id)
)  ENGINE=INNODB;	

INSERT INTO seguidores (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE historico (
    id INT AUTO_INCREMENT,
    usuario_id INT,
    musica_id INT,
    CONSTRAINT PRIMARY KEY (id , usuario_id , musica_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (id),
    FOREIGN KEY (musica_id)
        REFERENCES musicas (id)
)  ENGINE=INNODB;

INSERT INTO historico (usuario_id, musica_id)
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
