CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT artista.artista_nome AS artista,
albuns.album_nome AS album,
( SELECT COUNT(*) FROM SpotifyClone.seguidores WHERE SpotifyClone.seguidores.artista_id = artista.artista_id) AS seguidores
FROM SpotifyClone.albuns AS albuns
INNER JOIN SpotifyClone.artistas AS artista
ON albuns.artista_id = artista.artista_id
ORDER BY seguidores DESC, artista, album;
