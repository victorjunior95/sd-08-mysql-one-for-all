CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        s.song_name AS `cancao`, COUNT(p.song_id) AS `reproducoes`
    FROM
        SpotifyClone.Songs AS s
            INNER JOIN
        SpotifyClone.Playback_History AS p ON s.song_id = p.song_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
