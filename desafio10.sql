DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE musicas_no_historico INT;
SELECT COUNT(song_id)
FROM SpotifyClone.user_history
WHERE user_id = param
GROUP BY user_id
INTO musicas_no_historico;
RETURN musicas_no_historico;
END $$
DELIMITER ;
