CREATE VIEW `perfil_artistas` AS
SELECT
a.artista_nome AS `artista`,
ab.album_nome AS `album`,
COUNT(s.usuario_id) AS `seguidores`
FROM SpotifyClone.artistas AS `a`
INNER JOIN SpotifyClone.seguidores AS `s`
ON a.artista_id = s.artista_id
INNER JOIN SpotifyClone.albuns AS `ab`
ON s.artista_id = ab.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
