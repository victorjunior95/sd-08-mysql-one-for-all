CREATE VIEW perfil_artistas AS
SELECT sa.artista AS 'artista',sal.album AS 'album',
COUNT(ss.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS sa
INNER JOIN SpotifyClone.albuns AS sal
ON sal.artista_id = sa.artista_id
INNER JOIN SpotifyClone.seguidores AS ss
ON ss.artista_id = sa.artista_id
GROUP BY sa.artista_id, sal.album
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
