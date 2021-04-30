USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT sa.nome AS `artista`,sal.album AS `album`
FROM SpotifyClone.artistas AS sa
INNER JOIN SpotifyClone.albuns AS sal
ON sal.artista_id = a.artista_id
WHERE sa.artista = nome_artista
ORDER BY `album` ASC;

END $$
DELIMITER ;

CALL albuns_do_artista("Walter Phoenix");
