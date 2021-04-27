CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        titulo, COUNT(user_id) reproducoes
    FROM
        SpotifyClone.Historico h
            LEFT JOIN
        SpotifyClone.Cancoes c ON c.cancao_id = h.cancao_id
    GROUP BY titulo
    ORDER BY reproducoes DESC , titulo
    LIMIT 2;
    