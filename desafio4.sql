CREATE VIEW top_3_artistas AS
SELECT a.artista AS `artista`,COUNT(ua.usuario_id) AS `seguidores`
FROM SpotifyClone.usuarios_artistas AS ua
INNER JOIN SpotifyClone.artistas AS a
ON ua.artista_id = a.artista_id
GROUP BY(ua.artista_id)
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
