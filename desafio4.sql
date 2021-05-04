CREATE VIEW top_3_artistas AS
SELECT artista, COUNT(*) AS `seguidores`
FROM SpotifyClone.Seguidos AS s
INNER JOIN SpotifyClone.Artistas AS a ON a.artista_id = s.artista_id
GROUP BY artista
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
