USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
  BEGIN
    DELETE FROM histories WHERE histories.user_id = OLD.user_id;
    DELETE FROM followers WHERE followers.user_id = OLD.user_id;
  END $$

DELIMITER ;
