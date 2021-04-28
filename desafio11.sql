CREATE VIEW cancoes_premium AS
    SELECT 
        S.song_name AS `nome`, COUNT(*) AS `reproducoes`
    FROM
        playlist_history AS P
            INNER JOIN
        song AS S ON S.song_id = P.song_id
            INNER JOIN
        user AS U ON U.user_id = P.user_id
    WHERE
        U.plan_id IN (2 , 3)
    GROUP BY `nome`
    ORDER BY `nome`;
