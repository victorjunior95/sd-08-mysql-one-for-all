USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT sa.artista AS `artista`,sal.album AS `album`
FROM SpotifyClone.artistas AS sa
INNER JOIN SpotifyClone.albuns AS sal
ON sa.artista_id = sal.artista_id
WHERE sa.artista = artista
ORDER BY `album` ASC;

END $$
DELIMITER ;

CALL albuns_do_artista("Walter Phoenix");
