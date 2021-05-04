DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(50))
BEGIN
SELECT ts.stars AS artista, ta.albuns AS album
FROM SpotifyClone.table_stars ts
INNER JOIN SpotifyClone.table_albuns ta
ON ts.id_stars = ta.id_stars
WHERE ts.stars = artista_nome
GROUP BY artista, album
ORDER BY album;
END $$
DELIMITER ;
