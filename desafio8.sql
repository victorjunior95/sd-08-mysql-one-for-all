-- DESAFIO 8
USE SpotifyClone;
DELIMITER !!

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW

BEGIN
DELETE FROM SpotifyClone.acompanha
WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historico
WHERE usuario_id = OLD.usuario_id;

END !!

DELIMITER ;
