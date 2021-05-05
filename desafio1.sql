CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan (
plan_id INT AUTO_INCREMENT PRIMARY KEY,
plan_name VARCHAR(50) NOT NULL,
plan_price DECIMAL(5, 2) NOT NULL
)  ENGINE=INNODB;

INSERT INTO plan
VALUES
("gratuito", 0.00),
("familiar", 7.99),
("universitário", 5.99);

CREATE TABLE user (
user_id INT AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(50) NOT NULL,
user_age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plan (plan_id)
)  ENGINE=INNODB;

INSERT INTO user
VALUES
("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

CREATE TABLE artist (
artist_id INT AUTO_INCREMENT PRIMARY KEY,
artist_name VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

INSERT INTO artist
VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

CREATE TABLE album (
album_id INT AUTO_INCREMENT PRIMARY KEY,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
)  ENGINE=INNODB;

INSERT INTO album
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

CREATE TABLE music (
music_id INT AUTO_INCREMENT PRIMARY KEY,
music_name VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album (album_id)
)  ENGINE=INNODB;

INSERT INTO music
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

CREATE TABLE playlist_history (
user_id INT NOT NULL,
music_id INT NOT NULL,
PRIMARY KEY (user_id , music_id),
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (music_id) REFERENCES music (music_id)
)  ENGINE=INNODB;

INSERT INTO playlist_history
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

CREATE TABLE followed_artist (
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY (user_id , artist_id),
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
)  ENGINE=INNODB;

INSERT INTO followed_artist
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
