DROP DATABASE IF EXISTS `SpotifyClone`;
CREATE DATABASE `SpotifyClone`;
USE `SpotifyClone`;
CREATE TABLE IF NOT EXISTS artists (
    artist_id INT AUTO_INCREMENT NOT NULL,
    artist_name VARCHAR(100),
    PRIMARY KEY (artist_id)
) ENGINE = InnoDB;
INSERT INTO artists (artist_name)
VALUES ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');
