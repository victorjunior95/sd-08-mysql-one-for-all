CREATE VIEW perfil_artistas AS
SELECT A.artist_name AS artista,
AL.album_name AS album,
count(*) AS seguidores
FROM SpotifyClone.followed_artist AS FA
INNER JOIN SpotifyClone.artist AS A
ON FA.artist_id = A.artist_id
INNER JOIN SpotifyClone.album AS AL
ON FA.artist_id = AL.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
