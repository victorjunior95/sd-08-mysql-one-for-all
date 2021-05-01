USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.artista_seguido
    WHERE usuario_ID = OLD.usuario_ID;
  DELETE FROM SpotifyClone.historico_reproducoes
    WHERE usuario_ID = OLD.usuario_ID;
END $$

DELIMITER ;
