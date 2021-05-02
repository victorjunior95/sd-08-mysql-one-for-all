USE SpotifyClone;
CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista, COUNT(*) AS seguidores
FROM usuarios_seguindo_artistas usa
INNER JOIN artistas a ON a.artista_id = usa.artista_id
GROUP BY usa.artista_id
ORDER BY seguidores DESC, artista ASC
LIMIT 3;

