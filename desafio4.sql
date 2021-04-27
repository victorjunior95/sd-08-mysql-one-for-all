CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista, COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindo AS s ON a.artista_id = s.artista_id
GROUP BY s.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;
