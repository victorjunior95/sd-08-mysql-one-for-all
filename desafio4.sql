CREATE VIEW top_3_artistas AS
    SELECT 
        A.artist_name AS `artista`,
        COUNT(*) AS `seguidores`
    FROM
        followed_artist AS F
            INNER JOIN
        artist AS A ON A.artist_id = F.artist_id
    GROUP BY `artista`
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
