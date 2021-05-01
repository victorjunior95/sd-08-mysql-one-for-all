DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planoTB (
    planoID INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(50),
    valor_plano DOUBLE
)  ENGINE=INNODB;

INSERT INTO planoTB (nome_plano, valor_plano)
VALUES
	('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99);
    
CREATE TABLE usuarioTB (
    usuarioID INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(50),
    idade INT,
    planoID INT,
    FOREIGN KEY (planoID)
        REFERENCES planoTB (planoID)
)  ENGINE=INNODB;

INSERT INTO usuarioTB (nome_usuario, idade, planoID)
VALUES
	('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);
	
CREATE TABLE artistaTB (
    artistaID INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(50)
)  ENGINE=INNODB;
    
INSERT INTO artistaTB (nome_artista)
VALUES
	('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

CREATE TABLE albunsTB (
    albumsID INT PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(50),
    artistaID INT,
    FOREIGN KEY (artistaID)
        REFERENCES artistaTB (artistaID)
)  ENGINE=INNODB;

INSERT INTO albunsTB (nome_album, artistaID)
VALUES
	('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

CREATE TABLE cancoesTB (
    cancaoID INT PRIMARY KEY AUTO_INCREMENT,
    nome_cancao VARCHAR(50),
    albumsID INT,
    FOREIGN KEY (albumsID)
        REFERENCES albunsTB (albumsID)
)  ENGINE=INNODB;

INSERT INTO cancoesTB (nome_cancao, albumsID)
VALUES
	("Soul For Us", 1),
	("Reflections Of Magic", 1),
	("Dance With Her Own", 1),
	("Troubles Of My Inner Fire", 2),
	("Time Fireworks", 2),
	("Magic Circus", 3),
	("Honey, So Do I", 3),
	("Sweetie, Let's Go Wild", 3),
	("She Knows", 3),
	("Fantasy For Me", 4),
	("Celebration Of More", 4),
	("Rock His Everything", 4),
	("Home Forever", 4),
	("Diamond Power", 4),
	("Honey, Let's Be Silly", 4),
	("Thang Of Thunder", 5),
	("Words Of Her Life", 5),
	("Without My Streets", 5);

CREATE TABLE seguidoresTB (
    seguidID INT AUTO_INCREMENT,
    usuarioID INT,
    artistaID INT,
    CONSTRAINT PRIMARY KEY (seguidID, usuarioID, artistaID),
    FOREIGN KEY (usuarioID)
        REFERENCES usuarioTB (usuarioID),
    FOREIGN KEY (artistaID)
        REFERENCES artistaTB (artistaID)
)  ENGINE=INNODB;	

INSERT INTO seguidoresTB (usuarioID, artistaID)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE historicoTB (
    historID INT AUTO_INCREMENT,
    usuarioID INT,
    cancaoID INT,
    CONSTRAINT PRIMARY KEY (historID, usuarioID, cancaoID),
    FOREIGN KEY (usuarioID)
        REFERENCES usuarioTB (usuarioID),
    FOREIGN KEY (cancaoID)
        REFERENCES cancoesTB (cancaoID)
)  ENGINE=INNODB;

INSERT INTO historicoTB (usuarioID, cancaoID)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 7),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
-- tive auxilio dos alunos ana karine e do arnaelcio Gomes 
-- https://github.com/tryber/sd-08-mysql-one-for-all/tree/ana-karine-mysql-one-for-all
-- https://github.com/tryber/sd-08-mysql-one-for-all/pull/8
