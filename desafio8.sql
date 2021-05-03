DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE
ON  SpotifyClone._usuarios FOR EACH ROW
BEGIN
DELETE _historico FROM SpotifyClone._historico WHERE usuario_id = (SELECT usuario_id FROM DELETED);
DELETE _seguindo FROM SpotifyClone._seguindo WHERE usuario_id = (SELECT usuario_id FROM DELETED);
END $$
DELIMITER ;
