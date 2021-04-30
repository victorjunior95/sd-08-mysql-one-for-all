USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON `usuarios`
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes
WHERE shr.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguidores
WHERE ss.usuario_id = OLD.usuario_id;

END $$
DELIMITER ;
