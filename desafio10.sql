USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_do_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE resultadoQuantidadeMusicasByID INT;
    SELECT COUNT(musica_id)
    FROM SpotifyClone.historicoReproducao
    WHERE usuario_id = id_do_usuario INTO resultadoQuantidadeMusicasByID;
    RETURN resultadoQuantidadeMusicasByID;
END $$
DELIMITER ;
