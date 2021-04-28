USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(50))
BEGIN
SELECT 
    AR.artist_name AS `artista`,
    AL.album_name AS `album`
FROM
    album AS AL
        INNER JOIN
    artist AS AR ON AR.artist_id = AL.artist_id
WHERE AR.artist_name = artist_name;

END$$

DELIMITER ;
