USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM followed_artists 
WHERE followed_artists.user_id = OLD.user_id;
DELETE FROM history_songs
WHERE history_songs.user_id = OLD.user_id;
END;

$$ DELIMITER ;
