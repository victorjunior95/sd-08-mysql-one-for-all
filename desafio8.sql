USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON `usuarios`
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes as shr
WHERE shr.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguidores as ss
WHERE ss.usuario_id = OLD.usuario_id;

END $$
DELIMITER ;
