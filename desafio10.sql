USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE my_playlist_count INT;
SELECT COUNT(*) FROM SpotifyClone.user AS U
INNER JOIN SpotifyClone.my_playlist AS MP 
ON U.user_id = MP.user_id
WHERE U.user_id = userId
INTO my_playlist_count;
RETURN my_playlist_count;
END $$

DELIMITER ;
