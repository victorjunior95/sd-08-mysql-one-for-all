DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

DROP TABLE IF EXISTS _artistas;
CREATE TABLE _artistas(
  artista_id INT PRIMARY KEY NOT NULL,
  artista VARCHAR(80)
  ) ENGINE = INNODB;

DROP TABLE IF EXISTS _albums;
CREATE TABLE _albums(
    album_id INT PRIMARY KEY NOT NULL,
    album VARCHAR(80),
    artista_id INT NOT NULL,
    FOREIGN KEY(artista_id) REFERENCES _artistas(artista_id)
  ) ENGINE = INNODB;
  
DROP TABLE IF EXISTS _planos;
CREATE TABLE _planos (
    plano_id INT PRIMARY KEY NOT NULL,
    valor_plano VARCHAR(80),
    plano VARCHAR(80)
)  ENGINE=INNODB;

DROP TABLE IF EXISTS _usuarios;
CREATE TABLE _usuarios(
    usuario_id INT PRIMARY KEY NOT NULL,
    plano_id INT NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    idade INT,
    FOREIGN KEY(plano_id) REFERENCES _planos(plano_id)
  ) ENGINE = INNODB;


DROP TABLE IF EXISTS _musicas;
CREATE TABLE _musicas(
  cancoes_id INT PRIMARY KEY NOT NULL,
  cancoes VARCHAR(80) NOT NULL,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES _albums(album_id)
  ) ENGINE = INNODB;

DROP TABLE IF EXISTS _historico;
CREATE TABLE _historico(
    usuario_id INT NOT NULL,
    cancoes_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (cancoes_id,usuario_id),
    FOREIGN KEY(cancoes_id) REFERENCES _musicas(cancoes_id),
    FOREIGN KEY(usuario_id) REFERENCES _usuarios(usuario_id)
  ) ENGINE = INNODB;


DROP TABLE IF EXISTS _seguindo;
CREATE TABLE _seguindo(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id,artista_id),
  FOREIGN KEY(usuario_id) REFERENCES _usuarios(usuario_id),
  FOREIGN KEY(artista_id) REFERENCES _artistas(artista_id)
  ) ENGINE = INNODB;

INSERT INTO  _artistas (artista_id,artista)
VALUES
  (1,'Walter Phoenix'),
  (2,'Peter Strong'),
  (3,'Lance Day'),
  (4,'Freedie Shannon');
  
INSERT INTO _planos (plano_id,valor_plano,plano)
VALUES
  (1,'0','gratuito'),
  (2,'7,99','familiar'),
  (3,'5,99','universitário');
  
INSERT INTO _usuarios (usuario_id,plano_id,usuario,idade)
VALUES
  (1,1,'Thati',23),
  (2,2,'Cintia',35),
  (3,3,'Bill',20),
  (4,1,'Roger',45);
  
  
INSERT INTO _musicas (cancoes_id,cancoes,album_id)
VALUES
  (1,'Soul For Us',1),
  (2,'Troubles Of My Inner Fire',2),
  (3,'Magic Circus',3),
  (4,'Fantasy For Me',4),
  (5,'Thang Of Thunder',4),
  (6,'Reflections Of Magic',1),
  (7,'Dance With Her Own',1),
  (8,'Time Fireworks',2),
  (9,'Honey, So Do I',3),
  (10,"Sweetie, Let's Go Wild",3),
  (11,'She Knows',3),
  (12,'Celebration Of More',4),
  (13,'Rock His Everything',4),
  (14,'Home Forever',4),
  (15,'Diamond Power',4),
  (16,"Honey, Let's Be Silly",4),
  (17,'Words Of Her Life',4),
  (18,'Without My Streets',4);

  
INSERT INTO _albums (album_id,album,artista_id)
VALUES
  (1,'Envious',1),
  (2,'Exuberant',1),
  (3,'Hallowed Steam',2),
  (4,'Incandescent',3),
  (5,'Temporary Culture',4);


INSERT INTO _historico (usuario_id,cancoes_id)
VALUES
  (1,1),
  (2,14),
  (3,2),
  (4,7),
  (1,3),
  (1,15),
  (1,5),
  (2,17),
  (2,6),
  (2,16),
  (3,5),
  (3,3),
  (4,18),
  (4,12);

  
INSERT INTO _seguindo (seguindo_id,usuario_id,artista_id)
VALUES
  (1,1,1),
  (2,2,1),
  (3,3,2),
  (4,1,4),
  (5,1,3),
  (6,2,3),
  (7,3,1);
