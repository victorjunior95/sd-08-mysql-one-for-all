DROP VIEW IF EXISTS top_3_artistas;
CREATE VIEW top_3_artistas AS
SELECT artista.artista,
COUNT(*) AS seguidores
FROM SpotifyClone.seguindo_artistas sartista
INNER JOIN SpotifyClone.artistas artista
ON sartista.artista_id = artista.artista_id
GROUP BY artista.artista
ORDER BY COUNT(*) DESC
LIMIT 3;
