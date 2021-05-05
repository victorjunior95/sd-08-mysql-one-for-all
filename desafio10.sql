DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE song_amount INT;
SELECT COUNT(user_id)
FROM SpotifyClone.historic
WHERE user_id = user_id
INTO song_amount;
RETURN song_amount;
END
$$ DELIMITER ;
