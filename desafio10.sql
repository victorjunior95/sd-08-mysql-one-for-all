USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_query VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_count INT;
SELECT 
    COUNT(h.user_id)
FROM
    SpotifyClone.history as h
    INNER JOIN
    SpotifyClone.users AS u ON h.user_id = u.user_id
WHERE
    u.user_name = user_query INTO songs_count;
RETURN songs_count;
END $$

DELIMITER ;
