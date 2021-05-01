CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
ID INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE artists(
ID INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE albuns(
ID INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(ID)
) ENGINE=InnoDB;

CREATE TABLE songs(
ID INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(ID),
FOREIGN KEY (artist_id) REFERENCES artists(ID)
) ENGINE=InnoDB;

CREATE TABLE users(
ID INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans(ID)
) ENGINE=InnoDB;

CREATE TABLE histories(
user_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) REFERENCES users(ID),
FOREIGN KEY (song_id) REFERENCES songs(ID)
) ENGINE=InnoDB;

/* CREATE TABLE artist_albuns(
artist_id INT NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY (artist_id, album_id),
FOREIGN KEY (artist_id) REFERENCES artists(ID),
FOREIGN KEY (album_id) REFERENCES albuns(ID)
) ENGINE=InnoDB; */

CREATE TABLE user_follows(
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES users(ID),
FOREIGN KEY (artist_id) REFERENCES artists(ID)
) ENGINE=InnoDB;

/* CREATE TABLE album_songs(
album_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (album_id, song_id),
FOREIGN KEY (song_id) REFERENCES songs(ID),
FOREIGN KEY (album_id) REFERENCES albuns(ID)
) ENGINE=InnoDB; */

INSERT INTO plans (`name`, price) VALUES
('gratuito', 0.00),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO artists (`name`) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shanno');

INSERT INTO albuns (`name`, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (`name`, album_id, artist_id) VALUES
('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 2, 1),
('Time Fireworks', 2, 1),
('Magic Circus', 3, 2),
('Honey, So Do I', 3, 2),
('Sweetie, Let''s Go Wild', 3, 2),
('She Knows', 3, 2),
('Fantasy For Me', 4, 3),
('Celebration Of More', 4, 3),
('Rock His Everything', 4, 3),
('Home Forever', 4, 3),
('Diamond Power', 4, 3),
('Honey, Let''s Be Silly', 4, 3),
('Thang Of Thunder', 5, 4),
('Words Of Her Life', 5, 4),
('Without My Streets', 5, 4);

INSERT INTO users (`name`, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO histories (user_id, song_id) VALUES
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

INSERT INTO user_follows (user_id, artist_id) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);
