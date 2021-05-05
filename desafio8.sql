DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuariosFOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo WHERE id_usuario = OLD.id_usuario;
DELETE FROM SpotifyClone.historico_cancoes WHERE id_usuario = OLD.id_usuario;
END $$
DELIMITER  ;
