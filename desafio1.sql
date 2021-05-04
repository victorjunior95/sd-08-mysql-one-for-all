DROP DATABASE IF EXISTS `SpotifyClone`;

CREATE DATABASE `SpotifyClone`;

USE `SpotifyClone`;

CREATE TABLE `plano` (
    `id_plano` INT NOT NULL AUTO_INCREMENT,
    `nome_plano` VARCHAR(45) NOT NULL,
    `valor_plano` DECIMAL(3, 2) NOT NULL,
    PRIMARY KEY (`id_plano`)
) ENGINE = InnoDB;

CREATE TABLE `usuario` (
    `id_usuario` INT NOT NULL AUTO_INCREMENT,
    `nome_usuario` VARCHAR(45) NOT NULL,
    `idade_usuario` INT NOT NULL,
    `id_plano` INT NOT NULL,
    PRIMARY KEY (`id_usuario`),
    CONSTRAINT `fk_usuario_plano1` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id_plano`)
) ENGINE = InnoDB;

CREATE TABLE `artista` (
    `id_artista` INT NOT NULL AUTO_INCREMENT,
    `nome_artista` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_artista`)
) ENGINE = InnoDB;

CREATE TABLE `album` (
    `id_album` INT NOT NULL AUTO_INCREMENT,
    `nome_album` VARCHAR(45) NOT NULL,
    `id_artista` INT NOT NULL,
    PRIMARY KEY (`id_album`),
    CONSTRAINT `fk_album_artista1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`)
) ENGINE = InnoDB;

CREATE TABLE `cancao` (
    `id_cancao` INT NOT NULL AUTO_INCREMENT,
    `nome_cancao` VARCHAR(45) NOT NULL,
    `id_album` INT NOT NULL,
    PRIMARY KEY (`id_cancao`),
    CONSTRAINT `fk_cancao_album1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`)
) ENGINE = InnoDB;

CREATE TABLE `historico_reproducao` (
    `id_cancao` INT NOT NULL,
    `id_usuario` INT NOT NULL,
    PRIMARY KEY (`id_cancao`, `id_usuario`),
    CONSTRAINT `fk_historico_reproducao_cancao1` FOREIGN KEY (`id_cancao`) REFERENCES `cancao` (`id_cancao`),
    CONSTRAINT `fk_historico_reproducao_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE = InnoDB;

CREATE TABLE `usuario_artista` (
    `id_usuario` INT NOT NULL,
    `id_artista` INT NOT NULL,
    PRIMARY KEY (`id_artista`, `id_usuario`),
    CONSTRAINT `fk_usuario_artista_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
    CONSTRAINT `fk_usuario_artista_artista1` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`id_artista`)
) ENGINE = InnoDB;

INSERT INTO
    plano(nome_plano, valor_plano)
VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99);

INSERT INTO
    usuario(nome_usuario, idade_usuario, id_plano)
VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

INSERT INTO
    artista(nome_artista)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO
    album(nome_album, id_artista)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

INSERT INTO
    cancao(nome_cancao, id_album)
VALUES
    ('Soul For Us', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 1),
    ('Time Fireworks', 1),
    ('Magic Circus', 2),
    ('Honey, So Do I', 2),
    ("Sweetie, Let's Go Wild", 2),
    ('She Knows', 2),
    ('Fantasy For Me', 3),
    ('Celebration Of More', 3),
    ('Rock His Everything', 3),
    ('Home Forever', 3),
    ('Diamond Power', 3),
    ("Honey, Let's Be Silly", 3),
    ('Thang Of Thunder', 4),
    ('Words Of Her Life', 4),
    ('Without My Streets', 4);

INSERT INTO
    historico_reproducao(id_cancao, id_usuario)
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

INSERT INTO
    usuario_artista(id_usuario, id_artista)
VALUES
    (1, 1),
    (1, 3),
    (1, 4),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
