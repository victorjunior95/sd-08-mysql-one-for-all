DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `artist_id` tinyint NOT NULL DEFAULT 0,
  `artist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `artists` (`artist_id`, `artist`) VALUES
(1, 'Walter Phoenix'),
(2, 'Freedie Shannon'),
(3, 'Lance Day'),
(4, 'Peter Strong');

--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `album_id` tinyint NOT NULL DEFAULT 0,
  `album` varchar(255) DEFAULT NULL,
  `artist_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  FOREIGN KEY (`artist_id`) REFERENCES `artists`(`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `albums` (`album_id`, `album`, `artist_id`) VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 4),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 2);

--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE `songs` (
  `song_id` tinyint NOT NULL DEFAULT 0,
  `song` varchar(255) DEFAULT NULL,
  `album_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  FOREIGN KEY (`album_id`) REFERENCES `albums`(`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `songs` (`song_id`, `song`, `album_id`) VALUES
(1,	'Soul For Us', 1),
(2,	'Reflections Of Magic', 1),
(3,	'Dance With Her Own', 1),
(4,	'Troubles Of My Inner Fire', 2),
(5,	'Time Fireworks', 2),
(6,	'Magic Circus', 3),
(7,	'Honey, So Do I', 3),
(8,	'Sweetie, Let''s Go Wild', 3),
(9,	'She Knows', 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4),
(15, 'Honey, Let''s Be Silly', 4),
(16, 'Thang Of Thunder', 5),
(17, 'Words Of Her Life', 5),
(18, 'Without My Streets', 5);

--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE `plans` (
  `plan_id` tinyint NOT NULL DEFAULT 0,
  `plan` varchar(255) DEFAULT NULL,
  `plan_price` decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `plans` (`plan_id`, `plan`, `plan_price`) VALUES
(1,	'gratuito', 0.00),
(2,	'universitário', 5.99),
(3,	'familiar', 7.99);

--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` tinyint NOT NULL DEFAULT 0,
  `user` varchar(30) DEFAULT NULL,
  `age` decimal(3,0) DEFAULT NULL,
  `plan_id` tinyint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  FOREIGN KEY (`plan_id`) REFERENCES `plans`(`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `users` (`user_id`, `user`, `age`, `plan_id`) VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 3),
(3, 'Bill', 20, 2),
(4, 'Roger', 45, 1);

--

DROP TABLE IF EXISTS `follows`;
CREATE TABLE `follows` (
  `user_id` tinyint NOT NULL DEFAULT 0,
  `artist_id` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `artist_id`),
  FOREIGN KEY (`artist_id`) REFERENCES `artists`(`artist_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `follows` (`user_id`, `artist_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 4),
(4, 2);

--

DROP TABLE IF EXISTS `reproductions`;
CREATE TABLE `reproductions` (
  `user_id` tinyint NOT NULL DEFAULT 0,
  `song_id` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`, `song_id`),
  FOREIGN KEY (`song_id`) REFERENCES `songs`(`song_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `reproductions` (`user_id`, `song_id`) VALUES
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
