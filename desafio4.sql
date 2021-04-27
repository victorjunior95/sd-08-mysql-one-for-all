CREATE VIEW top_3_artistas AS
SELECT artist_name AS artista,
COUNT(f.user_id) AS seguidores 
FROM SpotifyClone.Artist AS a
INNER JOIN SpotifyClone.Following AS f
ON a.artist_id = f.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
