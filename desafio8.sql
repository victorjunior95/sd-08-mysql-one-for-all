DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
SET SQL_SAFE_UPDATES=0;
DELETE FROM SpotifyClone.Historicos WHERE `usuario_id` = OLD.`usuario_id`;
DELETE FROM SpotifyClone.Seguidos WHERE `usuario_id` = OLD.`usuario_id`;
SET SQL_SAFE_UPDATES=1;
END $$
DELIMITER ;
