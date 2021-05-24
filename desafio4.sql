CREATE VIEW top_3_artistas AS
SELECT
artista_1.artista_nome AS artista,
COUNT(artistas_seguidores.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artista_1
INNER JOIN SpotifyClone.artistas_seguidos AS artistas_seguidores
WHERE artista_1.artista_id = artistas_seguidores.artista_id
GROUP BY artista_1.artista_nome
ORDER BY seguidores DESC, artista
LIMIT 3;
