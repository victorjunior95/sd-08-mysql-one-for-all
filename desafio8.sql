DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes AS hp WHERE hp.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguindo_artista AS ar WHERE ar.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
