DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Users FOR EACH ROW 
    BEGIN
      DELETE FROM Followers WHERE user_id = OLD.user_id;
      DELETE FROM Playback_History WHERE user_id = OLD.user_id;
    END$$

DELIMITER ;
