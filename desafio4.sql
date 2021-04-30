CREATE VIEW `top_3_artistas` AS
    SELECT 
        A.artist AS 'artista', COUNT(*) AS 'seguidores'
    FROM
        SpotifyClone.followed_artists FA
            INNER JOIN
        SpotifyClone.artists A ON FA.artist_id = A.artist_id
    GROUP BY A.artist_id
    ORDER BY `seguidores` DESC , `artista`
    LIMIT 3;
