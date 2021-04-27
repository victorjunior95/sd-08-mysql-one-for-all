CREATE VIEW perfil_artistas AS
SELECT
art.artista AS "artista",
alb.album AS "album",
COUNT(seg.usuario_id) AS "seguidores"
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.artistas_seguidos AS seg
ON art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY `seguidores` DESC, `artista`, `album`;
