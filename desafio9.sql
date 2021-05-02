DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
    SELECT ar.artista AS 'artista', al.album AS 'album'
    FROM SpotifyClone.Artistas AS ar
    INNER JOIN SpotifyClone.Albuns AS al
    ON al.artista_id = ar.artista_id AND ar.artista = artista
    ORDER BY `album`;
END

DELIMITER ;
    