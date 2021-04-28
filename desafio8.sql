USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM usuarios_artistas WHERE OLD.usuario_id = usuario_id;
DELETE FROM usuarios_musicas WHERE OLD.usuario_id = usuario_id;
END
$$ DELIMITER ;
