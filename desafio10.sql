USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_de_musicas_historico INT;
    SELECT COUNT(cancao_id)
    FROM SpotifyClone.historico_de_reproducoes
    WHERE usuario_id = id_usuario INTO quantidade_de_musicas_historico;
    RETURN quantidade_de_musicas_historico;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
