DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.HistoricoReproducoes
  WHERE usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.ListaSeguidores
  WHERE usuario_id = OLD.usuario_id;
END

$$ DELIMITER ;
