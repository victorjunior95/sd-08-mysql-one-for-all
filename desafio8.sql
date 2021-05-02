DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON Usuarios
    FOR EACH ROW
    BEGIN
        DELETE FROM SpotifyClone.SegueArtistas
        WHERE usuario_id = OLD.usuario_id;
        DELETE FROM SpotifyClone.HistoricoReproducao
        WHERE usuario_id = OLD.usuario_id;
    END

DELIMITER ;
