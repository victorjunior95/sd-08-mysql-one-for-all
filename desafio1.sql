DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

DROP TABLE IF EXISTS plans;
CREATE TABLE plans(
  PLAN_ID DECIMAL(6, 0) PRIMARY KEY NOT NULL,
  NAME VARCHAR(50) NOT NULL,
  PRICE DECIMAL(4, 2) NOT NULL
) engine = InnoDB;

DROP TABLE IF EXISTS artists;
CREATE TABLE artists(
  ARTIST_ID DECIMAL(6, 0) PRIMARY KEY NOT NULL,
  NAME VARCHAR(50) NOT NULL
) engine = InnoDB;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
  USER_ID DECIMAL(6, 0) PRIMARY KEY NOT NULL,
  NAME VARCHAR(50) NOT NULL,
  AGE DECIMAL(3, 0) NOT NULL,
  PLAN_ID DECIMAL(6, 0) NOT NULL,
  FOREIGN KEY (PLAN_ID) REFERENCES plans(PLAN_ID)
) engine = InnoDB;

DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
  ALBUM_ID DECIMAL(6, 0) PRIMARY KEY NOT NULL,
  NAME VARCHAR(50) NOT NULL,
  ARTIST_ID DECIMAL(6, 0) NOT NULL,
  FOREIGN KEY (ARTIST_ID) REFERENCES artists(ARTIST_ID)
) engine = InnoDB;

DROP TABLE IF EXISTS songs;
CREATE TABLE songs(
  SONG_ID DECIMAL(6, 0) PRIMARY KEY NOT NULL,
  NAME VARCHAR(50) NOT NULL,
  ALBUM_ID DECIMAL(6, 0) NOT NULL,
  FOREIGN KEY (ALBUM_ID) REFERENCES albums(ALBUM_ID)
) engine = InnoDB;

DROP TABLE IF EXISTS user_history;
CREATE TABLE user_history(
  USER_ID DECIMAL(6, 0) NOT NULL,
  SONG_ID DECIMAL(6, 0) NOT NULL,
  PRIMARY KEY (USER_ID, SONG_ID),
  FOREIGN KEY (USER_ID) REFERENCES users(USER_ID),
  FOREIGN KEY (SONG_ID) REFERENCES songs(SONG_ID)
) engine = InnoDB;

DROP TABLE IF EXISTS artist_followers;
CREATE TABLE artist_followers(
  USER_ID DECIMAL(6, 0) NOT NULL,
  ARTIST_ID DECIMAL(6, 0) NOT NULL,
  PRIMARY KEY (USER_ID, ARTIST_ID),
  FOREIGN KEY (USER_ID) REFERENCES users(USER_ID),
  FOREIGN KEY (ARTIST_ID) REFERENCES artists(ARTIST_ID)
) engine = InnoDB;

INSERT INTO plans (PLAN_ID, NAME, PRICE) VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO artists (ARTIST_ID, NAME) VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO users (USER_ID, NAME, AGE, PLAN_ID) VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO albums (ALBUM_ID, NAME, ARTIST_ID) VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

INSERT INTO songs (SONG_ID, NAME, ALBUM_ID) VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
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

INSERT INTO user_history (USER_ID, SONG_ID) VALUES
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

INSERT INTO artist_followers (USER_ID, ARTIST_ID) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
