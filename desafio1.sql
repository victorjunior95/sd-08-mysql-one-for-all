CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE Planos (
  idPlano INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  Valor DOUBLE NOT NULL,
  PRIMARY KEY(idPlano)
);

CREATE TABLE Users (
  idUser INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  Idade INT NOT NULL,
  idPlano INT NOT NULL,
  PRIMARY KEY(IdUser),
  FOREIGN KEY(IdPlano) REFERENCES Planos(idPlano)
);

CREATE TABLE Artistas (
  idArtista INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  PRIMARY KEY(idArtista)
);

CREATE TABLE Seguindo (
  idArtista INT NOT NULL,
  idUser INT NOT NULL,
  PRIMARY KEY(idArtista, idUser),
  FOREIGN KEY(idArtista) REFERENCES Artistas(idArtista),
  FOREIGN KEY(idUser) REFERENCES Users(idUser)
);

CREATE TABLE Albuns (
  idAlbum INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  idArtista INT NOT NULL,
  PRIMARY KEY(idAlbum),
  FOREIGN KEY(idArtista) REFERENCES Artistas(idArtista)
);

CREATE TABLE Musicas (
  idMusica INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  idAlbum INT NOT NULL,
  PRIMARY KEY(idMusica),
  FOREIGN KEY(idAlbum) REFERENCES Albuns(idAlbum)
);

CREATE TABLE HistoricoDeMusicas (
  idUser INT NOT NULL,
  idMusica INT NOT NULL,
  PRIMARY KEY(idUser, idMusica),
  FOREIGN KEY(idUser) REFERENCES Users(idUser),
  FOREIGN KEY(idMusica) REFERENCES Musicas(idMusica)  
);

INSERT INTO Planos(Nome, Valor)
  VALUES
    ("gratuito", 0),
    ("familiar", 5.99),
    ("universitário", 7.99);

INSERT INTO Users(Nome, idade, idPlano)
  VALUES
    ("Thati", 23, 1),
    ("Cintia", 35, 2),
    ("Bill", 20, 3),
    ("Roger", 45, 1);

INSERT INTO Artistas(Nome)
  VALUES
    ("Walter Phoenix"),
    ("Peter Strong"),
    ("Lance Day"),
    ("Freedie Shannon");
    
INSERT INTO Seguindo(idUser, idArtista)
  VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);

INSERT INTO Albuns(Nome, idArtista)
  VALUES
    ("Envious", 1),
    ("Exuberant", 1),
    ("Hallowed Steam", 2),
    ("Incandescent", 3),
    ("Temporary Culture", 4);

INSERT INTO Musicas(Nome, idAlbum)
  VALUES
    ("Soul For Us", 1),
    ("Reflections Of Magic", 1),
    ("Dance With Her Own", 1),
    ("Troubles Of My Inner Fire", 2),
    ("Time Fireworks", 2),
    ("Magic Circus", 3),
    ("Honey, So Do I", 3),
    ("Sweetie, Let's Go Wild", 3),
    ("She Knows", 3),
    ("Fantasy For Me", 4),
    ("Celebration Of More", 4),
    ("Rock His Everything", 4),
    ("Home Forever", 4),
    ("Diamond Power", 4),
    ("Honey, Let's Be Silly", 4),
	("Thang Of Thunder", 5),
    ("Words Of Her Life", 5),
    ("Without My Streets", 5);

INSERT INTO HistoricoDeMusicas(IdUser, idMusica)
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

    