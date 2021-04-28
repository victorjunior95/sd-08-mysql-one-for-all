DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
plan_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(15) NOT NULL UNIQUE,
plan_cost DECIMAL(5,2) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE artists(
artist_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(15) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE albums(
album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
)ENGINE=InnoDB;

CREATE TABLE users(
user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(15) NOT NULL,
user_age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plans(plan_id)
)ENGINE=InnoDB;

CREATE TABLE songs(
song_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
album_id INT NOT NULL,
song_title VARCHAR(50) NOT NULL,
FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums(album_id)
)ENGINE=InnoDB;

CREATE TABLE historic(
user_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id)
)ENGINE=InnoDB;

CREATE TABLE followers(
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY(user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artists(artist_id)
)ENGINE=InnoDB;

INSERT INTO plans (plan, plan_cost)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO users (user_name, user_age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artists (artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums(album_name, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (album_id, song_title)
VALUES
(1, 'Soul For Us'),
(1, 'Reflections Of Magic'),
(1, 'Dance With Her Own'),
(2, 'Troubles Of My Inner Fire'),
(2, 'Time Fireworks'),
(3, 'Magic Circus'),
(3, 'Honey, So Do I'),
(3, 'Sweetie, Lets Go Wild'),
(3, 'She Knows'),
(4, 'Fantasy For Me'),
(4, 'Celebration Of More'),
(4, 'Rock His Everything'),
(4, 'Home Forever'),
(4, 'Diamond Power'),
(4, 'Honey, Lets Be Silly'),
(5, 'Thang Of Thunder'),
(5, 'Words Of Her Life'),
(5, 'Without My Streets');

INSERT INTO followers (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historic (user_id, song_id)
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
