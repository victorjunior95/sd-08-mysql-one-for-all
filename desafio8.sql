DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.Historico -- Aqui tem dados sobre o usuario
  WHERE usuario_id = OLD.usuario_id; 
  DELETE FROM SpotifyClone.Seguindo -- Aqui tem dados sobre o usuario
  WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
