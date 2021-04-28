USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist VARCHAR(50))
BEGIN
    SELECT ART.name AS 'artista', A.name AS 'album'
    FROM artists AS ART
    INNER JOIN albums AS A ON A.artist_id = ART.artist_id
    WHERE ART.name = artist
    ORDER BY album;
END $$

DELIMITER ;
