USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(50))
BEGIN
SELECT 
    a.artista AS `artista`,
    al.album AS `album`
FROM
    album AS al
        INNER JOIN
    artista AS a ON a.artista_id = al.artista_id
WHERE a.artista = artista;

END$$

DELIMITER ;
