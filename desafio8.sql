USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    AFTER DELETE ON Usuario
    FOR EACH ROW
BEGIN
    DELETE FROM Historico WHERE user_id = OLD.user_id;
DELETE FROM Seguindo 
WHERE
    user_id = OLD.user_id;
END $$
DELIMITER ;
