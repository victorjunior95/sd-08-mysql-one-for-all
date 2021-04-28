CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista,
abs.album_name AS album,
COUNT(DISTINCT f.user_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS abs
INNER JOIN SpotifyClone.followers AS f
ON a.artist_id = abs.artist_id AND f.artist_id = abs.artist_id
GROUP BY album, artista
ORDER BY COUNT(f.user_id) DESC, artista, album;
