CREATE VIEW top_3_artistas AS
SELECT
  CONCAT(A.first_name, ' ', A.last_name) AS 'artista',
  COUNT(A.artist_id) AS 'seguidores'
FROM SpotifyClone.user_artist AS UA
INNER JOIN SpotifyClone.artist AS A ON UA.artist_id = A.artist_id
GROUP BY A.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
