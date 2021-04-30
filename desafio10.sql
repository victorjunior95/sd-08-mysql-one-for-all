USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_de_musicas_historico INT;
    SELECT COUNT(cancao_id)
    FROM historico_de_reproducoes AS shr
    WHERE shr.usuario_id = usuario_id INTO quantidade_de_musicas_historico;
    RETURN quantidade_de_musicas_historico;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
