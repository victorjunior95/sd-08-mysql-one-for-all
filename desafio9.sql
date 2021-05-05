USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(50))
BEGIN
SELECT a.artist_name AS artista, b.album_name AS album
FROM album AS b
INNER JOIN artist AS a ON a.artist_id = b.artist_id
WHERE a.artist_name = artist_name;
END$$

DELIMITER ;
