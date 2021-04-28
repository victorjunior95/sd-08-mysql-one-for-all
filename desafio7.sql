CREATE VIEW perfil_artistas AS
SELECT
ar.artista AS `artista`,
al.album AS `album`,
COUNT(sa.usuario_id) AS `seguidores`
FROM SpotifyClone.seguindo_artista AS sa
INNER JOIN SpotifyClone.album AS al
ON sa.artista_id = al.artista_id
INNER JOIN SpotifyClone.artista AS ar
ON sa.artista_id = ar.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
