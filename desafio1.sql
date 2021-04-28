DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
    plan_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    plan VARCHAR(20),
    plan_value FLOAT NOT NULL
) engine = InnoDB;

INSERT INTO plan(plan, plan_value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 7.99);

CREATE TABLE user(
    user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id INT,
    FOREIGN KEY(plan_id) REFERENCES plan(plan_id)
) engine = InnoDB;

INSERT INTO user(user, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

CREATE TABLE singer(
    singer_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    singer  VARCHAR(45)
) engine = InnoDB;

INSERT INTO singer (singer)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
  CREATE TABLE album(
      album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      album VARCHAR(45),
      singer_id INT,
      FOREIGN KEY (singer_id) REFERENCES singer(singer_id)
    ) engine = InnoDB;
    
    INSERT INTO album(album, singer_id)
    VALUES
		('Envious', 1),
        ('Exuberant', 1),
        ('Halowed Steam', 2),
        ('Incandescent', 3),
        ('Temporary Culture', 4);

  CREATE TABLE music(
    music_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    music VARCHAR(45),
    album_id INT,
    FOREIGN KEY(album_id) REFERENCES album(album_id)
  ) engine = InnoDB;

  INSERT INTO music(music, album_id)
  VALUES
    ("Soul For Us", 1), ("Reflections Of Magic", 1), ("Dance With Her Own", 1), ("Troubles Of My Inner Fire", 2), ("Time Fireworks", 2), ("Magic Circus", 3), ("Honey, So Do I", 3), ("Sweetie, Let's Go Wild", 3), ("She Knows", 3), ("Fantasy For Me" , 4), ("Celebration Of More", 4), ("Rock His Everything", 4), ("Home Forever" , 4), ("Diamond Power", 4), ("Honey, Let's Be Silly", 4), ("Thang Of Thunder", 5), ("Words Of Her Life", 5), ("Without My Streets", 5);


    CREATE TABLE following(
      user_id INT NOT NULL,
      singer_id INT NOT NULL,
      PRIMARY KEY(user_id, singer_id),
      FOREIGN KEY(user_id) REFERENCES user(user_id),
      FOREIGN KEY(singer_id) REFERENCES singer(singer_id)
    ) engine = InnoDB;

    INSERT INTO following(user_id, singer_id)
    VALUES
      (1, 1), (1, 3), 
      (1, 4), (2, 1),
      (2, 3), (3, 1), 
      (3, 2), (4, 4);

      CREATE TABLE hist_views(
        user_id INT NOT NULL,
        music_id INT NOT NULL,
        PRIMARY KEY(user_id, music_id),
        FOREIGN KEY(user_id) REFERENCES user(user_id),
        FOREIGN KEY(music_id) REFERENCES music(music_id)
      ) engine = InnoDB;

      INSERT INTO hist_views(user_id, music_id)
        VALUES
        (1, 1), (1, 6),
        (1, 14), (1, 16),
        (2, 13), (2, 17),
        (2, 2), (2, 15),
        (3, 4), (3, 16),
        (3, 6), (4, 3),
        (4, 18), (4, 11);
