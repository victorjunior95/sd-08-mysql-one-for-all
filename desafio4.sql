CREATE VIEW SpotifyClone.top_3_artistas AS
    SELECT 
        A.name AS 'artista', COUNT(F.user_id) AS 'seguidores'
    FROM
        SpotifyClone.artists AS A
            INNER JOIN
        SpotifyClone.following AS F ON F.artist_id = A.artist_id
            INNER JOIN
        SpotifyClone.users AS U ON U.user_id = F.user_id
    GROUP BY artista
    ORDER BY seguidores DESC , artista
    LIMIT 3;
