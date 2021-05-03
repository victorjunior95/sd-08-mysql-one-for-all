CREATE VIEW perfil_artistas AS 
SELECT
artist.artist_name AS artista,
album.album_name AS album,
COUNT(follow.user_id) AS seguidores
FROM SpotifyClone.Artist AS artist
INNER JOIN SpotifyClone.Album AS album
ON artist.artist_id = album.artist_id
INNER JOIN SpotifyClone.Follow as follow
ON follow.artist_id = album.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
