USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT ar.artista, al.album
FROM SpotifyClone.Artistas AS ar
INNER JOIN SpotifyClone.Albuns AS al
ON ar.artista_id = al.artista_id
WHERE artista = nome;
END $$
DELIMITER ;
