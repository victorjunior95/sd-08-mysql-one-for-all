CREATE VIEW top_3_artistas AS
SELECT
artistas.artista_nome AS `artista`,
COUNT(DISTINCT seguindo.usuario_id) AS `seguidores`
FROM SpotifyClone.Artistas AS artistas
INNER JOIN SpotifyClone.SeguindoArtistas AS seguindo
ON artistas.artista_id = seguindo.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
