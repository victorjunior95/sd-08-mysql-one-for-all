CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

INSERT INTO albuns(album_id, album)
VALUES(1,'Envious'),(2,'Exuberant'), (3, 'Hallowed Steam'),
(4, 'Incandescent'), (5, 'Temporary Culture');

CREATE TABLE musicas (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(200) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

INSERT INT

CREATE TABLE albuns_musicas_artistas(
musica_id INT NOT NULL,
artista_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY(musica_id) REFERENCES musicas(musica_id),
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id),
FOREIGN KEY(album_id) REFERENCES albuns(album_id)
) ENGINE=InnoDB;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor DECIMAL(4,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(200) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES planos(plano_id) 
) ENGINE=InnoDB;

CREATE TABLE usuarios_artistas (
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id),
FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id)
) ENGINE=InnoDB;

CREATE TABLE usuarios_musicas (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY(musica_id) REFERENCES musicas(musica_id)
) ENGINE=InnoDB;
