DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN givenName VARCHAR(50))
BEGIN
SELECT
art.artist_name AS `artista`,
alb.album_title AS `album`
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artist_id = alb.album_author_id
WHERE art.artist_name = givenName
ORDER BY `album`;
END

$$ DELIMITER ;
