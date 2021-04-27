DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(20) NOT NULL,
valor_plano DECIMAL(10,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(30) NOT NULL,
idade TINYINT NOT NULL,
plano_id INT,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id) 
) engine = innoDB;

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(40) NOT NULL
) engine = innoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(40) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = innoDB;

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(40) NOT NULL,
album_id INT,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = innoDB;

CREATE TABLE historico_de_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id)
) engine = innoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = innoDB;

INSERT INTO plano (plano_id, plano, valor_plano) VALUES (1, "gratuito", 0), (2, "familiar", 7.99), (3, "universitário", 5.99);

INSERT INTO usuario (usuario_id, usuario, idade, plano_id) VALUES
(1, "Thati", 23, 1), (2, "Cintia", 35, 2), (3, "Bill", 20, 3), (4, "Roger", 45, 1);

INSERT INTO artista (artista_id, artista) VALUES (1, "Walter Phoenix"), (2, "Peter Strong"), (3, "Lance Day"), (4, "Freedie Shannon");

INSERT INTO album (album_id, album, artista_id) VALUES
(1, "Envious", 1), (2, "Exuberant", 1), (3, "Hallowed Steam", 2), (4, "Incandescent", 3), (5, "Temporary Culture", 4);

INSERT INTO cancao (cancao, album_id) VALUES
("Soul For Us", 1), ("Reflections Of Magic", 1), ("Dance With Her Own", 1), ("Troubles Of My Inner Fire", 2), ("Time Fireworks", 2),
("Magic Circus", 3), ("Honey, So Do I", 3), ("Sweetie, Let's Go Wild", 3), ("She Knows", 3), ("Fantasy For Me", 4), ("Celebration Of More", 4),
("Rock His Everything", 4), ("Home Forever", 4), ("Diamond Power", 4), ("Honey, Let's Be Silly", 4), ("Thang Of Thunder", 5),
("Words Of Her Life", 5), ("Words Of Her Life", 5);

INSERT INTO historico_de_reproducoes (usuario_id, cancao_id) VALUES (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);

INSERT INTO seguindo_artistas (usuario_id, artista_id) VALUES (1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);
