USE SpotifyClone;
DROP FUNCTION quantidade_musicas_no_historico;
DELIMITER $$ CREATE FUNCTION quantidade_musicas_no_historico(id_user INT) RETURNS INT READS SQL DATA BEGIN
DECLARE total_songs INT;
SELECT COUNT(user_id)
FROM reproductions_history AS rh
WHERE rh.user_id = id_user INTO total_songs;
RETURN total_songs;
END $$ DELIMITER;
