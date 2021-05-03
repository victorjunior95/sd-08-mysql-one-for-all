DELIMITER $M
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarioTB
  FOR EACH ROW
BEGIN
  DELETE FROM seguidoresTB WHERE usuarioID = OLD.usuarioID;
  DELETE FROM historicoTB WHERE usuarioID = OLD.usuarioID;
END $M DELIMITER ;
