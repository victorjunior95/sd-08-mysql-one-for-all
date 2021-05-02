USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_de_reproducoes WHERE historico_de_reproducoes.usuario_id = OLD.usuario_id;
DELETE FROM usuarios_seguindo_artistas WHERE usuarios_seguindo_artistas.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
