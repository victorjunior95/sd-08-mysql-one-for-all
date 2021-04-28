DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE pass (
    pass_id INT AUTO_INCREMENT,
    pass_name VARCHAR(25) NOT NULL,
    pass_value DECIMAL(3 , 2 ) NOT NULL,
    PRIMARY KEY (pass_id)
)  ENGINE=INNODB;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(25) NOT NULL,
    age INT,
    pass_id INT,
    PRIMARY KEY (user_id),
    FOREIGN KEY (pass_id) REFERENCES pass(pass_id)
)  ENGINE=INNODB;


CREATE TABLE artiste (
    artiste_id INT AUTO_INCREMENT,
    artiste_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (artiste_id)
)  ENGINE=INNODB;

CREATE TABLE albums (
    album_id INT AUTO_INCREMENT,
    album_name VARCHAR(25) NOT NULL,
    artiste_id INT,
    PRIMARY KEY (album_id),
FOREIGN KEY (artiste_id) REFERENCES artiste(artiste_id)
)  ENGINE=INNODB;


CREATE TABLE musics (
    music_id INT AUTO_INCREMENT,
    music_name VARCHAR(50) NOT NULL,
    album_id INT,
    PRIMARY KEY (music_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
)  ENGINE=INNODB;



CREATE TABLE historic (
    user_id INT,
    music_id INT,
    PRIMARY KEY (user_id , music_id),
    FOREIGN KEY (user_id)
        REFERENCES users (user_id),
    FOREIGN KEY (music_id)
        REFERENCES musics (music_id)
)  ENGINE=INNODB;


CREATE TABLE artiste_user (
    artiste_id INT,
    user_id INT,
    PRIMARY KEY (artiste_id , user_id),
    FOREIGN KEY (artiste_id)
        REFERENCES artiste (artiste_id),
    FOREIGN KEY (user_id)
        REFERENCES users (user_id)
)  ENGINE=INNODB;

INSERT INTO pass (pass_name, pass_value) VALUES ROW('gratuito', 0), ROW('familiar', 7.99), ROW('universitário', 5.99);

INSERT INTO users (user_name, age, pass_id ) VALUES ROW('Thati', 23, 1), ROW('Cintia', 35, 2), ROW('Bill', 20, 3), ROW('Roger', 45, 1);

INSERT INTO artiste(artiste_name) VALUES ROW('Freedie Shannon'), ROW('Lance Day'), ROW('Peter Strong'), ROW('Walter Phoenix');

INSERT INTO albums (album_name, artiste_id ) VALUES ROW('Envious', 4), ROW('Exuberant', 4), ROW('Hallowed Steam', 3), ROW('Incandescent', 2), ROW('Temporary Culture', 1);

INSERT INTO musics (music_name, album_id ) VALUES
ROW('Celebration Of More', 4),
ROW('Dance With Her Own', 1),
ROW('Diamond Power', 4),
ROW('Fantasy For Me', 4),
ROW('Home Forever', 4),
ROW("Honey, Let's Be Silly", 4),
ROW('Honey, So Do I', 3),
ROW('Magic Circus', 3),
ROW('Reflections Of Magic', 1),
ROW('Rock His Everything', 4),
ROW('She Knows', 3),
ROW('Soul For Us', 1),
ROW("Sweetie, Let's Go Wild",3),
ROW('Thang Of Thunder', 5),
ROW('Time Fireworks', 2),
ROW('Troubles Of My Inner Fire', 2),
ROW('Without My Streets', 5),
ROW('Words Of Her Life', 5);

INSERT INTO historic (user_id, music_id) VALUES ROW(1, 3), ROW(1, 8), ROW(1, 12), ROW(1, 14), ROW(2, 5), ROW(2, 6), ROW(2, 9), ROW(2, 18), ROW(3, 8), ROW(3, 14), ROW(3, 16), ROW(4, 1), ROW(4, 2), ROW(4, 17);

INSERT INTO artiste_user(artiste_id, user_id) VALUES ROW(1, 1), ROW(1, 4), ROW(2, 1), ROW(2, 2), ROW(3, 3), ROW(4, 1), ROW(4, 2), ROW(4, 3);
