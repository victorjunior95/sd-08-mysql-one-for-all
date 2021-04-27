DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON `SpotifyClone`.`user`
FOR EACH ROW
BEGIN 
DELETE FROM `SpotifyClone`.`user_following`
WHERE `user_following`.`user_id` = OLD.`user_id`;
DELETE FROM `SpotifyClone`.`user_history`
WHERE `user_history`.`user_id` = OLD.`user_id`;
END $$

DELIMITER ;
