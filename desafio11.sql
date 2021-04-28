CREATE VIEW cancoes_premium AS
    SELECT 
        B.nome AS nome, COUNT(A.id_cancao) AS reproducoes
    FROM
        SpotifyClone.tb_historico_reproducoes AS A
            INNER JOIN
        SpotifyClone.tb_cancao AS B USING (id_cancao)
            INNER JOIN
        SpotifyClone.tb_usuario AS C USING (id_usuario)
    WHERE
        C.id_plano IN (2 , 3)
    GROUP BY nome
    ORDER BY nome ASC;
