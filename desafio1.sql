-- -----------------------------------------------------
-- Schema SpotifyClone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SpotifyClone` DEFAULT CHARACTER SET utf8 ;
USE `SpotifyClone` ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`plano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plano`(
  `plano_ID` INT NOT NULL AUTO_INCREMENT,
  `nome_plano` VARCHAR(45) NOT NULL,
  `preco` DOUBLE NULL,
  PRIMARY KEY (`plano_ID`) 
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`usuario`(
  `usuario_ID` INT NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(45) NOT NULL,
  `idade` INT NULL,
  `plano_ID` INT NOT NULL,  
  PRIMARY KEY (`usuario_ID`),
  FOREIGN KEY (`plano_ID`) REFERENCES `SpotifyClone`.`plano`(`plano_ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista`(
  `artista_ID` INT NOT NULL AUTO_INCREMENT,
  `nome_artista` VARCHAR(45) NULL,
  PRIMARY KEY (`artista_ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`artista_seguido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artista_seguido`(  
  `usuario_ID` INT NOT NULL,
  `artista_ID` INT NOT NULL,
  PRIMARY KEY (`usuario_ID`, `artista_ID`),
  FOREIGN KEY (`usuario_ID`) REFERENCES `SpotifyClone`.`usuario`(`usuario_ID`),
  FOREIGN KEY (`artista_ID`) REFERENCES `SpotifyClone`.`artista`(`artista_ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`album`(
  `album_ID` INT NOT NULL AUTO_INCREMENT,
  `nome_album` VARCHAR(45) NOT NULL,
  `artista_ID` INT NOT NULL,
  PRIMARY KEY (`album_ID`),
  FOREIGN KEY (`artista_ID`) REFERENCES `SpotifyClone`.`artista`(`artista_ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`musica`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`musica`(
  `musica_ID` INT NOT NULL AUTO_INCREMENT,
  `nome_musica` VARCHAR(45) NOT NULL,
  `album_ID` INT NULL,
  PRIMARY KEY (`musica_ID`),
  FOREIGN KEY (`album_ID` ) REFERENCES `SpotifyClone`.`album`(`album_ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`historico_reproducoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`historico_reproducoes`(
  `usuario_ID` INT NOT NULL,
  `musica_ID` INT NOT NULL,
  PRIMARY KEY (`usuario_ID`,`musica_ID`),
  FOREIGN KEY (`usuario_ID`) REFERENCES `SpotifyClone`.`usuario`(`usuario_ID`),
  FOREIGN KEY (`musica_ID`)  REFERENCES `SpotifyClone`.`musica`(`musica_ID`)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`plano`
-- -----------------------------------------------------
INSERT INTO `SpotifyClone`.`plano`(`nome_plano`, `preco`)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`usuario`
-- -----------------------------------------------------
INSERT INTO `SpotifyClone`.`usuario`(`nome_usuario`, `idade`, `plano_ID`)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`artista`
-- -----------------------------------------------------
INSERT INTO `SpotifyClone`.`artista`(`nome_artista`)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`album`
-- -----------------------------------------------------
INSERT INTO `SpotifyClone`.`album`(`nome_album`, `artista_ID`)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`musica`
-- -----------------------------------------------------
INSERT INTO `SpotifyClone`.`musica`(`nome_musica`, `album_ID`)
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

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`artista_seguido`
-- -----------------------------------------------------
INSERT INTO`SpotifyClone`.`artista_seguido`(`usuario_ID`, `artista_ID`)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

-- -----------------------------------------------------
-- INSERT INTO `SpotifyClone`.`historico_reproducoes`
-- -----------------------------------------------------  
INSERT INTO `SpotifyClone`.`historico_reproducoes`(`usuario_ID`, `musica_ID`)
VALUES
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
