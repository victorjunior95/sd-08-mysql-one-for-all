DELIMITER $$

CREATE TRIGGER trigger_usuario
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.reproducoes
  WHERE OLD.usuario_id = usuario_id;
  DELETE FROM SpotifyClone.follows
  WHERE OLD.usuario_id = usuario_id;
END $$

DELIMITER ;
