CREATE VIEW SpotifyClone.faturamento_atual AS
    SELECT 
        ROUND(MIN(P.value), 2) AS 'faturamento_minimo',
        ROUND(MAX(P.value), 2) AS 'faturamento_maximo',
        ROUND(AVG(P.value), 2) AS 'faturamento_medio',
        ROUND(SUM(P.value), 2) AS 'faturamento_total'
    FROM
        SpotifyClone.plans AS P
            INNER JOIN
        SpotifyClone.users AS U ON U.plan_id = P.plan_id;
