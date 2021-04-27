CREATE VIEW top_3_artistas AS
SELECT artist.nome AS artista,
COUNT(usu.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artist
INNER JOIN SpotifyClone.usuario_artista AS usu ON usu.artista_id = artist.artista_id
GROUP BY artist.nome
ORDER BY seguidores DESC, artista
LIMIT 3;
