DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUsuario int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE musicas_total INT;
    SELECT COUNT(*)
    FROM SpotifyClone.reproducoes
    WHERE usuario_id = idUsuario INTO musicas_total;
    RETURN musicas_total;
END $$

DELIMITER ;
