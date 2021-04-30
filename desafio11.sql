CREATE VIEW cancoes_premium AS
    SELECT 
        (SELECT 
                m.music_name
            FROM
                SpotifyClone.musics AS m
            WHERE
                m.music_id = h.music_id) AS nome,
        COUNT(*) AS reproducoes
    FROM
        SpotifyClone.historic AS h
    WHERE
        h.user_id IN (SELECT 
                u.user_id
            FROM
                SpotifyClone.users AS u
            WHERE
                u.pass_id IN (SELECT 
                        p.pass_id
                    FROM
                        SpotifyClone.pass AS p
                    WHERE
                        p.pass_name IN ('familiar' , 'universitário')))
    GROUP BY h.music_id
    ORDER BY nome;
