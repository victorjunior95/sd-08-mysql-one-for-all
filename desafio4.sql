CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist AS 'artista', COUNT(fa.artist_id) AS 'seguidores'
    FROM
        SpotifyClone.following_artists AS fa
            INNER JOIN
        SpotifyClone.artists AS a ON fa.artist_id = a.artist_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
