CREATE VIEW top_3_artistas AS
SELECT
a.artista AS `artista`,
COUNT(sa.usuario_id) AS `seguidores`
FROM SpotifyClone.seguindo_artista AS sa
INNER JOIN SpotifyClone.artista AS a
ON sa.artista_id = a.artista_id
GROUP BY `artista`
HAVING `seguidores` > 1
ORDER BY `seguidores` DESC, `artista`;
