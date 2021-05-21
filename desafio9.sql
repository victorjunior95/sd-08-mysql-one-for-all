DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(100))
BEGIN
SELECT
a.nome AS artista,
alb.nome AS album
FROM SpotifyClone.albuns AS alb
INNER JOIN artistas a ON a.artista_id = alb.artista_id
where a.nome = nome_artista;
END $$
DELIMITER ;
