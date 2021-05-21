DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN param VARCHAR(50))
BEGIN
SELECT 
a.artist_name AS artista,
alb.album_name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artist_id = alb.artist_id
WHERE a.artist_name = param
ORDER BY album;
END $$
DELIMITER ;
