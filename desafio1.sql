DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE cancoes(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
)engine= InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE album_cancao(
album_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (album_id, cancao_id),
FOREIGN KEY (album_id) REFERENCES albuns(album_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) engine = InnoDB;

CREATE TABLE artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(50) NOT NULL
) engine = InnoDB;


CREATE TABLE album_artista (
artista_id INT NOT NULL,
album_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (artista_id, album_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
artista_id INT,
usuario_id INT,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (artista_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (usuario_id) REFERENCES artistas(artista_id)
)engine= InnoDB;

INSERT INTO planos(plano, valor_plano)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO cancoes(cancao)
VALUES("Soul For Us"), ("Reflections Of Magic"), ("Dance With Her Own"),
("Troubles Of My Inner Fire"), ("Time Fireworks"),
("Magic Circus"), ("Honey, So Do I"), ("Sweetie, Let's Go Wild"), ("She Knows"),
("Fantasy For Me"), ("Celebration Of More"), ("Rock His Everything"), ("Home Forever"),
("Diamond Power"), ("Honey, Let's Be Silly"), 
("Thang Of Thunder"), ("Words Of Her Life"), ("Without My Streets");

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45,1);

INSERT INTO historico_de_reproducoes(usuario_id, cancao_id)
VALUES 
(1, 1),
(1, 6),
(1, 14),
(1, 16),
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

INSERT INTO albuns(album)
VALUES
('Envious'),
('Exuberant'),
('Hallowed Steam'),
('Incandescent'),
('Temporary Culture');


INSERT INTO album_cancao(album_id, cancao_id)
VALUES(1, 1),
(1, 2),
(1, 3),
(2,4),
(2,5),
(3,6),
(3,7),
(3,8),
(3,9),
(4,10),
(4,11),
(4,12),
(4,13),
(4,14),
(4,15),
(5,16),
(5,17),
(5,18);

INSERT INTO artistas(artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album_artista(artista_id, album_id)
VALUES
(1,1),
(1,2),
(2,3),
(3,4),
(4,5);

INSERT INTO seguindo_artistas(usuario_id, artista_id)
VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);
