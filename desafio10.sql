DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(identify INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = identify
INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
