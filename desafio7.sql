CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista, b.album_name AS album, COUNT(*) AS seguidores
FROM album AS b
INNER JOIN artist AS a ON a.artist_id = b.artist_id
INNER JOIN followed_artist AS f ON f.artist_id = a.artist_id
GROUP BY album , artista
ORDER BY seguidores DESC , artista , album;
