USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON user FOR EACH ROW
BEGIN
DELETE FROM followed_artist WHERE user_id = OLD.user_id;
DELETE FROM reproduction_history 
WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
