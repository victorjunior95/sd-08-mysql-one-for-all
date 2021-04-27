CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
plano_id INT primary key AUTO_INCREMENT,
nome_plano VARCHAR(25),
valor REAL
) engine=InnoDB;

CREATE TABLE usuario(
usuario_id INT primary key AUTO_INCREMENT,
nome_usuario VARCHAR(20),
idade INT,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
) engine=InnoDB;

CREATE TABLE artistas(
artistas_id INT primary key AUTO_INCREMENT,
nome VARCHAR(20),
sobrenome VARCHAR(20)
) engine=InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artistas_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artistas_id) REFERENCES artistas(artistas_id),
PRIMARY KEY (usuario_id, artistas_id)
) engine=InnoDB;

CREATE TABLE album(
album_id INT primary key AUTO_INCREMENT,
nome_album VARCHAR(30),
artistas_id INT NOT NULL,
FOREIGN KEY (artistas_id) REFERENCES artistas(artistas_id)
) engine=InnoDB;

CREATE TABLE cancoes(
cancoes_id INT primary key AUTO_INCREMENT,
nome_cancoes VARCHAR(30),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine=InnoDB;

CREATE TABLE reproducoes(
usuario_id INT NOT NULL,
cancoes_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id),
PRIMARY KEY (usuario_id, cancoes_id)
) engine=InnoDB;

INSERT INTO plano(nome_plano, valor) VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuario(nome_usuario, idade, plano_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artistas(nome, sobrenome) VALUES
('Walter', 'Phoenix'),
('Peter', 'Strong'),
('Lance', 'Day'),
('Freedie', 'Shannon');

INSERT INTO seguindo_artistas(usuario_id, artistas_id) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO album(nome_album, artistas_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes(nome_cancoes, album_id) VALUES
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

INSERT INTO reproducoes(usuario_id, cancoes_id) VALUES
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
