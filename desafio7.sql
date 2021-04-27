CREATE VIEW perfil_artistas AS
SELECT
  ART.artist_name AS artista,
  ALB.album_name AS album,
  COUNT(F.artist_id)AS seguidores
FROM SpotifyClone.artists AS ART
INNER JOIN SpotifyClone.albums AS ALB
  ON ART.artist_id = ALB.artist_id
INNER JOIN SpotifyClone.followers AS F
  ON ART.artist_id = F.artist_id
GROUP BY ALB.album_id
ORDER BY 3 DESC, 1 ASC, 2 ASC;
