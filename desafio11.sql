CREATE VIEW cancoes_premium AS
    SELECT 
        s.song AS 'nome', COUNT(h.song_id) AS 'reproducoes'
    FROM
        SpotifyClone.history AS h
            INNER JOIN
        SpotifyClone.songs AS s ON h.song_id = s.song_id
            INNER JOIN
        SpotifyClone.users AS u ON h.user_id = u.user_id
            INNER JOIN
        SpotifyClone.plans AS p ON u.plan_id = p.plan_id
    WHERE
        p.plan = 'familiar'
            OR p.plan = 'universitário'
    GROUP BY nome
    ORDER BY nome;
