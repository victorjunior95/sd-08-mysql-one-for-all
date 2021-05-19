USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_user_delete
BEFORE DELETE ON user FOR EACH ROW
BEGIN
DELETE FROM followed_artist 
WHERE user_id = OLD.user_id;
DELETE FROM my_playlist 
WHERE user_id = OLD.user_id;
END $$

DELIMITER ;
