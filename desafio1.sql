CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(20),
    valor_plano DECIMAL(6, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    idade INT,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
    artista_id INT AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(50)
) engine = InnoDB;

CREATE TABLE albuns(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(50),
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
    cancao_id INT AUTO_INCREMENT PRIMARY KEY,
    cancao VARCHAR(50),
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id),
    PRIMARY KEY (usuario_id, cancao_id)
) engine = InnoDB;

CREATE TABLE usuarios_seguindo_artistas(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    PRIMARY KEY (usuario_id, artista_id)
) engine = InnoDB;

INSERT INTO planos (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);
  
INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
  
INSERT INTO artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong');
  
INSERT INTO usuarios_seguindo_artistas
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 4),
  (3, 1),
  (4, 2);
  
INSERT INTO albuns (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 4),
  ('Incandescent', 3),
  ('Temporary Culture', 2);
  
INSERT INTO cancoes (cancao, album_id)
VALUES
  ('Soul For Us', 1),
  ('Magic Circus', 3),
  ('Diamond Power', 4),
  ('Thang Of Thunder', 5),
  ('Home Forever', 4),
  ('Words Of Her Life', 5),
  ('Reflections Of Magic', 1),
  ('Honey, Let''s Be Silly', 4),
  ('Troubles Of My Inner Fire', 2),
  ('Dance With Her Own', 1),
  ('Without My Streets', 5),
  ('Celebration Of More', 4),
  ('Time Fireworks', 2),
  ('Honey, So Do I', 3),
  ('Sweetie, Let''s Go Wild', 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Rock His Everything', 4);
  
  INSERT INTO historico_de_reproducoes
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (3, 9),
  (3, 4),
  (3, 2),
  (4, 10),
  (4, 11),
  (4, 12);
