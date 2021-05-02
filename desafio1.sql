-- DESAFIO 1

-- criando banco de dados
CREATE DATABASE IF NOT EXISTS SpotifyClone;

-- criando tabelas do banco de dados
CREATE TABLE plano (
plano_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plano_nome VARCHAR(50) NOT NULL,
plano_valor DOUBLE NOT NULL
);

CREATE TABLE usuario (
usuario_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
usuario_nome VARCHAR(50) NOT NULL,
usuario_idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
);

CREATE TABLE artista (
artista_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
artista_nome VARCHAR(50) NOT NULL,
artista_sobrenome VARCHAR(50) NOT NULL
);

CREATE TABLE album (
album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
album_nome VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE musica (
musica_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
musica_nome VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
);

-- tabela composta
CREATE TABLE historico (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musica(musica_id)
);

-- tabela composta
CREATE TABLE acompanha (
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

-- inserindo dados nas tabelas criadas
INSERT 
INTO SpotifyClone.plano (plano_nome, plano_valor) 
VALUES
('familiar', 7.99),
('gratuito', 0),
('universitário', 5.99);

INSERT
INTO SpotifyClone.usuario (usuario_nome, usuario_idade, plano_id)
VALUES
('Thati', 23, 2),
('Cintia', 35, 1),
('Bill', 20, 3),
('Roger', 45, 2);

INSERT
INTO SpotifyClone.artista (artista_nome, artista_sobrenome)
VALUES
('Walter', 'Phoenix'),
('Peter', 'Strong'),
('Lance', 'Day'),
('Freedie', 'Shannon');

INSERT
INTO SpotifyClone.album (album_nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT
INTO SpotifyClone.musica (musica_nome, album_id)
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

INSERT
INTO SpotifyClone.historico (usuario_id, musica_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 2),
(2, 13),
(2, 15),
(2, 17),
(3, 4),
(3, 6),
(3, 16),
(4, 3),
(4, 11),
(4, 18);
 
INSERT
INTO SpotifyClone.acompanha (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
