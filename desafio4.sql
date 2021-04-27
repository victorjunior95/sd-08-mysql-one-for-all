CREATE VIEW top_3_artistas AS
SELECT artista, COUNT(*) AS seguidores
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artista AS a
ON a.artista_id = sa.artista_id
GROUP BY sa.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
