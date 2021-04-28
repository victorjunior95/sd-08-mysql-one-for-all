CREATE DATABASE IF NOT EXISTS `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE IF NOT EXISTS artist (
artist_id INT AUTO_INCREMENT,
artist_name VARCHAR(100),
PRIMARY KEY (artist_id) 
) ENGINE=InnoDB;

INSERT INTO artist (artist_name) VALUES
('Walter Phoenix'), ('Freedie Shannon'),('Lance Day'),('Peter Strong');

CREATE TABLE IF NOT EXISTS album (
album_id INT AUTO_INCREMENT, 
title VARCHAR(100),
artist_id INT, 
PRIMARY KEY (album_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

INSERT INTO album (title) VALUES
('Envious'), ('Exuberant'), ('Hallowed Steam'), ('Incandescent'), ('Temporary Culture');

CREATE TABLE IF NOT EXISTS songs (
song_id INT AUTO_INCREMENT,
title VARCHAR(100),
album_id INT,
PRIMARY KEY (song_id),
FOREIGN KEY (album_id) REFERENCES album(album_id) 
) ENGINE=InnoDB;

INSERT INTO songs (title) VALUES 
("Soul For Us"), ("Reflections Of Magic"), ("Dance With Her Own"),
("Troubles Of My Inner Fire"), ("Time Fireworks"),
("Magic Circus"), ("Honey, So Do I"), ("Sweetie, Let's Go Wild"), ("She Knows"),
("Fantasy For Me"), ("Celebration Of More"), ("Rock His Everything"), ("Home Forever"), ("Diamond Power"), ("Honey, Let's Be Silly"),
("Thang Of Thunder"), ("Words Of Her Life"), ("Without My Streets");

CREATE TABLE IF NOT EXISTS plans (
plan_id INT AUTO_INCREMENT,
plan_type VARCHAR(100),
price DECIMAL (6,2),
PRIMARY KEY (plan_id)
) ENGINE=InnoDB;

INSERT INTO plans (plan_type, price) VALUES
('gratuito',0), ('familiar', '7.99' ), ('universitário', '5.99'); 

CREATE TABLE IF NOT EXISTS users (
user_id INT AUTO_INCREMENT,
username VARCHAR(100),
user_age INT,
plan_id INT,
PRIMARY KEY (user_id),
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE=InnoDB;

INSERT INTO users (username, user_age) VALUES 
('Thati', 23), ('Cintia', 35), ('Bill',	20), ('Roger',45);


CREATE TABLE IF NOT EXISTS `following` (
user_id INT,
artist_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS reproductions_history (
user_id INT,
song_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE=InnoDB;
