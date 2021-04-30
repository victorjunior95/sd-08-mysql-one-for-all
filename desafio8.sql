USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
BEGIN
  DELETE FROM user_history
  WHERE USER_ID = OLD.USER_ID;
  DELETE FROM artist_followers
  WHERE USER_ID = OLD.USER_ID;
END $$

DELIMITER ;
