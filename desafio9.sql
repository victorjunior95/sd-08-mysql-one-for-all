DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistname VARCHAR(50))
BEGIN
SELECT a.artist AS artista,
al.album AS album
FROM SpotifyClone.Artists AS a
INNER JOIN SpotifyClone.Albums AS al ON a.artist_id = al.artist_id
WHERE artistname = a.artist
ORDER BY al.album;
END $$

DELIMITER ;
