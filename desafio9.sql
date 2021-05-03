DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista_tp VARCHAR(50))
BEGIN
SELECT 
artistasTable.artista_nome AS artista,
albunsTable.album_name AS album
FROM SpotifyClone.Artistas AS artistasTable
INNER JOIN SpotifyClone.Albuns AS albunsTable
ON artistasTable.artista_id = albunsTable.artista_id
WHERE artistasTable.artista_nome = artista_tp;
END $$ 
DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
