CREATE VIEW perfil_artistas AS
SELECT 
art.artista AS 'artista',
a.album AS 'album',
COUNT(sa.usuario_id) AS 'seguidores'
FROM SpotifyClone.album AS a
INNER JOIN SpotifyClone.artista AS art
ON a.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS sa
ON a.artista_id = sa.artista_id
GROUP BY `artista`,`album`
ORDER BY `seguidores` DESC, `artista` , `album`;
