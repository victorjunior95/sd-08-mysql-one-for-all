CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
  a.name AS artista,
  COUNT(af.user_id) AS seguidores
FROM artists AS a
INNER JOIN artists_followers AS af
ON a.artist_id = af.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
