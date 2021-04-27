CREATE VIEW top_3_artistas AS (SELECT CONCAT(a.nome, ' ', a.sobrenome) AS artista,
COUNT(s.usuario_id) AS seguidores
FROM Artistas AS a
INNER JOIN
Seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY s.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3);
