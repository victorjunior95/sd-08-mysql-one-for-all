CREATE VIEW top_3_artistas AS
SELECT artist_name AS artista,
count(*) AS seguidores
FROM SpotifyClone.followed_artist AS FA
INNER JOIN SpotifyClone.artist AS A
ON FA.artist_id = A.artist_id
GROUP BY artista
ORDER BY seguidores DESC
LIMIT 3;
