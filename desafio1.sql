DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`tipo_plano` VARCHAR(45) NOT NULL,
`valor_plano` FLOAT NOT NULL
)ENGINE = InnoDB;

CREATE TABLE usuario (
`id` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(45) NOT NULL,
`idade` INT NOT NULL,
`plano_id` INT NOT NULL,
FOREIGN KEY (`plano_id`) REFERENCES SpotifyClone.plano (`id`)
)ENGINE = InnoDB;

CREATE TABLE artista (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_artista VARCHAR(45) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE album (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`album_nome` VARCHAR(45) NOT NULL,
`artista_id` INT NOT NULL,
FOREIGN KEY (`artista_id`) REFERENCES SpotifyClone.artista(id)
)ENGINE = InnoDB;

CREATE TABLE cancoes (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`nome_cancao` varchar(45) NOT NULL,
`album_id` int NOT NULL,
 FOREIGN KEY (`album_id`) REFERENCES album (`id`),
 FOREIGN KEY (`artista_id`) REFERENCES artista (`id`)
) ENGINE=InnoDB;

CREATE TABLE usuario_has_cancoes (
`usuario_id` int NOT NULL,
`cancoes_id` int NOT NULL,
FOREIGN KEY (`cancoes_id`) REFERENCES `cancoes` (`id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
PRIMARY KEY (`usuario_id`,`cancoes_id`)
) ENGINE=InnoDB;

CREATE TABLE usuario_artista (
`usuario_id` INT NOT NULL,
`artista_id` INT NOT NULL,
FOREIGN KEY (`usuario_id`) REFERENCES SpotifyClone.usuario (`id`),
FOREIGN KEY (`artista_id`) REFERENCES SpotifyClone.artista (`id`),
PRIMARY KEY (`usuario_id`, `artista_id`)
) ENGINE = InnoDB;

INSERT INTO plano
(tipo_plano, valor_plano)
VALUES("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

INSERT INTO usuario
(nome, idade, plano_id)
VALUES("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

INSERT INTO artista
(nome_artista)
VALUES("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO album
(album_nome, artista_id)
VALUES("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO cancoes
(nome_cancao, artista_id, album_id)
VALUES
("Soul For Us", 1, 1),
("Reflections Of Magic", 1, 1),
("Dance With Her Own", 1, 1),
("Troubles Of My Inner Fire", 1, 2),
("Time Fireworks", 1, 2),
("Magic Circus", 2, 3),
("Honey, So Do I", 2, 3),
("Sweetie, Let's Go Wild", 2, 3),
("She Knows", 2, 3),
("Fantasy For Me", 3, 4),
("Celebration Of More", 3, 4),
("Rock His Everything", 3, 4),
("Home Forever", 3, 4),
("Diamond Power", 3, 4),
("Honey, Let's Be Silly", 3, 4),
("Thang Of Thunder", 4, 5), 
("Words Of Her Life", 4, 5),
("Without My Streets", 4, 5);

INSERT INTO usuario_has_cancoes
(usuario_id, cancoes_id)
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

INSERT INTO usuario_artista
(usuario_id, artista_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(2, 4),
(2, 1),
(3, 1),
(3, 4),
(3, 2),
(4, 1),
(4, 4),
(4, 3);
