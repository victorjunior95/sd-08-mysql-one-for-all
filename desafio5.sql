CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        S.song_name AS `cancao`, COUNT(*) AS `reproducoes`
    FROM
        playlist_history AS P
            INNER JOIN
        song AS S ON S.song_id = P.song_id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
