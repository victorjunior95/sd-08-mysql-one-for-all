CREATE DATABASE IF NOT EXISTS `SpotifyClone`;
USE `SpotifyClone`;

CREATE TABLE IF NOT EXISTS artist (
artist_id INT AUTO_INCREMENT,
artist_name VARCHAR(100),
PRIMARY KEY (artist_id) 
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS album (
album_id INT AUTO_INCREMENT, 
title VARCHAR(100),
artist_id INT, 
PRIMARY KEY (album_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS songs (
song_id INT AUTO_INCREMENT,
title VARCHAR(100),
album_id INT,
PRIMARY KEY (song_id),
FOREIGN KEY (album_id) REFERENCES album(album_id) 
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS plans (
plan_id INT AUTO_INCREMENT,
`description` VARCHAR(100),
price DOUBLE(6,2),
PRIMARY KEY (plan_id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS users (
user_id INT AUTO_INCREMENT,
username VARCHAR(100),
user_age INT,
plan_id INT,
PRIMARY KEY (user_id),
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE=InnoDB;

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