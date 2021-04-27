CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS artista , COUNT(*) AS seguidores FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.seguindo s
ON a.artista_id = s.artista_id
GROUP BY a.artista_nome
ORDER BY 2 DESC, 1
LIMIT 3;
