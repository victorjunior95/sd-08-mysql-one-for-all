DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE SpotifyClone.plans (
    `id_plan` INT NOT NULL AUTO_INCREMENT,
    `plan` VARCHAR(45) NULL,
    `price` DOUBLE NULL,
    PRIMARY KEY (`id_plan`)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.users (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NULL,
    `age` INT NULL,
    `id_plan` INT NULL,
    PRIMARY KEY (`user_id`),
    CONSTRAINT `id_plan` FOREIGN KEY (`id_plan`)
        REFERENCES SpotifyClone.plans (`id_plan`)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.artists (
    `artist_id` INT NOT NULL AUTO_INCREMENT,
    `artist` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`artist_id`)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.albums(
  `album_id` INT NOT NULL,
  `album` VARCHAR(45) NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`album_id`),
  INDEX `artist_id_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `artist_id`
    FOREIGN KEY (`artist_id`)
    REFERENCES `SpotifyClone`.`artists` (`artist_id`)
)
ENGINE = InnoDB;

CREATE TABLE SpotifyClone.songs(
  `song_id` INT NOT NULL,
  `song` VARCHAR(45) NOT NULL,
  `artist_id` INT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`song_id`),
  INDEX `artist_id_idx` (`artist_id` ASC) VISIBLE,
  INDEX `album_id_idx` (`album_id` ASC) VISIBLE,
    FOREIGN KEY (`artist_id`)
    REFERENCES `SpotifyClone`.`artists` (`artist_id`),
    FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`albums` (`album_id`)
)
ENGINE = InnoDB;

CREATE TABLE SpotifyClone.followed_artists (
    `user_id` INT NULL,
    `artist_id` INT NULL,
    FOREIGN KEY (`user_id`)
        REFERENCES `SpotifyClone`.`users` (`user_id`),
    FOREIGN KEY (`artist_id`)
        REFERENCES `SpotifyClone`.`artists` (`artist_id`)
)  ENGINE=INNODB;

CREATE TABLE SpotifyClone.played_music_history (
    `user_id` INT NOT NULL,
    `song_id` INT NOT NULL,
    FOREIGN KEY (`user_id`)
        REFERENCES `SpotifyClone`.`users` (`user_id`),
    FOREIGN KEY (`song_id`)
        REFERENCES `SpotifyClone`.`songs` (`song_id`)
)  ENGINE=INNODB;

INSERT INTO SpotifyClone.artists (artist)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO SpotifyClone.albums (album_id, album, artist_id)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);

INSERT INTO SpotifyClone.plans (plan, price)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO SpotifyClone.users (name, age, id_plan)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
  
  INSERT INTO SpotifyClone.songs (song_id, song, artist_id, album_id)
VALUES
  (1, 'Soul For Us', 1, 1),
  (2, 'Reflections Of Magic', 1, 1),
  (3, 'Dance With Her Own', 1, 1),
  (4, 'Troubles Of My Inner Fire', 1, 2),
  (5, 'Time Fireworks', 1, 2),
  (6, 'Magic Circus', 2, 3),
  (7, 'Honey, So Do I', 2, 3),
  (8, "Sweetie, Let's Go Wild", 2, 3),
  (9, 'She Knows', 2, 3),
  (10, 'Fantasy For Me', 3, 4),
  (11, 'Celebration Of More', 3, 4),
  (12, 'Rock His Everything', 3, 4),
  (13, 'Home Forever', 3, 4),
  (14, 'Diamond Power', 3, 4),
  (15, "Honey, Let's Be Silly", 3, 4),
  (16, 'Thang Of Thunder', 4, 5),
  (17, 'Words Of Her Life', 4, 5),
  (18, 'Without My Streets', 4, 5);

INSERT INTO SpotifyClone.followed_artists (user_id, artist_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);

INSERT INTO SpotifyClone.played_music_history (user_id, song_id)
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
