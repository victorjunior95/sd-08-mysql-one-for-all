DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id TINYINT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE song_quantity TINYINT;
    SELECT COUNT(user_id) FROM SpotifyClone.reproductions
    WHERE user_id = reproductions.user_id
    INTO song_quantity;
    RETURN song_quantity;
END $$

DELIMITER ;
