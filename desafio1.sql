DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  plano_id INT AUTO_INCREMENT,
  plano VARCHAR(50) NOT NULL,
  valor_plano DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (plano_id)
) ENGINE = InnoDB;

CREATE TABLE users(
  usuario_id INT AUTO_INCREMENT,
  usuario VARCHAR(100) NOT NULL,
  idade INT,
  plano_id INT,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (plano_id)
    REFERENCES plans(plano_id)
) ENGINE = InnoDB;

CREATE TABLE artists(
  artista_id INT AUTO_INCREMENT,
  artista VARCHAR(100) NOT NULL,
  PRIMARY KEY (artista_id)
) ENGINE = InnoDB;

CREATE TABLE albums(
  album_id INT AUTO_INCREMENT,
  album VARCHAR(100) NOT NULL,
  artista_id INT,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artista_id)
    REFERENCES artists(artista_id)
) ENGINE = InnoDB;

CREATE TABLE songs(
  cancao_id INT AUTO_INCREMENT,
  cancao VARCHAR(100) NOT NULL,
  album_id INT,
  PRIMARY KEY (cancao_id),
  FOREIGN KEY (album_id)
    REFERENCES albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE historic(
  usuario_id INT,
  cancao_id INT,
  PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id)
    REFERENCES users(usuario_id),
  FOREIGN KEY (cancao_id)
    REFERENCES songs(cancao_id)
) ENGINE = InnoDB;

CREATE TABLE follow(
  usuario_id INT,
  artista_id INT,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id)
    REFERENCES users(usuario_id),
  FOREIGN KEY (artista_id)
    REFERENCES artists(artista_id)
) ENGINE = InnoDB;

INSERT INTO plans (plano, valor_plano)
  VALUES
    ("gratuito", 0.00),
    ("universitário", 5.99),
    ("familiar", 7.99);

INSERT INTO users (usuario, idade, plano_id)
  VALUES
    ("Thati", 23, 1),
    ("Cintia", 35, 3),
    ("Bill", 20, 2),
    ("Roger", 45, 1);

INSERT INTO artists (artista)
  VALUES
    ("Walter Phoenix"),
    ("Peter Strong"),
    ("Lance Day"),
    ("Freedie Shannon");

INSERT INTO albums (album, artista_id)
  VALUES
    ("Envious", 1),
    ("Exuberant", 1),
    ("Hallowed Steam", 2),
    ("Incadescent", 3),
    ("Temporary Culture", 4);
    
INSERT INTO songs (cancao, album_id)
  VALUES
    ("Souls For Us", 1),
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
    
INSERT INTO historic (usuario_id, cancao_id)
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
    
INSERT INTO follow (usuario_id, artista_id)
  VALUES
   (1, 1),
   (1, 4),
   (1, 3),
   (2, 1),
   (2, 3),
   (3, 2),
   (3, 1),
   (4, 4);
    
