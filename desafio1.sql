DROP IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Planos`
-- -----------------------------------------------------
CREATE TABLE Planos (
  plano_id TINYINT(2) AUTO_INCREMENT,
  plano VARCHAR(50) NOT NULL,
  valor_plano DECIMAL(5, 2) DEFAULT '0.00',
  PRIMARY KEY (`plano_id`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE Usuarios (
  usuario_id INT(11) AUTO_INCREMENT,
  usuario VARCHAR(50) NOT NULL,
  idade TINYINT(3) NOT NULL,
  plano_id TINYINT(2) NULL DEFAULT '1',
  PRIMARY KEY (`usuario_id`),
  CONSTRAINT `fk_Usuarios_Planos`
    FOREIGN KEY (`plano_id`)
    REFERENCES `SpotifyClone`.`Planos` (`plano_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Artistas`
-- -----------------------------------------------------
CREATE TABLE Artistas (
  artista_id INT(11) AUTO_INCREMENT,
  artista VARCHAR(100) NOT NULL,
  PRIMARY KEY (`artista_id`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Albuns`
-- -----------------------------------------------------
CREATE TABLE Albuns (
  album_id INT(11) AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  artista_id INT(11) NOT NULL,
  PRIMARY KEY (`album_id`),
  CONSTRAINT `fk_Albuns_Artistas`
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`Artistas` (`artista_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Cancoes`
-- -----------------------------------------------------
CREATE TABLE Cancoes (
  cancao_id INT(11) AUTO_INCREMENT,
  cancao VARCHAR(100) NOT NULL,
  album_id INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`cancao_id`),
  CONSTRAINT `fk_Cancoes_Albuns`
    FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`Albuns` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Historicos`
-- -----------------------------------------------------
CREATE TABLE Historicos (
  usuario_id INT(11) NOT NULL,
--   historico_de_reproducoes VARCHAR(100) NOT NULL,
  cancao_id  INT(11) NOT NULL,
  PRIMARY KEY (`usuario_id`, `cancao_id`),
  CONSTRAINT `fk_Historicos_Usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`Usuarios` (`usuario_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Historicos_Cancoes`
    FOREIGN KEY (`cancao_id`)
    REFERENCES `SpotifyClone`.`Cancoes` (`cancao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`Seguidos`
-- -----------------------------------------------------
CREATE TABLE Seguidos (
  usuario_id INT(11) NOT NULL,
--   seguindo_artistas VARCHAR(100) NOT NULL,
  artista_id INT(11) NOT NULL,
  PRIMARY KEY (`usuario_id`, `artista_id`),
  CONSTRAINT `fk_Seguidos_Usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `SpotifyClone`.`Usuarios` (`usuario_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Seguidos_Artistas`
    FOREIGN KEY (`artista_id`)
    REFERENCES `SpotifyClone`.`Artistas` (`artista_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-- ------------------------------------------------
-- INSERTING DATA
-- -------------------------------------------------

USE `SpotifyClone`;

#
# Dumping data for table 'Planos'
#
INSERT INTO `Planos` (`plano`, `valor_plano`)
VALUES
("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

#
# Dumping data for table "Usuarios"
#
INSERT INTO `Usuarios` (`usuario`, `idade`, `plano_id`)
VALUES
("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

#
# Dumping data for table "Artistas"
#
INSERT INTO `Artistas` (`artista`)
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

#
# Dumping data for table "Albuns"
#
INSERT INTO `Albuns` (`album`, `artista_id`)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

#
# Dumping data for table "Cancoes"
#
INSERT INTO `Cancoes` (`cancao`, `album_id`)
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

#
# Dumping data for table "Historicos"
#
INSERT INTO `Historicos` (`usuario_id`, `cancao_id`)
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

#
# Dumping data for table "Seguidos"
#
INSERT INTO `Seguidos` (`usuario_id`, `artista_id`)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
