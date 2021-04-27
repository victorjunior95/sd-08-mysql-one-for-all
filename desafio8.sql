DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Playback_history
WHERE OLD.user_id = user_id;
DELETE FROM SpotifyClone.Artist_followers
WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
