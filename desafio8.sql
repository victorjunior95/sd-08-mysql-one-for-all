USE SpotifyClone;

DELIMITER $$
CREATE 
    TRIGGER  trigger_usuario_delete
 AFTER DELETE ON Users FOR EACH ROW 
    BEGIN
      DELETE FROM Followers WHERE Followers.user_id = OLD.Followers.user_id;
DELETE FROM Playback_History 
WHERE
    Playback_History.user_id = OLD.Playback_History.user_id;
    END$$

DELIMITER ;
