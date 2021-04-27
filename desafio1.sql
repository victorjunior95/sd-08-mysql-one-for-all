DROP DATABASE IF EXISTS SpotifyClone;

CREATE SCHEMA IF NOT EXISTS `SpotifyClone` ;
USE `SpotifyClone` ;

CREATE TABLE SpotifyClone.plano (
`id` INT NOT NULL AUTO_INCREMENT,
`tipo_plano` VARCHAR(45) NOT NULL,
`valor_plano` FLOAT NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
UNIQUE INDEX `tipo_plano_UNIQUE` (`tipo_plano` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.plano
(tipo_plano, valor_plano)
VALUES("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

CREATE TABLE SpotifyClone.usuario (
`id` INT NOT NULL AUTO_INCREMENT,
`nome` VARCHAR(45) NOT NULL,
`idade` INT NOT NULL,
`plano_id` INT NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `idusuario_UNIQUE` (`id` ASC) VISIBLE,
INDEX `fk_usuario_plano_idx` (`plano_id` ASC) VISIBLE,
CONSTRAINT `fk_usuario_plano`
FOREIGN KEY (`plano_id`)
REFERENCES `SpotifyClone`.`plano` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.usuario
(nome, idade, plano_id)
VALUES("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

CREATE TABLE SpotifyClone.artista (
id INT NOT NULL AUTO_INCREMENT,
nome_artista VARCHAR(45) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
UNIQUE INDEX `nome_artista_UNIQUE` (`nome_artista` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.artista
(nome_artista)
VALUES("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

CREATE TABLE SpotifyClone.album (
`id` INT NOT NULL AUTO_INCREMENT,
`album_nome` VARCHAR(45) NOT NULL,
`artista_id` INT NOT NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
UNIQUE INDEX `algum_UNIQUE` (`album_nome` ASC) VISIBLE,
INDEX `fk_album_artista1_idx` (`artista_id` ASC) VISIBLE,
CONSTRAINT `fk_album_artista1`
FOREIGN KEY (`artista_id`)
REFERENCES `SpotifyClone`.`artista` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.album
(album_nome, artista_id)
VALUES("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

CREATE TABLE SpotifyClone.usuario_artista (
`usuario_id` INT NOT NULL,
`artista_id` INT NOT NULL,
PRIMARY KEY (`usuario_id`, `artista_id`),
INDEX `fk_usuario_has_artista_artista1_idx` (`artista_id` ASC) VISIBLE,
INDEX `fk_usuario_has_artista_usuario1_idx` (`usuario_id` ASC) VISIBLE,
CONSTRAINT `fk_usuario_has_artista_usuario1`
FOREIGN KEY (`usuario_id`)
REFERENCES `SpotifyClone`.`usuario` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT `fk_usuario_has_artista_artista1`
FOREIGN KEY (`artista_id`)
REFERENCES `SpotifyClone`.`artista` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO SpotifyClone.usuario_artista
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

CREATE TABLE SpotifyClone.cancoes (
`id` int NOT NULL AUTO_INCREMENT,
`nome_cancao` varchar(45) NOT NULL,
`artista_id` int NOT NULL,
`album_id` int NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY `id_UNIQUE` (`id`),
UNIQUE KEY `nome_cancao_UNIQUE` (`nome_cancao`),
KEY `fk_cancoes_artista1_idx` (`artista_id`),
KEY `fk_cancoes_album1_idx` (`album_id`),
CONSTRAINT `fk_cancoes_album1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`),
CONSTRAINT `fk_cancoes_artista1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.cancoes
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

CREATE TABLE SpotifyClone.usuario_has_cancoes (
`usuario_id` int NOT NULL,
`cancoes_id` int NOT NULL,
PRIMARY KEY (`usuario_id`,`cancoes_id`),
KEY `fk_usuario_has_cancoes_cancoes1_idx` (`cancoes_id`),
KEY `fk_usuario_has_cancoes_usuario1_idx` (`usuario_id`),
CONSTRAINT `fk_usuario_has_cancoes_cancoes1` FOREIGN KEY (`cancoes_id`) REFERENCES `cancoes` (`id`),
CONSTRAINT `fk_usuario_has_cancoes_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.usuario_has_cancoes
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
