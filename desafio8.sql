DELIMITER $$ 

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM  SpotifyClone.Historico
WHERE OLD.usuario_id = usuario_id;
DELETE FROM  SpotifyClone.ArtistaSeguidores
WHERE OLD.usuario_id = usuario_id;
END $$

DELIMITER;
