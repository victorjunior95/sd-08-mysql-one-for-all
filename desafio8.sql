USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE hdr, sa FROM historico_de_reproducoes AS hdr
JOIN seguindo_artistas AS sa
ON sa.usuario_id = OLD.usuario_id
WHERE hdr.usuario_id = OLD.usuario_id AND sa.usuario_id = OLD.usuario_id;
END
$$ DELIMITER ;
