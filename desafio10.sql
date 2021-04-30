USE `SpotifyClone`;
DROP function IF EXISTS `quantidade_musicas_no_historico`;

DELIMITER $$
USE `SpotifyClone`$$
CREATE FUNCTION `quantidade_musicas_no_historico` (id INT)
RETURNS INTEGER READS SQL DATA
BEGIN
DECLARE reproducoes INT;
SELECT COUNT(song_id) FROM SpotifyClone.played_music_history
WHERE user_id = id
GROUP BY user_id
INTO reproducoes;
RETURN reproducoes;
END$$

DELIMITER ;
