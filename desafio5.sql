CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        A.nome AS cancao, COUNT(B.id_cancao) AS reproducoes
    FROM
        SpotifyClone.tb_cancao AS A
            INNER JOIN
        SpotifyClone.tb_historico_reproducoes AS B USING (id_cancao)
    GROUP BY A.nome
    ORDER BY reproducoes DESC , A.nome ASC
    LIMIT 2;
