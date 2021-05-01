CREATE VIEW cancoes_premium AS
    SELECT 
        s.song_name AS `nome`, COUNT(p.song_id) AS `reproducoes`
    FROM
        SpotifyClone.Songs AS s
            INNER JOIN
        SpotifyClone.Playback_History AS p ON s.song_id = p.song_id
            INNER JOIN
        SpotifyClone.Users AS u ON p.user_id = u.user_id
    WHERE
        u.plan_id != 1
    GROUP BY `nome`
    ORDER BY `nome`;
