CREATE VIEW perfil_artistas AS 
SELECT a.nome_do_artista AS artista,
al.nome_do_Album AS album,
COUNT(f.usuario_id) AS seguidores
FROM SpotifyClone.Artista AS a
INNER JOIN SpotifyClone.Album AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.artistas_seguidos as f
ON al.artista_id = f.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
