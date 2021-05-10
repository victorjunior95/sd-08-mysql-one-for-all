CREATE VIEW faturamento_atual AS
    SELECT 
        MIN(p.plan_value) AS 'faturamento_minimo',
        MAX(p.plan_value) AS 'faturamento_maximo',
        ROUND(SUM(p.plan_value) / COUNT(u.plan_id), 2) AS 'faturamento_medio',
        SUM(p.plan_value) AS 'faturamento_total'
    FROM
        SpotifyClone.plans AS p
            INNER JOIN
        SpotifyClone.users AS u ON p.plan_id = u.plan_id;
