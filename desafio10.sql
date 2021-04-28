USE `SpotifyClone`;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE `history_quantity` INT;
SELECT COUNT(`song_id`) FROM `user_history`
WHERE `user_id` = userID INTO `history_quantity`;
RETURN `history_quantity`;
END $$

DELIMITER ;
