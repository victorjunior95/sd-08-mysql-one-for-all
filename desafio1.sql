-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SpotifyClone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SpotifyClone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SpotifyClone` ;
USE `SpotifyClone` ;

-- -----------------------------------------------------
-- Table `SpotifyClone`.`plans_and_pricing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plans_and_pricing` (
  `plan_and_pricing_id` INT NOT NULL AUTO_INCREMENT,
  `plan_type` VARCHAR(45) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`plan_and_pricing_id`))
ENGINE = InnoDB;

INSERT INTO `plans_and_pricing` (`plan_and_pricing_id`, `plan_type`, `price`)
VALUES
  (1,'gratuito', 0.00),
  (2,'universitário', 5.99),
  (3,'familiar', 7.99);
-- -----------------------------------------------------
-- Table `SpotifyClone`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `user` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `plan_and_pricing_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `plan_and_pricing_id`),
  INDEX `fk_users_plans_and_pricing_idx` (`plan_and_pricing_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_plans_and_pricing`
    FOREIGN KEY (`plan_and_pricing_id`)
    REFERENCES `SpotifyClone`.`plans_and_pricing` (`plan_and_pricing_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `users` (`user_id`,`user`,`age`,`plan_and_pricing_id`)
VALUES
(1,'Thati', 23, 1),
(2,'Cintia', 35, 3),
(3,'Bill', 20, 2),
(4,'Roger', 45, 1);
-- -----------------------------------------------------
-- Table `SpotifyClone`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artists` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `artist_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`artist_id`))
ENGINE = InnoDB;

INSERT INTO `artists` (`artist_id`,`artist_name`)
VALUES
(1,'Walter Phoenix'),
(2,'Peter Strong'),
(3,'Lance Day'),
(4,'Freedie Shannon');


-- -----------------------------------------------------
-- Table `SpotifyClone`.`following_artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`following_artist` (
  `following_artist_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`following_artist_id`, `user_id`, `artist_id`),
  INDEX `fk_following_artist_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_following_artist_artist1_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_following_artist_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `SpotifyClone`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_following_artist_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `SpotifyClone`.`artists` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `following_artist` (`following_artist_id`,`user_id`,`artist_id`)
VALUES
(1,1,1),
(2,1,4),
(3,1,3),
(4,2,1),
(5,2,3),
(6,3,2),
(7,3,1),
(8,4,4);

-- -----------------------------------------------------
-- Table `SpotifyClone`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albums` (
  `album_id` INT NOT NULL AUTO_INCREMENT,
  `album_name` VARCHAR(45) NOT NULL,
  `artist_id` INT NOT NULL,
  PRIMARY KEY (`album_id`, `artist_id`),
  INDEX `fk_album_artist1_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_album_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `SpotifyClone`.`artists` (`artist_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `albums` (`album_id`, `album_name`,`artist_id`)
VALUES
(1,'Envious', 1),
(2,'Exuberant', 1),
(3,'Hallowed Steam', 2),
(4,'Incandescent', 3),
(5,'Temporary Culture', 4);

-- -----------------------------------------------------
-- Table `SpotifyClone`.`songs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`songs` (
  `song_id` INT NOT NULL AUTO_INCREMENT,
  `name_of_song` VARCHAR(100) NOT NULL,
  `album_id` INT NOT NULL,
  PRIMARY KEY (`song_id`,`album_id`),
    INDEX `fk_songs_album1_idx` (`album_id` ASC) VISIBLE,
  CONSTRAINT `fk_songs_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `SpotifyClone`.`albums` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `songs`(`song_id`, `name_of_song`,`album_id`)
VALUES
(1,"Soul For Us",1),
(2,"Reflections Of Magic",1),
(3,"Dance With Her Own",1),

(4,"Troubles Of My Inner Fire",2),
(5,"Time Fireworks",2),

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



-- -----------------------------------------------------
-- Table `SpotifyClone`.`play_history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`play_history` (
  `play_history_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  PRIMARY KEY (`play_history_id`, `user_id`, `song_id`),
  INDEX `fk_play_history_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_play_history_songs1_idx` (`song_id` ASC) VISIBLE,
  CONSTRAINT `fk_play_history_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `SpotifyClone`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_play_history_songs1`
    FOREIGN KEY (`song_id`)
    REFERENCES `SpotifyClone`.`songs` (`song_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `play_history` (`play_history_id`,`user_id`,`song_id`)
VALUES
(1,1,1),
(2,1,6),
(3,1,14),
(4,1,16),
(5,2,13),
(6,2,17),
(7,2,2),
(8,2,15),
(9,3,4),
(10,3,16),
(11,3, 6),
(12,4, 3),
(12,4, 18),
(12,4, 11);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
