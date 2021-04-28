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

INSERT INTO pass (pass_name, pass_value) VALUES ('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO users (user_name, age, pass_id ) VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

INSERT INTO artiste(artiste_name) VALUES ('Freedie Shannon'), ('Lance Day'), ('Peter Strong'), ('Walter Phoenix');

INSERT INTO albums (album_name, artiste_id ) VALUES ('Envious', 4), ('Exuberant', 4), ('Hallowed Steam', 3), ('Incandescent', 2), ('Temporary Culture', 1);

INSERT INTO musics (music_name, album_id ) VALUES
('Celebration Of More', 4),
('Dance With Her Own', 1),
('Diamond Power', 4),
('Fantasy For Me', 4),
('Home Forever', 4),
("Honey, Let's Be Silly", 4),
('Honey, So Do I', 3),
('Magic Circus', 3),
('Reflections Of Magic', 1),
('Rock His Everything', 4),
('She Knows', 3),
('Soul For Us', 1),
("Sweetie, Let's Go Wild",3),
('Thang Of Thunder', 5),
('Time Fireworks', 2),
('Troubles Of My Inner Fire', 2),
('Without My Streets', 5),
('Words Of Her Life', 5);

INSERT INTO historic (user_id, music_id) VALUES (1, 3), (1, 8), (1, 12), (1, 14), (2, 5), (2, 6), (2, 9), (2, 18), (3, 8), (3, 14), (3, 16), (4, 1), (4, 2), (4, 17);

INSERT INTO artiste_user(artiste_id, user_id) VALUES (1, 1), (1, 4), (2, 1), (2, 2), (3, 3), (4, 1), (4, 2), (4, 3);
