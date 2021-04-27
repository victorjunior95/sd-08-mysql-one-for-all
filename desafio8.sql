DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.artistas_favoritos WHERE id_usuario = OLD.id_usuario;
DELETE FROM SpotifyClone.historico WHERE id_usuario = OLD.id_usuario;
END $$
DELIMITER ;
