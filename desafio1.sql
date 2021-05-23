DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- creating tables --

CREATE TABLE plans (
    plan_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    plan_name VARCHAR(60) NOT NULL,
    plan_price DOUBLE NULL
) engine = InnoDB;

CREATE TABLE users (
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_name VARCHAR(60) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists (
    artist_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(60) NOT NULL
) engine = InnoDB;

CREATE TABLE albums (
    album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    album_name VARCHAR(60) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs (
    song_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    song_name VARCHAR(60) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE history (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id) 
) engine = InnoDB;

CREATE TABLE followed (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

-- inserting data --

INSERT INTO plans (plan_name, plan_price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO users (user_id, user_name, user_age, plan_id)
VALUES
  ('1', 'Thati', 23, 1),
  ('2', 'Cintia', 35, 2),
  ('3', 'Bill', 20, 3),
  ('4', 'Roger', 45, 1);

INSERT INTO artists (artist_name)
VALUES 
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO albums (album_name, artist_id)
VALUES 
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO songs (song_name, album_id)
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

INSERT INTO history (user_id, song_id)
VALUES
  (1, 1),
  (2, 2),
  (4, 3),
  (3, 4),
  (1, 6),
  (3, 6),
  (4, 11),
  (2, 13),
  (1, 14),
  (2, 15),
  (1, 16),
  (3, 16),
  (2, 17),
  (4, 18);

INSERT INTO followed (user_id, artist_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);

-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`SpotifyClone`.`history`, CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)) --
