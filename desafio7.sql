CREATE VIEW perfil_artistas AS
SELECT 
art.nome AS artista,
alb.nome AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.album AS alb ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo AS s ON art.artista_id = s.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;
