CREATE VIEW perfil_artistas AS
SELECT art.nome AS 'artista', alb.titulo AS 'album', COUNT(*) AS 'seguidores'
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.artista AS art ON alb.id_artista = art.id_artista
INNER JOIN SpotifyClone.artistas_favoritos AS f ON alb.id_artista = f.id_artista
GROUP BY alb.id_album
ORDER BY COUNT(*) DESC, art.nome, alb.titulo;
