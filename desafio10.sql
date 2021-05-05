USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE reproduction_history_count INT;
SELECT COUNT(*) FROM reproduction_history
WHERE user_id = id INTO reproduction_history_count;
RETURN reproduction_history_count;
END $$

DELIMITER ;
