DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW BEGIN
DELETE FROM SpotifyClone.users_follow_artistas WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.historico_de_reproducoes WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
