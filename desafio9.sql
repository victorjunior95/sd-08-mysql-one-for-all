DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nomeAtor VARCHAR(50))
BEGIN
SELECT art.artista AS artista, alb.album AS album FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
WHERE art.artista = nomeAtor
ORDER BY album;
END $$
DELIMITER ;
