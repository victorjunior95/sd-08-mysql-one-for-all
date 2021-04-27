USE SpotifyClone;

DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON Spotify_User
FOR EACH ROW
BEGIN
DELETE FROM History
WHERE user_id = OLD.user_id;
DELETE FROM Following
WHERE user_id = OLD.user_id;
END $$
DELIMITER ;

DELETE FROM SpotifyClone.Spotify_User 
WHERE username = 'Thati';
