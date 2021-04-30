USE SpotifyClone;

DROP TRIGGER trigger_usuario_delete;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN 
DELETE FROM followers
WHERE user_id = OLD.user_id;

DELETE FROM reproductions_history 
WHERE
    user_id = OLD.user_id;

END $$

DELIMITER ;

