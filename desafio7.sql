CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT a.artista,
al.album,
(SELECT COUNT(*) FROM usuarios_seguindo_artistas GROUP BY artista_id HAVING artista_id = a.artista_id) AS seguidores
FROM albuns al
INNER JOIN artistas a ON a.artista_id = al.artista_id
ORDER BY seguidores DESC,
artista,
album;