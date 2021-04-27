CREATE VIEW top_3_artistas AS 
SELECT a.nome_do_artista AS artista,
COUNT(f.artista_id) AS seguidores
FROM SpotifyClone.Artista AS a
INNER JOIN SpotifyClone.artistas_seguidos AS f
ON a.artista_id = f.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
