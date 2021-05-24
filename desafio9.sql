DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN param VARCHAR(100))
BEGIN
SELECT 
artista_1.artista_nome AS artista,
albuns.album_nome AS album
FROM SpotifyClone.artistas AS artista_1
INNER JOIN SpotifyClone.albuns AS albuns
ON artista_1.artista_id = albuns.artista_id
WHERE artista_1.artista_nome = param
ORDER BY album;
END $$
DELIMITER ;
