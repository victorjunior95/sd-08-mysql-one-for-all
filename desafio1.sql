DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(25),
plan_value DECIMAL(5,2)
) ENGINE=InnoDB;

CREATE TABLE Users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(25),
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES Plans(plan_id)
)ENGINE=InnoDB;

CREATE TABLE Artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(50)
)ENGINE=InnoDB;

CREATE TABLE Albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50),
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
)ENGINE=InnoDB;

CREATE TABLE Songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song VARCHAR(50),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albums(album_id)
)ENGINE=InnoDB;

CREATE TABLE Playback_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id)
)ENGINE=InnoDB;

CREATE TABLE Artist_followers(
user_id INT NOT NULL,
artist_id INT NOT NULL,
PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
)ENGINE=InnoDB;



INSERT INTO Plans (plan, plan_value) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO Users(username, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Artists (artist) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Albums(album, artist_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Songs(song, album_id) VALUES
('Soul For Us', 1),
('Reflection Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let''s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let''s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Withour My Streets', 5);

INSERT INTO Playback_history (user_id, song_id) VALUES
(1,1),
(1,6),
(1,14),
(1,16),
(2,13),
(2,17),
(2,2),
(2,15),
(3,4),
(3,16),
(3,6),
(4,3),
(4,18),
(4,11);

INSERT INTO Artist_followers (user_id, artist_id) VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

-- Histórico de erros até conseguir organizar as tables
-- Error Code: 1824. Failed to open the referenced table 'Users'
-- Error Code: 1824. Failed to open the referenced table 'Songs'
-- Error Code: 1824. Failed to open the referenced table 'Albums'
-- Error Code: 1824. Failed to open the referenced table 'artists'
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`SpotifyClone`.`Playback_history`, CONSTRAINT `Playback_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`))
-- Error Code: 1054. Unknown column 'Sweetie, Let's Go Wild' in 'field list'
-- estava tendo erro em composed primary key, testarei essa solução proposta em 
-- https://stackoverflow.com/questions/1110349/how-can-i-define-a-composite-primary-key-in-sql
