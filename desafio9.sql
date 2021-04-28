DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_param VARCHAR(50))
BEGIN
SELECT A.artista, AB.album FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS AB
ON A.artista_id = AB.artista_id
WHERE A.artista = artista_param;
END $$

DELIMITER ;
