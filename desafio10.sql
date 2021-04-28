USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_user VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT COUNT(user_id) 
FROM users 
WHERE users.user_id = id_user INTO total_songs;
RETURN total_songs; 
END $$
DELIMITER ;
