DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE tb_plano (
  id_plano INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  valor DECIMAL (6,2)
);

CREATE TABLE tb_artista (
  id_artista INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR (60)
);

CREATE TABLE tb_usuario (
  id_usuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  idade INT NOT NULL,
  id_plano INT NOT NULL,
  FOREIGN KEY (id_plano) REFERENCES tb_plano(id_plano)
);

CREATE TABLE tb_album (
  id_album INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR (60),
  id_artista INT NOT NULL,
  FOREIGN KEY (id_artista) REFERENCES tb_artista(id_artista)
);

CREATE TABLE tb_cancao (
  id_cancao INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR (60),
  id_album INT NOT NULL,
  FOREIGN KEY (id_album) REFERENCES tb_album(id_album)
);


CREATE TABLE tb_historico_reproducoes (
  id_historico_reproducoes INT NOT NULL,
  id_usuario INT NOT NULL,
  id_cancao INT NOT NULL,
  CONSTRAINT pk_hist_repro PRIMARY KEY (id_usuario, id_cancao),
  FOREIGN KEY (id_cancao) REFERENCES tb_cancao(id_cancao),
  FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario)
);

CREATE TABLE seguindo_artistas (
  id_seguindo_artistas INT NOT NULL,
  id_usuario INT NOT NULL,
  id_artista INT NOT NULL,
  CONSTRAINT pk_segue_arts PRIMARY KEY (id_usuario, id_artista),
  FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario),
  FOREIGN KEY (id_artista) REFERENCES tb_artista(id_artista)
);

START TRANSACTION;
INSERT INTO tb_plano (nome, valor) VALUES ('gratuito', 0.0), ('familiar', 7.99), ('universitário', 5.99);
INSERT INTO tb_usuario (nome, idade, id_plano) VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);
INSERT INTO tb_artista (nome) VALUES ('Walter Phoenix'),('Peter Strong'), ('Lance Day'),('Freedie Shannon');
INSERT INTO tb_album (nome, id_artista) VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);
INSERT INTO tb_cancao (nome, id_album) VALUES ('Soul For Us', 1),('Reflections Of Magic', 1), ('Dance With Her Own',1),
  ('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2), ('Magic Circus', 3), ('Honey, So Do I',3), ('Sweetie, Let\'s Go Wild',3),
  ('She Knows',3), ('Fantasy For Me',4), ('Celebration Of More', 4), ('Rock His Everything',4), ('Home Forever', 4),
  ('Diamond Power',4 ), ('Honey, Let\'s Be Silly', 4), ('Thang Of Thunder', 5), ('Words Of Her Life', 5), ('Without My Streets',5);
                                             
INSERT INTO tb_historico_reproducoes(id_historico_reproducoes, id_usuario, id_cancao) VALUES (1,1,1),(1,1,6),(1,1,14),(1,1,16);
INSERT INTO tb_historico_reproducoes(id_historico_reproducoes, id_usuario, id_cancao) VALUES (2,2,13),(2,2,17),(2,2,2),(2,2,15);
INSERT INTO tb_historico_reproducoes(id_historico_reproducoes, id_usuario, id_cancao) VALUES (3,3,4),(3,3,16),(3,3,6);
INSERT INTO tb_historico_reproducoes(id_historico_reproducoes, id_usuario, id_cancao) VALUES (4,4,3),(4,4,18),(4,4,11);

INSERT INTO seguindo_artistas (id_seguindo_artistas, id_usuario, id_artista) VALUES (1,1,1),(1,1,4),(1,1,3);
INSERT INTO seguindo_artistas (id_seguindo_artistas, id_usuario, id_artista) VALUES (2,2,1),(2, 2,3);
INSERT INTO seguindo_artistas (id_seguindo_artistas, id_usuario, id_artista) VALUES (2,3,2),(3,3,1);
INSERT INTO seguindo_artistas (id_seguindo_artistas, id_usuario, id_artista) VALUES (2,4,4);
COMMIT;
