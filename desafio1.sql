CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
    plano_id INT NOT NULL AUTO_INCREMENT,
    plano_nome VARCHAR(20),
    plano_valor DECIMAL(3 , 2 ),
    PRIMARY KEY (plano_id)
)  ENGINE=INNODB;

CREATE TABLE usuarios (
    usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario_nome VARCHAR(20),
    usuario_idade INT,
    plano_id INT,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id)
        REFERENCES planos (plano_id)
)  ENGINE=INNODB;

CREATE TABLE artistas (
    artista_id INT NOT NULL AUTO_INCREMENT,
    artista_nome VARCHAR(20),
    PRIMARY KEY (artista_id)
)  ENGINE=INNODB;

CREATE TABLE albuns (
    album_id INT NOT NULL AUTO_INCREMENT,
    album_nome VARCHAR(20),
    artista_id INT,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE cancoes (
    cancao_id INT NOT NULL AUTO_INCREMENT,
    cancao_nome VARCHAR(40),
    album_id INT,
    PRIMARY KEY (cancao_id),
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
)  ENGINE=INNODB;

CREATE TABLE usuario_artista (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE usuario_cancao (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    PRIMARY KEY (usuario_id , cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancoes (cancao_id)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.planos(plano_nome, plano_valor)
VALUES ('gratuito', 0.00), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO SpotifyClone.usuarios(usuario_nome, usuario_idade, plano_id)
VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

INSERT INTO SpotifyClone.artistas(artista_nome)
VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freddie Shannon');

INSERT INTO SpotifyClone.albuns(album_nome, artista_id)
VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);

INSERT INTO SpotifyClone.cancoes(cancao_nome, album_id) VALUES 
('Soul for Us', 1), ('Reflections Of Magic', 1),
('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2), ('Magic Circus', 3),
('Honey, So Do I', 3), ("Sweetie, Let's Go Wild", 3),
('She Knows', 3), ('Fantasy For Me', 4),
('Celebration Of More', 4), ('Rock His Everything', 4),
('Home Forever', 4), ('Diamond Power', 4),
("Honey, Let's Be Silly", 4), ('Thang of Thunder', 5),
('Words Of Her Life', 5), ('Without My Streets', 5);

INSERT INTO SpotifyClone.usuario_artista(usuario_id, artista_id) VALUES 
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO SpotifyClone.usuario_cancao(usuario_id, cancao_id) VALUES
(1, 1),
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
