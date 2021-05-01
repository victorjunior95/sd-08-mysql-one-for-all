CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        m.nome AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.musicas AS m
            INNER JOIN
        SpotifyClone.historico AS h ON h.musica_id = m.id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;

-- SELECT * FROM top_2_hits_do_momento;
