CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE IF NOT EXISTS plan (
  plan_id INT NOT NULL AUTO_INCREMENT,
  type VARCHAR(45) NOT NULL,
  price DOUBLE NOT NULL,
  PRIMARY KEY (plan_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS user (
  user_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS artist (
  artist_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (artist_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS user_artist (
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY(user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS album (
  album_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (album_id),
  FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS song (
  song_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  album_id INT NOT NULL,
  PRIMARY KEY (song_id),
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS playback_history (
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (song_id) REFERENCES song(song_id)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.artist (first_name, last_name)
VALUES
  ('Walter', 'Phoenix'),
  ('Peter', 'Strong'),
  ('Lance', 'Day'),
  ('Freedie', 'Shannon');

INSERT INTO SpotifyClone.album (name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO SpotifyClone.song (title, album_id)
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
    
INSERT INTO SpotifyClone.plan (type, price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO SpotifyClone.user (name, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
    
INSERT INTO SpotifyClone.user_artist (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO SpotifyClone.playback_history (user_id, song_id)
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
