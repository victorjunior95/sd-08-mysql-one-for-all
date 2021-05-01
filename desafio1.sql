DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plans (
    plan_id TINYINT NOT NULL,
    plan_name VARCHAR(50) NOT NULL,
    plan_price DECIMAL(3,2) NOT NULL,
    PRIMARY KEY (plan_id)
)  ENGINE=INNODB;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(80) NOT NULL,
    user_age TINYINT NOT NULL,
    plan_id TINYINT NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id) REFERENCES Plans(plan_id)
)  ENGINE=INNODB;

CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT,
    artist_name VARCHAR(80) NOT NULL,
    PRIMARY KEY (artist_id)
)  ENGINE=INNODB;

CREATE TABLE Albuns (
    album_id INT AUTO_INCREMENT,
    album_name VARCHAR(120) NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
)  ENGINE=INNODB;

CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT,
    song_name VARCHAR(150) NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
)  ENGINE=INNODB;

CREATE TABLE Followers (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES Users (user_id),
    FOREIGN KEY (artist_id) REFERENCES Artists (artist_id)
)  ENGINE=INNODB;

CREATE TABLE Playback_History (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
)  ENGINE=INNODB;

INSERT INTO
Plans (plan_id, plan_name, plan_price)
VALUES
(1, 'Gratuito', 0.00),
(2, 'Universitário', 5.99),
(3, 'Familiar', 7.99);
  
INSERT INTO
Users (user_name, user_age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);
  
INSERT INTO
Artists (artist_name)
VALUES
('Freedie Shannon'),
('Lance Day'),
('Peter Strong'),
('Walter Phoenix');
  
INSERT INTO
Albuns (album_name, artist_id)
VALUES
('Envious', 4),
('Exuberant', 4),
('Incandescent', 2),
('Hallowed Steam', 3),
('Temporary Culture', 1);
  
INSERT INTO
Songs (song_name, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Fantasy For Me', 3),
('Celebration Of More', 3),
('Rock His Everything', 3),
('Home Forever', 3),
('Diamond Power', 3),
("Honey, Let's Be Silly", 3),
('Magic Circus', 4),
('Honey, So Do I', 4),
("Sweetie, Let's Go Wild", 4),
('She Knows', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);
  
INSERT INTO
Followers (user_id, artist_id)
VALUES
(1, 4),
(1, 1),
(1, 2),
(2, 4),
(2, 2),
(3, 3),
(3, 4),
(4, 1);
  
INSERT INTO
Playback_History (user_id, song_id)
VALUES 
(1, 1),
(1, 12),
(1, 10),
(1, 16),
(2, 9),
(2, 17),
(2, 2),
(2, 11),
(3, 4),
(3, 16),
(3, 12),
(4, 3),
(4, 18),
(4, 7);
