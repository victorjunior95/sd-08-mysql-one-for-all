USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (id int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE song_count INT;
SELECT COUNT(user_id) FROM SpotifyClone.historico_de_reproducoes WHERE user_id = id
INTO song_count;
RETURN song_count;
END $$
DELIMITER ;
