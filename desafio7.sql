CREATE VIEW perfil_artistas AS
SELECT
a.artist_name AS artista,
alb.album_name AS album,
COUNT(af.artist_id) AS seguidores
FROM SpotifyClone.artists AS a 
INNER JOIN SpotifyClone.artists_followers AS af
ON af.artist_id = a.artist_id
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artist_id = a.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
