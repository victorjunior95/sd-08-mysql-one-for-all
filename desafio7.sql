CREATE VIEW perfil_artistas AS
SELECT A.artista,
AB.album,
(SELECT COUNT(artista_id) FROM SpotifyClone.seguindo_artista
WHERE artista_id = A.artista_id) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS AB
ON A.artista_id = AB.artista_id
ORDER BY seguidores DESC, A.artista, AB.album;
