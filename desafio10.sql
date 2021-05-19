USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (name INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE my_playlist_count INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico 
FROM SpotifyClone.my_playlist AS MP
INNER JOIN SpotifyClone.user U
ON MP.user_id = U.user_id
WHERE user_id = name INTO my_playlist_count;
RETURN my_playlist_count;
END $$

DELIMITER ;
