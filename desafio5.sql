SELECT 
    s.song AS 'cancao', COUNT(h.song_id) AS 'reproducoes'
FROM
    SpotifyClone.history AS h
        INNER JOIN
    SpotifyClone.songs AS s ON h.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC , `cancao`;
