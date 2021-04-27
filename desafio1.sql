DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Subscription(
    subscription_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_type VARCHAR(50) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Artist(
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(70) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Albums(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR (150) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
) ENGINE=InnoDB;

CREATE TABLE Songs(
	song_id INT PRIMARY KEY AUTO_INCREMENT,
    song_name VARCHAR(150) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
) ENGINE=InnoDB;

CREATE TABLE Spotify_User(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    subscription_id INT NOT NULL,
    FOREIGN KEY (subscription_id) REFERENCES Subscription(subscription_id)
) ENGINE=InnoDB;

CREATE TABLE History(
	history_id INT PRIMARY KEY AUTO_INCREMENT,
    song_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (song_id) REFERENCES Songs(song_id),
    FOREIGN KEY (user_id) REFERENCES Spotify_User(user_id)
) ENGINE=InnoDB;

CREATE TABLE Following(
	follow_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (user_id) REFERENCES Spotify_User(user_id)
) ENGINE=InnoDB;


INSERT INTO Subscription (sub_type, price)
VALUES
  ('gratuito', 0.00),
  ('universitário', 5.99),
  ('familiar', 7.99);

INSERT INTO Artist (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'), 
  ('Freedie Shannon');
  
INSERT INTO Albums (album_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO Songs (song_name, album_id)
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
  
INSERT INTO Spotify_User (username, age, subscription_id)
VALUES 
  ('Thati', 23, 1), 
  ('Cintia', 35, 2), 
  ('Bill', 20, 3), 
  ('Roger', 45, 1);
  
INSERT INTO History (user_id, song_id)
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
  
INSERT INTO Following (user_id, artist_id)
VALUES 
  (1, 1), 
  (1, 4), 
  (1, 3), 
  (2, 1), 
  (2, 3), 
  (3, 2), 
  (3, 1), 
  (4, 4);
