CREATE VIEW top_3_artistas AS

SELECT
a.nome_artista AS 'artista',
sub.qnt AS 'seguidores'
FROM
(SELECT
artista_id,
COUNT(artista_id) AS 'qnt' FROM seguindo
GROUP BY artista_id) AS sub
INNER JOIN artistas AS a
ON a.artista_id = sub.artista_id
ORDER BY 2 DESC, 1
LIMIT 3;
