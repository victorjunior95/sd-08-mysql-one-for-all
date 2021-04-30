CREATE TABLE Users(
    user_id INT PRIMARY KEY,
    user_name VARCHAR(35),
    user_age INT NOT NULL
) engine = InnoDB;

CREATE TABLE Planos(
    plano_id INT PRIMARY KEY,
    plano_name VARCHAR(35),
    plano_valor FLOAT
) engine = InnoDB;

ALTER TABLE Users ADD plano_id INT;
ALTER TABLE Users ADD FOREIGN KEY (plano_id) REFERENCES Planos(plano_id);

CREATE TABLE Artistas(
    artista_id INT PRIMARY KEY,
    artista_name VARCHAR(35)
) engine = InnoDB;

CREATE TABLE Artistas(
    artista_id INT PRIMARY KEY,
    artista_name VARCHAR(35)
) engine = InnoDB;

CREATE TABLE Albuns(
    album_id INT PRIMARY KEY,
    album_name VARCHAR(50),
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) engine = InnoDB;

CREATE TABLE Songs(
    song_id INT PRIMARY KEY,
    song_name VARCHAR(50),
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
	user_id INT,
    song_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
) engine = InnoDB;

CREATE TABLE users_follow_artistas(
	user_id INT,
    artista_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) engine = InnoDB;

INSERT INTO Planos VALUES (1,"gratuito",0),
(2,"familiar",7.99),
(3,"universitário",5.99);

INSERT INTO Users VALUES (1,"Thati",23,1),
(2,"Cintia" ,35,2),
(3,"Bill",20,3),
(4,"Roger",45,1);

INSERT INTO Artistas VALUES (1,"Walter Phoenix"),
(2,"Peter Strong"),
(3,"Lance Day"),
(4,"Freedie Shannon");

INSERT INTO Albuns VALUES (1,"Envious",1),
(2,"Exuberant",1),
(3,"Hallowed Steam",2),
(4,"Incandescent",3),
(5,"Temporary Culture",4);

INSERT INTO Songs VALUES (1,"Soul For Us",1),
(2,"Reflections Of Magic",1),
(3,"Dance With Her Own",1),
(4,"Troubles Of My Inner Fire",2),
(5," Time Fireworks",2),
(6,"Magic Circus",3),
(7,"Honey, So Do I",3),
(8,"Sweetie, Let's Go Wild",3),
(9,"She Knows",3),
(10,"Fantasy For Me",4),
(11,"Celebration Of More",4),
(12,"Rock His Everything",4),
(13,"Home Forever",4),
(14,"Diamond Power",4),
(15,"Honey, Let's Be Silly",4),
(16,"Thang Of Thunder",5),
(17,"Words Of Her Life",5),
(18,"Without My Streets",5);

INSERT INTO users_follow_artistas VALUES (1,1),
(1,3),
(1,4),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

INSERT INTO historico_de_reproducoes VALUES (1,1),
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
