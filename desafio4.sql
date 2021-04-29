CREATE VIEW top_3_artistas AS
    SELECT 
        (SELECT 
                a.artiste_name
            FROM
                SpotifyClone.artiste AS a
            WHERE
                a.artiste_id = a_u.artiste_id) AS artista,
        COUNT(*) AS seguidores
    FROM
        SpotifyClone.artiste_user AS a_u
    GROUP BY a_u.artiste_id
    ORDER BY seguidores DESC , artista
    LIMIT 3;
