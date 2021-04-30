CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
plano_id INT NOT NULL PRIMARY KEY,
plano_name VARCHAR(50),
plano_valor FLOAT
) engine = InnoDB;

CREATE TABLE users(
user_id INT NOT NULL PRIMARY KEY,
user_name VARCHAR(50),
user_age INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
artista_id INT NOT NULL PRIMARY KEY,
artista_name VARCHAR(50)
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT NOT NULL PRIMARY KEY,
album_name VARCHAR(50),
artista_id INT,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE songs(
song_id INT NOT NULL PRIMARY KEY,
song_name VARCHAR(50),
album_id INT,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

CREATE TABLE users_follow_artistas(
user_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos VALUES (1,"gratuito",0),
(2,"familiar",7.99),
(3,"universitário",5.99);

INSERT INTO SpotifyClone.users VALUES (1,"Thati",23,1),
(2,"Cintia" ,50,2),
(3,"Bill",20,3),
(4,"Roger",45,1);

INSERT INTO SpotifyClone.artistas VALUES (1,"Walter Phoenix"),
(2,"Peter Strong"),
(3,"Lance Day"),
(4,"Freedie Shannon");

INSERT INTO SpotifyClone.albuns VALUES (1,"Envious",1),
(2,"Exuberant",1),
(3,"Hallowed Steam",2),
(4,"Incandescent",3),
(5,"Temporary Culture",4);

INSERT INTO SpotifyClone.songs VALUES (1,"Soul For Us",1),
(2,"Reflections Of Magic",1),
(3,"Dance With Her Own",1),
(4,"Troubles Of My Inner Fire",2),
(5," Time Fireworks",2),
(6,"Magic Circus",3),
(7,"Honey, So Do I",3),
(8,"Sweetie, Let's Go Wild",3),
(9,"She Knows",3),
(10,"Fantasy For Me",4),
(11,"Celebration Of More",4),
(12,"Rock His Everything",4),
(13,"Home Forever",4),
(14,"Diamond Power",4),
(15,"Honey, Let's Be Silly",4),
(16,"Thang Of Thunder",5),
(17,"Words Of Her Life",5),
(18,"Without My Streets",5);

INSERT INTO SpotifyClone.users_follow_artistas VALUES (1,1),
(1,3),
(1,4),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

INSERT INTO SpotifyClone.historico_de_reproducoes VALUES (1,1),
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
