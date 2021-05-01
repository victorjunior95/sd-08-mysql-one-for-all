CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist_name AS `artista`,
        COUNT(f.artist_id) AS `seguidores`
    FROM
        SpotifyClone.Artists AS a
            INNER JOIN
        SpotifyClone.Followers AS f ON a.artist_id = f.artist_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC
    LIMIT 3;
