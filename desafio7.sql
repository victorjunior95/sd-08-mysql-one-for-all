CREATE VIEW perfil_artistas AS
SELECT
art.artista_nome AS artista,
a.album_nome AS album,
(SELECT COUNT(*) FROM SpotifyClone.seguindo s WHERE art.artista_id = s.artista_id) AS seguidores
FROM SpotifyClone.artistas art
INNER JOIN SpotifyClone.albuns a
ON art.artista_id = a.artista_id
ORDER BY 3 DESC, 1, 2;
