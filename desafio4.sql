CREATE VIEW top_3_artistas AS
SELECT 
a.artista AS artista,
COUNT(u.usuario) AS seguidores
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artista AS a
ON sa.artista_id = a.artista_id
INNER JOIN SpotifyClone.usuario AS u
ON sa.usuario_id = u.usuario_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
