CREATE VIEW perfil_artistas AS
SELECT artista.artista,
album.album,
nseguidor.seguidores
FROM SpotifyClone.artistas artista
INNER JOIN SpotifyClone.albuns album
ON album.artista_id = artista.artista_id
INNER JOIN (
SELECT artista_id, COUNT(*) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas sartista
GROUP BY sartista.artista_id
) AS nseguidor
ON nseguidor.artista_id = artista.artista_id
ORDER BY nseguidor.seguidores DESC, artista.artista, album.album;