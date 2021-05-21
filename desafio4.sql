CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista,
COUNT(sa.artista_id) AS seguidores 
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN artistas a ON a.artista_id = sa.artista_id
GROUP BY sa.artista_id
ORDER BY 2 DESC, 1
LIMIT 3;
