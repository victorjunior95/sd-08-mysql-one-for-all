DELIMITER $

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE history_songs INT;
SELECT COUNT(user.user_id) FROM SpotifyClone.User AS user
INNER JOIN SpotifyClone.History AS history
ON user.user_id = history.user_id
WHERE user.user_id = userId
INTO history_songs;
RETURN history_songs;
END $

DELIMITER ;
