USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_de_musicas_historico INT;
    SELECT 
	COUNT(hr.cancao_id)
    FROM SpotifyClone.historico_de_reproducoes AS hr
    INNER JOIN SpotifyClone.usuarios AS u
    ON u.usuario_id = hr.usuario_id
    WHERE u.nome = usuario INTO quantidade_de_musicas_historico;
    RETURN quantidade_de_musicas_historico;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico("Bill");
