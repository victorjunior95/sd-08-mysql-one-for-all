USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(30))

BEGIN
SELECT artista.artista,
album.album
FROM SpotifyClone.artistas artista
INNER JOIN SpotifyClone.albuns album
ON album.artista_id = artista.artista_id
WHERE artista.artista = nomeArtista
ORDER BY album.album
END

$$ DELIMITER ;
