DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  `plan_id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `plan_name` VARCHAR(25),
  `plan_value` DECIMAL(4, 2)
) ENGINE = InnoDB;

CREATE TABLE users(
  `id_user` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(40) NOT NULL,
  `age` INT NOT NULL,
  `id_plan` INT NOT NULL,
  CONSTRAINT `fk_plan_users`
  FOREIGN KEY (`id_plan`)
    REFERENCES `plans` (`id_plan`)
) ENGINE = InnoDB;

CREATE TABLE artist(
  `id_artist` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `artist_name` VARCHAR(100) NOT NULL UNIQUE
) ENGINE = InnoDB;

CREATE TABLE albums(
  `id_album` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `album_name` VARCHAR(100) NOT NULL,
  `id_artista` INT NOT NULL,
  CONSTRAINT `fk_artist_albums`
  FOREIGN KEY (`id_artist`)
    REFERENCES `artist` (`id_artist`)
) ENGINE = InnoDB;

CREATE TABLE songs(
  `id_song` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `song_name` VARCHAR(100) NOT NULL,
  `id_album` INT NOT NULL,
  CONSTRAINT `fk_album_songs`
  FOREIGN KEY(`id_album`)
    REFERENCES `album` (`id_album`)
) ENGINE = InnoDB;

CREATE TABLE historic(
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  PRIMARY KEY(`user_id`, `song_id`),
  CONSTRAINT `fk_user_historic`
  FOREIGN KEY (`user_id`)
    REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_song_historic`
  FOREIGN KEY (`song_id`)
    REFERENCES `songs` (`song_id`)
) ENGINE = InnoDB;

CREATE TABLE following(
`user_id` INT NOT NULL,
`artist_id` INT NOT NULL,
PRIMARY KEY (`artist_id`, `user_id`),
CONSTRAINT `fk_user_following`
FOREIGN KEY (`user_id`)
  REFERENCES `users` (`user_id`),
CONSTRAINT `fk_artist_following`
FOREIGN KEY (`artist_id`)
  REFERENCES `artist` (`artist_id`)
) ENGINE = InnoDB;

INSERT INTO users (user_name, age, id_plan)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO plans (plan_name, plan_value)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO historic (id_user, id_song)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO following (id_user, id_artist)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO artist (artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums (album_name, id_artist)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (song_name, id_album)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);
