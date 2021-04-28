CREATE VIEW perfil_artistas AS 
SELECT artista, album,
(SELECT COUNT(*) FROM SpotifyClone.seguindo_artistas AS sa WHERE sa.artista_id = art.artista_id) AS seguidores
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artista AS art
ON alb.artista_id = art.artista_id
ORDER BY seguidores DESC, artista, album;
