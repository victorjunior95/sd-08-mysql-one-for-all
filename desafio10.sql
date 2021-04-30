DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT COUNT(USUARIO_ID)
FROM SpotifyClone.USUARIO_CANCOES
WHERE USUARIO_ID = id_usuario INTO total_songs;
RETURN total_songs;
END $$
DELIMITER ;
