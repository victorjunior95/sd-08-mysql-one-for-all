CREATE VIEW perfil_artistas AS
SELECT artist_name AS artista,
al.album_name AS album,
COUNT(f.user_id) AS seguidores
FROM SpotifyClone.Artist AS a
INNER JOIN SpotifyClone.Albums AS al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.Following AS f
ON al.artist_id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;
