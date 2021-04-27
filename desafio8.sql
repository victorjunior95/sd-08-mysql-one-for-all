USE SpotifyClone;

DELIMITER $
CREATE TRIGGER trigger_usuario_delete
  AFTER DELETE ON users
  FOR EACH ROW
  BEGIN
    DELETE FROM songs_history AS sh
    WHERE old.user_id = sh.user_id;
    DELETE FROM artists_followers AS af
    WHERE old.user_id = af.user_id;
  END $

DELIMITER ;
