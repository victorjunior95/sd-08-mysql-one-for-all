USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON `Usuario` FOR EACH ROW
BEGIN DELETE FROM Seguindo_Artista WHERE Usuario_id = OLD.usuario_id;
DELETE FROM Historico_Cancao WHERE Usuario_id = OLD.usuario_id;
END $$ DELIMITER ;
