CREATE VIEW top_3_artistas AS
SELECT
ART.artist_name AS 'artista',
COUNT(FA.artist_id) AS 'seguidores'
FROM SpotifyClone.followed_artists AS FA
INNER JOIN SpotifyClone.all_artist AS ART
ON FA.artist_id = ART.artist_id
GROUP BY FA.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
