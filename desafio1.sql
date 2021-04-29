DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(45) NOT NULL,
  plan_price INT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user VARCHAR(45) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plano(plan_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS following(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(45) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song VARCHAR(45) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS history(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE = InnoDB;

INSERT INTO plans (plan, plan_price)
VALUES
  ("free", 0),
  ("family", 7.99),
  ("student", 5.99);

INSERT INTO artists (artist)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

INSERT INTO users (user, age, plan_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);

INSERT INTO album (album, artist_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);

INSERT INTO songs (song, album_id)
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

INSERT INTO history (user_id, song_id)
VALUES
  (1,	1),
  (1,	6),
  (1,	14),
  (1,	16),
  (2,	13),
  (2,	17),
  (2,	2),
  (2,	15),
  (3,	4),
  (3,	16),
  (3,	6),
  (4,	3),
  (4,	18),
  (4,	11);

INSERT INTO following (user_id, artist_id)
VALUES
  (1,	1),
  (1,	4),
  (1,	3),
  (2,	1),
  (2,	3),
  (3,	2),
  (3,	1),
  (4,	4);
