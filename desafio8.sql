DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes AS hdr WHERE hdr.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historico_reproducao_usuarios AS hru WHERE hru.usuario_id = OLD.usuario_id;
END
$$ DELIMITER ;
