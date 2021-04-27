DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(20))
BEGIN
SELECT ART.artista_nome AS 'artista',A.album_nome AS 'album' FROM SpotifyClone.Artistas AS ART INNER JOIN SpotifyClone.Albums AS A ON ART.artista_id = A.artista_id WHERE ART.artista_nome = nome ORDER BY album;
END $$

DELIMITER ;
