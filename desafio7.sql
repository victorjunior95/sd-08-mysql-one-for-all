CREATE VIEW perfil_artistas AS
SELECT a.artista AS `artista`, al.album AS `album`,
COUNT(ua.usuario_id) AS `seguidores`
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.usuarios_artistas AS ua
ON al.artista_id = ua.artista_id
INNER JOIN SpotifyClone.artistas AS a
ON al.artista_id = a.artista_id
GROUP BY al.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;
