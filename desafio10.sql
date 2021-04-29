DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE searchResult INT;
SELECT COUNT(*) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.historico_de_reproducoes AS hp
INNER JOIN SpotifyClone.usuario AS u
ON hp.usuario_id = u.usuario_id
WHERE hp.usuario_id = usuarioId INTO searchResult;
RETURN searchResult;
END $$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
