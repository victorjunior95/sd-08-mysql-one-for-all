CREATE VIEW cancoes_premium AS
    SELECT 
        S.song AS 'nome', COUNT(*) AS 'reproducoes'
    FROM
        SpotifyClone.played_music_history AS Hist
            INNER JOIN
        SpotifyClone.songs AS S ON Hist.song_id = S.song_id
            INNER JOIN
        SpotifyClone.users AS U ON Hist.user_id = U.user_id
    WHERE
        U.id_plan IN (2 , 3)
    GROUP BY S.song_id
    ORDER BY `nome`;
