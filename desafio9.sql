DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nomeArtista VARCHAR(50))
BEGIN
SELECT
art.artista_nome artista,
alb.album_nome album
FROM
SpotifyClone.albuns alb,
SpotifyClone.artistas art
WHERE
alb.artista_id = art.artista_id AND
artista_nome = nomeArtista;
END $$
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
