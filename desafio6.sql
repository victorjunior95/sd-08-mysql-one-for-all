CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(B.valor) AS 'faturamento_minimo',
        MAX(B.valor) AS 'faturamento_maximo',
        ROUND(AVG(B.valor), 2) AS 'faturamento_medio',
        SUM(B.valor) AS 'faturamento_total'
    FROM
        SpotifyClone.usuario A
            JOIN
        SpotifyClone.plano B ON A.plano_id = B.plano_id;
