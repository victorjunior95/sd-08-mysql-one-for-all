CREATE DATABASE IF NOT EXISTS `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE IF NOT EXISTS artist (
artist_id INT AUTO_INCREMENT NOT NULL,
artist_name VARCHAR(100),
PRIMARY KEY (artist_id) 
) ENGINE=InnoDB;

INSERT INTO artist (artist_name) VALUES
('Walter Phoenix'), ('Freedie Shannon'),('Lance Day'),('Peter Strong');

CREATE TABLE IF NOT EXISTS album (
album_id INT AUTO_INCREMENT NOT NULL, 
title VARCHAR(100),
artist_id INT, 
PRIMARY KEY (album_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

INSERT INTO album (title, artist_id) VALUES
('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 4), ('Incandescent',3), ('Temporary Culture', 2);

CREATE TABLE IF NOT EXISTS songs (
song_id INT AUTO_INCREMENT NOT NULL,
title VARCHAR(100),
album_id INT,
PRIMARY KEY (song_id),
FOREIGN KEY (album_id) REFERENCES album(album_id) 
) ENGINE=InnoDB;

INSERT INTO songs (title, album_id) VALUES 
("Soul For Us", 1), ("Reflections Of Magic", 1), ("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2), ("Time Fireworks", 2),
("Magic Circus", 3), ("Honey, So Do I", 3), ("Sweetie, Let's Go Wild", 3), ("She Knows", 3),
("Fantasy For Me", 4), ("Celebration Of More", 4), ("Rock His Everything", 4), ("Home Forever", 4), ("Diamond Power", 4), ("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5), ("Words Of Her Life", 5), ("Without My Streets", 5);

CREATE TABLE IF NOT EXISTS plans (
plan_id INT AUTO_INCREMENT NOT NULL,
plan_type VARCHAR(100),
price DECIMAL (6,2),
PRIMARY KEY (plan_id)
) ENGINE=InnoDB;

INSERT INTO plans (plan_type, price) VALUES
('gratuito',0), ('familiar', '7.99' ), ('universitário', '5.99'); 

CREATE TABLE IF NOT EXISTS users (
user_id INT AUTO_INCREMENT NOT NULL,
username VARCHAR(100),
user_age INT,
plan_id INT,
PRIMARY KEY (user_id),
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE=InnoDB;

INSERT INTO users (username, user_age, plan_id) VALUES 
('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);


CREATE TABLE IF NOT EXISTS `following` (
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

INSERT INTO `following` VALUES 
(1,1), (1,2), (1,3), (2,1), (2,3), (3,1), (3,3), (3,4), (4,2);

CREATE TABLE IF NOT EXISTS reproductions_history (
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE=InnoDB;

INSERT INTO reproductions_history (user_id, song_id) VALUES
  (1, 1), (1, 6), (1, 14), (1, 16),
  (2, 13), (2, 17), (2, 2), (2, 15),
  (3, 4), (3, 16), (3, 6), (4, 3),
  (4, 18), (4, 11);