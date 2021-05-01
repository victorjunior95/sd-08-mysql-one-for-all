DROP SCHEMA IF EXISTS SpotifyClone ;
CREATE SCHEMA IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE IF NOT EXISTS plans (
  plan_id INT AUTO_INCREMENT,
  plan_type VARCHAR(25),
  plan_price DECIMAL(10,2),
  PRIMARY KEY (plan_id)
) ENGINE = InnoDB;

INSERT INTO plans (plan_id, plan_type, plan_price) VALUES
  (1, 'gratuito', 0.00),
  (2, 'universtiário', 5.99),
  (3, 'familiar', 7.99);

CREATE TABLE IF NOT EXISTS users (
  user_id INT AUTO_INCREMENT, 
  user_name VARCHAR(25),
  user_age INT,
  user_plan INT,
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_plan) REFERENCES plans (plan_id)
) ENGINE = InnoDB;

INSERT INTO users (user_id, user_name, user_age, user_plan) VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 3),
  (3, 'Bill', 20, 2),
  (4, 'Roger', 45, 1);
  
CREATE TABLE IF NOT EXISTS artists (
  artist_id INT AUTO_INCREMENT,
  artist_name VARCHAR(25),
  PRIMARY KEY (artist_id)
) ENGINE = InnoDB;
  
INSERT INTO artists (artist_id, artist_name) VALUES
  (1, 'Walter Phoenix'),
  (2, 'Lance Day'),
  (3, 'Freedie Shannon'),
  (4, 'Peter Strong');
  
CREATE TABLE IF NOT EXISTS following (
  -- follow_id INT AUTO_INCREMENT,
  user_id INT,
  follows_artist_id INT,
  PRIMARY KEY (user_id, follows_artist_id),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (follows_artist_id) REFERENCES artists (artist_id)
) ENGINE = InnoDB;
  
INSERT INTO following (user_id, follows_artist_id) VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 2),
  (3, 1),
  (3, 4),
  (4, 3);
  
CREATE TABLE IF NOT EXISTS albums (
  album_id INT AUTO_INCREMENT,
  album_title VARCHAR(25),
  album_author_id INT,
  PRIMARY KEY (album_id),
  FOREIGN KEY (album_author_id) REFERENCES artists (artist_id)
) ENGINE = InnoDB;

INSERT INTO albums (album_id, album_title, album_author_id) VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 4),
  (4, 'Incandescent', 2),
  (5, 'Temporary Culture', 3);

CREATE TABLE IF NOT EXISTS songs (
  song_id INT AUTO_INCREMENT,
  song_title VARCHAR(25),
  song_album_id INT,
  PRIMARY KEY (song_id),
  FOREIGN KEY (song_album_id) REFERENCES albums (album_id)
) ENGINE = InnoDB;

INSERT INTO songs (song_id, song_title, song_album_id) VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, 'Sweetie, Let\'s Go Wild', 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, 'Honey, Let\'s Be Silly', 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);
  
CREATE TABLE IF NOT EXISTS history (
  -- history_id INT AUTO_INCREMENT,
  song_id INT,
  played_by_user_id INT,
  PRIMARY KEY (song_id, played_by_user_id),
  FOREIGN KEY (song_id) REFERENCES songs (song_id),
  FOREIGN KEY (played_by_user_id) REFERENCES users (user_id)
) ENGINE = InnoDB;

INSERT INTO history (song_id, played_by_user_id) VALUES
  (1, 1),
  (6, 1),
  (14, 1),
  (16, 1),
  (13, 2),
  (17, 2),
  (2, 2),
  (15, 2),
  (4, 3),
  (16, 3),
  (6, 3),
  (3, 4),
  (18, 4),
  (11, 4);
