CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE tipos_de_Planos (
    planos_id INT PRIMARY KEY AUTO_INCREMENT,
    planos_nome VARCHAR(50),
    valores DECIMAL(5 , 2 ) NOT NULL
)  ENGINE=INNODB;

INSERT INTO tipos_de_Planos(planos_nome, valores)
VALUES("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

CREATE TABLE usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade TINYINT(3),
    planos_id INT,
    FOREIGN KEY (planos_id)
        REFERENCES tipos_de_Planos (planos_id)
)  ENGINE=INNODB;

INSERT INTO usuario(nome, idade, planos_id)
VALUES("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger",45, 1);

CREATE TABLE todos_os_artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_artista VARCHAR(50)
)  ENGINE=INNODB;

INSERT INTO todos_os_artistas(nome_do_artista)
VALUES("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

CREATE TABLE cancoes(
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
nome_das_cancoes VARCHAR (100)
) ENGINE=InnoDB;

INSERT INTO cancoes(nome_das_cancoes)
VALUES("Soul For Us"),
("Reflection Of Magic"),
("Dance With Her Own"),
("Troubles off My inner Fire"),
("Time Fireworks"),
("Magic Circus"),
("Honey,So Do I"),
("Sweetie,Let's Go Wild"),
("Shes Knows"),
("Fantasy For Me"),
("Fantasy For Me"),
("Celebration Of More"),
("Rock His Everything"),
("Home Forever"),
("Diamond Power"),
("Honey,Let's Be Silly"),
("Thang Of Thunder"),
("Words Of Her Life"),
("Wifhout My Streets");


CREATE TABLE albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_album VARCHAR(50),
    artista_id INT,
    cancoes_id INT,
    FOREIGN KEY (artista_id)
        REFERENCES todos_os_artistas (artista_id),
    FOREIGN KEY (cancoes_id)
        REFERENCES cancoes (cancoes_id)
)  ENGINE=INNODB;

INSERT INTO albuns(nome_do_album)
VALUES("Envious"),
("Exuberant"),
("Hallowed Steam"),
("Incandescent"),
("Temporary Culture");

CREATE TABLE artistas_seguindo (
    seguir_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    artista_id INT,
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES todos_os_artistas (artista_id)
)  ENGINE=INNODB;

CREATE TABLE historico_reproducoes (
    historico_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    album_id INT,
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (album_id)
        REFERENCES albuns (album_id)
)  ENGINE=INNODB;
