CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        CA.cancao_nome AS cancao, COUNT(*) AS reproducoes
    FROM
        SpotifyClone.historico AS HI
            INNER JOIN
        SpotifyClone.cancoes AS CA ON HI.cancao_id = CA.cancao_id
    GROUP BY cancao
    ORDER BY reproducoes DESC , cancao
    LIMIT 2;
