DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN

DECLARE Quantidade INT;

SELECT COUNT(p.song_id) INTO Quantidade
FROM SpotifyClone.Playback_history AS p
INNER JOIN SpotifyClone.Users AS u ON p.user_id = u.user_id
WHERE p.user_id = id;
RETURN Quantidade;
END $$

DELIMITER ;
