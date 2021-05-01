CREATE VIEW top_3_artistas AS
SELECT
a.artist_name AS artista,
COUNT(f.follows_artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.following AS f
ON a.artist_id = f.follows_artist_id
GROUP BY a.artist_name
ORDER BY seguidores DESC, artista
LIMIT 3;
