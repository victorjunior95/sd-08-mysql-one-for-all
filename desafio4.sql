CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS artista,
COUNT(u.user_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.users AS u
INNER JOIN SpotifyClone.followers AS f
ON a.artist_id = f.artist_id AND u.user_id = f.user_id
GROUP BY artista
ORDER BY COUNT(u.user_id) DESC, artista
LIMIT 3;
