DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plan(
  plan_id INT PRIMARY KEY auto_increment,
  plan VARCHAR(45),
  price DECIMAL(3, 2)
);

CREATE TABLE User(
  user_id INT PRIMARY KEY auto_increment,
  user VARCHAR(45),
  age INT,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES Plan (plan_id)
);

CREATE TABLE Artist(
  artist_id INT PRIMARY KEY auto_increment,
  artist VARCHAR(45)
);

CREATE TABLE Album(
  album_id INT PRIMARY KEY auto_increment,
  album VARCHAR(45),
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES Artist (artist_id)
);

CREATE TABLE Song(
  song_id INT PRIMARY KEY auto_increment,
  song VARCHAR(45),
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Album (album_id)
);

CREATE TABLE Historic(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES User (user_id),
  FOREIGN KEY (song_id) REFERENCES Song (song_id)
);

CREATE TABLE Follow_Artist(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES User (user_id),
  FOREIGN KEY (artist_id) REFERENCES Artist (artist_id)
);

INSERT INTO Plan (plan, price) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO User (user, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Artist (artist) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Album (album, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Song (song, album_id) VALUES
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

INSERT INTO Historic (user_id, song_id) VALUES
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

INSERT INTO Follow_Artist (user_id, artist_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);