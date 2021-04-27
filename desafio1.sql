DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
	plano_id INT PRIMARY KEY,
    plano VARCHAR(50) NOT NULL,
    valor_plano DOUBLE NOT NULL
) ENGINE = InnoDB;

INSERT INTO planos VALUES(1, 'gratuito', 0), (2, 'familiar', 7.99), (3, 'universitário', 5.99);

CREATE TABLE usuarios(
	usuario_id INT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE = InnoDB;

INSERT INTO usuarios VALUES
	(1, 'Thati', 23, 1),
    (2, 'Cintia', 35, 2),
    (3, 'Bill', 20, 3),
    (4, 'Roger', 45, 1);

CREATE TABLE artistas(
	artista_id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO artistas VALUES
	(1, 'Walter Phoenix'),
    (2, 'Peter Strong'),
    (3, 'Lance Day'),
    (4, 'Freedie Shannon');

CREATE TABLE albuns(
	album_id INT PRIMARY KEY,
    album  VARCHAR(50) NOT NULL,
    artista_id INT,
    FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

INSERT INTO albuns VALUES
	(1, 'Envious', 1),
    (2, 'Exuberant', 1),
    (3, 'Hallowed Steam', 2),
    (4, 'Incandescent', 3),
    (5, 'Temporary Culture', 4);

CREATE TABLE cancoes(
	cancao_id INT PRIMARY KEY,
    cancao VARCHAR(50) NOT NULL,
    album_id INT,
    FOREIGN KEY(album_id) REFERENCES albuns(album_id)
) ENGINE = InnoDB;

INSERT INTO cancoes VALUES
	(1, 'Soul For Us', 1),
    (2, 'Reflections Of Magic', 1),
    (3, 'Dance With Her Own', 1),
    (4, 'Troubles Of My Inner', 2),
    (5, 'Time Fireworks', 2),
    (6, 'Magic Circus', 3),
    (7,  'Honey, So Do I', 3),
    (8, "Let's Go Wild", 3),
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
    
CREATE TABLE historico(
	usuario_id INT,
    cancao_id INT,
    CONSTRAINT pk_historico PRIMARY KEY(usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) ENGINE = InnoDB;

INSERT INTO historico VALUES
	(1, 1),
    (1, 5),
    (1, 13),
    (1,  15),
    (2, 12),
    (2, 16),
    (2, 2),
    (2, 14),
    (3, 4),
    (3, 15),
    (3, 5),
    (4, 3),
    (4, 17),
    (4, 10);

CREATE TABLE seguindo(
	usuario_id INT,
    artista_id INT,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

INSERT INTO seguindo VALUES
	(1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
    