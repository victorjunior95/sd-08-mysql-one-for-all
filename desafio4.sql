CREATE VIEW top_3_artistas AS
SELECT 
a.nome AS 'artista',
COUNT(s.usuario_id) AS 'seguidores'
FROM artistas AS a
INNER JOIN seguidores AS s
ON s.artista_id = a.artista_id
GROUP BY a.artista_id
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
