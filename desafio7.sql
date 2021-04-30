CREATE VIEW perfil_artistas AS
SELECT
s.singer AS artista,
a.album AS album,
COUNT(f.user_id) AS seguidores
FROM
SpotifyClone.singer AS s
INNER JOIN SpotifyClone.album AS a
ON s.singer_id = a.singer_id
INNER JOIN SpotifyClone.following AS f
ON f.singer_id = s.singer_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
