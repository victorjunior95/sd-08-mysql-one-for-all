USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(100))
BEGIN
SELECT A.artista AS artista, AL.album AS album
FROM SpotifyClone.Artistas AS A
INNER JOIN SpotifyClone.Albuns AS AL
ON A.artista_id = AL.artista_id
WHERE artista = nomeArtista
ORDER BY 2;
END $$
DELIMITER ;
