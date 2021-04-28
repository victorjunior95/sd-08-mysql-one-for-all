USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(
IN nome_artista VARCHAR(40)
)
BEGIN
SELECT
CONCAT(art.nome, ' ', art.sobrenome) AS 'artista',
alb.nome_album AS 'album'
FROM artistas AS art
INNER JOIN album AS alb
ON art.artistas_id = alb.artistas_id
WHERE nome_artista = CONCAT(art.nome, ' ', art.sobrenome)
ORDER BY `album`;
END $$
DELIMITER ;
