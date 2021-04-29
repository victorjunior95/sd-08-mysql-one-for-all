DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuario VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE searchResult INT;
SELECT COUNT(*) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.historico_de_reproducoes AS hp
INNER JOIN SpotifyClone.usuario AS u
ON hp.usuario_id = u.usuario_id
WHERE u.nome = usuario INTO searchResult;
RETURN searchResult;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico('BILL');
