USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE playlist_history_count INT;
SELECT 
    COUNT(*)
FROM
    playlist_history
WHERE
    user_id = id INTO playlist_history_count;
RETURN playlist_history_count;
END $$

DELIMITER ;
