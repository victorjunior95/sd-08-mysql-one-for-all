DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE users(user_id INT AUTO_INCREMENT, user_name VARCHAR(25) NOT NULL, age INT, PRIMARY KEY (user_id)) ENGINE=INNODB;

INSERT INTO users (user_name, age) VALUES ROW('Thati', 23), ROW('Cintia', 35), ROW('Bill', 20), ROW('Bill', 45);
        
CREATE TABLE pass(pass_id INT AUTO_INCREMENT, pass_name VARCHAR(25) NOT NULL, pass_value DECIMAL(3,2) NOT NULL, PRIMARY KEY (pass_id)) ENGINE=INNODB;
    
INSERT INTO pass (pass_name, pass_value) VALUES ROW('gratuito', 0), ROW('familiar', 7.99), ROW('universitário', 5.99);
        
CREATE TABLE user_pass (user_id INT, pass_id INT, PRIMARY KEY (user_id, pass_id), FOREIGN KEY (user_id) REFERENCES users(user_id), FOREIGN KEY (pass_id) REFERENCES pass(pass_id)) ENGINE=INNODB;
    
INSERT INTO user_pass (user_id, pass_id) VALUES ROW(1, 1), ROW(2, 2), ROW(3, 3), ROW(4, 1);
        
CREATE TABLE musics (music_id INT AUTO_INCREMENT, music_name VARCHAR(50) NOT NULL, PRIMARY KEY (music_id)) ENGINE=INNODB;

INSERT INTO musics (music_name) VALUES ROW('Celebration Of More'), ROW('Dance With Her Own'), ROW('Diamond Power'), ROW('Fantasy For Me'), ROW('Home Forever'), ROW("Honey, Let's Be Silly"), ROW('Honey, So Do I'), ROW('Magic Circus'), ROW('Reflections Of Magic'), ROW('Rock His Everything'), ROW('She Knows'), ROW('Soul For Us'), ROW("Sweetie, Let's Go Wild"), ROW('Thang Of Thunder'), ROW('Time Fireworks'), ROW('Troubles Of My Inner Fire'), ROW('Without My Streets'), ROW('Words Of Her Life');
        
CREATE TABLE historic (user_id INT, music_id INT, PRIMARY KEY (user_id, music_id), FOREIGN KEY (user_id) REFERENCES users(user_id), FOREIGN KEY (music_id) REFERENCES musics(music_id)) ENGINE=INNODB;

INSERT INTO historic (user_id, music_id) VALUES ROW(1, 3), ROW(1, 8), ROW(1, 12), ROW(1, 14), ROW(2, 5), ROW(2, 6), ROW(2, 9), ROW(2, 18), ROW(3, 8), ROW(3, 14), ROW(3, 16), ROW(4, 1), ROW(4, 2), ROW(4, 17);
        
CREATE TABLE albums (album_id INT AUTO_INCREMENT, album_name VARCHAR(25) NOT NULL, PRIMARY KEY (album_id)) ENGINE=INNODB;

INSERT INTO albums (album_name) VALUES ROW('Envious'), ROW('Exuberant'), ROW('Hallowed Steam'), ROW('Incandescent'), ROW('Temporary Culture');
        
CREATE TABLE album_musics (album_id INT, music_id INT, PRIMARY KEY (album_id, music_id), FOREIGN KEY (album_id) REFERENCES albums(album_id), FOREIGN KEY (music_id) REFERENCES musics(music_id)) ENGINE=INNODB;

INSERT INTO album_musics (album_id, music_id) VALUES ROW(1, 2), ROW(1, 9), ROW(1, 12), ROW(2, 15), ROW(2, 16), ROW(3, 7), ROW(3, 8), ROW(3, 11), ROW(3, 13), ROW(4, 1), ROW(4, 3), ROW(4, 4), ROW(4, 5), ROW(4, 6), ROW(4, 10), ROW(5, 14), ROW(5, 17), ROW(5, 18);
        
CREATE TABLE artiste (artiste_id INT AUTO_INCREMENT, artiste_name VARCHAR(25) NOT NULL, PRIMARY KEY (artiste_id)) ENGINE=INNODB;

INSERT INTO artiste(artiste_name) VALUES ROW('Freedie Shannon'), ROW('Lance Day'), ROW('Peter Strong'), ROW('Walter Phoenix');
        
CREATE TABLE artiste_album ( artiste_id INT, album_id INT, PRIMARY KEY (artiste_id, album_id), FOREIGN KEY (artiste_id) REFERENCES artiste(artiste_id), FOREIGN KEY (album_id) REFERENCES albums(album_id)) ENGINE=INNODB;

INSERT INTO artiste_album(artiste_id, album_id) VALUES ROW(1, 5), ROW(2, 4), ROW(3, 3), ROW(4, 1), ROW(4, 2);
        
CREATE TABLE artiste_user ( artiste_id INT, user_id INT, PRIMARY KEY (artiste_id, user_id), FOREIGN KEY (artiste_id) REFERENCES artiste(artiste_id), FOREIGN KEY (user_id) REFERENCES users(user_id) ) ENGINE=INNODB;

INSERT INTO artiste_user(artiste_id, user_id) VALUES ROW(1, 1), ROW(1, 4), ROW(2, 1), ROW(2, 2), ROW(3, 3), ROW(4, 1), ROW(4, 2), ROW(4, 3);
	