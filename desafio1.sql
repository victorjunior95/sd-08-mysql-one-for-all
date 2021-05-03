DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
valor_plano DOUBLE NOT NULL,
PRIMARY KEY (plano_id)
)ENGINE=InnoDB;

INSERT INTO planos(nome, valor_plano)
VALUES 
('gratuito', 0),
('familiar', 7.99),
('universitário',5.99);

CREATE TABLE usuarios(
usuario_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
data_nascimento DATE NOT NULL,
plano_id INT NOT NULL,
PRIMARY KEY (usuario_id),
FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
)ENGINE=InnoDB;

INSERT INTO usuarios(nome, data_nascimento, plano_id)
VALUES
('Thati', '1997-09-13', 1),
('Cintia', '1980-06-28', 2),
('Bill', '2000-04-01', 3),
('Roger', '1976-11-15', 1);

CREATE TABLE artistas(
artista_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
PRIMARY KEY (artista_id)
)ENGINE=InnoDB;

INSERT INTO artistas(nome)
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE albuns(
album_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (album_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
)ENGINE=InnoDB;

INSERT INTO albuns(nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE musicas(
musica_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY (musica_id),
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
)ENGINE=InnoDB;

INSERT INTO musicas(nome, album_id) 
VALUES
('Soul For Us', 1),
('Reflections Of Magic',1),
('Dance With Her Own',1),
('Troubles Of My Inner Fire',2),
('Time Fireworks',2),
('Magic Circus',3),
('Honey, So Do I',3),
("Sweetie, Let's Go Wild",3),
('She Knows',3),
('Fantasy For Me',4),
('Celebration Of More',4),
('Rock His Everything',4),
('Home Forever',4),
('Diamond Power',4),
("Honey, Let's Be Silly",4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

CREATE TABLE historico_reproducoes(
usuario_id INT,
musica_id INT,
PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
)ENGINE=InnoDB;

INSERT INTO historico_reproducoes(usuario_id, musica_id)
VALUES
(1,1),
(1,6),
(1,14),
(1,16),
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

CREATE TABLE usuario_seguindo_artista(
usuario_id INT,
artista_id INT,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
)ENGINE=InnoDB;

INSERT INTO usuario_seguindo_artista(usuario_id, artista_id) 
VALUES 
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);
