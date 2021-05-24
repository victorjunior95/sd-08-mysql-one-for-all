CREATE VIEW perfil_artistas AS
SELECT
artistas_1.artista_nome AS artista,
albuns_1.album_nome AS album,
COUNT(artistas_seguidores.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artistas_1
INNER JOIN SpotifyClone.artistas_seguidos AS artistas_seguidores
ON artistas_seguidores.artista_id = artistas_1.artista_id
INNER JOIN SpotifyClone.albuns AS albuns_1
ON albuns_1.artista_id = artistas_1.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
