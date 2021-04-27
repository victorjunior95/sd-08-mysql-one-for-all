DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
SELECT 
ART.artist_name AS `artista`,
AA.album_title AS `album`
FROM SpotifyClone.all_artist AS ART
INNER JOIN SpotifyClone.all_album AS AA 
ON ART.artist_id = AA.artist_id
AND ART.artist_name = artist;
END $$

DELIMITER ;
