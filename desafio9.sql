DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(100))
BEGIN
SELECT art.artista_nome AS artista, a.album_nome AS album FROM SpotifyClone.artistas art
INNER JOIN SpotifyClone.albuns a
ON art.artista_id = a.artista_id
WHERE artista_nome = 'Walter Phoenix'
ORDER BY 2;
END $$

DELIMITER ;
