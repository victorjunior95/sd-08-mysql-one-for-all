CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        (SELECT 
                m.music_name
            FROM
                SpotifyClone.musics AS m
            WHERE
                m.music_id = h.music_id) AS cancao,
        COUNT(*) AS reproducoes
    FROM
        SpotifyClone.historic AS h
    GROUP BY h.music_id
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
