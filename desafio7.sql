CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT A.name AS artista, AL.title AS album, COUNT(AL.album_id) AS seguidores
FROM SpotifyClone.album AS AL 
INNER JOIN SpotifyClone.artist AS A ON AL.artist_id = A.artist_id
INNER JOIN SpotifyClone.following AS F ON F.artist_id = A.artist_id
GROUP BY AL.album_id ORDER BY seguidores DESC, artista ASC, album ASC;
