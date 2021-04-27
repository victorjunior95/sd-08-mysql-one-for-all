CREATE VIEW perfil_artistas AS
SELECT artist.nome AS artista,
alb.nome AS album,
COUNT(usu.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artist
INNER JOIN SpotifyClone.usuario_artista AS usu ON usu.artista_id = artist.artista_id
INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = artist.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista;
