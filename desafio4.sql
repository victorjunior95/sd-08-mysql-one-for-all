CREATE OR REPLACE VIEW top_3_artistas AS
SELECT a.artist_name AS `artista`,
    COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS a
    INNER JOIN SpotifyClone.followers AS f ON f.artist_id = a.artist_id
GROUP BY `artista`
ORDER BY `seguidores` DESC
LIMIT 3;
