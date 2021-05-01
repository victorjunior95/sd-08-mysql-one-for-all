DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (userCode INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT 
COUNT(h.song_id)
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u
ON h.played_by_user_id = u.user_id
WHERE u.user_id = userCode
GROUP BY u.user_name
INTO quantidade;
RETURN quantidade;
END

$$ DELIMITER ;
