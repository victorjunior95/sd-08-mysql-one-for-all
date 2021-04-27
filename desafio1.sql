DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE `plans` (
  `plan_id` TINYINT UNSIGNED AUTO_INCREMENT,
  `type` VARCHAR(50) NOT NULL,
  `price` DOUBLE,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB;

CREATE TABLE `users` (
  `user_id` TINYINT UNSIGNED AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `age` TINYINT UNSIGNED,
  `plan_id` TINYINT UNSIGNED,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_plan` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`plan_id`)
) ENGINE=InnoDB;

CREATE TABLE `artists` (
  `artist_id` TINYINT UNSIGNED AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB;

CREATE TABLE `albums` (
  `album_id` TINYINT UNSIGNED AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `artist_id` TINYINT UNSIGNED,
  PRIMARY KEY (`album_id`),
  CONSTRAINT `fk_album_artist` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB;

CREATE TABLE `songs` (
  `song_id` TINYINT UNSIGNED AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `album_id` TINYINT UNSIGNED,
  PRIMARY KEY (`song_id`),
  CONSTRAINT `fk_song_album` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`)
) ENGINE=InnoDB;

CREATE TABLE `artists_followers` (
  `user_id` TINYINT UNSIGNED,
  `artist_id` TINYINT UNSIGNED,
  PRIMARY KEY (`user_id`, `artist_id`),
  CONSTRAINT `fk_artist_follower_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_artist_follower_artist` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB;

CREATE TABLE `songs_history` (
  `user_id` TINYINT UNSIGNED,
  `song_id` TINYINT UNSIGNED,
  PRIMARY KEY (`user_id`, `song_id`),
  CONSTRAINT `fk_song_history_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_song_history_song` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB;

INSERT INTO `plans` (`type`, `price`)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO `users` (`name`, `age`, `plan_id`)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO `artists` (`name`)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO `albums` (`name`, `artist_id`)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO `songs` (`name`, `album_id`)
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
  ('Fantasy For Me',  4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);

INSERT INTO `artists_followers` (`user_id`, `artist_id`)
VALUES
  (1,1),
  (1,3),
  (1,4),
  (2,1),
  (2,3),
  (3,1),
  (3,2),
  (4,4);

INSERT INTO `songs_history` (`user_id`, `song_id`)
VALUES
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
