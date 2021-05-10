USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN nome_artista VARCHAR(50)
)
BEGIN
SELECT 
    ar.artist AS 'artista', al.album AS 'album'
FROM
    SpotifyClone.albums AS al
        INNER JOIN
    SpotifyClone.artists AS ar ON al.artist_id = ar.artist_id
ORDER BY `album`;
END $$

DELIMITER ;
