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

--  DELETE FROM Usuarios WHERE usuario_id = 1; 
-- Error Code: 1442. Can't update table 'Usuarios' in stored function/trigger 
-- because it is already used by statement which invoked this stored function/trigger.
