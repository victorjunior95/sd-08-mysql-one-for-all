CREATE VIEW perfil_artistas AS
SELECT
a.artist as artista,
al.album as album,
COUNT(*) as seguidores
FROM SpotifyClone.Artists AS a
INNER JOIN SpotifyClone.Albums AS al
ON al.artist_id = a.artist_id
INNER JOIN SpotifyClone.Artist_followers AS f
ON f.artist_id = a.artist_id
GROUP BY f.artist_id, al.album_id
ORDER BY seguidores DESC, artist ASC, album ASC
