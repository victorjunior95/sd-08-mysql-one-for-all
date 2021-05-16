DROP DATABASE IF EXISTS SpotifyClone ;

-- -----------------------------------------------------
-- Banco de Dados SpotifyClone
-- -----------------------------------------------------
CREATE DATABASE SpotifyClone;

USE SpotifyClone ;

-- -----------------------------------------------------
-- Table plano
-- -----------------------------------------------------
CREATE TABLE plano (
  plano_id INT NOT NULL AUTO_INCREMENT,
  plano VARCHAR(100) NOT NULL,
  valor_plano DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (plano_id))
ENGINE = InnoDB;

INSERT INTO plano(plano, valor_plano)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);


-- -----------------------------------------------------
-- Table usuario
-- -----------------------------------------------------
CREATE TABLE usuario (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  usuario VARCHAR(100) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id))
ENGINE = InnoDB;

INSERT INTO usuario(usuario, idade, plano_id)
VALUES 
  ('Thati',23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

-- -----------------------------------------------------
-- Table artista
-- -----------------------------------------------------
CREATE TABLE artista (
  artista_id INT NOT NULL AUTO_INCREMENT,
  artista VARCHAR(45) NULL,
  PRIMARY KEY (artista_id))
ENGINE = InnoDB;

INSERT INTO artista(artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

-- -----------------------------------------------------
-- Table seguindo_artistas
-- -----------------------------------------------------
CREATE TABLE seguindo_artistas(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
  CONSTRAINT artistas_seguidos_id PRIMARY KEY (usuario_id, artista_id))
ENGINE=InnoDB;

INSERT INTO seguindo_artistas(usuario_id, artista_id)
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
-- Table album
-- -----------------------------------------------------
CREATE TABLE album (
  album_id INT NOT NULL AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id) REFERENCES artista (artista_id))
ENGINE = InnoDB;

INSERT INTO album(album, artista_id)
VALUES 
  ('Envious',1),
  ('Exuberant',1),
  ('Hallowed Steam',2),
  ('Incandescent',3),
  ('Temporary Culture',4);


-- -----------------------------------------------------
-- Table cancao
-- -----------------------------------------------------
CREATE TABLE cancao (
  cancao_id INT NOT NULL AUTO_INCREMENT,
  cancao VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (cancao_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id))
ENGINE = InnoDB;

INSERT INTO cancao(cancao, album_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);

-- -----------------------------------------------------
-- Table usuario_historico
-- -----------------------------------------------------
CREATE TABLE usuario_historico (
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id),
  CONSTRAINT historico_id PRIMARY KEY (usuario_id, cancao_id))
ENGINE=InnoDB;

INSERT INTO usuario_historico(usuario_id, cancao_id)
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
