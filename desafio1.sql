DROP DATABASE IF EXISTS `SpotifyClone`;
CREATE DATABASE `SpotifyClone`;
USE `SpotifyClone`;
CREATE TABLE IF NOT EXISTS artists (
    artist_id INT AUTO_INCREMENT NOT NULL,
    artist_name VARCHAR(100),
    PRIMARY KEY (artist_id)
) ENGINE = InnoDB;
INSERT INTO artists (artist_id, artist_name)
VALUES (1, 'Walter Phoenix'),
    (2, 'Peter Strong'),
    (3, 'Lance Day'),
    (4, 'Freedie Shannon');
CREATE TABLE IF NOT EXISTS album (
    album_id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(100),
    artist_id INT,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE = InnoDB;
INSERT INTO album (album_id, title, artist_id)
VALUES (1, 'Envious', 1),
    (2, 'Exuberant', 1),
    (3, 'Hallowed Steam', 2),
    (4, 'Incandescent', 3),
    (5, 'Temporary Culture', 4);
CREATE TABLE IF NOT EXISTS songs (
    song_id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(100),
    album_id INT,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) ENGINE = InnoDB;
INSERT INTO songs (song_id, title, album_id)
VALUES (1, "Soul For Us", 1),
    (2, "Reflections Of Magic", 1),
    (3, "Dance With Her Own", 1),
    (4, "Troubles Of My Inner Fire", 2),
    (5, "Time Fireworks", 2),
    (6, "Magic Circus", 3),
    (7, "Honey, So Do I", 3),
    (8, "Sweetie, Let's Go Wild", 3),
    (9, "She Knows", 3),
    (10, "Fantasy For Me", 4),
    (11, "Celebration Of More", 4),
    (12, "Rock His Everything", 4),
    (13, "Home Forever", 4),
    (14, "Diamond Power", 4),
    (15, "Honey, Let's Be Silly", 4),
    (16, "Thang Of Thunder", 5),
    (17, "Words Of Her Life", 5),
    (18, "Without My Streets", 5);
CREATE TABLE IF NOT EXISTS plans (
    plan_id INT AUTO_INCREMENT NOT NULL,
    plan_type VARCHAR(100),
    price DECIMAL (6, 2),
    PRIMARY KEY (plan_id)
) ENGINE = InnoDB;
INSERT INTO plans (plan_type, price)
VALUES ('gratuito', 0),
    ('familiar', '7.99'),
    ('universitário', '5.99');
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT NOT NULL,
    username VARCHAR(100),
    user_age INT,
    plan_id INT,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE = InnoDB;
INSERT INTO users (username, user_age, plan_id)
VALUES ('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);
CREATE TABLE IF NOT EXISTS followers (
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) ENGINE = InnoDB;
INSERT INTO followers
VALUES (1, 1),
    (1, 3),
    (1, 4),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 2),
    (4, 4);
CREATE TABLE IF NOT EXISTS reproductions_history (
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE = InnoDB;
INSERT INTO reproductions_history (user_id, song_id)
VALUES (1, 1),
    (1, 6),
    (1, 14),
    (1, 16),
    (2, 2),
    (2, 13),
    (2, 15),
    (2, 17),
    (3, 4),
    (3, 6),
    (3, 16),
    (4, 3),
    (4, 11),
    (4, 18);