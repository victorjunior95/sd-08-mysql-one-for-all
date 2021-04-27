USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON Usuario
    FOR EACH ROW
BEGIN
    DELETE FROM Historico_reproducoes WHERE usuario_id = OLD.usuario_id;
    DELETE FROM artistas_seguidos WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;

DELETE FROM SpotifyClone.Usuario WHERE usuario = 'Thati';

SET SQL_SAFE_UPDATES = 0;