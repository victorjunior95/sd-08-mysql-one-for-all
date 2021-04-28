USE SpotifyClone;

DROP TRIGGER IF EXISTS trigger_usuario_delete;
DELIMITER $
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
  BEGIN
    DELETE FROM songs_history
    WHERE old.user_id = user_id;
    DELETE FROM artists_followers
    WHERE old.user_id = user_id;
  END $

DELIMITER ;
