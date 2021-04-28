USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(200))
BEGIN
SELECT a.artista AS `artista`, ab.album AS `album`
FROM SpotifyClone.albuns AS ab
INNER JOIN SpotifyClone.artistas AS a
ON ab.artista_id = a.artista_id
WHERE a.artista = nome
ORDER BY `album`; 
END
$$ DELIMITER ;
