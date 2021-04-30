CREATE VIEW top_3_artistas AS
SELECT 
A.artista AS artista,
COUNT(U.usuario) AS seguidores
FROM SpotifyClone.Artistas AS A
INNER JOIN SpotifyClone.Seguidores AS S
ON S.artista_id = A.artista_id
INNER JOIN SpotifyClone.Usuarios AS U
ON S.usuario_id = U.usuario_id 
GROUP BY A.artista
ORDER BY `seguidores`DESC, `artista`
LIMIT 3;
