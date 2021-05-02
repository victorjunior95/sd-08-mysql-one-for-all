USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT a.artista,
al.album
FROM albuns al
INNER JOIN artistas a ON a.artista_id = al.artista_id
WHERE a.artista = artista
ORDER BY al.album;
END $$
DELIMITER ;
