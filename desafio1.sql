DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;


DROP TABLE IF EXISTS _planos;
CREATE TABLE _planos (
    plano_id INT NOT NULL,
    valor_plano VARCHAR(80),
    plano VARCHAR(80),
    PRIMARY KEY (plano_id)
)  ENGINE=INNODB;

DROP TABLE IF EXISTS _usuarios;
CREATE TABLE _usuarios(
    usuario_id INT NOT NULL,
    plano_id INT NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    idade INT,
    PRIMARY KEY(usuario_id)
  ) ENGINE = INNODB;

DROP TABLE IF EXISTS _artistas;
CREATE TABLE _artistas(
  artista_id INT NOT NULL,
  artista VARCHAR(80),
  PRIMARY KEY(artista_id)
  ) ENGINE = INNODB;

DROP TABLE IF EXISTS _albums;
CREATE TABLE _albums(
    album_id INT NOT NULL,
    album VARCHAR(80),
    artista_id INT NOT NULL,
    PRIMARY KEY(album_id)
  ) ENGINE = INNODB;

DROP TABLE IF EXISTS _musicas;
CREATE TABLE _musicas(
  cancoes_id INT NOT NULL,
  cancoes VARCHAR(80) NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY(cancoes_id)
  ) ENGINE = INNODB;

DROP TABLE IF EXISTS _historico;
CREATE TABLE _historico(
    historico_id INT NOT NULL,
    usuario_id INT NOT NULL,
    historico_de_reproducoes VARCHAR(200) NOT NULL,
    PRIMARY KEY(historico_id)
  ) ENGINE = INNODB;


DROP TABLE IF EXISTS _seguindo;
CREATE TABLE _seguindo(
  seguindo_id INT NOT NULL,
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY(seguindo_id)
  ) ENGINE = INNODB;


INSERT INTO _usuarios (usuario_id,plano_id,usuario,idade)
VALUES
  (1,1,'Thati',23),
  (2,2,'Cintia',35),
  (3,3,'Bill',20),
  (4,1,'Roger',45);

INSERT INTO _planos (plano_id,valor_plano,plano)
VALUES
  (1,'0','gratuito'),
  (2,'7,99','familiar'),
  (3,'5,99','universitário');
  
  
INSERT INTO _albums (album_id,album,artista_id)
VALUES
  (1,'Envious',1),
  (2,'Exuberant',1),
  (3,'Hallowed Steam',3),
  (4,'Incandescent',4),
  (5,'Temporary Culture',5);

INSERT INTO _musicas (cancoes_id,cancoes,artista_id)
VALUES
  (1,'Soul For Us',1),
  (2,'Troubles Of My Inner Fire',2),
  (3,'Magic Circus',3),
  (4,'Fantasy For Me',4),
  (5,'Thang Of Thunder',5),
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
  (17,'Words Of Her Life',5),
  (18,'Without My Streets',5);

INSERT INTO _historico (historico_id,usuario_id,historico_de_reproducoes)
VALUES
  (1,1,'Soul For Us'),
  (2,2,'Home Forever'),
  (3,3,'Troubles Of My Inner Fire'),
  (4,4,'Dance With Her Own'),
  (5,1,'Magic Circus'),
  (6,1,'Diamond Power'),
  (7,1,'Thang Of Thunder'),
  (8,2,'Words Of Her Life'),
  (9,2,'Reflections Of Magic'),
  (10,2,"Honey, Let's Be Silly"),
  (11,3,'Thang Of Thunder'),
  (12,3,'Magic Circus'),
  (13,4,'Without My Streets'),
  (14,4,'Celebration Of More');

INSERT INTO  _artistas (artista_id,artista)
VALUES
  (1,'Walter Phoenix'),
  (2,'Peter Strong'),
  (3,'Lance Day'),
  (4,'Freedie Shannon');
  
INSERT INTO _seguindo (seguindo_id,usuario_id,artista_id)
VALUES
  (1,1,1),
  (2,2,1),
  (3,3,2),
  (4,1,4),
  (5,1,3),
  (6,2,3),
  (7,3,1);

ALTER TABLE `_artistas` ADD CONSTRAINT `fk_album` FOREIGN KEY(album_id) REFERENCES _albums(album_id) ;

ALTER TABLE `_usuarios` ADD CONSTRAINT `fk_plano` FOREIGN KEY(plano_id) REFERENCES _planos(plano_id) ;

ALTER TABLE `_musicas` ADD CONSTRAINT `fk_usuario` FOREIGN KEY(usuario_id) REFERENCES _usuarios(usuario_id) ;

ALTER TABLE `_seguindo` ADD CONSTRAINT `fk_usuario_seg` FOREIGN KEY(usuario_id) REFERENCES _usuarios(usuario_id) ;
ALTER TABLE `_seguindo` ADD CONSTRAINT `fk_artista_seg` FOREIGN KEY(artista_id) REFERENCES _artistas(artista_id) ;
ALTER TABLE `_albums` ADD CONSTRAINT `fk_artista` FOREIGN KEY(artista_id) REFERENCES _artistas(artista_id) ;
ALTER TABLE `_musicas` ADD CONSTRAINT `fk_artista_mus` FOREIGN KEY(artista_id) REFERENCES _artistas(artista_id) ;
