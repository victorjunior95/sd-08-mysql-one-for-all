CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(A.valor) AS faturamento_minimo,
        MAX(A.valor) AS faturamento_maximo,
        ROUND(SUM(A.valor) / COUNT(B.id_usuario), 2) AS faturamento_medio,
        SUM(A.valor) AS faturamento_total
    FROM
        SpotifyClone.tb_plano AS A
            INNER JOIN
        SpotifyClone.tb_usuario AS B USING (id_plano);
