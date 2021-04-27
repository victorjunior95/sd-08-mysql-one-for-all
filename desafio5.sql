CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        A.nome AS 'cancao', COUNT(B.cancao_id) AS `reproducoes`
    FROM
        SpotifyClone.cancao A
            JOIN
        SpotifyClone.historico_de_reproducao B ON A.cancao_id = B.cancao_id
    GROUP BY A.nome
    ORDER BY `reproducoes` DESC , A.nome
    LIMIT 2;
