USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT 
a.nome AS `artista`,
al.album AS `album`
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = a.artista_id
WHERE a.nome = nome_artista
ORDER BY `album` ASC;

END $$
DELIMITER ;

CALL albuns_do_artista("Walter Phoenix");
