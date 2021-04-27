USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(artista VARCHAR(50))
BEGIN
SELECT art.nome AS artista, alb.nome AS album
FROM artistas AS art
INNER JOIN albuns AS alb ON alb.artista_id = art.artista_id
HAVING art.nome = artista
ORDER BY album;
END $$
DELIMITER ;
