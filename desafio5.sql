CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        (SELECT 
                m.nome
            FROM
                SpotifyClone.musicas m
            WHERE
                m.id = h.musica_id) 'cancao',
        COUNT(h.musica_id) 'reproducoes'
    FROM
        SpotifyClone.historico h
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC , `cancao`
    LIMIT 2;
