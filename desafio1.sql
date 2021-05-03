DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano_type VARCHAR(50) NOT NULL,
    valor_plano DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

-- ALTER TABLE Artistas MODIFY artista_id INT PRIMARY KEY AUTO_INCREMENT DEFAULT '' not null;

CREATE TABLE Artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_name VARCHAR(50) NOT NULL,
    usuario_age INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
);

CREATE TABLE Albuns(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) engine = InnoDB;

CREATE TABLE Cancoes(
    id_cancao INT PRIMARY KEY AUTO_INCREMENT,
    titulo_cancao VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id),
    FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
) engine = InnoDB;

CREATE TABLE HistoricoDeReproducoes(
    usuario_id INT NOT NULL,
    id_cancao INT NOT NULL,
    PRIMARY KEY (usuario_id, id_cancao),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (id_cancao) REFERENCES Cancoes(id_cancao)
);

CREATE TABLE SeguindoArtistas(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
);
  
INSERT INTO Planos (plano_type, valor_plano)
VALUES
  ('gratuito', '0'),
  ('familiar', '7.99'),
  ('universitário', '5.99');
  
INSERT INTO Artistas (artista_nome)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO Usuarios (usuario_name, usuario_age, plano_id)
VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 2),
    ('Bill', 20, 3),
    ('Roger', 45, 1);

INSERT INTO Albuns (album_name, artista_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);
  
INSERT INTO Cancoes (titulo_cancao, artista_id, album_id)
VALUES
    ('Soul For Us', 1, 1),
    ('Reflections Of Magic', 1, 1),
    ('Dance With Her Own', 1, 1),
    ('Troubles Of My Inner Fire', 1, 2),
    ('Time Fireworks', 1, 2),
    ('Magic Circus', 2, 3),
    ('Honey, So Do I', 2, 3),
    ("Sweetie, Let's Go Wild", 2, 3),
    ('She Knows', 2, 3),
    ('Fantasy For Me', 3, 4),
    ('Celebration Of More', 3, 4),
    ('Rock His Everything', 3, 4),
    ('Home Forever', 3, 4),
    ('Diamond Power', 3, 4),
    ("Honey, Let's Be Silly", 3, 4),
    ('Thang Of Thunder', 4, 5),
    ('Words Of Her Life', 4, 5),
    ('Without My Streets', 4, 5);
    
INSERT INTO HistoricoDeReproducoes (usuario_id, id_cancao)
VALUES
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
    
INSERT INTO SeguindoArtistas (usuario_id, artista_id)
VALUES
    (1, 1),
    (1, 3),
    (1, 4),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
    