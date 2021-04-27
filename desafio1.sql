DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE all_plans (
plan_id INT PRIMARY KEY,
plan_title VARCHAR(50),
plan_price DOUBLE PRECISION
) engine = InnoDB;

CREATE TABLE users (
user_id INT PRIMARY KEY,
user_name VARCHAR(50),
age INT,
plan_id INT,
FOREIGN KEY(plan_id) REFERENCES all_plans(plan_id)
) engine = InnoDB;

CREATE TABLE all_artist (
artist_id INT PRIMARY KEY,
artist_name VARCHAR(50)
) engine = InnoDB; 

CREATE TABLE followed_artists (
following_id INT,
user_id INT,
artist_id INT,
CONSTRAINT PRIMARY KEY (user_id, artist_id),
FOREIGN KEY(user_id) REFERENCES  users(user_id),
FOREIGN KEY(artist_id) REFERENCES  all_artist(artist_id)
) engine = InnoDB;

CREATE TABLE all_album (
album_id INT PRIMARY KEY,
album_title VARCHAR(50),
artist_id INT,
FOREIGN KEY(artist_id) REFERENCES  all_artist(artist_id) 
) engine = InnoDB;

CREATE TABLE all_songs (
song_id INT PRIMARY KEY,
song_title VARCHAR(50),
artist_id INT,
album_id INT,
FOREIGN KEY(artist_id) REFERENCES  all_artist(artist_id),
FOREIGN KEY(album_id) REFERENCES  all_album(album_id)
) engine = InnoDB;

CREATE TABLE history_songs (
user_id INT,
played_song VARCHAR(50),
song_id INT,
CONSTRAINT PRIMARY KEY (user_id, song_id),
FOREIGN KEY(user_id) REFERENCES  users(user_id),
FOREIGN KEY(song_id) REFERENCES  all_songs(song_id)
) engine = InnoDB;

INSERT INTO all_plans(plan_id, plan_title, plan_price) VALUES('1', 'gratuito', '0');
INSERT INTO all_plans(plan_id, plan_title, plan_price) VALUES('2', 'universitário', '5.99');
INSERT INTO all_plans(plan_id, plan_title, plan_price) VALUES('3', 'familiar', '7.99');

INSERT INTO users(user_id, user_name, age, plan_id) VALUES('1', 'Thati', '23', '1');
INSERT INTO users(user_id, user_name, age, plan_id) VALUES('2', 'Cintia', '35', '3');
INSERT INTO users(user_id, user_name, age, plan_id) VALUES('3', 'Bill', '20', '2');
INSERT INTO users(user_id, user_name, age, plan_id) VALUES('4', 'Roger', '45', '1');

INSERT INTO all_artist(artist_id, artist_name) VALUES('1', 'Freedie Shannon');
INSERT INTO all_artist(artist_id, artist_name) VALUES('2', 'Lance Day');
INSERT INTO all_artist(artist_id, artist_name) VALUES('3', 'Peter Strong');
INSERT INTO all_artist(artist_id, artist_name) VALUES('4', 'Walter Phoenix');

INSERT INTO all_album (album_id, album_title, artist_id) VALUES('1', 'Envious', '4');
INSERT INTO all_album (album_id, album_title, artist_id) VALUES('2', 'Exuberant', '4');
INSERT INTO all_album (album_id, album_title, artist_id) VALUES('3', 'Hallowed Steam', '3');
INSERT INTO all_album (album_id, album_title, artist_id) VALUES('4', 'Incandescent', '2');
INSERT INTO all_album (album_id, album_title, artist_id) VALUES('5', 'Temporary Culture', '1');

INSERT INTO followed_artists (user_id, artist_id) VALUES('1', '4');
INSERT INTO followed_artists (user_id, artist_id) VALUES('1', '1');
INSERT INTO followed_artists (user_id, artist_id) VALUES('1', '2');
INSERT INTO followed_artists (user_id, artist_id) VALUES('2', '4');
INSERT INTO followed_artists (user_id, artist_id) VALUES('2', '2');
INSERT INTO followed_artists (user_id, artist_id) VALUES('3', '3');
INSERT INTO followed_artists (user_id, artist_id) VALUES('3', '4');
INSERT INTO followed_artists (user_id, artist_id) VALUES('4', '1');

INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('1', 'Thang Of Thunder', '1', '5');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('2', 'Words Of Her Life', '1', '5');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('3', 'Without My Streets', '1', '5');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('4', 'Fantasy For Me', '2', '4');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('5', 'Celebration Of More', '2', '4');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('6', 'Rock His Everything', '2', '4');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('7', 'Home Forever', '2', '4');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('8', 'Diamond Power', '2', '4');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('9', "Honey, Let's Be Silly", '2', '4');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('10', 'Magic Circus', '3', '3');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('11', 'Honey, So Do I', '3', '3');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('12', "Sweetie, Let's Go Wild", '3', '3');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('13', 'She Knows', '3', '3');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('14', 'Troubles Of My Inner Fire', '4', '2');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('15', 'Time Fireworks', '4', '2');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('16', 'Soul For Us', '4', '1');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('17', 'Reflections Of Magic', '4', '1');
INSERT INTO all_songs (song_id, song_title, artist_id, album_id) VALUES('18', 'Dance With Her Own', '4', '1');

INSERT INTO history_songs(user_id, played_song, song_id) VALUES('1', 'Soul For Us', '16');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('1', 'Magic Circus', '10');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('1', 'Diamond Power', '8');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('1', 'Thang Of Thunder', '1');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('2', 'Home Forever', '7');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('2', 'Words Of Her Life', '2');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('2', 'Reflections Of Magic', '17');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('2', "Honey, Let's Be Silly", '9');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('3', 'Troubles Of My Inner Fire', '14');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('3', 'Thang Of Thunder', '1');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('3', 'Magic Circus', '10');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('4', 'Dance With Her Own', '18');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('4', 'Without My Streets', '3');
INSERT INTO history_songs(user_id, played_song, song_id) VALUES('4', 'Celebration Of More', '5');
