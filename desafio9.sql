DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT art.nome AS 'artista', alb.titulo AS 'album'
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artista AS art ON alb.id_artista = art.id_artista
WHERE art.nome = nome
ORDER BY alb.titulo;
END $$
DELIMITER ;
