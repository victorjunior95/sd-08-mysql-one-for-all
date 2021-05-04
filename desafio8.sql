USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON  SpotifyClone._usuarios FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone._historico WHERE usuario_id = old.usuario_id;
DELETE FROM SpotifyClone._seguindo WHERE usuario_id = old.usuario_id;
END $$
DELIMITER ;
