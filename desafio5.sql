CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        S.song AS 'cancao', COUNT(*) AS 'reproducoes'
    FROM
        SpotifyClone.played_music_history Hist
            INNER JOIN
        SpotifyClone.songs S ON Hist.song_id = S.song_id
    GROUP BY S.song_id
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
