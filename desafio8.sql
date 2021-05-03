USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
  DELETE FROM historico WHERE historico.usuario_id = OLD.usuario_id;
  DELETE FROM seguidores WHERE seguidores.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
