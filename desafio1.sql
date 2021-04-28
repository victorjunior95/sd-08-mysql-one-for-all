CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE AccessPlan(
    PlanID INT PRIMARY KEY auto_increment,
    Plan VARCHAR(50),
    Price FLOAT NOT NULL
) ENGINE = InnoDB;

INSERT INTO AccessPlan (Plan, Price)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);

CREATE TABLE Artist(
    ArtistID INT PRIMARY KEY auto_increment,
    `Name` VARCHAR(50)
) ENGINE = InnoDB;

INSERT INTO Artist (`Name`)
VALUES
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong'),
  ('Walter Phoenix');
  
CREATE TABLE `User`(
    UserID INT PRIMARY KEY auto_increment,
    `Name` VARCHAR(50),
    Age INT NOT NULL,
    PlanID INT NOT NULL,
    FOREIGN KEY (PlanID) REFERENCES AccessPlan(PlanID)
) ENGINE = InnoDB;

INSERT INTO `User` (`Name`, Age, PlanID)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);
  
CREATE TABLE Album(
    AlbumID INT PRIMARY KEY auto_increment,
    Title VARCHAR(50),
    ArtistID INT NOT NULL,
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
) ENGINE = InnoDB;

INSERT INTO Album (Title, ArtistID)
VALUES
  ('Envious', 4),
  ('Exuberant', 4),
  ('Hallowed Steam', 3),
  ('Incandescent', 2),
  ('Temporary Culture', 1);
  
  CREATE TABLE Single(
    SingleID INT PRIMARY KEY auto_increment,
    Title VARCHAR(50),
    AlbumID INT NOT NULL,
    ArtistID INT NOT NULL,
    FOREIGN KEY (AlbumID) REFERENCES Album(AlbumID),
    FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
) ENGINE = InnoDB;

INSERT INTO Single (Title, AlbumID, ArtistID)
VALUES
  ('Soul For Us', 1, 4),
  ('Reflections Of Magic', 1, 4),
  ('Dance With Her Own', 1, 4),
  ('Troubles Of My Inner Fire', 2, 4),
  ('Time Fireworks', 2, 4),
  ('Magic Circus', 3, 3),
  ('Honey, So Do I', 3, 3),
  ("Sweetie, Let's Go Wild", 3, 3),
  ("She Knows", 3, 3),
  ('Fantasy For Me', 4, 2),
  ('Celebration Of More', 4, 2),
  ('Rock His Everything', 4, 2),
  ('Home Forever', 4, 2),
  ('Diamond Power', 4, 2),
  ("Honey, Let's Be Silly", 4, 2),
  ('Thang Of Thunder', 5, 1),
  ('Words Of Her Life', 5, 1),
  ('Without My Streets', 5, 1);
  
CREATE TABLE Historic(
    UserID INT NOT NULL,
    SingleID INT NOT NULL,
    PRIMARY KEY (UserID, SingleID),
    FOREIGN KEY (UserID) REFERENCES `User`(UserID),
    FOREIGN KEY (SingleID) REFERENCES Single(SingleID)
) ENGINE = InnoDB;
  
INSERT INTO Historic (UserID, SingleID)
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
  
CREATE TABLE Favorited(
    UserID INT NOT NULL,
    ArtistID INT NOT NULL,
    PRIMARY KEY (UserID, ArtistID),
    FOREIGN KEY (UserID) REFERENCES `User`(UserID),
    FOREIGN KEY (ArtistID) REFERENCES Single(ArtistID)
) ENGINE = InnoDB;

INSERT INTO Favorited (UserID, ArtistID)
VALUES
  (1, 4),
  (1, 1),
  (1, 2),
  (2, 4),
  (2, 2),
  (3, 3),
  (3, 4),
  (4, 1);
  