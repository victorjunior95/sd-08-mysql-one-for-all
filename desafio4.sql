CREATE VIEW top_3_artistas AS
SELECT
a.artist_name AS artista,
COUNT(af.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.artists_followers AS af
WHERE a.artist_id = af.artist_id
GROUP BY a.artist_name
ORDER BY seguidores DESC, artista
LIMIT 3;
