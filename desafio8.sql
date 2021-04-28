USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN 
DELETE FROM `following`
WHERE user_id = OLD.user_id;

DELETE FROM reproductions_history 
WHERE
    user_id = OLD.user_id;

END $$

DELIMITER ;
