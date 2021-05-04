USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON Usuarios
  FOR EACH ROW 
BEGIN
  DELETE FROM Historico
  WHERE usuario_id = OLD.usuario_id;
  DELETE FROM  Seguidores
  WHERE usuario_id = OLD.usuario_id;
END
$$
DELIMITER ;
