DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_de_reproducoes h WHERE h.usuario_id = OLD.usuario_id;
DELETE FROM usuarios_seguindo_artistas u WHERE u.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;

