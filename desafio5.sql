CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
    SELECT 
        name AS 'cancao', COUNT(*) AS 'reproducoes'
    FROM
        SpotifyClone.musics AS M
            INNER JOIN
        SpotifyClone.historic AS H ON H.music_id = M.music_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
