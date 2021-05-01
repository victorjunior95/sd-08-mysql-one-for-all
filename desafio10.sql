USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_total INT;
SELECT 
    COUNT(*)
FROM
    Playback_History
WHERE
    userID = user_id INTO songs_total;
    RETURN songs_total;
END $$

DELIMITER ; 
