USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(50))
BEGIN
SELECT b.artista_name, a.album_name 
FROM SpotifyClone.albuns a
INNER JOIN SpotifyClone.artistas b ON a.artista_id = b.artista_id
WHERE b.artista_name = nome
ORDER BY a.album_name;
END $$
DELIMITER ;
