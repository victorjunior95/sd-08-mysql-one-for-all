CREATE VIEW top_3_artistas AS
SELECT seguindo_artistas AS `artista`, COUNT(*) AS `seguidores`
FROM SpotifyClone.Seguidos AS a
GROUP BY `seguindo_artistas`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
