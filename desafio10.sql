DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_total INT;
SELECT 
    COUNT(p.user_id)
FROM
    SpotifyClone.Playback_History AS p
WHERE
    userID = p.user_id INTO songs_total;
    RETURN songs_total;
END $$

DELIMITER ; 
