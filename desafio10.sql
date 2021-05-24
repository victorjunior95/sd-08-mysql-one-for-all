DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas_no_historico INT;
SELECT COUNT(musica_id)
FROM SpotifyClone.reproducao_user
WHERE usuario_id = param
GROUP BY usuario_id
INTO musicas_no_historico;
RETURN musicas_no_historico;
END $$
DELIMITER ;
