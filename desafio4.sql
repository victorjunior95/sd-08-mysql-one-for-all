CREATE VIEW top_3_artistas AS
SELECT
  A.artist_name AS artista,
  COUNT(U.user_id) AS seguidores
FROM SpotifyClone.followers AS F
INNER JOIN SpotifyClone.users AS U
  ON F.user_id = U.user_id
INNER JOIN SpotifyClone.artists AS A
  ON F.artist_id = A.artist_id
GROUP BY 1
ORDER BY 2 DESC, 1
LIMIT 3;
