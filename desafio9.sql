DELIMITER &&
CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
SELECT a.name AS artista, l.name AS album
FROM SpotifyClone.albuns AS l
INNER JOIN SpotifyClone.artists AS a ON l.artist_id = a.id
WHERE a.name = artist_name
ORDER BY l.name;
END &&
DELIMITER ;
