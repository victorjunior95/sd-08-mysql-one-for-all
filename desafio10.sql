DELIMITER $$ 
CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_song INT;
SELECT
COUNT(HS.user_id)
FROM SpotifyClone.history_songs AS HS
INNER JOIN SpotifyClone.users AS U
ON U.user_id = HS.user_id
WHERE U.user_id = userID INTO count_song;
RETURN count_song;
END $$
DELIMITER ;
