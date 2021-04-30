DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE table_plans(
  id_plans INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  plans VARCHAR(50) NOT NULL,
  `value` DECIMAL(3,2) NOT NULL
) ENGINE = InnoDB;

INSERT INTO table_plans(plans, `value`)
VALUES 
	('gratuito', 0),
	('familiar', 7.99),
	('universitário', 5.99);

CREATE TABLE table_users(
  id_users INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  users VARCHAR(50) NOT NULL,
  year_old INT NOT NULL,
  id_plans INT NOT NULL,
  FOREIGN KEY(id_plans)
	REFERENCES table_plans(id_plans)
) ENGINE = InnoDB;

INSERT INTO table_users(users, year_old, id_plans)
VALUES 
	('Thati', 23, 1),
	('Cintia', 35, 2),
	('Bill', 20, 3),
	('Roger', 45, 1);

CREATE TABLE table_stars(
  id_stars INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  stars VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO table_stars(stars)
VALUES 
	('Walter Phoenix'),
	('Peter Strong'),
	('Lance Day'),
	('Freedie Shannon');

CREATE TABLE table_follow_stars(
  id_follow_stars INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_users INT NOT NULL,
  id_stars INT NOT NULL,
  FOREIGN KEY(id_users)
	REFERENCES table_users(id_users),
  FOREIGN KEY(id_stars)
	REFERENCES table_stars(id_stars)
) ENGINE = InnoDB;

INSERT INTO table_follow_stars(id_users, id_stars)
VALUES 
	(1, 1),
	(1, 3),
	(1, 4),
	(2, 1),
	(2, 3),
	(3, 2),
	(3, 1),
	(4, 1);

CREATE TABLE table_albuns(
  id_albuns INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  albuns VARCHAR(50) NOT NULL,
  id_stars INT NOT NULL,
  FOREIGN KEY(id_stars)
	REFERENCES table_stars(id_stars)
) ENGINE = InnoDB;

INSERT INTO table_albuns(albuns, id_stars)
VALUES 
	('Envious', 1),
	('Exuberant', 1),
	('Hallowed Steam', 2),
	('Incandescent', 3),
	('Temporary Culture', 4);

CREATE TABLE table_sings(
  id_sings INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  sings VARCHAR(50) NOT NULL,
  id_albuns INT NOT NULL,
  FOREIGN KEY(id_albuns)
	REFERENCES table_albuns(id_albuns)
) ENGINE = InnoDB;

INSERT INTO table_sings(sings, id_albuns)
VALUES 
	('Soul For Us', 1),
	('Reflections Of Magic', 1),
	('Dance With Her Own', 1),
	('Troubles Of My Inner Fire', 1),
	('Time Fireworks', 1),
	('Magic Circus', 2),
	('Honey, So Do I', 2),
	("Sweetie, Let's Go Wild", 2),
	('She Knows', 2),
	('Fantasy For Me', 3),
	('Celebration Of More', 3),
	('Rock His Everything', 3),
	('Home Forever', 3),
	('Diamond Power', 3),
	("Honey, Let's Be Silly", 3),
	('Thang Of Thunder', 4),
	('Words Of Her Life', 4),
	('Without My Streets', 4);

CREATE TABLE table_history(
  id_history INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  id_users INT NOT NULL,
  id_sings INT NOT NULL,
  FOREIGN KEY(id_users)
	REFERENCES table_users(id_users),
    FOREIGN KEY(id_sings)
	REFERENCES table_sings(id_sings)
) ENGINE = InnoDB;

INSERT INTO table_history(id_users, id_sings)
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
